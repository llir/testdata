; ModuleID = 'coreutils-8.32/src/sha1sum.bc'
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
%struct.sha1_ctx = type { i32, i32, i32, i32, i32, [2 x i32], i32, [32 x i32] }
%struct.__mbstate_t = type { i32, %union.anon }
%union.anon = type { i32 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@stderr = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [39 x i8] c"Try '%s --help' for more information.\0A\00", align 1
@.str.1 = private unnamed_addr constant [71 x i8] c"Usage: %s [OPTION]... [FILE]...\0APrint or check %s (%d-bit) checksums.\0A\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"SHA1\00", align 1
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
@.str.12 = private unnamed_addr constant [11 x i8] c"FIPS-180-1\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"sha1sum\00", align 1
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
@status_only = internal unnamed_addr global i1 false, align 1, !dbg !281
@warn = internal unnamed_addr global i1 false, align 1, !dbg !282
@quiet = internal unnamed_addr global i1 false, align 1, !dbg !283
@ignore_missing = internal unnamed_addr global i1 false, align 1, !dbg !284
@strict = internal unnamed_addr global i1 false, align 1, !dbg !285
@delim = internal unnamed_addr global i1 false, align 1, !dbg !286
@.str.19 = private unnamed_addr constant [15 x i8] c"Ulrich Drepper\00", align 1
@.str.20 = private unnamed_addr constant [13 x i8] c"Scott Miller\00", align 1
@.str.21 = private unnamed_addr constant [13 x i8] c"David Madore\00", align 1
@min_digest_line_length = internal unnamed_addr global i1 false, align 8, !dbg !287
@digest_hex_bytes = internal unnamed_addr global i1 false, align 8, !dbg !288
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
@have_read_stdin = internal unnamed_addr global i1 false, align 1, !dbg !289
@.str.35 = private unnamed_addr constant [15 x i8] c"standard input\00", align 1
@stdin = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.64 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.65 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.66 = private unnamed_addr constant [28 x i8] c"%s: too many checksum lines\00", align 1
@bsd_reversed = internal unnamed_addr global i32 -1, align 4, !dbg !276
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
@Version = dso_local local_unnamed_addr global i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.83, i64 0, i64 0), align 8, !dbg !290
@.str.83 = private unnamed_addr constant [5 x i8] c"8.32\00", align 1
@file_name = internal unnamed_addr global i8* null, align 8, !dbg !295
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !338
@.str.86 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.1.87 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.2.88 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@fillbuf = internal constant <{ i8, [63 x i8] }> <{ i8 -128, [63 x i8] zeroinitializer }>, align 16, !dbg !340
@exit_failure = dso_local global i32 1, align 4, !dbg !377
@program_name = dso_local local_unnamed_addr global i8* null, align 8, !dbg !383
@.str.101 = private unnamed_addr constant [56 x i8] c"A NULL argv[0] was passed through an exec system call.\0A\00", align 1
@.str.1.102 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.2.103 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@quoting_style_args = dso_local local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.104, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.105, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.106, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.107, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.108, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.109, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.110, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.111, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.112, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.113, i32 0, i32 0), i8* null], align 16, !dbg !424
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
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !501
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !507
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !509
@.str.11.114 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.115 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.10.116 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.14.117 = private unnamed_addr constant [4 x i8] c"\E2\80\98\00", align 1
@.str.15.118 = private unnamed_addr constant [4 x i8] c"\E2\80\99\00", align 1
@.str.17.119 = private unnamed_addr constant [4 x i8] c"\A1\07e\00", align 1
@.str.18.120 = private unnamed_addr constant [3 x i8] c"\A1\AF\00", align 1
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8, !dbg !516
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !523
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !511
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !525
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
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !531
@.str.1.162 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.163 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec = internal unnamed_addr global i32 0, align 4, !dbg !539
@.str.1.180 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1
@.str.183 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1.184 = private unnamed_addr constant [6 x i8] c"ASCII\00", align 1

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @usage(i32 %0) local_unnamed_addr #0 !dbg !1317 {
  %2 = alloca [7 x %struct.infomap], align 16
  call void @llvm.dbg.declare(metadata [7 x %struct.infomap]* %2, metadata !1322, metadata !DIExpression()), !dbg !1338
  call void @llvm.dbg.value(metadata i32 %0, metadata !1321, metadata !DIExpression()), !dbg !1342
  %3 = icmp eq i32 %0, 0, !dbg !1343
  br i1 %3, label %9, label %4, !dbg !1344

4:                                                ; preds = %1
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1345, !tbaa !1347
  %6 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 5) #18, !dbg !1345
  %7 = load i8*, i8** @program_name, align 8, !dbg !1345, !tbaa !1347
  %8 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %5, i32 1, i8* %6, i8* %7) #18, !dbg !1345
  br label %77, !dbg !1345

9:                                                ; preds = %1
  %10 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.1, i64 0, i64 0), i32 5) #18, !dbg !1351
  %11 = load i8*, i8** @program_name, align 8, !dbg !1351, !tbaa !1347
  %12 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %10, i8* %11, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 160) #18, !dbg !1351
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.36, i64 0, i64 0), i32 5) #18, !dbg !1352
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1352, !tbaa !1347
  %15 = tail call i32 @fputs_unlocked(i8* %13, %struct._IO_FILE* %14) #18, !dbg !1352
  %16 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0), i32 5) #18, !dbg !1355
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1355, !tbaa !1347
  %18 = tail call i32 @fputs_unlocked(i8* %16, %struct._IO_FILE* %17), !dbg !1355
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.4, i64 0, i64 0), i32 5) #18, !dbg !1357
  %20 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %19, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #18, !dbg !1357
  %21 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.5, i64 0, i64 0), i32 5) #18, !dbg !1358
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1358, !tbaa !1347
  %23 = tail call i32 @fputs_unlocked(i8* %21, %struct._IO_FILE* %22), !dbg !1358
  %24 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.6, i64 0, i64 0), i32 5) #18, !dbg !1359
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1359, !tbaa !1347
  %26 = tail call i32 @fputs_unlocked(i8* %24, %struct._IO_FILE* %25), !dbg !1359
  %27 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([122 x i8], [122 x i8]* @.str.7, i64 0, i64 0), i32 5) #18, !dbg !1361
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1361, !tbaa !1347
  %29 = tail call i32 @fputs_unlocked(i8* %27, %struct._IO_FILE* %28), !dbg !1361
  %30 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([435 x i8], [435 x i8]* @.str.8, i64 0, i64 0), i32 5) #18, !dbg !1362
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1362, !tbaa !1347
  %32 = tail call i32 @fputs_unlocked(i8* %30, %struct._IO_FILE* %31), !dbg !1362
  %33 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.9, i64 0, i64 0), i32 5) #18, !dbg !1363
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1363, !tbaa !1347
  %35 = tail call i32 @fputs_unlocked(i8* %33, %struct._IO_FILE* %34), !dbg !1363
  %36 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.10, i64 0, i64 0), i32 5) #18, !dbg !1364
  %37 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1364, !tbaa !1347
  %38 = tail call i32 @fputs_unlocked(i8* %36, %struct._IO_FILE* %37), !dbg !1364
  %39 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([377 x i8], [377 x i8]* @.str.11, i64 0, i64 0), i32 5) #18, !dbg !1365
  %40 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %39, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i64 0, i64 0)) #18, !dbg !1365
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i64 0, i64 0), metadata !1325, metadata !DIExpression()) #18, !dbg !1366
  %41 = bitcast [7 x %struct.infomap]* %2 to i8*, !dbg !1367
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %41) #18, !dbg !1367
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 dereferenceable(112) %41, i8* nonnull align 16 dereferenceable(112) bitcast ([7 x %struct.infomap]* @__const.emit_ancillary_info.infomap to i8*), i64 112, i1 false) #18, !dbg !1338
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i64 0, i64 0), metadata !1326, metadata !DIExpression()) #18, !dbg !1366
  call void @llvm.dbg.value(metadata [7 x %struct.infomap]* %2, metadata !1327, metadata !DIExpression()) #18, !dbg !1366
  %42 = getelementptr inbounds [7 x %struct.infomap], [7 x %struct.infomap]* %2, i64 0, i64 0, !dbg !1368
  call void @llvm.dbg.value(metadata %struct.infomap* %42, metadata !1327, metadata !DIExpression()) #18, !dbg !1366
  br label %43, !dbg !1369

43:                                               ; preds = %48, %9
  %44 = phi i8* [ %51, %48 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.37, i64 0, i64 0), %9 ]
  %45 = phi %struct.infomap* [ %49, %48 ], [ %42, %9 ]
  call void @llvm.dbg.value(metadata %struct.infomap* %45, metadata !1327, metadata !DIExpression()) #18, !dbg !1366
  %46 = tail call i32 @strcmp(i8* nonnull dereferenceable(8) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i64 0, i64 0), i8* nonnull %44) #21, !dbg !1370
  %47 = icmp eq i32 %46, 0, !dbg !1370
  br i1 %47, label %53, label %48, !dbg !1369

48:                                               ; preds = %43
  %49 = getelementptr inbounds %struct.infomap, %struct.infomap* %45, i64 1, !dbg !1371
  call void @llvm.dbg.value(metadata %struct.infomap* %49, metadata !1327, metadata !DIExpression()) #18, !dbg !1366
  %50 = getelementptr inbounds %struct.infomap, %struct.infomap* %49, i64 0, i32 0, !dbg !1372
  %51 = load i8*, i8** %50, align 8, !dbg !1372, !tbaa !1373
  %52 = icmp eq i8* %51, null, !dbg !1375
  br i1 %52, label %53, label %43, !dbg !1376, !llvm.loop !1377

53:                                               ; preds = %48, %43
  %54 = phi %struct.infomap* [ %49, %48 ], [ %45, %43 ]
  call void @llvm.dbg.value(metadata %struct.infomap* %54, metadata !1327, metadata !DIExpression()) #18, !dbg !1366
  call void @llvm.dbg.value(metadata %struct.infomap* %54, metadata !1327, metadata !DIExpression()) #18, !dbg !1366
  %55 = getelementptr inbounds %struct.infomap, %struct.infomap* %54, i64 0, i32 1, !dbg !1378
  %56 = load i8*, i8** %55, align 8, !dbg !1378, !tbaa !1380
  %57 = icmp eq i8* %56, null, !dbg !1381
  %58 = select i1 %57, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i64 0, i64 0), i8* %56, !dbg !1382
  call void @llvm.dbg.value(metadata i8* %58, metadata !1326, metadata !DIExpression()) #18, !dbg !1366
  %59 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.45, i64 0, i64 0), i32 5) #18, !dbg !1383
  %60 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %59, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.18, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.46, i64 0, i64 0)) #18, !dbg !1383
  %61 = tail call i8* @setlocale(i32 5, i8* null) #18, !dbg !1384
  call void @llvm.dbg.value(metadata i8* %61, metadata !1334, metadata !DIExpression()) #18, !dbg !1366
  %62 = icmp eq i8* %61, null, !dbg !1385
  br i1 %62, label %70, label %63, !dbg !1387

63:                                               ; preds = %53
  %64 = tail call i32 @strncmp(i8* nonnull %61, i8* nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.47, i64 0, i64 0), i64 3) #21, !dbg !1388
  %65 = icmp eq i32 %64, 0, !dbg !1388
  br i1 %65, label %70, label %66, !dbg !1389

66:                                               ; preds = %63
  %67 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.48, i64 0, i64 0), i32 5) #18, !dbg !1390
  %68 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1390, !tbaa !1347
  %69 = tail call i32 @fputs_unlocked(i8* %67, %struct._IO_FILE* %68) #18, !dbg !1390
  br label %70, !dbg !1392

70:                                               ; preds = %53, %63, %66
  %71 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.49, i64 0, i64 0), i32 5) #18, !dbg !1393
  %72 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %71, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.46, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i64 0, i64 0)) #18, !dbg !1393
  %73 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.50, i64 0, i64 0), i32 5) #18, !dbg !1394
  %74 = icmp eq i8* %58, getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i64 0, i64 0), !dbg !1394
  %75 = select i1 %74, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.51, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.14, i64 0, i64 0), !dbg !1394
  %76 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %73, i8* %58, i8* %75) #18, !dbg !1394
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %41) #18, !dbg !1395
  br label %77

77:                                               ; preds = %70, %4
  tail call void @exit(i32 %0) #22, !dbg !1396
  unreachable, !dbg !1396
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
define dso_local i32 @main(i32 %0, i8** %1) local_unnamed_addr #8 !dbg !1397 {
  %3 = alloca [24 x i8], align 16
  call void @llvm.dbg.declare(metadata [24 x i8]* %3, metadata !238, metadata !DIExpression()), !dbg !1427
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8, align 1
  %7 = alloca [24 x i8], align 16
  %8 = alloca i8, align 1
  call void @llvm.dbg.value(metadata i32 %0, metadata !1402, metadata !DIExpression()), !dbg !1429
  call void @llvm.dbg.value(metadata i8** %1, metadata !1403, metadata !DIExpression()), !dbg !1429
  %9 = getelementptr inbounds [24 x i8], [24 x i8]* %7, i64 0, i64 0, !dbg !1430
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %9) #18, !dbg !1430
  call void @llvm.dbg.declare(metadata [24 x i8]* %7, metadata !1404, metadata !DIExpression()), !dbg !1431
  call void @llvm.dbg.value(metadata i8* %9, metadata !1432, metadata !DIExpression()), !dbg !1440
  call void @llvm.dbg.value(metadata i64 4, metadata !1437, metadata !DIExpression()), !dbg !1440
  call void @llvm.dbg.value(metadata i8* %9, metadata !1438, metadata !DIExpression()), !dbg !1440
  %10 = getelementptr inbounds [24 x i8], [24 x i8]* %7, i64 0, i64 3, !dbg !1442
  call void @llvm.dbg.value(metadata i8* %10, metadata !1439, metadata !DIExpression()), !dbg !1440
  %11 = ptrtoint i8* %10 to i64, !dbg !1443
  %12 = and i64 %11, 3, !dbg !1444
  %13 = sub nsw i64 0, %12, !dbg !1445
  %14 = getelementptr inbounds i8, i8* %10, i64 %13, !dbg !1445
  call void @llvm.dbg.value(metadata i8* %14, metadata !1405, metadata !DIExpression()), !dbg !1429
  call void @llvm.dbg.value(metadata i8 0, metadata !1406, metadata !DIExpression()), !dbg !1429
  call void @llvm.dbg.value(metadata i8 1, metadata !1408, metadata !DIExpression()), !dbg !1429
  call void @llvm.dbg.value(metadata i32 -1, metadata !1409, metadata !DIExpression()), !dbg !1429
  call void @llvm.dbg.value(metadata i8 0, metadata !1410, metadata !DIExpression()), !dbg !1429
  %15 = load i8*, i8** %1, align 8, !dbg !1446, !tbaa !1347
  call void @set_program_name(i8* %15) #18, !dbg !1447
  %16 = call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.14, i64 0, i64 0)) #18, !dbg !1448
  %17 = call i8* @bindtextdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.16, i64 0, i64 0)) #18, !dbg !1449
  %18 = call i8* @textdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i64 0, i64 0)) #18, !dbg !1450
  %19 = call i32 @atexit(void ()* nonnull @close_stdout) #18, !dbg !1451
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1452, !tbaa !1347
  %21 = call i32 @setvbuf(%struct._IO_FILE* %20, i8* null, i32 1, i64 0) #18, !dbg !1453
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i64 0, i64 0), metadata !1411, metadata !DIExpression()), !dbg !1429
  br label %22, !dbg !1454

22:                                               ; preds = %27, %2
  %23 = phi i32 [ -1, %2 ], [ %28, %27 ], !dbg !1455
  %24 = phi i8 [ 0, %2 ], [ %29, %27 ], !dbg !1456
  %25 = phi i8 [ 0, %2 ], [ %30, %27 ], !dbg !1457
  call void @llvm.dbg.value(metadata i8 %25, metadata !1406, metadata !DIExpression()), !dbg !1429
  call void @llvm.dbg.value(metadata i8 %24, metadata !1410, metadata !DIExpression()), !dbg !1429
  call void @llvm.dbg.value(metadata i32 %23, metadata !1409, metadata !DIExpression()), !dbg !1429
  %26 = call i32 @getopt_long(i32 %0, i8** nonnull %1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i64 0, i64 0), %struct.option* getelementptr inbounds ([13 x %struct.option], [13 x %struct.option]* @long_options, i64 0, i64 0), i32* null) #18, !dbg !1458
  call void @llvm.dbg.value(metadata i32 %26, metadata !1407, metadata !DIExpression()), !dbg !1429
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
  ], !dbg !1454

27:                                               ; preds = %22, %39, %38, %37, %36, %35, %34, %33, %32, %31
  %28 = phi i32 [ %23, %39 ], [ 1, %38 ], [ %23, %37 ], [ %23, %36 ], [ %23, %35 ], [ %23, %34 ], [ 0, %33 ], [ %23, %32 ], [ %23, %31 ], [ 1, %22 ]
  %29 = phi i8 [ %24, %39 ], [ 1, %38 ], [ %24, %37 ], [ %24, %36 ], [ %24, %35 ], [ %24, %34 ], [ %24, %33 ], [ %24, %32 ], [ %24, %31 ], [ %24, %22 ]
  %30 = phi i8 [ %25, %39 ], [ %25, %38 ], [ %25, %37 ], [ %25, %36 ], [ %25, %35 ], [ %25, %34 ], [ %25, %33 ], [ %25, %32 ], [ 1, %31 ], [ %25, %22 ]
  br label %22, !dbg !1429, !llvm.loop !1459

31:                                               ; preds = %22
  call void @llvm.dbg.value(metadata i8 1, metadata !1406, metadata !DIExpression()), !dbg !1429
  br label %27, !dbg !1461

32:                                               ; preds = %22
  store i1 true, i1* @status_only, align 1, !dbg !1463
  store i1 false, i1* @warn, align 1, !dbg !1464
  store i1 false, i1* @quiet, align 1, !dbg !1465
  br label %27, !dbg !1466

33:                                               ; preds = %22
  call void @llvm.dbg.value(metadata i32 0, metadata !1409, metadata !DIExpression()), !dbg !1429
  br label %27, !dbg !1467

34:                                               ; preds = %22
  store i1 false, i1* @status_only, align 1, !dbg !1468
  store i1 true, i1* @warn, align 1, !dbg !1469
  store i1 false, i1* @quiet, align 1, !dbg !1470
  br label %27, !dbg !1471

35:                                               ; preds = %22
  store i1 true, i1* @ignore_missing, align 1, !dbg !1472
  br label %27, !dbg !1473

36:                                               ; preds = %22
  store i1 false, i1* @status_only, align 1, !dbg !1474
  store i1 false, i1* @warn, align 1, !dbg !1475
  store i1 true, i1* @quiet, align 1, !dbg !1476
  br label %27, !dbg !1477

37:                                               ; preds = %22
  store i1 true, i1* @strict, align 1, !dbg !1478
  br label %27, !dbg !1479

38:                                               ; preds = %22
  call void @llvm.dbg.value(metadata i8 1, metadata !1410, metadata !DIExpression()), !dbg !1429
  call void @llvm.dbg.value(metadata i32 1, metadata !1409, metadata !DIExpression()), !dbg !1429
  br label %27, !dbg !1480

39:                                               ; preds = %22
  store i1 true, i1* @delim, align 1, !dbg !1481
  br label %27, !dbg !1482

40:                                               ; preds = %22
  call void @usage(i32 0) #23, !dbg !1483
  unreachable, !dbg !1483

41:                                               ; preds = %22
  %42 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1484, !tbaa !1347
  %43 = load i8*, i8** @Version, align 8, !dbg !1484, !tbaa !1347
  call void (%struct._IO_FILE*, i8*, i8*, i8*, ...) @version_etc(%struct._IO_FILE* %42, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.18, i64 0, i64 0), i8* %43, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.19, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.20, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.21, i64 0, i64 0), i8* null) #18, !dbg !1484
  call void @exit(i32 0) #22, !dbg !1484
  unreachable, !dbg !1484

44:                                               ; preds = %22
  call void @usage(i32 1) #23, !dbg !1485
  unreachable, !dbg !1485

45:                                               ; preds = %22
  call void @llvm.dbg.value(metadata i32 %23, metadata !1409, metadata !DIExpression()), !dbg !1429
  call void @llvm.dbg.value(metadata i8 %24, metadata !1410, metadata !DIExpression()), !dbg !1429
  call void @llvm.dbg.value(metadata i8 %25, metadata !1406, metadata !DIExpression()), !dbg !1429
  call void @llvm.dbg.value(metadata i32 %23, metadata !1409, metadata !DIExpression()), !dbg !1429
  call void @llvm.dbg.value(metadata i8 %24, metadata !1410, metadata !DIExpression()), !dbg !1429
  call void @llvm.dbg.value(metadata i8 %25, metadata !1406, metadata !DIExpression()), !dbg !1429
  call void @llvm.dbg.value(metadata i32 %23, metadata !1409, metadata !DIExpression()), !dbg !1429
  call void @llvm.dbg.value(metadata i8 %24, metadata !1410, metadata !DIExpression()), !dbg !1429
  call void @llvm.dbg.value(metadata i8 %25, metadata !1406, metadata !DIExpression()), !dbg !1429
  call void @llvm.dbg.value(metadata i32 %23, metadata !1409, metadata !DIExpression()), !dbg !1429
  call void @llvm.dbg.value(metadata i8 %24, metadata !1410, metadata !DIExpression()), !dbg !1429
  call void @llvm.dbg.value(metadata i8 %25, metadata !1406, metadata !DIExpression()), !dbg !1429
  call void @llvm.dbg.value(metadata i32 %23, metadata !1409, metadata !DIExpression()), !dbg !1429
  call void @llvm.dbg.value(metadata i8 %24, metadata !1410, metadata !DIExpression()), !dbg !1429
  call void @llvm.dbg.value(metadata i8 %25, metadata !1406, metadata !DIExpression()), !dbg !1429
  call void @llvm.dbg.value(metadata i32 %23, metadata !1409, metadata !DIExpression()), !dbg !1429
  call void @llvm.dbg.value(metadata i8 %24, metadata !1410, metadata !DIExpression()), !dbg !1429
  call void @llvm.dbg.value(metadata i8 %25, metadata !1406, metadata !DIExpression()), !dbg !1429
  store i1 true, i1* @min_digest_line_length, align 8, !dbg !1486
  store i1 true, i1* @digest_hex_bytes, align 8, !dbg !1487
  %46 = icmp ne i8 %24, 0, !dbg !1488
  %47 = xor i1 %46, true, !dbg !1490
  %48 = icmp ne i32 %23, 0, !dbg !1491
  %49 = or i1 %48, %47, !dbg !1490
  br i1 %49, label %52, label %50, !dbg !1490

50:                                               ; preds = %45
  %51 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.22, i64 0, i64 0), i32 5) #18, !dbg !1492
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %51) #18, !dbg !1494
  call void @usage(i32 1) #23, !dbg !1495
  unreachable, !dbg !1495

52:                                               ; preds = %45
  %53 = load i1, i1* @delim, align 1, !dbg !1496
  %54 = xor i1 %53, true, !dbg !1498
  %55 = icmp eq i8 %25, 0, !dbg !1499
  %56 = or i1 %55, %54, !dbg !1498
  br i1 %56, label %59, label %57, !dbg !1498

57:                                               ; preds = %52
  %58 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.23, i64 0, i64 0), i32 5) #18, !dbg !1500
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %58) #18, !dbg !1502
  call void @usage(i32 1) #23, !dbg !1503
  unreachable, !dbg !1503

59:                                               ; preds = %52
  %60 = or i1 %55, %47, !dbg !1504
  br i1 %60, label %63, label %61, !dbg !1504

61:                                               ; preds = %59
  %62 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.24, i64 0, i64 0), i32 5) #18, !dbg !1506
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %62) #18, !dbg !1508
  call void @usage(i32 1) #23, !dbg !1509
  unreachable, !dbg !1509

63:                                               ; preds = %59
  %64 = icmp slt i32 %23, 0, !dbg !1510
  %65 = or i1 %64, %55, !dbg !1512
  br i1 %65, label %68, label %66, !dbg !1512

66:                                               ; preds = %63
  %67 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.25, i64 0, i64 0), i32 5) #18, !dbg !1513
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %67) #18, !dbg !1515
  call void @usage(i32 1) #23, !dbg !1516
  unreachable, !dbg !1516

68:                                               ; preds = %63
  %69 = load i1, i1* @ignore_missing, align 1, !dbg !1517
  %70 = and i1 %55, %69, !dbg !1519
  br i1 %70, label %71, label %73, !dbg !1519

71:                                               ; preds = %68
  %72 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.26, i64 0, i64 0), i32 5) #18, !dbg !1520
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %72) #18, !dbg !1522
  call void @usage(i32 1) #23, !dbg !1523
  unreachable, !dbg !1523

73:                                               ; preds = %68
  %74 = load i1, i1* @status_only, align 1, !dbg !1524
  %75 = and i1 %55, %74, !dbg !1526
  br i1 %75, label %76, label %78, !dbg !1526

76:                                               ; preds = %73
  %77 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.27, i64 0, i64 0), i32 5) #18, !dbg !1527
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %77) #18, !dbg !1529
  call void @usage(i32 1) #23, !dbg !1530
  unreachable, !dbg !1530

78:                                               ; preds = %73
  %79 = load i1, i1* @warn, align 1, !dbg !1531
  %80 = and i1 %55, %79, !dbg !1533
  br i1 %80, label %81, label %83, !dbg !1533

81:                                               ; preds = %78
  %82 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.28, i64 0, i64 0), i32 5) #18, !dbg !1534
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %82) #18, !dbg !1536
  call void @usage(i32 1) #23, !dbg !1537
  unreachable, !dbg !1537

83:                                               ; preds = %78
  %84 = load i1, i1* @quiet, align 1, !dbg !1538
  %85 = and i1 %55, %84, !dbg !1540
  br i1 %85, label %86, label %88, !dbg !1540

86:                                               ; preds = %83
  %87 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.29, i64 0, i64 0), i32 5) #18, !dbg !1541
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %87) #18, !dbg !1543
  call void @usage(i32 1) #23, !dbg !1544
  unreachable, !dbg !1544

88:                                               ; preds = %83
  %89 = load i1, i1* @strict, align 1, !dbg !1545
  %90 = icmp ne i8 %25, 0, !dbg !1547
  %91 = xor i1 %90, true, !dbg !1548
  %92 = and i1 %89, %91, !dbg !1549
  br i1 %92, label %93, label %95, !dbg !1550

93:                                               ; preds = %88
  %94 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.30, i64 0, i64 0), i32 5) #18, !dbg !1551
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %94) #18, !dbg !1553
  call void @usage(i32 1) #23, !dbg !1554
  unreachable, !dbg !1554

95:                                               ; preds = %88
  %96 = icmp slt i32 %23, 1, !dbg !1555
  call void @llvm.dbg.value(metadata i32 undef, metadata !1409, metadata !DIExpression()), !dbg !1429
  %97 = sext i32 %0 to i64, !dbg !1556
  %98 = getelementptr inbounds i8*, i8** %1, i64 %97, !dbg !1556
  call void @llvm.dbg.value(metadata i8** %98, metadata !1412, metadata !DIExpression()), !dbg !1429
  %99 = load i32, i32* @optind, align 4, !dbg !1557, !tbaa !1559
  %100 = icmp eq i32 %99, %0, !dbg !1561
  br i1 %100, label %101, label %103, !dbg !1562

101:                                              ; preds = %95
  %102 = getelementptr inbounds i8*, i8** %98, i64 1, !dbg !1563
  call void @llvm.dbg.value(metadata i8** %102, metadata !1412, metadata !DIExpression()), !dbg !1429
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.31, i64 0, i64 0), i8** %98, align 8, !dbg !1564, !tbaa !1347
  br label %103, !dbg !1565

103:                                              ; preds = %101, %95
  %104 = phi i8** [ %102, %101 ], [ %98, %95 ], !dbg !1429
  call void @llvm.dbg.value(metadata i8** %104, metadata !1412, metadata !DIExpression()), !dbg !1429
  %105 = sext i32 %99 to i64, !dbg !1566
  %106 = getelementptr inbounds i8*, i8** %1, i64 %105, !dbg !1566
  call void @llvm.dbg.value(metadata i8** %106, metadata !1413, metadata !DIExpression()), !dbg !1567
  call void @llvm.dbg.value(metadata i8 1, metadata !1408, metadata !DIExpression()), !dbg !1429
  %107 = icmp ult i8** %106, %104, !dbg !1568
  br i1 %107, label %108, label %119, !dbg !1569

108:                                              ; preds = %103
  %109 = select i1 %96, i32 32, i32 42, !dbg !1570
  %110 = trunc i32 %109 to i8, !dbg !1573
  %111 = getelementptr inbounds [24 x i8], [24 x i8]* %3, i64 0, i64 0, !dbg !1579
  %112 = getelementptr inbounds [24 x i8], [24 x i8]* %3, i64 0, i64 3, !dbg !1580
  %113 = ptrtoint i8* %112 to i64, !dbg !1580
  %114 = and i64 %113, 3, !dbg !1580
  %115 = sub nsw i64 0, %114, !dbg !1580
  %116 = getelementptr inbounds i8, i8* %112, i64 %115, !dbg !1580
  %117 = bitcast i8** %4 to i8*, !dbg !1579
  %118 = bitcast i64* %5 to i8*, !dbg !1579
  br label %122, !dbg !1569

119:                                              ; preds = %674, %103
  %120 = phi i8 [ 1, %103 ], [ %675, %674 ], !dbg !1429
  call void @llvm.dbg.value(metadata i8 %120, metadata !1408, metadata !DIExpression()), !dbg !1429
  %121 = load i1, i1* @have_read_stdin, align 1, !dbg !1582
  br i1 %121, label %678, label %686, !dbg !1584

122:                                              ; preds = %108, %674
  %123 = phi i8** [ %106, %108 ], [ %676, %674 ]
  %124 = phi i8 [ 1, %108 ], [ %675, %674 ]
  call void @llvm.dbg.value(metadata i8** %123, metadata !1413, metadata !DIExpression()), !dbg !1567
  call void @llvm.dbg.value(metadata i8 %124, metadata !1408, metadata !DIExpression()), !dbg !1429
  %125 = load i8*, i8** %123, align 8, !dbg !1585, !tbaa !1347
  call void @llvm.dbg.value(metadata i8* %125, metadata !1415, metadata !DIExpression()), !dbg !1586
  br i1 %90, label %126, label %578, !dbg !1587

126:                                              ; preds = %122
  call void @llvm.dbg.value(metadata i8* %125, metadata !227, metadata !DIExpression()) #18, !dbg !1579
  call void @llvm.dbg.value(metadata i64 0, metadata !232, metadata !DIExpression()) #18, !dbg !1579
  call void @llvm.dbg.value(metadata i64 0, metadata !233, metadata !DIExpression()) #18, !dbg !1579
  call void @llvm.dbg.value(metadata i64 0, metadata !234, metadata !DIExpression()) #18, !dbg !1579
  call void @llvm.dbg.value(metadata i64 0, metadata !235, metadata !DIExpression()) #18, !dbg !1579
  call void @llvm.dbg.value(metadata i8 0, metadata !236, metadata !DIExpression()) #18, !dbg !1579
  call void @llvm.dbg.value(metadata i8 0, metadata !237, metadata !DIExpression()) #18, !dbg !1579
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %111) #18, !dbg !1588
  call void @llvm.dbg.value(metadata i8* %111, metadata !1432, metadata !DIExpression()) #18, !dbg !1580
  call void @llvm.dbg.value(metadata i64 4, metadata !1437, metadata !DIExpression()) #18, !dbg !1580
  call void @llvm.dbg.value(metadata i8* %111, metadata !1438, metadata !DIExpression()) #18, !dbg !1580
  call void @llvm.dbg.value(metadata i8* %112, metadata !1439, metadata !DIExpression()) #18, !dbg !1580
  call void @llvm.dbg.value(metadata i8* %116, metadata !242, metadata !DIExpression()) #18, !dbg !1579
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %117) #18, !dbg !1589
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %118) #18, !dbg !1590
  %127 = call i32 @strcmp(i8* nonnull dereferenceable(1) %125, i8* nonnull dereferenceable(2) getelementptr inbounds ([2 x i8], [2 x i8]* @.str.31, i64 0, i64 0)) #21, !dbg !1591
  %128 = icmp eq i32 %127, 0, !dbg !1591
  call void @llvm.dbg.value(metadata i1 %128, metadata !246, metadata !DIExpression()) #18, !dbg !1579
  br i1 %128, label %129, label %132, !dbg !1592

129:                                              ; preds = %126
  store i1 true, i1* @have_read_stdin, align 1, !dbg !1593
  %130 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.35, i64 0, i64 0), i32 5) #18, !dbg !1596
  call void @llvm.dbg.value(metadata i8* %130, metadata !227, metadata !DIExpression()) #18, !dbg !1579
  %131 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !1597, !tbaa !1347
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %131, metadata !228, metadata !DIExpression()) #18, !dbg !1579
  br label %139, !dbg !1598

132:                                              ; preds = %126
  %133 = call %struct._IO_FILE* @fopen_safer(i8* %125, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.64, i64 0, i64 0)) #18, !dbg !1599
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %133, metadata !228, metadata !DIExpression()) #18, !dbg !1579
  %134 = icmp eq %struct._IO_FILE* %133, null, !dbg !1601
  br i1 %134, label %135, label %139, !dbg !1603

135:                                              ; preds = %132
  %136 = tail call i32* @__errno_location() #24, !dbg !1604
  %137 = load i32, i32* %136, align 4, !dbg !1604, !tbaa !1559
  %138 = call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %125) #18, !dbg !1606
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %137, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.65, i64 0, i64 0), i8* %138) #18, !dbg !1607
  br label %574, !dbg !1608

139:                                              ; preds = %132, %129
  %140 = phi %struct._IO_FILE* [ %131, %129 ], [ %133, %132 ], !dbg !1609
  %141 = phi i8* [ %130, %129 ], [ %125, %132 ]
  call void @llvm.dbg.value(metadata i8* %141, metadata !227, metadata !DIExpression()) #18, !dbg !1579
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %140, metadata !228, metadata !DIExpression()) #18, !dbg !1579
  call void @llvm.dbg.value(metadata i64 0, metadata !243, metadata !DIExpression()) #18, !dbg !1579
  call void @llvm.dbg.value(metadata i8* null, metadata !244, metadata !DIExpression()) #18, !dbg !1579
  store i8* null, i8** %4, align 8, !dbg !1610, !tbaa !1347
  call void @llvm.dbg.value(metadata i64 0, metadata !245, metadata !DIExpression()) #18, !dbg !1579
  store i64 0, i64* %5, align 8, !dbg !1611, !tbaa !1612
  %142 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %140, i64 0, i32 0, !dbg !1614
  br label %143, !dbg !1621

143:                                              ; preds = %501, %139
  %144 = phi i8 [ 0, %139 ], [ %502, %501 ], !dbg !1622
  %145 = phi i64 [ 0, %139 ], [ %151, %501 ], !dbg !1579
  %146 = phi i8 [ 0, %139 ], [ %503, %501 ], !dbg !1623
  %147 = phi i64 [ 0, %139 ], [ %504, %501 ], !dbg !1624
  %148 = phi i64 [ 0, %139 ], [ %505, %501 ], !dbg !1625
  %149 = phi i64 [ 0, %139 ], [ %506, %501 ], !dbg !1626
  %150 = phi i64 [ 0, %139 ], [ %507, %501 ], !dbg !1627
  call void @llvm.dbg.value(metadata i64 %150, metadata !232, metadata !DIExpression()) #18, !dbg !1579
  call void @llvm.dbg.value(metadata i64 %149, metadata !233, metadata !DIExpression()) #18, !dbg !1579
  call void @llvm.dbg.value(metadata i64 %148, metadata !234, metadata !DIExpression()) #18, !dbg !1579
  call void @llvm.dbg.value(metadata i64 %147, metadata !235, metadata !DIExpression()) #18, !dbg !1579
  call void @llvm.dbg.value(metadata i8 %146, metadata !236, metadata !DIExpression()) #18, !dbg !1579
  call void @llvm.dbg.value(metadata i64 %145, metadata !243, metadata !DIExpression()) #18, !dbg !1579
  call void @llvm.dbg.value(metadata i8 %144, metadata !237, metadata !DIExpression()) #18, !dbg !1579
  %151 = add i64 %145, 1, !dbg !1628
  call void @llvm.dbg.value(metadata i64 %151, metadata !243, metadata !DIExpression()) #18, !dbg !1579
  %152 = icmp eq i64 %151, 0, !dbg !1629
  br i1 %152, label %153, label %156, !dbg !1631

153:                                              ; preds = %143
  call void @llvm.dbg.value(metadata i8* %141, metadata !227, metadata !DIExpression()) #18, !dbg !1579
  call void @llvm.dbg.value(metadata i8* %141, metadata !227, metadata !DIExpression()) #18, !dbg !1579
  call void @llvm.dbg.value(metadata i8* %141, metadata !227, metadata !DIExpression()) #18, !dbg !1579
  call void @llvm.dbg.value(metadata i8* %141, metadata !227, metadata !DIExpression()) #18, !dbg !1579
  call void @llvm.dbg.value(metadata i8* %141, metadata !227, metadata !DIExpression()) #18, !dbg !1579
  call void @llvm.dbg.value(metadata i8* %141, metadata !227, metadata !DIExpression()) #18, !dbg !1579
  %154 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.66, i64 0, i64 0), i32 5) #18, !dbg !1632
  %155 = call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %141) #18, !dbg !1632
  call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %154, i8* %155) #18, !dbg !1632
  unreachable, !dbg !1632

156:                                              ; preds = %143
  call void @llvm.dbg.value(metadata i8** %4, metadata !244, metadata !DIExpression(DW_OP_deref)) #18, !dbg !1579
  call void @llvm.dbg.value(metadata i64* %5, metadata !245, metadata !DIExpression(DW_OP_deref)) #18, !dbg !1579
  call void @llvm.dbg.value(metadata i8** %4, metadata !1633, metadata !DIExpression()) #18, !dbg !1640
  call void @llvm.dbg.value(metadata i64* %5, metadata !1638, metadata !DIExpression()) #18, !dbg !1640
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %140, metadata !1639, metadata !DIExpression()) #18, !dbg !1640
  %157 = call i64 @__getdelim(i8** nonnull %4, i64* nonnull %5, i32 10, %struct._IO_FILE* %140) #18, !dbg !1642
  call void @llvm.dbg.value(metadata i64 %157, metadata !251, metadata !DIExpression()) #18, !dbg !1643
  %158 = icmp slt i64 %157, 1, !dbg !1644
  br i1 %158, label %511, label %159, !dbg !1646

159:                                              ; preds = %156
  %160 = load i8*, i8** %4, align 8, !dbg !1647, !tbaa !1347
  call void @llvm.dbg.value(metadata i8* %160, metadata !244, metadata !DIExpression()) #18, !dbg !1579
  %161 = load i8, i8* %160, align 1, !dbg !1647, !tbaa !1649
  %162 = icmp eq i8 %161, 35, !dbg !1650
  br i1 %162, label %501, label %163, !dbg !1651

163:                                              ; preds = %159
  %164 = add nsw i64 %157, -1, !dbg !1652
  %165 = getelementptr inbounds i8, i8* %160, i64 %164, !dbg !1654
  %166 = load i8, i8* %165, align 1, !dbg !1654, !tbaa !1649
  %167 = icmp eq i8 %166, 10, !dbg !1655
  br i1 %167, label %168, label %170, !dbg !1656

168:                                              ; preds = %163
  call void @llvm.dbg.value(metadata i64 %164, metadata !251, metadata !DIExpression()) #18, !dbg !1643
  store i8 0, i8* %165, align 1, !dbg !1657, !tbaa !1649
  %169 = load i8*, i8** %4, align 8, !dbg !1658, !tbaa !1347
  br label %170, !dbg !1659

170:                                              ; preds = %168, %163
  %171 = phi i8* [ %169, %168 ], [ %160, %163 ], !dbg !1658
  %172 = phi i64 [ %164, %168 ], [ %157, %163 ], !dbg !1643
  call void @llvm.dbg.value(metadata i64 %172, metadata !251, metadata !DIExpression()) #18, !dbg !1643
  call void @llvm.dbg.value(metadata i8* %171, metadata !244, metadata !DIExpression()) #18, !dbg !1579
  call void @llvm.dbg.value(metadata i8* %171, metadata !1660, metadata !DIExpression()) #18, !dbg !1673
  call void @llvm.dbg.value(metadata i64 %172, metadata !1666, metadata !DIExpression()) #18, !dbg !1673
  call void @llvm.dbg.value(metadata i8 0, metadata !1670, metadata !DIExpression()) #18, !dbg !1673
  call void @llvm.dbg.value(metadata i64 0, metadata !1672, metadata !DIExpression()) #18, !dbg !1673
  br label %173, !dbg !1675

173:                                              ; preds = %177, %170
  %174 = phi i64 [ 0, %170 ], [ %178, %177 ], !dbg !1673
  call void @llvm.dbg.value(metadata i64 %174, metadata !1672, metadata !DIExpression()) #18, !dbg !1673
  %175 = getelementptr inbounds i8, i8* %171, i64 %174, !dbg !1676
  %176 = load i8, i8* %175, align 1, !dbg !1676, !tbaa !1649
  switch i8 %176, label %181 [
    i8 32, label %177
    i8 9, label %177
    i8 92, label %179
  ], !dbg !1676

177:                                              ; preds = %173, %173
  %178 = add i64 %174, 1, !dbg !1677
  call void @llvm.dbg.value(metadata i64 %178, metadata !1672, metadata !DIExpression()) #18, !dbg !1673
  br label %173, !dbg !1675, !llvm.loop !1678

179:                                              ; preds = %173
  call void @llvm.dbg.value(metadata i64 %174, metadata !1672, metadata !DIExpression()) #18, !dbg !1673
  call void @llvm.dbg.value(metadata i64 %174, metadata !1672, metadata !DIExpression()) #18, !dbg !1673
  call void @llvm.dbg.value(metadata i64 %174, metadata !1672, metadata !DIExpression()) #18, !dbg !1673
  call void @llvm.dbg.value(metadata i64 %174, metadata !1672, metadata !DIExpression()) #18, !dbg !1673
  call void @llvm.dbg.value(metadata i64 %174, metadata !1672, metadata !DIExpression()) #18, !dbg !1673
  call void @llvm.dbg.value(metadata i64 %174, metadata !1672, metadata !DIExpression()) #18, !dbg !1673
  call void @llvm.dbg.value(metadata i64 %174, metadata !1672, metadata !DIExpression()) #18, !dbg !1673
  call void @llvm.dbg.value(metadata i64 %174, metadata !1672, metadata !DIExpression()) #18, !dbg !1673
  call void @llvm.dbg.value(metadata i64 %174, metadata !1672, metadata !DIExpression()) #18, !dbg !1673
  call void @llvm.dbg.value(metadata i64 %174, metadata !1672, metadata !DIExpression()) #18, !dbg !1673
  call void @llvm.dbg.value(metadata i64 %174, metadata !1672, metadata !DIExpression()) #18, !dbg !1673
  call void @llvm.dbg.value(metadata i64 %174, metadata !1672, metadata !DIExpression()) #18, !dbg !1673
  %180 = add i64 %174, 1, !dbg !1680
  call void @llvm.dbg.value(metadata i64 %180, metadata !1672, metadata !DIExpression()) #18, !dbg !1673
  call void @llvm.dbg.value(metadata i8 1, metadata !1670, metadata !DIExpression()) #18, !dbg !1673
  br label %181, !dbg !1683

181:                                              ; preds = %173, %179
  %182 = phi i1 [ true, %179 ], [ false, %173 ]
  %183 = phi i64 [ %180, %179 ], [ %174, %173 ], !dbg !1673
  call void @llvm.dbg.value(metadata i64 %183, metadata !1672, metadata !DIExpression()) #18, !dbg !1673
  call void @llvm.dbg.value(metadata i8 undef, metadata !1670, metadata !DIExpression()) #18, !dbg !1673
  call void @llvm.dbg.value(metadata i64 4, metadata !1671, metadata !DIExpression()) #18, !dbg !1673
  %184 = getelementptr inbounds i8, i8* %171, i64 %183, !dbg !1684
  %185 = call i32 @strncmp(i8* nonnull dereferenceable(1) %184, i8* nonnull dereferenceable(5) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i64 4) #21, !dbg !1684
  %186 = icmp eq i32 %185, 0, !dbg !1684
  br i1 %186, label %187, label %284, !dbg !1686

187:                                              ; preds = %181
  %188 = add i64 %183, 4, !dbg !1687
  call void @llvm.dbg.value(metadata i64 %188, metadata !1672, metadata !DIExpression()) #18, !dbg !1673
  %189 = getelementptr inbounds i8, i8* %171, i64 %188, !dbg !1689
  %190 = load i8, i8* %189, align 1, !dbg !1689, !tbaa !1649
  %191 = icmp eq i8 %190, 32, !dbg !1691
  %192 = add i64 %183, 5, !dbg !1692
  %193 = select i1 %191, i64 %192, i64 %188, !dbg !1693
  call void @llvm.dbg.value(metadata i64 %193, metadata !1672, metadata !DIExpression()) #18, !dbg !1673
  %194 = getelementptr inbounds i8, i8* %171, i64 %193, !dbg !1694
  %195 = load i8, i8* %194, align 1, !dbg !1694, !tbaa !1649
  %196 = icmp eq i8 %195, 40, !dbg !1696
  br i1 %196, label %197, label %387, !dbg !1697

197:                                              ; preds = %187
  %198 = add i64 %193, 1, !dbg !1698
  call void @llvm.dbg.value(metadata i64 %198, metadata !1672, metadata !DIExpression()) #18, !dbg !1673
  %199 = getelementptr inbounds i8, i8* %171, i64 %198, !dbg !1700
  %200 = sub i64 %172, %198, !dbg !1701
  call void @llvm.dbg.value(metadata i8* %199, metadata !1702, metadata !DIExpression()) #18, !dbg !1712
  call void @llvm.dbg.value(metadata i64 %200, metadata !1707, metadata !DIExpression()) #18, !dbg !1712
  call void @llvm.dbg.value(metadata i1 %182, metadata !1710, metadata !DIExpression()) #18, !dbg !1712
  %201 = icmp eq i64 %200, 0, !dbg !1714
  br i1 %201, label %387, label %202, !dbg !1716

202:                                              ; preds = %197, %206
  %203 = phi i64 [ %204, %206 ], [ %200, %197 ]
  %204 = add i64 %203, -1, !dbg !1712
  call void @llvm.dbg.value(metadata i64 %204, metadata !1711, metadata !DIExpression()) #18, !dbg !1712
  %205 = icmp eq i64 %204, 0, !dbg !1717
  br i1 %205, label %210, label %206, !dbg !1718

206:                                              ; preds = %202
  %207 = getelementptr inbounds i8, i8* %199, i64 %204, !dbg !1719
  %208 = load i8, i8* %207, align 1, !dbg !1719, !tbaa !1649
  %209 = icmp eq i8 %208, 41, !dbg !1720
  br i1 %209, label %213, label %202, !dbg !1721, !llvm.loop !1722

210:                                              ; preds = %202
  %211 = load i8, i8* %199, align 1, !dbg !1724, !tbaa !1649
  %212 = icmp eq i8 %211, 41, !dbg !1718
  br i1 %212, label %215, label %387, !dbg !1726

213:                                              ; preds = %206
  %214 = getelementptr inbounds i8, i8* %199, i64 %204, !dbg !1719
  br label %215, !dbg !1727

215:                                              ; preds = %213, %210
  %216 = phi i8* [ %199, %210 ], [ %214, %213 ]
  %217 = phi i1 [ true, %210 ], [ false, %213 ]
  br i1 %182, label %218, label %245, !dbg !1727

218:                                              ; preds = %215
  call void @llvm.dbg.value(metadata i8* %199, metadata !1729, metadata !DIExpression()) #18, !dbg !1738
  call void @llvm.dbg.value(metadata i64 0, metadata !1734, metadata !DIExpression()) #18, !dbg !1738
  call void @llvm.dbg.value(metadata i8* %199, metadata !1735, metadata !DIExpression()) #18, !dbg !1738
  call void @llvm.dbg.value(metadata i64 0, metadata !1736, metadata !DIExpression()) #18, !dbg !1740
  br i1 %217, label %241, label %219, !dbg !1741

219:                                              ; preds = %218
  %220 = add i64 %203, -2, !dbg !1742
  br label %221, !dbg !1741

221:                                              ; preds = %235, %219
  %222 = phi i64 [ 0, %219 ], [ %239, %235 ]
  %223 = phi i8* [ %199, %219 ], [ %238, %235 ]
  call void @llvm.dbg.value(metadata i64 %222, metadata !1736, metadata !DIExpression()) #18, !dbg !1740
  call void @llvm.dbg.value(metadata i8* %223, metadata !1735, metadata !DIExpression()) #18, !dbg !1738
  %224 = getelementptr inbounds i8, i8* %199, i64 %222, !dbg !1747
  %225 = load i8, i8* %224, align 1, !dbg !1747, !tbaa !1649
  %226 = sext i8 %225 to i32, !dbg !1747
  switch i32 %226, label %235 [
    i32 92, label %227
    i32 0, label %387
  ], !dbg !1748

227:                                              ; preds = %221
  %228 = icmp eq i64 %222, %220, !dbg !1749
  br i1 %228, label %387, label %229, !dbg !1750

229:                                              ; preds = %227
  %230 = add nuw i64 %222, 1, !dbg !1751
  call void @llvm.dbg.value(metadata i64 %230, metadata !1736, metadata !DIExpression()) #18, !dbg !1740
  %231 = getelementptr inbounds i8, i8* %199, i64 %230, !dbg !1752
  %232 = load i8, i8* %231, align 1, !dbg !1752, !tbaa !1649
  %233 = sext i8 %232 to i32, !dbg !1752
  switch i32 %233, label %387 [
    i32 110, label %235
    i32 92, label %234
  ], !dbg !1753

234:                                              ; preds = %229
  call void @llvm.dbg.value(metadata i8* %223, metadata !1735, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)) #18, !dbg !1738
  br label %235, !dbg !1754

235:                                              ; preds = %221, %229, %234
  %236 = phi i8 [ 92, %234 ], [ 10, %229 ], [ %225, %221 ]
  %237 = phi i64 [ %230, %234 ], [ %230, %229 ], [ %222, %221 ], !dbg !1740
  store i8 %236, i8* %223, align 1, !dbg !1756, !tbaa !1649
  %238 = getelementptr inbounds i8, i8* %223, i64 1, !dbg !1756
  call void @llvm.dbg.value(metadata i64 %237, metadata !1736, metadata !DIExpression()) #18, !dbg !1740
  call void @llvm.dbg.value(metadata i8* %238, metadata !1735, metadata !DIExpression()) #18, !dbg !1738
  %239 = add i64 %237, 1, !dbg !1757
  call void @llvm.dbg.value(metadata i64 %239, metadata !1736, metadata !DIExpression()) #18, !dbg !1740
  %240 = icmp ult i64 %239, %204, !dbg !1758
  br i1 %240, label %221, label %241, !dbg !1741, !llvm.loop !1759

241:                                              ; preds = %235, %218
  %242 = phi i8* [ %199, %218 ], [ %238, %235 ], !dbg !1738
  call void @llvm.dbg.value(metadata i8* %242, metadata !1735, metadata !DIExpression()) #18, !dbg !1738
  %243 = icmp ult i8* %242, %216, !dbg !1761
  br i1 %243, label %244, label %245, !dbg !1763

244:                                              ; preds = %241
  store i8 0, i8* %242, align 1, !dbg !1764, !tbaa !1649
  br label %245, !dbg !1765

245:                                              ; preds = %244, %241, %215
  call void @llvm.dbg.value(metadata i64 1, metadata !1711, metadata !DIExpression()) #18, !dbg !1712
  store i8 0, i8* %216, align 1, !dbg !1766, !tbaa !1649
  br label %246, !dbg !1767

246:                                              ; preds = %250, %245
  %247 = phi i64 [ %203, %245 ], [ %251, %250 ], !dbg !1712
  call void @llvm.dbg.value(metadata i64 %247, metadata !1711, metadata !DIExpression()) #18, !dbg !1712
  %248 = getelementptr inbounds i8, i8* %199, i64 %247, !dbg !1768
  %249 = load i8, i8* %248, align 1, !dbg !1768, !tbaa !1649
  switch i8 %249, label %387 [
    i8 32, label %250
    i8 9, label %250
    i8 61, label %252
  ], !dbg !1768

250:                                              ; preds = %246, %246
  %251 = add i64 %247, 1, !dbg !1769
  call void @llvm.dbg.value(metadata i64 %251, metadata !1711, metadata !DIExpression()) #18, !dbg !1712
  br label %246, !dbg !1767, !llvm.loop !1770

252:                                              ; preds = %246, %257
  %253 = phi i64 [ %254, %257 ], [ %247, %246 ]
  %254 = add i64 %253, 1, !dbg !1712
  call void @llvm.dbg.value(metadata i64 %254, metadata !1711, metadata !DIExpression()) #18, !dbg !1712
  %255 = getelementptr inbounds i8, i8* %199, i64 %254, !dbg !1771
  %256 = load i8, i8* %255, align 1, !dbg !1771, !tbaa !1649
  switch i8 %256, label %258 [
    i8 32, label %257
    i8 9, label %257
  ], !dbg !1771

257:                                              ; preds = %252, %252
  br label %252, !dbg !1712, !llvm.loop !1772

258:                                              ; preds = %252
  %259 = getelementptr inbounds i8, i8* %199, i64 %254, !dbg !1771
  call void @llvm.dbg.value(metadata i8* %259, metadata !1775, metadata !DIExpression()) #18, !dbg !1783
  call void @llvm.dbg.value(metadata i32 0, metadata !1781, metadata !DIExpression()) #18, !dbg !1785
  %260 = load i1, i1* @digest_hex_bytes, align 8, !dbg !1786
  br i1 %260, label %261, label %378, !dbg !1788

261:                                              ; preds = %258
  %262 = tail call i16** @__ctype_b_loc() #24, !dbg !1789
  %263 = load i16*, i16** %262, align 8, !dbg !1789, !tbaa !1347
  %264 = add i64 %253, 41, !dbg !1788
  %265 = getelementptr i8, i8* %199, i64 %264, !dbg !1788
  call void @llvm.dbg.value(metadata i32 0, metadata !1781, metadata !DIExpression()) #18, !dbg !1785
  call void @llvm.dbg.value(metadata i8* %259, metadata !1775, metadata !DIExpression()) #18, !dbg !1783
  %266 = zext i8 %256 to i64, !dbg !1792
  %267 = getelementptr inbounds i16, i16* %263, i64 %266, !dbg !1792
  %268 = load i16, i16* %267, align 2, !dbg !1792, !tbaa !1793
  %269 = and i16 %268, 4096, !dbg !1792
  %270 = icmp eq i16 %269, 0, !dbg !1792
  br i1 %270, label %387, label %271, !dbg !1795

271:                                              ; preds = %261, %277
  %272 = phi i8* [ %274, %277 ], [ %259, %261 ]
  %273 = phi i32 [ %275, %277 ], [ 0, %261 ]
  call void @llvm.dbg.value(metadata i8* %272, metadata !1775, metadata !DIExpression()) #18, !dbg !1783
  call void @llvm.dbg.value(metadata i32 %273, metadata !1781, metadata !DIExpression()) #18, !dbg !1785
  %274 = getelementptr inbounds i8, i8* %272, i64 1, !dbg !1796
  call void @llvm.dbg.value(metadata i8* %274, metadata !1775, metadata !DIExpression()) #18, !dbg !1783
  %275 = add nuw nsw i32 %273, 1, !dbg !1797
  call void @llvm.dbg.value(metadata i32 %275, metadata !1781, metadata !DIExpression()) #18, !dbg !1785
  %276 = icmp eq i32 %275, 40, !dbg !1798
  br i1 %276, label %376, label %277, !dbg !1788, !llvm.loop !1799

277:                                              ; preds = %271
  %278 = load i8, i8* %274, align 1, !dbg !1792, !tbaa !1649
  call void @llvm.dbg.value(metadata i32 %275, metadata !1781, metadata !DIExpression()) #18, !dbg !1785
  call void @llvm.dbg.value(metadata i8* %274, metadata !1775, metadata !DIExpression()) #18, !dbg !1783
  %279 = zext i8 %278 to i64, !dbg !1792
  %280 = getelementptr inbounds i16, i16* %263, i64 %279, !dbg !1792
  %281 = load i16, i16* %280, align 2, !dbg !1792, !tbaa !1793
  %282 = and i16 %281, 4096, !dbg !1792
  %283 = icmp eq i16 %282, 0, !dbg !1792
  br i1 %283, label %387, label %271, !dbg !1795

284:                                              ; preds = %181
  %285 = sub i64 %172, %183, !dbg !1801
  %286 = load i1, i1* @min_digest_line_length, align 8, !dbg !1803
  %287 = select i1 %286, i64 42, i64 0, !dbg !1803
  %288 = load i8, i8* %184, align 1, !dbg !1804, !tbaa !1649
  %289 = icmp eq i8 %288, 92, !dbg !1805
  %290 = zext i1 %289 to i64, !dbg !1806
  %291 = or i64 %287, %290, !dbg !1807
  %292 = icmp ult i64 %285, %291, !dbg !1808
  br i1 %292, label %387, label %293, !dbg !1809

293:                                              ; preds = %284
  %294 = load i1, i1* @digest_hex_bytes, align 8, !dbg !1810
  %295 = select i1 %294, i64 40, i64 0, !dbg !1810
  %296 = add i64 %295, %183, !dbg !1811
  call void @llvm.dbg.value(metadata i64 %296, metadata !1672, metadata !DIExpression()) #18, !dbg !1673
  %297 = getelementptr inbounds i8, i8* %171, i64 %296, !dbg !1812
  %298 = load i8, i8* %297, align 1, !dbg !1812, !tbaa !1649
  switch i8 %298, label %387 [
    i8 32, label %299
    i8 9, label %299
  ], !dbg !1812

299:                                              ; preds = %293, %293
  %300 = add i64 %296, 1, !dbg !1814
  call void @llvm.dbg.value(metadata i64 %300, metadata !1672, metadata !DIExpression()) #18, !dbg !1673
  store i8 0, i8* %297, align 1, !dbg !1815, !tbaa !1649
  call void @llvm.dbg.value(metadata i8* %184, metadata !1775, metadata !DIExpression()) #18, !dbg !1816
  call void @llvm.dbg.value(metadata i32 0, metadata !1781, metadata !DIExpression()) #18, !dbg !1819
  br i1 %294, label %301, label %322, !dbg !1820

301:                                              ; preds = %299
  %302 = tail call i16** @__ctype_b_loc() #24, !dbg !1821
  %303 = load i16*, i16** %302, align 8, !dbg !1821, !tbaa !1347
  %304 = getelementptr i8, i8* %184, i64 40, !dbg !1820
  br label %305, !dbg !1820

305:                                              ; preds = %706, %301
  %306 = phi i32 [ 0, %301 ], [ %708, %706 ]
  %307 = phi i8* [ %184, %301 ], [ %707, %706 ]
  call void @llvm.dbg.value(metadata i32 %306, metadata !1781, metadata !DIExpression()) #18, !dbg !1819
  call void @llvm.dbg.value(metadata i8* %307, metadata !1775, metadata !DIExpression()) #18, !dbg !1816
  %308 = load i8, i8* %307, align 1, !dbg !1822, !tbaa !1649
  %309 = zext i8 %308 to i64, !dbg !1822
  %310 = getelementptr inbounds i16, i16* %303, i64 %309, !dbg !1822
  %311 = load i16, i16* %310, align 2, !dbg !1822, !tbaa !1793
  %312 = and i16 %311, 4096, !dbg !1822
  %313 = icmp eq i16 %312, 0, !dbg !1822
  br i1 %313, label %387, label %314, !dbg !1823

314:                                              ; preds = %305
  %315 = getelementptr inbounds i8, i8* %307, i64 1, !dbg !1824
  call void @llvm.dbg.value(metadata i8* %315, metadata !1775, metadata !DIExpression()) #18, !dbg !1816
  call void @llvm.dbg.value(metadata i32 %306, metadata !1781, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)) #18, !dbg !1819
  %316 = load i8, i8* %315, align 1, !dbg !1822, !tbaa !1649
  %317 = zext i8 %316 to i64, !dbg !1822
  %318 = getelementptr inbounds i16, i16* %303, i64 %317, !dbg !1822
  %319 = load i16, i16* %318, align 2, !dbg !1822, !tbaa !1793
  %320 = and i16 %319, 4096, !dbg !1822
  %321 = icmp eq i16 %320, 0, !dbg !1822
  br i1 %321, label %387, label %690, !dbg !1823

322:                                              ; preds = %706, %299
  %323 = phi i8* [ %184, %299 ], [ %304, %706 ]
  call void @llvm.dbg.value(metadata i8* %323, metadata !1775, metadata !DIExpression()) #18, !dbg !1816
  %324 = load i8, i8* %323, align 1, !dbg !1825, !tbaa !1649
  %325 = icmp eq i8 %324, 0, !dbg !1826
  br i1 %325, label %326, label %387, !dbg !1827

326:                                              ; preds = %322
  %327 = sub i64 %172, %300, !dbg !1828
  %328 = icmp eq i64 %327, 1, !dbg !1830
  br i1 %328, label %332, label %329, !dbg !1831

329:                                              ; preds = %326
  %330 = getelementptr inbounds i8, i8* %171, i64 %300, !dbg !1832
  %331 = load i8, i8* %330, align 1, !dbg !1832, !tbaa !1649
  switch i8 %331, label %332 [
    i8 32, label %336
    i8 42, label %336
  ], !dbg !1833

332:                                              ; preds = %329, %326
  %333 = load i32, i32* @bsd_reversed, align 4, !dbg !1834, !tbaa !1559
  %334 = icmp eq i32 %333, 0, !dbg !1837
  br i1 %334, label %387, label %335, !dbg !1838

335:                                              ; preds = %332
  store i32 1, i32* @bsd_reversed, align 4, !dbg !1839, !tbaa !1559
  br label %341, !dbg !1840

336:                                              ; preds = %329, %329
  %337 = load i32, i32* @bsd_reversed, align 4, !dbg !1841, !tbaa !1559
  %338 = icmp eq i32 %337, 1, !dbg !1843
  br i1 %338, label %341, label %339, !dbg !1844

339:                                              ; preds = %336
  store i32 0, i32* @bsd_reversed, align 4, !dbg !1845, !tbaa !1559
  %340 = add i64 %296, 2, !dbg !1847
  call void @llvm.dbg.value(metadata i64 %340, metadata !1672, metadata !DIExpression()) #18, !dbg !1673
  br label %341, !dbg !1848

341:                                              ; preds = %339, %336, %335
  %342 = phi i64 [ %300, %335 ], [ %340, %339 ], [ %300, %336 ], !dbg !1673
  call void @llvm.dbg.value(metadata i64 %342, metadata !1672, metadata !DIExpression()) #18, !dbg !1673
  %343 = getelementptr inbounds i8, i8* %171, i64 %342, !dbg !1849
  br i1 %182, label %344, label %381, !dbg !1850

344:                                              ; preds = %341
  %345 = sub i64 %172, %342, !dbg !1851
  call void @llvm.dbg.value(metadata i8* %343, metadata !1729, metadata !DIExpression()) #18, !dbg !1853
  call void @llvm.dbg.value(metadata i64 %345, metadata !1734, metadata !DIExpression()) #18, !dbg !1853
  call void @llvm.dbg.value(metadata i8* %343, metadata !1735, metadata !DIExpression()) #18, !dbg !1853
  call void @llvm.dbg.value(metadata i64 0, metadata !1736, metadata !DIExpression()) #18, !dbg !1855
  %346 = icmp eq i64 %345, 0, !dbg !1856
  br i1 %346, label %369, label %347, !dbg !1857

347:                                              ; preds = %344
  %348 = add i64 %345, -1, !dbg !1858
  br label %349, !dbg !1857

349:                                              ; preds = %363, %347
  %350 = phi i64 [ 0, %347 ], [ %367, %363 ]
  %351 = phi i8* [ %343, %347 ], [ %366, %363 ]
  call void @llvm.dbg.value(metadata i64 %350, metadata !1736, metadata !DIExpression()) #18, !dbg !1855
  call void @llvm.dbg.value(metadata i8* %351, metadata !1735, metadata !DIExpression()) #18, !dbg !1853
  %352 = getelementptr inbounds i8, i8* %343, i64 %350, !dbg !1859
  %353 = load i8, i8* %352, align 1, !dbg !1859, !tbaa !1649
  %354 = sext i8 %353 to i32, !dbg !1859
  switch i32 %354, label %363 [
    i32 92, label %355
    i32 0, label %387
  ], !dbg !1860

355:                                              ; preds = %349
  %356 = icmp eq i64 %350, %348, !dbg !1861
  br i1 %356, label %387, label %357, !dbg !1862

357:                                              ; preds = %355
  %358 = add nuw i64 %350, 1, !dbg !1863
  call void @llvm.dbg.value(metadata i64 %358, metadata !1736, metadata !DIExpression()) #18, !dbg !1855
  %359 = getelementptr inbounds i8, i8* %343, i64 %358, !dbg !1864
  %360 = load i8, i8* %359, align 1, !dbg !1864, !tbaa !1649
  %361 = sext i8 %360 to i32, !dbg !1864
  switch i32 %361, label %387 [
    i32 110, label %363
    i32 92, label %362
  ], !dbg !1865

362:                                              ; preds = %357
  call void @llvm.dbg.value(metadata i8* %351, metadata !1735, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)) #18, !dbg !1853
  br label %363, !dbg !1866

363:                                              ; preds = %349, %357, %362
  %364 = phi i8 [ 92, %362 ], [ 10, %357 ], [ %353, %349 ]
  %365 = phi i64 [ %358, %362 ], [ %358, %357 ], [ %350, %349 ], !dbg !1855
  store i8 %364, i8* %351, align 1, !dbg !1867, !tbaa !1649
  %366 = getelementptr inbounds i8, i8* %351, i64 1, !dbg !1867
  call void @llvm.dbg.value(metadata i64 %365, metadata !1736, metadata !DIExpression()) #18, !dbg !1855
  call void @llvm.dbg.value(metadata i8* %366, metadata !1735, metadata !DIExpression()) #18, !dbg !1853
  %367 = add i64 %365, 1, !dbg !1868
  call void @llvm.dbg.value(metadata i64 %367, metadata !1736, metadata !DIExpression()) #18, !dbg !1855
  %368 = icmp ult i64 %367, %345, !dbg !1856
  br i1 %368, label %349, label %369, !dbg !1857, !llvm.loop !1869

369:                                              ; preds = %363, %344
  %370 = phi i8* [ %343, %344 ], [ %366, %363 ], !dbg !1853
  call void @llvm.dbg.value(metadata i8* %370, metadata !1735, metadata !DIExpression()) #18, !dbg !1853
  %371 = getelementptr inbounds i8, i8* %171, i64 %172, !dbg !1871
  %372 = icmp ult i8* %370, %371, !dbg !1872
  br i1 %372, label %373, label %374, !dbg !1873

373:                                              ; preds = %369
  store i8 0, i8* %370, align 1, !dbg !1874, !tbaa !1649
  br label %374, !dbg !1875

374:                                              ; preds = %373, %369
  %375 = icmp eq i8* %171, null, !dbg !1876
  br i1 %375, label %387, label %381, !dbg !1877

376:                                              ; preds = %271
  %377 = load i8, i8* %265, align 1, !dbg !1878, !tbaa !1649
  br label %378, !dbg !1878

378:                                              ; preds = %376, %258
  %379 = phi i8 [ %377, %376 ], [ %256, %258 ], !dbg !1878
  call void @llvm.dbg.value(metadata i8* undef, metadata !1775, metadata !DIExpression()) #18, !dbg !1783
  %380 = icmp eq i8 %379, 0, !dbg !1879
  br i1 %380, label %381, label %387, !dbg !1877

381:                                              ; preds = %378, %374, %341
  %382 = phi i8* [ %259, %378 ], [ %184, %374 ], [ %184, %341 ]
  %383 = phi i8* [ %199, %378 ], [ %343, %374 ], [ %343, %341 ]
  br i1 %128, label %384, label %395, !dbg !1880

384:                                              ; preds = %381
  %385 = call i32 @strcmp(i8* nonnull dereferenceable(1) %383, i8* nonnull dereferenceable(2) getelementptr inbounds ([2 x i8], [2 x i8]* @.str.31, i64 0, i64 0)) #21, !dbg !1881
  %386 = icmp eq i32 %385, 0, !dbg !1881
  br i1 %386, label %387, label %395, !dbg !1882

387:                                              ; preds = %305, %314, %690, %698, %357, %355, %349, %229, %227, %221, %246, %277, %261, %384, %378, %374, %332, %322, %293, %284, %210, %197, %187
  %388 = add i64 %150, 1, !dbg !1883
  call void @llvm.dbg.value(metadata i64 %388, metadata !232, metadata !DIExpression()) #18, !dbg !1579
  %389 = load i1, i1* @warn, align 1, !dbg !1885
  br i1 %389, label %390, label %393, !dbg !1887

390:                                              ; preds = %387
  %391 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.67, i64 0, i64 0), i32 5) #18, !dbg !1888
  %392 = call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %141) #18, !dbg !1890
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %391, i8* %392, i64 %151, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #18, !dbg !1891
  br label %393, !dbg !1892

393:                                              ; preds = %390, %387
  %394 = add i64 %149, 1, !dbg !1893
  call void @llvm.dbg.value(metadata i64 %394, metadata !233, metadata !DIExpression()) #18, !dbg !1579
  br label %501, !dbg !1894

395:                                              ; preds = %384, %381
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %6) #18, !dbg !1895
  %396 = load i1, i1* @status_only, align 1, !dbg !1896
  br i1 %396, label %400, label %397, !dbg !1897

397:                                              ; preds = %395
  %398 = call i8* @strchr(i8* nonnull dereferenceable(1) %383, i32 10) #21, !dbg !1898
  %399 = icmp ne i8* %398, null, !dbg !1897
  br label %400

400:                                              ; preds = %397, %395
  %401 = phi i1 [ false, %395 ], [ %399, %397 ], !dbg !1899
  call void @llvm.dbg.value(metadata i1 %401, metadata !259, metadata !DIExpression()) #18, !dbg !1899
  call void @llvm.dbg.value(metadata i8 1, metadata !236, metadata !DIExpression()) #18, !dbg !1579
  call void @llvm.dbg.value(metadata i8* %6, metadata !258, metadata !DIExpression(DW_OP_deref)) #18, !dbg !1899
  %402 = call fastcc zeroext i1 @digest_file(i8* %383, i8* nonnull %116, i8* nonnull %6) #18, !dbg !1900
  call void @llvm.dbg.value(metadata i1 %402, metadata !255, metadata !DIExpression()) #18, !dbg !1899
  br i1 %402, label %421, label %403, !dbg !1901

403:                                              ; preds = %400
  %404 = add i64 %147, 1, !dbg !1902
  call void @llvm.dbg.value(metadata i64 %404, metadata !235, metadata !DIExpression()) #18, !dbg !1579
  %405 = load i1, i1* @status_only, align 1, !dbg !1904
  br i1 %405, label %497, label %406, !dbg !1906

406:                                              ; preds = %403
  br i1 %401, label %407, label %418, !dbg !1907

407:                                              ; preds = %406
  call void @llvm.dbg.value(metadata i32 92, metadata !1577, metadata !DIExpression()) #18, !dbg !1909
  %408 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1912, !tbaa !1347
  %409 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %408, i64 0, i32 5, !dbg !1912
  %410 = load i8*, i8** %409, align 8, !dbg !1912, !tbaa !1913
  %411 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %408, i64 0, i32 6, !dbg !1912
  %412 = load i8*, i8** %411, align 8, !dbg !1912, !tbaa !1915
  %413 = icmp ult i8* %410, %412, !dbg !1912
  br i1 %413, label %416, label %414, !dbg !1912, !prof !1916, !misexpect !1917

414:                                              ; preds = %407
  %415 = call i32 @__overflow(%struct._IO_FILE* %408, i32 92) #18, !dbg !1912
  br label %418, !dbg !1912

416:                                              ; preds = %407
  %417 = getelementptr inbounds i8, i8* %410, i64 1, !dbg !1912
  store i8* %417, i8** %409, align 8, !dbg !1912, !tbaa !1913
  store i8 92, i8* %410, align 1, !dbg !1912, !tbaa !1649
  br label %418, !dbg !1912

418:                                              ; preds = %416, %414, %406
  call fastcc void @print_filename(i8* %383, i1 zeroext %401) #18, !dbg !1918
  %419 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.69, i64 0, i64 0), i32 5) #18, !dbg !1919
  %420 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.68, i64 0, i64 0), i8* %419) #18, !dbg !1919
  br label %497, !dbg !1920

421:                                              ; preds = %400
  %422 = load i1, i1* @ignore_missing, align 1, !dbg !1921
  %423 = xor i1 %422, true, !dbg !1922
  %424 = load i8, i8* %6, align 1, !dbg !1923
  %425 = icmp eq i8 %424, 0, !dbg !1923
  %426 = or i1 %425, %423, !dbg !1922
  br i1 %426, label %427, label %497, !dbg !1922

427:                                              ; preds = %421
  %428 = load i1, i1* @digest_hex_bytes, align 8, !dbg !1924
  %429 = select i1 %428, i64 20, i64 0, !dbg !1925
  call void @llvm.dbg.value(metadata i64 %429, metadata !260, metadata !DIExpression()) #18, !dbg !1926
  call void @llvm.dbg.value(metadata i64 0, metadata !264, metadata !DIExpression()) #18, !dbg !1926
  br i1 %428, label %430, label %466, !dbg !1927

430:                                              ; preds = %427
  %431 = tail call i32** @__ctype_tolower_loc() #24, !dbg !1928
  %432 = load i32*, i32** %431, align 8, !dbg !1928, !tbaa !1347
  br label %433, !dbg !1927

433:                                              ; preds = %463, %430
  %434 = phi i64 [ 0, %430 ], [ %464, %463 ]
  call void @llvm.dbg.value(metadata i64 %434, metadata !264, metadata !DIExpression()) #18, !dbg !1926
  %435 = shl nuw i64 %434, 1, !dbg !1930
  %436 = getelementptr inbounds i8, i8* %382, i64 %435, !dbg !1930
  %437 = load i8, i8* %436, align 1, !dbg !1930, !tbaa !1649
  %438 = zext i8 %437 to i64, !dbg !1930
  %439 = getelementptr inbounds i32, i32* %432, i64 %438, !dbg !1930
  %440 = load i32, i32* %439, align 4, !dbg !1930, !tbaa !1559
  call void @llvm.dbg.value(metadata i32 %440, metadata !265, metadata !DIExpression()) #18, !dbg !1931
  %441 = getelementptr inbounds i8, i8* %116, i64 %434, !dbg !1932
  %442 = load i8, i8* %441, align 1, !dbg !1932, !tbaa !1649
  %443 = zext i8 %442 to i32, !dbg !1932
  %444 = lshr i32 %443, 4, !dbg !1933
  %445 = zext i32 %444 to i64, !dbg !1934
  %446 = getelementptr inbounds [16 x i8], [16 x i8]* @digest_check.bin2hex, i64 0, i64 %445, !dbg !1934
  %447 = load i8, i8* %446, align 1, !dbg !1934, !tbaa !1649
  %448 = sext i8 %447 to i32, !dbg !1934
  %449 = icmp eq i32 %440, %448, !dbg !1935
  br i1 %449, label %450, label %466, !dbg !1936

450:                                              ; preds = %433
  %451 = or i64 %435, 1, !dbg !1937
  %452 = getelementptr inbounds i8, i8* %382, i64 %451, !dbg !1937
  %453 = load i8, i8* %452, align 1, !dbg !1937, !tbaa !1649
  %454 = zext i8 %453 to i64, !dbg !1937
  %455 = getelementptr inbounds i32, i32* %432, i64 %454, !dbg !1937
  %456 = load i32, i32* %455, align 4, !dbg !1937, !tbaa !1559
  call void @llvm.dbg.value(metadata i32 %456, metadata !271, metadata !DIExpression()) #18, !dbg !1939
  %457 = and i32 %443, 15, !dbg !1940
  %458 = zext i32 %457 to i64, !dbg !1941
  %459 = getelementptr inbounds [16 x i8], [16 x i8]* @digest_check.bin2hex, i64 0, i64 %458, !dbg !1941
  %460 = load i8, i8* %459, align 1, !dbg !1941, !tbaa !1649
  %461 = sext i8 %460 to i32, !dbg !1942
  %462 = icmp eq i32 %456, %461, !dbg !1943
  br i1 %462, label %463, label %466, !dbg !1944

463:                                              ; preds = %450
  %464 = add nuw nsw i64 %434, 1, !dbg !1945
  call void @llvm.dbg.value(metadata i64 %464, metadata !264, metadata !DIExpression()) #18, !dbg !1926
  %465 = icmp ult i64 %464, %429, !dbg !1946
  br i1 %465, label %433, label %466, !dbg !1927, !llvm.loop !1947

466:                                              ; preds = %463, %450, %433, %427
  %467 = phi i64 [ 0, %427 ], [ %464, %463 ], [ %434, %433 ], [ %434, %450 ], !dbg !1949
  call void @llvm.dbg.value(metadata i64 %467, metadata !264, metadata !DIExpression()) #18, !dbg !1926
  call void @llvm.dbg.value(metadata i64 %467, metadata !264, metadata !DIExpression()) #18, !dbg !1926
  call void @llvm.dbg.value(metadata i64 %467, metadata !264, metadata !DIExpression()) #18, !dbg !1926
  %468 = icmp ne i64 %467, %429, !dbg !1950
  %469 = add i64 %148, 1, !dbg !1952
  %470 = select i1 %468, i8 %144, i8 1, !dbg !1952
  %471 = select i1 %468, i64 %469, i64 %148, !dbg !1952
  call void @llvm.dbg.value(metadata i64 %471, metadata !234, metadata !DIExpression()) #18, !dbg !1579
  call void @llvm.dbg.value(metadata i8 %470, metadata !237, metadata !DIExpression()) #18, !dbg !1579
  %472 = load i1, i1* @status_only, align 1, !dbg !1953
  br i1 %472, label %497, label %473, !dbg !1955

473:                                              ; preds = %466
  br i1 %468, label %476, label %474, !dbg !1956

474:                                              ; preds = %473
  %475 = load i1, i1* @quiet, align 1, !dbg !1959
  br i1 %475, label %497, label %476, !dbg !1960

476:                                              ; preds = %474, %473
  br i1 %401, label %477, label %488, !dbg !1961

477:                                              ; preds = %476
  call void @llvm.dbg.value(metadata i32 92, metadata !1577, metadata !DIExpression()) #18, !dbg !1963
  %478 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1966, !tbaa !1347
  %479 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %478, i64 0, i32 5, !dbg !1966
  %480 = load i8*, i8** %479, align 8, !dbg !1966, !tbaa !1913
  %481 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %478, i64 0, i32 6, !dbg !1966
  %482 = load i8*, i8** %481, align 8, !dbg !1966, !tbaa !1915
  %483 = icmp ult i8* %480, %482, !dbg !1966
  br i1 %483, label %486, label %484, !dbg !1966, !prof !1916, !misexpect !1917

484:                                              ; preds = %477
  %485 = call i32 @__overflow(%struct._IO_FILE* %478, i32 92) #18, !dbg !1966
  br label %488, !dbg !1966

486:                                              ; preds = %477
  %487 = getelementptr inbounds i8, i8* %480, i64 1, !dbg !1966
  store i8* %487, i8** %479, align 8, !dbg !1966, !tbaa !1913
  store i8 92, i8* %480, align 1, !dbg !1966, !tbaa !1649
  br label %488, !dbg !1966

488:                                              ; preds = %486, %484, %476
  call fastcc void @print_filename(i8* %383, i1 zeroext %401) #18, !dbg !1967
  br i1 %468, label %489, label %492, !dbg !1968

489:                                              ; preds = %488
  %490 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.70, i64 0, i64 0), i32 5) #18, !dbg !1969
  %491 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.68, i64 0, i64 0), i8* %490) #18, !dbg !1969
  br label %497, !dbg !1969

492:                                              ; preds = %488
  %493 = load i1, i1* @quiet, align 1, !dbg !1971
  br i1 %493, label %497, label %494, !dbg !1973

494:                                              ; preds = %492
  %495 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.71, i64 0, i64 0), i32 5) #18, !dbg !1974
  %496 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.68, i64 0, i64 0), i8* %495) #18, !dbg !1974
  br label %497, !dbg !1974

497:                                              ; preds = %494, %492, %489, %474, %466, %421, %418, %403
  %498 = phi i8 [ %144, %403 ], [ %144, %418 ], [ %144, %421 ], [ %144, %489 ], [ 1, %494 ], [ 1, %492 ], [ %470, %466 ], [ 1, %474 ], !dbg !1622
  %499 = phi i64 [ %404, %403 ], [ %404, %418 ], [ %147, %421 ], [ %147, %489 ], [ %147, %494 ], [ %147, %492 ], [ %147, %466 ], [ %147, %474 ], !dbg !1579
  %500 = phi i64 [ %148, %403 ], [ %148, %418 ], [ %148, %421 ], [ %469, %489 ], [ %148, %494 ], [ %148, %492 ], [ %471, %466 ], [ %148, %474 ], !dbg !1579
  call void @llvm.dbg.value(metadata i64 %500, metadata !234, metadata !DIExpression()) #18, !dbg !1579
  call void @llvm.dbg.value(metadata i64 %499, metadata !235, metadata !DIExpression()) #18, !dbg !1579
  call void @llvm.dbg.value(metadata i8 %498, metadata !237, metadata !DIExpression()) #18, !dbg !1579
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %6) #18, !dbg !1975
  br label %501

501:                                              ; preds = %497, %393, %159
  %502 = phi i8 [ %498, %497 ], [ %144, %393 ], [ %144, %159 ]
  %503 = phi i8 [ 1, %497 ], [ %146, %393 ], [ %146, %159 ]
  %504 = phi i64 [ %499, %497 ], [ %147, %393 ], [ %147, %159 ]
  %505 = phi i64 [ %500, %497 ], [ %148, %393 ], [ %148, %159 ]
  %506 = phi i64 [ %149, %497 ], [ %394, %393 ], [ %149, %159 ]
  %507 = phi i64 [ %150, %497 ], [ %388, %393 ], [ %150, %159 ]
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %140, metadata !1619, metadata !DIExpression()) #18, !dbg !1614
  %508 = load i32, i32* %142, align 8, !dbg !1976, !tbaa !1977
  %509 = and i32 %508, 48, !dbg !1978
  %510 = icmp eq i32 %509, 0, !dbg !1978
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %140, metadata !1979, metadata !DIExpression()) #18, !dbg !1982
  br i1 %510, label %143, label %511, !dbg !1978, !llvm.loop !1984

511:                                              ; preds = %501, %156
  %512 = phi i64 [ %507, %501 ], [ %150, %156 ]
  %513 = phi i64 [ %506, %501 ], [ %149, %156 ]
  %514 = phi i64 [ %505, %501 ], [ %148, %156 ]
  %515 = phi i64 [ %504, %501 ], [ %147, %156 ]
  %516 = phi i8 [ %503, %501 ], [ %146, %156 ]
  %517 = phi i8 [ %502, %501 ], [ %144, %156 ]
  %518 = load i8*, i8** %4, align 8, !dbg !1986, !tbaa !1347
  call void @llvm.dbg.value(metadata i8* %518, metadata !244, metadata !DIExpression()) #18, !dbg !1579
  call void @free(i8* %518) #18, !dbg !1987
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %140, metadata !1979, metadata !DIExpression()) #18, !dbg !1988
  %519 = load i32, i32* %142, align 8, !dbg !1991, !tbaa !1977
  %520 = and i32 %519, 32, !dbg !1991
  %521 = icmp eq i32 %520, 0, !dbg !1992
  br i1 %521, label %525, label %522, !dbg !1993

522:                                              ; preds = %511
  %523 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.72, i64 0, i64 0), i32 5) #18, !dbg !1994
  %524 = call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %141) #18, !dbg !1996
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %523, i8* %524) #18, !dbg !1997
  br label %574, !dbg !1998

525:                                              ; preds = %511
  br i1 %128, label %533, label %526, !dbg !1999

526:                                              ; preds = %525
  %527 = call i32 @rpl_fclose(%struct._IO_FILE* nonnull %140) #18, !dbg !2001
  %528 = icmp eq i32 %527, 0, !dbg !2002
  br i1 %528, label %533, label %529, !dbg !2003

529:                                              ; preds = %526
  %530 = tail call i32* @__errno_location() #24, !dbg !2004
  %531 = load i32, i32* %530, align 4, !dbg !2004, !tbaa !1559
  %532 = call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %141) #18, !dbg !2006
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %531, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.65, i64 0, i64 0), i8* %532) #18, !dbg !2007
  br label %574, !dbg !2008

533:                                              ; preds = %526, %525
  %534 = and i8 %516, 1, !dbg !2009
  %535 = icmp eq i8 %534, 0, !dbg !2009
  br i1 %535, label %560, label %536, !dbg !2011

536:                                              ; preds = %533
  %537 = load i1, i1* @status_only, align 1, !dbg !2012
  br i1 %537, label %538, label %540, !dbg !2015

538:                                              ; preds = %536
  %539 = and i8 %517, 1, !dbg !2016
  br label %563, !dbg !2015

540:                                              ; preds = %536
  %541 = icmp eq i64 %512, 0, !dbg !2017
  br i1 %541, label %544, label %542, !dbg !2020

542:                                              ; preds = %540
  %543 = call i8* @dcngettext(i8* null, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.74, i64 0, i64 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.75, i64 0, i64 0), i64 %512, i32 5) #18, !dbg !2021
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %543, i64 %512) #18, !dbg !2022
  br label %544, !dbg !2022

544:                                              ; preds = %542, %540
  %545 = icmp eq i64 %515, 0, !dbg !2023
  br i1 %545, label %548, label %546, !dbg !2025

546:                                              ; preds = %544
  %547 = call i8* @dcngettext(i8* null, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.76, i64 0, i64 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.77, i64 0, i64 0), i64 %515, i32 5) #18, !dbg !2026
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %547, i64 %515) #18, !dbg !2027
  br label %548, !dbg !2027

548:                                              ; preds = %546, %544
  %549 = icmp eq i64 %514, 0, !dbg !2028
  br i1 %549, label %552, label %550, !dbg !2030

550:                                              ; preds = %548
  %551 = call i8* @dcngettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.78, i64 0, i64 0), i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.79, i64 0, i64 0), i64 %514, i32 5) #18, !dbg !2031
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %551, i64 %514) #18, !dbg !2032
  br label %552, !dbg !2032

552:                                              ; preds = %550, %548
  %553 = load i1, i1* @ignore_missing, align 1, !dbg !2033
  %554 = and i8 %517, 1, !dbg !2035
  %555 = icmp eq i8 %554, 0, !dbg !2035
  %556 = and i1 %555, %553, !dbg !2036
  br i1 %556, label %557, label %563, !dbg !2036

557:                                              ; preds = %552
  %558 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.80, i64 0, i64 0), i32 5) #18, !dbg !2037
  %559 = call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %141) #18, !dbg !2038
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %558, i8* %559) #18, !dbg !2039
  br label %574, !dbg !2040

560:                                              ; preds = %533
  %561 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.73, i64 0, i64 0), i32 5) #18, !dbg !2041
  %562 = call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %141) #18, !dbg !2043
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %561, i8* %562, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #18, !dbg !2044
  br label %574, !dbg !2045

563:                                              ; preds = %552, %538
  %564 = phi i8 [ %539, %538 ], [ %554, %552 ], !dbg !2016
  %565 = icmp ne i8 %564, 0, !dbg !2016
  %566 = or i64 %515, %514, !dbg !2040
  %567 = icmp eq i64 %566, 0, !dbg !2040
  %568 = and i1 %567, %565, !dbg !2040
  br i1 %568, label %569, label %574, !dbg !2040

569:                                              ; preds = %563
  %570 = load i1, i1* @strict, align 1, !dbg !2046
  %571 = icmp eq i64 %513, 0, !dbg !2047
  %572 = xor i1 %570, true, !dbg !2047
  %573 = or i1 %571, %572, !dbg !2047
  br label %574, !dbg !2047

574:                                              ; preds = %135, %522, %529, %557, %560, %563, %569
  %575 = phi i1 [ false, %522 ], [ false, %529 ], [ false, %135 ], [ false, %563 ], [ false, %560 ], [ %573, %569 ], [ false, %557 ], !dbg !1579
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %118) #18, !dbg !2048
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %117) #18, !dbg !2048
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %111) #18, !dbg !2048
  %576 = zext i1 %575 to i8, !dbg !2049
  %577 = and i8 %124, %576, !dbg !2050
  call void @llvm.dbg.value(metadata i8 %577, metadata !1408, metadata !DIExpression()), !dbg !1429
  br label %674, !dbg !2051

578:                                              ; preds = %122
  call void @llvm.dbg.value(metadata i32 undef, metadata !1418, metadata !DIExpression()), !dbg !2052
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %8) #18, !dbg !2053
  call void @llvm.dbg.value(metadata i8* %8, metadata !1421, metadata !DIExpression(DW_OP_deref)), !dbg !2052
  %579 = call fastcc zeroext i1 @digest_file(i8* %125, i8* nonnull %14, i8* nonnull %8), !dbg !2054
  br i1 %579, label %580, label %672, !dbg !2055

580:                                              ; preds = %578
  %581 = call i8* @strchr(i8* nonnull dereferenceable(1) %125, i32 92) #21, !dbg !2056
  %582 = icmp eq i8* %581, null, !dbg !2056
  br i1 %582, label %583, label %586, !dbg !2057

583:                                              ; preds = %580
  %584 = call i8* @strchr(i8* nonnull dereferenceable(1) %125, i32 10) #21, !dbg !2058
  %585 = icmp eq i8* %584, null, !dbg !2058
  br i1 %585, label %589, label %586, !dbg !2059

586:                                              ; preds = %583, %580
  %587 = load i1, i1* @delim, align 1, !dbg !2060
  %588 = xor i1 %587, true, !dbg !2061
  br label %589

589:                                              ; preds = %583, %586
  %590 = phi i1 [ false, %583 ], [ %588, %586 ], !dbg !2062
  call void @llvm.dbg.value(metadata i1 %590, metadata !1422, metadata !DIExpression()), !dbg !2062
  br i1 %46, label %591, label %610, !dbg !2063

591:                                              ; preds = %589
  br i1 %590, label %592, label %603, !dbg !2064

592:                                              ; preds = %591
  call void @llvm.dbg.value(metadata i32 92, metadata !1577, metadata !DIExpression()) #18, !dbg !2067
  %593 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2070, !tbaa !1347
  %594 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %593, i64 0, i32 5, !dbg !2070
  %595 = load i8*, i8** %594, align 8, !dbg !2070, !tbaa !1913
  %596 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %593, i64 0, i32 6, !dbg !2070
  %597 = load i8*, i8** %596, align 8, !dbg !2070, !tbaa !1915
  %598 = icmp ult i8* %595, %597, !dbg !2070
  br i1 %598, label %601, label %599, !dbg !2070, !prof !1916, !misexpect !1917

599:                                              ; preds = %592
  %600 = call i32 @__overflow(%struct._IO_FILE* %593, i32 92) #18, !dbg !2070
  br label %603, !dbg !2070

601:                                              ; preds = %592
  %602 = getelementptr inbounds i8, i8* %595, i64 1, !dbg !2070
  store i8* %602, i8** %594, align 8, !dbg !2070, !tbaa !1913
  store i8 92, i8* %595, align 1, !dbg !2070, !tbaa !1649
  br label %603, !dbg !2070

603:                                              ; preds = %601, %599, %591
  %604 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2071, !tbaa !1347
  %605 = call i32 @fputs_unlocked(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), %struct._IO_FILE* %604), !dbg !2071
  %606 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2072, !tbaa !1347
  %607 = call i32 @fputs_unlocked(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.32, i64 0, i64 0), %struct._IO_FILE* %606), !dbg !2072
  call fastcc void @print_filename(i8* %125, i1 zeroext %590), !dbg !2073
  %608 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2074, !tbaa !1347
  %609 = call i32 @fputs_unlocked(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.33, i64 0, i64 0), %struct._IO_FILE* %608), !dbg !2074
  br label %622, !dbg !2075

610:                                              ; preds = %589
  br i1 %590, label %611, label %622, !dbg !2077

611:                                              ; preds = %610
  call void @llvm.dbg.value(metadata i32 92, metadata !1577, metadata !DIExpression()) #18, !dbg !2078
  %612 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2080, !tbaa !1347
  %613 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %612, i64 0, i32 5, !dbg !2080
  %614 = load i8*, i8** %613, align 8, !dbg !2080, !tbaa !1913
  %615 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %612, i64 0, i32 6, !dbg !2080
  %616 = load i8*, i8** %615, align 8, !dbg !2080, !tbaa !1915
  %617 = icmp ult i8* %614, %616, !dbg !2080
  br i1 %617, label %620, label %618, !dbg !2080, !prof !1916, !misexpect !1917

618:                                              ; preds = %611
  %619 = call i32 @__overflow(%struct._IO_FILE* %612, i32 92) #18, !dbg !2080
  br label %622, !dbg !2080

620:                                              ; preds = %611
  %621 = getelementptr inbounds i8, i8* %614, i64 1, !dbg !2080
  store i8* %621, i8** %613, align 8, !dbg !2080, !tbaa !1913
  store i8 92, i8* %614, align 1, !dbg !2080, !tbaa !1649
  br label %622, !dbg !2080

622:                                              ; preds = %620, %618, %603, %610
  call void @llvm.dbg.value(metadata i64 0, metadata !1425, metadata !DIExpression()), !dbg !2081
  %623 = load i1, i1* @digest_hex_bytes, align 8, !dbg !2082
  br i1 %623, label %625, label %624, !dbg !2084

624:                                              ; preds = %625, %622
  br i1 %46, label %658, label %635, !dbg !2085

625:                                              ; preds = %622, %625
  %626 = phi i64 [ %631, %625 ], [ 0, %622 ]
  call void @llvm.dbg.value(metadata i64 %626, metadata !1425, metadata !DIExpression()), !dbg !2081
  %627 = getelementptr inbounds i8, i8* %14, i64 %626, !dbg !2086
  %628 = load i8, i8* %627, align 1, !dbg !2086, !tbaa !1649
  %629 = zext i8 %628 to i32, !dbg !2086
  %630 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.34, i64 0, i64 0), i32 %629) #18, !dbg !2086
  %631 = add nuw nsw i64 %626, 1, !dbg !2087
  call void @llvm.dbg.value(metadata i64 %631, metadata !1425, metadata !DIExpression()), !dbg !2081
  %632 = load i1, i1* @digest_hex_bytes, align 8, !dbg !2082
  %633 = select i1 %632, i64 20, i64 0, !dbg !2088
  %634 = icmp ult i64 %631, %633, !dbg !2089
  br i1 %634, label %625, label %624, !dbg !2084, !llvm.loop !2090

635:                                              ; preds = %624
  call void @llvm.dbg.value(metadata i32 32, metadata !1577, metadata !DIExpression()) #18, !dbg !2092
  %636 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2094, !tbaa !1347
  %637 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %636, i64 0, i32 5, !dbg !2094
  %638 = load i8*, i8** %637, align 8, !dbg !2094, !tbaa !1913
  %639 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %636, i64 0, i32 6, !dbg !2094
  %640 = load i8*, i8** %639, align 8, !dbg !2094, !tbaa !1915
  %641 = icmp ult i8* %638, %640, !dbg !2094
  br i1 %641, label %644, label %642, !dbg !2094, !prof !1916, !misexpect !1917

642:                                              ; preds = %635
  %643 = call i32 @__overflow(%struct._IO_FILE* %636, i32 32) #18, !dbg !2094
  br label %646, !dbg !2094

644:                                              ; preds = %635
  %645 = getelementptr inbounds i8, i8* %638, i64 1, !dbg !2094
  store i8* %645, i8** %637, align 8, !dbg !2094, !tbaa !1913
  store i8 32, i8* %638, align 1, !dbg !2094, !tbaa !1649
  br label %646, !dbg !2094

646:                                              ; preds = %642, %644
  call void @llvm.dbg.value(metadata i32 undef, metadata !1418, metadata !DIExpression()), !dbg !2052
  call void @llvm.dbg.value(metadata i32 %109, metadata !1577, metadata !DIExpression()) #18, !dbg !1573
  %647 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2095, !tbaa !1347
  %648 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %647, i64 0, i32 5, !dbg !2095
  %649 = load i8*, i8** %648, align 8, !dbg !2095, !tbaa !1913
  %650 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %647, i64 0, i32 6, !dbg !2095
  %651 = load i8*, i8** %650, align 8, !dbg !2095, !tbaa !1915
  %652 = icmp ult i8* %649, %651, !dbg !2095
  br i1 %652, label %655, label %653, !dbg !2095, !prof !1916, !misexpect !1917

653:                                              ; preds = %646
  %654 = call i32 @__overflow(%struct._IO_FILE* %647, i32 %109) #18, !dbg !2095
  br label %657, !dbg !2095

655:                                              ; preds = %646
  %656 = getelementptr inbounds i8, i8* %649, i64 1, !dbg !2095
  store i8* %656, i8** %648, align 8, !dbg !2095, !tbaa !1913
  store i8 %110, i8* %649, align 1, !dbg !2095, !tbaa !1649
  br label %657, !dbg !2095

657:                                              ; preds = %653, %655
  call fastcc void @print_filename(i8* %125, i1 zeroext %590), !dbg !2096
  br label %658, !dbg !2097

658:                                              ; preds = %657, %624
  %659 = load i1, i1* @delim, align 1, !dbg !2098
  %660 = select i1 %659, i32 0, i32 10, !dbg !2098
  call void @llvm.dbg.value(metadata i32 %660, metadata !1577, metadata !DIExpression()) #18, !dbg !2099
  %661 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2101, !tbaa !1347
  %662 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %661, i64 0, i32 5, !dbg !2101
  %663 = load i8*, i8** %662, align 8, !dbg !2101, !tbaa !1913
  %664 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %661, i64 0, i32 6, !dbg !2101
  %665 = load i8*, i8** %664, align 8, !dbg !2101, !tbaa !1915
  %666 = icmp ult i8* %663, %665, !dbg !2101
  br i1 %666, label %669, label %667, !dbg !2101, !prof !1916, !misexpect !1917

667:                                              ; preds = %658
  %668 = call i32 @__overflow(%struct._IO_FILE* %661, i32 %660) #18, !dbg !2101
  br label %672, !dbg !2101

669:                                              ; preds = %658
  %670 = trunc i32 %660 to i8, !dbg !2101
  %671 = getelementptr inbounds i8, i8* %663, i64 1, !dbg !2101
  store i8* %671, i8** %662, align 8, !dbg !2101, !tbaa !1913
  store i8 %670, i8* %663, align 1, !dbg !2101, !tbaa !1649
  br label %672, !dbg !2101

672:                                              ; preds = %669, %667, %578
  %673 = phi i8 [ 0, %578 ], [ %124, %667 ], [ %124, %669 ], !dbg !1429
  call void @llvm.dbg.value(metadata i8 %673, metadata !1408, metadata !DIExpression()), !dbg !1429
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %8) #18, !dbg !2102
  br label %674

674:                                              ; preds = %672, %574
  %675 = phi i8 [ %577, %574 ], [ %673, %672 ], !dbg !1429
  call void @llvm.dbg.value(metadata i8 %675, metadata !1408, metadata !DIExpression()), !dbg !1429
  %676 = getelementptr inbounds i8*, i8** %123, i64 1, !dbg !2103
  call void @llvm.dbg.value(metadata i8** %676, metadata !1413, metadata !DIExpression()), !dbg !1567
  %677 = icmp ult i8** %676, %104, !dbg !1568
  br i1 %677, label %122, label %119, !dbg !1569, !llvm.loop !2104

678:                                              ; preds = %119
  %679 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !2106, !tbaa !1347
  %680 = call i32 @rpl_fclose(%struct._IO_FILE* %679) #18, !dbg !2107
  %681 = icmp eq i32 %680, -1, !dbg !2108
  br i1 %681, label %682, label %686, !dbg !2109

682:                                              ; preds = %678
  %683 = tail call i32* @__errno_location() #24, !dbg !2110
  %684 = load i32, i32* %683, align 4, !dbg !2110, !tbaa !1559
  %685 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.35, i64 0, i64 0), i32 5) #18, !dbg !2110
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %684, i8* %685) #18, !dbg !2110
  unreachable, !dbg !2110

686:                                              ; preds = %678, %119
  %687 = and i8 %120, 1, !dbg !2111
  %688 = xor i8 %687, 1, !dbg !2111
  %689 = zext i8 %688 to i32, !dbg !2111
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %9) #18, !dbg !2112
  ret i32 %689, !dbg !2112

690:                                              ; preds = %314
  call void @llvm.dbg.value(metadata i32 %306, metadata !1781, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)) #18, !dbg !1819
  %691 = getelementptr inbounds i8, i8* %307, i64 2, !dbg !1824
  call void @llvm.dbg.value(metadata i8* %691, metadata !1775, metadata !DIExpression()) #18, !dbg !1816
  call void @llvm.dbg.value(metadata i32 %306, metadata !1781, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_plus_uconst, 1, DW_OP_stack_value)) #18, !dbg !1819
  %692 = load i8, i8* %691, align 1, !dbg !1822, !tbaa !1649
  %693 = zext i8 %692 to i64, !dbg !1822
  %694 = getelementptr inbounds i16, i16* %303, i64 %693, !dbg !1822
  %695 = load i16, i16* %694, align 2, !dbg !1822, !tbaa !1793
  %696 = and i16 %695, 4096, !dbg !1822
  %697 = icmp eq i16 %696, 0, !dbg !1822
  br i1 %697, label %387, label %698, !dbg !1823

698:                                              ; preds = %690
  call void @llvm.dbg.value(metadata i32 %306, metadata !1781, metadata !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value)) #18, !dbg !1819
  %699 = getelementptr inbounds i8, i8* %307, i64 3, !dbg !1824
  call void @llvm.dbg.value(metadata i8* %699, metadata !1775, metadata !DIExpression()) #18, !dbg !1816
  call void @llvm.dbg.value(metadata i32 %306, metadata !1781, metadata !DIExpression(DW_OP_plus_uconst, 2, DW_OP_plus_uconst, 1, DW_OP_stack_value)) #18, !dbg !1819
  %700 = load i8, i8* %699, align 1, !dbg !1822, !tbaa !1649
  %701 = zext i8 %700 to i64, !dbg !1822
  %702 = getelementptr inbounds i16, i16* %303, i64 %701, !dbg !1822
  %703 = load i16, i16* %702, align 2, !dbg !1822, !tbaa !1793
  %704 = and i16 %703, 4096, !dbg !1822
  %705 = icmp eq i16 %704, 0, !dbg !1822
  br i1 %705, label %387, label %706, !dbg !1823

706:                                              ; preds = %698
  call void @llvm.dbg.value(metadata i32 %306, metadata !1781, metadata !DIExpression(DW_OP_plus_uconst, 3, DW_OP_stack_value)) #18, !dbg !1819
  %707 = getelementptr inbounds i8, i8* %307, i64 4, !dbg !1824
  call void @llvm.dbg.value(metadata i8* %707, metadata !1775, metadata !DIExpression()) #18, !dbg !1816
  %708 = add nuw nsw i32 %306, 4, !dbg !2113
  call void @llvm.dbg.value(metadata i32 %708, metadata !1781, metadata !DIExpression()) #18, !dbg !1819
  %709 = icmp eq i32 %708, 40, !dbg !2114
  br i1 %709, label %322, label %305, !dbg !1820, !llvm.loop !2115
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
define internal fastcc zeroext i1 @digest_file(i8* %0, i8* %1, i8* nocapture %2) unnamed_addr #8 !dbg !2117 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2122, metadata !DIExpression()), !dbg !2129
  call void @llvm.dbg.value(metadata i32* undef, metadata !2123, metadata !DIExpression()), !dbg !2129
  call void @llvm.dbg.value(metadata i8* %1, metadata !2124, metadata !DIExpression()), !dbg !2129
  call void @llvm.dbg.value(metadata i8* %2, metadata !2125, metadata !DIExpression()), !dbg !2129
  %4 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %0, i8* nonnull dereferenceable(2) getelementptr inbounds ([2 x i8], [2 x i8]* @.str.31, i64 0, i64 0)) #21, !dbg !2130
  %5 = icmp eq i32 %4, 0, !dbg !2130
  call void @llvm.dbg.value(metadata i1 %5, metadata !2128, metadata !DIExpression()), !dbg !2129
  store i8 0, i8* %2, align 1, !dbg !2131, !tbaa !2132
  br i1 %5, label %6, label %8, !dbg !2134

6:                                                ; preds = %3
  store i1 true, i1* @have_read_stdin, align 1, !dbg !2135
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !2138, !tbaa !1347
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %7, metadata !2126, metadata !DIExpression()), !dbg !2129
  br label %21, !dbg !2139

8:                                                ; preds = %3
  %9 = tail call %struct._IO_FILE* @fopen_safer(i8* %0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.64, i64 0, i64 0)) #18, !dbg !2140
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %9, metadata !2126, metadata !DIExpression()), !dbg !2129
  %10 = icmp eq %struct._IO_FILE* %9, null, !dbg !2142
  br i1 %10, label %11, label %21, !dbg !2144

11:                                               ; preds = %8
  %12 = load i1, i1* @ignore_missing, align 1, !dbg !2145
  %13 = tail call i32* @__errno_location() #24, !dbg !2148
  br i1 %12, label %14, label %18, !dbg !2149

14:                                               ; preds = %11
  %15 = load i32, i32* %13, align 4, !dbg !2150, !tbaa !1559
  %16 = icmp eq i32 %15, 2, !dbg !2151
  br i1 %16, label %17, label %18, !dbg !2152

17:                                               ; preds = %14
  store i8 1, i8* %2, align 1, !dbg !2153, !tbaa !2132
  br label %41, !dbg !2155

18:                                               ; preds = %11, %14
  %19 = load i32, i32* %13, align 4, !dbg !2156, !tbaa !1559
  %20 = tail call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %0) #18, !dbg !2157
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %19, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.65, i64 0, i64 0), i8* %20) #18, !dbg !2158
  br label %41, !dbg !2159

21:                                               ; preds = %8, %6
  %22 = phi %struct._IO_FILE* [ %7, %6 ], [ %9, %8 ], !dbg !2160
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %22, metadata !2126, metadata !DIExpression()), !dbg !2129
  tail call void @fadvise(%struct._IO_FILE* %22, i32 2) #18, !dbg !2161
  %23 = tail call i32 @sha1_stream(%struct._IO_FILE* %22, i8* %1) #18, !dbg !2162
  call void @llvm.dbg.value(metadata i32 %23, metadata !2127, metadata !DIExpression()), !dbg !2129
  %24 = icmp eq i32 %23, 0, !dbg !2163
  br i1 %24, label %33, label %25, !dbg !2165

25:                                               ; preds = %21
  %26 = tail call i32* @__errno_location() #24, !dbg !2166
  %27 = load i32, i32* %26, align 4, !dbg !2166, !tbaa !1559
  %28 = tail call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %0) #18, !dbg !2168
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %27, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.65, i64 0, i64 0), i8* %28) #18, !dbg !2169
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !2170, !tbaa !1347
  %30 = icmp eq %struct._IO_FILE* %22, %29, !dbg !2172
  br i1 %30, label %41, label %31, !dbg !2173

31:                                               ; preds = %25
  %32 = tail call i32 @rpl_fclose(%struct._IO_FILE* %22) #18, !dbg !2174
  br label %41, !dbg !2174

33:                                               ; preds = %21
  br i1 %5, label %41, label %34, !dbg !2175

34:                                               ; preds = %33
  %35 = tail call i32 @rpl_fclose(%struct._IO_FILE* %22) #18, !dbg !2177
  %36 = icmp eq i32 %35, 0, !dbg !2178
  br i1 %36, label %41, label %37, !dbg !2179

37:                                               ; preds = %34
  %38 = tail call i32* @__errno_location() #24, !dbg !2180
  %39 = load i32, i32* %38, align 4, !dbg !2180, !tbaa !1559
  %40 = tail call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %0) #18, !dbg !2182
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %39, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.65, i64 0, i64 0), i8* %40) #18, !dbg !2183
  br label %41, !dbg !2184

41:                                               ; preds = %33, %34, %31, %25, %37, %18, %17
  %42 = phi i1 [ false, %37 ], [ true, %17 ], [ false, %18 ], [ false, %25 ], [ false, %31 ], [ true, %34 ], [ true, %33 ], !dbg !2129
  ret i1 %42, !dbg !2185
}

declare i32 @__overflow(%struct._IO_FILE*, i32) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @print_filename(i8* nocapture readonly %0, i1 zeroext %1) unnamed_addr #8 !dbg !2186 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2190, metadata !DIExpression()), !dbg !2192
  call void @llvm.dbg.value(metadata i1 %1, metadata !2191, metadata !DIExpression()), !dbg !2192
  br i1 %1, label %3, label %6, !dbg !2193

3:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i8* %0, metadata !2190, metadata !DIExpression()), !dbg !2192
  %4 = load i8, i8* %0, align 1, !dbg !2194, !tbaa !1649
  %5 = icmp eq i8 %4, 0, !dbg !2195
  br i1 %5, label %35, label %9, !dbg !2195

6:                                                ; preds = %2
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2196, !tbaa !1347
  %8 = tail call i32 @fputs_unlocked(i8* %0, %struct._IO_FILE* %7), !dbg !2196
  br label %35, !dbg !2199

9:                                                ; preds = %3, %31
  %10 = phi i8 [ %33, %31 ], [ %4, %3 ]
  %11 = phi i8* [ %32, %31 ], [ %0, %3 ]
  call void @llvm.dbg.value(metadata i8* %11, metadata !2190, metadata !DIExpression()), !dbg !2192
  %12 = sext i8 %10 to i32, !dbg !2200
  switch i32 %12, label %19 [
    i32 10, label %13
    i32 92, label %16
  ], !dbg !2202

13:                                               ; preds = %9
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2203, !tbaa !1347
  %15 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.81, i64 0, i64 0), %struct._IO_FILE* %14), !dbg !2203
  br label %31, !dbg !2205

16:                                               ; preds = %9
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2206, !tbaa !1347
  %18 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.82, i64 0, i64 0), %struct._IO_FILE* %17), !dbg !2206
  br label %31, !dbg !2207

19:                                               ; preds = %9
  call void @llvm.dbg.value(metadata i32 %12, metadata !1577, metadata !DIExpression()) #18, !dbg !2208
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2210, !tbaa !1347
  %21 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %20, i64 0, i32 5, !dbg !2210
  %22 = load i8*, i8** %21, align 8, !dbg !2210, !tbaa !1913
  %23 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %20, i64 0, i32 6, !dbg !2210
  %24 = load i8*, i8** %23, align 8, !dbg !2210, !tbaa !1915
  %25 = icmp ult i8* %22, %24, !dbg !2210
  br i1 %25, label %29, label %26, !dbg !2210, !prof !1916, !misexpect !1917

26:                                               ; preds = %19
  %27 = and i32 %12, 255, !dbg !2210
  %28 = tail call i32 @__overflow(%struct._IO_FILE* %20, i32 %27) #18, !dbg !2210
  br label %31, !dbg !2210

29:                                               ; preds = %19
  %30 = getelementptr inbounds i8, i8* %22, i64 1, !dbg !2210
  store i8* %30, i8** %21, align 8, !dbg !2210, !tbaa !1913
  store i8 %10, i8* %22, align 1, !dbg !2210, !tbaa !1649
  br label %31, !dbg !2210

31:                                               ; preds = %29, %26, %16, %13
  %32 = getelementptr inbounds i8, i8* %11, i64 1, !dbg !2211
  call void @llvm.dbg.value(metadata i8* %32, metadata !2190, metadata !DIExpression()), !dbg !2192
  %33 = load i8, i8* %32, align 1, !dbg !2194, !tbaa !1649
  %34 = icmp eq i8 %33, 0, !dbg !2195
  br i1 %34, label %35, label %9, !dbg !2195, !llvm.loop !2212

35:                                               ; preds = %31, %3, %6
  ret void, !dbg !2214
}

; Function Attrs: nounwind readnone
declare i32** @__ctype_tolower_loc() local_unnamed_addr #9

; Function Attrs: nounwind
declare !dbg !186 void @free(i8* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !189 i8* @dcngettext(i8*, i8*, i8*, i64, i32) local_unnamed_addr #2

; Function Attrs: nofree norecurse nounwind sspstrong uwtable writeonly
define dso_local void @close_stdout_set_file_name(i8* %0) local_unnamed_addr #10 !dbg !2215 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2217, metadata !DIExpression()), !dbg !2218
  store i8* %0, i8** @file_name, align 8, !dbg !2219, !tbaa !1347
  ret void, !dbg !2220
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable writeonly
define dso_local void @close_stdout_set_ignore_EPIPE(i1 zeroext %0) local_unnamed_addr #10 !dbg !2221 {
  %2 = zext i1 %0 to i8
  call void @llvm.dbg.value(metadata i8 %2, metadata !2225, metadata !DIExpression()), !dbg !2226
  store i8 %2, i8* @ignore_EPIPE, align 1, !dbg !2227, !tbaa !2132
  ret void, !dbg !2228
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @close_stdout() #8 !dbg !2229 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2234, !tbaa !1347
  %2 = tail call i32 @close_stream(%struct._IO_FILE* %1) #18, !dbg !2235
  %3 = icmp eq i32 %2, 0, !dbg !2236
  br i1 %3, label %22, label %4, !dbg !2237

4:                                                ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 1, !dbg !2238, !tbaa !2132, !range !2239
  %6 = icmp eq i8 %5, 0, !dbg !2238
  br i1 %6, label %11, label %7, !dbg !2240

7:                                                ; preds = %4
  %8 = tail call i32* @__errno_location() #24, !dbg !2241
  %9 = load i32, i32* %8, align 4, !dbg !2241, !tbaa !1559
  %10 = icmp eq i32 %9, 32, !dbg !2242
  br i1 %10, label %22, label %11, !dbg !2243

11:                                               ; preds = %4, %7
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.86, i64 0, i64 0), i32 5) #18, !dbg !2244
  call void @llvm.dbg.value(metadata i8* %12, metadata !2231, metadata !DIExpression()), !dbg !2245
  %13 = load i8*, i8** @file_name, align 8, !dbg !2246, !tbaa !1347
  %14 = icmp eq i8* %13, null, !dbg !2246
  %15 = tail call i32* @__errno_location() #24, !dbg !2248
  %16 = load i32, i32* %15, align 4, !dbg !2248, !tbaa !1559
  br i1 %14, label %19, label %17, !dbg !2249

17:                                               ; preds = %11
  %18 = tail call i8* @quotearg_colon(i8* nonnull %13) #18, !dbg !2250
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.87, i64 0, i64 0), i8* %18, i8* %12) #18, !dbg !2251
  br label %20, !dbg !2251

19:                                               ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.88, i64 0, i64 0), i8* %12) #18, !dbg !2252
  br label %20

20:                                               ; preds = %19, %17
  %21 = load volatile i32, i32* @exit_failure, align 4, !dbg !2253, !tbaa !1559
  tail call void @_exit(i32 %21) #22, !dbg !2254
  unreachable, !dbg !2254

22:                                               ; preds = %0, %7
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2255, !tbaa !1347
  %24 = tail call i32 @close_stream(%struct._IO_FILE* %23) #18, !dbg !2257
  %25 = icmp eq i32 %24, 0, !dbg !2258
  br i1 %25, label %28, label %26, !dbg !2259

26:                                               ; preds = %22
  %27 = load volatile i32, i32* @exit_failure, align 4, !dbg !2260, !tbaa !1559
  tail call void @_exit(i32 %27) #22, !dbg !2261
  unreachable, !dbg !2261

28:                                               ; preds = %22
  ret void, !dbg !2262
}

; Function Attrs: noreturn
declare void @_exit(i32) local_unnamed_addr #11

; Function Attrs: nofree norecurse nounwind sspstrong uwtable writeonly
define dso_local void @sha1_init_ctx(%struct.sha1_ctx* nocapture %0) local_unnamed_addr #10 !dbg !2263 {
  call void @llvm.dbg.value(metadata %struct.sha1_ctx* %0, metadata !2267, metadata !DIExpression()), !dbg !2268
  %2 = bitcast %struct.sha1_ctx* %0 to <4 x i32>*, !dbg !2269
  store <4 x i32> <i32 1732584193, i32 -271733879, i32 -1732584194, i32 271733878>, <4 x i32>* %2, align 4, !dbg !2269, !tbaa !1559
  %3 = getelementptr inbounds %struct.sha1_ctx, %struct.sha1_ctx* %0, i64 0, i32 4, !dbg !2270
  %4 = bitcast i32* %3 to <4 x i32>*, !dbg !2271
  store <4 x i32> <i32 -1009589776, i32 0, i32 0, i32 0>, <4 x i32>* %4, align 4, !dbg !2271, !tbaa !1559
  ret void, !dbg !2272
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @sha1_read_ctx(%struct.sha1_ctx* nocapture readonly %0, i8* returned %1) local_unnamed_addr #8 !dbg !2273 {
  call void @llvm.dbg.value(metadata %struct.sha1_ctx* %0, metadata !2279, metadata !DIExpression()), !dbg !2282
  call void @llvm.dbg.value(metadata i8* %1, metadata !2280, metadata !DIExpression()), !dbg !2282
  call void @llvm.dbg.value(metadata i8* %1, metadata !2281, metadata !DIExpression()), !dbg !2282
  %3 = getelementptr inbounds %struct.sha1_ctx, %struct.sha1_ctx* %0, i64 0, i32 0, !dbg !2283
  %4 = load i32, i32* %3, align 4, !dbg !2283, !tbaa !2284
  call void @llvm.dbg.value(metadata i32 %4, metadata !2286, metadata !DIExpression()) #18, !dbg !2292
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #18, !dbg !2294
  call void @llvm.dbg.value(metadata i8* %1, metadata !2295, metadata !DIExpression()) #18, !dbg !2301
  call void @llvm.dbg.value(metadata i32 %5, metadata !2300, metadata !DIExpression()) #18, !dbg !2301
  call void @llvm.dbg.value(metadata i32* undef, metadata !2300, metadata !DIExpression(DW_OP_deref)) #18, !dbg !2301
  call void @llvm.dbg.value(metadata i8* %1, metadata !2303, metadata !DIExpression()) #18, !dbg !2313
  call void @llvm.dbg.value(metadata i8* undef, metadata !2311, metadata !DIExpression()) #18, !dbg !2313
  call void @llvm.dbg.value(metadata i64 4, metadata !2312, metadata !DIExpression()) #18, !dbg !2313
  %6 = bitcast i8* %1 to i32*, !dbg !2315
  store i32 %5, i32* %6, align 1, !dbg !2315
  %7 = getelementptr inbounds i8, i8* %1, i64 4, !dbg !2316
  %8 = getelementptr inbounds %struct.sha1_ctx, %struct.sha1_ctx* %0, i64 0, i32 1, !dbg !2317
  %9 = load i32, i32* %8, align 4, !dbg !2317, !tbaa !2318
  call void @llvm.dbg.value(metadata i32 %9, metadata !2286, metadata !DIExpression()) #18, !dbg !2319
  %10 = call i32 @llvm.bswap.i32(i32 %9) #18, !dbg !2321
  call void @llvm.dbg.value(metadata i8* %7, metadata !2295, metadata !DIExpression()) #18, !dbg !2322
  call void @llvm.dbg.value(metadata i32 %10, metadata !2300, metadata !DIExpression()) #18, !dbg !2322
  call void @llvm.dbg.value(metadata i32* undef, metadata !2300, metadata !DIExpression(DW_OP_deref)) #18, !dbg !2322
  call void @llvm.dbg.value(metadata i8* %7, metadata !2303, metadata !DIExpression()) #18, !dbg !2324
  call void @llvm.dbg.value(metadata i8* undef, metadata !2311, metadata !DIExpression()) #18, !dbg !2324
  call void @llvm.dbg.value(metadata i64 4, metadata !2312, metadata !DIExpression()) #18, !dbg !2324
  %11 = bitcast i8* %7 to i32*, !dbg !2326
  store i32 %10, i32* %11, align 1, !dbg !2326
  %12 = getelementptr inbounds i8, i8* %1, i64 8, !dbg !2327
  %13 = getelementptr inbounds %struct.sha1_ctx, %struct.sha1_ctx* %0, i64 0, i32 2, !dbg !2328
  %14 = load i32, i32* %13, align 4, !dbg !2328, !tbaa !2329
  call void @llvm.dbg.value(metadata i32 %14, metadata !2286, metadata !DIExpression()) #18, !dbg !2330
  %15 = call i32 @llvm.bswap.i32(i32 %14) #18, !dbg !2332
  call void @llvm.dbg.value(metadata i8* %12, metadata !2295, metadata !DIExpression()) #18, !dbg !2333
  call void @llvm.dbg.value(metadata i32 %15, metadata !2300, metadata !DIExpression()) #18, !dbg !2333
  call void @llvm.dbg.value(metadata i32* undef, metadata !2300, metadata !DIExpression(DW_OP_deref)) #18, !dbg !2333
  call void @llvm.dbg.value(metadata i8* %12, metadata !2303, metadata !DIExpression()) #18, !dbg !2335
  call void @llvm.dbg.value(metadata i8* undef, metadata !2311, metadata !DIExpression()) #18, !dbg !2335
  call void @llvm.dbg.value(metadata i64 4, metadata !2312, metadata !DIExpression()) #18, !dbg !2335
  %16 = bitcast i8* %12 to i32*, !dbg !2337
  store i32 %15, i32* %16, align 1, !dbg !2337
  %17 = getelementptr inbounds i8, i8* %1, i64 12, !dbg !2338
  %18 = getelementptr inbounds %struct.sha1_ctx, %struct.sha1_ctx* %0, i64 0, i32 3, !dbg !2339
  %19 = load i32, i32* %18, align 4, !dbg !2339, !tbaa !2340
  call void @llvm.dbg.value(metadata i32 %19, metadata !2286, metadata !DIExpression()) #18, !dbg !2341
  %20 = call i32 @llvm.bswap.i32(i32 %19) #18, !dbg !2343
  call void @llvm.dbg.value(metadata i8* %17, metadata !2295, metadata !DIExpression()) #18, !dbg !2344
  call void @llvm.dbg.value(metadata i32 %20, metadata !2300, metadata !DIExpression()) #18, !dbg !2344
  call void @llvm.dbg.value(metadata i32* undef, metadata !2300, metadata !DIExpression(DW_OP_deref)) #18, !dbg !2344
  call void @llvm.dbg.value(metadata i8* %17, metadata !2303, metadata !DIExpression()) #18, !dbg !2346
  call void @llvm.dbg.value(metadata i8* undef, metadata !2311, metadata !DIExpression()) #18, !dbg !2346
  call void @llvm.dbg.value(metadata i64 4, metadata !2312, metadata !DIExpression()) #18, !dbg !2346
  %21 = bitcast i8* %17 to i32*, !dbg !2348
  store i32 %20, i32* %21, align 1, !dbg !2348
  %22 = getelementptr inbounds i8, i8* %1, i64 16, !dbg !2349
  %23 = getelementptr inbounds %struct.sha1_ctx, %struct.sha1_ctx* %0, i64 0, i32 4, !dbg !2350
  %24 = load i32, i32* %23, align 4, !dbg !2350, !tbaa !2351
  call void @llvm.dbg.value(metadata i32 %24, metadata !2286, metadata !DIExpression()) #18, !dbg !2352
  %25 = call i32 @llvm.bswap.i32(i32 %24) #18, !dbg !2354
  call void @llvm.dbg.value(metadata i8* %22, metadata !2295, metadata !DIExpression()) #18, !dbg !2355
  call void @llvm.dbg.value(metadata i32 %25, metadata !2300, metadata !DIExpression()) #18, !dbg !2355
  call void @llvm.dbg.value(metadata i32* undef, metadata !2300, metadata !DIExpression(DW_OP_deref)) #18, !dbg !2355
  call void @llvm.dbg.value(metadata i8* %22, metadata !2303, metadata !DIExpression()) #18, !dbg !2357
  call void @llvm.dbg.value(metadata i8* undef, metadata !2311, metadata !DIExpression()) #18, !dbg !2357
  call void @llvm.dbg.value(metadata i64 4, metadata !2312, metadata !DIExpression()) #18, !dbg !2357
  %26 = bitcast i8* %22 to i32*, !dbg !2359
  store i32 %25, i32* %26, align 1, !dbg !2359
  ret i8* %1, !dbg !2360
}

; Function Attrs: nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #1

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @sha1_finish_ctx(%struct.sha1_ctx* %0, i8* returned %1) local_unnamed_addr #8 !dbg !2361 {
  call void @llvm.dbg.value(metadata %struct.sha1_ctx* %0, metadata !2365, metadata !DIExpression()), !dbg !2369
  call void @llvm.dbg.value(metadata i8* %1, metadata !2366, metadata !DIExpression()), !dbg !2369
  %3 = getelementptr inbounds %struct.sha1_ctx, %struct.sha1_ctx* %0, i64 0, i32 6, !dbg !2370
  %4 = load i32, i32* %3, align 4, !dbg !2370, !tbaa !2371
  call void @llvm.dbg.value(metadata i32 %4, metadata !2367, metadata !DIExpression()), !dbg !2369
  %5 = icmp ult i32 %4, 56, !dbg !2372
  %6 = select i1 %5, i64 16, i64 32, !dbg !2373
  call void @llvm.dbg.value(metadata i64 %6, metadata !2368, metadata !DIExpression()), !dbg !2369
  %7 = getelementptr inbounds %struct.sha1_ctx, %struct.sha1_ctx* %0, i64 0, i32 5, i64 0, !dbg !2374
  %8 = load i32, i32* %7, align 4, !dbg !2375, !tbaa !1559
  %9 = add i32 %8, %4, !dbg !2375
  store i32 %9, i32* %7, align 4, !dbg !2375, !tbaa !1559
  %10 = icmp ult i32 %9, %4, !dbg !2376
  %11 = getelementptr inbounds %struct.sha1_ctx, %struct.sha1_ctx* %0, i64 0, i32 5, i64 1, !dbg !2369
  %12 = load i32, i32* %11, align 4, !dbg !2369, !tbaa !1559
  br i1 %10, label %13, label %15, !dbg !2378

13:                                               ; preds = %2
  %14 = add i32 %12, 1, !dbg !2379
  store i32 %14, i32* %11, align 4, !dbg !2379, !tbaa !1559
  br label %15, !dbg !2379

15:                                               ; preds = %2, %13
  %16 = phi i32 [ %14, %13 ], [ %12, %2 ], !dbg !2380
  %17 = shl i32 %16, 3, !dbg !2380
  %18 = lshr i32 %9, 29, !dbg !2380
  %19 = or i32 %17, %18, !dbg !2380
  call void @llvm.dbg.value(metadata i32 %19, metadata !2286, metadata !DIExpression()) #18, !dbg !2381
  %20 = tail call i32 @llvm.bswap.i32(i32 %19) #18, !dbg !2383
  %21 = add nsw i64 %6, -2, !dbg !2384
  %22 = getelementptr inbounds %struct.sha1_ctx, %struct.sha1_ctx* %0, i64 0, i32 7, i64 %21, !dbg !2385
  store i32 %20, i32* %22, align 4, !dbg !2386, !tbaa !1559
  %23 = shl i32 %9, 3, !dbg !2387
  call void @llvm.dbg.value(metadata i32 %23, metadata !2286, metadata !DIExpression()) #18, !dbg !2388
  %24 = tail call i32 @llvm.bswap.i32(i32 %23) #18, !dbg !2390
  %25 = add nsw i64 %6, -1, !dbg !2391
  %26 = getelementptr inbounds %struct.sha1_ctx, %struct.sha1_ctx* %0, i64 0, i32 7, i64 %25, !dbg !2392
  store i32 %24, i32* %26, align 4, !dbg !2393, !tbaa !1559
  %27 = getelementptr inbounds %struct.sha1_ctx, %struct.sha1_ctx* %0, i64 0, i32 7, i64 0, !dbg !2394
  %28 = bitcast i32* %27 to i8*, !dbg !2394
  %29 = zext i32 %4 to i64, !dbg !2394
  %30 = getelementptr inbounds i8, i8* %28, i64 %29, !dbg !2394
  %31 = shl nuw nsw i64 %21, 2, !dbg !2395
  %32 = sub nsw i64 %31, %29, !dbg !2396
  call void @llvm.dbg.value(metadata i8* %30, metadata !2303, metadata !DIExpression()) #18, !dbg !2397
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds (<{ i8, [63 x i8] }>, <{ i8, [63 x i8] }>* @fillbuf, i64 0, i32 0), metadata !2311, metadata !DIExpression()) #18, !dbg !2397
  call void @llvm.dbg.value(metadata i64 %32, metadata !2312, metadata !DIExpression()) #18, !dbg !2397
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %30, i8* nonnull align 16 getelementptr inbounds (<{ i8, [63 x i8] }>, <{ i8, [63 x i8] }>* @fillbuf, i64 0, i32 0), i64 %32, i1 false) #18, !dbg !2399
  %33 = shl nuw nsw i64 %6, 2, !dbg !2400
  tail call void @sha1_process_block(i8* nonnull %28, i64 %33, %struct.sha1_ctx* nonnull %0), !dbg !2401
  call void @llvm.dbg.value(metadata %struct.sha1_ctx* %0, metadata !2279, metadata !DIExpression()) #18, !dbg !2402
  call void @llvm.dbg.value(metadata i8* %1, metadata !2280, metadata !DIExpression()) #18, !dbg !2402
  call void @llvm.dbg.value(metadata i8* %1, metadata !2281, metadata !DIExpression()) #18, !dbg !2402
  %34 = getelementptr inbounds %struct.sha1_ctx, %struct.sha1_ctx* %0, i64 0, i32 0, !dbg !2404
  %35 = load i32, i32* %34, align 4, !dbg !2404, !tbaa !2284
  call void @llvm.dbg.value(metadata i32 %35, metadata !2286, metadata !DIExpression()) #18, !dbg !2405
  %36 = tail call i32 @llvm.bswap.i32(i32 %35) #18, !dbg !2407
  call void @llvm.dbg.value(metadata i8* %1, metadata !2295, metadata !DIExpression()) #18, !dbg !2408
  call void @llvm.dbg.value(metadata i32 %36, metadata !2300, metadata !DIExpression()) #18, !dbg !2408
  call void @llvm.dbg.value(metadata i32* undef, metadata !2300, metadata !DIExpression(DW_OP_deref)) #18, !dbg !2408
  call void @llvm.dbg.value(metadata i8* %1, metadata !2303, metadata !DIExpression()) #18, !dbg !2410
  call void @llvm.dbg.value(metadata i8* undef, metadata !2311, metadata !DIExpression()) #18, !dbg !2410
  call void @llvm.dbg.value(metadata i64 4, metadata !2312, metadata !DIExpression()) #18, !dbg !2410
  %37 = bitcast i8* %1 to i32*, !dbg !2412
  store i32 %36, i32* %37, align 1, !dbg !2412
  %38 = getelementptr inbounds i8, i8* %1, i64 4, !dbg !2413
  %39 = getelementptr inbounds %struct.sha1_ctx, %struct.sha1_ctx* %0, i64 0, i32 1, !dbg !2414
  %40 = load i32, i32* %39, align 4, !dbg !2414, !tbaa !2318
  call void @llvm.dbg.value(metadata i32 %40, metadata !2286, metadata !DIExpression()) #18, !dbg !2415
  %41 = call i32 @llvm.bswap.i32(i32 %40) #18, !dbg !2417
  call void @llvm.dbg.value(metadata i8* %38, metadata !2295, metadata !DIExpression()) #18, !dbg !2418
  call void @llvm.dbg.value(metadata i32 %41, metadata !2300, metadata !DIExpression()) #18, !dbg !2418
  call void @llvm.dbg.value(metadata i32* undef, metadata !2300, metadata !DIExpression(DW_OP_deref)) #18, !dbg !2418
  call void @llvm.dbg.value(metadata i8* %38, metadata !2303, metadata !DIExpression()) #18, !dbg !2420
  call void @llvm.dbg.value(metadata i8* undef, metadata !2311, metadata !DIExpression()) #18, !dbg !2420
  call void @llvm.dbg.value(metadata i64 4, metadata !2312, metadata !DIExpression()) #18, !dbg !2420
  %42 = bitcast i8* %38 to i32*, !dbg !2422
  store i32 %41, i32* %42, align 1, !dbg !2422
  %43 = getelementptr inbounds i8, i8* %1, i64 8, !dbg !2423
  %44 = getelementptr inbounds %struct.sha1_ctx, %struct.sha1_ctx* %0, i64 0, i32 2, !dbg !2424
  %45 = load i32, i32* %44, align 4, !dbg !2424, !tbaa !2329
  call void @llvm.dbg.value(metadata i32 %45, metadata !2286, metadata !DIExpression()) #18, !dbg !2425
  %46 = call i32 @llvm.bswap.i32(i32 %45) #18, !dbg !2427
  call void @llvm.dbg.value(metadata i8* %43, metadata !2295, metadata !DIExpression()) #18, !dbg !2428
  call void @llvm.dbg.value(metadata i32 %46, metadata !2300, metadata !DIExpression()) #18, !dbg !2428
  call void @llvm.dbg.value(metadata i32* undef, metadata !2300, metadata !DIExpression(DW_OP_deref)) #18, !dbg !2428
  call void @llvm.dbg.value(metadata i8* %43, metadata !2303, metadata !DIExpression()) #18, !dbg !2430
  call void @llvm.dbg.value(metadata i8* undef, metadata !2311, metadata !DIExpression()) #18, !dbg !2430
  call void @llvm.dbg.value(metadata i64 4, metadata !2312, metadata !DIExpression()) #18, !dbg !2430
  %47 = bitcast i8* %43 to i32*, !dbg !2432
  store i32 %46, i32* %47, align 1, !dbg !2432
  %48 = getelementptr inbounds i8, i8* %1, i64 12, !dbg !2433
  %49 = getelementptr inbounds %struct.sha1_ctx, %struct.sha1_ctx* %0, i64 0, i32 3, !dbg !2434
  %50 = load i32, i32* %49, align 4, !dbg !2434, !tbaa !2340
  call void @llvm.dbg.value(metadata i32 %50, metadata !2286, metadata !DIExpression()) #18, !dbg !2435
  %51 = call i32 @llvm.bswap.i32(i32 %50) #18, !dbg !2437
  call void @llvm.dbg.value(metadata i8* %48, metadata !2295, metadata !DIExpression()) #18, !dbg !2438
  call void @llvm.dbg.value(metadata i32 %51, metadata !2300, metadata !DIExpression()) #18, !dbg !2438
  call void @llvm.dbg.value(metadata i32* undef, metadata !2300, metadata !DIExpression(DW_OP_deref)) #18, !dbg !2438
  call void @llvm.dbg.value(metadata i8* %48, metadata !2303, metadata !DIExpression()) #18, !dbg !2440
  call void @llvm.dbg.value(metadata i8* undef, metadata !2311, metadata !DIExpression()) #18, !dbg !2440
  call void @llvm.dbg.value(metadata i64 4, metadata !2312, metadata !DIExpression()) #18, !dbg !2440
  %52 = bitcast i8* %48 to i32*, !dbg !2442
  store i32 %51, i32* %52, align 1, !dbg !2442
  %53 = getelementptr inbounds i8, i8* %1, i64 16, !dbg !2443
  %54 = getelementptr inbounds %struct.sha1_ctx, %struct.sha1_ctx* %0, i64 0, i32 4, !dbg !2444
  %55 = load i32, i32* %54, align 4, !dbg !2444, !tbaa !2351
  call void @llvm.dbg.value(metadata i32 %55, metadata !2286, metadata !DIExpression()) #18, !dbg !2445
  %56 = call i32 @llvm.bswap.i32(i32 %55) #18, !dbg !2447
  call void @llvm.dbg.value(metadata i8* %53, metadata !2295, metadata !DIExpression()) #18, !dbg !2448
  call void @llvm.dbg.value(metadata i32 %56, metadata !2300, metadata !DIExpression()) #18, !dbg !2448
  call void @llvm.dbg.value(metadata i32* undef, metadata !2300, metadata !DIExpression(DW_OP_deref)) #18, !dbg !2448
  call void @llvm.dbg.value(metadata i8* %53, metadata !2303, metadata !DIExpression()) #18, !dbg !2450
  call void @llvm.dbg.value(metadata i8* undef, metadata !2311, metadata !DIExpression()) #18, !dbg !2450
  call void @llvm.dbg.value(metadata i64 4, metadata !2312, metadata !DIExpression()) #18, !dbg !2450
  %57 = bitcast i8* %53 to i32*, !dbg !2452
  store i32 %56, i32* %57, align 1, !dbg !2452
  ret i8* %1, !dbg !2453
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @sha1_process_block(i8* readonly %0, i64 %1, %struct.sha1_ctx* nocapture %2) local_unnamed_addr #8 !dbg !2454 {
  %4 = alloca [16 x i32], align 16
  call void @llvm.dbg.value(metadata i8* %0, metadata !2458, metadata !DIExpression()), !dbg !2477
  call void @llvm.dbg.value(metadata i64 %1, metadata !2459, metadata !DIExpression()), !dbg !2477
  call void @llvm.dbg.value(metadata %struct.sha1_ctx* %2, metadata !2460, metadata !DIExpression()), !dbg !2477
  %5 = bitcast i8* %0 to i32*, !dbg !2478
  call void @llvm.dbg.value(metadata i32* %5, metadata !2461, metadata !DIExpression()), !dbg !2477
  %6 = lshr i64 %1, 2, !dbg !2479
  call void @llvm.dbg.value(metadata i64 %6, metadata !2464, metadata !DIExpression()), !dbg !2477
  %7 = getelementptr inbounds i32, i32* %5, i64 %6, !dbg !2480
  call void @llvm.dbg.value(metadata i32* %7, metadata !2465, metadata !DIExpression()), !dbg !2477
  %8 = bitcast [16 x i32]* %4 to i8*, !dbg !2481
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %8) #18, !dbg !2481
  call void @llvm.dbg.declare(metadata [16 x i32]* %4, metadata !2466, metadata !DIExpression()), !dbg !2482
  %9 = getelementptr inbounds %struct.sha1_ctx, %struct.sha1_ctx* %2, i64 0, i32 0, !dbg !2483
  %10 = load i32, i32* %9, align 4, !dbg !2483, !tbaa !2284
  call void @llvm.dbg.value(metadata i32 %10, metadata !2468, metadata !DIExpression()), !dbg !2477
  %11 = getelementptr inbounds %struct.sha1_ctx, %struct.sha1_ctx* %2, i64 0, i32 1, !dbg !2484
  %12 = bitcast i32* %11 to <4 x i32>*, !dbg !2484
  %13 = load <4 x i32>, <4 x i32>* %12, align 4, !dbg !2484, !tbaa !1559
  %14 = trunc i64 %1 to i32, !dbg !2485
  call void @llvm.dbg.value(metadata i32 %14, metadata !2473, metadata !DIExpression()), !dbg !2477
  %15 = getelementptr inbounds %struct.sha1_ctx, %struct.sha1_ctx* %2, i64 0, i32 5, i64 0, !dbg !2486
  %16 = load i32, i32* %15, align 4, !dbg !2487, !tbaa !1559
  %17 = add i32 %16, %14, !dbg !2487
  store i32 %17, i32* %15, align 4, !dbg !2487, !tbaa !1559
  %18 = lshr i64 %1, 32, !dbg !2488
  %19 = icmp ult i32 %17, %14, !dbg !2489
  %20 = zext i1 %19 to i64, !dbg !2490
  %21 = add nuw nsw i64 %18, %20, !dbg !2491
  %22 = getelementptr inbounds %struct.sha1_ctx, %struct.sha1_ctx* %2, i64 0, i32 5, i64 1, !dbg !2492
  %23 = load i32, i32* %22, align 4, !dbg !2493, !tbaa !1559
  %24 = trunc i64 %21 to i32, !dbg !2493
  %25 = add i32 %23, %24, !dbg !2493
  store i32 %25, i32* %22, align 4, !dbg !2493, !tbaa !1559
  call void @llvm.dbg.value(metadata i32* %5, metadata !2461, metadata !DIExpression()), !dbg !2477
  call void @llvm.dbg.value(metadata i32 %10, metadata !2468, metadata !DIExpression()), !dbg !2477
  %26 = icmp ugt i32* %7, %5, !dbg !2494
  br i1 %26, label %27, label %1511, !dbg !2495

27:                                               ; preds = %3
  %28 = shufflevector <4 x i32> %13, <4 x i32> undef, <4 x i32> <i32 3, i32 2, i32 1, i32 0>, !dbg !2484
  %29 = getelementptr inbounds [16 x i32], [16 x i32]* %4, i64 0, i64 0, !dbg !2496
  %30 = getelementptr inbounds [16 x i32], [16 x i32]* %4, i64 0, i64 1, !dbg !2498
  %31 = getelementptr inbounds [16 x i32], [16 x i32]* %4, i64 0, i64 2, !dbg !2500
  %32 = getelementptr inbounds [16 x i32], [16 x i32]* %4, i64 0, i64 3, !dbg !2502
  %33 = getelementptr inbounds [16 x i32], [16 x i32]* %4, i64 0, i64 4, !dbg !2504
  %34 = getelementptr inbounds [16 x i32], [16 x i32]* %4, i64 0, i64 5, !dbg !2506
  %35 = getelementptr inbounds [16 x i32], [16 x i32]* %4, i64 0, i64 6, !dbg !2508
  %36 = getelementptr inbounds [16 x i32], [16 x i32]* %4, i64 0, i64 7, !dbg !2510
  %37 = getelementptr inbounds [16 x i32], [16 x i32]* %4, i64 0, i64 8, !dbg !2512
  %38 = getelementptr inbounds [16 x i32], [16 x i32]* %4, i64 0, i64 9, !dbg !2514
  %39 = getelementptr inbounds [16 x i32], [16 x i32]* %4, i64 0, i64 10, !dbg !2516
  %40 = getelementptr inbounds [16 x i32], [16 x i32]* %4, i64 0, i64 11, !dbg !2518
  %41 = getelementptr inbounds [16 x i32], [16 x i32]* %4, i64 0, i64 12, !dbg !2520
  %42 = getelementptr inbounds [16 x i32], [16 x i32]* %4, i64 0, i64 13, !dbg !2522
  %43 = getelementptr inbounds [16 x i32], [16 x i32]* %4, i64 0, i64 14, !dbg !2524
  %44 = getelementptr inbounds [16 x i32], [16 x i32]* %4, i64 0, i64 15, !dbg !2526
  %45 = bitcast i32* %31 to <4 x i32>*, !dbg !2528
  %46 = bitcast i32* %35 to <4 x i32>*, !dbg !2528
  %47 = bitcast i32* %39 to <4 x i32>*, !dbg !2528
  %48 = bitcast i32* %11 to <4 x i32>*, !dbg !2532
  %49 = bitcast i32* %11 to <4 x i32>*, !dbg !2532
  br label %50, !dbg !2495

50:                                               ; preds = %27, %50
  %51 = phi i32* [ %5, %27 ], [ %77, %50 ]
  %52 = phi i32 [ %10, %27 ], [ %1501, %50 ]
  %53 = phi <4 x i32> [ %28, %27 ], [ %1509, %50 ]
  call void @llvm.dbg.value(metadata i32 %52, metadata !2468, metadata !DIExpression()), !dbg !2477
  call void @llvm.dbg.value(metadata i64 0, metadata !2476, metadata !DIExpression()), !dbg !2532
  call void @llvm.dbg.value(metadata i32* %51, metadata !2461, metadata !DIExpression()), !dbg !2477
  %54 = load i32, i32* %51, align 4, !dbg !2533, !tbaa !1559
  call void @llvm.dbg.value(metadata i32 %54, metadata !2286, metadata !DIExpression()) #18, !dbg !2534
  %55 = tail call i32 @llvm.bswap.i32(i32 %54) #18, !dbg !2536
  %56 = getelementptr inbounds i32, i32* %51, i64 1, !dbg !2537
  call void @llvm.dbg.value(metadata i32* %56, metadata !2461, metadata !DIExpression()), !dbg !2477
  call void @llvm.dbg.value(metadata i64 1, metadata !2476, metadata !DIExpression()), !dbg !2532
  %57 = load i32, i32* %56, align 4, !dbg !2533, !tbaa !1559
  call void @llvm.dbg.value(metadata i32 %57, metadata !2286, metadata !DIExpression()) #18, !dbg !2534
  %58 = tail call i32 @llvm.bswap.i32(i32 %57) #18, !dbg !2536
  %59 = getelementptr inbounds i32, i32* %51, i64 2, !dbg !2537
  call void @llvm.dbg.value(metadata i32* %59, metadata !2461, metadata !DIExpression()), !dbg !2477
  call void @llvm.dbg.value(metadata i64 2, metadata !2476, metadata !DIExpression()), !dbg !2532
  call void @llvm.dbg.value(metadata i32* %51, metadata !2461, metadata !DIExpression(DW_OP_plus_uconst, 12, DW_OP_stack_value)), !dbg !2477
  call void @llvm.dbg.value(metadata i64 3, metadata !2476, metadata !DIExpression()), !dbg !2532
  call void @llvm.dbg.value(metadata i32* %51, metadata !2461, metadata !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value)), !dbg !2477
  call void @llvm.dbg.value(metadata i64 4, metadata !2476, metadata !DIExpression()), !dbg !2532
  call void @llvm.dbg.value(metadata i32* %51, metadata !2461, metadata !DIExpression(DW_OP_plus_uconst, 20, DW_OP_stack_value)), !dbg !2477
  call void @llvm.dbg.value(metadata i64 5, metadata !2476, metadata !DIExpression()), !dbg !2532
  %60 = bitcast i32* %59 to <4 x i32>*, !dbg !2533
  %61 = load <4 x i32>, <4 x i32>* %60, align 4, !dbg !2533, !tbaa !1559
  %62 = call <4 x i32> @llvm.bswap.v4i32(<4 x i32> %61), !dbg !2536
  store <4 x i32> %62, <4 x i32>* %45, align 8, !dbg !2538, !tbaa !1559
  %63 = getelementptr inbounds i32, i32* %51, i64 6, !dbg !2537
  call void @llvm.dbg.value(metadata i32* %63, metadata !2461, metadata !DIExpression()), !dbg !2477
  call void @llvm.dbg.value(metadata i64 6, metadata !2476, metadata !DIExpression()), !dbg !2532
  call void @llvm.dbg.value(metadata i32* %51, metadata !2461, metadata !DIExpression(DW_OP_plus_uconst, 28, DW_OP_stack_value)), !dbg !2477
  call void @llvm.dbg.value(metadata i64 7, metadata !2476, metadata !DIExpression()), !dbg !2532
  call void @llvm.dbg.value(metadata i32* %51, metadata !2461, metadata !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value)), !dbg !2477
  call void @llvm.dbg.value(metadata i64 8, metadata !2476, metadata !DIExpression()), !dbg !2532
  call void @llvm.dbg.value(metadata i32* %51, metadata !2461, metadata !DIExpression(DW_OP_plus_uconst, 36, DW_OP_stack_value)), !dbg !2477
  call void @llvm.dbg.value(metadata i64 9, metadata !2476, metadata !DIExpression()), !dbg !2532
  %64 = bitcast i32* %63 to <4 x i32>*, !dbg !2533
  %65 = load <4 x i32>, <4 x i32>* %64, align 4, !dbg !2533, !tbaa !1559
  %66 = call <4 x i32> @llvm.bswap.v4i32(<4 x i32> %65), !dbg !2536
  store <4 x i32> %66, <4 x i32>* %46, align 8, !dbg !2538, !tbaa !1559
  %67 = getelementptr inbounds i32, i32* %51, i64 10, !dbg !2537
  call void @llvm.dbg.value(metadata i32* %67, metadata !2461, metadata !DIExpression()), !dbg !2477
  call void @llvm.dbg.value(metadata i64 10, metadata !2476, metadata !DIExpression()), !dbg !2532
  call void @llvm.dbg.value(metadata i32* %51, metadata !2461, metadata !DIExpression(DW_OP_plus_uconst, 44, DW_OP_stack_value)), !dbg !2477
  call void @llvm.dbg.value(metadata i64 11, metadata !2476, metadata !DIExpression()), !dbg !2532
  call void @llvm.dbg.value(metadata i32* %51, metadata !2461, metadata !DIExpression(DW_OP_plus_uconst, 48, DW_OP_stack_value)), !dbg !2477
  call void @llvm.dbg.value(metadata i64 12, metadata !2476, metadata !DIExpression()), !dbg !2532
  call void @llvm.dbg.value(metadata i32* %51, metadata !2461, metadata !DIExpression(DW_OP_plus_uconst, 52, DW_OP_stack_value)), !dbg !2477
  call void @llvm.dbg.value(metadata i64 13, metadata !2476, metadata !DIExpression()), !dbg !2532
  %68 = bitcast i32* %67 to <4 x i32>*, !dbg !2533
  %69 = load <4 x i32>, <4 x i32>* %68, align 4, !dbg !2533, !tbaa !1559
  %70 = call <4 x i32> @llvm.bswap.v4i32(<4 x i32> %69), !dbg !2536
  store <4 x i32> %70, <4 x i32>* %47, align 8, !dbg !2538, !tbaa !1559
  %71 = getelementptr inbounds i32, i32* %51, i64 14, !dbg !2537
  call void @llvm.dbg.value(metadata i32* %71, metadata !2461, metadata !DIExpression()), !dbg !2477
  call void @llvm.dbg.value(metadata i64 14, metadata !2476, metadata !DIExpression()), !dbg !2532
  %72 = load i32, i32* %71, align 4, !dbg !2533, !tbaa !1559
  call void @llvm.dbg.value(metadata i32 %72, metadata !2286, metadata !DIExpression()) #18, !dbg !2534
  %73 = tail call i32 @llvm.bswap.i32(i32 %72) #18, !dbg !2536
  store i32 %73, i32* %43, align 8, !dbg !2538, !tbaa !1559
  %74 = getelementptr inbounds i32, i32* %51, i64 15, !dbg !2537
  call void @llvm.dbg.value(metadata i32* %74, metadata !2461, metadata !DIExpression()), !dbg !2477
  call void @llvm.dbg.value(metadata i64 15, metadata !2476, metadata !DIExpression()), !dbg !2532
  %75 = load i32, i32* %74, align 4, !dbg !2533, !tbaa !1559
  call void @llvm.dbg.value(metadata i32 %75, metadata !2286, metadata !DIExpression()) #18, !dbg !2534
  %76 = tail call i32 @llvm.bswap.i32(i32 %75) #18, !dbg !2536
  store i32 %76, i32* %44, align 4, !dbg !2538, !tbaa !1559
  %77 = getelementptr inbounds i32, i32* %51, i64 16, !dbg !2537
  call void @llvm.dbg.value(metadata i32* %77, metadata !2461, metadata !DIExpression()), !dbg !2477
  call void @llvm.dbg.value(metadata i64 16, metadata !2476, metadata !DIExpression()), !dbg !2532
  %78 = shl i32 %52, 5, !dbg !2539
  %79 = lshr i32 %52, 27, !dbg !2539
  %80 = or i32 %78, %79, !dbg !2539
  %81 = extractelement <4 x i32> %53, i32 1, !dbg !2539
  %82 = extractelement <4 x i32> %53, i32 2, !dbg !2539
  %83 = xor i32 %81, %82, !dbg !2539
  %84 = extractelement <4 x i32> %53, i32 3, !dbg !2539
  %85 = and i32 %83, %84, !dbg !2539
  %86 = xor i32 %85, %81, !dbg !2539
  %87 = extractelement <4 x i32> %53, i32 0, !dbg !2539
  %88 = add i32 %87, 1518500249, !dbg !2539
  %89 = add i32 %88, %86, !dbg !2539
  %90 = add i32 %89, %80, !dbg !2539
  %91 = add i32 %90, %55, !dbg !2539
  call void @llvm.dbg.value(metadata i32 %91, metadata !2472, metadata !DIExpression()), !dbg !2477
  %92 = shl i32 %84, 30, !dbg !2539
  %93 = lshr i32 %84, 2, !dbg !2539
  %94 = or i32 %92, %93, !dbg !2539
  call void @llvm.dbg.value(metadata i32 %94, metadata !2469, metadata !DIExpression()), !dbg !2477
  %95 = shl i32 %91, 5, !dbg !2540
  %96 = lshr i32 %91, 27, !dbg !2540
  %97 = or i32 %95, %96, !dbg !2540
  %98 = xor i32 %94, %82, !dbg !2540
  %99 = and i32 %52, %98, !dbg !2540
  %100 = xor i32 %99, %82, !dbg !2540
  %101 = add i32 %81, 1518500249, !dbg !2540
  %102 = add i32 %101, %100, !dbg !2540
  %103 = add i32 %102, %58, !dbg !2540
  %104 = add i32 %103, %97, !dbg !2540
  call void @llvm.dbg.value(metadata i32 %104, metadata !2471, metadata !DIExpression()), !dbg !2477
  %105 = shl i32 %52, 30, !dbg !2540
  %106 = lshr i32 %52, 2, !dbg !2540
  %107 = or i32 %105, %106, !dbg !2540
  call void @llvm.dbg.value(metadata i32 %107, metadata !2468, metadata !DIExpression()), !dbg !2477
  %108 = shl i32 %104, 5, !dbg !2541
  %109 = lshr i32 %104, 27, !dbg !2541
  %110 = or i32 %108, %109, !dbg !2541
  %111 = xor i32 %107, %94, !dbg !2541
  %112 = and i32 %91, %111, !dbg !2541
  %113 = xor i32 %112, %94, !dbg !2541
  %114 = add i32 %82, 1518500249, !dbg !2541
  %115 = extractelement <4 x i32> %62, i32 0, !dbg !2541
  %116 = add i32 %114, %115, !dbg !2541
  %117 = add i32 %116, %113, !dbg !2541
  %118 = add i32 %117, %110, !dbg !2541
  call void @llvm.dbg.value(metadata i32 %118, metadata !2470, metadata !DIExpression()), !dbg !2477
  %119 = shl i32 %91, 30, !dbg !2541
  %120 = lshr i32 %91, 2, !dbg !2541
  %121 = or i32 %119, %120, !dbg !2541
  call void @llvm.dbg.value(metadata i32 %121, metadata !2472, metadata !DIExpression()), !dbg !2477
  %122 = shl i32 %118, 5, !dbg !2542
  %123 = lshr i32 %118, 27, !dbg !2542
  %124 = or i32 %122, %123, !dbg !2542
  %125 = xor i32 %121, %107, !dbg !2542
  %126 = and i32 %104, %125, !dbg !2542
  %127 = xor i32 %126, %107, !dbg !2542
  %128 = add i32 %94, 1518500249, !dbg !2542
  %129 = extractelement <4 x i32> %62, i32 1, !dbg !2542
  %130 = add i32 %128, %129, !dbg !2542
  %131 = add i32 %130, %127, !dbg !2542
  %132 = add i32 %131, %124, !dbg !2542
  call void @llvm.dbg.value(metadata i32 %132, metadata !2469, metadata !DIExpression()), !dbg !2477
  %133 = shl i32 %104, 30, !dbg !2542
  %134 = lshr i32 %104, 2, !dbg !2542
  %135 = or i32 %133, %134, !dbg !2542
  call void @llvm.dbg.value(metadata i32 %135, metadata !2471, metadata !DIExpression()), !dbg !2477
  %136 = shl i32 %132, 5, !dbg !2543
  %137 = lshr i32 %132, 27, !dbg !2543
  %138 = or i32 %136, %137, !dbg !2543
  %139 = xor i32 %135, %121, !dbg !2543
  %140 = and i32 %118, %139, !dbg !2543
  %141 = xor i32 %140, %121, !dbg !2543
  %142 = load i32, i32* %33, align 16, !dbg !2543, !tbaa !1559
  %143 = add i32 %107, 1518500249, !dbg !2543
  %144 = add i32 %143, %142, !dbg !2543
  %145 = add i32 %144, %141, !dbg !2543
  %146 = add i32 %145, %138, !dbg !2543
  call void @llvm.dbg.value(metadata i32 %146, metadata !2468, metadata !DIExpression()), !dbg !2477
  %147 = shl i32 %118, 30, !dbg !2543
  %148 = lshr i32 %118, 2, !dbg !2543
  %149 = or i32 %147, %148, !dbg !2543
  call void @llvm.dbg.value(metadata i32 %149, metadata !2470, metadata !DIExpression()), !dbg !2477
  %150 = shl i32 %146, 5, !dbg !2544
  %151 = lshr i32 %146, 27, !dbg !2544
  %152 = or i32 %150, %151, !dbg !2544
  %153 = xor i32 %149, %135, !dbg !2544
  %154 = and i32 %132, %153, !dbg !2544
  %155 = xor i32 %154, %135, !dbg !2544
  %156 = load i32, i32* %34, align 4, !dbg !2544, !tbaa !1559
  %157 = add i32 %121, 1518500249, !dbg !2544
  %158 = add i32 %157, %156, !dbg !2544
  %159 = add i32 %158, %155, !dbg !2544
  %160 = add i32 %159, %152, !dbg !2544
  call void @llvm.dbg.value(metadata i32 %160, metadata !2472, metadata !DIExpression()), !dbg !2477
  %161 = shl i32 %132, 30, !dbg !2544
  %162 = lshr i32 %132, 2, !dbg !2544
  %163 = or i32 %161, %162, !dbg !2544
  call void @llvm.dbg.value(metadata i32 %163, metadata !2469, metadata !DIExpression()), !dbg !2477
  %164 = shl i32 %160, 5, !dbg !2545
  %165 = lshr i32 %160, 27, !dbg !2545
  %166 = or i32 %164, %165, !dbg !2545
  %167 = xor i32 %163, %149, !dbg !2545
  %168 = and i32 %146, %167, !dbg !2545
  %169 = xor i32 %168, %149, !dbg !2545
  %170 = load i32, i32* %35, align 8, !dbg !2545, !tbaa !1559
  %171 = add i32 %170, 1518500249, !dbg !2545
  %172 = add i32 %171, %135, !dbg !2545
  %173 = add i32 %172, %169, !dbg !2545
  %174 = add i32 %173, %166, !dbg !2545
  call void @llvm.dbg.value(metadata i32 %174, metadata !2471, metadata !DIExpression()), !dbg !2477
  %175 = shl i32 %146, 30, !dbg !2545
  %176 = lshr i32 %146, 2, !dbg !2545
  %177 = or i32 %175, %176, !dbg !2545
  call void @llvm.dbg.value(metadata i32 %177, metadata !2468, metadata !DIExpression()), !dbg !2477
  %178 = shl i32 %174, 5, !dbg !2546
  %179 = lshr i32 %174, 27, !dbg !2546
  %180 = or i32 %178, %179, !dbg !2546
  %181 = xor i32 %177, %163, !dbg !2546
  %182 = and i32 %160, %181, !dbg !2546
  %183 = xor i32 %182, %163, !dbg !2546
  %184 = load i32, i32* %36, align 4, !dbg !2546, !tbaa !1559
  %185 = add i32 %184, 1518500249, !dbg !2546
  %186 = add i32 %185, %149, !dbg !2546
  %187 = add i32 %186, %183, !dbg !2546
  %188 = add i32 %187, %180, !dbg !2546
  call void @llvm.dbg.value(metadata i32 %188, metadata !2470, metadata !DIExpression()), !dbg !2477
  %189 = shl i32 %160, 30, !dbg !2546
  %190 = lshr i32 %160, 2, !dbg !2546
  %191 = or i32 %189, %190, !dbg !2546
  call void @llvm.dbg.value(metadata i32 %191, metadata !2472, metadata !DIExpression()), !dbg !2477
  %192 = shl i32 %188, 5, !dbg !2547
  %193 = lshr i32 %188, 27, !dbg !2547
  %194 = or i32 %192, %193, !dbg !2547
  %195 = xor i32 %191, %177, !dbg !2547
  %196 = and i32 %174, %195, !dbg !2547
  %197 = xor i32 %196, %177, !dbg !2547
  %198 = load i32, i32* %37, align 16, !dbg !2547, !tbaa !1559
  %199 = add i32 %198, 1518500249, !dbg !2547
  %200 = add i32 %199, %163, !dbg !2547
  %201 = add i32 %200, %197, !dbg !2547
  %202 = add i32 %201, %194, !dbg !2547
  call void @llvm.dbg.value(metadata i32 %202, metadata !2469, metadata !DIExpression()), !dbg !2477
  %203 = shl i32 %174, 30, !dbg !2547
  %204 = lshr i32 %174, 2, !dbg !2547
  %205 = or i32 %203, %204, !dbg !2547
  call void @llvm.dbg.value(metadata i32 %205, metadata !2471, metadata !DIExpression()), !dbg !2477
  %206 = shl i32 %202, 5, !dbg !2548
  %207 = lshr i32 %202, 27, !dbg !2548
  %208 = or i32 %206, %207, !dbg !2548
  %209 = xor i32 %205, %191, !dbg !2548
  %210 = and i32 %188, %209, !dbg !2548
  %211 = xor i32 %210, %191, !dbg !2548
  %212 = load i32, i32* %38, align 4, !dbg !2548, !tbaa !1559
  %213 = add i32 %212, 1518500249, !dbg !2548
  %214 = add i32 %213, %177, !dbg !2548
  %215 = add i32 %214, %211, !dbg !2548
  %216 = add i32 %215, %208, !dbg !2548
  call void @llvm.dbg.value(metadata i32 %216, metadata !2468, metadata !DIExpression()), !dbg !2477
  %217 = shl i32 %188, 30, !dbg !2548
  %218 = lshr i32 %188, 2, !dbg !2548
  %219 = or i32 %217, %218, !dbg !2548
  call void @llvm.dbg.value(metadata i32 %219, metadata !2470, metadata !DIExpression()), !dbg !2477
  %220 = shl i32 %216, 5, !dbg !2549
  %221 = lshr i32 %216, 27, !dbg !2549
  %222 = or i32 %220, %221, !dbg !2549
  %223 = xor i32 %219, %205, !dbg !2549
  %224 = and i32 %202, %223, !dbg !2549
  %225 = xor i32 %224, %205, !dbg !2549
  %226 = load i32, i32* %39, align 8, !dbg !2549, !tbaa !1559
  %227 = add i32 %226, 1518500249, !dbg !2549
  %228 = add i32 %227, %191, !dbg !2549
  %229 = add i32 %228, %225, !dbg !2549
  %230 = add i32 %229, %222, !dbg !2549
  call void @llvm.dbg.value(metadata i32 %230, metadata !2472, metadata !DIExpression()), !dbg !2477
  %231 = shl i32 %202, 30, !dbg !2549
  %232 = lshr i32 %202, 2, !dbg !2549
  %233 = or i32 %231, %232, !dbg !2549
  call void @llvm.dbg.value(metadata i32 %233, metadata !2469, metadata !DIExpression()), !dbg !2477
  %234 = shl i32 %230, 5, !dbg !2550
  %235 = lshr i32 %230, 27, !dbg !2550
  %236 = or i32 %234, %235, !dbg !2550
  %237 = xor i32 %233, %219, !dbg !2550
  %238 = and i32 %216, %237, !dbg !2550
  %239 = xor i32 %238, %219, !dbg !2550
  %240 = load i32, i32* %40, align 4, !dbg !2550, !tbaa !1559
  %241 = add i32 %240, 1518500249, !dbg !2550
  %242 = add i32 %241, %205, !dbg !2550
  %243 = add i32 %242, %239, !dbg !2550
  %244 = add i32 %243, %236, !dbg !2550
  call void @llvm.dbg.value(metadata i32 %244, metadata !2471, metadata !DIExpression()), !dbg !2477
  %245 = shl i32 %216, 30, !dbg !2550
  %246 = lshr i32 %216, 2, !dbg !2550
  %247 = or i32 %245, %246, !dbg !2550
  call void @llvm.dbg.value(metadata i32 %247, metadata !2468, metadata !DIExpression()), !dbg !2477
  %248 = shl i32 %244, 5, !dbg !2551
  %249 = lshr i32 %244, 27, !dbg !2551
  %250 = or i32 %248, %249, !dbg !2551
  %251 = xor i32 %247, %233, !dbg !2551
  %252 = and i32 %230, %251, !dbg !2551
  %253 = xor i32 %252, %233, !dbg !2551
  %254 = load i32, i32* %41, align 16, !dbg !2551, !tbaa !1559
  %255 = add i32 %254, 1518500249, !dbg !2551
  %256 = add i32 %255, %219, !dbg !2551
  %257 = add i32 %256, %253, !dbg !2551
  %258 = add i32 %257, %250, !dbg !2551
  call void @llvm.dbg.value(metadata i32 %258, metadata !2470, metadata !DIExpression()), !dbg !2477
  %259 = shl i32 %230, 30, !dbg !2551
  %260 = lshr i32 %230, 2, !dbg !2551
  %261 = or i32 %259, %260, !dbg !2551
  call void @llvm.dbg.value(metadata i32 %261, metadata !2472, metadata !DIExpression()), !dbg !2477
  %262 = shl i32 %258, 5, !dbg !2552
  %263 = lshr i32 %258, 27, !dbg !2552
  %264 = or i32 %262, %263, !dbg !2552
  %265 = xor i32 %261, %247, !dbg !2552
  %266 = and i32 %244, %265, !dbg !2552
  %267 = xor i32 %266, %247, !dbg !2552
  %268 = load i32, i32* %42, align 4, !dbg !2552, !tbaa !1559
  %269 = add i32 %268, 1518500249, !dbg !2552
  %270 = add i32 %269, %233, !dbg !2552
  %271 = add i32 %270, %267, !dbg !2552
  %272 = add i32 %271, %264, !dbg !2552
  call void @llvm.dbg.value(metadata i32 %272, metadata !2469, metadata !DIExpression()), !dbg !2477
  %273 = shl i32 %244, 30, !dbg !2552
  %274 = lshr i32 %244, 2, !dbg !2552
  %275 = or i32 %273, %274, !dbg !2552
  call void @llvm.dbg.value(metadata i32 %275, metadata !2471, metadata !DIExpression()), !dbg !2477
  %276 = shl i32 %272, 5, !dbg !2553
  %277 = lshr i32 %272, 27, !dbg !2553
  %278 = or i32 %276, %277, !dbg !2553
  %279 = xor i32 %275, %261, !dbg !2553
  %280 = and i32 %258, %279, !dbg !2553
  %281 = xor i32 %280, %261, !dbg !2553
  %282 = load i32, i32* %43, align 8, !dbg !2553, !tbaa !1559
  %283 = add i32 %282, 1518500249, !dbg !2553
  %284 = add i32 %283, %247, !dbg !2553
  %285 = add i32 %284, %281, !dbg !2553
  %286 = add i32 %285, %278, !dbg !2553
  call void @llvm.dbg.value(metadata i32 %286, metadata !2468, metadata !DIExpression()), !dbg !2477
  %287 = shl i32 %258, 30, !dbg !2553
  %288 = lshr i32 %258, 2, !dbg !2553
  %289 = or i32 %287, %288, !dbg !2553
  call void @llvm.dbg.value(metadata i32 %289, metadata !2470, metadata !DIExpression()), !dbg !2477
  %290 = shl i32 %286, 5, !dbg !2554
  %291 = lshr i32 %286, 27, !dbg !2554
  %292 = or i32 %290, %291, !dbg !2554
  %293 = xor i32 %289, %275, !dbg !2554
  %294 = and i32 %272, %293, !dbg !2554
  %295 = xor i32 %294, %275, !dbg !2554
  %296 = load i32, i32* %44, align 4, !dbg !2554, !tbaa !1559
  %297 = add i32 %296, 1518500249, !dbg !2554
  %298 = add i32 %297, %261, !dbg !2554
  %299 = add i32 %298, %295, !dbg !2554
  %300 = add i32 %299, %292, !dbg !2554
  call void @llvm.dbg.value(metadata i32 %300, metadata !2472, metadata !DIExpression()), !dbg !2477
  %301 = shl i32 %272, 30, !dbg !2554
  %302 = lshr i32 %272, 2, !dbg !2554
  %303 = or i32 %301, %302, !dbg !2554
  call void @llvm.dbg.value(metadata i32 %303, metadata !2469, metadata !DIExpression()), !dbg !2477
  %304 = shl i32 %300, 5, !dbg !2555
  %305 = lshr i32 %300, 27, !dbg !2555
  %306 = or i32 %304, %305, !dbg !2555
  %307 = xor i32 %303, %289, !dbg !2555
  %308 = and i32 %286, %307, !dbg !2555
  %309 = xor i32 %308, %289, !dbg !2555
  %310 = xor i32 %115, %55, !dbg !2555
  %311 = xor i32 %310, %198, !dbg !2555
  %312 = xor i32 %311, %268, !dbg !2555
  call void @llvm.dbg.value(metadata i32 %312, metadata !2474, metadata !DIExpression()), !dbg !2532
  %313 = shl i32 %312, 1, !dbg !2555
  %314 = lshr i32 %312, 31, !dbg !2555
  %315 = or i32 %313, %314, !dbg !2555
  %316 = add i32 %315, 1518500249, !dbg !2555
  %317 = add i32 %316, %275, !dbg !2555
  %318 = add i32 %317, %309, !dbg !2555
  %319 = add i32 %318, %306, !dbg !2555
  call void @llvm.dbg.value(metadata i32 %319, metadata !2471, metadata !DIExpression()), !dbg !2477
  %320 = shl i32 %286, 30, !dbg !2555
  %321 = lshr i32 %286, 2, !dbg !2555
  %322 = or i32 %320, %321, !dbg !2555
  call void @llvm.dbg.value(metadata i32 %322, metadata !2468, metadata !DIExpression()), !dbg !2477
  %323 = shl i32 %319, 5, !dbg !2557
  %324 = lshr i32 %319, 27, !dbg !2557
  %325 = or i32 %323, %324, !dbg !2557
  %326 = xor i32 %322, %303, !dbg !2557
  %327 = and i32 %300, %326, !dbg !2557
  %328 = xor i32 %327, %303, !dbg !2557
  %329 = xor i32 %129, %58, !dbg !2557
  %330 = xor i32 %329, %212, !dbg !2557
  %331 = xor i32 %330, %282, !dbg !2557
  call void @llvm.dbg.value(metadata i32 %331, metadata !2474, metadata !DIExpression()), !dbg !2532
  %332 = shl i32 %331, 1, !dbg !2557
  %333 = lshr i32 %331, 31, !dbg !2557
  %334 = or i32 %332, %333, !dbg !2557
  %335 = add i32 %334, 1518500249, !dbg !2557
  %336 = add i32 %335, %289, !dbg !2557
  %337 = add i32 %336, %328, !dbg !2557
  %338 = add i32 %337, %325, !dbg !2557
  call void @llvm.dbg.value(metadata i32 %338, metadata !2470, metadata !DIExpression()), !dbg !2477
  %339 = shl i32 %300, 30, !dbg !2557
  %340 = lshr i32 %300, 2, !dbg !2557
  %341 = or i32 %339, %340, !dbg !2557
  call void @llvm.dbg.value(metadata i32 %341, metadata !2472, metadata !DIExpression()), !dbg !2477
  %342 = shl i32 %338, 5, !dbg !2559
  %343 = lshr i32 %338, 27, !dbg !2559
  %344 = or i32 %342, %343, !dbg !2559
  %345 = xor i32 %341, %322, !dbg !2559
  %346 = and i32 %319, %345, !dbg !2559
  %347 = xor i32 %346, %322, !dbg !2559
  %348 = xor i32 %142, %115, !dbg !2559
  %349 = xor i32 %348, %226, !dbg !2559
  %350 = xor i32 %349, %296, !dbg !2559
  call void @llvm.dbg.value(metadata i32 %350, metadata !2474, metadata !DIExpression()), !dbg !2532
  %351 = shl i32 %350, 1, !dbg !2559
  %352 = lshr i32 %350, 31, !dbg !2559
  %353 = or i32 %351, %352, !dbg !2559
  store i32 %353, i32* %31, align 8, !dbg !2559, !tbaa !1559
  %354 = add i32 %353, 1518500249, !dbg !2559
  %355 = add i32 %354, %303, !dbg !2559
  %356 = add i32 %355, %347, !dbg !2559
  %357 = add i32 %356, %344, !dbg !2559
  call void @llvm.dbg.value(metadata i32 %357, metadata !2469, metadata !DIExpression()), !dbg !2477
  %358 = shl i32 %319, 30, !dbg !2559
  %359 = lshr i32 %319, 2, !dbg !2559
  %360 = or i32 %358, %359, !dbg !2559
  call void @llvm.dbg.value(metadata i32 %360, metadata !2471, metadata !DIExpression()), !dbg !2477
  %361 = shl i32 %357, 5, !dbg !2561
  %362 = lshr i32 %357, 27, !dbg !2561
  %363 = or i32 %361, %362, !dbg !2561
  %364 = xor i32 %360, %341, !dbg !2561
  %365 = and i32 %338, %364, !dbg !2561
  %366 = xor i32 %365, %341, !dbg !2561
  %367 = xor i32 %156, %129, !dbg !2561
  %368 = xor i32 %367, %240, !dbg !2561
  %369 = xor i32 %368, %315, !dbg !2561
  call void @llvm.dbg.value(metadata i32 %369, metadata !2474, metadata !DIExpression()), !dbg !2532
  %370 = shl i32 %369, 1, !dbg !2561
  %371 = lshr i32 %369, 31, !dbg !2561
  %372 = or i32 %370, %371, !dbg !2561
  store i32 %372, i32* %32, align 4, !dbg !2561, !tbaa !1559
  %373 = add i32 %372, 1518500249, !dbg !2561
  %374 = add i32 %373, %322, !dbg !2561
  %375 = add i32 %374, %366, !dbg !2561
  %376 = add i32 %375, %363, !dbg !2561
  call void @llvm.dbg.value(metadata i32 %376, metadata !2468, metadata !DIExpression()), !dbg !2477
  %377 = shl i32 %338, 30, !dbg !2561
  %378 = lshr i32 %338, 2, !dbg !2561
  %379 = or i32 %377, %378, !dbg !2561
  call void @llvm.dbg.value(metadata i32 %379, metadata !2470, metadata !DIExpression()), !dbg !2477
  %380 = shl i32 %376, 5, !dbg !2563
  %381 = lshr i32 %376, 27, !dbg !2563
  %382 = or i32 %380, %381, !dbg !2563
  %383 = xor i32 %379, %360, !dbg !2563
  %384 = xor i32 %383, %357, !dbg !2563
  %385 = xor i32 %170, %142, !dbg !2563
  %386 = xor i32 %385, %254, !dbg !2563
  %387 = xor i32 %386, %334, !dbg !2563
  call void @llvm.dbg.value(metadata i32 %387, metadata !2474, metadata !DIExpression()), !dbg !2532
  %388 = shl i32 %387, 1, !dbg !2563
  %389 = lshr i32 %387, 31, !dbg !2563
  %390 = or i32 %388, %389, !dbg !2563
  store i32 %390, i32* %33, align 16, !dbg !2563, !tbaa !1559
  %391 = add i32 %390, 1859775393, !dbg !2563
  %392 = add i32 %391, %341, !dbg !2563
  %393 = add i32 %392, %384, !dbg !2563
  %394 = add i32 %393, %382, !dbg !2563
  call void @llvm.dbg.value(metadata i32 %394, metadata !2472, metadata !DIExpression()), !dbg !2477
  %395 = shl i32 %357, 30, !dbg !2563
  %396 = lshr i32 %357, 2, !dbg !2563
  %397 = or i32 %395, %396, !dbg !2563
  call void @llvm.dbg.value(metadata i32 %397, metadata !2469, metadata !DIExpression()), !dbg !2477
  %398 = shl i32 %394, 5, !dbg !2565
  %399 = lshr i32 %394, 27, !dbg !2565
  %400 = or i32 %398, %399, !dbg !2565
  %401 = xor i32 %397, %379, !dbg !2565
  %402 = xor i32 %401, %376, !dbg !2565
  %403 = xor i32 %184, %156, !dbg !2565
  %404 = xor i32 %403, %268, !dbg !2565
  %405 = xor i32 %404, %353, !dbg !2565
  call void @llvm.dbg.value(metadata i32 %405, metadata !2474, metadata !DIExpression()), !dbg !2532
  %406 = shl i32 %405, 1, !dbg !2565
  %407 = lshr i32 %405, 31, !dbg !2565
  %408 = or i32 %406, %407, !dbg !2565
  store i32 %408, i32* %34, align 4, !dbg !2565, !tbaa !1559
  %409 = add i32 %408, 1859775393, !dbg !2565
  %410 = add i32 %409, %360, !dbg !2565
  %411 = add i32 %410, %402, !dbg !2565
  %412 = add i32 %411, %400, !dbg !2565
  call void @llvm.dbg.value(metadata i32 %412, metadata !2471, metadata !DIExpression()), !dbg !2477
  %413 = shl i32 %376, 30, !dbg !2565
  %414 = lshr i32 %376, 2, !dbg !2565
  %415 = or i32 %413, %414, !dbg !2565
  call void @llvm.dbg.value(metadata i32 %415, metadata !2468, metadata !DIExpression()), !dbg !2477
  %416 = shl i32 %412, 5, !dbg !2567
  %417 = lshr i32 %412, 27, !dbg !2567
  %418 = or i32 %416, %417, !dbg !2567
  %419 = xor i32 %415, %397, !dbg !2567
  %420 = xor i32 %419, %394, !dbg !2567
  %421 = xor i32 %198, %170, !dbg !2567
  %422 = xor i32 %421, %282, !dbg !2567
  %423 = xor i32 %422, %372, !dbg !2567
  call void @llvm.dbg.value(metadata i32 %423, metadata !2474, metadata !DIExpression()), !dbg !2532
  %424 = shl i32 %423, 1, !dbg !2567
  %425 = lshr i32 %423, 31, !dbg !2567
  %426 = or i32 %424, %425, !dbg !2567
  store i32 %426, i32* %35, align 8, !dbg !2567, !tbaa !1559
  %427 = add i32 %426, 1859775393, !dbg !2567
  %428 = add i32 %427, %379, !dbg !2567
  %429 = add i32 %428, %420, !dbg !2567
  %430 = add i32 %429, %418, !dbg !2567
  call void @llvm.dbg.value(metadata i32 %430, metadata !2470, metadata !DIExpression()), !dbg !2477
  %431 = shl i32 %394, 30, !dbg !2567
  %432 = lshr i32 %394, 2, !dbg !2567
  %433 = or i32 %431, %432, !dbg !2567
  call void @llvm.dbg.value(metadata i32 %433, metadata !2472, metadata !DIExpression()), !dbg !2477
  %434 = shl i32 %430, 5, !dbg !2569
  %435 = lshr i32 %430, 27, !dbg !2569
  %436 = or i32 %434, %435, !dbg !2569
  %437 = xor i32 %433, %415, !dbg !2569
  %438 = xor i32 %437, %412, !dbg !2569
  %439 = xor i32 %212, %184, !dbg !2569
  %440 = xor i32 %439, %296, !dbg !2569
  %441 = xor i32 %440, %390, !dbg !2569
  call void @llvm.dbg.value(metadata i32 %441, metadata !2474, metadata !DIExpression()), !dbg !2532
  %442 = shl i32 %441, 1, !dbg !2569
  %443 = lshr i32 %441, 31, !dbg !2569
  %444 = or i32 %442, %443, !dbg !2569
  store i32 %444, i32* %36, align 4, !dbg !2569, !tbaa !1559
  %445 = add i32 %444, 1859775393, !dbg !2569
  %446 = add i32 %445, %397, !dbg !2569
  %447 = add i32 %446, %438, !dbg !2569
  %448 = add i32 %447, %436, !dbg !2569
  call void @llvm.dbg.value(metadata i32 %448, metadata !2469, metadata !DIExpression()), !dbg !2477
  %449 = shl i32 %412, 30, !dbg !2569
  %450 = lshr i32 %412, 2, !dbg !2569
  %451 = or i32 %449, %450, !dbg !2569
  call void @llvm.dbg.value(metadata i32 %451, metadata !2471, metadata !DIExpression()), !dbg !2477
  %452 = shl i32 %448, 5, !dbg !2571
  %453 = lshr i32 %448, 27, !dbg !2571
  %454 = or i32 %452, %453, !dbg !2571
  %455 = xor i32 %451, %433, !dbg !2571
  %456 = xor i32 %455, %430, !dbg !2571
  %457 = xor i32 %226, %198, !dbg !2571
  %458 = xor i32 %457, %315, !dbg !2571
  %459 = xor i32 %458, %408, !dbg !2571
  call void @llvm.dbg.value(metadata i32 %459, metadata !2474, metadata !DIExpression()), !dbg !2532
  %460 = shl i32 %459, 1, !dbg !2571
  %461 = lshr i32 %459, 31, !dbg !2571
  %462 = or i32 %460, %461, !dbg !2571
  store i32 %462, i32* %37, align 16, !dbg !2571, !tbaa !1559
  %463 = add i32 %462, 1859775393, !dbg !2571
  %464 = add i32 %463, %415, !dbg !2571
  %465 = add i32 %464, %456, !dbg !2571
  %466 = add i32 %465, %454, !dbg !2571
  call void @llvm.dbg.value(metadata i32 %466, metadata !2468, metadata !DIExpression()), !dbg !2477
  %467 = shl i32 %430, 30, !dbg !2571
  %468 = lshr i32 %430, 2, !dbg !2571
  %469 = or i32 %467, %468, !dbg !2571
  call void @llvm.dbg.value(metadata i32 %469, metadata !2470, metadata !DIExpression()), !dbg !2477
  %470 = shl i32 %466, 5, !dbg !2573
  %471 = lshr i32 %466, 27, !dbg !2573
  %472 = or i32 %470, %471, !dbg !2573
  %473 = xor i32 %469, %451, !dbg !2573
  %474 = xor i32 %473, %448, !dbg !2573
  %475 = xor i32 %240, %212, !dbg !2573
  %476 = xor i32 %475, %334, !dbg !2573
  %477 = xor i32 %476, %426, !dbg !2573
  call void @llvm.dbg.value(metadata i32 %477, metadata !2474, metadata !DIExpression()), !dbg !2532
  %478 = shl i32 %477, 1, !dbg !2573
  %479 = lshr i32 %477, 31, !dbg !2573
  %480 = or i32 %478, %479, !dbg !2573
  store i32 %480, i32* %38, align 4, !dbg !2573, !tbaa !1559
  %481 = add i32 %480, 1859775393, !dbg !2573
  %482 = add i32 %481, %433, !dbg !2573
  %483 = add i32 %482, %474, !dbg !2573
  %484 = add i32 %483, %472, !dbg !2573
  call void @llvm.dbg.value(metadata i32 %484, metadata !2472, metadata !DIExpression()), !dbg !2477
  %485 = shl i32 %448, 30, !dbg !2573
  %486 = lshr i32 %448, 2, !dbg !2573
  %487 = or i32 %485, %486, !dbg !2573
  call void @llvm.dbg.value(metadata i32 %487, metadata !2469, metadata !DIExpression()), !dbg !2477
  %488 = shl i32 %484, 5, !dbg !2575
  %489 = lshr i32 %484, 27, !dbg !2575
  %490 = or i32 %488, %489, !dbg !2575
  %491 = xor i32 %487, %469, !dbg !2575
  %492 = xor i32 %491, %466, !dbg !2575
  %493 = xor i32 %254, %226, !dbg !2575
  %494 = xor i32 %493, %353, !dbg !2575
  %495 = xor i32 %494, %444, !dbg !2575
  call void @llvm.dbg.value(metadata i32 %495, metadata !2474, metadata !DIExpression()), !dbg !2532
  %496 = shl i32 %495, 1, !dbg !2575
  %497 = lshr i32 %495, 31, !dbg !2575
  %498 = or i32 %496, %497, !dbg !2575
  store i32 %498, i32* %39, align 8, !dbg !2575, !tbaa !1559
  %499 = add i32 %498, 1859775393, !dbg !2575
  %500 = add i32 %499, %451, !dbg !2575
  %501 = add i32 %500, %492, !dbg !2575
  %502 = add i32 %501, %490, !dbg !2575
  call void @llvm.dbg.value(metadata i32 %502, metadata !2471, metadata !DIExpression()), !dbg !2477
  %503 = shl i32 %466, 30, !dbg !2575
  %504 = lshr i32 %466, 2, !dbg !2575
  %505 = or i32 %503, %504, !dbg !2575
  call void @llvm.dbg.value(metadata i32 %505, metadata !2468, metadata !DIExpression()), !dbg !2477
  %506 = shl i32 %502, 5, !dbg !2577
  %507 = lshr i32 %502, 27, !dbg !2577
  %508 = or i32 %506, %507, !dbg !2577
  %509 = xor i32 %505, %487, !dbg !2577
  %510 = xor i32 %509, %484, !dbg !2577
  %511 = xor i32 %268, %240, !dbg !2577
  %512 = xor i32 %511, %372, !dbg !2577
  %513 = xor i32 %512, %462, !dbg !2577
  call void @llvm.dbg.value(metadata i32 %513, metadata !2474, metadata !DIExpression()), !dbg !2532
  %514 = shl i32 %513, 1, !dbg !2577
  %515 = lshr i32 %513, 31, !dbg !2577
  %516 = or i32 %514, %515, !dbg !2577
  store i32 %516, i32* %40, align 4, !dbg !2577, !tbaa !1559
  %517 = add i32 %516, 1859775393, !dbg !2577
  %518 = add i32 %517, %469, !dbg !2577
  %519 = add i32 %518, %510, !dbg !2577
  %520 = add i32 %519, %508, !dbg !2577
  call void @llvm.dbg.value(metadata i32 %520, metadata !2470, metadata !DIExpression()), !dbg !2477
  %521 = shl i32 %484, 30, !dbg !2577
  %522 = lshr i32 %484, 2, !dbg !2577
  %523 = or i32 %521, %522, !dbg !2577
  call void @llvm.dbg.value(metadata i32 %523, metadata !2472, metadata !DIExpression()), !dbg !2477
  %524 = shl i32 %520, 5, !dbg !2579
  %525 = lshr i32 %520, 27, !dbg !2579
  %526 = or i32 %524, %525, !dbg !2579
  %527 = xor i32 %523, %505, !dbg !2579
  %528 = xor i32 %527, %502, !dbg !2579
  %529 = xor i32 %282, %254, !dbg !2579
  %530 = xor i32 %529, %390, !dbg !2579
  %531 = xor i32 %530, %480, !dbg !2579
  call void @llvm.dbg.value(metadata i32 %531, metadata !2474, metadata !DIExpression()), !dbg !2532
  %532 = shl i32 %531, 1, !dbg !2579
  %533 = lshr i32 %531, 31, !dbg !2579
  %534 = or i32 %532, %533, !dbg !2579
  store i32 %534, i32* %41, align 16, !dbg !2579, !tbaa !1559
  %535 = add i32 %534, 1859775393, !dbg !2579
  %536 = add i32 %535, %487, !dbg !2579
  %537 = add i32 %536, %528, !dbg !2579
  %538 = add i32 %537, %526, !dbg !2579
  call void @llvm.dbg.value(metadata i32 %538, metadata !2469, metadata !DIExpression()), !dbg !2477
  %539 = shl i32 %502, 30, !dbg !2579
  %540 = lshr i32 %502, 2, !dbg !2579
  %541 = or i32 %539, %540, !dbg !2579
  call void @llvm.dbg.value(metadata i32 %541, metadata !2471, metadata !DIExpression()), !dbg !2477
  %542 = shl i32 %538, 5, !dbg !2581
  %543 = lshr i32 %538, 27, !dbg !2581
  %544 = or i32 %542, %543, !dbg !2581
  %545 = xor i32 %541, %523, !dbg !2581
  %546 = xor i32 %545, %520, !dbg !2581
  %547 = xor i32 %296, %268, !dbg !2581
  %548 = xor i32 %547, %408, !dbg !2581
  %549 = xor i32 %548, %498, !dbg !2581
  call void @llvm.dbg.value(metadata i32 %549, metadata !2474, metadata !DIExpression()), !dbg !2532
  %550 = shl i32 %549, 1, !dbg !2581
  %551 = lshr i32 %549, 31, !dbg !2581
  %552 = or i32 %550, %551, !dbg !2581
  store i32 %552, i32* %42, align 4, !dbg !2581, !tbaa !1559
  %553 = add i32 %552, 1859775393, !dbg !2581
  %554 = add i32 %553, %505, !dbg !2581
  %555 = add i32 %554, %546, !dbg !2581
  %556 = add i32 %555, %544, !dbg !2581
  call void @llvm.dbg.value(metadata i32 %556, metadata !2468, metadata !DIExpression()), !dbg !2477
  %557 = shl i32 %520, 30, !dbg !2581
  %558 = lshr i32 %520, 2, !dbg !2581
  %559 = or i32 %557, %558, !dbg !2581
  call void @llvm.dbg.value(metadata i32 %559, metadata !2470, metadata !DIExpression()), !dbg !2477
  %560 = shl i32 %556, 5, !dbg !2583
  %561 = lshr i32 %556, 27, !dbg !2583
  %562 = or i32 %560, %561, !dbg !2583
  %563 = xor i32 %559, %541, !dbg !2583
  %564 = xor i32 %563, %538, !dbg !2583
  %565 = xor i32 %315, %282, !dbg !2583
  %566 = xor i32 %565, %426, !dbg !2583
  %567 = xor i32 %566, %516, !dbg !2583
  call void @llvm.dbg.value(metadata i32 %567, metadata !2474, metadata !DIExpression()), !dbg !2532
  %568 = shl i32 %567, 1, !dbg !2583
  %569 = lshr i32 %567, 31, !dbg !2583
  %570 = or i32 %568, %569, !dbg !2583
  store i32 %570, i32* %43, align 8, !dbg !2583, !tbaa !1559
  %571 = add i32 %570, 1859775393, !dbg !2583
  %572 = add i32 %571, %523, !dbg !2583
  %573 = add i32 %572, %564, !dbg !2583
  %574 = add i32 %573, %562, !dbg !2583
  call void @llvm.dbg.value(metadata i32 %574, metadata !2472, metadata !DIExpression()), !dbg !2477
  %575 = shl i32 %538, 30, !dbg !2583
  %576 = lshr i32 %538, 2, !dbg !2583
  %577 = or i32 %575, %576, !dbg !2583
  call void @llvm.dbg.value(metadata i32 %577, metadata !2469, metadata !DIExpression()), !dbg !2477
  %578 = shl i32 %574, 5, !dbg !2585
  %579 = lshr i32 %574, 27, !dbg !2585
  %580 = or i32 %578, %579, !dbg !2585
  %581 = xor i32 %577, %559, !dbg !2585
  %582 = xor i32 %581, %556, !dbg !2585
  %583 = xor i32 %334, %296, !dbg !2585
  %584 = xor i32 %583, %444, !dbg !2585
  %585 = xor i32 %584, %534, !dbg !2585
  call void @llvm.dbg.value(metadata i32 %585, metadata !2474, metadata !DIExpression()), !dbg !2532
  %586 = shl i32 %585, 1, !dbg !2585
  %587 = lshr i32 %585, 31, !dbg !2585
  %588 = or i32 %586, %587, !dbg !2585
  store i32 %588, i32* %44, align 4, !dbg !2585, !tbaa !1559
  %589 = add i32 %588, 1859775393, !dbg !2585
  %590 = add i32 %589, %541, !dbg !2585
  %591 = add i32 %590, %582, !dbg !2585
  %592 = add i32 %591, %580, !dbg !2585
  call void @llvm.dbg.value(metadata i32 %592, metadata !2471, metadata !DIExpression()), !dbg !2477
  %593 = shl i32 %556, 30, !dbg !2585
  %594 = lshr i32 %556, 2, !dbg !2585
  %595 = or i32 %593, %594, !dbg !2585
  call void @llvm.dbg.value(metadata i32 %595, metadata !2468, metadata !DIExpression()), !dbg !2477
  %596 = shl i32 %592, 5, !dbg !2587
  %597 = lshr i32 %592, 27, !dbg !2587
  %598 = or i32 %596, %597, !dbg !2587
  %599 = xor i32 %595, %577, !dbg !2587
  %600 = xor i32 %599, %574, !dbg !2587
  %601 = xor i32 %353, %315, !dbg !2587
  %602 = xor i32 %601, %462, !dbg !2587
  %603 = xor i32 %602, %552, !dbg !2587
  call void @llvm.dbg.value(metadata i32 %603, metadata !2474, metadata !DIExpression()), !dbg !2532
  %604 = shl i32 %603, 1, !dbg !2587
  %605 = lshr i32 %603, 31, !dbg !2587
  %606 = or i32 %604, %605, !dbg !2587
  %607 = add i32 %606, 1859775393, !dbg !2587
  %608 = add i32 %607, %559, !dbg !2587
  %609 = add i32 %608, %600, !dbg !2587
  %610 = add i32 %609, %598, !dbg !2587
  call void @llvm.dbg.value(metadata i32 %610, metadata !2470, metadata !DIExpression()), !dbg !2477
  %611 = shl i32 %574, 30, !dbg !2587
  %612 = lshr i32 %574, 2, !dbg !2587
  %613 = or i32 %611, %612, !dbg !2587
  call void @llvm.dbg.value(metadata i32 %613, metadata !2472, metadata !DIExpression()), !dbg !2477
  %614 = shl i32 %610, 5, !dbg !2589
  %615 = lshr i32 %610, 27, !dbg !2589
  %616 = or i32 %614, %615, !dbg !2589
  %617 = xor i32 %613, %595, !dbg !2589
  %618 = xor i32 %617, %592, !dbg !2589
  %619 = xor i32 %372, %334, !dbg !2589
  %620 = xor i32 %619, %480, !dbg !2589
  %621 = xor i32 %620, %570, !dbg !2589
  call void @llvm.dbg.value(metadata i32 %621, metadata !2474, metadata !DIExpression()), !dbg !2532
  %622 = shl i32 %621, 1, !dbg !2589
  %623 = lshr i32 %621, 31, !dbg !2589
  %624 = or i32 %622, %623, !dbg !2589
  %625 = add i32 %624, 1859775393, !dbg !2589
  %626 = add i32 %625, %577, !dbg !2589
  %627 = add i32 %626, %618, !dbg !2589
  %628 = add i32 %627, %616, !dbg !2589
  call void @llvm.dbg.value(metadata i32 %628, metadata !2469, metadata !DIExpression()), !dbg !2477
  %629 = shl i32 %592, 30, !dbg !2589
  %630 = lshr i32 %592, 2, !dbg !2589
  %631 = or i32 %629, %630, !dbg !2589
  call void @llvm.dbg.value(metadata i32 %631, metadata !2471, metadata !DIExpression()), !dbg !2477
  %632 = shl i32 %628, 5, !dbg !2591
  %633 = lshr i32 %628, 27, !dbg !2591
  %634 = or i32 %632, %633, !dbg !2591
  %635 = xor i32 %631, %613, !dbg !2591
  %636 = xor i32 %635, %610, !dbg !2591
  %637 = xor i32 %390, %353, !dbg !2591
  %638 = xor i32 %637, %498, !dbg !2591
  %639 = xor i32 %638, %588, !dbg !2591
  call void @llvm.dbg.value(metadata i32 %639, metadata !2474, metadata !DIExpression()), !dbg !2532
  %640 = shl i32 %639, 1, !dbg !2591
  %641 = lshr i32 %639, 31, !dbg !2591
  %642 = or i32 %640, %641, !dbg !2591
  store i32 %642, i32* %31, align 8, !dbg !2591, !tbaa !1559
  %643 = add i32 %642, 1859775393, !dbg !2591
  %644 = add i32 %643, %595, !dbg !2591
  %645 = add i32 %644, %636, !dbg !2591
  %646 = add i32 %645, %634, !dbg !2591
  call void @llvm.dbg.value(metadata i32 %646, metadata !2468, metadata !DIExpression()), !dbg !2477
  %647 = shl i32 %610, 30, !dbg !2591
  %648 = lshr i32 %610, 2, !dbg !2591
  %649 = or i32 %647, %648, !dbg !2591
  call void @llvm.dbg.value(metadata i32 %649, metadata !2470, metadata !DIExpression()), !dbg !2477
  %650 = shl i32 %646, 5, !dbg !2593
  %651 = lshr i32 %646, 27, !dbg !2593
  %652 = or i32 %650, %651, !dbg !2593
  %653 = xor i32 %649, %631, !dbg !2593
  %654 = xor i32 %653, %628, !dbg !2593
  %655 = xor i32 %408, %372, !dbg !2593
  %656 = xor i32 %655, %516, !dbg !2593
  %657 = xor i32 %656, %606, !dbg !2593
  call void @llvm.dbg.value(metadata i32 %657, metadata !2474, metadata !DIExpression()), !dbg !2532
  %658 = shl i32 %657, 1, !dbg !2593
  %659 = lshr i32 %657, 31, !dbg !2593
  %660 = or i32 %658, %659, !dbg !2593
  store i32 %660, i32* %32, align 4, !dbg !2593, !tbaa !1559
  %661 = add i32 %660, 1859775393, !dbg !2593
  %662 = add i32 %661, %613, !dbg !2593
  %663 = add i32 %662, %654, !dbg !2593
  %664 = add i32 %663, %652, !dbg !2593
  call void @llvm.dbg.value(metadata i32 %664, metadata !2472, metadata !DIExpression()), !dbg !2477
  %665 = shl i32 %628, 30, !dbg !2593
  %666 = lshr i32 %628, 2, !dbg !2593
  %667 = or i32 %665, %666, !dbg !2593
  call void @llvm.dbg.value(metadata i32 %667, metadata !2469, metadata !DIExpression()), !dbg !2477
  %668 = shl i32 %664, 5, !dbg !2595
  %669 = lshr i32 %664, 27, !dbg !2595
  %670 = or i32 %668, %669, !dbg !2595
  %671 = xor i32 %667, %649, !dbg !2595
  %672 = xor i32 %671, %646, !dbg !2595
  %673 = xor i32 %426, %390, !dbg !2595
  %674 = xor i32 %673, %534, !dbg !2595
  %675 = xor i32 %674, %624, !dbg !2595
  call void @llvm.dbg.value(metadata i32 %675, metadata !2474, metadata !DIExpression()), !dbg !2532
  %676 = shl i32 %675, 1, !dbg !2595
  %677 = lshr i32 %675, 31, !dbg !2595
  %678 = or i32 %676, %677, !dbg !2595
  store i32 %678, i32* %33, align 16, !dbg !2595, !tbaa !1559
  %679 = add i32 %678, 1859775393, !dbg !2595
  %680 = add i32 %679, %631, !dbg !2595
  %681 = add i32 %680, %672, !dbg !2595
  %682 = add i32 %681, %670, !dbg !2595
  call void @llvm.dbg.value(metadata i32 %682, metadata !2471, metadata !DIExpression()), !dbg !2477
  %683 = shl i32 %646, 30, !dbg !2595
  %684 = lshr i32 %646, 2, !dbg !2595
  %685 = or i32 %683, %684, !dbg !2595
  call void @llvm.dbg.value(metadata i32 %685, metadata !2468, metadata !DIExpression()), !dbg !2477
  %686 = shl i32 %682, 5, !dbg !2597
  %687 = lshr i32 %682, 27, !dbg !2597
  %688 = or i32 %686, %687, !dbg !2597
  %689 = xor i32 %685, %667, !dbg !2597
  %690 = xor i32 %689, %664, !dbg !2597
  %691 = xor i32 %444, %408, !dbg !2597
  %692 = xor i32 %691, %552, !dbg !2597
  %693 = xor i32 %692, %642, !dbg !2597
  call void @llvm.dbg.value(metadata i32 %693, metadata !2474, metadata !DIExpression()), !dbg !2532
  %694 = shl i32 %693, 1, !dbg !2597
  %695 = lshr i32 %693, 31, !dbg !2597
  %696 = or i32 %694, %695, !dbg !2597
  store i32 %696, i32* %34, align 4, !dbg !2597, !tbaa !1559
  %697 = add i32 %696, 1859775393, !dbg !2597
  %698 = add i32 %697, %649, !dbg !2597
  %699 = add i32 %698, %690, !dbg !2597
  %700 = add i32 %699, %688, !dbg !2597
  call void @llvm.dbg.value(metadata i32 %700, metadata !2470, metadata !DIExpression()), !dbg !2477
  %701 = shl i32 %664, 30, !dbg !2597
  %702 = lshr i32 %664, 2, !dbg !2597
  %703 = or i32 %701, %702, !dbg !2597
  call void @llvm.dbg.value(metadata i32 %703, metadata !2472, metadata !DIExpression()), !dbg !2477
  %704 = shl i32 %700, 5, !dbg !2599
  %705 = lshr i32 %700, 27, !dbg !2599
  %706 = or i32 %704, %705, !dbg !2599
  %707 = xor i32 %703, %685, !dbg !2599
  %708 = xor i32 %707, %682, !dbg !2599
  %709 = xor i32 %462, %426, !dbg !2599
  %710 = xor i32 %709, %570, !dbg !2599
  %711 = xor i32 %710, %660, !dbg !2599
  call void @llvm.dbg.value(metadata i32 %711, metadata !2474, metadata !DIExpression()), !dbg !2532
  %712 = shl i32 %711, 1, !dbg !2599
  %713 = lshr i32 %711, 31, !dbg !2599
  %714 = or i32 %712, %713, !dbg !2599
  store i32 %714, i32* %35, align 8, !dbg !2599, !tbaa !1559
  %715 = add i32 %714, 1859775393, !dbg !2599
  %716 = add i32 %715, %667, !dbg !2599
  %717 = add i32 %716, %708, !dbg !2599
  %718 = add i32 %717, %706, !dbg !2599
  call void @llvm.dbg.value(metadata i32 %718, metadata !2469, metadata !DIExpression()), !dbg !2477
  %719 = shl i32 %682, 30, !dbg !2599
  %720 = lshr i32 %682, 2, !dbg !2599
  %721 = or i32 %719, %720, !dbg !2599
  call void @llvm.dbg.value(metadata i32 %721, metadata !2471, metadata !DIExpression()), !dbg !2477
  %722 = shl i32 %718, 5, !dbg !2601
  %723 = lshr i32 %718, 27, !dbg !2601
  %724 = or i32 %722, %723, !dbg !2601
  %725 = xor i32 %721, %703, !dbg !2601
  %726 = xor i32 %725, %700, !dbg !2601
  %727 = xor i32 %480, %444, !dbg !2601
  %728 = xor i32 %727, %588, !dbg !2601
  %729 = xor i32 %728, %678, !dbg !2601
  call void @llvm.dbg.value(metadata i32 %729, metadata !2474, metadata !DIExpression()), !dbg !2532
  %730 = shl i32 %729, 1, !dbg !2601
  %731 = lshr i32 %729, 31, !dbg !2601
  %732 = or i32 %730, %731, !dbg !2601
  store i32 %732, i32* %36, align 4, !dbg !2601, !tbaa !1559
  %733 = add i32 %732, 1859775393, !dbg !2601
  %734 = add i32 %733, %685, !dbg !2601
  %735 = add i32 %734, %726, !dbg !2601
  %736 = add i32 %735, %724, !dbg !2601
  call void @llvm.dbg.value(metadata i32 %736, metadata !2468, metadata !DIExpression()), !dbg !2477
  %737 = shl i32 %700, 30, !dbg !2601
  %738 = lshr i32 %700, 2, !dbg !2601
  %739 = or i32 %737, %738, !dbg !2601
  call void @llvm.dbg.value(metadata i32 %739, metadata !2470, metadata !DIExpression()), !dbg !2477
  %740 = shl i32 %736, 5, !dbg !2603
  %741 = lshr i32 %736, 27, !dbg !2603
  %742 = or i32 %740, %741, !dbg !2603
  %743 = and i32 %718, %739, !dbg !2603
  %744 = or i32 %718, %739, !dbg !2603
  %745 = and i32 %744, %721, !dbg !2603
  %746 = or i32 %745, %743, !dbg !2603
  %747 = xor i32 %498, %462, !dbg !2603
  %748 = xor i32 %747, %606, !dbg !2603
  %749 = xor i32 %748, %696, !dbg !2603
  call void @llvm.dbg.value(metadata i32 %749, metadata !2474, metadata !DIExpression()), !dbg !2532
  %750 = shl i32 %749, 1, !dbg !2603
  %751 = lshr i32 %749, 31, !dbg !2603
  %752 = or i32 %750, %751, !dbg !2603
  store i32 %752, i32* %37, align 16, !dbg !2603, !tbaa !1559
  %753 = add i32 %752, -1894007588, !dbg !2603
  %754 = add i32 %753, %703, !dbg !2603
  %755 = add i32 %754, %746, !dbg !2603
  %756 = add i32 %755, %742, !dbg !2603
  call void @llvm.dbg.value(metadata i32 %756, metadata !2472, metadata !DIExpression()), !dbg !2477
  %757 = shl i32 %718, 30, !dbg !2603
  %758 = lshr i32 %718, 2, !dbg !2603
  %759 = or i32 %757, %758, !dbg !2603
  call void @llvm.dbg.value(metadata i32 %759, metadata !2469, metadata !DIExpression()), !dbg !2477
  %760 = shl i32 %756, 5, !dbg !2605
  %761 = lshr i32 %756, 27, !dbg !2605
  %762 = or i32 %760, %761, !dbg !2605
  %763 = and i32 %736, %759, !dbg !2605
  %764 = or i32 %736, %759, !dbg !2605
  %765 = and i32 %764, %739, !dbg !2605
  %766 = or i32 %765, %763, !dbg !2605
  %767 = xor i32 %516, %480, !dbg !2605
  %768 = xor i32 %767, %624, !dbg !2605
  %769 = xor i32 %768, %714, !dbg !2605
  call void @llvm.dbg.value(metadata i32 %769, metadata !2474, metadata !DIExpression()), !dbg !2532
  %770 = shl i32 %769, 1, !dbg !2605
  %771 = lshr i32 %769, 31, !dbg !2605
  %772 = or i32 %770, %771, !dbg !2605
  store i32 %772, i32* %38, align 4, !dbg !2605, !tbaa !1559
  %773 = add i32 %772, -1894007588, !dbg !2605
  %774 = add i32 %773, %721, !dbg !2605
  %775 = add i32 %774, %766, !dbg !2605
  %776 = add i32 %775, %762, !dbg !2605
  call void @llvm.dbg.value(metadata i32 %776, metadata !2471, metadata !DIExpression()), !dbg !2477
  %777 = shl i32 %736, 30, !dbg !2605
  %778 = lshr i32 %736, 2, !dbg !2605
  %779 = or i32 %777, %778, !dbg !2605
  call void @llvm.dbg.value(metadata i32 %779, metadata !2468, metadata !DIExpression()), !dbg !2477
  %780 = shl i32 %776, 5, !dbg !2607
  %781 = lshr i32 %776, 27, !dbg !2607
  %782 = or i32 %780, %781, !dbg !2607
  %783 = and i32 %756, %779, !dbg !2607
  %784 = or i32 %756, %779, !dbg !2607
  %785 = and i32 %784, %759, !dbg !2607
  %786 = or i32 %785, %783, !dbg !2607
  %787 = xor i32 %534, %498, !dbg !2607
  %788 = xor i32 %787, %642, !dbg !2607
  %789 = xor i32 %788, %732, !dbg !2607
  call void @llvm.dbg.value(metadata i32 %789, metadata !2474, metadata !DIExpression()), !dbg !2532
  %790 = shl i32 %789, 1, !dbg !2607
  %791 = lshr i32 %789, 31, !dbg !2607
  %792 = or i32 %790, %791, !dbg !2607
  store i32 %792, i32* %39, align 8, !dbg !2607, !tbaa !1559
  %793 = add i32 %792, -1894007588, !dbg !2607
  %794 = add i32 %793, %739, !dbg !2607
  %795 = add i32 %794, %786, !dbg !2607
  %796 = add i32 %795, %782, !dbg !2607
  call void @llvm.dbg.value(metadata i32 %796, metadata !2470, metadata !DIExpression()), !dbg !2477
  %797 = shl i32 %756, 30, !dbg !2607
  %798 = lshr i32 %756, 2, !dbg !2607
  %799 = or i32 %797, %798, !dbg !2607
  call void @llvm.dbg.value(metadata i32 %799, metadata !2472, metadata !DIExpression()), !dbg !2477
  %800 = shl i32 %796, 5, !dbg !2609
  %801 = lshr i32 %796, 27, !dbg !2609
  %802 = or i32 %800, %801, !dbg !2609
  %803 = and i32 %776, %799, !dbg !2609
  %804 = or i32 %776, %799, !dbg !2609
  %805 = and i32 %804, %779, !dbg !2609
  %806 = or i32 %805, %803, !dbg !2609
  %807 = xor i32 %552, %516, !dbg !2609
  %808 = xor i32 %807, %660, !dbg !2609
  %809 = xor i32 %808, %752, !dbg !2609
  call void @llvm.dbg.value(metadata i32 %809, metadata !2474, metadata !DIExpression()), !dbg !2532
  %810 = shl i32 %809, 1, !dbg !2609
  %811 = lshr i32 %809, 31, !dbg !2609
  %812 = or i32 %810, %811, !dbg !2609
  store i32 %812, i32* %40, align 4, !dbg !2609, !tbaa !1559
  %813 = add i32 %812, -1894007588, !dbg !2609
  %814 = add i32 %813, %759, !dbg !2609
  %815 = add i32 %814, %806, !dbg !2609
  %816 = add i32 %815, %802, !dbg !2609
  call void @llvm.dbg.value(metadata i32 %816, metadata !2469, metadata !DIExpression()), !dbg !2477
  %817 = shl i32 %776, 30, !dbg !2609
  %818 = lshr i32 %776, 2, !dbg !2609
  %819 = or i32 %817, %818, !dbg !2609
  call void @llvm.dbg.value(metadata i32 %819, metadata !2471, metadata !DIExpression()), !dbg !2477
  %820 = shl i32 %816, 5, !dbg !2611
  %821 = lshr i32 %816, 27, !dbg !2611
  %822 = or i32 %820, %821, !dbg !2611
  %823 = and i32 %796, %819, !dbg !2611
  %824 = or i32 %796, %819, !dbg !2611
  %825 = and i32 %824, %799, !dbg !2611
  %826 = or i32 %825, %823, !dbg !2611
  %827 = xor i32 %570, %534, !dbg !2611
  %828 = xor i32 %827, %678, !dbg !2611
  %829 = xor i32 %828, %772, !dbg !2611
  call void @llvm.dbg.value(metadata i32 %829, metadata !2474, metadata !DIExpression()), !dbg !2532
  %830 = shl i32 %829, 1, !dbg !2611
  %831 = lshr i32 %829, 31, !dbg !2611
  %832 = or i32 %830, %831, !dbg !2611
  store i32 %832, i32* %41, align 16, !dbg !2611, !tbaa !1559
  %833 = add i32 %832, -1894007588, !dbg !2611
  %834 = add i32 %833, %779, !dbg !2611
  %835 = add i32 %834, %826, !dbg !2611
  %836 = add i32 %835, %822, !dbg !2611
  call void @llvm.dbg.value(metadata i32 %836, metadata !2468, metadata !DIExpression()), !dbg !2477
  %837 = shl i32 %796, 30, !dbg !2611
  %838 = lshr i32 %796, 2, !dbg !2611
  %839 = or i32 %837, %838, !dbg !2611
  call void @llvm.dbg.value(metadata i32 %839, metadata !2470, metadata !DIExpression()), !dbg !2477
  %840 = shl i32 %836, 5, !dbg !2613
  %841 = lshr i32 %836, 27, !dbg !2613
  %842 = or i32 %840, %841, !dbg !2613
  %843 = and i32 %816, %839, !dbg !2613
  %844 = or i32 %816, %839, !dbg !2613
  %845 = and i32 %844, %819, !dbg !2613
  %846 = or i32 %845, %843, !dbg !2613
  %847 = xor i32 %588, %552, !dbg !2613
  %848 = xor i32 %847, %696, !dbg !2613
  %849 = xor i32 %848, %792, !dbg !2613
  call void @llvm.dbg.value(metadata i32 %849, metadata !2474, metadata !DIExpression()), !dbg !2532
  %850 = shl i32 %849, 1, !dbg !2613
  %851 = lshr i32 %849, 31, !dbg !2613
  %852 = or i32 %850, %851, !dbg !2613
  store i32 %852, i32* %42, align 4, !dbg !2613, !tbaa !1559
  %853 = add i32 %852, -1894007588, !dbg !2613
  %854 = add i32 %853, %799, !dbg !2613
  %855 = add i32 %854, %846, !dbg !2613
  %856 = add i32 %855, %842, !dbg !2613
  call void @llvm.dbg.value(metadata i32 %856, metadata !2472, metadata !DIExpression()), !dbg !2477
  %857 = shl i32 %816, 30, !dbg !2613
  %858 = lshr i32 %816, 2, !dbg !2613
  %859 = or i32 %857, %858, !dbg !2613
  call void @llvm.dbg.value(metadata i32 %859, metadata !2469, metadata !DIExpression()), !dbg !2477
  %860 = shl i32 %856, 5, !dbg !2615
  %861 = lshr i32 %856, 27, !dbg !2615
  %862 = or i32 %860, %861, !dbg !2615
  %863 = and i32 %836, %859, !dbg !2615
  %864 = or i32 %836, %859, !dbg !2615
  %865 = and i32 %864, %839, !dbg !2615
  %866 = or i32 %865, %863, !dbg !2615
  %867 = xor i32 %606, %570, !dbg !2615
  %868 = xor i32 %867, %714, !dbg !2615
  %869 = xor i32 %868, %812, !dbg !2615
  call void @llvm.dbg.value(metadata i32 %869, metadata !2474, metadata !DIExpression()), !dbg !2532
  %870 = shl i32 %869, 1, !dbg !2615
  %871 = lshr i32 %869, 31, !dbg !2615
  %872 = or i32 %870, %871, !dbg !2615
  store i32 %872, i32* %43, align 8, !dbg !2615, !tbaa !1559
  %873 = add i32 %872, -1894007588, !dbg !2615
  %874 = add i32 %873, %819, !dbg !2615
  %875 = add i32 %874, %866, !dbg !2615
  %876 = add i32 %875, %862, !dbg !2615
  call void @llvm.dbg.value(metadata i32 %876, metadata !2471, metadata !DIExpression()), !dbg !2477
  %877 = shl i32 %836, 30, !dbg !2615
  %878 = lshr i32 %836, 2, !dbg !2615
  %879 = or i32 %877, %878, !dbg !2615
  call void @llvm.dbg.value(metadata i32 %879, metadata !2468, metadata !DIExpression()), !dbg !2477
  %880 = shl i32 %876, 5, !dbg !2617
  %881 = lshr i32 %876, 27, !dbg !2617
  %882 = or i32 %880, %881, !dbg !2617
  %883 = and i32 %856, %879, !dbg !2617
  %884 = or i32 %856, %879, !dbg !2617
  %885 = and i32 %884, %859, !dbg !2617
  %886 = or i32 %885, %883, !dbg !2617
  %887 = xor i32 %624, %588, !dbg !2617
  %888 = xor i32 %887, %732, !dbg !2617
  %889 = xor i32 %888, %832, !dbg !2617
  call void @llvm.dbg.value(metadata i32 %889, metadata !2474, metadata !DIExpression()), !dbg !2532
  %890 = shl i32 %889, 1, !dbg !2617
  %891 = lshr i32 %889, 31, !dbg !2617
  %892 = or i32 %890, %891, !dbg !2617
  store i32 %892, i32* %44, align 4, !dbg !2617, !tbaa !1559
  %893 = add i32 %892, -1894007588, !dbg !2617
  %894 = add i32 %893, %839, !dbg !2617
  %895 = add i32 %894, %886, !dbg !2617
  %896 = add i32 %895, %882, !dbg !2617
  call void @llvm.dbg.value(metadata i32 %896, metadata !2470, metadata !DIExpression()), !dbg !2477
  %897 = shl i32 %856, 30, !dbg !2617
  %898 = lshr i32 %856, 2, !dbg !2617
  %899 = or i32 %897, %898, !dbg !2617
  call void @llvm.dbg.value(metadata i32 %899, metadata !2472, metadata !DIExpression()), !dbg !2477
  %900 = shl i32 %896, 5, !dbg !2619
  %901 = lshr i32 %896, 27, !dbg !2619
  %902 = or i32 %900, %901, !dbg !2619
  %903 = and i32 %876, %899, !dbg !2619
  %904 = or i32 %876, %899, !dbg !2619
  %905 = and i32 %904, %879, !dbg !2619
  %906 = or i32 %905, %903, !dbg !2619
  %907 = xor i32 %642, %606, !dbg !2619
  %908 = xor i32 %907, %752, !dbg !2619
  %909 = xor i32 %908, %852, !dbg !2619
  call void @llvm.dbg.value(metadata i32 %909, metadata !2474, metadata !DIExpression()), !dbg !2532
  %910 = shl i32 %909, 1, !dbg !2619
  %911 = lshr i32 %909, 31, !dbg !2619
  %912 = or i32 %910, %911, !dbg !2619
  %913 = add i32 %912, -1894007588, !dbg !2619
  %914 = add i32 %913, %859, !dbg !2619
  %915 = add i32 %914, %906, !dbg !2619
  %916 = add i32 %915, %902, !dbg !2619
  call void @llvm.dbg.value(metadata i32 %916, metadata !2469, metadata !DIExpression()), !dbg !2477
  %917 = shl i32 %876, 30, !dbg !2619
  %918 = lshr i32 %876, 2, !dbg !2619
  %919 = or i32 %917, %918, !dbg !2619
  call void @llvm.dbg.value(metadata i32 %919, metadata !2471, metadata !DIExpression()), !dbg !2477
  %920 = shl i32 %916, 5, !dbg !2621
  %921 = lshr i32 %916, 27, !dbg !2621
  %922 = or i32 %920, %921, !dbg !2621
  %923 = and i32 %896, %919, !dbg !2621
  %924 = or i32 %896, %919, !dbg !2621
  %925 = and i32 %924, %899, !dbg !2621
  %926 = or i32 %925, %923, !dbg !2621
  %927 = xor i32 %660, %624, !dbg !2621
  %928 = xor i32 %927, %772, !dbg !2621
  %929 = xor i32 %928, %872, !dbg !2621
  call void @llvm.dbg.value(metadata i32 %929, metadata !2474, metadata !DIExpression()), !dbg !2532
  %930 = shl i32 %929, 1, !dbg !2621
  %931 = lshr i32 %929, 31, !dbg !2621
  %932 = or i32 %930, %931, !dbg !2621
  %933 = add i32 %932, -1894007588, !dbg !2621
  %934 = add i32 %933, %879, !dbg !2621
  %935 = add i32 %934, %926, !dbg !2621
  %936 = add i32 %935, %922, !dbg !2621
  call void @llvm.dbg.value(metadata i32 %936, metadata !2468, metadata !DIExpression()), !dbg !2477
  %937 = shl i32 %896, 30, !dbg !2621
  %938 = lshr i32 %896, 2, !dbg !2621
  %939 = or i32 %937, %938, !dbg !2621
  call void @llvm.dbg.value(metadata i32 %939, metadata !2470, metadata !DIExpression()), !dbg !2477
  %940 = shl i32 %936, 5, !dbg !2623
  %941 = lshr i32 %936, 27, !dbg !2623
  %942 = or i32 %940, %941, !dbg !2623
  %943 = and i32 %916, %939, !dbg !2623
  %944 = or i32 %916, %939, !dbg !2623
  %945 = and i32 %944, %919, !dbg !2623
  %946 = or i32 %945, %943, !dbg !2623
  %947 = xor i32 %678, %642, !dbg !2623
  %948 = xor i32 %947, %792, !dbg !2623
  %949 = xor i32 %948, %892, !dbg !2623
  call void @llvm.dbg.value(metadata i32 %949, metadata !2474, metadata !DIExpression()), !dbg !2532
  %950 = shl i32 %949, 1, !dbg !2623
  %951 = lshr i32 %949, 31, !dbg !2623
  %952 = or i32 %950, %951, !dbg !2623
  store i32 %952, i32* %31, align 8, !dbg !2623, !tbaa !1559
  %953 = add i32 %952, -1894007588, !dbg !2623
  %954 = add i32 %953, %899, !dbg !2623
  %955 = add i32 %954, %946, !dbg !2623
  %956 = add i32 %955, %942, !dbg !2623
  call void @llvm.dbg.value(metadata i32 %956, metadata !2472, metadata !DIExpression()), !dbg !2477
  %957 = shl i32 %916, 30, !dbg !2623
  %958 = lshr i32 %916, 2, !dbg !2623
  %959 = or i32 %957, %958, !dbg !2623
  call void @llvm.dbg.value(metadata i32 %959, metadata !2469, metadata !DIExpression()), !dbg !2477
  %960 = shl i32 %956, 5, !dbg !2625
  %961 = lshr i32 %956, 27, !dbg !2625
  %962 = or i32 %960, %961, !dbg !2625
  %963 = and i32 %936, %959, !dbg !2625
  %964 = or i32 %936, %959, !dbg !2625
  %965 = and i32 %964, %939, !dbg !2625
  %966 = or i32 %965, %963, !dbg !2625
  %967 = xor i32 %696, %660, !dbg !2625
  %968 = xor i32 %967, %812, !dbg !2625
  %969 = xor i32 %968, %912, !dbg !2625
  call void @llvm.dbg.value(metadata i32 %969, metadata !2474, metadata !DIExpression()), !dbg !2532
  %970 = shl i32 %969, 1, !dbg !2625
  %971 = lshr i32 %969, 31, !dbg !2625
  %972 = or i32 %970, %971, !dbg !2625
  store i32 %972, i32* %32, align 4, !dbg !2625, !tbaa !1559
  %973 = add i32 %972, -1894007588, !dbg !2625
  %974 = add i32 %973, %919, !dbg !2625
  %975 = add i32 %974, %966, !dbg !2625
  %976 = add i32 %975, %962, !dbg !2625
  call void @llvm.dbg.value(metadata i32 %976, metadata !2471, metadata !DIExpression()), !dbg !2477
  %977 = shl i32 %936, 30, !dbg !2625
  %978 = lshr i32 %936, 2, !dbg !2625
  %979 = or i32 %977, %978, !dbg !2625
  call void @llvm.dbg.value(metadata i32 %979, metadata !2468, metadata !DIExpression()), !dbg !2477
  %980 = shl i32 %976, 5, !dbg !2627
  %981 = lshr i32 %976, 27, !dbg !2627
  %982 = or i32 %980, %981, !dbg !2627
  %983 = and i32 %956, %979, !dbg !2627
  %984 = or i32 %956, %979, !dbg !2627
  %985 = and i32 %984, %959, !dbg !2627
  %986 = or i32 %985, %983, !dbg !2627
  %987 = xor i32 %714, %678, !dbg !2627
  %988 = xor i32 %987, %832, !dbg !2627
  %989 = xor i32 %988, %932, !dbg !2627
  call void @llvm.dbg.value(metadata i32 %989, metadata !2474, metadata !DIExpression()), !dbg !2532
  %990 = shl i32 %989, 1, !dbg !2627
  %991 = lshr i32 %989, 31, !dbg !2627
  %992 = or i32 %990, %991, !dbg !2627
  store i32 %992, i32* %33, align 16, !dbg !2627, !tbaa !1559
  %993 = add i32 %992, -1894007588, !dbg !2627
  %994 = add i32 %993, %939, !dbg !2627
  %995 = add i32 %994, %986, !dbg !2627
  %996 = add i32 %995, %982, !dbg !2627
  call void @llvm.dbg.value(metadata i32 %996, metadata !2470, metadata !DIExpression()), !dbg !2477
  %997 = shl i32 %956, 30, !dbg !2627
  %998 = lshr i32 %956, 2, !dbg !2627
  %999 = or i32 %997, %998, !dbg !2627
  call void @llvm.dbg.value(metadata i32 %999, metadata !2472, metadata !DIExpression()), !dbg !2477
  %1000 = shl i32 %996, 5, !dbg !2629
  %1001 = lshr i32 %996, 27, !dbg !2629
  %1002 = or i32 %1000, %1001, !dbg !2629
  %1003 = and i32 %976, %999, !dbg !2629
  %1004 = or i32 %976, %999, !dbg !2629
  %1005 = and i32 %1004, %979, !dbg !2629
  %1006 = or i32 %1005, %1003, !dbg !2629
  %1007 = xor i32 %732, %696, !dbg !2629
  %1008 = xor i32 %1007, %852, !dbg !2629
  %1009 = xor i32 %1008, %952, !dbg !2629
  call void @llvm.dbg.value(metadata i32 %1009, metadata !2474, metadata !DIExpression()), !dbg !2532
  %1010 = shl i32 %1009, 1, !dbg !2629
  %1011 = lshr i32 %1009, 31, !dbg !2629
  %1012 = or i32 %1010, %1011, !dbg !2629
  store i32 %1012, i32* %34, align 4, !dbg !2629, !tbaa !1559
  %1013 = add i32 %1012, -1894007588, !dbg !2629
  %1014 = add i32 %1013, %959, !dbg !2629
  %1015 = add i32 %1014, %1006, !dbg !2629
  %1016 = add i32 %1015, %1002, !dbg !2629
  call void @llvm.dbg.value(metadata i32 %1016, metadata !2469, metadata !DIExpression()), !dbg !2477
  %1017 = shl i32 %976, 30, !dbg !2629
  %1018 = lshr i32 %976, 2, !dbg !2629
  %1019 = or i32 %1017, %1018, !dbg !2629
  call void @llvm.dbg.value(metadata i32 %1019, metadata !2471, metadata !DIExpression()), !dbg !2477
  %1020 = shl i32 %1016, 5, !dbg !2631
  %1021 = lshr i32 %1016, 27, !dbg !2631
  %1022 = or i32 %1020, %1021, !dbg !2631
  %1023 = and i32 %996, %1019, !dbg !2631
  %1024 = or i32 %996, %1019, !dbg !2631
  %1025 = and i32 %1024, %999, !dbg !2631
  %1026 = or i32 %1025, %1023, !dbg !2631
  %1027 = xor i32 %752, %714, !dbg !2631
  %1028 = xor i32 %1027, %872, !dbg !2631
  %1029 = xor i32 %1028, %972, !dbg !2631
  call void @llvm.dbg.value(metadata i32 %1029, metadata !2474, metadata !DIExpression()), !dbg !2532
  %1030 = shl i32 %1029, 1, !dbg !2631
  %1031 = lshr i32 %1029, 31, !dbg !2631
  %1032 = or i32 %1030, %1031, !dbg !2631
  store i32 %1032, i32* %35, align 8, !dbg !2631, !tbaa !1559
  %1033 = add i32 %1032, -1894007588, !dbg !2631
  %1034 = add i32 %1033, %979, !dbg !2631
  %1035 = add i32 %1034, %1026, !dbg !2631
  %1036 = add i32 %1035, %1022, !dbg !2631
  call void @llvm.dbg.value(metadata i32 %1036, metadata !2468, metadata !DIExpression()), !dbg !2477
  %1037 = shl i32 %996, 30, !dbg !2631
  %1038 = lshr i32 %996, 2, !dbg !2631
  %1039 = or i32 %1037, %1038, !dbg !2631
  call void @llvm.dbg.value(metadata i32 %1039, metadata !2470, metadata !DIExpression()), !dbg !2477
  %1040 = shl i32 %1036, 5, !dbg !2633
  %1041 = lshr i32 %1036, 27, !dbg !2633
  %1042 = or i32 %1040, %1041, !dbg !2633
  %1043 = and i32 %1016, %1039, !dbg !2633
  %1044 = or i32 %1016, %1039, !dbg !2633
  %1045 = and i32 %1044, %1019, !dbg !2633
  %1046 = or i32 %1045, %1043, !dbg !2633
  %1047 = xor i32 %772, %732, !dbg !2633
  %1048 = xor i32 %1047, %892, !dbg !2633
  %1049 = xor i32 %1048, %992, !dbg !2633
  call void @llvm.dbg.value(metadata i32 %1049, metadata !2474, metadata !DIExpression()), !dbg !2532
  %1050 = shl i32 %1049, 1, !dbg !2633
  %1051 = lshr i32 %1049, 31, !dbg !2633
  %1052 = or i32 %1050, %1051, !dbg !2633
  store i32 %1052, i32* %36, align 4, !dbg !2633, !tbaa !1559
  %1053 = add i32 %1052, -1894007588, !dbg !2633
  %1054 = add i32 %1053, %999, !dbg !2633
  %1055 = add i32 %1054, %1046, !dbg !2633
  %1056 = add i32 %1055, %1042, !dbg !2633
  call void @llvm.dbg.value(metadata i32 %1056, metadata !2472, metadata !DIExpression()), !dbg !2477
  %1057 = shl i32 %1016, 30, !dbg !2633
  %1058 = lshr i32 %1016, 2, !dbg !2633
  %1059 = or i32 %1057, %1058, !dbg !2633
  call void @llvm.dbg.value(metadata i32 %1059, metadata !2469, metadata !DIExpression()), !dbg !2477
  %1060 = shl i32 %1056, 5, !dbg !2635
  %1061 = lshr i32 %1056, 27, !dbg !2635
  %1062 = or i32 %1060, %1061, !dbg !2635
  %1063 = and i32 %1036, %1059, !dbg !2635
  %1064 = or i32 %1036, %1059, !dbg !2635
  %1065 = and i32 %1064, %1039, !dbg !2635
  %1066 = or i32 %1065, %1063, !dbg !2635
  %1067 = xor i32 %792, %752, !dbg !2635
  %1068 = xor i32 %1067, %912, !dbg !2635
  %1069 = xor i32 %1068, %1012, !dbg !2635
  call void @llvm.dbg.value(metadata i32 %1069, metadata !2474, metadata !DIExpression()), !dbg !2532
  %1070 = shl i32 %1069, 1, !dbg !2635
  %1071 = lshr i32 %1069, 31, !dbg !2635
  %1072 = or i32 %1070, %1071, !dbg !2635
  store i32 %1072, i32* %37, align 16, !dbg !2635, !tbaa !1559
  %1073 = add i32 %1072, -1894007588, !dbg !2635
  %1074 = add i32 %1073, %1019, !dbg !2635
  %1075 = add i32 %1074, %1066, !dbg !2635
  %1076 = add i32 %1075, %1062, !dbg !2635
  call void @llvm.dbg.value(metadata i32 %1076, metadata !2471, metadata !DIExpression()), !dbg !2477
  %1077 = shl i32 %1036, 30, !dbg !2635
  %1078 = lshr i32 %1036, 2, !dbg !2635
  %1079 = or i32 %1077, %1078, !dbg !2635
  call void @llvm.dbg.value(metadata i32 %1079, metadata !2468, metadata !DIExpression()), !dbg !2477
  %1080 = shl i32 %1076, 5, !dbg !2637
  %1081 = lshr i32 %1076, 27, !dbg !2637
  %1082 = or i32 %1080, %1081, !dbg !2637
  %1083 = and i32 %1056, %1079, !dbg !2637
  %1084 = or i32 %1056, %1079, !dbg !2637
  %1085 = and i32 %1084, %1059, !dbg !2637
  %1086 = or i32 %1085, %1083, !dbg !2637
  %1087 = xor i32 %812, %772, !dbg !2637
  %1088 = xor i32 %1087, %932, !dbg !2637
  %1089 = xor i32 %1088, %1032, !dbg !2637
  call void @llvm.dbg.value(metadata i32 %1089, metadata !2474, metadata !DIExpression()), !dbg !2532
  %1090 = shl i32 %1089, 1, !dbg !2637
  %1091 = lshr i32 %1089, 31, !dbg !2637
  %1092 = or i32 %1090, %1091, !dbg !2637
  store i32 %1092, i32* %38, align 4, !dbg !2637, !tbaa !1559
  %1093 = add i32 %1092, -1894007588, !dbg !2637
  %1094 = add i32 %1093, %1039, !dbg !2637
  %1095 = add i32 %1094, %1086, !dbg !2637
  %1096 = add i32 %1095, %1082, !dbg !2637
  call void @llvm.dbg.value(metadata i32 %1096, metadata !2470, metadata !DIExpression()), !dbg !2477
  %1097 = shl i32 %1056, 30, !dbg !2637
  %1098 = lshr i32 %1056, 2, !dbg !2637
  %1099 = or i32 %1097, %1098, !dbg !2637
  call void @llvm.dbg.value(metadata i32 %1099, metadata !2472, metadata !DIExpression()), !dbg !2477
  %1100 = shl i32 %1096, 5, !dbg !2639
  %1101 = lshr i32 %1096, 27, !dbg !2639
  %1102 = or i32 %1100, %1101, !dbg !2639
  %1103 = and i32 %1076, %1099, !dbg !2639
  %1104 = or i32 %1076, %1099, !dbg !2639
  %1105 = and i32 %1104, %1079, !dbg !2639
  %1106 = or i32 %1105, %1103, !dbg !2639
  %1107 = xor i32 %832, %792, !dbg !2639
  %1108 = xor i32 %1107, %952, !dbg !2639
  %1109 = xor i32 %1108, %1052, !dbg !2639
  call void @llvm.dbg.value(metadata i32 %1109, metadata !2474, metadata !DIExpression()), !dbg !2532
  %1110 = shl i32 %1109, 1, !dbg !2639
  %1111 = lshr i32 %1109, 31, !dbg !2639
  %1112 = or i32 %1110, %1111, !dbg !2639
  store i32 %1112, i32* %39, align 8, !dbg !2639, !tbaa !1559
  %1113 = add i32 %1112, -1894007588, !dbg !2639
  %1114 = add i32 %1113, %1059, !dbg !2639
  %1115 = add i32 %1114, %1106, !dbg !2639
  %1116 = add i32 %1115, %1102, !dbg !2639
  call void @llvm.dbg.value(metadata i32 %1116, metadata !2469, metadata !DIExpression()), !dbg !2477
  %1117 = shl i32 %1076, 30, !dbg !2639
  %1118 = lshr i32 %1076, 2, !dbg !2639
  %1119 = or i32 %1117, %1118, !dbg !2639
  call void @llvm.dbg.value(metadata i32 %1119, metadata !2471, metadata !DIExpression()), !dbg !2477
  %1120 = shl i32 %1116, 5, !dbg !2641
  %1121 = lshr i32 %1116, 27, !dbg !2641
  %1122 = or i32 %1120, %1121, !dbg !2641
  %1123 = and i32 %1096, %1119, !dbg !2641
  %1124 = or i32 %1096, %1119, !dbg !2641
  %1125 = and i32 %1124, %1099, !dbg !2641
  %1126 = or i32 %1125, %1123, !dbg !2641
  %1127 = xor i32 %852, %812, !dbg !2641
  %1128 = xor i32 %1127, %972, !dbg !2641
  %1129 = xor i32 %1128, %1072, !dbg !2641
  call void @llvm.dbg.value(metadata i32 %1129, metadata !2474, metadata !DIExpression()), !dbg !2532
  %1130 = shl i32 %1129, 1, !dbg !2641
  %1131 = lshr i32 %1129, 31, !dbg !2641
  %1132 = or i32 %1130, %1131, !dbg !2641
  store i32 %1132, i32* %40, align 4, !dbg !2641, !tbaa !1559
  %1133 = add i32 %1132, -1894007588, !dbg !2641
  %1134 = add i32 %1133, %1079, !dbg !2641
  %1135 = add i32 %1134, %1126, !dbg !2641
  %1136 = add i32 %1135, %1122, !dbg !2641
  call void @llvm.dbg.value(metadata i32 %1136, metadata !2468, metadata !DIExpression()), !dbg !2477
  %1137 = shl i32 %1096, 30, !dbg !2641
  %1138 = lshr i32 %1096, 2, !dbg !2641
  %1139 = or i32 %1137, %1138, !dbg !2641
  call void @llvm.dbg.value(metadata i32 %1139, metadata !2470, metadata !DIExpression()), !dbg !2477
  %1140 = shl i32 %1136, 5, !dbg !2643
  %1141 = lshr i32 %1136, 27, !dbg !2643
  %1142 = or i32 %1140, %1141, !dbg !2643
  %1143 = xor i32 %1139, %1119, !dbg !2643
  %1144 = xor i32 %1143, %1116, !dbg !2643
  %1145 = xor i32 %872, %832, !dbg !2643
  %1146 = xor i32 %1145, %992, !dbg !2643
  %1147 = xor i32 %1146, %1092, !dbg !2643
  call void @llvm.dbg.value(metadata i32 %1147, metadata !2474, metadata !DIExpression()), !dbg !2532
  %1148 = shl i32 %1147, 1, !dbg !2643
  %1149 = lshr i32 %1147, 31, !dbg !2643
  %1150 = or i32 %1148, %1149, !dbg !2643
  store i32 %1150, i32* %41, align 16, !dbg !2643, !tbaa !1559
  %1151 = add i32 %1150, -899497514, !dbg !2643
  %1152 = add i32 %1151, %1099, !dbg !2643
  %1153 = add i32 %1152, %1144, !dbg !2643
  %1154 = add i32 %1153, %1142, !dbg !2643
  call void @llvm.dbg.value(metadata i32 %1154, metadata !2472, metadata !DIExpression()), !dbg !2477
  %1155 = shl i32 %1116, 30, !dbg !2643
  %1156 = lshr i32 %1116, 2, !dbg !2643
  %1157 = or i32 %1155, %1156, !dbg !2643
  call void @llvm.dbg.value(metadata i32 %1157, metadata !2469, metadata !DIExpression()), !dbg !2477
  %1158 = shl i32 %1154, 5, !dbg !2645
  %1159 = lshr i32 %1154, 27, !dbg !2645
  %1160 = or i32 %1158, %1159, !dbg !2645
  %1161 = xor i32 %1157, %1139, !dbg !2645
  %1162 = xor i32 %1161, %1136, !dbg !2645
  %1163 = xor i32 %892, %852, !dbg !2645
  %1164 = xor i32 %1163, %1012, !dbg !2645
  %1165 = xor i32 %1164, %1112, !dbg !2645
  call void @llvm.dbg.value(metadata i32 %1165, metadata !2474, metadata !DIExpression()), !dbg !2532
  %1166 = shl i32 %1165, 1, !dbg !2645
  %1167 = lshr i32 %1165, 31, !dbg !2645
  %1168 = or i32 %1166, %1167, !dbg !2645
  store i32 %1168, i32* %42, align 4, !dbg !2645, !tbaa !1559
  %1169 = add i32 %1168, -899497514, !dbg !2645
  %1170 = add i32 %1169, %1119, !dbg !2645
  %1171 = add i32 %1170, %1162, !dbg !2645
  %1172 = add i32 %1171, %1160, !dbg !2645
  call void @llvm.dbg.value(metadata i32 %1172, metadata !2471, metadata !DIExpression()), !dbg !2477
  %1173 = shl i32 %1136, 30, !dbg !2645
  %1174 = lshr i32 %1136, 2, !dbg !2645
  %1175 = or i32 %1173, %1174, !dbg !2645
  call void @llvm.dbg.value(metadata i32 %1175, metadata !2468, metadata !DIExpression()), !dbg !2477
  %1176 = shl i32 %1172, 5, !dbg !2647
  %1177 = lshr i32 %1172, 27, !dbg !2647
  %1178 = or i32 %1176, %1177, !dbg !2647
  %1179 = xor i32 %1175, %1157, !dbg !2647
  %1180 = xor i32 %1179, %1154, !dbg !2647
  %1181 = xor i32 %912, %872, !dbg !2647
  %1182 = xor i32 %1181, %1032, !dbg !2647
  %1183 = xor i32 %1182, %1132, !dbg !2647
  call void @llvm.dbg.value(metadata i32 %1183, metadata !2474, metadata !DIExpression()), !dbg !2532
  %1184 = shl i32 %1183, 1, !dbg !2647
  %1185 = lshr i32 %1183, 31, !dbg !2647
  %1186 = or i32 %1184, %1185, !dbg !2647
  store i32 %1186, i32* %43, align 8, !dbg !2647, !tbaa !1559
  %1187 = add i32 %1186, -899497514, !dbg !2647
  %1188 = add i32 %1187, %1139, !dbg !2647
  %1189 = add i32 %1188, %1180, !dbg !2647
  %1190 = add i32 %1189, %1178, !dbg !2647
  call void @llvm.dbg.value(metadata i32 %1190, metadata !2470, metadata !DIExpression()), !dbg !2477
  %1191 = shl i32 %1154, 30, !dbg !2647
  %1192 = lshr i32 %1154, 2, !dbg !2647
  %1193 = or i32 %1191, %1192, !dbg !2647
  call void @llvm.dbg.value(metadata i32 %1193, metadata !2472, metadata !DIExpression()), !dbg !2477
  %1194 = shl i32 %1190, 5, !dbg !2649
  %1195 = lshr i32 %1190, 27, !dbg !2649
  %1196 = or i32 %1194, %1195, !dbg !2649
  %1197 = xor i32 %1193, %1175, !dbg !2649
  %1198 = xor i32 %1197, %1172, !dbg !2649
  %1199 = xor i32 %932, %892, !dbg !2649
  %1200 = xor i32 %1199, %1052, !dbg !2649
  %1201 = xor i32 %1200, %1150, !dbg !2649
  call void @llvm.dbg.value(metadata i32 %1201, metadata !2474, metadata !DIExpression()), !dbg !2532
  %1202 = shl i32 %1201, 1, !dbg !2649
  %1203 = lshr i32 %1201, 31, !dbg !2649
  %1204 = or i32 %1202, %1203, !dbg !2649
  store i32 %1204, i32* %44, align 4, !dbg !2649, !tbaa !1559
  %1205 = add i32 %1204, -899497514, !dbg !2649
  %1206 = add i32 %1205, %1157, !dbg !2649
  %1207 = add i32 %1206, %1198, !dbg !2649
  %1208 = add i32 %1207, %1196, !dbg !2649
  call void @llvm.dbg.value(metadata i32 %1208, metadata !2469, metadata !DIExpression()), !dbg !2477
  %1209 = shl i32 %1172, 30, !dbg !2649
  %1210 = lshr i32 %1172, 2, !dbg !2649
  %1211 = or i32 %1209, %1210, !dbg !2649
  call void @llvm.dbg.value(metadata i32 %1211, metadata !2471, metadata !DIExpression()), !dbg !2477
  %1212 = shl i32 %1208, 5, !dbg !2651
  %1213 = lshr i32 %1208, 27, !dbg !2651
  %1214 = or i32 %1212, %1213, !dbg !2651
  %1215 = xor i32 %1211, %1193, !dbg !2651
  %1216 = xor i32 %1215, %1190, !dbg !2651
  %1217 = xor i32 %952, %912, !dbg !2651
  %1218 = xor i32 %1217, %1072, !dbg !2651
  %1219 = xor i32 %1218, %1168, !dbg !2651
  call void @llvm.dbg.value(metadata i32 %1219, metadata !2474, metadata !DIExpression()), !dbg !2532
  %1220 = shl i32 %1219, 1, !dbg !2651
  %1221 = lshr i32 %1219, 31, !dbg !2651
  %1222 = or i32 %1220, %1221, !dbg !2651
  %1223 = add i32 %1222, -899497514, !dbg !2651
  %1224 = add i32 %1223, %1175, !dbg !2651
  %1225 = add i32 %1224, %1216, !dbg !2651
  %1226 = add i32 %1225, %1214, !dbg !2651
  call void @llvm.dbg.value(metadata i32 %1226, metadata !2468, metadata !DIExpression()), !dbg !2477
  %1227 = shl i32 %1190, 30, !dbg !2651
  %1228 = lshr i32 %1190, 2, !dbg !2651
  %1229 = or i32 %1227, %1228, !dbg !2651
  call void @llvm.dbg.value(metadata i32 %1229, metadata !2470, metadata !DIExpression()), !dbg !2477
  %1230 = shl i32 %1226, 5, !dbg !2653
  %1231 = lshr i32 %1226, 27, !dbg !2653
  %1232 = or i32 %1230, %1231, !dbg !2653
  %1233 = xor i32 %1229, %1211, !dbg !2653
  %1234 = xor i32 %1233, %1208, !dbg !2653
  %1235 = xor i32 %972, %932, !dbg !2653
  %1236 = xor i32 %1235, %1092, !dbg !2653
  %1237 = xor i32 %1236, %1186, !dbg !2653
  call void @llvm.dbg.value(metadata i32 %1237, metadata !2474, metadata !DIExpression()), !dbg !2532
  %1238 = shl i32 %1237, 1, !dbg !2653
  %1239 = lshr i32 %1237, 31, !dbg !2653
  %1240 = or i32 %1238, %1239, !dbg !2653
  %1241 = add i32 %1240, -899497514, !dbg !2653
  %1242 = add i32 %1241, %1193, !dbg !2653
  %1243 = add i32 %1242, %1234, !dbg !2653
  %1244 = add i32 %1243, %1232, !dbg !2653
  call void @llvm.dbg.value(metadata i32 %1244, metadata !2472, metadata !DIExpression()), !dbg !2477
  %1245 = shl i32 %1208, 30, !dbg !2653
  %1246 = lshr i32 %1208, 2, !dbg !2653
  %1247 = or i32 %1245, %1246, !dbg !2653
  call void @llvm.dbg.value(metadata i32 %1247, metadata !2469, metadata !DIExpression()), !dbg !2477
  %1248 = shl i32 %1244, 5, !dbg !2655
  %1249 = lshr i32 %1244, 27, !dbg !2655
  %1250 = or i32 %1248, %1249, !dbg !2655
  %1251 = xor i32 %1247, %1229, !dbg !2655
  %1252 = xor i32 %1251, %1226, !dbg !2655
  %1253 = xor i32 %992, %952, !dbg !2655
  %1254 = xor i32 %1253, %1112, !dbg !2655
  %1255 = xor i32 %1254, %1204, !dbg !2655
  call void @llvm.dbg.value(metadata i32 %1255, metadata !2474, metadata !DIExpression()), !dbg !2532
  %1256 = shl i32 %1255, 1, !dbg !2655
  %1257 = lshr i32 %1255, 31, !dbg !2655
  %1258 = or i32 %1256, %1257, !dbg !2655
  store i32 %1258, i32* %31, align 8, !dbg !2655, !tbaa !1559
  %1259 = add i32 %1258, -899497514, !dbg !2655
  %1260 = add i32 %1259, %1211, !dbg !2655
  %1261 = add i32 %1260, %1252, !dbg !2655
  %1262 = add i32 %1261, %1250, !dbg !2655
  call void @llvm.dbg.value(metadata i32 %1262, metadata !2471, metadata !DIExpression()), !dbg !2477
  %1263 = shl i32 %1226, 30, !dbg !2655
  %1264 = lshr i32 %1226, 2, !dbg !2655
  %1265 = or i32 %1263, %1264, !dbg !2655
  call void @llvm.dbg.value(metadata i32 %1265, metadata !2468, metadata !DIExpression()), !dbg !2477
  %1266 = shl i32 %1262, 5, !dbg !2657
  %1267 = lshr i32 %1262, 27, !dbg !2657
  %1268 = or i32 %1266, %1267, !dbg !2657
  %1269 = xor i32 %1265, %1247, !dbg !2657
  %1270 = xor i32 %1269, %1244, !dbg !2657
  %1271 = xor i32 %1012, %972, !dbg !2657
  %1272 = xor i32 %1271, %1132, !dbg !2657
  %1273 = xor i32 %1272, %1222, !dbg !2657
  call void @llvm.dbg.value(metadata i32 %1273, metadata !2474, metadata !DIExpression()), !dbg !2532
  %1274 = shl i32 %1273, 1, !dbg !2657
  %1275 = lshr i32 %1273, 31, !dbg !2657
  %1276 = or i32 %1274, %1275, !dbg !2657
  store i32 %1276, i32* %32, align 4, !dbg !2657, !tbaa !1559
  %1277 = add i32 %1276, -899497514, !dbg !2657
  %1278 = add i32 %1277, %1229, !dbg !2657
  %1279 = add i32 %1278, %1270, !dbg !2657
  %1280 = add i32 %1279, %1268, !dbg !2657
  call void @llvm.dbg.value(metadata i32 %1280, metadata !2470, metadata !DIExpression()), !dbg !2477
  %1281 = shl i32 %1244, 30, !dbg !2657
  %1282 = lshr i32 %1244, 2, !dbg !2657
  %1283 = or i32 %1281, %1282, !dbg !2657
  call void @llvm.dbg.value(metadata i32 %1283, metadata !2472, metadata !DIExpression()), !dbg !2477
  %1284 = shl i32 %1280, 5, !dbg !2659
  %1285 = lshr i32 %1280, 27, !dbg !2659
  %1286 = or i32 %1284, %1285, !dbg !2659
  %1287 = xor i32 %1283, %1265, !dbg !2659
  %1288 = xor i32 %1287, %1262, !dbg !2659
  %1289 = xor i32 %1032, %992, !dbg !2659
  %1290 = xor i32 %1289, %1150, !dbg !2659
  %1291 = xor i32 %1290, %1240, !dbg !2659
  call void @llvm.dbg.value(metadata i32 %1291, metadata !2474, metadata !DIExpression()), !dbg !2532
  %1292 = shl i32 %1291, 1, !dbg !2659
  %1293 = lshr i32 %1291, 31, !dbg !2659
  %1294 = or i32 %1292, %1293, !dbg !2659
  store i32 %1294, i32* %33, align 16, !dbg !2659, !tbaa !1559
  %1295 = add i32 %1294, -899497514, !dbg !2659
  %1296 = add i32 %1295, %1247, !dbg !2659
  %1297 = add i32 %1296, %1288, !dbg !2659
  %1298 = add i32 %1297, %1286, !dbg !2659
  call void @llvm.dbg.value(metadata i32 %1298, metadata !2469, metadata !DIExpression()), !dbg !2477
  %1299 = shl i32 %1262, 30, !dbg !2659
  %1300 = lshr i32 %1262, 2, !dbg !2659
  %1301 = or i32 %1299, %1300, !dbg !2659
  call void @llvm.dbg.value(metadata i32 %1301, metadata !2471, metadata !DIExpression()), !dbg !2477
  %1302 = shl i32 %1298, 5, !dbg !2661
  %1303 = lshr i32 %1298, 27, !dbg !2661
  %1304 = or i32 %1302, %1303, !dbg !2661
  %1305 = xor i32 %1301, %1283, !dbg !2661
  %1306 = xor i32 %1305, %1280, !dbg !2661
  %1307 = xor i32 %1052, %1012, !dbg !2661
  %1308 = xor i32 %1307, %1168, !dbg !2661
  %1309 = xor i32 %1308, %1258, !dbg !2661
  call void @llvm.dbg.value(metadata i32 %1309, metadata !2474, metadata !DIExpression()), !dbg !2532
  %1310 = shl i32 %1309, 1, !dbg !2661
  %1311 = lshr i32 %1309, 31, !dbg !2661
  %1312 = or i32 %1310, %1311, !dbg !2661
  store i32 %1312, i32* %34, align 4, !dbg !2661, !tbaa !1559
  %1313 = add i32 %1312, -899497514, !dbg !2661
  %1314 = add i32 %1313, %1265, !dbg !2661
  %1315 = add i32 %1314, %1306, !dbg !2661
  %1316 = add i32 %1315, %1304, !dbg !2661
  call void @llvm.dbg.value(metadata i32 %1316, metadata !2468, metadata !DIExpression()), !dbg !2477
  %1317 = shl i32 %1280, 30, !dbg !2661
  %1318 = lshr i32 %1280, 2, !dbg !2661
  %1319 = or i32 %1317, %1318, !dbg !2661
  call void @llvm.dbg.value(metadata i32 %1319, metadata !2470, metadata !DIExpression()), !dbg !2477
  %1320 = shl i32 %1316, 5, !dbg !2663
  %1321 = lshr i32 %1316, 27, !dbg !2663
  %1322 = or i32 %1320, %1321, !dbg !2663
  %1323 = xor i32 %1319, %1301, !dbg !2663
  %1324 = xor i32 %1323, %1298, !dbg !2663
  %1325 = xor i32 %1072, %1032, !dbg !2663
  %1326 = xor i32 %1325, %1186, !dbg !2663
  %1327 = xor i32 %1326, %1276, !dbg !2663
  call void @llvm.dbg.value(metadata i32 %1327, metadata !2474, metadata !DIExpression()), !dbg !2532
  %1328 = shl i32 %1327, 1, !dbg !2663
  %1329 = lshr i32 %1327, 31, !dbg !2663
  %1330 = or i32 %1328, %1329, !dbg !2663
  store i32 %1330, i32* %35, align 8, !dbg !2663, !tbaa !1559
  %1331 = add i32 %1330, -899497514, !dbg !2663
  %1332 = add i32 %1331, %1283, !dbg !2663
  %1333 = add i32 %1332, %1324, !dbg !2663
  %1334 = add i32 %1333, %1322, !dbg !2663
  call void @llvm.dbg.value(metadata i32 %1334, metadata !2472, metadata !DIExpression()), !dbg !2477
  %1335 = shl i32 %1298, 30, !dbg !2663
  %1336 = lshr i32 %1298, 2, !dbg !2663
  %1337 = or i32 %1335, %1336, !dbg !2663
  call void @llvm.dbg.value(metadata i32 %1337, metadata !2469, metadata !DIExpression()), !dbg !2477
  %1338 = shl i32 %1334, 5, !dbg !2665
  %1339 = lshr i32 %1334, 27, !dbg !2665
  %1340 = or i32 %1338, %1339, !dbg !2665
  %1341 = xor i32 %1337, %1319, !dbg !2665
  %1342 = xor i32 %1341, %1316, !dbg !2665
  %1343 = xor i32 %1092, %1052, !dbg !2665
  %1344 = xor i32 %1343, %1204, !dbg !2665
  %1345 = xor i32 %1344, %1294, !dbg !2665
  call void @llvm.dbg.value(metadata i32 %1345, metadata !2474, metadata !DIExpression()), !dbg !2532
  %1346 = shl i32 %1345, 1, !dbg !2665
  %1347 = lshr i32 %1345, 31, !dbg !2665
  %1348 = or i32 %1346, %1347, !dbg !2665
  store i32 %1348, i32* %36, align 4, !dbg !2665, !tbaa !1559
  %1349 = add i32 %1348, -899497514, !dbg !2665
  %1350 = add i32 %1349, %1301, !dbg !2665
  %1351 = add i32 %1350, %1342, !dbg !2665
  %1352 = add i32 %1351, %1340, !dbg !2665
  call void @llvm.dbg.value(metadata i32 %1352, metadata !2471, metadata !DIExpression()), !dbg !2477
  %1353 = shl i32 %1316, 30, !dbg !2665
  %1354 = lshr i32 %1316, 2, !dbg !2665
  %1355 = or i32 %1353, %1354, !dbg !2665
  call void @llvm.dbg.value(metadata i32 %1355, metadata !2468, metadata !DIExpression()), !dbg !2477
  %1356 = shl i32 %1352, 5, !dbg !2667
  %1357 = lshr i32 %1352, 27, !dbg !2667
  %1358 = or i32 %1356, %1357, !dbg !2667
  %1359 = xor i32 %1355, %1337, !dbg !2667
  %1360 = xor i32 %1359, %1334, !dbg !2667
  %1361 = xor i32 %1112, %1072, !dbg !2667
  %1362 = xor i32 %1361, %1222, !dbg !2667
  %1363 = xor i32 %1362, %1312, !dbg !2667
  call void @llvm.dbg.value(metadata i32 %1363, metadata !2474, metadata !DIExpression()), !dbg !2532
  %1364 = shl i32 %1363, 1, !dbg !2667
  %1365 = lshr i32 %1363, 31, !dbg !2667
  %1366 = or i32 %1364, %1365, !dbg !2667
  store i32 %1366, i32* %37, align 16, !dbg !2667, !tbaa !1559
  %1367 = add i32 %1366, -899497514, !dbg !2667
  %1368 = add i32 %1367, %1319, !dbg !2667
  %1369 = add i32 %1368, %1360, !dbg !2667
  %1370 = add i32 %1369, %1358, !dbg !2667
  call void @llvm.dbg.value(metadata i32 %1370, metadata !2470, metadata !DIExpression()), !dbg !2477
  %1371 = shl i32 %1334, 30, !dbg !2667
  %1372 = lshr i32 %1334, 2, !dbg !2667
  %1373 = or i32 %1371, %1372, !dbg !2667
  call void @llvm.dbg.value(metadata i32 %1373, metadata !2472, metadata !DIExpression()), !dbg !2477
  %1374 = shl i32 %1370, 5, !dbg !2669
  %1375 = lshr i32 %1370, 27, !dbg !2669
  %1376 = or i32 %1374, %1375, !dbg !2669
  %1377 = xor i32 %1373, %1355, !dbg !2669
  %1378 = xor i32 %1377, %1352, !dbg !2669
  %1379 = xor i32 %1132, %1092, !dbg !2669
  %1380 = xor i32 %1379, %1240, !dbg !2669
  %1381 = xor i32 %1380, %1330, !dbg !2669
  call void @llvm.dbg.value(metadata i32 %1381, metadata !2474, metadata !DIExpression()), !dbg !2532
  %1382 = shl i32 %1381, 1, !dbg !2669
  %1383 = lshr i32 %1381, 31, !dbg !2669
  %1384 = or i32 %1382, %1383, !dbg !2669
  store i32 %1384, i32* %38, align 4, !dbg !2669, !tbaa !1559
  %1385 = add i32 %1384, -899497514, !dbg !2669
  %1386 = add i32 %1385, %1337, !dbg !2669
  %1387 = add i32 %1386, %1378, !dbg !2669
  %1388 = add i32 %1387, %1376, !dbg !2669
  call void @llvm.dbg.value(metadata i32 %1388, metadata !2469, metadata !DIExpression()), !dbg !2477
  %1389 = shl i32 %1352, 30, !dbg !2669
  %1390 = lshr i32 %1352, 2, !dbg !2669
  %1391 = or i32 %1389, %1390, !dbg !2669
  call void @llvm.dbg.value(metadata i32 %1391, metadata !2471, metadata !DIExpression()), !dbg !2477
  %1392 = shl i32 %1388, 5, !dbg !2671
  %1393 = lshr i32 %1388, 27, !dbg !2671
  %1394 = or i32 %1392, %1393, !dbg !2671
  %1395 = xor i32 %1391, %1373, !dbg !2671
  %1396 = xor i32 %1395, %1370, !dbg !2671
  %1397 = xor i32 %1150, %1112, !dbg !2671
  %1398 = xor i32 %1397, %1258, !dbg !2671
  %1399 = xor i32 %1398, %1348, !dbg !2671
  call void @llvm.dbg.value(metadata i32 %1399, metadata !2474, metadata !DIExpression()), !dbg !2532
  %1400 = shl i32 %1399, 1, !dbg !2671
  %1401 = lshr i32 %1399, 31, !dbg !2671
  %1402 = or i32 %1400, %1401, !dbg !2671
  store i32 %1402, i32* %39, align 8, !dbg !2671, !tbaa !1559
  %1403 = add i32 %1402, -899497514, !dbg !2671
  %1404 = add i32 %1403, %1355, !dbg !2671
  %1405 = add i32 %1404, %1396, !dbg !2671
  %1406 = add i32 %1405, %1394, !dbg !2671
  call void @llvm.dbg.value(metadata i32 %1406, metadata !2468, metadata !DIExpression()), !dbg !2477
  %1407 = shl i32 %1370, 30, !dbg !2671
  %1408 = lshr i32 %1370, 2, !dbg !2671
  %1409 = or i32 %1407, %1408, !dbg !2671
  call void @llvm.dbg.value(metadata i32 %1409, metadata !2470, metadata !DIExpression()), !dbg !2477
  %1410 = shl i32 %1406, 5, !dbg !2673
  %1411 = lshr i32 %1406, 27, !dbg !2673
  %1412 = or i32 %1410, %1411, !dbg !2673
  %1413 = xor i32 %1409, %1391, !dbg !2673
  %1414 = xor i32 %1413, %1388, !dbg !2673
  %1415 = xor i32 %1168, %1132, !dbg !2673
  %1416 = xor i32 %1415, %1276, !dbg !2673
  %1417 = xor i32 %1416, %1366, !dbg !2673
  call void @llvm.dbg.value(metadata i32 %1417, metadata !2474, metadata !DIExpression()), !dbg !2532
  %1418 = shl i32 %1417, 1, !dbg !2673
  %1419 = lshr i32 %1417, 31, !dbg !2673
  %1420 = or i32 %1418, %1419, !dbg !2673
  store i32 %1420, i32* %40, align 4, !dbg !2673, !tbaa !1559
  %1421 = add i32 %1420, -899497514, !dbg !2673
  %1422 = add i32 %1421, %1373, !dbg !2673
  %1423 = add i32 %1422, %1414, !dbg !2673
  %1424 = add i32 %1423, %1412, !dbg !2673
  call void @llvm.dbg.value(metadata i32 %1424, metadata !2472, metadata !DIExpression()), !dbg !2477
  %1425 = shl i32 %1388, 30, !dbg !2673
  %1426 = lshr i32 %1388, 2, !dbg !2673
  %1427 = or i32 %1425, %1426, !dbg !2673
  call void @llvm.dbg.value(metadata i32 %1427, metadata !2469, metadata !DIExpression()), !dbg !2477
  %1428 = shl i32 %1424, 5, !dbg !2675
  %1429 = lshr i32 %1424, 27, !dbg !2675
  %1430 = or i32 %1428, %1429, !dbg !2675
  %1431 = xor i32 %1427, %1409, !dbg !2675
  %1432 = xor i32 %1431, %1406, !dbg !2675
  %1433 = xor i32 %1186, %1150, !dbg !2675
  %1434 = xor i32 %1433, %1294, !dbg !2675
  %1435 = xor i32 %1434, %1384, !dbg !2675
  call void @llvm.dbg.value(metadata i32 %1435, metadata !2474, metadata !DIExpression()), !dbg !2532
  %1436 = shl i32 %1435, 1, !dbg !2675
  %1437 = lshr i32 %1435, 31, !dbg !2675
  %1438 = or i32 %1436, %1437, !dbg !2675
  store i32 %1438, i32* %41, align 16, !dbg !2675, !tbaa !1559
  %1439 = add i32 %1438, -899497514, !dbg !2675
  %1440 = add i32 %1439, %1391, !dbg !2675
  %1441 = add i32 %1440, %1432, !dbg !2675
  %1442 = add i32 %1441, %1430, !dbg !2675
  call void @llvm.dbg.value(metadata i32 %1442, metadata !2471, metadata !DIExpression()), !dbg !2477
  %1443 = shl i32 %1406, 30, !dbg !2675
  %1444 = lshr i32 %1406, 2, !dbg !2675
  %1445 = or i32 %1443, %1444, !dbg !2675
  call void @llvm.dbg.value(metadata i32 %1445, metadata !2468, metadata !DIExpression()), !dbg !2477
  %1446 = shl i32 %1442, 5, !dbg !2677
  %1447 = lshr i32 %1442, 27, !dbg !2677
  %1448 = or i32 %1446, %1447, !dbg !2677
  %1449 = xor i32 %1445, %1427, !dbg !2677
  %1450 = xor i32 %1449, %1424, !dbg !2677
  %1451 = xor i32 %1204, %1168, !dbg !2677
  %1452 = xor i32 %1451, %1312, !dbg !2677
  %1453 = xor i32 %1452, %1402, !dbg !2677
  call void @llvm.dbg.value(metadata i32 %1453, metadata !2474, metadata !DIExpression()), !dbg !2532
  %1454 = shl i32 %1453, 1, !dbg !2677
  %1455 = lshr i32 %1453, 31, !dbg !2677
  %1456 = or i32 %1454, %1455, !dbg !2677
  store i32 %1456, i32* %42, align 4, !dbg !2677, !tbaa !1559
  %1457 = add i32 %1456, -899497514, !dbg !2677
  %1458 = add i32 %1457, %1409, !dbg !2677
  %1459 = add i32 %1458, %1450, !dbg !2677
  %1460 = add i32 %1459, %1448, !dbg !2677
  call void @llvm.dbg.value(metadata i32 %1460, metadata !2470, metadata !DIExpression()), !dbg !2477
  %1461 = shl i32 %1424, 30, !dbg !2677
  %1462 = lshr i32 %1424, 2, !dbg !2677
  %1463 = or i32 %1461, %1462, !dbg !2677
  call void @llvm.dbg.value(metadata i32 %1463, metadata !2472, metadata !DIExpression()), !dbg !2477
  %1464 = shl i32 %1460, 5, !dbg !2679
  %1465 = lshr i32 %1460, 27, !dbg !2679
  %1466 = or i32 %1464, %1465, !dbg !2679
  %1467 = xor i32 %1463, %1445, !dbg !2679
  %1468 = xor i32 %1467, %1442, !dbg !2679
  %1469 = xor i32 %1222, %1186, !dbg !2679
  %1470 = xor i32 %1469, %1330, !dbg !2679
  %1471 = xor i32 %1470, %1420, !dbg !2679
  call void @llvm.dbg.value(metadata i32 %1471, metadata !2474, metadata !DIExpression()), !dbg !2532
  %1472 = shl i32 %1471, 1, !dbg !2679
  %1473 = lshr i32 %1471, 31, !dbg !2679
  %1474 = or i32 %1472, %1473, !dbg !2679
  store i32 %1474, i32* %43, align 8, !dbg !2679, !tbaa !1559
  %1475 = add i32 %1474, -899497514, !dbg !2679
  %1476 = add i32 %1475, %1427, !dbg !2679
  %1477 = add i32 %1476, %1468, !dbg !2679
  %1478 = add i32 %1477, %1466, !dbg !2679
  call void @llvm.dbg.value(metadata i32 %1478, metadata !2469, metadata !DIExpression()), !dbg !2477
  %1479 = shl i32 %1442, 30, !dbg !2679
  %1480 = lshr i32 %1442, 2, !dbg !2679
  %1481 = or i32 %1479, %1480, !dbg !2679
  call void @llvm.dbg.value(metadata i32 %1481, metadata !2471, metadata !DIExpression()), !dbg !2477
  %1482 = shl i32 %1478, 5, !dbg !2681
  %1483 = lshr i32 %1478, 27, !dbg !2681
  %1484 = or i32 %1482, %1483, !dbg !2681
  %1485 = xor i32 %1481, %1463, !dbg !2681
  %1486 = xor i32 %1485, %1460, !dbg !2681
  %1487 = xor i32 %1240, %1204, !dbg !2681
  %1488 = xor i32 %1487, %1348, !dbg !2681
  %1489 = xor i32 %1488, %1438, !dbg !2681
  call void @llvm.dbg.value(metadata i32 %1489, metadata !2474, metadata !DIExpression()), !dbg !2532
  %1490 = shl i32 %1489, 1, !dbg !2681
  %1491 = lshr i32 %1489, 31, !dbg !2681
  %1492 = or i32 %1490, %1491, !dbg !2681
  store i32 %1492, i32* %44, align 4, !dbg !2681, !tbaa !1559
  call void @llvm.dbg.value(metadata i32 undef, metadata !2468, metadata !DIExpression()), !dbg !2477
  %1493 = shl i32 %1460, 30, !dbg !2681
  %1494 = lshr i32 %1460, 2, !dbg !2681
  %1495 = or i32 %1493, %1494, !dbg !2681
  call void @llvm.dbg.value(metadata i32 %1495, metadata !2470, metadata !DIExpression()), !dbg !2477
  %1496 = load i32, i32* %9, align 4, !dbg !2683, !tbaa !2284
  %1497 = add i32 %1492, -899497514, !dbg !2681
  %1498 = add i32 %1497, %1496, !dbg !2681
  %1499 = add i32 %1498, %1445, !dbg !2681
  %1500 = add i32 %1499, %1486, !dbg !2681
  %1501 = add i32 %1500, %1484, !dbg !2683
  store i32 %1501, i32* %9, align 4, !dbg !2683, !tbaa !2284
  call void @llvm.dbg.value(metadata i32 %1501, metadata !2468, metadata !DIExpression()), !dbg !2477
  %1502 = load <4 x i32>, <4 x i32>* %48, align 4, !dbg !2684, !tbaa !1559
  %1503 = insertelement <4 x i32> undef, i32 %1478, i32 0, !dbg !2684
  %1504 = insertelement <4 x i32> %1503, i32 %1495, i32 1, !dbg !2684
  %1505 = insertelement <4 x i32> %1504, i32 %1481, i32 2, !dbg !2684
  %1506 = insertelement <4 x i32> %1505, i32 %1463, i32 3, !dbg !2684
  %1507 = add <4 x i32> %1506, %1502, !dbg !2684
  store <4 x i32> %1507, <4 x i32>* %49, align 4, !dbg !2684, !tbaa !1559
  %1508 = icmp ult i32* %77, %7, !dbg !2494
  %1509 = shufflevector <4 x i32> %1507, <4 x i32> undef, <4 x i32> <i32 3, i32 2, i32 1, i32 0>, !dbg !2495
  br i1 %1508, label %50, label %1510, !dbg !2495, !llvm.loop !2685

1510:                                             ; preds = %50
  store i32 %1222, i32* %29, align 16, !dbg !2538, !tbaa !1559
  store i32 %1240, i32* %30, align 4, !dbg !2538, !tbaa !1559
  br label %1511, !dbg !2687

1511:                                             ; preds = %1510, %3
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %8) #18, !dbg !2687
  ret void, !dbg !2687
}

; Function Attrs: nounwind readnone speculatable willreturn
declare <4 x i32> @llvm.bswap.v4i32(<4 x i32>) #1

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @sha1_stream(%struct._IO_FILE* nocapture %0, i8* %1) local_unnamed_addr #8 !dbg !2688 {
  %3 = alloca %struct.sha1_ctx, align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2726, metadata !DIExpression()), !dbg !2734
  call void @llvm.dbg.value(metadata i8* %1, metadata !2727, metadata !DIExpression()), !dbg !2734
  %4 = tail call noalias dereferenceable_or_null(32840) i8* @malloc(i64 32840) #18, !dbg !2735
  call void @llvm.dbg.value(metadata i8* %4, metadata !2728, metadata !DIExpression()), !dbg !2734
  %5 = icmp eq i8* %4, null, !dbg !2736
  br i1 %5, label %41, label %6, !dbg !2738

6:                                                ; preds = %2
  %7 = bitcast %struct.sha1_ctx* %3 to i8*, !dbg !2739
  call void @llvm.lifetime.start.p0i8(i64 160, i8* nonnull %7) #18, !dbg !2739
  call void @llvm.dbg.declare(metadata %struct.sha1_ctx* %3, metadata !2729, metadata !DIExpression()), !dbg !2740
  call void @llvm.dbg.value(metadata %struct.sha1_ctx* %3, metadata !2267, metadata !DIExpression()), !dbg !2741
  %8 = bitcast %struct.sha1_ctx* %3 to <4 x i32>*, !dbg !2743
  store <4 x i32> <i32 1732584193, i32 -271733879, i32 -1732584194, i32 271733878>, <4 x i32>* %8, align 16, !dbg !2743, !tbaa !1559
  %9 = getelementptr inbounds %struct.sha1_ctx, %struct.sha1_ctx* %3, i64 0, i32 4, !dbg !2744
  %10 = bitcast i32* %9 to <4 x i32>*, !dbg !2745
  store <4 x i32> <i32 -1009589776, i32 0, i32 0, i32 0>, <4 x i32>* %10, align 16, !dbg !2745, !tbaa !1559
  %11 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !2746
  br label %12, !dbg !2755

12:                                               ; preds = %25, %6
  %13 = phi i64 [ 0, %6 ], [ %26, %25 ], !dbg !2756
  call void @llvm.dbg.value(metadata i64 %13, metadata !2730, metadata !DIExpression()), !dbg !2734
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2751, metadata !DIExpression()), !dbg !2746
  %14 = load i32, i32* %11, align 8, !dbg !2757, !tbaa !1977
  %15 = and i32 %14, 16, !dbg !2757
  %16 = icmp eq i32 %15, 0, !dbg !2758
  br i1 %16, label %17, label %33, !dbg !2759

17:                                               ; preds = %12
  %18 = getelementptr inbounds i8, i8* %4, i64 %13, !dbg !2760
  %19 = sub i64 32768, %13, !dbg !2760
  %20 = tail call i64 @fread_unlocked(i8* nonnull %18, i64 1, i64 %19, %struct._IO_FILE* nonnull %0), !dbg !2760
  call void @llvm.dbg.value(metadata i64 %20, metadata !2731, metadata !DIExpression()), !dbg !2756
  %21 = add i64 %20, %13, !dbg !2761
  call void @llvm.dbg.value(metadata i64 %21, metadata !2730, metadata !DIExpression()), !dbg !2734
  %22 = icmp eq i64 %21, 32768, !dbg !2762
  br i1 %22, label %32, label %23, !dbg !2764

23:                                               ; preds = %17
  %24 = icmp eq i64 %20, 0, !dbg !2765
  br i1 %24, label %27, label %25, !dbg !2767

25:                                               ; preds = %23, %32
  %26 = phi i64 [ %21, %23 ], [ 0, %32 ]
  br label %12, !dbg !2734, !llvm.loop !2768

27:                                               ; preds = %23
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2771, metadata !DIExpression()), !dbg !2774
  %28 = load i32, i32* %11, align 8, !dbg !2778, !tbaa !1977
  %29 = and i32 %28, 32, !dbg !2778
  %30 = icmp eq i32 %29, 0, !dbg !2779
  br i1 %30, label %33, label %31, !dbg !2780

31:                                               ; preds = %27
  tail call void @free(i8* %4) #18, !dbg !2781
  call void @llvm.dbg.value(metadata i64 32768, metadata !2730, metadata !DIExpression()), !dbg !2734
  br label %39

32:                                               ; preds = %17
  call void @sha1_process_block(i8* nonnull %4, i64 32768, %struct.sha1_ctx* nonnull %3), !dbg !2783
  call void @llvm.dbg.value(metadata i64 32768, metadata !2730, metadata !DIExpression()), !dbg !2734
  br label %25

33:                                               ; preds = %12, %27
  %34 = phi i64 [ %21, %27 ], [ %13, %12 ]
  call void @llvm.dbg.value(metadata i64 32768, metadata !2730, metadata !DIExpression()), !dbg !2734
  call void @llvm.dbg.label(metadata !2733), !dbg !2784
  %35 = icmp eq i64 %34, 0, !dbg !2785
  br i1 %35, label %37, label %36, !dbg !2787

36:                                               ; preds = %33
  call void @sha1_process_bytes(i8* nonnull %4, i64 %34, %struct.sha1_ctx* nonnull %3), !dbg !2788
  br label %37, !dbg !2788

37:                                               ; preds = %33, %36
  %38 = call i8* @sha1_finish_ctx(%struct.sha1_ctx* nonnull %3, i8* %1), !dbg !2789
  call void @free(i8* %4) #18, !dbg !2790
  br label %39, !dbg !2791

39:                                               ; preds = %31, %37
  %40 = phi i32 [ 0, %37 ], [ 1, %31 ]
  call void @llvm.lifetime.end.p0i8(i64 160, i8* nonnull %7) #18, !dbg !2792
  br label %41

41:                                               ; preds = %39, %2
  %42 = phi i32 [ %40, %39 ], [ 1, %2 ]
  ret i32 %42, !dbg !2792
}

; Function Attrs: nofree nounwind
declare noalias i8* @malloc(i64) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare i64 @fread_unlocked(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @sha1_process_bytes(i8* %0, i64 %1, %struct.sha1_ctx* %2) local_unnamed_addr #8 !dbg !2793 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2795, metadata !DIExpression()), !dbg !2805
  call void @llvm.dbg.value(metadata i64 %1, metadata !2796, metadata !DIExpression()), !dbg !2805
  call void @llvm.dbg.value(metadata %struct.sha1_ctx* %2, metadata !2797, metadata !DIExpression()), !dbg !2805
  %4 = getelementptr inbounds %struct.sha1_ctx, %struct.sha1_ctx* %2, i64 0, i32 6, !dbg !2806
  %5 = load i32, i32* %4, align 4, !dbg !2806, !tbaa !2371
  %6 = icmp eq i32 %5, 0, !dbg !2807
  br i1 %6, label %31, label %7, !dbg !2808

7:                                                ; preds = %3
  %8 = zext i32 %5 to i64, !dbg !2809
  call void @llvm.dbg.value(metadata i64 %8, metadata !2798, metadata !DIExpression()), !dbg !2810
  %9 = sub nsw i64 128, %8, !dbg !2811
  %10 = icmp ugt i64 %9, %1, !dbg !2812
  %11 = select i1 %10, i64 %1, i64 %9, !dbg !2813
  call void @llvm.dbg.value(metadata i64 %11, metadata !2801, metadata !DIExpression()), !dbg !2810
  %12 = getelementptr inbounds %struct.sha1_ctx, %struct.sha1_ctx* %2, i64 0, i32 7, i64 0, !dbg !2814
  %13 = bitcast i32* %12 to i8*, !dbg !2814
  %14 = getelementptr inbounds i8, i8* %13, i64 %8, !dbg !2814
  call void @llvm.dbg.value(metadata i8* %14, metadata !2303, metadata !DIExpression()) #18, !dbg !2815
  call void @llvm.dbg.value(metadata i8* %0, metadata !2311, metadata !DIExpression()) #18, !dbg !2815
  call void @llvm.dbg.value(metadata i64 %11, metadata !2312, metadata !DIExpression()) #18, !dbg !2815
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %14, i8* nonnull align 1 %0, i64 %11, i1 false) #18, !dbg !2817
  %15 = load i32, i32* %4, align 4, !dbg !2818, !tbaa !2371
  %16 = trunc i64 %11 to i32, !dbg !2818
  %17 = add i32 %15, %16, !dbg !2818
  store i32 %17, i32* %4, align 4, !dbg !2818, !tbaa !2371
  %18 = icmp ugt i32 %17, 64, !dbg !2819
  br i1 %18, label %19, label %28, !dbg !2821

19:                                               ; preds = %7
  %20 = and i32 %17, -64, !dbg !2822
  %21 = zext i32 %20 to i64, !dbg !2824
  tail call void @sha1_process_block(i8* nonnull %13, i64 %21, %struct.sha1_ctx* nonnull %2), !dbg !2825
  %22 = load i32, i32* %4, align 4, !dbg !2826, !tbaa !2371
  %23 = and i32 %22, 63, !dbg !2826
  store i32 %23, i32* %4, align 4, !dbg !2826, !tbaa !2371
  %24 = add i64 %11, %8, !dbg !2827
  %25 = and i64 %24, -64, !dbg !2828
  %26 = getelementptr inbounds i8, i8* %13, i64 %25, !dbg !2829
  %27 = zext i32 %23 to i64, !dbg !2830
  call void @llvm.dbg.value(metadata i8* %13, metadata !2303, metadata !DIExpression()) #18, !dbg !2831
  call void @llvm.dbg.value(metadata i8* %26, metadata !2311, metadata !DIExpression()) #18, !dbg !2831
  call void @llvm.dbg.value(metadata i64 %27, metadata !2312, metadata !DIExpression()) #18, !dbg !2831
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %13, i8* nonnull align 1 %26, i64 %27, i1 false) #18, !dbg !2833
  br label %28, !dbg !2834

28:                                               ; preds = %19, %7
  %29 = getelementptr inbounds i8, i8* %0, i64 %11, !dbg !2835
  call void @llvm.dbg.value(metadata i8* %29, metadata !2795, metadata !DIExpression()), !dbg !2805
  %30 = sub i64 %1, %11, !dbg !2836
  call void @llvm.dbg.value(metadata i64 %30, metadata !2796, metadata !DIExpression()), !dbg !2805
  br label %31, !dbg !2837

31:                                               ; preds = %3, %28
  %32 = phi i64 [ %30, %28 ], [ %1, %3 ]
  %33 = phi i8* [ %29, %28 ], [ %0, %3 ]
  call void @llvm.dbg.value(metadata i8* %33, metadata !2795, metadata !DIExpression()), !dbg !2805
  call void @llvm.dbg.value(metadata i64 %32, metadata !2796, metadata !DIExpression()), !dbg !2805
  %34 = icmp ugt i64 %32, 63, !dbg !2838
  br i1 %34, label %35, label %56, !dbg !2840

35:                                               ; preds = %31
  %36 = ptrtoint i8* %33 to i64, !dbg !2841
  %37 = and i64 %36, 3, !dbg !2841
  %38 = icmp eq i64 %37, 0, !dbg !2841
  br i1 %38, label %52, label %39, !dbg !2844

39:                                               ; preds = %35
  call void @llvm.dbg.value(metadata i8* %33, metadata !2795, metadata !DIExpression()), !dbg !2805
  call void @llvm.dbg.value(metadata i64 %32, metadata !2796, metadata !DIExpression()), !dbg !2805
  %40 = icmp ugt i64 %32, 64, !dbg !2845
  br i1 %40, label %41, label %63, !dbg !2846

41:                                               ; preds = %39
  %42 = getelementptr inbounds %struct.sha1_ctx, %struct.sha1_ctx* %2, i64 0, i32 7, i64 0, !dbg !2847
  %43 = bitcast i32* %42 to i8*, !dbg !2847
  %44 = add i64 %32, -65, !dbg !2846
  %45 = and i64 %44, -64, !dbg !2846
  br label %46, !dbg !2846

46:                                               ; preds = %41, %46
  %47 = phi i8* [ %33, %41 ], [ %49, %46 ]
  %48 = phi i64 [ %32, %41 ], [ %50, %46 ]
  call void @llvm.dbg.value(metadata i8* %47, metadata !2795, metadata !DIExpression()), !dbg !2805
  call void @llvm.dbg.value(metadata i64 %48, metadata !2796, metadata !DIExpression()), !dbg !2805
  call void @llvm.dbg.value(metadata i8* %43, metadata !2303, metadata !DIExpression()) #18, !dbg !2849
  call void @llvm.dbg.value(metadata i8* %47, metadata !2311, metadata !DIExpression()) #18, !dbg !2849
  call void @llvm.dbg.value(metadata i64 64, metadata !2312, metadata !DIExpression()) #18, !dbg !2849
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 dereferenceable(64) %43, i8* nonnull align 1 dereferenceable(64) %47, i64 64, i1 false) #18, !dbg !2851
  tail call void @sha1_process_block(i8* nonnull %43, i64 64, %struct.sha1_ctx* %2), !dbg !2852
  %49 = getelementptr inbounds i8, i8* %47, i64 64, !dbg !2853
  call void @llvm.dbg.value(metadata i8* %49, metadata !2795, metadata !DIExpression()), !dbg !2805
  %50 = add i64 %48, -64, !dbg !2854
  call void @llvm.dbg.value(metadata i64 %50, metadata !2796, metadata !DIExpression()), !dbg !2805
  %51 = icmp ugt i64 %50, 64, !dbg !2845
  br i1 %51, label %46, label %60, !dbg !2846, !llvm.loop !2855

52:                                               ; preds = %35
  %53 = and i64 %32, -64, !dbg !2857
  tail call void @sha1_process_block(i8* %33, i64 %53, %struct.sha1_ctx* nonnull %2), !dbg !2859
  %54 = getelementptr inbounds i8, i8* %33, i64 %53, !dbg !2860
  call void @llvm.dbg.value(metadata i8* %54, metadata !2795, metadata !DIExpression()), !dbg !2805
  %55 = and i64 %32, 63, !dbg !2861
  call void @llvm.dbg.value(metadata i64 %55, metadata !2796, metadata !DIExpression()), !dbg !2805
  br label %56

56:                                               ; preds = %52, %31
  %57 = phi i64 [ %55, %52 ], [ %32, %31 ], !dbg !2805
  %58 = phi i8* [ %54, %52 ], [ %33, %31 ], !dbg !2805
  call void @llvm.dbg.value(metadata i8* %58, metadata !2795, metadata !DIExpression()), !dbg !2805
  call void @llvm.dbg.value(metadata i64 %57, metadata !2796, metadata !DIExpression()), !dbg !2805
  %59 = icmp eq i64 %57, 0, !dbg !2862
  br i1 %59, label %80, label %63, !dbg !2863

60:                                               ; preds = %46
  %61 = add i64 %32, -64, !dbg !2846
  %62 = sub i64 %61, %45, !dbg !2846
  br label %63, !dbg !2864

63:                                               ; preds = %60, %39, %56
  %64 = phi i8* [ %58, %56 ], [ %33, %39 ], [ %49, %60 ]
  %65 = phi i64 [ %57, %56 ], [ 64, %39 ], [ %62, %60 ]
  %66 = load i32, i32* %4, align 4, !dbg !2864, !tbaa !2371
  %67 = zext i32 %66 to i64, !dbg !2865
  call void @llvm.dbg.value(metadata i64 %67, metadata !2802, metadata !DIExpression()), !dbg !2866
  %68 = getelementptr inbounds %struct.sha1_ctx, %struct.sha1_ctx* %2, i64 0, i32 7, !dbg !2867
  %69 = bitcast [32 x i32]* %68 to i8*, !dbg !2868
  %70 = getelementptr inbounds i8, i8* %69, i64 %67, !dbg !2868
  call void @llvm.dbg.value(metadata i8* %70, metadata !2303, metadata !DIExpression()) #18, !dbg !2869
  call void @llvm.dbg.value(metadata i8* %58, metadata !2311, metadata !DIExpression()) #18, !dbg !2869
  call void @llvm.dbg.value(metadata i64 %57, metadata !2312, metadata !DIExpression()) #18, !dbg !2869
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %70, i8* nonnull align 1 %64, i64 %65, i1 false) #18, !dbg !2871
  %71 = add nuw nsw i64 %65, %67, !dbg !2872
  call void @llvm.dbg.value(metadata i64 %71, metadata !2802, metadata !DIExpression()), !dbg !2866
  %72 = icmp ugt i64 %71, 63, !dbg !2873
  br i1 %72, label %73, label %77, !dbg !2875

73:                                               ; preds = %63
  tail call void @sha1_process_block(i8* nonnull %69, i64 64, %struct.sha1_ctx* nonnull %2), !dbg !2876
  %74 = add nsw i64 %71, -64, !dbg !2878
  call void @llvm.dbg.value(metadata i64 %74, metadata !2802, metadata !DIExpression()), !dbg !2866
  %75 = getelementptr inbounds %struct.sha1_ctx, %struct.sha1_ctx* %2, i64 0, i32 7, i64 16, !dbg !2879
  %76 = bitcast i32* %75 to i8*, !dbg !2880
  call void @llvm.dbg.value(metadata i8* %69, metadata !2303, metadata !DIExpression()) #18, !dbg !2881
  call void @llvm.dbg.value(metadata i8* %76, metadata !2311, metadata !DIExpression()) #18, !dbg !2881
  call void @llvm.dbg.value(metadata i64 %74, metadata !2312, metadata !DIExpression()) #18, !dbg !2881
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %69, i8* nonnull align 1 %76, i64 %74, i1 false) #18, !dbg !2883
  br label %77, !dbg !2884

77:                                               ; preds = %73, %63
  %78 = phi i64 [ %74, %73 ], [ %71, %63 ], !dbg !2866
  call void @llvm.dbg.value(metadata i64 %78, metadata !2802, metadata !DIExpression()), !dbg !2866
  %79 = trunc i64 %78 to i32, !dbg !2885
  store i32 %79, i32* %4, align 4, !dbg !2886, !tbaa !2371
  br label %80, !dbg !2887

80:                                               ; preds = %56, %77
  ret void, !dbg !2888
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @sha1_buffer(i8* %0, i64 %1, i8* returned %2) local_unnamed_addr #8 !dbg !2889 {
  %4 = alloca %struct.sha1_ctx, align 16
  call void @llvm.dbg.value(metadata i8* %0, metadata !2893, metadata !DIExpression()), !dbg !2897
  call void @llvm.dbg.value(metadata i64 %1, metadata !2894, metadata !DIExpression()), !dbg !2897
  call void @llvm.dbg.value(metadata i8* %2, metadata !2895, metadata !DIExpression()), !dbg !2897
  %5 = bitcast %struct.sha1_ctx* %4 to i8*, !dbg !2898
  call void @llvm.lifetime.start.p0i8(i64 160, i8* nonnull %5) #18, !dbg !2898
  call void @llvm.dbg.declare(metadata %struct.sha1_ctx* %4, metadata !2896, metadata !DIExpression()), !dbg !2899
  call void @llvm.dbg.value(metadata %struct.sha1_ctx* %4, metadata !2267, metadata !DIExpression()), !dbg !2900
  %6 = bitcast %struct.sha1_ctx* %4 to <4 x i32>*, !dbg !2902
  store <4 x i32> <i32 1732584193, i32 -271733879, i32 -1732584194, i32 271733878>, <4 x i32>* %6, align 16, !dbg !2902, !tbaa !1559
  %7 = getelementptr inbounds %struct.sha1_ctx, %struct.sha1_ctx* %4, i64 0, i32 4, !dbg !2903
  %8 = bitcast i32* %7 to <4 x i32>*, !dbg !2904
  store <4 x i32> <i32 -1009589776, i32 0, i32 0, i32 0>, <4 x i32>* %8, align 16, !dbg !2904, !tbaa !1559
  call void @sha1_process_bytes(i8* %0, i64 %1, %struct.sha1_ctx* nonnull %4), !dbg !2905
  %9 = call i8* @sha1_finish_ctx(%struct.sha1_ctx* nonnull %4, i8* %2), !dbg !2906
  call void @llvm.lifetime.end.p0i8(i64 160, i8* nonnull %5) #18, !dbg !2907
  ret i8* %9, !dbg !2908
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @fdadvise(i32 %0, i64 %1, i64 %2, i32 %3) local_unnamed_addr #8 !dbg !2909 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2915, metadata !DIExpression()), !dbg !2921
  call void @llvm.dbg.value(metadata i64 %1, metadata !2916, metadata !DIExpression()), !dbg !2921
  call void @llvm.dbg.value(metadata i64 %2, metadata !2917, metadata !DIExpression()), !dbg !2921
  call void @llvm.dbg.value(metadata i32 %3, metadata !2918, metadata !DIExpression()), !dbg !2921
  %5 = tail call i32 @posix_fadvise(i32 %0, i64 %1, i64 %2, i32 %3) #18, !dbg !2922
  call void @llvm.dbg.value(metadata i32 %5, metadata !2919, metadata !DIExpression()), !dbg !2923
  ret void, !dbg !2924
}

; Function Attrs: nounwind
declare !dbg !570 i32 @posix_fadvise(i32, i64, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @fadvise(%struct._IO_FILE* %0, i32 %1) local_unnamed_addr #8 !dbg !2925 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2931, metadata !DIExpression()), !dbg !2933
  call void @llvm.dbg.value(metadata i32 %1, metadata !2932, metadata !DIExpression()), !dbg !2933
  %3 = icmp eq %struct._IO_FILE* %0, null, !dbg !2934
  br i1 %3, label %7, label %4, !dbg !2936

4:                                                ; preds = %2
  %5 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #18, !dbg !2937
  call void @llvm.dbg.value(metadata i32 %5, metadata !2915, metadata !DIExpression()) #18, !dbg !2938
  call void @llvm.dbg.value(metadata i64 0, metadata !2916, metadata !DIExpression()) #18, !dbg !2938
  call void @llvm.dbg.value(metadata i64 0, metadata !2917, metadata !DIExpression()) #18, !dbg !2938
  call void @llvm.dbg.value(metadata i32 %1, metadata !2918, metadata !DIExpression()) #18, !dbg !2938
  %6 = tail call i32 @posix_fadvise(i32 %5, i64 0, i64 0, i32 %1) #18, !dbg !2940
  call void @llvm.dbg.value(metadata i32 %6, metadata !2919, metadata !DIExpression()) #18, !dbg !2941
  br label %7, !dbg !2942

7:                                                ; preds = %2, %4
  ret void, !dbg !2943
}

; Function Attrs: nofree nounwind
declare !dbg !573 i32 @fileno(%struct._IO_FILE* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local %struct._IO_FILE* @fopen_safer(i8* nocapture readonly %0, i8* nocapture readonly %1) local_unnamed_addr #8 !dbg !2944 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2950, metadata !DIExpression()), !dbg !2965
  call void @llvm.dbg.value(metadata i8* %1, metadata !2951, metadata !DIExpression()), !dbg !2965
  %3 = tail call %struct._IO_FILE* @fopen(i8* %0, i8* %1), !dbg !2966
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %3, metadata !2952, metadata !DIExpression()), !dbg !2965
  %4 = icmp eq %struct._IO_FILE* %3, null, !dbg !2967
  br i1 %4, label %25, label %5, !dbg !2968

5:                                                ; preds = %2
  %6 = tail call i32 @fileno(%struct._IO_FILE* nonnull %3) #18, !dbg !2969
  call void @llvm.dbg.value(metadata i32 %6, metadata !2953, metadata !DIExpression()), !dbg !2970
  %7 = icmp ult i32 %6, 3, !dbg !2971
  br i1 %7, label %8, label %25, !dbg !2971

8:                                                ; preds = %5
  %9 = tail call i32 @dup_safer(i32 %6) #18, !dbg !2972
  call void @llvm.dbg.value(metadata i32 %9, metadata !2956, metadata !DIExpression()), !dbg !2973
  %10 = icmp slt i32 %9, 0, !dbg !2974
  br i1 %10, label %11, label %15, !dbg !2975

11:                                               ; preds = %8
  %12 = tail call i32* @__errno_location() #24, !dbg !2976
  %13 = load i32, i32* %12, align 4, !dbg !2976, !tbaa !1559
  call void @llvm.dbg.value(metadata i32 %13, metadata !2959, metadata !DIExpression()), !dbg !2977
  %14 = tail call i32 @rpl_fclose(%struct._IO_FILE* nonnull %3) #18, !dbg !2978
  store i32 %13, i32* %12, align 4, !dbg !2979, !tbaa !1559
  br label %25

15:                                               ; preds = %8
  %16 = tail call i32 @rpl_fclose(%struct._IO_FILE* nonnull %3) #18, !dbg !2980
  %17 = icmp eq i32 %16, 0, !dbg !2981
  br i1 %17, label %18, label %21, !dbg !2982

18:                                               ; preds = %15
  %19 = tail call %struct._IO_FILE* @fdopen(i32 %9, i8* %1) #18, !dbg !2983
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %19, metadata !2952, metadata !DIExpression()), !dbg !2965
  %20 = icmp eq %struct._IO_FILE* %19, null, !dbg !2984
  br i1 %20, label %21, label %25, !dbg !2985

21:                                               ; preds = %18, %15
  call void @llvm.dbg.value(metadata %struct._IO_FILE* undef, metadata !2952, metadata !DIExpression()), !dbg !2965
  %22 = tail call i32* @__errno_location() #24, !dbg !2986
  %23 = load i32, i32* %22, align 4, !dbg !2986, !tbaa !1559
  call void @llvm.dbg.value(metadata i32 %23, metadata !2962, metadata !DIExpression()), !dbg !2987
  %24 = tail call i32 @close(i32 %9) #18, !dbg !2988
  store i32 %23, i32* %22, align 4, !dbg !2989, !tbaa !1559
  br label %25

25:                                               ; preds = %5, %18, %2, %21, %11
  %26 = phi %struct._IO_FILE* [ null, %11 ], [ null, %21 ], [ null, %2 ], [ %19, %18 ], [ %3, %5 ], !dbg !2965
  ret %struct._IO_FILE* %26, !dbg !2990
}

; Function Attrs: nofree nounwind
declare noalias %struct._IO_FILE* @fopen(i8* nocapture readonly, i8* nocapture readonly) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare !dbg !649 noalias %struct._IO_FILE* @fdopen(i32, i8* nocapture readonly) local_unnamed_addr #4

declare !dbg !551 i32 @close(i32) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_program_name(i8* %0) local_unnamed_addr #8 !dbg !2991 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2993, metadata !DIExpression()), !dbg !2996
  %2 = icmp eq i8* %0, null, !dbg !2997
  br i1 %2, label %3, label %6, !dbg !2999

3:                                                ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !3000, !tbaa !1347
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.101, i64 0, i64 0), i64 55, i64 1, %struct._IO_FILE* %4) #25, !dbg !3002
  tail call void @abort() #22, !dbg !3003
  unreachable, !dbg !3003

6:                                                ; preds = %1
  %7 = tail call i8* @strrchr(i8* nonnull %0, i32 47) #21, !dbg !3004
  call void @llvm.dbg.value(metadata i8* %7, metadata !2994, metadata !DIExpression()), !dbg !2996
  %8 = icmp eq i8* %7, null, !dbg !3005
  %9 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !3006
  %10 = select i1 %8, i8* %0, i8* %9, !dbg !3006
  call void @llvm.dbg.value(metadata i8* %10, metadata !2995, metadata !DIExpression()), !dbg !2996
  %11 = ptrtoint i8* %10 to i64, !dbg !3007
  %12 = ptrtoint i8* %0 to i64, !dbg !3007
  %13 = sub i64 %11, %12, !dbg !3007
  %14 = icmp sgt i64 %13, 6, !dbg !3009
  br i1 %14, label %15, label %24, !dbg !3010

15:                                               ; preds = %6
  %16 = getelementptr inbounds i8, i8* %10, i64 -7, !dbg !3011
  %17 = tail call i32 @strncmp(i8* nonnull %16, i8* nonnull dereferenceable(8) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.102, i64 0, i64 0), i64 7) #21, !dbg !3012
  %18 = icmp eq i32 %17, 0, !dbg !3013
  br i1 %18, label %19, label %24, !dbg !3014

19:                                               ; preds = %15
  call void @llvm.dbg.value(metadata i8* %10, metadata !2993, metadata !DIExpression()), !dbg !2996
  %20 = tail call i32 @strncmp(i8* nonnull %10, i8* nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.103, i64 0, i64 0), i64 3) #21, !dbg !3015
  %21 = icmp eq i32 %20, 0, !dbg !3018
  br i1 %21, label %22, label %24, !dbg !3019

22:                                               ; preds = %19
  %23 = getelementptr inbounds i8, i8* %10, i64 3, !dbg !3020
  call void @llvm.dbg.value(metadata i8* %23, metadata !2993, metadata !DIExpression()), !dbg !2996
  store i8* %23, i8** @program_invocation_short_name, align 8, !dbg !3022, !tbaa !1347
  br label %24, !dbg !3023

24:                                               ; preds = %19, %22, %15, %6
  %25 = phi i8* [ %23, %22 ], [ %10, %19 ], [ %0, %15 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i8* %25, metadata !2993, metadata !DIExpression()), !dbg !2996
  store i8* %25, i8** @program_name, align 8, !dbg !3024, !tbaa !1347
  store i8* %25, i8** @program_invocation_name, align 8, !dbg !3025, !tbaa !1347
  ret void, !dbg !3026
}

; Function Attrs: nofree nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) local_unnamed_addr #12

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #7

; Function Attrs: nofree nounwind readonly
declare i8* @strrchr(i8*, i32) local_unnamed_addr #6

; Function Attrs: nounwind sspstrong uwtable
define dso_local %struct.quoting_options* @clone_quoting_options(%struct.quoting_options* %0) local_unnamed_addr #8 !dbg !3027 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !3032, metadata !DIExpression()), !dbg !3035
  %2 = tail call i32* @__errno_location() #24, !dbg !3036
  %3 = load i32, i32* %2, align 4, !dbg !3036, !tbaa !1559
  call void @llvm.dbg.value(metadata i32 %3, metadata !3033, metadata !DIExpression()), !dbg !3035
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !3037
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !3037
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3037
  %7 = tail call i8* @xmemdup(i8* %6, i64 56) #18, !dbg !3038
  %8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !3038
  call void @llvm.dbg.value(metadata %struct.quoting_options* %8, metadata !3034, metadata !DIExpression()), !dbg !3035
  store i32 %3, i32* %2, align 4, !dbg !3039, !tbaa !1559
  ret %struct.quoting_options* %8, !dbg !3040
}

; Function Attrs: norecurse nounwind readonly sspstrong uwtable
define dso_local i32 @get_quoting_style(%struct.quoting_options* readonly %0) local_unnamed_addr #13 !dbg !3041 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !3045, metadata !DIExpression()), !dbg !3046
  %2 = icmp eq %struct.quoting_options* %0, null, !dbg !3047
  %3 = select i1 %2, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !3047
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !3048
  %5 = load i32, i32* %4, align 8, !dbg !3048, !tbaa !3049
  ret i32 %5, !dbg !3051
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable writeonly
define dso_local void @set_quoting_style(%struct.quoting_options* %0, i32 %1) local_unnamed_addr #10 !dbg !3052 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !3056, metadata !DIExpression()), !dbg !3058
  call void @llvm.dbg.value(metadata i32 %1, metadata !3057, metadata !DIExpression()), !dbg !3058
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !3059
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !3059
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3060
  store i32 %1, i32* %5, align 8, !dbg !3061, !tbaa !3049
  ret void, !dbg !3062
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable
define dso_local i32 @set_char_quoting(%struct.quoting_options* %0, i8 signext %1, i32 %2) local_unnamed_addr #14 !dbg !3063 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !3067, metadata !DIExpression()), !dbg !3075
  call void @llvm.dbg.value(metadata i8 %1, metadata !3068, metadata !DIExpression()), !dbg !3075
  call void @llvm.dbg.value(metadata i32 %2, metadata !3069, metadata !DIExpression()), !dbg !3075
  call void @llvm.dbg.value(metadata i8 %1, metadata !3070, metadata !DIExpression()), !dbg !3075
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !3076
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !3076
  %6 = lshr i8 %1, 5, !dbg !3077
  %7 = zext i8 %6 to i64, !dbg !3077
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !3078
  call void @llvm.dbg.value(metadata i32* %8, metadata !3071, metadata !DIExpression()), !dbg !3075
  %9 = and i8 %1, 31, !dbg !3079
  %10 = zext i8 %9 to i32, !dbg !3079
  call void @llvm.dbg.value(metadata i32 %10, metadata !3073, metadata !DIExpression()), !dbg !3075
  %11 = load i32, i32* %8, align 4, !dbg !3080, !tbaa !1559
  %12 = lshr i32 %11, %10, !dbg !3081
  %13 = and i32 %12, 1, !dbg !3082
  call void @llvm.dbg.value(metadata i32 %13, metadata !3074, metadata !DIExpression()), !dbg !3075
  %14 = and i32 %2, 1, !dbg !3083
  %15 = xor i32 %13, %14, !dbg !3084
  %16 = shl i32 %15, %10, !dbg !3085
  %17 = xor i32 %16, %11, !dbg !3086
  store i32 %17, i32* %8, align 4, !dbg !3086, !tbaa !1559
  ret i32 %13, !dbg !3087
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable
define dso_local i32 @set_quoting_flags(%struct.quoting_options* %0, i32 %1) local_unnamed_addr #14 !dbg !3088 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !3092, metadata !DIExpression()), !dbg !3095
  call void @llvm.dbg.value(metadata i32 %1, metadata !3093, metadata !DIExpression()), !dbg !3095
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !3096
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !3098
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !3092, metadata !DIExpression()), !dbg !3095
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !3099
  %6 = load i32, i32* %5, align 4, !dbg !3099, !tbaa !3100
  call void @llvm.dbg.value(metadata i32 %6, metadata !3094, metadata !DIExpression()), !dbg !3095
  store i32 %1, i32* %5, align 4, !dbg !3101, !tbaa !3100
  ret i32 %6, !dbg !3102
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_custom_quoting(%struct.quoting_options* %0, i8* %1, i8* %2) local_unnamed_addr #8 !dbg !3103 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !3107, metadata !DIExpression()), !dbg !3110
  call void @llvm.dbg.value(metadata i8* %1, metadata !3108, metadata !DIExpression()), !dbg !3110
  call void @llvm.dbg.value(metadata i8* %2, metadata !3109, metadata !DIExpression()), !dbg !3110
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !3111
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !3113
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !3107, metadata !DIExpression()), !dbg !3110
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3114
  store i32 10, i32* %6, align 8, !dbg !3115, !tbaa !3049
  %7 = icmp ne i8* %1, null, !dbg !3116
  %8 = icmp ne i8* %2, null, !dbg !3118
  %9 = and i1 %7, %8, !dbg !3119
  br i1 %9, label %11, label %10, !dbg !3119

10:                                               ; preds = %3
  tail call void @abort() #22, !dbg !3120
  unreachable, !dbg !3120

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3121
  store i8* %1, i8** %12, align 8, !dbg !3122, !tbaa !3123
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3124
  store i8* %2, i8** %13, align 8, !dbg !3125, !tbaa !3126
  ret void, !dbg !3127
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @quotearg_buffer(i8* %0, i64 %1, i8* %2, i64 %3, %struct.quoting_options* readonly %4) local_unnamed_addr #8 !dbg !3128 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3132, metadata !DIExpression()), !dbg !3140
  call void @llvm.dbg.value(metadata i64 %1, metadata !3133, metadata !DIExpression()), !dbg !3140
  call void @llvm.dbg.value(metadata i8* %2, metadata !3134, metadata !DIExpression()), !dbg !3140
  call void @llvm.dbg.value(metadata i64 %3, metadata !3135, metadata !DIExpression()), !dbg !3140
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !3136, metadata !DIExpression()), !dbg !3140
  %6 = icmp eq %struct.quoting_options* %4, null, !dbg !3141
  %7 = select i1 %6, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %4, !dbg !3141
  call void @llvm.dbg.value(metadata %struct.quoting_options* %7, metadata !3137, metadata !DIExpression()), !dbg !3140
  %8 = tail call i32* @__errno_location() #24, !dbg !3142
  %9 = load i32, i32* %8, align 4, !dbg !3142, !tbaa !1559
  call void @llvm.dbg.value(metadata i32 %9, metadata !3138, metadata !DIExpression()), !dbg !3140
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !3143
  %11 = load i32, i32* %10, align 8, !dbg !3143, !tbaa !3049
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !3144
  %13 = load i32, i32* %12, align 4, !dbg !3144, !tbaa !3100
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !3145
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !3146
  %16 = load i8*, i8** %15, align 8, !dbg !3146, !tbaa !3123
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !3147
  %18 = load i8*, i8** %17, align 8, !dbg !3147, !tbaa !3126
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %11, i32 %13, i32* nonnull %14, i8* %16, i8* %18), !dbg !3148
  call void @llvm.dbg.value(metadata i64 %19, metadata !3139, metadata !DIExpression()), !dbg !3140
  store i32 %9, i32* %8, align 4, !dbg !3149, !tbaa !1559
  ret i64 %19, !dbg !3150
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %4, i32 %5, i32* readonly %6, i8* readonly %7, i8* readonly %8) unnamed_addr #8 !dbg !3151 {
  %10 = alloca i64, align 8
  %11 = bitcast i64* %10 to %struct.__mbstate_t*
  %12 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !3157, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i64 %1, metadata !3158, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i8* %2, metadata !3159, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i64 %3, metadata !3160, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i32 %4, metadata !3161, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i32 %5, metadata !3162, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i32* %6, metadata !3163, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i8* %7, metadata !3164, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i8* %8, metadata !3165, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i64 0, metadata !3167, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i64 0, metadata !3168, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i8* null, metadata !3169, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i64 0, metadata !3170, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i8 0, metadata !3171, metadata !DIExpression()), !dbg !3215
  %13 = tail call i64 @__ctype_get_mb_cur_max() #18, !dbg !3216
  %14 = icmp eq i64 %13, 1, !dbg !3217
  call void @llvm.dbg.value(metadata i1 %14, metadata !3172, metadata !DIExpression()), !dbg !3215
  %15 = lshr i32 %5, 1, !dbg !3218
  %16 = trunc i32 %15 to i8, !dbg !3218
  %17 = and i8 %16, 1, !dbg !3218
  call void @llvm.dbg.value(metadata i8 %17, metadata !3173, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i8 0, metadata !3174, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i8 0, metadata !3175, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i8 1, metadata !3176, metadata !DIExpression()), !dbg !3215
  %18 = getelementptr inbounds i8, i8* %2, i64 1, !dbg !3219
  %19 = and i32 %5, 4, !dbg !3221
  %20 = icmp eq i32 %19, 0, !dbg !3221
  %21 = and i32 %5, 1, !dbg !3224
  %22 = icmp eq i32 %21, 0, !dbg !3224
  %23 = bitcast i64* %10 to i8*, !dbg !3227
  %24 = bitcast i32* %12 to i8*, !dbg !3228
  %25 = icmp eq i32* %6, null, !dbg !3229
  br label %26, !dbg !3231

26:                                               ; preds = %598, %9
  %27 = phi i32 [ %4, %9 ], [ 2, %598 ]
  %28 = phi i8* [ %7, %9 ], [ %94, %598 ]
  %29 = phi i8* [ %8, %9 ], [ %95, %598 ]
  %30 = phi i64 [ 0, %9 ], [ %125, %598 ], !dbg !3232
  %31 = phi i8* [ null, %9 ], [ %97, %598 ], !dbg !3233
  %32 = phi i64 [ 0, %9 ], [ %98, %598 ], !dbg !3234
  %33 = phi i8 [ 0, %9 ], [ %99, %598 ], !dbg !3235
  %34 = phi i64 [ %3, %9 ], [ %582, %598 ]
  %35 = phi i8 [ %17, %9 ], [ %100, %598 ], !dbg !3215
  %36 = phi i8 [ 0, %9 ], [ %127, %598 ], !dbg !3236
  %37 = phi i8 [ 0, %9 ], [ %128, %598 ], !dbg !3237
  %38 = phi i8 [ 1, %9 ], [ %129, %598 ], !dbg !3238
  %39 = phi i64 [ %1, %9 ], [ %125, %598 ]
  call void @llvm.dbg.value(metadata i64 %39, metadata !3158, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i8 %38, metadata !3176, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i8 %37, metadata !3175, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i8 %36, metadata !3174, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i8 %35, metadata !3173, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i64 %34, metadata !3160, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i8 %33, metadata !3171, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i64 %32, metadata !3170, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i8* %31, metadata !3169, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i64 %30, metadata !3168, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i64 0, metadata !3167, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i8* %29, metadata !3165, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i8* %28, metadata !3164, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i32 %27, metadata !3161, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.label(metadata !3209), !dbg !3239
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
  ], !dbg !3240

40:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i32 5, metadata !3161, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i8 1, metadata !3173, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i8 %35, metadata !3173, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i32 5, metadata !3161, metadata !DIExpression()), !dbg !3215
  br label %92, !dbg !3241

41:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 %35, metadata !3173, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i32 5, metadata !3161, metadata !DIExpression()), !dbg !3215
  %42 = and i8 %35, 1, !dbg !3243
  %43 = icmp eq i8 %42, 0, !dbg !3243
  br i1 %43, label %44, label %92, !dbg !3241

44:                                               ; preds = %41
  %45 = icmp eq i64 %39, 0, !dbg !3245
  br i1 %45, label %92, label %46, !dbg !3248

46:                                               ; preds = %44
  store i8 34, i8* %0, align 1, !dbg !3245, !tbaa !1649
  br label %92, !dbg !3245

47:                                               ; preds = %26, %26
  %48 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.114, i64 0, i64 0), i32 %27), !dbg !3249
  call void @llvm.dbg.value(metadata i8* %48, metadata !3164, metadata !DIExpression()), !dbg !3215
  %49 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.115, i64 0, i64 0), i32 %27), !dbg !3253
  call void @llvm.dbg.value(metadata i8* %49, metadata !3165, metadata !DIExpression()), !dbg !3215
  br label %50, !dbg !3254

50:                                               ; preds = %26, %47
  %51 = phi i8* [ %48, %47 ], [ %28, %26 ]
  %52 = phi i8* [ %49, %47 ], [ %29, %26 ]
  call void @llvm.dbg.value(metadata i8* %52, metadata !3165, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i8* %51, metadata !3164, metadata !DIExpression()), !dbg !3215
  %53 = and i8 %35, 1, !dbg !3255
  %54 = icmp eq i8 %53, 0, !dbg !3255
  br i1 %54, label %55, label %70, !dbg !3257

55:                                               ; preds = %50
  call void @llvm.dbg.value(metadata i8* %51, metadata !3169, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i64 0, metadata !3167, metadata !DIExpression()), !dbg !3215
  %56 = load i8, i8* %51, align 1, !dbg !3258, !tbaa !1649
  %57 = icmp eq i8 %56, 0, !dbg !3261
  br i1 %57, label %70, label %58, !dbg !3261

58:                                               ; preds = %55, %65
  %59 = phi i8 [ %68, %65 ], [ %56, %55 ]
  %60 = phi i8* [ %67, %65 ], [ %51, %55 ]
  %61 = phi i64 [ %66, %65 ], [ 0, %55 ]
  call void @llvm.dbg.value(metadata i8* %60, metadata !3169, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i64 %61, metadata !3167, metadata !DIExpression()), !dbg !3215
  %62 = icmp ult i64 %61, %39, !dbg !3262
  br i1 %62, label %63, label %65, !dbg !3265

63:                                               ; preds = %58
  %64 = getelementptr inbounds i8, i8* %0, i64 %61, !dbg !3262
  store i8 %59, i8* %64, align 1, !dbg !3262, !tbaa !1649
  br label %65, !dbg !3262

65:                                               ; preds = %63, %58
  %66 = add i64 %61, 1, !dbg !3265
  call void @llvm.dbg.value(metadata i64 %66, metadata !3167, metadata !DIExpression()), !dbg !3215
  %67 = getelementptr inbounds i8, i8* %60, i64 1, !dbg !3266
  call void @llvm.dbg.value(metadata i8* %67, metadata !3169, metadata !DIExpression()), !dbg !3215
  %68 = load i8, i8* %67, align 1, !dbg !3258, !tbaa !1649
  %69 = icmp eq i8 %68, 0, !dbg !3261
  br i1 %69, label %70, label %58, !dbg !3261, !llvm.loop !3267

70:                                               ; preds = %65, %55, %50
  %71 = phi i64 [ 0, %50 ], [ 0, %55 ], [ %66, %65 ], !dbg !3269
  call void @llvm.dbg.value(metadata i64 %71, metadata !3167, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i8 1, metadata !3171, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i8* %52, metadata !3169, metadata !DIExpression()), !dbg !3215
  %72 = call i64 @strlen(i8* nonnull dereferenceable(1) %52) #21, !dbg !3270
  call void @llvm.dbg.value(metadata i64 %72, metadata !3170, metadata !DIExpression()), !dbg !3215
  br label %92, !dbg !3271

73:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 1, metadata !3171, metadata !DIExpression()), !dbg !3215
  br label %74, !dbg !3272

74:                                               ; preds = %26, %73
  %75 = phi i8 [ %33, %26 ], [ 1, %73 ], !dbg !3215
  call void @llvm.dbg.value(metadata i8 %75, metadata !3171, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i8 1, metadata !3173, metadata !DIExpression()), !dbg !3215
  br label %76, !dbg !3273

76:                                               ; preds = %26, %74
  %77 = phi i8 [ %33, %26 ], [ %75, %74 ], !dbg !3235
  %78 = phi i8 [ %35, %26 ], [ 1, %74 ], !dbg !3215
  call void @llvm.dbg.value(metadata i8 %78, metadata !3173, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i8 %77, metadata !3171, metadata !DIExpression()), !dbg !3215
  %79 = and i8 %78, 1, !dbg !3274
  %80 = icmp eq i8 %79, 0, !dbg !3274
  %81 = select i1 %80, i8 1, i8 %77, !dbg !3276
  br label %82, !dbg !3276

82:                                               ; preds = %76, %26
  %83 = phi i8 [ %33, %26 ], [ %81, %76 ], !dbg !3215
  %84 = phi i8 [ %35, %26 ], [ %78, %76 ], !dbg !3218
  call void @llvm.dbg.value(metadata i8 %84, metadata !3173, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i8 %83, metadata !3171, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i32 2, metadata !3161, metadata !DIExpression()), !dbg !3215
  %85 = and i8 %84, 1, !dbg !3277
  %86 = icmp eq i8 %85, 0, !dbg !3277
  br i1 %86, label %87, label %92, !dbg !3279

87:                                               ; preds = %82
  %88 = icmp eq i64 %39, 0, !dbg !3280
  br i1 %88, label %92, label %89, !dbg !3283

89:                                               ; preds = %87
  store i8 39, i8* %0, align 1, !dbg !3280, !tbaa !1649
  br label %92, !dbg !3280

90:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 0, metadata !3173, metadata !DIExpression()), !dbg !3215
  br label %92, !dbg !3284

91:                                               ; preds = %26
  call void @abort() #22, !dbg !3285
  unreachable, !dbg !3285

92:                                               ; preds = %40, %82, %87, %89, %26, %41, %44, %46, %90, %70
  %93 = phi i32 [ 0, %90 ], [ %27, %70 ], [ 5, %46 ], [ 5, %44 ], [ 5, %41 ], [ %27, %26 ], [ 2, %89 ], [ 2, %87 ], [ 2, %82 ], [ 5, %40 ]
  %94 = phi i8* [ %28, %90 ], [ %51, %70 ], [ %28, %46 ], [ %28, %44 ], [ %28, %41 ], [ %28, %26 ], [ %28, %89 ], [ %28, %87 ], [ %28, %82 ], [ %28, %40 ]
  %95 = phi i8* [ %29, %90 ], [ %52, %70 ], [ %29, %46 ], [ %29, %44 ], [ %29, %41 ], [ %29, %26 ], [ %29, %89 ], [ %29, %87 ], [ %29, %82 ], [ %29, %40 ]
  %96 = phi i64 [ 0, %90 ], [ %71, %70 ], [ 1, %46 ], [ 1, %44 ], [ 0, %41 ], [ 0, %26 ], [ 1, %89 ], [ 1, %87 ], [ 0, %82 ], [ 0, %40 ], !dbg !3269
  %97 = phi i8* [ %31, %90 ], [ %52, %70 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.116, i64 0, i64 0), %46 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.116, i64 0, i64 0), %44 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.116, i64 0, i64 0), %41 ], [ %31, %26 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.115, i64 0, i64 0), %89 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.115, i64 0, i64 0), %87 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.115, i64 0, i64 0), %82 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.116, i64 0, i64 0), %40 ], !dbg !3215
  %98 = phi i64 [ %32, %90 ], [ %72, %70 ], [ 1, %46 ], [ 1, %44 ], [ 1, %41 ], [ %32, %26 ], [ 1, %89 ], [ 1, %87 ], [ 1, %82 ], [ 1, %40 ], !dbg !3215
  %99 = phi i8 [ %33, %90 ], [ 1, %70 ], [ 1, %46 ], [ 1, %44 ], [ 1, %41 ], [ 1, %26 ], [ %83, %89 ], [ %83, %87 ], [ %83, %82 ], [ 1, %40 ], !dbg !3215
  %100 = phi i8 [ 0, %90 ], [ %35, %70 ], [ %35, %46 ], [ %35, %44 ], [ %35, %41 ], [ 0, %26 ], [ %84, %89 ], [ %84, %87 ], [ %84, %82 ], [ 1, %40 ], !dbg !3215
  call void @llvm.dbg.value(metadata i8 %100, metadata !3173, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i8 %99, metadata !3171, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i64 %98, metadata !3170, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i8* %97, metadata !3169, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i64 %96, metadata !3167, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i8* %95, metadata !3165, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i8* %94, metadata !3164, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i32 %93, metadata !3161, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i64 0, metadata !3166, metadata !DIExpression()), !dbg !3215
  %101 = and i8 %99, 1, !dbg !3286
  %102 = icmp ne i8 %101, 0, !dbg !3286
  %103 = icmp ne i32 %93, 2, !dbg !3286
  %104 = and i1 %103, %102, !dbg !3286
  %105 = icmp ne i64 %98, 0, !dbg !3286
  %106 = and i1 %105, %104, !dbg !3286
  %107 = icmp ugt i64 %98, 1, !dbg !3286
  %108 = and i8 %100, 1, !dbg !3288
  %109 = icmp eq i8 %108, 0, !dbg !3288
  %110 = icmp eq i32 %93, 2, !dbg !3291
  %111 = or i1 %103, %109, !dbg !3293
  %112 = icmp ne i8 %108, 0, !dbg !3295
  %113 = and i1 %110, %112, !dbg !3295
  %114 = xor i1 %102, true, !dbg !3296
  %115 = xor i1 %104, true, !dbg !3229
  %116 = and i1 %109, %115, !dbg !3229
  %117 = or i1 %25, %116, !dbg !3229
  %118 = and i8 %99, %100, !dbg !3297
  %119 = and i8 %118, 1, !dbg !3297
  %120 = icmp ne i8 %119, 0, !dbg !3297
  %121 = and i1 %120, %105, !dbg !3297
  br label %122, !dbg !3299

122:                                              ; preds = %571, %92
  %123 = phi i64 [ 0, %92 ], [ %580, %571 ], !dbg !3300
  %124 = phi i64 [ %96, %92 ], [ %573, %571 ], !dbg !3269
  %125 = phi i64 [ %30, %92 ], [ %574, %571 ], !dbg !3232
  %126 = phi i64 [ %34, %92 ], [ %575, %571 ]
  %127 = phi i8 [ %36, %92 ], [ %576, %571 ], !dbg !3236
  %128 = phi i8 [ %37, %92 ], [ %577, %571 ], !dbg !3237
  %129 = phi i8 [ %38, %92 ], [ %578, %571 ], !dbg !3238
  %130 = phi i64 [ %39, %92 ], [ %579, %571 ]
  call void @llvm.dbg.value(metadata i64 %130, metadata !3158, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i8 %129, metadata !3176, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i8 %128, metadata !3175, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i8 %127, metadata !3174, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i64 %126, metadata !3160, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i64 %125, metadata !3168, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i64 %124, metadata !3167, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i64 %123, metadata !3166, metadata !DIExpression()), !dbg !3215
  %131 = icmp eq i64 %126, -1, !dbg !3301
  br i1 %131, label %132, label %136, !dbg !3302

132:                                              ; preds = %122
  %133 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !3303
  %134 = load i8, i8* %133, align 1, !dbg !3303, !tbaa !1649
  %135 = icmp eq i8 %134, 0, !dbg !3304
  br i1 %135, label %581, label %138, !dbg !3305

136:                                              ; preds = %122
  %137 = icmp eq i64 %123, %126, !dbg !3306
  br i1 %137, label %581, label %138, !dbg !3305

138:                                              ; preds = %132, %136
  call void @llvm.dbg.value(metadata i8 0, metadata !3182, metadata !DIExpression()), !dbg !3307
  call void @llvm.dbg.value(metadata i8 0, metadata !3183, metadata !DIExpression()), !dbg !3307
  call void @llvm.dbg.value(metadata i8 0, metadata !3184, metadata !DIExpression()), !dbg !3307
  br i1 %106, label %139, label %154, !dbg !3308

139:                                              ; preds = %138
  %140 = add i64 %123, %98, !dbg !3309
  %141 = and i1 %107, %131, !dbg !3310
  br i1 %141, label %142, label %144, !dbg !3310

142:                                              ; preds = %139
  %143 = call i64 @strlen(i8* nonnull dereferenceable(1) %2) #21, !dbg !3311
  call void @llvm.dbg.value(metadata i64 %143, metadata !3160, metadata !DIExpression()), !dbg !3215
  br label %144, !dbg !3312

144:                                              ; preds = %139, %142
  %145 = phi i64 [ %143, %142 ], [ %126, %139 ]
  call void @llvm.dbg.value(metadata i64 %145, metadata !3160, metadata !DIExpression()), !dbg !3215
  %146 = icmp ugt i64 %140, %145, !dbg !3313
  br i1 %146, label %154, label %147, !dbg !3314

147:                                              ; preds = %144
  %148 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !3315
  %149 = call i32 @bcmp(i8* %148, i8* %97, i64 %98), !dbg !3316
  %150 = icmp ne i32 %149, 0, !dbg !3317
  %151 = or i1 %150, %109, !dbg !3318
  %152 = xor i1 %150, true, !dbg !3318
  %153 = zext i1 %152 to i8, !dbg !3318
  br i1 %151, label %154, label %639, !dbg !3318

154:                                              ; preds = %147, %144, %138
  %155 = phi i64 [ %145, %147 ], [ %145, %144 ], [ %126, %138 ]
  %156 = phi i8 [ %153, %147 ], [ 0, %144 ], [ 0, %138 ], !dbg !3307
  call void @llvm.dbg.value(metadata i8 %156, metadata !3182, metadata !DIExpression()), !dbg !3307
  call void @llvm.dbg.value(metadata i64 %155, metadata !3160, metadata !DIExpression()), !dbg !3215
  %157 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !3319
  %158 = load i8, i8* %157, align 1, !dbg !3319, !tbaa !1649
  call void @llvm.dbg.value(metadata i8 %158, metadata !3177, metadata !DIExpression()), !dbg !3307
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
  ], !dbg !3320

159:                                              ; preds = %154
  br i1 %102, label %160, label %208, !dbg !3321

160:                                              ; preds = %159
  br i1 %109, label %161, label %629, !dbg !3322

161:                                              ; preds = %160
  call void @llvm.dbg.value(metadata i8 1, metadata !3183, metadata !DIExpression()), !dbg !3307
  %162 = and i8 %127, 1, !dbg !3325
  %163 = icmp eq i8 %162, 0, !dbg !3325
  %164 = and i1 %110, %163, !dbg !3325
  br i1 %164, label %165, label %181, !dbg !3325

165:                                              ; preds = %161
  %166 = icmp ult i64 %124, %130, !dbg !3327
  br i1 %166, label %167, label %169, !dbg !3331

167:                                              ; preds = %165
  %168 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !3327
  store i8 39, i8* %168, align 1, !dbg !3327, !tbaa !1649
  br label %169, !dbg !3327

169:                                              ; preds = %167, %165
  %170 = add i64 %124, 1, !dbg !3331
  call void @llvm.dbg.value(metadata i64 %170, metadata !3167, metadata !DIExpression()), !dbg !3215
  %171 = icmp ult i64 %170, %130, !dbg !3332
  br i1 %171, label %172, label %174, !dbg !3335

172:                                              ; preds = %169
  %173 = getelementptr inbounds i8, i8* %0, i64 %170, !dbg !3332
  store i8 36, i8* %173, align 1, !dbg !3332, !tbaa !1649
  br label %174, !dbg !3332

174:                                              ; preds = %172, %169
  %175 = add i64 %124, 2, !dbg !3335
  call void @llvm.dbg.value(metadata i64 %175, metadata !3167, metadata !DIExpression()), !dbg !3215
  %176 = icmp ult i64 %175, %130, !dbg !3336
  br i1 %176, label %177, label %179, !dbg !3339

177:                                              ; preds = %174
  %178 = getelementptr inbounds i8, i8* %0, i64 %175, !dbg !3336
  store i8 39, i8* %178, align 1, !dbg !3336, !tbaa !1649
  br label %179, !dbg !3336

179:                                              ; preds = %177, %174
  %180 = add i64 %124, 3, !dbg !3339
  call void @llvm.dbg.value(metadata i64 %180, metadata !3167, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i8 1, metadata !3174, metadata !DIExpression()), !dbg !3215
  br label %181, !dbg !3340

181:                                              ; preds = %161, %179
  %182 = phi i64 [ %180, %179 ], [ %124, %161 ], !dbg !3215
  %183 = phi i8 [ 1, %179 ], [ %127, %161 ], !dbg !3215
  call void @llvm.dbg.value(metadata i8 %183, metadata !3174, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i64 %182, metadata !3167, metadata !DIExpression()), !dbg !3215
  %184 = icmp ult i64 %182, %130, !dbg !3341
  br i1 %184, label %185, label %187, !dbg !3344

185:                                              ; preds = %181
  %186 = getelementptr inbounds i8, i8* %0, i64 %182, !dbg !3341
  store i8 92, i8* %186, align 1, !dbg !3341, !tbaa !1649
  br label %187, !dbg !3341

187:                                              ; preds = %185, %181
  %188 = add i64 %182, 1, !dbg !3344
  call void @llvm.dbg.value(metadata i64 %188, metadata !3167, metadata !DIExpression()), !dbg !3215
  br i1 %103, label %189, label %463, !dbg !3345

189:                                              ; preds = %187
  %190 = add i64 %123, 1, !dbg !3347
  %191 = icmp ult i64 %190, %155, !dbg !3348
  br i1 %191, label %192, label %463, !dbg !3349

192:                                              ; preds = %189
  %193 = getelementptr inbounds i8, i8* %2, i64 %190, !dbg !3350
  %194 = load i8, i8* %193, align 1, !dbg !3350, !tbaa !1649
  %195 = add i8 %194, -48, !dbg !3351
  %196 = icmp ult i8 %195, 10, !dbg !3351
  br i1 %196, label %197, label %463, !dbg !3351

197:                                              ; preds = %192
  %198 = icmp ult i64 %188, %130, !dbg !3352
  br i1 %198, label %199, label %201, !dbg !3356

199:                                              ; preds = %197
  %200 = getelementptr inbounds i8, i8* %0, i64 %188, !dbg !3352
  store i8 48, i8* %200, align 1, !dbg !3352, !tbaa !1649
  br label %201, !dbg !3352

201:                                              ; preds = %199, %197
  %202 = add i64 %182, 2, !dbg !3356
  call void @llvm.dbg.value(metadata i64 %202, metadata !3167, metadata !DIExpression()), !dbg !3215
  %203 = icmp ult i64 %202, %130, !dbg !3357
  br i1 %203, label %204, label %206, !dbg !3360

204:                                              ; preds = %201
  %205 = getelementptr inbounds i8, i8* %0, i64 %202, !dbg !3357
  store i8 48, i8* %205, align 1, !dbg !3357, !tbaa !1649
  br label %206, !dbg !3357

206:                                              ; preds = %204, %201
  %207 = add i64 %182, 3, !dbg !3360
  call void @llvm.dbg.value(metadata i64 %207, metadata !3167, metadata !DIExpression()), !dbg !3215
  br label %463, !dbg !3361

208:                                              ; preds = %159
  br i1 %22, label %463, label %571, !dbg !3362

209:                                              ; preds = %154
  switch i32 %93, label %463 [
    i32 2, label %210
    i32 5, label %211
  ], !dbg !3363

210:                                              ; preds = %209
  br i1 %109, label %463, label %625, !dbg !3364

211:                                              ; preds = %209
  br i1 %20, label %463, label %212, !dbg !3365

212:                                              ; preds = %211
  %213 = add i64 %123, 2, !dbg !3366
  %214 = icmp ult i64 %213, %155, !dbg !3367
  br i1 %214, label %215, label %463, !dbg !3368

215:                                              ; preds = %212
  %216 = add i64 %123, 1, !dbg !3369
  %217 = getelementptr inbounds i8, i8* %2, i64 %216, !dbg !3370
  %218 = load i8, i8* %217, align 1, !dbg !3370, !tbaa !1649
  %219 = icmp eq i8 %218, 63, !dbg !3371
  br i1 %219, label %220, label %463, !dbg !3372

220:                                              ; preds = %215
  %221 = getelementptr inbounds i8, i8* %2, i64 %213, !dbg !3373
  %222 = load i8, i8* %221, align 1, !dbg !3373, !tbaa !1649
  %223 = sext i8 %222 to i32, !dbg !3373
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
  ], !dbg !3374

224:                                              ; preds = %220, %220, %220, %220, %220, %220, %220, %220, %220
  br i1 %109, label %225, label %639, !dbg !3375

225:                                              ; preds = %224
  call void @llvm.dbg.value(metadata i8 %222, metadata !3177, metadata !DIExpression()), !dbg !3307
  call void @llvm.dbg.value(metadata i64 %213, metadata !3166, metadata !DIExpression()), !dbg !3215
  %226 = icmp ult i64 %124, %130, !dbg !3377
  br i1 %226, label %227, label %229, !dbg !3380

227:                                              ; preds = %225
  %228 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !3377
  store i8 63, i8* %228, align 1, !dbg !3377, !tbaa !1649
  br label %229, !dbg !3377

229:                                              ; preds = %227, %225
  %230 = add i64 %124, 1, !dbg !3380
  call void @llvm.dbg.value(metadata i64 %230, metadata !3167, metadata !DIExpression()), !dbg !3215
  %231 = icmp ult i64 %230, %130, !dbg !3381
  br i1 %231, label %232, label %234, !dbg !3384

232:                                              ; preds = %229
  %233 = getelementptr inbounds i8, i8* %0, i64 %230, !dbg !3381
  store i8 34, i8* %233, align 1, !dbg !3381, !tbaa !1649
  br label %234, !dbg !3381

234:                                              ; preds = %232, %229
  %235 = add i64 %124, 2, !dbg !3384
  call void @llvm.dbg.value(metadata i64 %235, metadata !3167, metadata !DIExpression()), !dbg !3215
  %236 = icmp ult i64 %235, %130, !dbg !3385
  br i1 %236, label %237, label %239, !dbg !3388

237:                                              ; preds = %234
  %238 = getelementptr inbounds i8, i8* %0, i64 %235, !dbg !3385
  store i8 34, i8* %238, align 1, !dbg !3385, !tbaa !1649
  br label %239, !dbg !3385

239:                                              ; preds = %237, %234
  %240 = add i64 %124, 3, !dbg !3388
  call void @llvm.dbg.value(metadata i64 %240, metadata !3167, metadata !DIExpression()), !dbg !3215
  %241 = icmp ult i64 %240, %130, !dbg !3389
  br i1 %241, label %242, label %244, !dbg !3392

242:                                              ; preds = %239
  %243 = getelementptr inbounds i8, i8* %0, i64 %240, !dbg !3389
  store i8 63, i8* %243, align 1, !dbg !3389, !tbaa !1649
  br label %244, !dbg !3389

244:                                              ; preds = %242, %239
  %245 = add i64 %124, 4, !dbg !3392
  call void @llvm.dbg.value(metadata i64 %245, metadata !3167, metadata !DIExpression()), !dbg !3215
  br label %463, !dbg !3393

246:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 98, metadata !3181, metadata !DIExpression()), !dbg !3307
  br label %256, !dbg !3394

247:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 102, metadata !3181, metadata !DIExpression()), !dbg !3307
  br label %256, !dbg !3395

248:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 114, metadata !3181, metadata !DIExpression()), !dbg !3307
  br label %254, !dbg !3396

249:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 116, metadata !3181, metadata !DIExpression()), !dbg !3307
  br label %254, !dbg !3397

250:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 118, metadata !3181, metadata !DIExpression()), !dbg !3307
  br label %256, !dbg !3398

251:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 %158, metadata !3181, metadata !DIExpression()), !dbg !3307
  br i1 %110, label %252, label %253, !dbg !3399

252:                                              ; preds = %251
  br i1 %109, label %526, label %625, !dbg !3400

253:                                              ; preds = %251
  br i1 %121, label %526, label %254, !dbg !3403

254:                                              ; preds = %253, %154, %249, %248
  %255 = phi i8 [ 92, %253 ], [ 116, %249 ], [ 114, %248 ], [ 110, %154 ], !dbg !3404
  call void @llvm.dbg.value(metadata i8 %255, metadata !3181, metadata !DIExpression()), !dbg !3307
  call void @llvm.dbg.label(metadata !3210), !dbg !3405
  br i1 %111, label %256, label %625, !dbg !3406

256:                                              ; preds = %254, %154, %250, %247, %246
  %257 = phi i8 [ %255, %254 ], [ 118, %250 ], [ 102, %247 ], [ 98, %246 ], [ 97, %154 ], !dbg !3404
  call void @llvm.dbg.value(metadata i8 %257, metadata !3181, metadata !DIExpression()), !dbg !3307
  call void @llvm.dbg.label(metadata !3211), !dbg !3408
  br i1 %102, label %488, label %463, !dbg !3409

258:                                              ; preds = %154, %154
  switch i64 %155, label %463 [
    i64 -1, label %259
    i64 1, label %262
  ], !dbg !3410

259:                                              ; preds = %258
  %260 = load i8, i8* %18, align 1, !dbg !3411, !tbaa !1649
  %261 = icmp eq i8 %260, 0, !dbg !3412
  br i1 %261, label %262, label %463, !dbg !3413

262:                                              ; preds = %258, %259, %154, %154
  %263 = icmp eq i64 %123, 0, !dbg !3414
  br i1 %263, label %264, label %463, !dbg !3416

264:                                              ; preds = %262, %154
  call void @llvm.dbg.value(metadata i8 1, metadata !3184, metadata !DIExpression()), !dbg !3307
  br label %265, !dbg !3417

265:                                              ; preds = %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %264
  %266 = phi i8 [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 1, %264 ], !dbg !3307
  call void @llvm.dbg.value(metadata i8 %266, metadata !3184, metadata !DIExpression()), !dbg !3307
  br i1 %111, label %463, label %625, !dbg !3418

267:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 1, metadata !3175, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i8 1, metadata !3184, metadata !DIExpression()), !dbg !3307
  br i1 %110, label %268, label %463, !dbg !3419

268:                                              ; preds = %267
  br i1 %109, label %269, label %625, !dbg !3420

269:                                              ; preds = %268
  %270 = icmp eq i64 %130, 0, !dbg !3422
  %271 = icmp ne i64 %125, 0, !dbg !3424
  %272 = or i1 %271, %270, !dbg !3425
  %273 = select i1 %272, i64 %125, i64 %130, !dbg !3425
  %274 = select i1 %272, i64 %130, i64 0, !dbg !3425
  call void @llvm.dbg.value(metadata i64 %274, metadata !3158, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i64 %273, metadata !3168, metadata !DIExpression()), !dbg !3215
  %275 = icmp ult i64 %124, %274, !dbg !3426
  br i1 %275, label %276, label %278, !dbg !3429

276:                                              ; preds = %269
  %277 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !3426
  store i8 39, i8* %277, align 1, !dbg !3426, !tbaa !1649
  br label %278, !dbg !3426

278:                                              ; preds = %276, %269
  %279 = add i64 %124, 1, !dbg !3429
  call void @llvm.dbg.value(metadata i64 %279, metadata !3167, metadata !DIExpression()), !dbg !3215
  %280 = icmp ult i64 %279, %274, !dbg !3430
  br i1 %280, label %281, label %283, !dbg !3433

281:                                              ; preds = %278
  %282 = getelementptr inbounds i8, i8* %0, i64 %279, !dbg !3430
  store i8 92, i8* %282, align 1, !dbg !3430, !tbaa !1649
  br label %283, !dbg !3430

283:                                              ; preds = %281, %278
  %284 = add i64 %124, 2, !dbg !3433
  call void @llvm.dbg.value(metadata i64 %284, metadata !3167, metadata !DIExpression()), !dbg !3215
  %285 = icmp ult i64 %284, %274, !dbg !3434
  br i1 %285, label %286, label %288, !dbg !3437

286:                                              ; preds = %283
  %287 = getelementptr inbounds i8, i8* %0, i64 %284, !dbg !3434
  store i8 39, i8* %287, align 1, !dbg !3434, !tbaa !1649
  br label %288, !dbg !3434

288:                                              ; preds = %286, %283
  %289 = add i64 %124, 3, !dbg !3437
  call void @llvm.dbg.value(metadata i64 %289, metadata !3167, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i8 0, metadata !3174, metadata !DIExpression()), !dbg !3215
  br label %463, !dbg !3438

290:                                              ; preds = %154
  br i1 %14, label %291, label %300, !dbg !3439

291:                                              ; preds = %290
  call void @llvm.dbg.value(metadata i64 1, metadata !3185, metadata !DIExpression()), !dbg !3440
  %292 = tail call i16** @__ctype_b_loc() #24, !dbg !3441
  %293 = load i16*, i16** %292, align 8, !dbg !3441, !tbaa !1347
  %294 = zext i8 %158 to i64, !dbg !3441
  %295 = getelementptr inbounds i16, i16* %293, i64 %294, !dbg !3441
  %296 = load i16, i16* %295, align 2, !dbg !3441, !tbaa !1793
  %297 = lshr i16 %296, 14, !dbg !3443
  %298 = trunc i16 %297 to i8, !dbg !3443
  %299 = and i8 %298, 1, !dbg !3443
  call void @llvm.dbg.value(metadata i8 %299, metadata !3188, metadata !DIExpression()), !dbg !3440
  br label %355, !dbg !3444

300:                                              ; preds = %290
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %23) #18, !dbg !3445
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %11, metadata !3189, metadata !DIExpression()), !dbg !3446
  call void @llvm.dbg.value(metadata i8* %23, metadata !3447, metadata !DIExpression()) #18, !dbg !3454
  call void @llvm.dbg.value(metadata i32 0, metadata !3452, metadata !DIExpression()) #18, !dbg !3454
  call void @llvm.dbg.value(metadata i64 8, metadata !3453, metadata !DIExpression()) #18, !dbg !3454
  store i64 0, i64* %10, align 8, !dbg !3456
  call void @llvm.dbg.value(metadata i64 0, metadata !3185, metadata !DIExpression()), !dbg !3440
  call void @llvm.dbg.value(metadata i8 1, metadata !3188, metadata !DIExpression()), !dbg !3440
  %301 = icmp eq i64 %155, -1, !dbg !3457
  br i1 %301, label %302, label %304, !dbg !3459

302:                                              ; preds = %300
  %303 = call i64 @strlen(i8* nonnull dereferenceable(1) %2) #21, !dbg !3460
  call void @llvm.dbg.value(metadata i64 %303, metadata !3160, metadata !DIExpression()), !dbg !3215
  br label %304, !dbg !3461

304:                                              ; preds = %302, %300
  %305 = phi i64 [ %303, %302 ], [ %155, %300 ], !dbg !3307
  call void @llvm.dbg.value(metadata i64 %305, metadata !3160, metadata !DIExpression()), !dbg !3215
  br label %306, !dbg !3462

306:                                              ; preds = %343, %304
  %307 = phi i64 [ 0, %304 ], [ %348, %343 ], !dbg !3463
  %308 = phi i8 [ 1, %304 ], [ %347, %343 ], !dbg !3464
  call void @llvm.dbg.value(metadata i8 %308, metadata !3188, metadata !DIExpression()), !dbg !3440
  call void @llvm.dbg.value(metadata i64 %307, metadata !3185, metadata !DIExpression()), !dbg !3440
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %24) #18, !dbg !3465
  %309 = add i64 %307, %123, !dbg !3466
  %310 = getelementptr inbounds i8, i8* %2, i64 %309, !dbg !3467
  %311 = sub i64 %305, %309, !dbg !3468
  call void @llvm.dbg.value(metadata i32* %12, metadata !3195, metadata !DIExpression(DW_OP_deref)), !dbg !3228
  %312 = call i64 @rpl_mbrtowc(i32* nonnull %12, i8* %310, i64 %311, %struct.__mbstate_t* nonnull %11) #18, !dbg !3469
  call void @llvm.dbg.value(metadata i64 %312, metadata !3198, metadata !DIExpression()), !dbg !3228
  switch i64 %312, label %327 [
    i64 0, label %339
    i64 -1, label %340
    i64 -2, label %313
  ], !dbg !3470

313:                                              ; preds = %306
  call void @llvm.dbg.value(metadata i64 %307, metadata !3185, metadata !DIExpression()), !dbg !3440
  call void @llvm.dbg.value(metadata i64 %307, metadata !3185, metadata !DIExpression()), !dbg !3440
  call void @llvm.dbg.value(metadata i64 %307, metadata !3185, metadata !DIExpression()), !dbg !3440
  call void @llvm.dbg.value(metadata i64 %307, metadata !3185, metadata !DIExpression()), !dbg !3440
  call void @llvm.dbg.value(metadata i64 %307, metadata !3185, metadata !DIExpression()), !dbg !3440
  call void @llvm.dbg.value(metadata i64 %307, metadata !3185, metadata !DIExpression()), !dbg !3440
  %314 = icmp ugt i64 %305, %309, !dbg !3471
  br i1 %314, label %315, label %340, !dbg !3473

315:                                              ; preds = %313
  %316 = sub i64 %305, %123, !dbg !3474
  br label %317, !dbg !3474

317:                                              ; preds = %315, %323
  %318 = phi i64 [ %325, %323 ], [ %309, %315 ]
  %319 = phi i64 [ %324, %323 ], [ %307, %315 ]
  call void @llvm.dbg.value(metadata i64 %319, metadata !3185, metadata !DIExpression()), !dbg !3440
  %320 = getelementptr inbounds i8, i8* %2, i64 %318, !dbg !3475
  %321 = load i8, i8* %320, align 1, !dbg !3475, !tbaa !1649
  %322 = icmp eq i8 %321, 0, !dbg !3473
  br i1 %322, label %340, label %323, !dbg !3474

323:                                              ; preds = %317
  %324 = add i64 %319, 1, !dbg !3476
  call void @llvm.dbg.value(metadata i64 %324, metadata !3185, metadata !DIExpression()), !dbg !3440
  %325 = add i64 %324, %123, !dbg !3477
  %326 = icmp ult i64 %325, %305, !dbg !3471
  br i1 %326, label %317, label %340, !dbg !3473, !llvm.loop !3478

327:                                              ; preds = %306
  %328 = icmp ugt i64 %312, 1, !dbg !3479
  %329 = and i1 %113, %328, !dbg !3482
  call void @llvm.dbg.value(metadata i64 1, metadata !3199, metadata !DIExpression()), !dbg !3483
  br i1 %329, label %330, label %343, !dbg !3482

330:                                              ; preds = %327, %336
  %331 = phi i64 [ %337, %336 ], [ 1, %327 ]
  call void @llvm.dbg.value(metadata i64 %331, metadata !3199, metadata !DIExpression()), !dbg !3483
  %332 = add i64 %331, %309, !dbg !3484
  %333 = getelementptr inbounds i8, i8* %2, i64 %332, !dbg !3485
  %334 = load i8, i8* %333, align 1, !dbg !3485, !tbaa !1649
  %335 = sext i8 %334 to i32, !dbg !3485
  switch i32 %335, label %336 [
    i32 91, label %354
    i32 92, label %354
    i32 94, label %354
    i32 96, label %354
    i32 124, label %354
  ], !dbg !3486

336:                                              ; preds = %330
  %337 = add nuw i64 %331, 1, !dbg !3487
  call void @llvm.dbg.value(metadata i64 %337, metadata !3199, metadata !DIExpression()), !dbg !3483
  %338 = icmp eq i64 %337, %312, !dbg !3479
  br i1 %338, label %343, label %330, !dbg !3488, !llvm.loop !3489

339:                                              ; preds = %306
  call void @llvm.dbg.value(metadata i64 %307, metadata !3185, metadata !DIExpression()), !dbg !3440
  call void @llvm.dbg.value(metadata i8 %308, metadata !3188, metadata !DIExpression()), !dbg !3440
  call void @llvm.dbg.value(metadata i64 %307, metadata !3185, metadata !DIExpression()), !dbg !3440
  call void @llvm.dbg.value(metadata i8 %308, metadata !3188, metadata !DIExpression()), !dbg !3440
  br label %340, !dbg !3491

340:                                              ; preds = %323, %317, %306, %339, %313
  %341 = phi i64 [ %307, %313 ], [ %307, %339 ], [ %307, %306 ], [ %319, %317 ], [ %316, %323 ]
  %342 = phi i8 [ 0, %313 ], [ %308, %339 ], [ 0, %306 ], [ 0, %317 ], [ 0, %323 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #18, !dbg !3491
  br label %351

343:                                              ; preds = %336, %327
  %344 = load i32, i32* %12, align 4, !dbg !3492, !tbaa !1559
  call void @llvm.dbg.value(metadata i32 %344, metadata !3195, metadata !DIExpression()), !dbg !3228
  %345 = call i32 @iswprint(i32 %344) #18, !dbg !3494
  %346 = icmp eq i32 %345, 0, !dbg !3494
  %347 = select i1 %346, i8 0, i8 %308, !dbg !3495
  call void @llvm.dbg.value(metadata i8 %347, metadata !3188, metadata !DIExpression()), !dbg !3440
  %348 = add i64 %312, %307, !dbg !3496
  call void @llvm.dbg.value(metadata i64 %348, metadata !3185, metadata !DIExpression()), !dbg !3440
  call void @llvm.dbg.value(metadata i8 %347, metadata !3188, metadata !DIExpression()), !dbg !3440
  call void @llvm.dbg.value(metadata i64 %348, metadata !3185, metadata !DIExpression()), !dbg !3440
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #18, !dbg !3491
  %349 = call i32 @mbsinit(%struct.__mbstate_t* nonnull %11) #21, !dbg !3497
  %350 = icmp eq i32 %349, 0, !dbg !3498
  br i1 %350, label %306, label %351, !dbg !3499, !llvm.loop !3500

351:                                              ; preds = %343, %340
  %352 = phi i8 [ %342, %340 ], [ %347, %343 ]
  %353 = phi i64 [ %341, %340 ], [ %348, %343 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %23) #18, !dbg !3502
  br label %355

354:                                              ; preds = %330, %330, %330, %330, %330
  call void @llvm.dbg.value(metadata i8* %94, metadata !3164, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i8* %94, metadata !3164, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i8* %94, metadata !3164, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i8* %94, metadata !3164, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i8* %94, metadata !3164, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i8* %95, metadata !3165, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i8* %95, metadata !3165, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i8* %95, metadata !3165, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i8* %95, metadata !3165, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i8* %95, metadata !3165, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i64 %130, metadata !3158, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i64 %130, metadata !3158, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i64 %130, metadata !3158, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i64 %130, metadata !3158, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i64 %130, metadata !3158, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i64 %305, metadata !3160, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i64 %305, metadata !3160, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i64 %305, metadata !3160, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i64 %305, metadata !3160, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i64 %305, metadata !3160, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i8* %94, metadata !3164, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i8* %94, metadata !3164, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i8* %94, metadata !3164, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i8* %94, metadata !3164, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i8* %94, metadata !3164, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i8* %95, metadata !3165, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i8* %95, metadata !3165, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i8* %95, metadata !3165, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i8* %95, metadata !3165, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i8* %95, metadata !3165, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i64 %130, metadata !3158, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i64 %130, metadata !3158, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i64 %130, metadata !3158, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i64 %130, metadata !3158, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i64 %130, metadata !3158, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i64 %305, metadata !3160, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i64 %305, metadata !3160, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i64 %305, metadata !3160, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i64 %305, metadata !3160, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i64 %305, metadata !3160, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i8* %94, metadata !3164, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i8* %94, metadata !3164, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i8* %94, metadata !3164, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i8* %94, metadata !3164, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i8* %94, metadata !3164, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i8* %95, metadata !3165, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i8* %95, metadata !3165, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i8* %95, metadata !3165, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i8* %95, metadata !3165, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i8* %95, metadata !3165, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i64 %130, metadata !3158, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i64 %130, metadata !3158, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i64 %130, metadata !3158, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i64 %130, metadata !3158, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i64 %130, metadata !3158, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i64 %305, metadata !3160, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i64 %305, metadata !3160, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i64 %305, metadata !3160, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i64 %305, metadata !3160, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i64 %305, metadata !3160, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i8* %94, metadata !3164, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i8* %94, metadata !3164, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i8* %94, metadata !3164, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i8* %94, metadata !3164, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i8* %94, metadata !3164, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i8* %95, metadata !3165, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i8* %95, metadata !3165, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i8* %95, metadata !3165, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i8* %95, metadata !3165, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i8* %95, metadata !3165, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i64 %130, metadata !3158, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i64 %130, metadata !3158, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i64 %130, metadata !3158, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i64 %130, metadata !3158, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i64 %130, metadata !3158, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i64 %305, metadata !3160, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i64 %305, metadata !3160, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i64 %305, metadata !3160, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i64 %305, metadata !3160, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i64 %305, metadata !3160, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i32 2, metadata !3161, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i32 2, metadata !3161, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i32 2, metadata !3161, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i32 2, metadata !3161, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i32 2, metadata !3161, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i8* %94, metadata !3164, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i8* %94, metadata !3164, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i8* %94, metadata !3164, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i8* %94, metadata !3164, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i8* %94, metadata !3164, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i8* %95, metadata !3165, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i8* %95, metadata !3165, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i8* %95, metadata !3165, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i8* %95, metadata !3165, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i8* %95, metadata !3165, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i8 %99, metadata !3171, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i8 %99, metadata !3171, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i8 %99, metadata !3171, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i8 %99, metadata !3171, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i8 %99, metadata !3171, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i64 %130, metadata !3158, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i64 %130, metadata !3158, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i64 %130, metadata !3158, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i64 %130, metadata !3158, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i64 %130, metadata !3158, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i64 %305, metadata !3160, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i64 %305, metadata !3160, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i64 %305, metadata !3160, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i64 %305, metadata !3160, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i64 %305, metadata !3160, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i32 2, metadata !3161, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i32 2, metadata !3161, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i32 2, metadata !3161, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i32 2, metadata !3161, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i32 2, metadata !3161, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i8* %94, metadata !3164, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i8* %94, metadata !3164, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i8* %94, metadata !3164, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i8* %94, metadata !3164, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i8* %94, metadata !3164, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i8* %95, metadata !3165, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i8* %95, metadata !3165, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i8* %95, metadata !3165, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i8* %95, metadata !3165, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i8* %95, metadata !3165, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i8 %99, metadata !3171, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i8 %99, metadata !3171, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i8 %99, metadata !3171, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i8 %99, metadata !3171, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i8 %99, metadata !3171, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i64 %130, metadata !3158, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i64 %130, metadata !3158, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i64 %130, metadata !3158, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i64 %130, metadata !3158, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i64 %130, metadata !3158, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i64 %305, metadata !3160, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i64 %305, metadata !3160, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i64 %305, metadata !3160, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i64 %305, metadata !3160, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i64 %305, metadata !3160, metadata !DIExpression()), !dbg !3215
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #18, !dbg !3491
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %23) #18, !dbg !3502
  br label %625

355:                                              ; preds = %351, %291
  %356 = phi i64 [ %155, %291 ], [ %305, %351 ], !dbg !3307
  %357 = phi i64 [ 1, %291 ], [ %353, %351 ], !dbg !3503
  %358 = phi i8 [ %299, %291 ], [ %352, %351 ], !dbg !3503
  call void @llvm.dbg.value(metadata i8 %358, metadata !3188, metadata !DIExpression()), !dbg !3440
  call void @llvm.dbg.value(metadata i64 %357, metadata !3185, metadata !DIExpression()), !dbg !3440
  call void @llvm.dbg.value(metadata i64 %356, metadata !3160, metadata !DIExpression()), !dbg !3215
  %359 = and i8 %358, 1, !dbg !3504
  %360 = icmp ne i8 %359, 0, !dbg !3504
  call void @llvm.dbg.value(metadata i8 %359, metadata !3184, metadata !DIExpression()), !dbg !3307
  %361 = icmp ult i64 %357, 2, !dbg !3505
  %362 = or i1 %360, %114, !dbg !3506
  %363 = and i1 %361, %362, !dbg !3507
  br i1 %363, label %463, label %364, !dbg !3507

364:                                              ; preds = %355
  %365 = add i64 %357, %123, !dbg !3508
  call void @llvm.dbg.value(metadata i64 %365, metadata !3206, metadata !DIExpression()), !dbg !3509
  br label %366, !dbg !3510

366:                                              ; preds = %459, %364
  %367 = phi i64 [ %123, %364 ], [ %434, %459 ], !dbg !3300
  %368 = phi i64 [ %124, %364 ], [ %460, %459 ], !dbg !3215
  %369 = phi i8 [ %127, %364 ], [ %455, %459 ], !dbg !3236
  %370 = phi i8 [ %158, %364 ], [ %462, %459 ], !dbg !3307
  %371 = phi i8 [ %156, %364 ], [ %432, %459 ], !dbg !3307
  %372 = phi i8 [ 0, %364 ], [ %433, %459 ], !dbg !3511
  call void @llvm.dbg.value(metadata i8 %372, metadata !3183, metadata !DIExpression()), !dbg !3307
  call void @llvm.dbg.value(metadata i8 %371, metadata !3182, metadata !DIExpression()), !dbg !3307
  call void @llvm.dbg.value(metadata i8 %370, metadata !3177, metadata !DIExpression()), !dbg !3307
  call void @llvm.dbg.value(metadata i8 %369, metadata !3174, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i64 %368, metadata !3167, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i64 %367, metadata !3166, metadata !DIExpression()), !dbg !3215
  br i1 %362, label %419, label %373, !dbg !3512

373:                                              ; preds = %366
  br i1 %109, label %374, label %629, !dbg !3517

374:                                              ; preds = %373
  call void @llvm.dbg.value(metadata i8 1, metadata !3183, metadata !DIExpression()), !dbg !3307
  %375 = and i8 %369, 1, !dbg !3520
  %376 = icmp eq i8 %375, 0, !dbg !3520
  %377 = and i1 %110, %376, !dbg !3520
  br i1 %377, label %378, label %394, !dbg !3520

378:                                              ; preds = %374
  %379 = icmp ult i64 %368, %130, !dbg !3522
  br i1 %379, label %380, label %382, !dbg !3526

380:                                              ; preds = %378
  %381 = getelementptr inbounds i8, i8* %0, i64 %368, !dbg !3522
  store i8 39, i8* %381, align 1, !dbg !3522, !tbaa !1649
  br label %382, !dbg !3522

382:                                              ; preds = %380, %378
  %383 = add i64 %368, 1, !dbg !3526
  call void @llvm.dbg.value(metadata i64 %383, metadata !3167, metadata !DIExpression()), !dbg !3215
  %384 = icmp ult i64 %383, %130, !dbg !3527
  br i1 %384, label %385, label %387, !dbg !3530

385:                                              ; preds = %382
  %386 = getelementptr inbounds i8, i8* %0, i64 %383, !dbg !3527
  store i8 36, i8* %386, align 1, !dbg !3527, !tbaa !1649
  br label %387, !dbg !3527

387:                                              ; preds = %385, %382
  %388 = add i64 %368, 2, !dbg !3530
  call void @llvm.dbg.value(metadata i64 %388, metadata !3167, metadata !DIExpression()), !dbg !3215
  %389 = icmp ult i64 %388, %130, !dbg !3531
  br i1 %389, label %390, label %392, !dbg !3534

390:                                              ; preds = %387
  %391 = getelementptr inbounds i8, i8* %0, i64 %388, !dbg !3531
  store i8 39, i8* %391, align 1, !dbg !3531, !tbaa !1649
  br label %392, !dbg !3531

392:                                              ; preds = %390, %387
  %393 = add i64 %368, 3, !dbg !3534
  call void @llvm.dbg.value(metadata i64 %393, metadata !3167, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i8 1, metadata !3174, metadata !DIExpression()), !dbg !3215
  br label %394, !dbg !3535

394:                                              ; preds = %374, %392
  %395 = phi i64 [ %393, %392 ], [ %368, %374 ], !dbg !3215
  %396 = phi i8 [ 1, %392 ], [ %369, %374 ], !dbg !3215
  call void @llvm.dbg.value(metadata i8 %396, metadata !3174, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i64 %395, metadata !3167, metadata !DIExpression()), !dbg !3215
  %397 = icmp ult i64 %395, %130, !dbg !3536
  br i1 %397, label %398, label %400, !dbg !3539

398:                                              ; preds = %394
  %399 = getelementptr inbounds i8, i8* %0, i64 %395, !dbg !3536
  store i8 92, i8* %399, align 1, !dbg !3536, !tbaa !1649
  br label %400, !dbg !3536

400:                                              ; preds = %398, %394
  %401 = add i64 %395, 1, !dbg !3539
  call void @llvm.dbg.value(metadata i64 %401, metadata !3167, metadata !DIExpression()), !dbg !3215
  %402 = icmp ult i64 %401, %130, !dbg !3540
  br i1 %402, label %403, label %407, !dbg !3543

403:                                              ; preds = %400
  %404 = lshr i8 %370, 6, !dbg !3540
  %405 = or i8 %404, 48, !dbg !3540
  %406 = getelementptr inbounds i8, i8* %0, i64 %401, !dbg !3540
  store i8 %405, i8* %406, align 1, !dbg !3540, !tbaa !1649
  br label %407, !dbg !3540

407:                                              ; preds = %403, %400
  %408 = add i64 %395, 2, !dbg !3543
  call void @llvm.dbg.value(metadata i64 %408, metadata !3167, metadata !DIExpression()), !dbg !3215
  %409 = icmp ult i64 %408, %130, !dbg !3544
  br i1 %409, label %410, label %415, !dbg !3547

410:                                              ; preds = %407
  %411 = lshr i8 %370, 3, !dbg !3544
  %412 = and i8 %411, 7, !dbg !3544
  %413 = or i8 %412, 48, !dbg !3544
  %414 = getelementptr inbounds i8, i8* %0, i64 %408, !dbg !3544
  store i8 %413, i8* %414, align 1, !dbg !3544, !tbaa !1649
  br label %415, !dbg !3544

415:                                              ; preds = %410, %407
  %416 = add i64 %395, 3, !dbg !3547
  call void @llvm.dbg.value(metadata i64 %416, metadata !3167, metadata !DIExpression()), !dbg !3215
  %417 = and i8 %370, 7, !dbg !3548
  %418 = or i8 %417, 48, !dbg !3549
  call void @llvm.dbg.value(metadata i8 %418, metadata !3177, metadata !DIExpression()), !dbg !3307
  br label %428, !dbg !3550

419:                                              ; preds = %366
  %420 = and i8 %371, 1, !dbg !3551
  %421 = icmp eq i8 %420, 0, !dbg !3551
  br i1 %421, label %428, label %422, !dbg !3553

422:                                              ; preds = %419
  %423 = icmp ult i64 %368, %130, !dbg !3554
  br i1 %423, label %424, label %426, !dbg !3558

424:                                              ; preds = %422
  %425 = getelementptr inbounds i8, i8* %0, i64 %368, !dbg !3554
  store i8 92, i8* %425, align 1, !dbg !3554, !tbaa !1649
  br label %426, !dbg !3554

426:                                              ; preds = %424, %422
  %427 = add i64 %368, 1, !dbg !3558
  call void @llvm.dbg.value(metadata i64 %427, metadata !3167, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i8 0, metadata !3182, metadata !DIExpression()), !dbg !3307
  br label %428, !dbg !3559

428:                                              ; preds = %419, %426, %415
  %429 = phi i64 [ %427, %426 ], [ %368, %419 ], [ %416, %415 ], !dbg !3215
  %430 = phi i8 [ %369, %426 ], [ %369, %419 ], [ %396, %415 ], !dbg !3236
  %431 = phi i8 [ %370, %426 ], [ %370, %419 ], [ %418, %415 ], !dbg !3307
  %432 = phi i8 [ 0, %426 ], [ %371, %419 ], [ %371, %415 ], !dbg !3307
  %433 = phi i8 [ %372, %426 ], [ %372, %419 ], [ 1, %415 ], !dbg !3307
  call void @llvm.dbg.value(metadata i8 %433, metadata !3183, metadata !DIExpression()), !dbg !3307
  call void @llvm.dbg.value(metadata i8 %432, metadata !3182, metadata !DIExpression()), !dbg !3307
  call void @llvm.dbg.value(metadata i8 %431, metadata !3177, metadata !DIExpression()), !dbg !3307
  call void @llvm.dbg.value(metadata i8 %430, metadata !3174, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i64 %429, metadata !3167, metadata !DIExpression()), !dbg !3215
  %434 = add i64 %367, 1, !dbg !3560
  %435 = icmp ugt i64 %365, %434, !dbg !3562
  br i1 %435, label %436, label %526, !dbg !3563

436:                                              ; preds = %428
  %437 = and i8 %430, 1, !dbg !3564
  %438 = icmp ne i8 %437, 0, !dbg !3564
  %439 = and i8 %433, 1, !dbg !3564
  %440 = icmp eq i8 %439, 0, !dbg !3564
  %441 = and i1 %438, %440, !dbg !3564
  br i1 %441, label %442, label %453, !dbg !3564

442:                                              ; preds = %436
  %443 = icmp ult i64 %429, %130, !dbg !3567
  br i1 %443, label %444, label %446, !dbg !3571

444:                                              ; preds = %442
  %445 = getelementptr inbounds i8, i8* %0, i64 %429, !dbg !3567
  store i8 39, i8* %445, align 1, !dbg !3567, !tbaa !1649
  br label %446, !dbg !3567

446:                                              ; preds = %444, %442
  %447 = add i64 %429, 1, !dbg !3571
  call void @llvm.dbg.value(metadata i64 %447, metadata !3167, metadata !DIExpression()), !dbg !3215
  %448 = icmp ult i64 %447, %130, !dbg !3572
  br i1 %448, label %449, label %451, !dbg !3575

449:                                              ; preds = %446
  %450 = getelementptr inbounds i8, i8* %0, i64 %447, !dbg !3572
  store i8 39, i8* %450, align 1, !dbg !3572, !tbaa !1649
  br label %451, !dbg !3572

451:                                              ; preds = %449, %446
  %452 = add i64 %429, 2, !dbg !3575
  call void @llvm.dbg.value(metadata i64 %452, metadata !3167, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i8 0, metadata !3174, metadata !DIExpression()), !dbg !3215
  br label %453, !dbg !3576

453:                                              ; preds = %436, %451
  %454 = phi i64 [ %452, %451 ], [ %429, %436 ], !dbg !3577
  %455 = phi i8 [ 0, %451 ], [ %430, %436 ], !dbg !3215
  call void @llvm.dbg.value(metadata i8 %455, metadata !3174, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i64 %454, metadata !3167, metadata !DIExpression()), !dbg !3215
  %456 = icmp ult i64 %454, %130, !dbg !3578
  br i1 %456, label %457, label %459, !dbg !3581

457:                                              ; preds = %453
  %458 = getelementptr inbounds i8, i8* %0, i64 %454, !dbg !3578
  store i8 %431, i8* %458, align 1, !dbg !3578, !tbaa !1649
  br label %459, !dbg !3578

459:                                              ; preds = %457, %453
  %460 = add i64 %454, 1, !dbg !3581
  call void @llvm.dbg.value(metadata i64 %460, metadata !3167, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i64 %434, metadata !3166, metadata !DIExpression()), !dbg !3215
  %461 = getelementptr inbounds i8, i8* %2, i64 %434, !dbg !3582
  %462 = load i8, i8* %461, align 1, !dbg !3582, !tbaa !1649
  call void @llvm.dbg.value(metadata i8 %462, metadata !3177, metadata !DIExpression()), !dbg !3307
  br label %366, !dbg !3583, !llvm.loop !3584

463:                                              ; preds = %355, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %265, %258, %187, %189, %192, %206, %208, %210, %211, %262, %267, %288, %259, %256, %244, %220, %215, %212, %209
  %464 = phi i64 [ %123, %288 ], [ %123, %267 ], [ %123, %265 ], [ %123, %262 ], [ %123, %259 ], [ %123, %256 ], [ %123, %209 ], [ %123, %220 ], [ %213, %244 ], [ %123, %215 ], [ %123, %212 ], [ %123, %211 ], [ %123, %210 ], [ %123, %208 ], [ %123, %206 ], [ %123, %192 ], [ %123, %189 ], [ %123, %187 ], [ %123, %258 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %355 ], !dbg !3300
  %465 = phi i64 [ %289, %288 ], [ %124, %267 ], [ %124, %265 ], [ %124, %262 ], [ %124, %259 ], [ %124, %256 ], [ %124, %209 ], [ %124, %220 ], [ %245, %244 ], [ %124, %215 ], [ %124, %212 ], [ %124, %211 ], [ %124, %210 ], [ %124, %208 ], [ %207, %206 ], [ %188, %192 ], [ %188, %189 ], [ %188, %187 ], [ %124, %258 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %355 ], !dbg !3215
  %466 = phi i64 [ %273, %288 ], [ %125, %267 ], [ %125, %265 ], [ %125, %262 ], [ %125, %259 ], [ %125, %256 ], [ %125, %209 ], [ %125, %220 ], [ %125, %244 ], [ %125, %215 ], [ %125, %212 ], [ %125, %211 ], [ %125, %210 ], [ %125, %208 ], [ %125, %206 ], [ %125, %192 ], [ %125, %189 ], [ %125, %187 ], [ %125, %258 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %355 ], !dbg !3232
  %467 = phi i64 [ %155, %288 ], [ %155, %267 ], [ %155, %265 ], [ %155, %262 ], [ -1, %259 ], [ %155, %256 ], [ %155, %209 ], [ %155, %220 ], [ %155, %244 ], [ %155, %215 ], [ %155, %212 ], [ %155, %211 ], [ %155, %210 ], [ %155, %208 ], [ %155, %206 ], [ %155, %192 ], [ %155, %189 ], [ %155, %187 ], [ %155, %258 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %356, %355 ], !dbg !3587
  %468 = phi i8 [ 0, %288 ], [ %127, %267 ], [ %127, %265 ], [ %127, %262 ], [ %127, %259 ], [ %127, %256 ], [ %127, %209 ], [ %127, %220 ], [ %127, %244 ], [ %127, %215 ], [ %127, %212 ], [ %127, %211 ], [ %127, %210 ], [ %127, %208 ], [ %183, %206 ], [ %183, %192 ], [ %183, %189 ], [ %183, %187 ], [ %127, %258 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %355 ], !dbg !3215
  %469 = phi i8 [ 1, %288 ], [ 1, %267 ], [ %128, %265 ], [ %128, %262 ], [ %128, %259 ], [ %128, %256 ], [ %128, %209 ], [ %128, %220 ], [ %128, %244 ], [ %128, %215 ], [ %128, %212 ], [ %128, %211 ], [ %128, %210 ], [ %128, %208 ], [ %128, %206 ], [ %128, %192 ], [ %128, %189 ], [ %128, %187 ], [ %128, %258 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %355 ], !dbg !3215
  %470 = phi i8 [ 39, %288 ], [ 39, %267 ], [ %158, %265 ], [ %158, %262 ], [ %158, %259 ], [ %158, %256 ], [ 63, %209 ], [ 63, %220 ], [ %222, %244 ], [ 63, %215 ], [ 63, %212 ], [ 63, %211 ], [ 63, %210 ], [ 0, %208 ], [ 48, %206 ], [ 48, %192 ], [ 48, %189 ], [ 48, %187 ], [ %158, %258 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %355 ], !dbg !3307
  %471 = phi i8 [ 0, %288 ], [ 0, %267 ], [ 0, %265 ], [ 0, %262 ], [ 0, %259 ], [ 0, %256 ], [ 0, %209 ], [ 0, %220 ], [ 0, %244 ], [ 0, %215 ], [ 0, %212 ], [ 0, %211 ], [ 0, %210 ], [ 0, %208 ], [ 1, %206 ], [ 1, %192 ], [ 1, %189 ], [ 1, %187 ], [ 0, %258 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %355 ], !dbg !3307
  %472 = phi i8 [ 1, %288 ], [ 1, %267 ], [ %266, %265 ], [ 0, %262 ], [ 0, %259 ], [ 0, %256 ], [ 0, %209 ], [ 0, %220 ], [ 0, %244 ], [ 0, %215 ], [ 0, %212 ], [ 0, %211 ], [ 0, %210 ], [ 0, %208 ], [ 0, %206 ], [ 0, %192 ], [ 0, %189 ], [ 0, %187 ], [ 0, %258 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ %359, %355 ], !dbg !3307
  %473 = phi i64 [ %274, %288 ], [ %130, %267 ], [ %130, %265 ], [ %130, %262 ], [ %130, %259 ], [ %130, %256 ], [ %130, %209 ], [ %130, %220 ], [ %130, %244 ], [ %130, %215 ], [ %130, %212 ], [ %130, %211 ], [ %130, %210 ], [ %130, %208 ], [ %130, %206 ], [ %130, %192 ], [ %130, %189 ], [ %130, %187 ], [ %130, %258 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %355 ]
  call void @llvm.dbg.value(metadata i64 %473, metadata !3158, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i8 %472, metadata !3184, metadata !DIExpression()), !dbg !3307
  call void @llvm.dbg.value(metadata i8 %471, metadata !3183, metadata !DIExpression()), !dbg !3307
  call void @llvm.dbg.value(metadata i8 %156, metadata !3182, metadata !DIExpression()), !dbg !3307
  call void @llvm.dbg.value(metadata i8 %470, metadata !3177, metadata !DIExpression()), !dbg !3307
  call void @llvm.dbg.value(metadata i8 %469, metadata !3175, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i8 %468, metadata !3174, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i64 %467, metadata !3160, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i64 %466, metadata !3168, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i64 %465, metadata !3167, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i64 %464, metadata !3166, metadata !DIExpression()), !dbg !3215
  br i1 %117, label %486, label %474, !dbg !3588

474:                                              ; preds = %463
  %475 = lshr i8 %470, 5, !dbg !3589
  %476 = zext i8 %475 to i64, !dbg !3589
  %477 = getelementptr inbounds i32, i32* %6, i64 %476, !dbg !3590
  %478 = load i32, i32* %477, align 4, !dbg !3590, !tbaa !1559
  %479 = and i8 %470, 31, !dbg !3591
  %480 = zext i8 %479 to i32, !dbg !3591
  %481 = shl nuw i32 1, %480, !dbg !3592
  %482 = and i32 %478, %481, !dbg !3592
  %483 = icmp eq i32 %482, 0, !dbg !3592
  %484 = icmp eq i8 %156, 0, !dbg !3593
  %485 = and i1 %484, %483, !dbg !3594
  br i1 %485, label %526, label %488, !dbg !3594

486:                                              ; preds = %463
  %487 = icmp eq i8 %156, 0, !dbg !3593
  br i1 %487, label %526, label %488, !dbg !3595

488:                                              ; preds = %256, %474, %486
  %489 = phi i64 [ %464, %474 ], [ %464, %486 ], [ %123, %256 ], !dbg !3596
  %490 = phi i64 [ %465, %474 ], [ %465, %486 ], [ %124, %256 ], !dbg !3215
  %491 = phi i64 [ %466, %474 ], [ %466, %486 ], [ %125, %256 ], !dbg !3232
  %492 = phi i64 [ %467, %474 ], [ %467, %486 ], [ %155, %256 ], !dbg !3587
  %493 = phi i8 [ %468, %474 ], [ %468, %486 ], [ %127, %256 ], !dbg !3236
  %494 = phi i8 [ %469, %474 ], [ %469, %486 ], [ %128, %256 ], !dbg !3237
  %495 = phi i8 [ %470, %474 ], [ %470, %486 ], [ %257, %256 ], !dbg !3307
  %496 = phi i8 [ %472, %474 ], [ %472, %486 ], [ 0, %256 ], !dbg !3307
  %497 = phi i64 [ %473, %474 ], [ %473, %486 ], [ %130, %256 ]
  call void @llvm.dbg.value(metadata i64 %497, metadata !3158, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i8 %496, metadata !3184, metadata !DIExpression()), !dbg !3307
  call void @llvm.dbg.value(metadata i8 %495, metadata !3177, metadata !DIExpression()), !dbg !3307
  call void @llvm.dbg.value(metadata i8 %494, metadata !3175, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i8 %493, metadata !3174, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i64 %492, metadata !3160, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i64 %491, metadata !3168, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i64 %490, metadata !3167, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i64 %489, metadata !3166, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.label(metadata !3212), !dbg !3597
  br i1 %109, label %498, label %629, !dbg !3598

498:                                              ; preds = %488
  call void @llvm.dbg.value(metadata i8 1, metadata !3183, metadata !DIExpression()), !dbg !3307
  %499 = and i8 %493, 1, !dbg !3600
  %500 = icmp eq i8 %499, 0, !dbg !3600
  %501 = and i1 %110, %500, !dbg !3600
  br i1 %501, label %502, label %518, !dbg !3600

502:                                              ; preds = %498
  %503 = icmp ult i64 %490, %497, !dbg !3602
  br i1 %503, label %504, label %506, !dbg !3606

504:                                              ; preds = %502
  %505 = getelementptr inbounds i8, i8* %0, i64 %490, !dbg !3602
  store i8 39, i8* %505, align 1, !dbg !3602, !tbaa !1649
  br label %506, !dbg !3602

506:                                              ; preds = %504, %502
  %507 = add i64 %490, 1, !dbg !3606
  call void @llvm.dbg.value(metadata i64 %507, metadata !3167, metadata !DIExpression()), !dbg !3215
  %508 = icmp ult i64 %507, %497, !dbg !3607
  br i1 %508, label %509, label %511, !dbg !3610

509:                                              ; preds = %506
  %510 = getelementptr inbounds i8, i8* %0, i64 %507, !dbg !3607
  store i8 36, i8* %510, align 1, !dbg !3607, !tbaa !1649
  br label %511, !dbg !3607

511:                                              ; preds = %509, %506
  %512 = add i64 %490, 2, !dbg !3610
  call void @llvm.dbg.value(metadata i64 %512, metadata !3167, metadata !DIExpression()), !dbg !3215
  %513 = icmp ult i64 %512, %497, !dbg !3611
  br i1 %513, label %514, label %516, !dbg !3614

514:                                              ; preds = %511
  %515 = getelementptr inbounds i8, i8* %0, i64 %512, !dbg !3611
  store i8 39, i8* %515, align 1, !dbg !3611, !tbaa !1649
  br label %516, !dbg !3611

516:                                              ; preds = %514, %511
  %517 = add i64 %490, 3, !dbg !3614
  call void @llvm.dbg.value(metadata i64 %517, metadata !3167, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i8 1, metadata !3174, metadata !DIExpression()), !dbg !3215
  br label %518, !dbg !3615

518:                                              ; preds = %498, %516
  %519 = phi i64 [ %517, %516 ], [ %490, %498 ], !dbg !3307
  %520 = phi i8 [ 1, %516 ], [ %493, %498 ], !dbg !3215
  call void @llvm.dbg.value(metadata i8 %520, metadata !3174, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i64 %519, metadata !3167, metadata !DIExpression()), !dbg !3215
  %521 = icmp ult i64 %519, %497, !dbg !3616
  br i1 %521, label %522, label %524, !dbg !3619

522:                                              ; preds = %518
  %523 = getelementptr inbounds i8, i8* %0, i64 %519, !dbg !3616
  store i8 92, i8* %523, align 1, !dbg !3616, !tbaa !1649
  br label %524, !dbg !3616

524:                                              ; preds = %518, %522
  %525 = add i64 %519, 1, !dbg !3619
  call void @llvm.dbg.value(metadata i64 %525, metadata !3167, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i64 %536, metadata !3158, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i8 %535, metadata !3184, metadata !DIExpression()), !dbg !3307
  call void @llvm.dbg.value(metadata i8 %534, metadata !3183, metadata !DIExpression()), !dbg !3307
  call void @llvm.dbg.value(metadata i8 %533, metadata !3177, metadata !DIExpression()), !dbg !3307
  call void @llvm.dbg.value(metadata i8 %532, metadata !3175, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i8 %531, metadata !3174, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i64 %530, metadata !3160, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i64 %529, metadata !3168, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i64 %528, metadata !3167, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i64 %527, metadata !3166, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.label(metadata !3213), !dbg !3620
  br label %553, !dbg !3621

526:                                              ; preds = %428, %253, %474, %252, %486
  %527 = phi i64 [ %464, %486 ], [ %123, %252 ], [ %464, %474 ], [ %123, %253 ], [ %367, %428 ], !dbg !3596
  %528 = phi i64 [ %465, %486 ], [ %124, %252 ], [ %465, %474 ], [ %124, %253 ], [ %429, %428 ], !dbg !3215
  %529 = phi i64 [ %466, %486 ], [ %125, %252 ], [ %466, %474 ], [ %125, %253 ], [ %125, %428 ], !dbg !3232
  %530 = phi i64 [ %467, %486 ], [ %155, %252 ], [ %467, %474 ], [ %155, %253 ], [ %356, %428 ], !dbg !3587
  %531 = phi i8 [ %468, %486 ], [ %127, %252 ], [ %468, %474 ], [ %127, %253 ], [ %430, %428 ], !dbg !3236
  %532 = phi i8 [ %469, %486 ], [ %128, %252 ], [ %469, %474 ], [ %128, %253 ], [ %128, %428 ], !dbg !3237
  %533 = phi i8 [ %470, %486 ], [ 92, %252 ], [ %470, %474 ], [ 92, %253 ], [ %431, %428 ], !dbg !3624
  %534 = phi i8 [ %471, %486 ], [ 0, %252 ], [ %471, %474 ], [ 0, %253 ], [ %433, %428 ], !dbg !3307
  %535 = phi i8 [ %472, %486 ], [ 0, %252 ], [ %472, %474 ], [ 0, %253 ], [ %359, %428 ], !dbg !3307
  %536 = phi i64 [ %473, %486 ], [ %130, %252 ], [ %473, %474 ], [ %130, %253 ], [ %130, %428 ]
  call void @llvm.dbg.value(metadata i64 %536, metadata !3158, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i8 %535, metadata !3184, metadata !DIExpression()), !dbg !3307
  call void @llvm.dbg.value(metadata i8 %534, metadata !3183, metadata !DIExpression()), !dbg !3307
  call void @llvm.dbg.value(metadata i8 %533, metadata !3177, metadata !DIExpression()), !dbg !3307
  call void @llvm.dbg.value(metadata i8 %532, metadata !3175, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i8 %531, metadata !3174, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i64 %530, metadata !3160, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i64 %529, metadata !3168, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i64 %528, metadata !3167, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i64 %527, metadata !3166, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.label(metadata !3213), !dbg !3620
  %537 = and i8 %531, 1, !dbg !3621
  %538 = icmp ne i8 %537, 0, !dbg !3621
  %539 = and i8 %534, 1, !dbg !3621
  %540 = icmp eq i8 %539, 0, !dbg !3621
  %541 = and i1 %538, %540, !dbg !3621
  br i1 %541, label %542, label %553, !dbg !3621

542:                                              ; preds = %526
  %543 = icmp ult i64 %528, %536, !dbg !3625
  br i1 %543, label %544, label %546, !dbg !3629

544:                                              ; preds = %542
  %545 = getelementptr inbounds i8, i8* %0, i64 %528, !dbg !3625
  store i8 39, i8* %545, align 1, !dbg !3625, !tbaa !1649
  br label %546, !dbg !3625

546:                                              ; preds = %544, %542
  %547 = add i64 %528, 1, !dbg !3629
  call void @llvm.dbg.value(metadata i64 %547, metadata !3167, metadata !DIExpression()), !dbg !3215
  %548 = icmp ult i64 %547, %536, !dbg !3630
  br i1 %548, label %549, label %551, !dbg !3633

549:                                              ; preds = %546
  %550 = getelementptr inbounds i8, i8* %0, i64 %547, !dbg !3630
  store i8 39, i8* %550, align 1, !dbg !3630, !tbaa !1649
  br label %551, !dbg !3630

551:                                              ; preds = %549, %546
  %552 = add i64 %528, 2, !dbg !3633
  call void @llvm.dbg.value(metadata i64 %552, metadata !3167, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i8 0, metadata !3174, metadata !DIExpression()), !dbg !3215
  br label %553, !dbg !3634

553:                                              ; preds = %524, %526, %551
  %554 = phi i64 [ %536, %551 ], [ %536, %526 ], [ %497, %524 ]
  %555 = phi i8 [ %535, %551 ], [ %535, %526 ], [ %496, %524 ]
  %556 = phi i8 [ %533, %551 ], [ %533, %526 ], [ %495, %524 ]
  %557 = phi i8 [ %532, %551 ], [ %532, %526 ], [ %494, %524 ]
  %558 = phi i64 [ %530, %551 ], [ %530, %526 ], [ %492, %524 ]
  %559 = phi i64 [ %529, %551 ], [ %529, %526 ], [ %491, %524 ]
  %560 = phi i64 [ %527, %551 ], [ %527, %526 ], [ %489, %524 ]
  %561 = phi i64 [ %552, %551 ], [ %528, %526 ], [ %525, %524 ], !dbg !3307
  %562 = phi i8 [ 0, %551 ], [ %531, %526 ], [ %520, %524 ], !dbg !3215
  call void @llvm.dbg.value(metadata i8 %562, metadata !3174, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i64 %561, metadata !3167, metadata !DIExpression()), !dbg !3215
  %563 = icmp ult i64 %561, %554, !dbg !3635
  br i1 %563, label %564, label %566, !dbg !3638

564:                                              ; preds = %553
  %565 = getelementptr inbounds i8, i8* %0, i64 %561, !dbg !3635
  store i8 %556, i8* %565, align 1, !dbg !3635, !tbaa !1649
  br label %566, !dbg !3635

566:                                              ; preds = %564, %553
  %567 = add i64 %561, 1, !dbg !3638
  call void @llvm.dbg.value(metadata i64 %567, metadata !3167, metadata !DIExpression()), !dbg !3215
  %568 = and i8 %555, 1, !dbg !3639
  %569 = icmp eq i8 %568, 0, !dbg !3639
  %570 = select i1 %569, i8 0, i8 %129, !dbg !3641
  call void @llvm.dbg.value(metadata i8 %570, metadata !3176, metadata !DIExpression()), !dbg !3215
  br label %571, !dbg !3642

571:                                              ; preds = %566, %208
  %572 = phi i64 [ %560, %566 ], [ %123, %208 ], !dbg !3596
  %573 = phi i64 [ %567, %566 ], [ %124, %208 ], !dbg !3215
  %574 = phi i64 [ %559, %566 ], [ %125, %208 ], !dbg !3232
  %575 = phi i64 [ %558, %566 ], [ %155, %208 ], !dbg !3587
  %576 = phi i8 [ %562, %566 ], [ %127, %208 ], !dbg !3236
  %577 = phi i8 [ %557, %566 ], [ %128, %208 ], !dbg !3215
  %578 = phi i8 [ %570, %566 ], [ %129, %208 ], !dbg !3238
  %579 = phi i64 [ %554, %566 ], [ %130, %208 ]
  call void @llvm.dbg.value(metadata i64 %579, metadata !3158, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i8 %578, metadata !3176, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i8 %577, metadata !3175, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i8 %576, metadata !3174, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i64 %575, metadata !3160, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i64 %574, metadata !3168, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i64 %573, metadata !3167, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i64 %572, metadata !3166, metadata !DIExpression()), !dbg !3215
  %580 = add i64 %572, 1, !dbg !3643
  call void @llvm.dbg.value(metadata i64 %580, metadata !3166, metadata !DIExpression()), !dbg !3215
  br label %122, !dbg !3644, !llvm.loop !3645

581:                                              ; preds = %132, %136
  %582 = phi i64 [ -1, %132 ], [ %123, %136 ]
  call void @llvm.dbg.value(metadata i64 %124, metadata !3167, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i64 %124, metadata !3167, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i64 %125, metadata !3168, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i64 %125, metadata !3168, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i8 %127, metadata !3174, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i8 %127, metadata !3174, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i8 %128, metadata !3175, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i8 %128, metadata !3175, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i8 %129, metadata !3176, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i8 %129, metadata !3176, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i64 %130, metadata !3158, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i64 %130, metadata !3158, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i64 %124, metadata !3167, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i64 %124, metadata !3167, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i64 %125, metadata !3168, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i64 %125, metadata !3168, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i8 %127, metadata !3174, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i8 %127, metadata !3174, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i8 %128, metadata !3175, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i8 %128, metadata !3175, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i8 %129, metadata !3176, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i8 %129, metadata !3176, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i64 %130, metadata !3158, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i64 %130, metadata !3158, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i64 %124, metadata !3167, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i64 %124, metadata !3167, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i64 %125, metadata !3168, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i64 %125, metadata !3168, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i8 %127, metadata !3174, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i8 %127, metadata !3174, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i8 %128, metadata !3175, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i8 %128, metadata !3175, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i8 %129, metadata !3176, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i8 %129, metadata !3176, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i64 %130, metadata !3158, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i64 %130, metadata !3158, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i64 %124, metadata !3167, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i64 %124, metadata !3167, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i64 %125, metadata !3168, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i64 %125, metadata !3168, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i8 %127, metadata !3174, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i8 %127, metadata !3174, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i8 %128, metadata !3175, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i8 %128, metadata !3175, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i8 %129, metadata !3176, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i8 %129, metadata !3176, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i64 %130, metadata !3158, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i64 %130, metadata !3158, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i64 %124, metadata !3167, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i64 %124, metadata !3167, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i64 %125, metadata !3168, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i64 %125, metadata !3168, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i64 %582, metadata !3160, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i64 %582, metadata !3160, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i8 %127, metadata !3174, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i8 %127, metadata !3174, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i8 %128, metadata !3175, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i8 %128, metadata !3175, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i8 %129, metadata !3176, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i8 %129, metadata !3176, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i64 %130, metadata !3158, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i64 %130, metadata !3158, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i64 %124, metadata !3167, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i64 %124, metadata !3167, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i64 %125, metadata !3168, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i64 %125, metadata !3168, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i64 %582, metadata !3160, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i64 %582, metadata !3160, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i8 %127, metadata !3174, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i8 %127, metadata !3174, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i8 %128, metadata !3175, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i8 %128, metadata !3175, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i8 %129, metadata !3176, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i8 %129, metadata !3176, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i64 %130, metadata !3158, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i64 %130, metadata !3158, metadata !DIExpression()), !dbg !3215
  %583 = icmp eq i64 %124, 0, !dbg !3647
  %584 = and i1 %110, %583, !dbg !3649
  %585 = xor i1 %584, true, !dbg !3649
  %586 = or i1 %109, %585, !dbg !3649
  br i1 %586, label %587, label %629, !dbg !3649

587:                                              ; preds = %581
  %588 = and i1 %110, %109, !dbg !3650
  %589 = xor i1 %588, true, !dbg !3650
  %590 = and i8 %128, 1, !dbg !3652
  %591 = icmp eq i8 %590, 0, !dbg !3652
  %592 = or i1 %591, %589, !dbg !3650
  br i1 %592, label %602, label %593, !dbg !3650

593:                                              ; preds = %587
  %594 = and i8 %129, 1, !dbg !3653
  %595 = icmp eq i8 %594, 0, !dbg !3653
  br i1 %595, label %598, label %596, !dbg !3656

596:                                              ; preds = %593
  call void @llvm.dbg.value(metadata i64 %582, metadata !3160, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i8* %94, metadata !3164, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i8* %95, metadata !3165, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i64 %125, metadata !3168, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i64 %582, metadata !3160, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i8* %94, metadata !3164, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i8* %95, metadata !3165, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i64 %125, metadata !3168, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i64 %582, metadata !3160, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i8* %94, metadata !3164, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i8* %95, metadata !3165, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i64 %125, metadata !3168, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i64 %582, metadata !3160, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i8* %94, metadata !3164, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i8* %95, metadata !3165, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i64 %125, metadata !3168, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i8* %94, metadata !3164, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i8* %95, metadata !3165, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i64 %125, metadata !3168, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i64 %582, metadata !3160, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i8* %94, metadata !3164, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i8* %95, metadata !3165, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i64 %125, metadata !3168, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i64 %582, metadata !3160, metadata !DIExpression()), !dbg !3215
  %597 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %125, i8* %2, i64 %582, i32 5, i32 %5, i32* %6, i8* %94, i8* %95), !dbg !3657
  br label %645, !dbg !3658

598:                                              ; preds = %593
  %599 = icmp eq i64 %130, 0, !dbg !3659
  %600 = icmp ne i64 %125, 0, !dbg !3661
  %601 = and i1 %600, %599, !dbg !3662
  br i1 %601, label %26, label %602, !dbg !3662

602:                                              ; preds = %587, %598
  call void @llvm.dbg.value(metadata i8* %97, metadata !3169, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i8* %97, metadata !3169, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i64 %124, metadata !3167, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i64 %124, metadata !3167, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i64 %130, metadata !3158, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i64 %130, metadata !3158, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i8* %97, metadata !3169, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i8* %97, metadata !3169, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i64 %124, metadata !3167, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i64 %124, metadata !3167, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i64 %130, metadata !3158, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i64 %130, metadata !3158, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i8* %97, metadata !3169, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i8* %97, metadata !3169, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i64 %124, metadata !3167, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i64 %124, metadata !3167, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i64 %130, metadata !3158, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i64 %130, metadata !3158, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i8* %97, metadata !3169, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i8* %97, metadata !3169, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i64 %124, metadata !3167, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i64 %124, metadata !3167, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i64 %130, metadata !3158, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i64 %130, metadata !3158, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i8* %97, metadata !3169, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i8* %97, metadata !3169, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i64 %124, metadata !3167, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i64 %124, metadata !3167, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i64 %130, metadata !3158, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i64 %130, metadata !3158, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i8* %97, metadata !3169, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i8* %97, metadata !3169, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i64 %124, metadata !3167, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i64 %124, metadata !3167, metadata !DIExpression()), !dbg !3215
  %603 = icmp ne i8* %97, null, !dbg !3663
  %604 = and i1 %603, %109, !dbg !3665
  br i1 %604, label %605, label %620, !dbg !3665

605:                                              ; preds = %602
  call void @llvm.dbg.value(metadata i8* %97, metadata !3169, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i64 %124, metadata !3167, metadata !DIExpression()), !dbg !3215
  %606 = load i8, i8* %97, align 1, !dbg !3666, !tbaa !1649
  %607 = icmp eq i8 %606, 0, !dbg !3669
  br i1 %607, label %620, label %608, !dbg !3669

608:                                              ; preds = %605, %615
  %609 = phi i8 [ %618, %615 ], [ %606, %605 ]
  %610 = phi i8* [ %617, %615 ], [ %97, %605 ]
  %611 = phi i64 [ %616, %615 ], [ %124, %605 ]
  call void @llvm.dbg.value(metadata i8* %610, metadata !3169, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i64 %611, metadata !3167, metadata !DIExpression()), !dbg !3215
  %612 = icmp ult i64 %611, %130, !dbg !3670
  br i1 %612, label %613, label %615, !dbg !3673

613:                                              ; preds = %608
  %614 = getelementptr inbounds i8, i8* %0, i64 %611, !dbg !3670
  store i8 %609, i8* %614, align 1, !dbg !3670, !tbaa !1649
  br label %615, !dbg !3670

615:                                              ; preds = %613, %608
  %616 = add i64 %611, 1, !dbg !3673
  call void @llvm.dbg.value(metadata i64 %616, metadata !3167, metadata !DIExpression()), !dbg !3215
  %617 = getelementptr inbounds i8, i8* %610, i64 1, !dbg !3674
  call void @llvm.dbg.value(metadata i8* %617, metadata !3169, metadata !DIExpression()), !dbg !3215
  %618 = load i8, i8* %617, align 1, !dbg !3666, !tbaa !1649
  %619 = icmp eq i8 %618, 0, !dbg !3669
  br i1 %619, label %620, label %608, !dbg !3669, !llvm.loop !3675

620:                                              ; preds = %615, %605, %602
  %621 = phi i64 [ %124, %602 ], [ %124, %605 ], [ %616, %615 ], !dbg !3269
  call void @llvm.dbg.value(metadata i64 %621, metadata !3167, metadata !DIExpression()), !dbg !3215
  %622 = icmp ult i64 %621, %130, !dbg !3677
  br i1 %622, label %623, label %645, !dbg !3679

623:                                              ; preds = %620
  %624 = getelementptr inbounds i8, i8* %0, i64 %621, !dbg !3680
  store i8 0, i8* %624, align 1, !dbg !3681, !tbaa !1649
  br label %645, !dbg !3680

625:                                              ; preds = %210, %252, %254, %265, %268, %354
  %626 = phi i64 [ %305, %354 ], [ %155, %268 ], [ %155, %265 ], [ %155, %254 ], [ %155, %252 ], [ %155, %210 ]
  call void @llvm.dbg.value(metadata i64 %631, metadata !3158, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i64 %630, metadata !3160, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.label(metadata !3214), !dbg !3682
  %627 = icmp eq i8 %101, 0, !dbg !3683
  %628 = select i1 %627, i32 2, i32 4, !dbg !3683
  br label %635, !dbg !3683

629:                                              ; preds = %581, %488, %160, %373
  %630 = phi i64 [ %356, %373 ], [ %492, %488 ], [ %155, %160 ], [ %582, %581 ]
  %631 = phi i64 [ %130, %373 ], [ %497, %488 ], [ %130, %160 ], [ %130, %581 ]
  call void @llvm.dbg.value(metadata i64 %631, metadata !3158, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i64 %630, metadata !3160, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.label(metadata !3214), !dbg !3682
  %632 = icmp eq i32 %93, 2, !dbg !3685
  %633 = icmp eq i8 %101, 0, !dbg !3683
  %634 = select i1 %633, i32 2, i32 4, !dbg !3683
  br i1 %632, label %635, label %639, !dbg !3683

635:                                              ; preds = %625, %629
  %636 = phi i32 [ %628, %625 ], [ %634, %629 ]
  %637 = phi i64 [ %130, %625 ], [ %631, %629 ]
  %638 = phi i64 [ %626, %625 ], [ %630, %629 ]
  br label %639, !dbg !3683

639:                                              ; preds = %224, %147, %629, %635
  %640 = phi i64 [ %637, %635 ], [ %631, %629 ], [ %130, %147 ], [ %130, %224 ]
  %641 = phi i64 [ %638, %635 ], [ %630, %629 ], [ %155, %224 ], [ %145, %147 ]
  %642 = phi i32 [ %636, %635 ], [ %93, %629 ], [ 5, %224 ], [ %93, %147 ]
  call void @llvm.dbg.value(metadata i32 %642, metadata !3161, metadata !DIExpression()), !dbg !3215
  %643 = and i32 %5, -3, !dbg !3686
  %644 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %640, i8* %2, i64 %641, i32 %642, i32 %643, i32* null, i8* %94, i8* %95), !dbg !3687
  br label %645, !dbg !3688

645:                                              ; preds = %620, %623, %639, %596
  %646 = phi i64 [ %644, %639 ], [ %597, %596 ], [ %621, %623 ], [ %621, %620 ]
  ret i64 %646, !dbg !3689
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @gettext_quote(i8* %0, i32 %1) unnamed_addr #8 !dbg !3690 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3694, metadata !DIExpression()), !dbg !3698
  call void @llvm.dbg.value(metadata i32 %1, metadata !3695, metadata !DIExpression()), !dbg !3698
  %3 = tail call i8* @dcgettext(i8* null, i8* %0, i32 5) #18, !dbg !3699
  call void @llvm.dbg.value(metadata i8* %3, metadata !3696, metadata !DIExpression()), !dbg !3698
  %4 = icmp eq i8* %3, %0, !dbg !3700
  br i1 %4, label %5, label %71, !dbg !3702

5:                                                ; preds = %2
  %6 = tail call i8* @locale_charset() #18, !dbg !3703
  call void @llvm.dbg.value(metadata i8* %6, metadata !3697, metadata !DIExpression()), !dbg !3698
  call void @llvm.dbg.value(metadata i8* %6, metadata !3704, metadata !DIExpression()), !dbg !3720
  call void @llvm.dbg.value(metadata i8* undef, metadata !3710, metadata !DIExpression()), !dbg !3720
  call void @llvm.dbg.value(metadata i8 85, metadata !3711, metadata !DIExpression()), !dbg !3720
  call void @llvm.dbg.value(metadata i8 84, metadata !3712, metadata !DIExpression()), !dbg !3720
  call void @llvm.dbg.value(metadata i8 70, metadata !3713, metadata !DIExpression()), !dbg !3720
  call void @llvm.dbg.value(metadata i8 45, metadata !3714, metadata !DIExpression()), !dbg !3720
  call void @llvm.dbg.value(metadata i8 56, metadata !3715, metadata !DIExpression()), !dbg !3720
  call void @llvm.dbg.value(metadata i8 0, metadata !3716, metadata !DIExpression()), !dbg !3720
  call void @llvm.dbg.value(metadata i8 0, metadata !3717, metadata !DIExpression()), !dbg !3720
  call void @llvm.dbg.value(metadata i8 0, metadata !3718, metadata !DIExpression()), !dbg !3720
  call void @llvm.dbg.value(metadata i8 0, metadata !3719, metadata !DIExpression()), !dbg !3720
  %7 = load i8, i8* %6, align 1, !dbg !3723, !tbaa !1649
  %8 = and i8 %7, -33, !dbg !3723
  switch i8 %8, label %68 [
    i8 85, label %9
    i8 71, label %35
  ], !dbg !3723

9:                                                ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !3725, metadata !DIExpression()), !dbg !3739
  call void @llvm.dbg.value(metadata i8* undef, metadata !3730, metadata !DIExpression()), !dbg !3739
  call void @llvm.dbg.value(metadata i8 84, metadata !3731, metadata !DIExpression()), !dbg !3739
  call void @llvm.dbg.value(metadata i8 70, metadata !3732, metadata !DIExpression()), !dbg !3739
  call void @llvm.dbg.value(metadata i8 45, metadata !3733, metadata !DIExpression()), !dbg !3739
  call void @llvm.dbg.value(metadata i8 56, metadata !3734, metadata !DIExpression()), !dbg !3739
  call void @llvm.dbg.value(metadata i8 0, metadata !3735, metadata !DIExpression()), !dbg !3739
  call void @llvm.dbg.value(metadata i8 0, metadata !3736, metadata !DIExpression()), !dbg !3739
  call void @llvm.dbg.value(metadata i8 0, metadata !3737, metadata !DIExpression()), !dbg !3739
  call void @llvm.dbg.value(metadata i8 0, metadata !3738, metadata !DIExpression()), !dbg !3739
  %10 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !3743
  %11 = load i8, i8* %10, align 1, !dbg !3743, !tbaa !1649
  %12 = and i8 %11, -33, !dbg !3743
  %13 = icmp eq i8 %12, 84, !dbg !3743
  br i1 %13, label %14, label %68, !dbg !3743

14:                                               ; preds = %9
  call void @llvm.dbg.value(metadata i8* %6, metadata !3745, metadata !DIExpression()), !dbg !3758
  call void @llvm.dbg.value(metadata i8* undef, metadata !3750, metadata !DIExpression()), !dbg !3758
  call void @llvm.dbg.value(metadata i8 70, metadata !3751, metadata !DIExpression()), !dbg !3758
  call void @llvm.dbg.value(metadata i8 45, metadata !3752, metadata !DIExpression()), !dbg !3758
  call void @llvm.dbg.value(metadata i8 56, metadata !3753, metadata !DIExpression()), !dbg !3758
  call void @llvm.dbg.value(metadata i8 0, metadata !3754, metadata !DIExpression()), !dbg !3758
  call void @llvm.dbg.value(metadata i8 0, metadata !3755, metadata !DIExpression()), !dbg !3758
  call void @llvm.dbg.value(metadata i8 0, metadata !3756, metadata !DIExpression()), !dbg !3758
  call void @llvm.dbg.value(metadata i8 0, metadata !3757, metadata !DIExpression()), !dbg !3758
  %15 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !3762
  %16 = load i8, i8* %15, align 1, !dbg !3762, !tbaa !1649
  %17 = and i8 %16, -33, !dbg !3762
  %18 = icmp eq i8 %17, 70, !dbg !3762
  br i1 %18, label %19, label %68, !dbg !3762

19:                                               ; preds = %14
  call void @llvm.dbg.value(metadata i8* %6, metadata !3764, metadata !DIExpression()), !dbg !3776
  call void @llvm.dbg.value(metadata i8* undef, metadata !3769, metadata !DIExpression()), !dbg !3776
  call void @llvm.dbg.value(metadata i8 45, metadata !3770, metadata !DIExpression()), !dbg !3776
  call void @llvm.dbg.value(metadata i8 56, metadata !3771, metadata !DIExpression()), !dbg !3776
  call void @llvm.dbg.value(metadata i8 0, metadata !3772, metadata !DIExpression()), !dbg !3776
  call void @llvm.dbg.value(metadata i8 0, metadata !3773, metadata !DIExpression()), !dbg !3776
  call void @llvm.dbg.value(metadata i8 0, metadata !3774, metadata !DIExpression()), !dbg !3776
  call void @llvm.dbg.value(metadata i8 0, metadata !3775, metadata !DIExpression()), !dbg !3776
  %20 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !3780
  %21 = load i8, i8* %20, align 1, !dbg !3780, !tbaa !1649
  %22 = icmp eq i8 %21, 45, !dbg !3780
  br i1 %22, label %23, label %68, !dbg !3782

23:                                               ; preds = %19
  call void @llvm.dbg.value(metadata i8* %6, metadata !3783, metadata !DIExpression()), !dbg !3794
  call void @llvm.dbg.value(metadata i8* undef, metadata !3788, metadata !DIExpression()), !dbg !3794
  call void @llvm.dbg.value(metadata i8 56, metadata !3789, metadata !DIExpression()), !dbg !3794
  call void @llvm.dbg.value(metadata i8 0, metadata !3790, metadata !DIExpression()), !dbg !3794
  call void @llvm.dbg.value(metadata i8 0, metadata !3791, metadata !DIExpression()), !dbg !3794
  call void @llvm.dbg.value(metadata i8 0, metadata !3792, metadata !DIExpression()), !dbg !3794
  call void @llvm.dbg.value(metadata i8 0, metadata !3793, metadata !DIExpression()), !dbg !3794
  %24 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !3798
  %25 = load i8, i8* %24, align 1, !dbg !3798, !tbaa !1649
  %26 = icmp eq i8 %25, 56, !dbg !3798
  br i1 %26, label %27, label %68, !dbg !3800

27:                                               ; preds = %23
  call void @llvm.dbg.value(metadata i8* %6, metadata !3801, metadata !DIExpression()), !dbg !3811
  call void @llvm.dbg.value(metadata i8* undef, metadata !3806, metadata !DIExpression()), !dbg !3811
  call void @llvm.dbg.value(metadata i8 0, metadata !3807, metadata !DIExpression()), !dbg !3811
  call void @llvm.dbg.value(metadata i8 0, metadata !3808, metadata !DIExpression()), !dbg !3811
  call void @llvm.dbg.value(metadata i8 0, metadata !3809, metadata !DIExpression()), !dbg !3811
  call void @llvm.dbg.value(metadata i8 0, metadata !3810, metadata !DIExpression()), !dbg !3811
  %28 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !3815
  %29 = load i8, i8* %28, align 1, !dbg !3815, !tbaa !1649
  %30 = icmp eq i8 %29, 0, !dbg !3815
  br i1 %30, label %31, label %68, !dbg !3817

31:                                               ; preds = %27
  %32 = load i8, i8* %0, align 1, !dbg !3818, !tbaa !1649
  %33 = icmp eq i8 %32, 96, !dbg !3819
  %34 = select i1 %33, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14.117, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15.118, i64 0, i64 0), !dbg !3818
  br label %71, !dbg !3820

35:                                               ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !3725, metadata !DIExpression()), !dbg !3821
  call void @llvm.dbg.value(metadata i8* undef, metadata !3730, metadata !DIExpression()), !dbg !3821
  call void @llvm.dbg.value(metadata i8 66, metadata !3731, metadata !DIExpression()), !dbg !3821
  call void @llvm.dbg.value(metadata i8 49, metadata !3732, metadata !DIExpression()), !dbg !3821
  call void @llvm.dbg.value(metadata i8 56, metadata !3733, metadata !DIExpression()), !dbg !3821
  call void @llvm.dbg.value(metadata i8 48, metadata !3734, metadata !DIExpression()), !dbg !3821
  call void @llvm.dbg.value(metadata i8 51, metadata !3735, metadata !DIExpression()), !dbg !3821
  call void @llvm.dbg.value(metadata i8 48, metadata !3736, metadata !DIExpression()), !dbg !3821
  call void @llvm.dbg.value(metadata i8 0, metadata !3737, metadata !DIExpression()), !dbg !3821
  call void @llvm.dbg.value(metadata i8 0, metadata !3738, metadata !DIExpression()), !dbg !3821
  %36 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !3825
  %37 = load i8, i8* %36, align 1, !dbg !3825, !tbaa !1649
  %38 = and i8 %37, -33, !dbg !3825
  %39 = icmp eq i8 %38, 66, !dbg !3825
  br i1 %39, label %40, label %68, !dbg !3825

40:                                               ; preds = %35
  call void @llvm.dbg.value(metadata i8* %6, metadata !3745, metadata !DIExpression()), !dbg !3826
  call void @llvm.dbg.value(metadata i8* undef, metadata !3750, metadata !DIExpression()), !dbg !3826
  call void @llvm.dbg.value(metadata i8 49, metadata !3751, metadata !DIExpression()), !dbg !3826
  call void @llvm.dbg.value(metadata i8 56, metadata !3752, metadata !DIExpression()), !dbg !3826
  call void @llvm.dbg.value(metadata i8 48, metadata !3753, metadata !DIExpression()), !dbg !3826
  call void @llvm.dbg.value(metadata i8 51, metadata !3754, metadata !DIExpression()), !dbg !3826
  call void @llvm.dbg.value(metadata i8 48, metadata !3755, metadata !DIExpression()), !dbg !3826
  call void @llvm.dbg.value(metadata i8 0, metadata !3756, metadata !DIExpression()), !dbg !3826
  call void @llvm.dbg.value(metadata i8 0, metadata !3757, metadata !DIExpression()), !dbg !3826
  %41 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !3828
  %42 = load i8, i8* %41, align 1, !dbg !3828, !tbaa !1649
  %43 = icmp eq i8 %42, 49, !dbg !3828
  br i1 %43, label %44, label %68, !dbg !3829

44:                                               ; preds = %40
  call void @llvm.dbg.value(metadata i8* %6, metadata !3764, metadata !DIExpression()), !dbg !3830
  call void @llvm.dbg.value(metadata i8* undef, metadata !3769, metadata !DIExpression()), !dbg !3830
  call void @llvm.dbg.value(metadata i8 56, metadata !3770, metadata !DIExpression()), !dbg !3830
  call void @llvm.dbg.value(metadata i8 48, metadata !3771, metadata !DIExpression()), !dbg !3830
  call void @llvm.dbg.value(metadata i8 51, metadata !3772, metadata !DIExpression()), !dbg !3830
  call void @llvm.dbg.value(metadata i8 48, metadata !3773, metadata !DIExpression()), !dbg !3830
  call void @llvm.dbg.value(metadata i8 0, metadata !3774, metadata !DIExpression()), !dbg !3830
  call void @llvm.dbg.value(metadata i8 0, metadata !3775, metadata !DIExpression()), !dbg !3830
  %45 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !3832
  %46 = load i8, i8* %45, align 1, !dbg !3832, !tbaa !1649
  %47 = icmp eq i8 %46, 56, !dbg !3832
  br i1 %47, label %48, label %68, !dbg !3833

48:                                               ; preds = %44
  call void @llvm.dbg.value(metadata i8* %6, metadata !3783, metadata !DIExpression()), !dbg !3834
  call void @llvm.dbg.value(metadata i8* undef, metadata !3788, metadata !DIExpression()), !dbg !3834
  call void @llvm.dbg.value(metadata i8 48, metadata !3789, metadata !DIExpression()), !dbg !3834
  call void @llvm.dbg.value(metadata i8 51, metadata !3790, metadata !DIExpression()), !dbg !3834
  call void @llvm.dbg.value(metadata i8 48, metadata !3791, metadata !DIExpression()), !dbg !3834
  call void @llvm.dbg.value(metadata i8 0, metadata !3792, metadata !DIExpression()), !dbg !3834
  call void @llvm.dbg.value(metadata i8 0, metadata !3793, metadata !DIExpression()), !dbg !3834
  %49 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !3836
  %50 = load i8, i8* %49, align 1, !dbg !3836, !tbaa !1649
  %51 = icmp eq i8 %50, 48, !dbg !3836
  br i1 %51, label %52, label %68, !dbg !3837

52:                                               ; preds = %48
  call void @llvm.dbg.value(metadata i8* %6, metadata !3801, metadata !DIExpression()), !dbg !3838
  call void @llvm.dbg.value(metadata i8* undef, metadata !3806, metadata !DIExpression()), !dbg !3838
  call void @llvm.dbg.value(metadata i8 51, metadata !3807, metadata !DIExpression()), !dbg !3838
  call void @llvm.dbg.value(metadata i8 48, metadata !3808, metadata !DIExpression()), !dbg !3838
  call void @llvm.dbg.value(metadata i8 0, metadata !3809, metadata !DIExpression()), !dbg !3838
  call void @llvm.dbg.value(metadata i8 0, metadata !3810, metadata !DIExpression()), !dbg !3838
  %53 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !3840
  %54 = load i8, i8* %53, align 1, !dbg !3840, !tbaa !1649
  %55 = icmp eq i8 %54, 51, !dbg !3840
  br i1 %55, label %56, label %68, !dbg !3841

56:                                               ; preds = %52
  call void @llvm.dbg.value(metadata i8* %6, metadata !3842, metadata !DIExpression()), !dbg !3851
  call void @llvm.dbg.value(metadata i8* undef, metadata !3847, metadata !DIExpression()), !dbg !3851
  call void @llvm.dbg.value(metadata i8 48, metadata !3848, metadata !DIExpression()), !dbg !3851
  call void @llvm.dbg.value(metadata i8 0, metadata !3849, metadata !DIExpression()), !dbg !3851
  call void @llvm.dbg.value(metadata i8 0, metadata !3850, metadata !DIExpression()), !dbg !3851
  %57 = getelementptr inbounds i8, i8* %6, i64 6, !dbg !3855
  %58 = load i8, i8* %57, align 1, !dbg !3855, !tbaa !1649
  %59 = icmp eq i8 %58, 48, !dbg !3855
  br i1 %59, label %60, label %68, !dbg !3857

60:                                               ; preds = %56
  call void @llvm.dbg.value(metadata i8* %6, metadata !3858, metadata !DIExpression()), !dbg !3866
  call void @llvm.dbg.value(metadata i8* undef, metadata !3863, metadata !DIExpression()), !dbg !3866
  call void @llvm.dbg.value(metadata i8 0, metadata !3864, metadata !DIExpression()), !dbg !3866
  call void @llvm.dbg.value(metadata i8 0, metadata !3865, metadata !DIExpression()), !dbg !3866
  %61 = getelementptr inbounds i8, i8* %6, i64 7, !dbg !3870
  %62 = load i8, i8* %61, align 1, !dbg !3870, !tbaa !1649
  %63 = icmp eq i8 %62, 0, !dbg !3870
  br i1 %63, label %64, label %68, !dbg !3872

64:                                               ; preds = %60
  %65 = load i8, i8* %0, align 1, !dbg !3873, !tbaa !1649
  %66 = icmp eq i8 %65, 96, !dbg !3874
  %67 = select i1 %66, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17.119, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18.120, i64 0, i64 0), !dbg !3873
  br label %71, !dbg !3875

68:                                               ; preds = %60, %5, %27, %23, %19, %14, %9, %56, %52, %48, %44, %40, %35
  %69 = icmp eq i32 %1, 9, !dbg !3876
  %70 = select i1 %69, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.116, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.115, i64 0, i64 0), !dbg !3877
  br label %71, !dbg !3878

71:                                               ; preds = %2, %68, %64, %31
  %72 = phi i8* [ %34, %31 ], [ %67, %64 ], [ %70, %68 ], [ %3, %2 ], !dbg !3698
  ret i8* %72, !dbg !3879
}

; Function Attrs: argmemonly nofree nounwind readonly
declare i64 @strlen(i8* nocapture) local_unnamed_addr #15

; Function Attrs: nofree nounwind readonly
declare i32 @bcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #16

; Function Attrs: nounwind
declare !dbg !475 i32 @iswprint(i32) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare !dbg !479 i32 @mbsinit(%struct.__mbstate_t*) local_unnamed_addr #17

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_alloc(i8* %0, i64 %1, %struct.quoting_options* %2) local_unnamed_addr #8 !dbg !3880 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3884, metadata !DIExpression()), !dbg !3887
  call void @llvm.dbg.value(metadata i64 %1, metadata !3885, metadata !DIExpression()), !dbg !3887
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !3886, metadata !DIExpression()), !dbg !3887
  call void @llvm.dbg.value(metadata i8* %0, metadata !3888, metadata !DIExpression()) #18, !dbg !3901
  call void @llvm.dbg.value(metadata i64 %1, metadata !3893, metadata !DIExpression()) #18, !dbg !3901
  call void @llvm.dbg.value(metadata i64* null, metadata !3894, metadata !DIExpression()) #18, !dbg !3901
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !3895, metadata !DIExpression()) #18, !dbg !3901
  %4 = icmp eq %struct.quoting_options* %2, null, !dbg !3903
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %2, !dbg !3903
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !3896, metadata !DIExpression()) #18, !dbg !3901
  %6 = tail call i32* @__errno_location() #24, !dbg !3904
  %7 = load i32, i32* %6, align 4, !dbg !3904, !tbaa !1559
  call void @llvm.dbg.value(metadata i32 %7, metadata !3897, metadata !DIExpression()) #18, !dbg !3901
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !3905
  %9 = load i32, i32* %8, align 4, !dbg !3905, !tbaa !3100
  %10 = or i32 %9, 1, !dbg !3906
  call void @llvm.dbg.value(metadata i32 %10, metadata !3898, metadata !DIExpression()) #18, !dbg !3901
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3907
  %12 = load i32, i32* %11, align 8, !dbg !3907, !tbaa !3049
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !3908
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3909
  %15 = load i8*, i8** %14, align 8, !dbg !3909, !tbaa !3123
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3910
  %17 = load i8*, i8** %16, align 8, !dbg !3910, !tbaa !3126
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %12, i32 %10, i32* nonnull %13, i8* %15, i8* %17) #18, !dbg !3911
  %19 = add i64 %18, 1, !dbg !3912
  call void @llvm.dbg.value(metadata i64 %19, metadata !3899, metadata !DIExpression()) #18, !dbg !3901
  call void @llvm.dbg.value(metadata i64 %19, metadata !3913, metadata !DIExpression()) #18, !dbg !3918
  %20 = tail call noalias i8* @xmalloc(i64 %19) #18, !dbg !3920
  call void @llvm.dbg.value(metadata i8* %20, metadata !3900, metadata !DIExpression()) #18, !dbg !3901
  %21 = load i32, i32* %11, align 8, !dbg !3921, !tbaa !3049
  %22 = load i8*, i8** %14, align 8, !dbg !3922, !tbaa !3123
  %23 = load i8*, i8** %16, align 8, !dbg !3923, !tbaa !3126
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %20, i64 %19, i8* %0, i64 %1, i32 %21, i32 %10, i32* nonnull %13, i8* %22, i8* %23) #18, !dbg !3924
  store i32 %7, i32* %6, align 4, !dbg !3925, !tbaa !1559
  ret i8* %20, !dbg !3926
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_alloc_mem(i8* %0, i64 %1, i64* %2, %struct.quoting_options* %3) local_unnamed_addr #8 !dbg !3889 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3888, metadata !DIExpression()), !dbg !3927
  call void @llvm.dbg.value(metadata i64 %1, metadata !3893, metadata !DIExpression()), !dbg !3927
  call void @llvm.dbg.value(metadata i64* %2, metadata !3894, metadata !DIExpression()), !dbg !3927
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !3895, metadata !DIExpression()), !dbg !3927
  %5 = icmp eq %struct.quoting_options* %3, null, !dbg !3928
  %6 = select i1 %5, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %3, !dbg !3928
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !3896, metadata !DIExpression()), !dbg !3927
  %7 = tail call i32* @__errno_location() #24, !dbg !3929
  %8 = load i32, i32* %7, align 4, !dbg !3929, !tbaa !1559
  call void @llvm.dbg.value(metadata i32 %8, metadata !3897, metadata !DIExpression()), !dbg !3927
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !3930
  %10 = load i32, i32* %9, align 4, !dbg !3930, !tbaa !3100
  %11 = icmp ne i64* %2, null, !dbg !3931
  %12 = xor i1 %11, true, !dbg !3931
  %13 = zext i1 %12 to i32, !dbg !3931
  %14 = or i32 %10, %13, !dbg !3932
  call void @llvm.dbg.value(metadata i32 %14, metadata !3898, metadata !DIExpression()), !dbg !3927
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !3933
  %16 = load i32, i32* %15, align 8, !dbg !3933, !tbaa !3049
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !3934
  %18 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !3935
  %19 = load i8*, i8** %18, align 8, !dbg !3935, !tbaa !3123
  %20 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !3936
  %21 = load i8*, i8** %20, align 8, !dbg !3936, !tbaa !3126
  %22 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %16, i32 %14, i32* nonnull %17, i8* %19, i8* %21), !dbg !3937
  %23 = add i64 %22, 1, !dbg !3938
  call void @llvm.dbg.value(metadata i64 %23, metadata !3899, metadata !DIExpression()), !dbg !3927
  call void @llvm.dbg.value(metadata i64 %23, metadata !3913, metadata !DIExpression()) #18, !dbg !3939
  %24 = tail call noalias i8* @xmalloc(i64 %23) #18, !dbg !3941
  call void @llvm.dbg.value(metadata i8* %24, metadata !3900, metadata !DIExpression()), !dbg !3927
  %25 = load i32, i32* %15, align 8, !dbg !3942, !tbaa !3049
  %26 = load i8*, i8** %18, align 8, !dbg !3943, !tbaa !3123
  %27 = load i8*, i8** %20, align 8, !dbg !3944, !tbaa !3126
  %28 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %24, i64 %23, i8* %0, i64 %1, i32 %25, i32 %14, i32* nonnull %17, i8* %26, i8* %27), !dbg !3945
  store i32 %8, i32* %7, align 4, !dbg !3946, !tbaa !1559
  br i1 %11, label %29, label %30, !dbg !3947

29:                                               ; preds = %4
  store i64 %22, i64* %2, align 8, !dbg !3948, !tbaa !1612
  br label %30, !dbg !3950

30:                                               ; preds = %29, %4
  ret i8* %24, !dbg !3951
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @quotearg_free() local_unnamed_addr #8 !dbg !3952 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !3956, !tbaa !1347
  call void @llvm.dbg.value(metadata %struct.slotvec* %1, metadata !3954, metadata !DIExpression()), !dbg !3957
  call void @llvm.dbg.value(metadata i32 1, metadata !3955, metadata !DIExpression()), !dbg !3957
  %2 = load i32, i32* @nslots, align 4, !dbg !3958, !tbaa !1559
  %3 = icmp sgt i32 %2, 1, !dbg !3961
  br i1 %3, label %4, label %12, !dbg !3962

4:                                                ; preds = %0, %4
  %5 = phi i64 [ %8, %4 ], [ 1, %0 ]
  call void @llvm.dbg.value(metadata i64 %5, metadata !3955, metadata !DIExpression()), !dbg !3957
  %6 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %5, i32 1, !dbg !3963
  %7 = load i8*, i8** %6, align 8, !dbg !3963, !tbaa !3964
  tail call void @free(i8* %7) #18, !dbg !3966
  %8 = add nuw nsw i64 %5, 1, !dbg !3967
  call void @llvm.dbg.value(metadata i64 %8, metadata !3955, metadata !DIExpression()), !dbg !3957
  %9 = load i32, i32* @nslots, align 4, !dbg !3958, !tbaa !1559
  %10 = sext i32 %9 to i64, !dbg !3961
  %11 = icmp slt i64 %8, %10, !dbg !3961
  br i1 %11, label %4, label %12, !dbg !3962, !llvm.loop !3968

12:                                               ; preds = %4, %0
  %13 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1, !dbg !3970
  %14 = load i8*, i8** %13, align 8, !dbg !3970, !tbaa !3964
  %15 = icmp eq i8* %14, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !3972
  br i1 %15, label %17, label %16, !dbg !3973

16:                                               ; preds = %12
  tail call void @free(i8* %14) #18, !dbg !3974
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !dbg !3976, !tbaa !3977
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !dbg !3978, !tbaa !3964
  br label %17, !dbg !3979

17:                                               ; preds = %12, %16
  %18 = icmp eq %struct.slotvec* %1, @slotvec0, !dbg !3980
  br i1 %18, label %21, label %19, !dbg !3982

19:                                               ; preds = %17
  %20 = bitcast %struct.slotvec* %1 to i8*, !dbg !3983
  tail call void @free(i8* %20) #18, !dbg !3985
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !3986, !tbaa !1347
  br label %21, !dbg !3987

21:                                               ; preds = %17, %19
  store i32 1, i32* @nslots, align 4, !dbg !3988, !tbaa !1559
  ret void, !dbg !3989
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n(i32 %0, i8* %1) local_unnamed_addr #8 !dbg !3990 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3992, metadata !DIExpression()), !dbg !3994
  call void @llvm.dbg.value(metadata i8* %1, metadata !3993, metadata !DIExpression()), !dbg !3994
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @default_quoting_options), !dbg !3995
  ret i8* %3, !dbg !3996
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* %3) unnamed_addr #8 !dbg !3997 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4001, metadata !DIExpression()), !dbg !4016
  call void @llvm.dbg.value(metadata i8* %1, metadata !4002, metadata !DIExpression()), !dbg !4016
  call void @llvm.dbg.value(metadata i64 %2, metadata !4003, metadata !DIExpression()), !dbg !4016
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !4004, metadata !DIExpression()), !dbg !4016
  %5 = tail call i32* @__errno_location() #24, !dbg !4017
  %6 = load i32, i32* %5, align 4, !dbg !4017, !tbaa !1559
  call void @llvm.dbg.value(metadata i32 %6, metadata !4005, metadata !DIExpression()), !dbg !4016
  %7 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !4018, !tbaa !1347
  call void @llvm.dbg.value(metadata %struct.slotvec* %7, metadata !4006, metadata !DIExpression()), !dbg !4016
  %8 = icmp slt i32 %0, 0, !dbg !4019
  br i1 %8, label %9, label %10, !dbg !4021

9:                                                ; preds = %4
  tail call void @abort() #22, !dbg !4022
  unreachable, !dbg !4022

10:                                               ; preds = %4
  %11 = load i32, i32* @nslots, align 4, !dbg !4023, !tbaa !1559
  %12 = icmp sgt i32 %11, %0, !dbg !4024
  br i1 %12, label %34, label %13, !dbg !4025

13:                                               ; preds = %10
  %14 = icmp eq %struct.slotvec* %7, @slotvec0, !dbg !4026
  call void @llvm.dbg.value(metadata i1 %14, metadata !4007, metadata !DIExpression()), !dbg !4027
  call void @llvm.dbg.value(metadata i32 2147483646, metadata !4010, metadata !DIExpression()), !dbg !4027
  %15 = icmp eq i32 %0, 2147483647, !dbg !4028
  br i1 %15, label %16, label %17, !dbg !4030

16:                                               ; preds = %13
  tail call void @xalloc_die() #22, !dbg !4031
  unreachable, !dbg !4031

17:                                               ; preds = %13
  %18 = select i1 %14, %struct.slotvec* null, %struct.slotvec* %7, !dbg !4032
  %19 = bitcast %struct.slotvec* %18 to i8*, !dbg !4032
  %20 = add nuw nsw i32 %0, 1, !dbg !4033
  %21 = sext i32 %20 to i64, !dbg !4034
  %22 = shl nuw nsw i64 %21, 4, !dbg !4035
  %23 = tail call i8* @xrealloc(i8* %19, i64 %22) #18, !dbg !4036
  %24 = bitcast i8* %23 to %struct.slotvec*, !dbg !4036
  call void @llvm.dbg.value(metadata %struct.slotvec* %24, metadata !4006, metadata !DIExpression()), !dbg !4016
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !dbg !4037, !tbaa !1347
  br i1 %14, label %25, label %26, !dbg !4038

25:                                               ; preds = %17
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(16) %23, i8* nonnull align 8 dereferenceable(16) bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i1 false), !dbg !4039, !tbaa.struct !4041
  br label %26, !dbg !4042

26:                                               ; preds = %25, %17
  %27 = load i32, i32* @nslots, align 4, !dbg !4043, !tbaa !1559
  %28 = sext i32 %27 to i64, !dbg !4044
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28, !dbg !4044
  %30 = bitcast %struct.slotvec* %29 to i8*, !dbg !4045
  %31 = sub nsw i32 %20, %27, !dbg !4046
  %32 = sext i32 %31 to i64, !dbg !4047
  %33 = shl nsw i64 %32, 4, !dbg !4048
  call void @llvm.dbg.value(metadata i8* %30, metadata !3447, metadata !DIExpression()) #18, !dbg !4049
  call void @llvm.dbg.value(metadata i32 0, metadata !3452, metadata !DIExpression()) #18, !dbg !4049
  call void @llvm.dbg.value(metadata i64 %33, metadata !3453, metadata !DIExpression()) #18, !dbg !4049
  call void @llvm.memset.p0i8.i64(i8* nonnull align 1 %30, i8 0, i64 %33, i1 false) #18, !dbg !4051
  store i32 %20, i32* @nslots, align 4, !dbg !4052, !tbaa !1559
  br label %34, !dbg !4053

34:                                               ; preds = %10, %26
  %35 = phi %struct.slotvec* [ %24, %26 ], [ %7, %10 ], !dbg !4016
  call void @llvm.dbg.value(metadata %struct.slotvec* %35, metadata !4006, metadata !DIExpression()), !dbg !4016
  %36 = zext i32 %0 to i64, !dbg !4054
  %37 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 0, !dbg !4055
  %38 = load i64, i64* %37, align 8, !dbg !4055, !tbaa !3977
  call void @llvm.dbg.value(metadata i64 %38, metadata !4011, metadata !DIExpression()), !dbg !4056
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 1, !dbg !4057
  %40 = load i8*, i8** %39, align 8, !dbg !4057, !tbaa !3964
  call void @llvm.dbg.value(metadata i8* %40, metadata !4013, metadata !DIExpression()), !dbg !4056
  %41 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !4058
  %42 = load i32, i32* %41, align 4, !dbg !4058, !tbaa !3100
  %43 = or i32 %42, 1, !dbg !4059
  call void @llvm.dbg.value(metadata i32 %43, metadata !4014, metadata !DIExpression()), !dbg !4056
  %44 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !4060
  %45 = load i32, i32* %44, align 8, !dbg !4060, !tbaa !3049
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !4061
  %47 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !4062
  %48 = load i8*, i8** %47, align 8, !dbg !4062, !tbaa !3123
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !4063
  %50 = load i8*, i8** %49, align 8, !dbg !4063, !tbaa !3126
  %51 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %40, i64 %38, i8* %1, i64 %2, i32 %45, i32 %43, i32* nonnull %46, i8* %48, i8* %50), !dbg !4064
  call void @llvm.dbg.value(metadata i64 %51, metadata !4015, metadata !DIExpression()), !dbg !4056
  %52 = icmp ugt i64 %38, %51, !dbg !4065
  br i1 %52, label %63, label %53, !dbg !4067

53:                                               ; preds = %34
  %54 = add i64 %51, 1, !dbg !4068
  call void @llvm.dbg.value(metadata i64 %54, metadata !4011, metadata !DIExpression()), !dbg !4056
  store i64 %54, i64* %37, align 8, !dbg !4070, !tbaa !3977
  %55 = icmp eq i8* %40, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !4071
  br i1 %55, label %57, label %56, !dbg !4073

56:                                               ; preds = %53
  tail call void @free(i8* %40) #18, !dbg !4074
  br label %57, !dbg !4074

57:                                               ; preds = %53, %56
  call void @llvm.dbg.value(metadata i64 %54, metadata !3913, metadata !DIExpression()) #18, !dbg !4075
  %58 = tail call noalias i8* @xmalloc(i64 %54) #18, !dbg !4077
  call void @llvm.dbg.value(metadata i8* %58, metadata !4013, metadata !DIExpression()), !dbg !4056
  store i8* %58, i8** %39, align 8, !dbg !4078, !tbaa !3964
  %59 = load i32, i32* %44, align 8, !dbg !4079, !tbaa !3049
  %60 = load i8*, i8** %47, align 8, !dbg !4080, !tbaa !3123
  %61 = load i8*, i8** %49, align 8, !dbg !4081, !tbaa !3126
  %62 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %58, i64 %54, i8* %1, i64 %2, i32 %59, i32 %43, i32* nonnull %46, i8* %60, i8* %61), !dbg !4082
  br label %63, !dbg !4083

63:                                               ; preds = %34, %57
  %64 = phi i8* [ %58, %57 ], [ %40, %34 ], !dbg !4056
  call void @llvm.dbg.value(metadata i8* %64, metadata !4013, metadata !DIExpression()), !dbg !4056
  store i32 %6, i32* %5, align 4, !dbg !4084, !tbaa !1559
  ret i8* %64, !dbg !4085
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_mem(i32 %0, i8* %1, i64 %2) local_unnamed_addr #8 !dbg !4086 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4090, metadata !DIExpression()), !dbg !4093
  call void @llvm.dbg.value(metadata i8* %1, metadata !4091, metadata !DIExpression()), !dbg !4093
  call void @llvm.dbg.value(metadata i64 %2, metadata !4092, metadata !DIExpression()), !dbg !4093
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @default_quoting_options), !dbg !4094
  ret i8* %4, !dbg !4095
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg(i8* %0) local_unnamed_addr #8 !dbg !4096 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4098, metadata !DIExpression()), !dbg !4099
  call void @llvm.dbg.value(metadata i32 0, metadata !3992, metadata !DIExpression()) #18, !dbg !4100
  call void @llvm.dbg.value(metadata i8* %0, metadata !3993, metadata !DIExpression()) #18, !dbg !4100
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @default_quoting_options) #18, !dbg !4102
  ret i8* %2, !dbg !4103
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_mem(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !4104 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4108, metadata !DIExpression()), !dbg !4110
  call void @llvm.dbg.value(metadata i64 %1, metadata !4109, metadata !DIExpression()), !dbg !4110
  call void @llvm.dbg.value(metadata i32 0, metadata !4090, metadata !DIExpression()) #18, !dbg !4111
  call void @llvm.dbg.value(metadata i8* %0, metadata !4091, metadata !DIExpression()) #18, !dbg !4111
  call void @llvm.dbg.value(metadata i64 %1, metadata !4092, metadata !DIExpression()) #18, !dbg !4111
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @default_quoting_options) #18, !dbg !4113
  ret i8* %3, !dbg !4114
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style(i32 %0, i32 %1, i8* %2) local_unnamed_addr #8 !dbg !4115 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !4117, metadata !DIExpression()), !dbg !4121
  call void @llvm.dbg.value(metadata i32 %1, metadata !4118, metadata !DIExpression()), !dbg !4121
  call void @llvm.dbg.value(metadata i8* %2, metadata !4119, metadata !DIExpression()), !dbg !4121
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !4122
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #18, !dbg !4122
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !4120, metadata !DIExpression()), !dbg !4123
  call void @llvm.dbg.value(metadata i32 %1, metadata !4124, metadata !DIExpression()) #18, !dbg !4130
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !4129, metadata !DIExpression()) #18, !dbg !4132
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false) #18, !dbg !4132, !alias.scope !4133
  %6 = icmp eq i32 %1, 10, !dbg !4136
  br i1 %6, label %7, label %8, !dbg !4138

7:                                                ; preds = %3
  tail call void @abort() #22, !dbg !4139, !noalias !4133
  unreachable, !dbg !4139

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !4140
  store i32 %1, i32* %9, align 8, !dbg !4141, !tbaa !3049, !alias.scope !4133
  %10 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !4142
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #18, !dbg !4143
  ret i8* %10, !dbg !4144
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_mem(i32 %0, i32 %1, i8* %2, i64 %3) local_unnamed_addr #8 !dbg !4145 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !4149, metadata !DIExpression()), !dbg !4154
  call void @llvm.dbg.value(metadata i32 %1, metadata !4150, metadata !DIExpression()), !dbg !4154
  call void @llvm.dbg.value(metadata i8* %2, metadata !4151, metadata !DIExpression()), !dbg !4154
  call void @llvm.dbg.value(metadata i64 %3, metadata !4152, metadata !DIExpression()), !dbg !4154
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !4155
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #18, !dbg !4155
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !4153, metadata !DIExpression()), !dbg !4156
  call void @llvm.dbg.value(metadata i32 %1, metadata !4124, metadata !DIExpression()) #18, !dbg !4157
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !4129, metadata !DIExpression()) #18, !dbg !4159
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %6, i8 0, i64 56, i1 false) #18, !dbg !4159, !alias.scope !4160
  %7 = icmp eq i32 %1, 10, !dbg !4163
  br i1 %7, label %8, label %9, !dbg !4164

8:                                                ; preds = %4
  tail call void @abort() #22, !dbg !4165, !noalias !4160
  unreachable, !dbg !4165

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !4166
  store i32 %1, i32* %10, align 8, !dbg !4167, !tbaa !3049, !alias.scope !4160
  %11 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5), !dbg !4168
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #18, !dbg !4169
  ret i8* %11, !dbg !4170
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style(i32 %0, i8* %1) local_unnamed_addr #8 !dbg !4171 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !4129, metadata !DIExpression()), !dbg !4177
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !4120, metadata !DIExpression()), !dbg !4180
  call void @llvm.dbg.value(metadata i32 %0, metadata !4175, metadata !DIExpression()), !dbg !4181
  call void @llvm.dbg.value(metadata i8* %1, metadata !4176, metadata !DIExpression()), !dbg !4181
  call void @llvm.dbg.value(metadata i32 0, metadata !4117, metadata !DIExpression()) #18, !dbg !4182
  call void @llvm.dbg.value(metadata i32 %0, metadata !4118, metadata !DIExpression()) #18, !dbg !4182
  call void @llvm.dbg.value(metadata i8* %1, metadata !4119, metadata !DIExpression()) #18, !dbg !4182
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !4183
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #18, !dbg !4183
  call void @llvm.dbg.value(metadata i32 %0, metadata !4124, metadata !DIExpression()) #18, !dbg !4184
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false) #18, !dbg !4177, !alias.scope !4185
  %5 = icmp eq i32 %0, 10, !dbg !4188
  br i1 %5, label %6, label %7, !dbg !4189

6:                                                ; preds = %2
  tail call void @abort() #22, !dbg !4190, !noalias !4185
  unreachable, !dbg !4190

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !4191
  store i32 %0, i32* %8, align 8, !dbg !4192, !tbaa !3049, !alias.scope !4185
  %9 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 -1, %struct.quoting_options* nonnull %3) #18, !dbg !4193
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #18, !dbg !4194
  ret i8* %9, !dbg !4195
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style_mem(i32 %0, i8* %1, i64 %2) local_unnamed_addr #8 !dbg !4196 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !4129, metadata !DIExpression()), !dbg !4203
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !4153, metadata !DIExpression()), !dbg !4206
  call void @llvm.dbg.value(metadata i32 %0, metadata !4200, metadata !DIExpression()), !dbg !4207
  call void @llvm.dbg.value(metadata i8* %1, metadata !4201, metadata !DIExpression()), !dbg !4207
  call void @llvm.dbg.value(metadata i64 %2, metadata !4202, metadata !DIExpression()), !dbg !4207
  call void @llvm.dbg.value(metadata i32 0, metadata !4149, metadata !DIExpression()) #18, !dbg !4208
  call void @llvm.dbg.value(metadata i32 %0, metadata !4150, metadata !DIExpression()) #18, !dbg !4208
  call void @llvm.dbg.value(metadata i8* %1, metadata !4151, metadata !DIExpression()) #18, !dbg !4208
  call void @llvm.dbg.value(metadata i64 %2, metadata !4152, metadata !DIExpression()) #18, !dbg !4208
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !4209
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #18, !dbg !4209
  call void @llvm.dbg.value(metadata i32 %0, metadata !4124, metadata !DIExpression()) #18, !dbg !4210
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false) #18, !dbg !4203, !alias.scope !4211
  %6 = icmp eq i32 %0, 10, !dbg !4214
  br i1 %6, label %7, label %8, !dbg !4215

7:                                                ; preds = %3
  tail call void @abort() #22, !dbg !4216, !noalias !4211
  unreachable, !dbg !4216

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !4217
  store i32 %0, i32* %9, align 8, !dbg !4218, !tbaa !3049, !alias.scope !4211
  %10 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 %2, %struct.quoting_options* nonnull %4) #18, !dbg !4219
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #18, !dbg !4220
  ret i8* %10, !dbg !4221
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char_mem(i8* %0, i64 %1, i8 signext %2) local_unnamed_addr #8 !dbg !4222 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !4226, metadata !DIExpression()), !dbg !4230
  call void @llvm.dbg.value(metadata i64 %1, metadata !4227, metadata !DIExpression()), !dbg !4230
  call void @llvm.dbg.value(metadata i8 %2, metadata !4228, metadata !DIExpression()), !dbg !4230
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !4231
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #18, !dbg !4231
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !4229, metadata !DIExpression()), !dbg !4232
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !4233, !tbaa.struct !4234
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !3067, metadata !DIExpression()), !dbg !4235
  call void @llvm.dbg.value(metadata i8 %2, metadata !3068, metadata !DIExpression()), !dbg !4235
  call void @llvm.dbg.value(metadata i32 1, metadata !3069, metadata !DIExpression()), !dbg !4235
  call void @llvm.dbg.value(metadata i8 %2, metadata !3070, metadata !DIExpression()), !dbg !4235
  %6 = lshr i8 %2, 5, !dbg !4237
  %7 = zext i8 %6 to i64, !dbg !4237
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !4238
  call void @llvm.dbg.value(metadata i32* %8, metadata !3071, metadata !DIExpression()), !dbg !4235
  %9 = and i8 %2, 31, !dbg !4239
  %10 = zext i8 %9 to i32, !dbg !4239
  call void @llvm.dbg.value(metadata i32 %10, metadata !3073, metadata !DIExpression()), !dbg !4235
  %11 = load i32, i32* %8, align 4, !dbg !4240, !tbaa !1559
  %12 = lshr i32 %11, %10, !dbg !4241
  %13 = and i32 %12, 1, !dbg !4242
  call void @llvm.dbg.value(metadata i32 %13, metadata !3074, metadata !DIExpression()), !dbg !4235
  %14 = xor i32 %13, 1, !dbg !4243
  %15 = shl i32 %14, %10, !dbg !4244
  %16 = xor i32 %15, %11, !dbg !4245
  store i32 %16, i32* %8, align 4, !dbg !4245, !tbaa !1559
  %17 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %4), !dbg !4246
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #18, !dbg !4247
  ret i8* %17, !dbg !4248
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char(i8* %0, i8 signext %1) local_unnamed_addr #8 !dbg !4249 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !4229, metadata !DIExpression()), !dbg !4255
  call void @llvm.dbg.value(metadata i8* %0, metadata !4253, metadata !DIExpression()), !dbg !4257
  call void @llvm.dbg.value(metadata i8 %1, metadata !4254, metadata !DIExpression()), !dbg !4257
  call void @llvm.dbg.value(metadata i8* %0, metadata !4226, metadata !DIExpression()) #18, !dbg !4258
  call void @llvm.dbg.value(metadata i64 -1, metadata !4227, metadata !DIExpression()) #18, !dbg !4258
  call void @llvm.dbg.value(metadata i8 %1, metadata !4228, metadata !DIExpression()) #18, !dbg !4258
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !4259
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #18, !dbg !4259
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %4, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #18, !dbg !4260, !tbaa.struct !4234
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !3067, metadata !DIExpression()) #18, !dbg !4261
  call void @llvm.dbg.value(metadata i8 %1, metadata !3068, metadata !DIExpression()) #18, !dbg !4261
  call void @llvm.dbg.value(metadata i32 1, metadata !3069, metadata !DIExpression()) #18, !dbg !4261
  call void @llvm.dbg.value(metadata i8 %1, metadata !3070, metadata !DIExpression()) #18, !dbg !4261
  %5 = lshr i8 %1, 5, !dbg !4263
  %6 = zext i8 %5 to i64, !dbg !4263
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !4264
  call void @llvm.dbg.value(metadata i32* %7, metadata !3071, metadata !DIExpression()) #18, !dbg !4261
  %8 = and i8 %1, 31, !dbg !4265
  %9 = zext i8 %8 to i32, !dbg !4265
  call void @llvm.dbg.value(metadata i32 %9, metadata !3073, metadata !DIExpression()) #18, !dbg !4261
  %10 = load i32, i32* %7, align 4, !dbg !4266, !tbaa !1559
  %11 = lshr i32 %10, %9, !dbg !4267
  %12 = and i32 %11, 1, !dbg !4268
  call void @llvm.dbg.value(metadata i32 %12, metadata !3074, metadata !DIExpression()) #18, !dbg !4261
  %13 = xor i32 %12, 1, !dbg !4269
  %14 = shl i32 %13, %9, !dbg !4270
  %15 = xor i32 %14, %10, !dbg !4271
  store i32 %15, i32* %7, align 4, !dbg !4271, !tbaa !1559
  %16 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %3) #18, !dbg !4272
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #18, !dbg !4273
  ret i8* %16, !dbg !4274
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon(i8* %0) local_unnamed_addr #8 !dbg !4275 {
  %2 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %2, metadata !4229, metadata !DIExpression()), !dbg !4278
  call void @llvm.dbg.value(metadata i8* %0, metadata !4277, metadata !DIExpression()), !dbg !4281
  call void @llvm.dbg.value(metadata i8* %0, metadata !4253, metadata !DIExpression()) #18, !dbg !4282
  call void @llvm.dbg.value(metadata i8 58, metadata !4254, metadata !DIExpression()) #18, !dbg !4282
  call void @llvm.dbg.value(metadata i8* %0, metadata !4226, metadata !DIExpression()) #18, !dbg !4283
  call void @llvm.dbg.value(metadata i64 -1, metadata !4227, metadata !DIExpression()) #18, !dbg !4283
  call void @llvm.dbg.value(metadata i8 58, metadata !4228, metadata !DIExpression()) #18, !dbg !4283
  %3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !4284
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %3) #18, !dbg !4284
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %3, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #18, !dbg !4285, !tbaa.struct !4234
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !3067, metadata !DIExpression()) #18, !dbg !4286
  call void @llvm.dbg.value(metadata i8 58, metadata !3068, metadata !DIExpression()) #18, !dbg !4286
  call void @llvm.dbg.value(metadata i32 1, metadata !3069, metadata !DIExpression()) #18, !dbg !4286
  call void @llvm.dbg.value(metadata i8 58, metadata !3070, metadata !DIExpression()) #18, !dbg !4286
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !4288
  call void @llvm.dbg.value(metadata i32* %4, metadata !3071, metadata !DIExpression()) #18, !dbg !4286
  call void @llvm.dbg.value(metadata i32 26, metadata !3073, metadata !DIExpression()) #18, !dbg !4286
  %5 = load i32, i32* %4, align 4, !dbg !4289, !tbaa !1559
  call void @llvm.dbg.value(metadata i32 %5, metadata !3074, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)) #18, !dbg !4286
  %6 = or i32 %5, 67108864, !dbg !4290
  store i32 %6, i32* %4, align 4, !dbg !4290, !tbaa !1559
  %7 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %2) #18, !dbg !4291
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %3) #18, !dbg !4292
  ret i8* %7, !dbg !4293
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon_mem(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !4294 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !4229, metadata !DIExpression()), !dbg !4298
  call void @llvm.dbg.value(metadata i8* %0, metadata !4296, metadata !DIExpression()), !dbg !4300
  call void @llvm.dbg.value(metadata i64 %1, metadata !4297, metadata !DIExpression()), !dbg !4300
  call void @llvm.dbg.value(metadata i8* %0, metadata !4226, metadata !DIExpression()) #18, !dbg !4301
  call void @llvm.dbg.value(metadata i64 %1, metadata !4227, metadata !DIExpression()) #18, !dbg !4301
  call void @llvm.dbg.value(metadata i8 58, metadata !4228, metadata !DIExpression()) #18, !dbg !4301
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !4302
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #18, !dbg !4302
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %4, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #18, !dbg !4303, !tbaa.struct !4234
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !3067, metadata !DIExpression()) #18, !dbg !4304
  call void @llvm.dbg.value(metadata i8 58, metadata !3068, metadata !DIExpression()) #18, !dbg !4304
  call void @llvm.dbg.value(metadata i32 1, metadata !3069, metadata !DIExpression()) #18, !dbg !4304
  call void @llvm.dbg.value(metadata i8 58, metadata !3070, metadata !DIExpression()) #18, !dbg !4304
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !4306
  call void @llvm.dbg.value(metadata i32* %5, metadata !3071, metadata !DIExpression()) #18, !dbg !4304
  call void @llvm.dbg.value(metadata i32 26, metadata !3073, metadata !DIExpression()) #18, !dbg !4304
  %6 = load i32, i32* %5, align 4, !dbg !4307, !tbaa !1559
  call void @llvm.dbg.value(metadata i32 %6, metadata !3074, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)) #18, !dbg !4304
  %7 = or i32 %6, 67108864, !dbg !4308
  store i32 %7, i32* %5, align 4, !dbg !4308, !tbaa !1559
  %8 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %3) #18, !dbg !4309
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #18, !dbg !4310
  ret i8* %8, !dbg !4311
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_colon(i32 %0, i32 %1, i8* %2) local_unnamed_addr #8 !dbg !4312 {
  %4 = alloca %struct.quoting_options, align 8
  %5 = alloca [52 x i8], align 4
  call void @llvm.dbg.declare(metadata [52 x i8]* %5, metadata !4129, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416)), !dbg !4318
  call void @llvm.dbg.value(metadata i32 %0, metadata !4314, metadata !DIExpression()), !dbg !4320
  call void @llvm.dbg.value(metadata i32 %1, metadata !4315, metadata !DIExpression()), !dbg !4320
  call void @llvm.dbg.value(metadata i8* %2, metadata !4316, metadata !DIExpression()), !dbg !4320
  %6 = bitcast %struct.quoting_options* %4 to i8*, !dbg !4321
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #18, !dbg !4321
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !4317, metadata !DIExpression()), !dbg !4322
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %5, i64 0, i64 0, !dbg !4323
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %7), !dbg !4323
  call void @llvm.dbg.value(metadata i32 %1, metadata !4124, metadata !DIExpression()) #18, !dbg !4324
  call void @llvm.dbg.value(metadata i32 0, metadata !4129, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !4324
  call void @llvm.memset.p0i8.i64(i8* nonnull align 4 dereferenceable(52) %7, i8 0, i64 52, i1 false), !dbg !4318, !alias.scope !4325
  %8 = icmp eq i32 %1, 10, !dbg !4328
  br i1 %8, label %9, label %10, !dbg !4329

9:                                                ; preds = %3
  tail call void @abort() #22, !dbg !4330, !noalias !4325
  unreachable, !dbg !4330

10:                                               ; preds = %3
  call void @llvm.dbg.value(metadata i32 %1, metadata !4129, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !4324
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !4323
  store i32 %1, i32* %11, align 8, !dbg !4323, !tbaa.struct !4234
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !4323
  %13 = bitcast i32* %12 to i8*, !dbg !4323
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 4 dereferenceable(52) %13, i8* nonnull align 4 dereferenceable(52) %7, i64 52, i1 false), !dbg !4323, !tbaa.struct !4234
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %7), !dbg !4323
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !3067, metadata !DIExpression()), !dbg !4331
  call void @llvm.dbg.value(metadata i8 58, metadata !3068, metadata !DIExpression()), !dbg !4331
  call void @llvm.dbg.value(metadata i32 1, metadata !3069, metadata !DIExpression()), !dbg !4331
  call void @llvm.dbg.value(metadata i8 58, metadata !3070, metadata !DIExpression()), !dbg !4331
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 1, !dbg !4333
  call void @llvm.dbg.value(metadata i32* %14, metadata !3071, metadata !DIExpression()), !dbg !4331
  call void @llvm.dbg.value(metadata i32 26, metadata !3073, metadata !DIExpression()), !dbg !4331
  %15 = load i32, i32* %14, align 4, !dbg !4334, !tbaa !1559
  call void @llvm.dbg.value(metadata i32 %15, metadata !3074, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)), !dbg !4331
  %16 = or i32 %15, 67108864, !dbg !4335
  store i32 %16, i32* %14, align 4, !dbg !4335, !tbaa !1559
  %17 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !4336
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #18, !dbg !4337
  ret i8* %17, !dbg !4338
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom(i32 %0, i8* %1, i8* %2, i8* %3) local_unnamed_addr #8 !dbg !4339 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !4347, metadata !DIExpression()), !dbg !4357
  call void @llvm.dbg.value(metadata i32 %0, metadata !4343, metadata !DIExpression()), !dbg !4359
  call void @llvm.dbg.value(metadata i8* %1, metadata !4344, metadata !DIExpression()), !dbg !4359
  call void @llvm.dbg.value(metadata i8* %2, metadata !4345, metadata !DIExpression()), !dbg !4359
  call void @llvm.dbg.value(metadata i8* %3, metadata !4346, metadata !DIExpression()), !dbg !4359
  call void @llvm.dbg.value(metadata i32 %0, metadata !4352, metadata !DIExpression()) #18, !dbg !4360
  call void @llvm.dbg.value(metadata i8* %1, metadata !4353, metadata !DIExpression()) #18, !dbg !4360
  call void @llvm.dbg.value(metadata i8* %2, metadata !4354, metadata !DIExpression()) #18, !dbg !4360
  call void @llvm.dbg.value(metadata i8* %3, metadata !4355, metadata !DIExpression()) #18, !dbg !4360
  call void @llvm.dbg.value(metadata i64 -1, metadata !4356, metadata !DIExpression()) #18, !dbg !4360
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !4361
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #18, !dbg !4361
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %6, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #18, !dbg !4362, !tbaa.struct !4234
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !3107, metadata !DIExpression()) #18, !dbg !4363
  call void @llvm.dbg.value(metadata i8* %1, metadata !3108, metadata !DIExpression()) #18, !dbg !4363
  call void @llvm.dbg.value(metadata i8* %2, metadata !3109, metadata !DIExpression()) #18, !dbg !4363
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !3107, metadata !DIExpression()) #18, !dbg !4363
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !4365
  store i32 10, i32* %7, align 8, !dbg !4366, !tbaa !3049
  %8 = icmp ne i8* %1, null, !dbg !4367
  %9 = icmp ne i8* %2, null, !dbg !4368
  %10 = and i1 %8, %9, !dbg !4369
  br i1 %10, label %12, label %11, !dbg !4369

11:                                               ; preds = %4
  tail call void @abort() #22, !dbg !4370
  unreachable, !dbg !4370

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !4371
  store i8* %1, i8** %13, align 8, !dbg !4372, !tbaa !3123
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !4373
  store i8* %2, i8** %14, align 8, !dbg !4374, !tbaa !3126
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 -1, %struct.quoting_options* nonnull %5) #18, !dbg !4375
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #18, !dbg !4376
  ret i8* %15, !dbg !4377
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom_mem(i32 %0, i8* %1, i8* %2, i8* %3, i64 %4) local_unnamed_addr #8 !dbg !4348 {
  %6 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !4352, metadata !DIExpression()), !dbg !4378
  call void @llvm.dbg.value(metadata i8* %1, metadata !4353, metadata !DIExpression()), !dbg !4378
  call void @llvm.dbg.value(metadata i8* %2, metadata !4354, metadata !DIExpression()), !dbg !4378
  call void @llvm.dbg.value(metadata i8* %3, metadata !4355, metadata !DIExpression()), !dbg !4378
  call void @llvm.dbg.value(metadata i64 %4, metadata !4356, metadata !DIExpression()), !dbg !4378
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !4379
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #18, !dbg !4379
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %6, metadata !4347, metadata !DIExpression()), !dbg !4380
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %7, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !4381, !tbaa.struct !4234
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !3107, metadata !DIExpression()) #18, !dbg !4382
  call void @llvm.dbg.value(metadata i8* %1, metadata !3108, metadata !DIExpression()) #18, !dbg !4382
  call void @llvm.dbg.value(metadata i8* %2, metadata !3109, metadata !DIExpression()) #18, !dbg !4382
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !3107, metadata !DIExpression()) #18, !dbg !4382
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !4384
  store i32 10, i32* %8, align 8, !dbg !4385, !tbaa !3049
  %9 = icmp ne i8* %1, null, !dbg !4386
  %10 = icmp ne i8* %2, null, !dbg !4387
  %11 = and i1 %9, %10, !dbg !4388
  br i1 %11, label %13, label %12, !dbg !4388

12:                                               ; preds = %5
  tail call void @abort() #22, !dbg !4389
  unreachable, !dbg !4389

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !4390
  store i8* %1, i8** %14, align 8, !dbg !4391, !tbaa !3123
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !4392
  store i8* %2, i8** %15, align 8, !dbg !4393, !tbaa !3126
  %16 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 %4, %struct.quoting_options* nonnull %6), !dbg !4394
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #18, !dbg !4395
  ret i8* %16, !dbg !4396
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom(i8* %0, i8* %1, i8* %2) local_unnamed_addr #8 !dbg !4397 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !4347, metadata !DIExpression()), !dbg !4404
  call void @llvm.dbg.value(metadata i8* %0, metadata !4401, metadata !DIExpression()), !dbg !4407
  call void @llvm.dbg.value(metadata i8* %1, metadata !4402, metadata !DIExpression()), !dbg !4407
  call void @llvm.dbg.value(metadata i8* %2, metadata !4403, metadata !DIExpression()), !dbg !4407
  call void @llvm.dbg.value(metadata i32 0, metadata !4343, metadata !DIExpression()) #18, !dbg !4408
  call void @llvm.dbg.value(metadata i8* %0, metadata !4344, metadata !DIExpression()) #18, !dbg !4408
  call void @llvm.dbg.value(metadata i8* %1, metadata !4345, metadata !DIExpression()) #18, !dbg !4408
  call void @llvm.dbg.value(metadata i8* %2, metadata !4346, metadata !DIExpression()) #18, !dbg !4408
  call void @llvm.dbg.value(metadata i32 0, metadata !4352, metadata !DIExpression()) #18, !dbg !4409
  call void @llvm.dbg.value(metadata i8* %0, metadata !4353, metadata !DIExpression()) #18, !dbg !4409
  call void @llvm.dbg.value(metadata i8* %1, metadata !4354, metadata !DIExpression()) #18, !dbg !4409
  call void @llvm.dbg.value(metadata i8* %2, metadata !4355, metadata !DIExpression()) #18, !dbg !4409
  call void @llvm.dbg.value(metadata i64 -1, metadata !4356, metadata !DIExpression()) #18, !dbg !4409
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !4410
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #18, !dbg !4410
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #18, !dbg !4411, !tbaa.struct !4234
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !3107, metadata !DIExpression()) #18, !dbg !4412
  call void @llvm.dbg.value(metadata i8* %0, metadata !3108, metadata !DIExpression()) #18, !dbg !4412
  call void @llvm.dbg.value(metadata i8* %1, metadata !3109, metadata !DIExpression()) #18, !dbg !4412
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !3107, metadata !DIExpression()) #18, !dbg !4412
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !4414
  store i32 10, i32* %6, align 8, !dbg !4415, !tbaa !3049
  %7 = icmp ne i8* %0, null, !dbg !4416
  %8 = icmp ne i8* %1, null, !dbg !4417
  %9 = and i1 %7, %8, !dbg !4418
  br i1 %9, label %11, label %10, !dbg !4418

10:                                               ; preds = %3
  tail call void @abort() #22, !dbg !4419
  unreachable, !dbg !4419

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !4420
  store i8* %0, i8** %12, align 8, !dbg !4421, !tbaa !3123
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !4422
  store i8* %1, i8** %13, align 8, !dbg !4423, !tbaa !3126
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4) #18, !dbg !4424
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #18, !dbg !4425
  ret i8* %14, !dbg !4426
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom_mem(i8* %0, i8* %1, i8* %2, i64 %3) local_unnamed_addr #8 !dbg !4427 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !4347, metadata !DIExpression()), !dbg !4435
  call void @llvm.dbg.value(metadata i8* %0, metadata !4431, metadata !DIExpression()), !dbg !4437
  call void @llvm.dbg.value(metadata i8* %1, metadata !4432, metadata !DIExpression()), !dbg !4437
  call void @llvm.dbg.value(metadata i8* %2, metadata !4433, metadata !DIExpression()), !dbg !4437
  call void @llvm.dbg.value(metadata i64 %3, metadata !4434, metadata !DIExpression()), !dbg !4437
  call void @llvm.dbg.value(metadata i32 0, metadata !4352, metadata !DIExpression()) #18, !dbg !4438
  call void @llvm.dbg.value(metadata i8* %0, metadata !4353, metadata !DIExpression()) #18, !dbg !4438
  call void @llvm.dbg.value(metadata i8* %1, metadata !4354, metadata !DIExpression()) #18, !dbg !4438
  call void @llvm.dbg.value(metadata i8* %2, metadata !4355, metadata !DIExpression()) #18, !dbg !4438
  call void @llvm.dbg.value(metadata i64 %3, metadata !4356, metadata !DIExpression()) #18, !dbg !4438
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !4439
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #18, !dbg !4439
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %6, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #18, !dbg !4440, !tbaa.struct !4234
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !3107, metadata !DIExpression()) #18, !dbg !4441
  call void @llvm.dbg.value(metadata i8* %0, metadata !3108, metadata !DIExpression()) #18, !dbg !4441
  call void @llvm.dbg.value(metadata i8* %1, metadata !3109, metadata !DIExpression()) #18, !dbg !4441
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !3107, metadata !DIExpression()) #18, !dbg !4441
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !4443
  store i32 10, i32* %7, align 8, !dbg !4444, !tbaa !3049
  %8 = icmp ne i8* %0, null, !dbg !4445
  %9 = icmp ne i8* %1, null, !dbg !4446
  %10 = and i1 %8, %9, !dbg !4447
  br i1 %10, label %12, label %11, !dbg !4447

11:                                               ; preds = %4
  tail call void @abort() #22, !dbg !4448
  unreachable, !dbg !4448

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !4449
  store i8* %0, i8** %13, align 8, !dbg !4450, !tbaa !3123
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !4451
  store i8* %1, i8** %14, align 8, !dbg !4452, !tbaa !3126
  %15 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5) #18, !dbg !4453
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #18, !dbg !4454
  ret i8* %15, !dbg !4455
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n_mem(i32 %0, i8* %1, i64 %2) local_unnamed_addr #8 !dbg !4456 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4460, metadata !DIExpression()), !dbg !4463
  call void @llvm.dbg.value(metadata i8* %1, metadata !4461, metadata !DIExpression()), !dbg !4463
  call void @llvm.dbg.value(metadata i64 %2, metadata !4462, metadata !DIExpression()), !dbg !4463
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @quote_quoting_options), !dbg !4464
  ret i8* %4, !dbg !4465
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_mem(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !4466 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4470, metadata !DIExpression()), !dbg !4472
  call void @llvm.dbg.value(metadata i64 %1, metadata !4471, metadata !DIExpression()), !dbg !4472
  call void @llvm.dbg.value(metadata i32 0, metadata !4460, metadata !DIExpression()) #18, !dbg !4473
  call void @llvm.dbg.value(metadata i8* %0, metadata !4461, metadata !DIExpression()) #18, !dbg !4473
  call void @llvm.dbg.value(metadata i64 %1, metadata !4462, metadata !DIExpression()) #18, !dbg !4473
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @quote_quoting_options) #18, !dbg !4475
  ret i8* %3, !dbg !4476
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n(i32 %0, i8* %1) local_unnamed_addr #8 !dbg !4477 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4481, metadata !DIExpression()), !dbg !4483
  call void @llvm.dbg.value(metadata i8* %1, metadata !4482, metadata !DIExpression()), !dbg !4483
  call void @llvm.dbg.value(metadata i32 %0, metadata !4460, metadata !DIExpression()) #18, !dbg !4484
  call void @llvm.dbg.value(metadata i8* %1, metadata !4461, metadata !DIExpression()) #18, !dbg !4484
  call void @llvm.dbg.value(metadata i64 -1, metadata !4462, metadata !DIExpression()) #18, !dbg !4484
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #18, !dbg !4486
  ret i8* %3, !dbg !4487
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote(i8* %0) local_unnamed_addr #8 !dbg !4488 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4492, metadata !DIExpression()), !dbg !4493
  call void @llvm.dbg.value(metadata i32 0, metadata !4481, metadata !DIExpression()) #18, !dbg !4494
  call void @llvm.dbg.value(metadata i8* %0, metadata !4482, metadata !DIExpression()) #18, !dbg !4494
  call void @llvm.dbg.value(metadata i32 0, metadata !4460, metadata !DIExpression()) #18, !dbg !4496
  call void @llvm.dbg.value(metadata i8* %0, metadata !4461, metadata !DIExpression()) #18, !dbg !4496
  call void @llvm.dbg.value(metadata i64 -1, metadata !4462, metadata !DIExpression()) #18, !dbg !4496
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #18, !dbg !4498
  ret i8* %2, !dbg !4499
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @dup_safer(i32 %0) local_unnamed_addr #8 !dbg !4500 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4502, metadata !DIExpression()), !dbg !4503
  %2 = tail call i32 (i32, i32, ...) @rpl_fcntl(i32 %0, i32 0, i32 3) #18, !dbg !4504
  ret i32 %2, !dbg !4505
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** readonly %4, i64 %5) local_unnamed_addr #8 !dbg !4506 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4513, metadata !DIExpression()), !dbg !4519
  call void @llvm.dbg.value(metadata i8* %1, metadata !4514, metadata !DIExpression()), !dbg !4519
  call void @llvm.dbg.value(metadata i8* %2, metadata !4515, metadata !DIExpression()), !dbg !4519
  call void @llvm.dbg.value(metadata i8* %3, metadata !4516, metadata !DIExpression()), !dbg !4519
  call void @llvm.dbg.value(metadata i8** %4, metadata !4517, metadata !DIExpression()), !dbg !4519
  call void @llvm.dbg.value(metadata i64 %5, metadata !4518, metadata !DIExpression()), !dbg !4519
  %7 = icmp eq i8* %1, null, !dbg !4520
  br i1 %7, label %10, label %8, !dbg !4522

8:                                                ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.127, i64 0, i64 0), i8* nonnull %1, i8* %2, i8* %3) #18, !dbg !4523
  br label %12, !dbg !4523

10:                                               ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.128, i64 0, i64 0), i8* %2, i8* %3) #18, !dbg !4524
  br label %12

12:                                               ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.129, i64 0, i64 0), i32 5) #18, !dbg !4525
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* %13, i32 2020) #18, !dbg !4525
  %15 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.130, i64 0, i64 0), %struct._IO_FILE* %0), !dbg !4526
  %16 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([171 x i8], [171 x i8]* @.str.4.131, i64 0, i64 0), i32 5) #18, !dbg !4527
  %17 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %16, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5.132, i64 0, i64 0)) #18, !dbg !4527
  %18 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.130, i64 0, i64 0), %struct._IO_FILE* %0), !dbg !4528
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
  ], !dbg !4529

19:                                               ; preds = %12
  %20 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6.133, i64 0, i64 0), i32 5) #18, !dbg !4530
  %21 = load i8*, i8** %4, align 8, !dbg !4530, !tbaa !1347
  %22 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %20, i8* %21) #18, !dbg !4530
  br label %147, !dbg !4532

23:                                               ; preds = %12
  %24 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7.134, i64 0, i64 0), i32 5) #18, !dbg !4533
  %25 = load i8*, i8** %4, align 8, !dbg !4533, !tbaa !1347
  %26 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4533
  %27 = load i8*, i8** %26, align 8, !dbg !4533, !tbaa !1347
  %28 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %24, i8* %25, i8* %27) #18, !dbg !4533
  br label %147, !dbg !4534

29:                                               ; preds = %12
  %30 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8.135, i64 0, i64 0), i32 5) #18, !dbg !4535
  %31 = load i8*, i8** %4, align 8, !dbg !4535, !tbaa !1347
  %32 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4535
  %33 = load i8*, i8** %32, align 8, !dbg !4535, !tbaa !1347
  %34 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !4535
  %35 = load i8*, i8** %34, align 8, !dbg !4535, !tbaa !1347
  %36 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %30, i8* %31, i8* %33, i8* %35) #18, !dbg !4535
  br label %147, !dbg !4536

37:                                               ; preds = %12
  %38 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9.136, i64 0, i64 0), i32 5) #18, !dbg !4537
  %39 = load i8*, i8** %4, align 8, !dbg !4537, !tbaa !1347
  %40 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4537
  %41 = load i8*, i8** %40, align 8, !dbg !4537, !tbaa !1347
  %42 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !4537
  %43 = load i8*, i8** %42, align 8, !dbg !4537, !tbaa !1347
  %44 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !4537
  %45 = load i8*, i8** %44, align 8, !dbg !4537, !tbaa !1347
  %46 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %38, i8* %39, i8* %41, i8* %43, i8* %45) #18, !dbg !4537
  br label %147, !dbg !4538

47:                                               ; preds = %12
  %48 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.10.137, i64 0, i64 0), i32 5) #18, !dbg !4539
  %49 = load i8*, i8** %4, align 8, !dbg !4539, !tbaa !1347
  %50 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4539
  %51 = load i8*, i8** %50, align 8, !dbg !4539, !tbaa !1347
  %52 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !4539
  %53 = load i8*, i8** %52, align 8, !dbg !4539, !tbaa !1347
  %54 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !4539
  %55 = load i8*, i8** %54, align 8, !dbg !4539, !tbaa !1347
  %56 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !4539
  %57 = load i8*, i8** %56, align 8, !dbg !4539, !tbaa !1347
  %58 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %48, i8* %49, i8* %51, i8* %53, i8* %55, i8* %57) #18, !dbg !4539
  br label %147, !dbg !4540

59:                                               ; preds = %12
  %60 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.11.138, i64 0, i64 0), i32 5) #18, !dbg !4541
  %61 = load i8*, i8** %4, align 8, !dbg !4541, !tbaa !1347
  %62 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4541
  %63 = load i8*, i8** %62, align 8, !dbg !4541, !tbaa !1347
  %64 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !4541
  %65 = load i8*, i8** %64, align 8, !dbg !4541, !tbaa !1347
  %66 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !4541
  %67 = load i8*, i8** %66, align 8, !dbg !4541, !tbaa !1347
  %68 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !4541
  %69 = load i8*, i8** %68, align 8, !dbg !4541, !tbaa !1347
  %70 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !4541
  %71 = load i8*, i8** %70, align 8, !dbg !4541, !tbaa !1347
  %72 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %60, i8* %61, i8* %63, i8* %65, i8* %67, i8* %69, i8* %71) #18, !dbg !4541
  br label %147, !dbg !4542

73:                                               ; preds = %12
  %74 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.12.139, i64 0, i64 0), i32 5) #18, !dbg !4543
  %75 = load i8*, i8** %4, align 8, !dbg !4543, !tbaa !1347
  %76 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4543
  %77 = load i8*, i8** %76, align 8, !dbg !4543, !tbaa !1347
  %78 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !4543
  %79 = load i8*, i8** %78, align 8, !dbg !4543, !tbaa !1347
  %80 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !4543
  %81 = load i8*, i8** %80, align 8, !dbg !4543, !tbaa !1347
  %82 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !4543
  %83 = load i8*, i8** %82, align 8, !dbg !4543, !tbaa !1347
  %84 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !4543
  %85 = load i8*, i8** %84, align 8, !dbg !4543, !tbaa !1347
  %86 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !4543
  %87 = load i8*, i8** %86, align 8, !dbg !4543, !tbaa !1347
  %88 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %74, i8* %75, i8* %77, i8* %79, i8* %81, i8* %83, i8* %85, i8* %87) #18, !dbg !4543
  br label %147, !dbg !4544

89:                                               ; preds = %12
  %90 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.13.140, i64 0, i64 0), i32 5) #18, !dbg !4545
  %91 = load i8*, i8** %4, align 8, !dbg !4545, !tbaa !1347
  %92 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4545
  %93 = load i8*, i8** %92, align 8, !dbg !4545, !tbaa !1347
  %94 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !4545
  %95 = load i8*, i8** %94, align 8, !dbg !4545, !tbaa !1347
  %96 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !4545
  %97 = load i8*, i8** %96, align 8, !dbg !4545, !tbaa !1347
  %98 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !4545
  %99 = load i8*, i8** %98, align 8, !dbg !4545, !tbaa !1347
  %100 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !4545
  %101 = load i8*, i8** %100, align 8, !dbg !4545, !tbaa !1347
  %102 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !4545
  %103 = load i8*, i8** %102, align 8, !dbg !4545, !tbaa !1347
  %104 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !4545
  %105 = load i8*, i8** %104, align 8, !dbg !4545, !tbaa !1347
  %106 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %90, i8* %91, i8* %93, i8* %95, i8* %97, i8* %99, i8* %101, i8* %103, i8* %105) #18, !dbg !4545
  br label %147, !dbg !4546

107:                                              ; preds = %12
  %108 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.14.141, i64 0, i64 0), i32 5) #18, !dbg !4547
  %109 = load i8*, i8** %4, align 8, !dbg !4547, !tbaa !1347
  %110 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4547
  %111 = load i8*, i8** %110, align 8, !dbg !4547, !tbaa !1347
  %112 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !4547
  %113 = load i8*, i8** %112, align 8, !dbg !4547, !tbaa !1347
  %114 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !4547
  %115 = load i8*, i8** %114, align 8, !dbg !4547, !tbaa !1347
  %116 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !4547
  %117 = load i8*, i8** %116, align 8, !dbg !4547, !tbaa !1347
  %118 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !4547
  %119 = load i8*, i8** %118, align 8, !dbg !4547, !tbaa !1347
  %120 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !4547
  %121 = load i8*, i8** %120, align 8, !dbg !4547, !tbaa !1347
  %122 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !4547
  %123 = load i8*, i8** %122, align 8, !dbg !4547, !tbaa !1347
  %124 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !4547
  %125 = load i8*, i8** %124, align 8, !dbg !4547, !tbaa !1347
  %126 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %108, i8* %109, i8* %111, i8* %113, i8* %115, i8* %117, i8* %119, i8* %121, i8* %123, i8* %125) #18, !dbg !4547
  br label %147, !dbg !4548

127:                                              ; preds = %12
  %128 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.15.142, i64 0, i64 0), i32 5) #18, !dbg !4549
  %129 = load i8*, i8** %4, align 8, !dbg !4549, !tbaa !1347
  %130 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4549
  %131 = load i8*, i8** %130, align 8, !dbg !4549, !tbaa !1347
  %132 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !4549
  %133 = load i8*, i8** %132, align 8, !dbg !4549, !tbaa !1347
  %134 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !4549
  %135 = load i8*, i8** %134, align 8, !dbg !4549, !tbaa !1347
  %136 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !4549
  %137 = load i8*, i8** %136, align 8, !dbg !4549, !tbaa !1347
  %138 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !4549
  %139 = load i8*, i8** %138, align 8, !dbg !4549, !tbaa !1347
  %140 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !4549
  %141 = load i8*, i8** %140, align 8, !dbg !4549, !tbaa !1347
  %142 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !4549
  %143 = load i8*, i8** %142, align 8, !dbg !4549, !tbaa !1347
  %144 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !4549
  %145 = load i8*, i8** %144, align 8, !dbg !4549, !tbaa !1347
  %146 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %128, i8* %129, i8* %131, i8* %133, i8* %135, i8* %137, i8* %139, i8* %141, i8* %143, i8* %145) #18, !dbg !4549
  br label %147, !dbg !4550

147:                                              ; preds = %127, %107, %89, %73, %59, %47, %37, %29, %23, %19, %12
  ret void, !dbg !4551
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_ar(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** readonly %4) local_unnamed_addr #8 !dbg !4552 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4556, metadata !DIExpression()), !dbg !4562
  call void @llvm.dbg.value(metadata i8* %1, metadata !4557, metadata !DIExpression()), !dbg !4562
  call void @llvm.dbg.value(metadata i8* %2, metadata !4558, metadata !DIExpression()), !dbg !4562
  call void @llvm.dbg.value(metadata i8* %3, metadata !4559, metadata !DIExpression()), !dbg !4562
  call void @llvm.dbg.value(metadata i8** %4, metadata !4560, metadata !DIExpression()), !dbg !4562
  call void @llvm.dbg.value(metadata i64 0, metadata !4561, metadata !DIExpression()), !dbg !4562
  br label %6, !dbg !4563

6:                                                ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !4565
  call void @llvm.dbg.value(metadata i64 %7, metadata !4561, metadata !DIExpression()), !dbg !4562
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7, !dbg !4566
  %9 = load i8*, i8** %8, align 8, !dbg !4566, !tbaa !1347
  %10 = icmp eq i8* %9, null, !dbg !4568
  %11 = add i64 %7, 1, !dbg !4569
  call void @llvm.dbg.value(metadata i64 %11, metadata !4561, metadata !DIExpression()), !dbg !4562
  br i1 %10, label %12, label %6, !dbg !4568, !llvm.loop !4570

12:                                               ; preds = %6
  call void @llvm.dbg.value(metadata i64 %7, metadata !4561, metadata !DIExpression()), !dbg !4562
  call void @llvm.dbg.value(metadata i64 %7, metadata !4561, metadata !DIExpression()), !dbg !4562
  call void @llvm.dbg.value(metadata i64 %7, metadata !4561, metadata !DIExpression()), !dbg !4562
  call void @llvm.dbg.value(metadata i64 %7, metadata !4561, metadata !DIExpression()), !dbg !4562
  call void @llvm.dbg.value(metadata i64 %7, metadata !4561, metadata !DIExpression()), !dbg !4562
  call void @llvm.dbg.value(metadata i64 %7, metadata !4561, metadata !DIExpression()), !dbg !4562
  tail call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %4, i64 %7), !dbg !4572
  ret void, !dbg !4573
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nocapture %4) local_unnamed_addr #8 !dbg !4574 {
  %6 = alloca [10 x i8*], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4585, metadata !DIExpression()), !dbg !4593
  call void @llvm.dbg.value(metadata i8* %1, metadata !4586, metadata !DIExpression()), !dbg !4593
  call void @llvm.dbg.value(metadata i8* %2, metadata !4587, metadata !DIExpression()), !dbg !4593
  call void @llvm.dbg.value(metadata i8* %3, metadata !4588, metadata !DIExpression()), !dbg !4593
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %4, metadata !4589, metadata !DIExpression()), !dbg !4593
  %7 = bitcast [10 x i8*]* %6 to i8*, !dbg !4594
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %7) #18, !dbg !4594
  call void @llvm.dbg.declare(metadata [10 x i8*]* %6, metadata !4591, metadata !DIExpression()), !dbg !4595
  call void @llvm.dbg.value(metadata i64 0, metadata !4590, metadata !DIExpression()), !dbg !4593
  %8 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 0, !dbg !4596
  %9 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 2, !dbg !4596
  %10 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 3, !dbg !4596
  %11 = load i32, i32* %8, align 8, !dbg !4599
  %12 = icmp ult i32 %11, 41, !dbg !4599
  br i1 %12, label %13, label %18, !dbg !4599

13:                                               ; preds = %5
  %14 = load i8*, i8** %10, align 8, !dbg !4599
  %15 = zext i32 %11 to i64, !dbg !4599
  %16 = getelementptr i8, i8* %14, i64 %15, !dbg !4599
  %17 = add nuw nsw i32 %11, 8, !dbg !4599
  store i32 %17, i32* %8, align 8, !dbg !4599
  br label %21, !dbg !4599

18:                                               ; preds = %5
  %19 = load i8*, i8** %9, align 8, !dbg !4599
  %20 = getelementptr i8, i8* %19, i64 8, !dbg !4599
  store i8* %20, i8** %9, align 8, !dbg !4599
  br label %21, !dbg !4599

21:                                               ; preds = %18, %13
  %22 = phi i32 [ %17, %13 ], [ %11, %18 ]
  %23 = phi i8* [ %16, %13 ], [ %19, %18 ]
  %24 = bitcast i8* %23 to i8**, !dbg !4599
  %25 = load i8*, i8** %24, align 8, !dbg !4599
  %26 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !4600
  store i8* %25, i8** %26, align 16, !dbg !4601, !tbaa !1347
  %27 = icmp eq i8* %25, null, !dbg !4602
  br i1 %27, label %30, label %28, !dbg !4603

28:                                               ; preds = %21
  call void @llvm.dbg.value(metadata i64 1, metadata !4590, metadata !DIExpression()), !dbg !4593
  %29 = icmp ult i32 %22, 41, !dbg !4599
  br i1 %29, label %35, label %32, !dbg !4599

30:                                               ; preds = %135, %128, %121, %114, %108, %91, %74, %57, %40, %21
  %31 = phi i64 [ 0, %21 ], [ 1, %40 ], [ 2, %57 ], [ 3, %74 ], [ 4, %91 ], [ 5, %108 ], [ 6, %114 ], [ 7, %121 ], [ 8, %128 ], [ %142, %135 ], !dbg !4604
  call void @llvm.dbg.value(metadata i64 %31, metadata !4590, metadata !DIExpression()), !dbg !4593
  call void @llvm.dbg.value(metadata i64 %31, metadata !4590, metadata !DIExpression()), !dbg !4593
  call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %26, i64 %31), !dbg !4605
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %7) #18, !dbg !4606
  ret void, !dbg !4606

32:                                               ; preds = %28
  %33 = load i8*, i8** %9, align 8, !dbg !4599
  %34 = getelementptr i8, i8* %33, i64 8, !dbg !4599
  store i8* %34, i8** %9, align 8, !dbg !4599
  br label %40, !dbg !4599

35:                                               ; preds = %28
  %36 = load i8*, i8** %10, align 8, !dbg !4599
  %37 = zext i32 %22 to i64, !dbg !4599
  %38 = getelementptr i8, i8* %36, i64 %37, !dbg !4599
  %39 = add nuw nsw i32 %22, 8, !dbg !4599
  store i32 %39, i32* %8, align 8, !dbg !4599
  br label %40, !dbg !4599

40:                                               ; preds = %35, %32
  %41 = phi i32 [ %39, %35 ], [ %22, %32 ]
  %42 = phi i8* [ %38, %35 ], [ %33, %32 ]
  %43 = bitcast i8* %42 to i8**, !dbg !4599
  %44 = load i8*, i8** %43, align 8, !dbg !4599
  %45 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !4600
  store i8* %44, i8** %45, align 8, !dbg !4601, !tbaa !1347
  %46 = icmp eq i8* %44, null, !dbg !4602
  br i1 %46, label %30, label %47, !dbg !4603

47:                                               ; preds = %40
  call void @llvm.dbg.value(metadata i64 2, metadata !4590, metadata !DIExpression()), !dbg !4593
  %48 = icmp ult i32 %41, 41, !dbg !4599
  br i1 %48, label %52, label %49, !dbg !4599

49:                                               ; preds = %47
  %50 = load i8*, i8** %9, align 8, !dbg !4599
  %51 = getelementptr i8, i8* %50, i64 8, !dbg !4599
  store i8* %51, i8** %9, align 8, !dbg !4599
  br label %57, !dbg !4599

52:                                               ; preds = %47
  %53 = load i8*, i8** %10, align 8, !dbg !4599
  %54 = zext i32 %41 to i64, !dbg !4599
  %55 = getelementptr i8, i8* %53, i64 %54, !dbg !4599
  %56 = add nuw nsw i32 %41, 8, !dbg !4599
  store i32 %56, i32* %8, align 8, !dbg !4599
  br label %57, !dbg !4599

57:                                               ; preds = %52, %49
  %58 = phi i32 [ %56, %52 ], [ %41, %49 ]
  %59 = phi i8* [ %55, %52 ], [ %50, %49 ]
  %60 = bitcast i8* %59 to i8**, !dbg !4599
  %61 = load i8*, i8** %60, align 8, !dbg !4599
  %62 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !4600
  store i8* %61, i8** %62, align 16, !dbg !4601, !tbaa !1347
  %63 = icmp eq i8* %61, null, !dbg !4602
  br i1 %63, label %30, label %64, !dbg !4603

64:                                               ; preds = %57
  call void @llvm.dbg.value(metadata i64 3, metadata !4590, metadata !DIExpression()), !dbg !4593
  %65 = icmp ult i32 %58, 41, !dbg !4599
  br i1 %65, label %69, label %66, !dbg !4599

66:                                               ; preds = %64
  %67 = load i8*, i8** %9, align 8, !dbg !4599
  %68 = getelementptr i8, i8* %67, i64 8, !dbg !4599
  store i8* %68, i8** %9, align 8, !dbg !4599
  br label %74, !dbg !4599

69:                                               ; preds = %64
  %70 = load i8*, i8** %10, align 8, !dbg !4599
  %71 = zext i32 %58 to i64, !dbg !4599
  %72 = getelementptr i8, i8* %70, i64 %71, !dbg !4599
  %73 = add nuw nsw i32 %58, 8, !dbg !4599
  store i32 %73, i32* %8, align 8, !dbg !4599
  br label %74, !dbg !4599

74:                                               ; preds = %69, %66
  %75 = phi i32 [ %73, %69 ], [ %58, %66 ]
  %76 = phi i8* [ %72, %69 ], [ %67, %66 ]
  %77 = bitcast i8* %76 to i8**, !dbg !4599
  %78 = load i8*, i8** %77, align 8, !dbg !4599
  %79 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !4600
  store i8* %78, i8** %79, align 8, !dbg !4601, !tbaa !1347
  %80 = icmp eq i8* %78, null, !dbg !4602
  br i1 %80, label %30, label %81, !dbg !4603

81:                                               ; preds = %74
  call void @llvm.dbg.value(metadata i64 4, metadata !4590, metadata !DIExpression()), !dbg !4593
  %82 = icmp ult i32 %75, 41, !dbg !4599
  br i1 %82, label %86, label %83, !dbg !4599

83:                                               ; preds = %81
  %84 = load i8*, i8** %9, align 8, !dbg !4599
  %85 = getelementptr i8, i8* %84, i64 8, !dbg !4599
  store i8* %85, i8** %9, align 8, !dbg !4599
  br label %91, !dbg !4599

86:                                               ; preds = %81
  %87 = load i8*, i8** %10, align 8, !dbg !4599
  %88 = zext i32 %75 to i64, !dbg !4599
  %89 = getelementptr i8, i8* %87, i64 %88, !dbg !4599
  %90 = add nuw nsw i32 %75, 8, !dbg !4599
  store i32 %90, i32* %8, align 8, !dbg !4599
  br label %91, !dbg !4599

91:                                               ; preds = %86, %83
  %92 = phi i32 [ %90, %86 ], [ %75, %83 ]
  %93 = phi i8* [ %89, %86 ], [ %84, %83 ]
  %94 = bitcast i8* %93 to i8**, !dbg !4599
  %95 = load i8*, i8** %94, align 8, !dbg !4599
  %96 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !4600
  store i8* %95, i8** %96, align 16, !dbg !4601, !tbaa !1347
  %97 = icmp eq i8* %95, null, !dbg !4602
  br i1 %97, label %30, label %98, !dbg !4603

98:                                               ; preds = %91
  call void @llvm.dbg.value(metadata i64 5, metadata !4590, metadata !DIExpression()), !dbg !4593
  %99 = icmp ult i32 %92, 41, !dbg !4599
  br i1 %99, label %103, label %100, !dbg !4599

100:                                              ; preds = %98
  %101 = load i8*, i8** %9, align 8, !dbg !4599
  %102 = getelementptr i8, i8* %101, i64 8, !dbg !4599
  store i8* %102, i8** %9, align 8, !dbg !4599
  br label %108, !dbg !4599

103:                                              ; preds = %98
  %104 = load i8*, i8** %10, align 8, !dbg !4599
  %105 = zext i32 %92 to i64, !dbg !4599
  %106 = getelementptr i8, i8* %104, i64 %105, !dbg !4599
  %107 = add nuw nsw i32 %92, 8, !dbg !4599
  store i32 %107, i32* %8, align 8, !dbg !4599
  br label %108, !dbg !4599

108:                                              ; preds = %103, %100
  %109 = phi i8* [ %106, %103 ], [ %101, %100 ]
  %110 = bitcast i8* %109 to i8**, !dbg !4599
  %111 = load i8*, i8** %110, align 8, !dbg !4599
  %112 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !4600
  store i8* %111, i8** %112, align 8, !dbg !4601, !tbaa !1347
  %113 = icmp eq i8* %111, null, !dbg !4602
  br i1 %113, label %30, label %114, !dbg !4603

114:                                              ; preds = %108
  call void @llvm.dbg.value(metadata i64 6, metadata !4590, metadata !DIExpression()), !dbg !4593
  %115 = load i8*, i8** %9, align 8, !dbg !4599
  %116 = getelementptr i8, i8* %115, i64 8, !dbg !4599
  store i8* %116, i8** %9, align 8, !dbg !4599
  %117 = bitcast i8* %115 to i8**, !dbg !4599
  %118 = load i8*, i8** %117, align 8, !dbg !4599
  %119 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !4600
  store i8* %118, i8** %119, align 16, !dbg !4601, !tbaa !1347
  %120 = icmp eq i8* %118, null, !dbg !4602
  br i1 %120, label %30, label %121, !dbg !4603

121:                                              ; preds = %114
  call void @llvm.dbg.value(metadata i64 7, metadata !4590, metadata !DIExpression()), !dbg !4593
  %122 = load i8*, i8** %9, align 8, !dbg !4599
  %123 = getelementptr i8, i8* %122, i64 8, !dbg !4599
  store i8* %123, i8** %9, align 8, !dbg !4599
  %124 = bitcast i8* %122 to i8**, !dbg !4599
  %125 = load i8*, i8** %124, align 8, !dbg !4599
  %126 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !4600
  store i8* %125, i8** %126, align 8, !dbg !4601, !tbaa !1347
  %127 = icmp eq i8* %125, null, !dbg !4602
  br i1 %127, label %30, label %128, !dbg !4603

128:                                              ; preds = %121
  call void @llvm.dbg.value(metadata i64 8, metadata !4590, metadata !DIExpression()), !dbg !4593
  %129 = load i8*, i8** %9, align 8, !dbg !4599
  %130 = getelementptr i8, i8* %129, i64 8, !dbg !4599
  store i8* %130, i8** %9, align 8, !dbg !4599
  %131 = bitcast i8* %129 to i8**, !dbg !4599
  %132 = load i8*, i8** %131, align 8, !dbg !4599
  %133 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !4600
  store i8* %132, i8** %133, align 16, !dbg !4601, !tbaa !1347
  %134 = icmp eq i8* %132, null, !dbg !4602
  br i1 %134, label %30, label %135, !dbg !4603

135:                                              ; preds = %128
  call void @llvm.dbg.value(metadata i64 9, metadata !4590, metadata !DIExpression()), !dbg !4593
  %136 = load i8*, i8** %9, align 8, !dbg !4599
  %137 = getelementptr i8, i8* %136, i64 8, !dbg !4599
  store i8* %137, i8** %9, align 8, !dbg !4599
  %138 = bitcast i8* %136 to i8**, !dbg !4599
  %139 = load i8*, i8** %138, align 8, !dbg !4599
  %140 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9, !dbg !4600
  store i8* %139, i8** %140, align 8, !dbg !4601, !tbaa !1347
  %141 = icmp eq i8* %139, null, !dbg !4602
  %142 = select i1 %141, i64 9, i64 10, !dbg !4603
  br label %30, !dbg !4603
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, ...) local_unnamed_addr #8 !dbg !4607 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4611, metadata !DIExpression()), !dbg !4621
  call void @llvm.dbg.value(metadata i8* %1, metadata !4612, metadata !DIExpression()), !dbg !4621
  call void @llvm.dbg.value(metadata i8* %2, metadata !4613, metadata !DIExpression()), !dbg !4621
  call void @llvm.dbg.value(metadata i8* %3, metadata !4614, metadata !DIExpression()), !dbg !4621
  %6 = bitcast [1 x %struct.__va_list_tag]* %5 to i8*, !dbg !4622
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %6) #18, !dbg !4622
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %5, metadata !4615, metadata !DIExpression()), !dbg !4623
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0, !dbg !4624
  call void @llvm.va_start(i8* nonnull %6), !dbg !4624
  call void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nonnull %7), !dbg !4625
  call void @llvm.va_end(i8* nonnull %6), !dbg !4626
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %6) #18, !dbg !4627
  ret void, !dbg !4627
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #18

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #18

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #8 !dbg !4628 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !4629, !tbaa !1347
  %2 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.130, i64 0, i64 0), %struct._IO_FILE* %1), !dbg !4629
  %3 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16.145, i64 0, i64 0), i32 5) #18, !dbg !4630
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %3, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.17.146, i64 0, i64 0)) #18, !dbg !4630
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.18.147, i64 0, i64 0), i32 5) #18, !dbg !4631
  %6 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %5, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.19.148, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.20.149, i64 0, i64 0)) #18, !dbg !4631
  %7 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.21.150, i64 0, i64 0), i32 5) #18, !dbg !4632
  %8 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %7, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.22.151, i64 0, i64 0)) #18, !dbg !4632
  ret void, !dbg !4633
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnmalloc(i64 %0, i64 %1) local_unnamed_addr #19 !dbg !4634 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4638, metadata !DIExpression()), !dbg !4640
  call void @llvm.dbg.value(metadata i64 %1, metadata !4639, metadata !DIExpression()), !dbg !4640
  %3 = udiv i64 9223372036854775807, %1, !dbg !4641
  %4 = icmp ult i64 %3, %0, !dbg !4641
  br i1 %4, label %5, label %6, !dbg !4643

5:                                                ; preds = %2
  tail call void @xalloc_die() #22, !dbg !4644
  unreachable, !dbg !4644

6:                                                ; preds = %2
  %7 = mul i64 %1, %0, !dbg !4645
  call void @llvm.dbg.value(metadata i64 %7, metadata !4646, metadata !DIExpression()) #18, !dbg !4652
  %8 = tail call noalias i8* @malloc(i64 %7) #18, !dbg !4654
  call void @llvm.dbg.value(metadata i8* %8, metadata !4651, metadata !DIExpression()) #18, !dbg !4652
  %9 = icmp eq i8* %8, null, !dbg !4655
  %10 = icmp ne i64 %7, 0, !dbg !4657
  %11 = and i1 %10, %9, !dbg !4658
  br i1 %11, label %12, label %13, !dbg !4658

12:                                               ; preds = %6
  tail call void @xalloc_die() #22, !dbg !4659
  unreachable, !dbg !4659

13:                                               ; preds = %6
  ret i8* %8, !dbg !4660
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xmalloc(i64 %0) local_unnamed_addr #8 !dbg !4647 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4646, metadata !DIExpression()), !dbg !4661
  %2 = tail call noalias i8* @malloc(i64 %0) #18, !dbg !4662
  call void @llvm.dbg.value(metadata i8* %2, metadata !4651, metadata !DIExpression()), !dbg !4661
  %3 = icmp eq i8* %2, null, !dbg !4663
  %4 = icmp ne i64 %0, 0, !dbg !4664
  %5 = and i1 %4, %3, !dbg !4665
  br i1 %5, label %6, label %7, !dbg !4665

6:                                                ; preds = %1
  tail call void @xalloc_die() #22, !dbg !4666
  unreachable, !dbg !4666

7:                                                ; preds = %1
  ret i8* %2, !dbg !4667
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnrealloc(i8* %0, i64 %1, i64 %2) local_unnamed_addr #19 !dbg !4668 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4672, metadata !DIExpression()), !dbg !4675
  call void @llvm.dbg.value(metadata i64 %1, metadata !4673, metadata !DIExpression()), !dbg !4675
  call void @llvm.dbg.value(metadata i64 %2, metadata !4674, metadata !DIExpression()), !dbg !4675
  %4 = udiv i64 9223372036854775807, %2, !dbg !4676
  %5 = icmp ult i64 %4, %1, !dbg !4676
  br i1 %5, label %6, label %7, !dbg !4678

6:                                                ; preds = %3
  tail call void @xalloc_die() #22, !dbg !4679
  unreachable, !dbg !4679

7:                                                ; preds = %3
  %8 = mul i64 %2, %1, !dbg !4680
  call void @llvm.dbg.value(metadata i8* %0, metadata !4681, metadata !DIExpression()) #18, !dbg !4687
  call void @llvm.dbg.value(metadata i64 %8, metadata !4686, metadata !DIExpression()) #18, !dbg !4687
  %9 = icmp eq i64 %8, 0, !dbg !4689
  %10 = icmp ne i8* %0, null, !dbg !4691
  %11 = and i1 %10, %9, !dbg !4692
  br i1 %11, label %12, label %13, !dbg !4692

12:                                               ; preds = %7
  tail call void @free(i8* nonnull %0) #18, !dbg !4693
  br label %19, !dbg !4695

13:                                               ; preds = %7
  %14 = tail call i8* @realloc(i8* %0, i64 %8) #18, !dbg !4696
  call void @llvm.dbg.value(metadata i8* %14, metadata !4681, metadata !DIExpression()) #18, !dbg !4687
  %15 = icmp eq i8* %14, null, !dbg !4697
  %16 = icmp ne i64 %8, 0, !dbg !4699
  %17 = and i1 %16, %15, !dbg !4700
  br i1 %17, label %18, label %19, !dbg !4700

18:                                               ; preds = %13
  tail call void @xalloc_die() #22, !dbg !4701
  unreachable, !dbg !4701

19:                                               ; preds = %12, %13
  %20 = phi i8* [ null, %12 ], [ %14, %13 ], !dbg !4687
  ret i8* %20, !dbg !4702
}

; Function Attrs: nounwind
declare noalias i8* @realloc(i8* nocapture, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xrealloc(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !4682 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4681, metadata !DIExpression()), !dbg !4703
  call void @llvm.dbg.value(metadata i64 %1, metadata !4686, metadata !DIExpression()), !dbg !4703
  %3 = icmp eq i64 %1, 0, !dbg !4704
  %4 = icmp ne i8* %0, null, !dbg !4705
  %5 = and i1 %4, %3, !dbg !4706
  br i1 %5, label %6, label %7, !dbg !4706

6:                                                ; preds = %2
  tail call void @free(i8* nonnull %0) #18, !dbg !4707
  br label %13, !dbg !4708

7:                                                ; preds = %2
  %8 = tail call i8* @realloc(i8* %0, i64 %1) #18, !dbg !4709
  call void @llvm.dbg.value(metadata i8* %8, metadata !4681, metadata !DIExpression()), !dbg !4703
  %9 = icmp eq i8* %8, null, !dbg !4710
  %10 = icmp ne i64 %1, 0, !dbg !4711
  %11 = and i1 %10, %9, !dbg !4712
  br i1 %11, label %12, label %13, !dbg !4712

12:                                               ; preds = %7
  tail call void @xalloc_die() #22, !dbg !4713
  unreachable, !dbg !4713

13:                                               ; preds = %7, %6
  %14 = phi i8* [ null, %6 ], [ %8, %7 ], !dbg !4703
  ret i8* %14, !dbg !4714
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @x2nrealloc(i8* %0, i64* nocapture %1, i64 %2) local_unnamed_addr #19 !dbg !703 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !708, metadata !DIExpression()), !dbg !4715
  call void @llvm.dbg.value(metadata i64* %1, metadata !709, metadata !DIExpression()), !dbg !4715
  call void @llvm.dbg.value(metadata i64 %2, metadata !710, metadata !DIExpression()), !dbg !4715
  %4 = load i64, i64* %1, align 8, !dbg !4716, !tbaa !1612
  call void @llvm.dbg.value(metadata i64 %4, metadata !711, metadata !DIExpression()), !dbg !4715
  %5 = icmp eq i8* %0, null, !dbg !4717
  br i1 %5, label %6, label %20, !dbg !4719

6:                                                ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !4720
  br i1 %7, label %8, label %13, !dbg !4723

8:                                                ; preds = %6
  %9 = udiv i64 128, %2, !dbg !4724
  call void @llvm.dbg.value(metadata i64 %9, metadata !711, metadata !DIExpression()), !dbg !4715
  %10 = icmp ugt i64 %2, 128, !dbg !4726
  %11 = zext i1 %10 to i64, !dbg !4726
  %12 = add nuw nsw i64 %9, %11, !dbg !4727
  call void @llvm.dbg.value(metadata i64 %12, metadata !711, metadata !DIExpression()), !dbg !4715
  br label %13, !dbg !4728

13:                                               ; preds = %6, %8
  %14 = phi i64 [ %4, %6 ], [ %12, %8 ], !dbg !4715
  call void @llvm.dbg.value(metadata i64 %14, metadata !711, metadata !DIExpression()), !dbg !4715
  %15 = udiv i64 9223372036854775807, %2, !dbg !4729
  %16 = icmp ult i64 %15, %14, !dbg !4729
  br i1 %16, label %19, label %17, !dbg !4731

17:                                               ; preds = %13
  call void @llvm.dbg.value(metadata i64 %27, metadata !711, metadata !DIExpression()), !dbg !4715
  store i64 %14, i64* %1, align 8, !dbg !4732, !tbaa !1612
  %18 = mul i64 %14, %2, !dbg !4733
  call void @llvm.dbg.value(metadata i8* %0, metadata !4681, metadata !DIExpression()) #18, !dbg !4734
  call void @llvm.dbg.value(metadata i64 %28, metadata !4686, metadata !DIExpression()) #18, !dbg !4734
  br label %31, !dbg !4736

19:                                               ; preds = %13
  tail call void @xalloc_die() #22, !dbg !4737
  unreachable, !dbg !4737

20:                                               ; preds = %3
  %21 = udiv i64 6148914691236517204, %2, !dbg !4738
  %22 = icmp ugt i64 %21, %4, !dbg !4741
  br i1 %22, label %24, label %23, !dbg !4742

23:                                               ; preds = %20
  tail call void @xalloc_die() #22, !dbg !4743
  unreachable, !dbg !4743

24:                                               ; preds = %20
  %25 = lshr i64 %4, 1, !dbg !4744
  %26 = add nuw i64 %4, 1, !dbg !4745
  %27 = add i64 %26, %25, !dbg !4746
  call void @llvm.dbg.value(metadata i64 %27, metadata !711, metadata !DIExpression()), !dbg !4715
  call void @llvm.dbg.value(metadata i64 %27, metadata !711, metadata !DIExpression()), !dbg !4715
  store i64 %27, i64* %1, align 8, !dbg !4732, !tbaa !1612
  %28 = mul i64 %27, %2, !dbg !4733
  call void @llvm.dbg.value(metadata i8* %0, metadata !4681, metadata !DIExpression()) #18, !dbg !4734
  call void @llvm.dbg.value(metadata i64 %28, metadata !4686, metadata !DIExpression()) #18, !dbg !4734
  %29 = icmp eq i64 %28, 0, !dbg !4747
  br i1 %29, label %30, label %31, !dbg !4736

30:                                               ; preds = %24
  tail call void @free(i8* nonnull %0) #18, !dbg !4748
  br label %38, !dbg !4749

31:                                               ; preds = %17, %24
  %32 = phi i64 [ %18, %17 ], [ %28, %24 ]
  %33 = tail call i8* @realloc(i8* %0, i64 %32) #18, !dbg !4750
  call void @llvm.dbg.value(metadata i8* %33, metadata !4681, metadata !DIExpression()) #18, !dbg !4734
  %34 = icmp eq i8* %33, null, !dbg !4751
  %35 = icmp ne i64 %32, 0, !dbg !4752
  %36 = and i1 %35, %34, !dbg !4753
  br i1 %36, label %37, label %38, !dbg !4753

37:                                               ; preds = %31
  tail call void @xalloc_die() #22, !dbg !4754
  unreachable, !dbg !4754

38:                                               ; preds = %30, %31
  %39 = phi i8* [ null, %30 ], [ %33, %31 ], !dbg !4734
  ret i8* %39, !dbg !4755
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xcharalloc(i64 %0) local_unnamed_addr #19 !dbg !4756 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4758, metadata !DIExpression()), !dbg !4759
  call void @llvm.dbg.value(metadata i64 %0, metadata !4646, metadata !DIExpression()) #18, !dbg !4760
  %2 = tail call noalias i8* @malloc(i64 %0) #18, !dbg !4762
  call void @llvm.dbg.value(metadata i8* %2, metadata !4651, metadata !DIExpression()) #18, !dbg !4760
  %3 = icmp eq i8* %2, null, !dbg !4763
  %4 = icmp ne i64 %0, 0, !dbg !4764
  %5 = and i1 %4, %3, !dbg !4765
  br i1 %5, label %6, label %7, !dbg !4765

6:                                                ; preds = %1
  tail call void @xalloc_die() #22, !dbg !4766
  unreachable, !dbg !4766

7:                                                ; preds = %1
  ret i8* %2, !dbg !4767
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @x2realloc(i8* %0, i64* nocapture %1) local_unnamed_addr #8 !dbg !4768 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4772, metadata !DIExpression()), !dbg !4774
  call void @llvm.dbg.value(metadata i64* %1, metadata !4773, metadata !DIExpression()), !dbg !4774
  call void @llvm.dbg.value(metadata i8* %0, metadata !708, metadata !DIExpression()) #18, !dbg !4775
  call void @llvm.dbg.value(metadata i64* %1, metadata !709, metadata !DIExpression()) #18, !dbg !4775
  call void @llvm.dbg.value(metadata i64 1, metadata !710, metadata !DIExpression()) #18, !dbg !4775
  %3 = load i64, i64* %1, align 8, !dbg !4777, !tbaa !1612
  call void @llvm.dbg.value(metadata i64 %3, metadata !711, metadata !DIExpression()) #18, !dbg !4775
  %4 = icmp eq i8* %0, null, !dbg !4778
  br i1 %4, label %5, label %12, !dbg !4779

5:                                                ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !4780
  br i1 %6, label %9, label %7, !dbg !4781

7:                                                ; preds = %5
  call void @llvm.dbg.value(metadata i64 %3, metadata !711, metadata !DIExpression()) #18, !dbg !4775
  %8 = icmp slt i64 %3, 0, !dbg !4782
  br i1 %8, label %11, label %9, !dbg !4783

9:                                                ; preds = %5, %7
  %10 = phi i64 [ %3, %7 ], [ 128, %5 ]
  call void @llvm.dbg.value(metadata i64 %18, metadata !711, metadata !DIExpression()) #18, !dbg !4775
  store i64 %10, i64* %1, align 8, !dbg !4784, !tbaa !1612
  call void @llvm.dbg.value(metadata i8* %0, metadata !4681, metadata !DIExpression()) #18, !dbg !4785
  call void @llvm.dbg.value(metadata i64 %18, metadata !4686, metadata !DIExpression()) #18, !dbg !4785
  br label %21, !dbg !4787

11:                                               ; preds = %7
  tail call void @xalloc_die() #22, !dbg !4788
  unreachable, !dbg !4788

12:                                               ; preds = %2
  %13 = icmp ult i64 %3, 6148914691236517204, !dbg !4789
  br i1 %13, label %15, label %14, !dbg !4790

14:                                               ; preds = %12
  tail call void @xalloc_die() #22, !dbg !4791
  unreachable, !dbg !4791

15:                                               ; preds = %12
  %16 = lshr i64 %3, 1, !dbg !4792
  %17 = add nuw nsw i64 %3, 1, !dbg !4793
  %18 = add nuw nsw i64 %17, %16, !dbg !4794
  call void @llvm.dbg.value(metadata i64 %18, metadata !711, metadata !DIExpression()) #18, !dbg !4775
  call void @llvm.dbg.value(metadata i64 %18, metadata !711, metadata !DIExpression()) #18, !dbg !4775
  store i64 %18, i64* %1, align 8, !dbg !4784, !tbaa !1612
  call void @llvm.dbg.value(metadata i8* %0, metadata !4681, metadata !DIExpression()) #18, !dbg !4785
  call void @llvm.dbg.value(metadata i64 %18, metadata !4686, metadata !DIExpression()) #18, !dbg !4785
  %19 = icmp eq i64 %18, 0, !dbg !4795
  br i1 %19, label %20, label %21, !dbg !4787

20:                                               ; preds = %15
  tail call void @free(i8* nonnull %0) #18, !dbg !4796
  br label %28, !dbg !4797

21:                                               ; preds = %15, %9
  %22 = phi i64 [ %10, %9 ], [ %18, %15 ]
  %23 = tail call i8* @realloc(i8* %0, i64 %22) #18, !dbg !4798
  call void @llvm.dbg.value(metadata i8* %23, metadata !4681, metadata !DIExpression()) #18, !dbg !4785
  %24 = icmp eq i8* %23, null, !dbg !4799
  %25 = icmp ne i64 %22, 0, !dbg !4800
  %26 = and i1 %25, %24, !dbg !4801
  br i1 %26, label %27, label %28, !dbg !4801

27:                                               ; preds = %21
  tail call void @xalloc_die() #22, !dbg !4802
  unreachable, !dbg !4802

28:                                               ; preds = %20, %21
  %29 = phi i8* [ null, %20 ], [ %23, %21 ], !dbg !4785
  ret i8* %29, !dbg !4803
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xzalloc(i64 %0) local_unnamed_addr #8 !dbg !4804 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4806, metadata !DIExpression()), !dbg !4807
  call void @llvm.dbg.value(metadata i64 %0, metadata !4808, metadata !DIExpression()) #18, !dbg !4813
  call void @llvm.dbg.value(metadata i64 1, metadata !4811, metadata !DIExpression()) #18, !dbg !4813
  %2 = icmp slt i64 %0, 0, !dbg !4815
  br i1 %2, label %6, label %3, !dbg !4817

3:                                                ; preds = %1
  %4 = tail call i8* @rpl_calloc(i64 %0, i64 1) #18, !dbg !4818
  call void @llvm.dbg.value(metadata i8* %4, metadata !4812, metadata !DIExpression()) #18, !dbg !4813
  %5 = icmp eq i8* %4, null, !dbg !4819
  br i1 %5, label %6, label %7, !dbg !4820

6:                                                ; preds = %3, %1
  tail call void @xalloc_die() #22, !dbg !4821
  unreachable, !dbg !4821

7:                                                ; preds = %3
  ret i8* %4, !dbg !4822
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xcalloc(i64 %0, i64 %1) local_unnamed_addr #8 !dbg !4809 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4808, metadata !DIExpression()), !dbg !4823
  call void @llvm.dbg.value(metadata i64 %1, metadata !4811, metadata !DIExpression()), !dbg !4823
  %3 = udiv i64 9223372036854775807, %1, !dbg !4824
  %4 = icmp ult i64 %3, %0, !dbg !4824
  br i1 %4, label %8, label %5, !dbg !4825

5:                                                ; preds = %2
  %6 = tail call i8* @rpl_calloc(i64 %0, i64 %1) #18, !dbg !4826
  call void @llvm.dbg.value(metadata i8* %6, metadata !4812, metadata !DIExpression()), !dbg !4823
  %7 = icmp eq i8* %6, null, !dbg !4827
  br i1 %7, label %8, label %9, !dbg !4828

8:                                                ; preds = %5, %2
  tail call void @xalloc_die() #22, !dbg !4829
  unreachable, !dbg !4829

9:                                                ; preds = %5
  ret i8* %6, !dbg !4830
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @xmemdup(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !4831 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4833, metadata !DIExpression()), !dbg !4835
  call void @llvm.dbg.value(metadata i64 %1, metadata !4834, metadata !DIExpression()), !dbg !4835
  call void @llvm.dbg.value(metadata i64 %1, metadata !4646, metadata !DIExpression()) #18, !dbg !4836
  %3 = tail call noalias i8* @malloc(i64 %1) #18, !dbg !4838
  call void @llvm.dbg.value(metadata i8* %3, metadata !4651, metadata !DIExpression()) #18, !dbg !4836
  %4 = icmp eq i8* %3, null, !dbg !4839
  %5 = icmp ne i64 %1, 0, !dbg !4840
  %6 = and i1 %5, %4, !dbg !4841
  br i1 %6, label %7, label %8, !dbg !4841

7:                                                ; preds = %2
  tail call void @xalloc_die() #22, !dbg !4842
  unreachable, !dbg !4842

8:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i8* %3, metadata !4843, metadata !DIExpression()) #18, !dbg !4848
  call void @llvm.dbg.value(metadata i8* %0, metadata !4846, metadata !DIExpression()) #18, !dbg !4848
  call void @llvm.dbg.value(metadata i64 %1, metadata !4847, metadata !DIExpression()) #18, !dbg !4848
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %3, i8* nonnull align 1 %0, i64 %1, i1 false) #18, !dbg !4850
  ret i8* %3, !dbg !4851
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xstrdup(i8* %0) local_unnamed_addr #8 !dbg !4852 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4854, metadata !DIExpression()), !dbg !4855
  %2 = tail call i64 @strlen(i8* nonnull dereferenceable(1) %0) #21, !dbg !4856
  %3 = add i64 %2, 1, !dbg !4857
  call void @llvm.dbg.value(metadata i8* %0, metadata !4833, metadata !DIExpression()) #18, !dbg !4858
  call void @llvm.dbg.value(metadata i64 %3, metadata !4834, metadata !DIExpression()) #18, !dbg !4858
  call void @llvm.dbg.value(metadata i64 %3, metadata !4646, metadata !DIExpression()) #18, !dbg !4860
  %4 = tail call noalias i8* @malloc(i64 %3) #18, !dbg !4862
  call void @llvm.dbg.value(metadata i8* %4, metadata !4651, metadata !DIExpression()) #18, !dbg !4860
  %5 = icmp eq i8* %4, null, !dbg !4863
  %6 = icmp ne i64 %3, 0, !dbg !4864
  %7 = and i1 %6, %5, !dbg !4865
  br i1 %7, label %8, label %9, !dbg !4865

8:                                                ; preds = %1
  tail call void @xalloc_die() #22, !dbg !4866
  unreachable, !dbg !4866

9:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i8* %4, metadata !4843, metadata !DIExpression()) #18, !dbg !4867
  call void @llvm.dbg.value(metadata i8* %0, metadata !4846, metadata !DIExpression()) #18, !dbg !4867
  call void @llvm.dbg.value(metadata i64 %3, metadata !4847, metadata !DIExpression()) #18, !dbg !4867
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %4, i8* nonnull align 1 %0, i64 %3, i1 false) #18, !dbg !4869
  ret i8* %4, !dbg !4870
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !4871 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !4872, !tbaa !1559
  %2 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.162, i64 0, i64 0), i32 5) #18, !dbg !4873
  tail call void (i32, i32, i8*, ...) @error(i32 %1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.163, i64 0, i64 0), i8* %2) #18, !dbg !4874
  tail call void @abort() #22, !dbg !4875
  unreachable, !dbg !4875
}

; Function Attrs: nofree nounwind sspstrong uwtable
define dso_local noalias i8* @rpl_calloc(i64 %0, i64 %1) local_unnamed_addr #20 !dbg !4876 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4878, metadata !DIExpression()), !dbg !4884
  call void @llvm.dbg.value(metadata i64 %1, metadata !4879, metadata !DIExpression()), !dbg !4884
  %3 = icmp eq i64 %0, 0, !dbg !4885
  %4 = icmp eq i64 %1, 0, !dbg !4886
  %5 = or i1 %3, %4, !dbg !4887
  br i1 %5, label %11, label %6, !dbg !4887

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i64 undef, metadata !4881, metadata !DIExpression()), !dbg !4888
  %7 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %1, i64 %0), !dbg !4889
  %8 = extractvalue { i64, i1 } %7, 1, !dbg !4889
  br i1 %8, label %9, label %11, !dbg !4891

9:                                                ; preds = %6
  %10 = tail call i32* @__errno_location() #24, !dbg !4892
  store i32 12, i32* %10, align 4, !dbg !4894, !tbaa !1559
  br label %15

11:                                               ; preds = %6, %2
  %12 = phi i64 [ 1, %2 ], [ %1, %6 ]
  %13 = phi i64 [ 1, %2 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i64 %13, metadata !4878, metadata !DIExpression()), !dbg !4884
  call void @llvm.dbg.value(metadata i64 %12, metadata !4879, metadata !DIExpression()), !dbg !4884
  %14 = tail call noalias i8* @calloc(i64 %13, i64 %12) #18, !dbg !4895
  call void @llvm.dbg.value(metadata i8* %14, metadata !4880, metadata !DIExpression()), !dbg !4884
  br label %15, !dbg !4896

15:                                               ; preds = %9, %11
  %16 = phi i8* [ %14, %11 ], [ null, %9 ], !dbg !4884
  ret i8* %16, !dbg !4897
}

; Function Attrs: nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: nofree nounwind
declare noalias i8* @calloc(i64, i64) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fclose(%struct._IO_FILE* nonnull %0) local_unnamed_addr #8 !dbg !4898 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4904, metadata !DIExpression()), !dbg !4908
  call void @llvm.dbg.value(metadata i32 0, metadata !4905, metadata !DIExpression()), !dbg !4908
  call void @llvm.dbg.value(metadata i32 0, metadata !4907, metadata !DIExpression()), !dbg !4908
  %2 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #18, !dbg !4909
  call void @llvm.dbg.value(metadata i32 %2, metadata !4906, metadata !DIExpression()), !dbg !4908
  %3 = icmp slt i32 %2, 0, !dbg !4910
  br i1 %3, label %4, label %6, !dbg !4912

4:                                                ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4913
  br label %24, !dbg !4914

6:                                                ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #18, !dbg !4915
  %8 = icmp eq i32 %7, 0, !dbg !4915
  br i1 %8, label %13, label %9, !dbg !4917

9:                                                ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #18, !dbg !4918
  %11 = tail call i64 @lseek(i32 %10, i64 0, i32 1) #18, !dbg !4919
  %12 = icmp eq i64 %11, -1, !dbg !4920
  br i1 %12, label %16, label %13, !dbg !4921

13:                                               ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* nonnull %0) #18, !dbg !4922
  %15 = icmp eq i32 %14, 0, !dbg !4922
  br i1 %15, label %16, label %18, !dbg !4923

16:                                               ; preds = %13, %9
  call void @llvm.dbg.value(metadata i32 %20, metadata !4905, metadata !DIExpression()), !dbg !4908
  %17 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4924
  call void @llvm.dbg.value(metadata i32 %21, metadata !4907, metadata !DIExpression()), !dbg !4908
  br label %24, !dbg !4925

18:                                               ; preds = %13
  %19 = tail call i32* @__errno_location() #24, !dbg !4926
  %20 = load i32, i32* %19, align 4, !dbg !4926, !tbaa !1559
  call void @llvm.dbg.value(metadata i32 %20, metadata !4905, metadata !DIExpression()), !dbg !4908
  call void @llvm.dbg.value(metadata i32 %20, metadata !4905, metadata !DIExpression()), !dbg !4908
  %21 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4924
  call void @llvm.dbg.value(metadata i32 %21, metadata !4907, metadata !DIExpression()), !dbg !4908
  %22 = icmp eq i32 %20, 0, !dbg !4927
  br i1 %22, label %24, label %23, !dbg !4925

23:                                               ; preds = %18
  store i32 %20, i32* %19, align 4, !dbg !4929, !tbaa !1559
  call void @llvm.dbg.value(metadata i32 -1, metadata !4907, metadata !DIExpression()), !dbg !4908
  br label %24, !dbg !4931

24:                                               ; preds = %16, %23, %18, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !4908
  ret i32 %25, !dbg !4932
}

; Function Attrs: nofree nounwind
declare !dbg !764 i32 @fclose(%struct._IO_FILE* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @__freading(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !765 i64 @lseek(i32, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fcntl(i32 %0, i32 %1, ...) local_unnamed_addr #8 !dbg !4933 {
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !4935, metadata !DIExpression()), !dbg !4959
  call void @llvm.dbg.value(metadata i32 %1, metadata !4936, metadata !DIExpression()), !dbg !4959
  %4 = bitcast [1 x %struct.__va_list_tag]* %3 to i8*, !dbg !4960
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %4) #18, !dbg !4960
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %3, metadata !4937, metadata !DIExpression()), !dbg !4961
  call void @llvm.dbg.value(metadata i32 -1, metadata !4947, metadata !DIExpression()), !dbg !4959
  call void @llvm.va_start(i8* nonnull %4), !dbg !4962
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
  ], !dbg !4963

5:                                                ; preds = %2
  %6 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 0, !dbg !4964
  %7 = load i32, i32* %6, align 16, !dbg !4964
  %8 = icmp ult i32 %7, 41, !dbg !4964
  br i1 %8, label %9, label %15, !dbg !4964

9:                                                ; preds = %5
  %10 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 3, !dbg !4964
  %11 = load i8*, i8** %10, align 16, !dbg !4964
  %12 = zext i32 %7 to i64, !dbg !4964
  %13 = getelementptr i8, i8* %11, i64 %12, !dbg !4964
  %14 = add nuw nsw i32 %7, 8, !dbg !4964
  store i32 %14, i32* %6, align 16, !dbg !4964
  br label %19, !dbg !4964

15:                                               ; preds = %5
  %16 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 2, !dbg !4964
  %17 = load i8*, i8** %16, align 8, !dbg !4964
  %18 = getelementptr i8, i8* %17, i64 8, !dbg !4964
  store i8* %18, i8** %16, align 8, !dbg !4964
  br label %19, !dbg !4964

19:                                               ; preds = %15, %9
  %20 = phi i8* [ %13, %9 ], [ %17, %15 ]
  %21 = bitcast i8* %20 to i32*, !dbg !4964
  %22 = load i32, i32* %21, align 4, !dbg !4964
  call void @llvm.dbg.value(metadata i32 %22, metadata !4948, metadata !DIExpression()), !dbg !4965
  call void @llvm.dbg.value(metadata i32 %0, metadata !4966, metadata !DIExpression()) #18, !dbg !4971
  call void @llvm.dbg.value(metadata i32 %22, metadata !4969, metadata !DIExpression()) #18, !dbg !4971
  %23 = call i32 (i32, i32, ...) @fcntl(i32 %0, i32 0, i32 %22) #18, !dbg !4973
  call void @llvm.dbg.value(metadata i32 %23, metadata !4970, metadata !DIExpression()) #18, !dbg !4971
  call void @llvm.dbg.value(metadata i32 %23, metadata !4947, metadata !DIExpression()), !dbg !4959
  br label %116

24:                                               ; preds = %2
  %25 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 0, !dbg !4974
  %26 = load i32, i32* %25, align 16, !dbg !4974
  %27 = icmp ult i32 %26, 41, !dbg !4974
  br i1 %27, label %28, label %34, !dbg !4974

28:                                               ; preds = %24
  %29 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 3, !dbg !4974
  %30 = load i8*, i8** %29, align 16, !dbg !4974
  %31 = zext i32 %26 to i64, !dbg !4974
  %32 = getelementptr i8, i8* %30, i64 %31, !dbg !4974
  %33 = add nuw nsw i32 %26, 8, !dbg !4974
  store i32 %33, i32* %25, align 16, !dbg !4974
  br label %38, !dbg !4974

34:                                               ; preds = %24
  %35 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 2, !dbg !4974
  %36 = load i8*, i8** %35, align 8, !dbg !4974
  %37 = getelementptr i8, i8* %36, i64 8, !dbg !4974
  store i8* %37, i8** %35, align 8, !dbg !4974
  br label %38, !dbg !4974

38:                                               ; preds = %34, %28
  %39 = phi i8* [ %32, %28 ], [ %36, %34 ]
  %40 = bitcast i8* %39 to i32*, !dbg !4974
  %41 = load i32, i32* %40, align 4, !dbg !4974
  call void @llvm.dbg.value(metadata i32 %41, metadata !4951, metadata !DIExpression()), !dbg !4975
  call void @llvm.dbg.value(metadata i32 %0, metadata !557, metadata !DIExpression()) #18, !dbg !4976
  call void @llvm.dbg.value(metadata i32 %41, metadata !558, metadata !DIExpression()) #18, !dbg !4976
  %42 = load i32, i32* @rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec, align 4, !dbg !4978, !tbaa !1559
  %43 = icmp sgt i32 %42, -1, !dbg !4980
  br i1 %43, label %44, label %56, !dbg !4981

44:                                               ; preds = %38
  %45 = call i32 (i32, i32, ...) @fcntl(i32 %0, i32 1030, i32 %41) #18, !dbg !4982
  call void @llvm.dbg.value(metadata i32 %45, metadata !559, metadata !DIExpression()) #18, !dbg !4976
  %46 = icmp sgt i32 %45, -1, !dbg !4984
  br i1 %46, label %51, label %47, !dbg !4986

47:                                               ; preds = %44
  %48 = tail call i32* @__errno_location() #24, !dbg !4987
  %49 = load i32, i32* %48, align 4, !dbg !4987, !tbaa !1559
  %50 = icmp eq i32 %49, 22, !dbg !4988
  br i1 %50, label %52, label %51, !dbg !4989

51:                                               ; preds = %47, %44
  store i32 1, i32* @rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec, align 4, !dbg !4990, !tbaa !1559
  call void @llvm.dbg.value(metadata i32 %62, metadata !559, metadata !DIExpression()) #18, !dbg !4976
  br label %116, !dbg !4992

52:                                               ; preds = %47
  call void @llvm.dbg.value(metadata i32 %0, metadata !4966, metadata !DIExpression()) #18, !dbg !4993
  call void @llvm.dbg.value(metadata i32 %41, metadata !4969, metadata !DIExpression()) #18, !dbg !4993
  %53 = call i32 (i32, i32, ...) @fcntl(i32 %0, i32 0, i32 %41) #18, !dbg !4996
  call void @llvm.dbg.value(metadata i32 %53, metadata !4970, metadata !DIExpression()) #18, !dbg !4993
  call void @llvm.dbg.value(metadata i32 %53, metadata !559, metadata !DIExpression()) #18, !dbg !4976
  %54 = icmp sgt i32 %53, -1, !dbg !4997
  br i1 %54, label %55, label %116, !dbg !4999

55:                                               ; preds = %52
  store i32 -1, i32* @rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec, align 4, !dbg !5000, !tbaa !1559
  br label %60, !dbg !5001

56:                                               ; preds = %38
  call void @llvm.dbg.value(metadata i32 %0, metadata !4966, metadata !DIExpression()) #18, !dbg !5002
  call void @llvm.dbg.value(metadata i32 %41, metadata !4969, metadata !DIExpression()) #18, !dbg !5002
  %57 = call i32 (i32, i32, ...) @fcntl(i32 %0, i32 0, i32 %41) #18, !dbg !5004
  call void @llvm.dbg.value(metadata i32 %57, metadata !4970, metadata !DIExpression()) #18, !dbg !5002
  call void @llvm.dbg.value(metadata i32 %57, metadata !559, metadata !DIExpression()) #18, !dbg !4976
  %58 = load i32, i32* @rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec, align 4, !dbg !5005
  %59 = icmp eq i32 %58, -1
  br label %60

60:                                               ; preds = %56, %55
  %61 = phi i1 [ true, %55 ], [ %59, %56 ]
  %62 = phi i32 [ %53, %55 ], [ %57, %56 ], !dbg !5006
  call void @llvm.dbg.value(metadata i32 %62, metadata !559, metadata !DIExpression()) #18, !dbg !4976
  %63 = icmp sgt i32 %62, -1, !dbg !5007
  %64 = and i1 %61, %63, !dbg !4992
  br i1 %64, label %65, label %116, !dbg !4992

65:                                               ; preds = %60
  %66 = call i32 (i32, i32, ...) @fcntl(i32 %62, i32 1) #18, !dbg !5008
  call void @llvm.dbg.value(metadata i32 %66, metadata !560, metadata !DIExpression()) #18, !dbg !5009
  %67 = icmp slt i32 %66, 0, !dbg !5010
  br i1 %67, label %72, label %68, !dbg !5011

68:                                               ; preds = %65
  %69 = or i32 %66, 1, !dbg !5012
  %70 = call i32 (i32, i32, ...) @fcntl(i32 %62, i32 2, i32 %69) #18, !dbg !5013
  %71 = icmp eq i32 %70, -1, !dbg !5014
  br i1 %71, label %72, label %116, !dbg !5015

72:                                               ; preds = %68, %65
  %73 = tail call i32* @__errno_location() #24, !dbg !5016
  %74 = load i32, i32* %73, align 4, !dbg !5016, !tbaa !1559
  call void @llvm.dbg.value(metadata i32 %74, metadata !563, metadata !DIExpression()) #18, !dbg !5017
  %75 = call i32 @close(i32 %62) #18, !dbg !5018
  store i32 %74, i32* %73, align 4, !dbg !5019, !tbaa !1559
  call void @llvm.dbg.value(metadata i32 -1, metadata !559, metadata !DIExpression()) #18, !dbg !4976
  br label %116, !dbg !5020

76:                                               ; preds = %2, %2, %2, %2, %2, %2, %2
  %77 = call i32 (i32, i32, ...) @fcntl(i32 %0, i32 %1) #18, !dbg !5021
  call void @llvm.dbg.value(metadata i32 %77, metadata !4947, metadata !DIExpression()), !dbg !4959
  br label %116, !dbg !5022

78:                                               ; preds = %2, %2, %2, %2, %2, %2, %2, %2
  %79 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 0, !dbg !5023
  %80 = load i32, i32* %79, align 16, !dbg !5023
  %81 = icmp ult i32 %80, 41, !dbg !5023
  br i1 %81, label %82, label %88, !dbg !5023

82:                                               ; preds = %78
  %83 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 3, !dbg !5023
  %84 = load i8*, i8** %83, align 16, !dbg !5023
  %85 = zext i32 %80 to i64, !dbg !5023
  %86 = getelementptr i8, i8* %84, i64 %85, !dbg !5023
  %87 = add nuw nsw i32 %80, 8, !dbg !5023
  store i32 %87, i32* %79, align 16, !dbg !5023
  br label %92, !dbg !5023

88:                                               ; preds = %78
  %89 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 2, !dbg !5023
  %90 = load i8*, i8** %89, align 8, !dbg !5023
  %91 = getelementptr i8, i8* %90, i64 8, !dbg !5023
  store i8* %91, i8** %89, align 8, !dbg !5023
  br label %92, !dbg !5023

92:                                               ; preds = %88, %82
  %93 = phi i8* [ %86, %82 ], [ %90, %88 ]
  %94 = bitcast i8* %93 to i32*, !dbg !5023
  %95 = load i32, i32* %94, align 4, !dbg !5023
  call void @llvm.dbg.value(metadata i32 %95, metadata !4953, metadata !DIExpression()), !dbg !5024
  %96 = call i32 (i32, i32, ...) @fcntl(i32 %0, i32 %1, i32 %95) #18, !dbg !5025
  call void @llvm.dbg.value(metadata i32 %96, metadata !4947, metadata !DIExpression()), !dbg !4959
  br label %116, !dbg !5026

97:                                               ; preds = %2
  %98 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 0, !dbg !5027
  %99 = load i32, i32* %98, align 16, !dbg !5027
  %100 = icmp ult i32 %99, 41, !dbg !5027
  br i1 %100, label %101, label %107, !dbg !5027

101:                                              ; preds = %97
  %102 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 3, !dbg !5027
  %103 = load i8*, i8** %102, align 16, !dbg !5027
  %104 = zext i32 %99 to i64, !dbg !5027
  %105 = getelementptr i8, i8* %103, i64 %104, !dbg !5027
  %106 = add nuw nsw i32 %99, 8, !dbg !5027
  store i32 %106, i32* %98, align 16, !dbg !5027
  br label %111, !dbg !5027

107:                                              ; preds = %97
  %108 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 2, !dbg !5027
  %109 = load i8*, i8** %108, align 8, !dbg !5027
  %110 = getelementptr i8, i8* %109, i64 8, !dbg !5027
  store i8* %110, i8** %108, align 8, !dbg !5027
  br label %111, !dbg !5027

111:                                              ; preds = %107, %101
  %112 = phi i8* [ %105, %101 ], [ %109, %107 ]
  %113 = bitcast i8* %112 to i8**, !dbg !5027
  %114 = load i8*, i8** %113, align 8, !dbg !5027
  call void @llvm.dbg.value(metadata i8* %114, metadata !4957, metadata !DIExpression()), !dbg !5028
  %115 = call i32 (i32, i32, ...) @fcntl(i32 %0, i32 %1, i8* %114) #18, !dbg !5029
  call void @llvm.dbg.value(metadata i32 %115, metadata !4947, metadata !DIExpression()), !dbg !4959
  br label %116, !dbg !5030

116:                                              ; preds = %72, %68, %60, %52, %51, %76, %92, %111, %19
  %117 = phi i32 [ %115, %111 ], [ %96, %92 ], [ %77, %76 ], [ %23, %19 ], [ %62, %60 ], [ -1, %72 ], [ %62, %68 ], [ %53, %52 ], [ %45, %51 ], !dbg !5031
  call void @llvm.dbg.value(metadata i32 %117, metadata !4947, metadata !DIExpression()), !dbg !4959
  call void @llvm.va_end(i8* nonnull %4), !dbg !5032
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %4) #18, !dbg !5033
  ret i32 %117, !dbg !5034
}

declare !dbg !547 i32 @fcntl(i32, i32, ...) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fflush(%struct._IO_FILE* %0) local_unnamed_addr #8 !dbg !5035 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !5041, metadata !DIExpression()), !dbg !5042
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !5043
  br i1 %2, label %6, label %3, !dbg !5045

3:                                                ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #18, !dbg !5046
  %5 = icmp eq i32 %4, 0, !dbg !5046
  br i1 %5, label %6, label %8, !dbg !5047

6:                                                ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* %0), !dbg !5048
  br label %17, !dbg !5049

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !5050, metadata !DIExpression()) #18, !dbg !5055
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !5057
  %10 = load i32, i32* %9, align 8, !dbg !5057, !tbaa !1977
  %11 = and i32 %10, 256, !dbg !5059
  %12 = icmp eq i32 %11, 0, !dbg !5059
  br i1 %12, label %15, label %13, !dbg !5060

13:                                               ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* nonnull %0, i64 0, i32 1) #18, !dbg !5061
  br label %15, !dbg !5061

15:                                               ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* nonnull %0), !dbg !5062
  br label %17, !dbg !5063

17:                                               ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ], !dbg !5042
  ret i32 %18, !dbg !5064
}

; Function Attrs: nofree nounwind
declare !dbg !772 i32 @fflush(%struct._IO_FILE* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fseeko(%struct._IO_FILE* nocapture nonnull %0, i64 %1, i32 %2) local_unnamed_addr #8 !dbg !5065 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !5071, metadata !DIExpression()), !dbg !5077
  call void @llvm.dbg.value(metadata i64 %1, metadata !5072, metadata !DIExpression()), !dbg !5077
  call void @llvm.dbg.value(metadata i32 %2, metadata !5073, metadata !DIExpression()), !dbg !5077
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !5078
  %5 = load i8*, i8** %4, align 8, !dbg !5078, !tbaa !5079
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !5080
  %7 = load i8*, i8** %6, align 8, !dbg !5080, !tbaa !5081
  %8 = icmp eq i8* %5, %7, !dbg !5082
  br i1 %8, label %9, label %28, !dbg !5083

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !5084
  %11 = load i8*, i8** %10, align 8, !dbg !5084, !tbaa !1913
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !5085
  %13 = load i8*, i8** %12, align 8, !dbg !5085, !tbaa !5086
  %14 = icmp eq i8* %11, %13, !dbg !5087
  br i1 %14, label %15, label %28, !dbg !5088

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !5089
  %17 = load i8*, i8** %16, align 8, !dbg !5089, !tbaa !5090
  %18 = icmp eq i8* %17, null, !dbg !5091
  br i1 %18, label %19, label %28, !dbg !5092

19:                                               ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #18, !dbg !5093
  %21 = tail call i64 @lseek(i32 %20, i64 %1, i32 %2) #18, !dbg !5094
  call void @llvm.dbg.value(metadata i64 %21, metadata !5074, metadata !DIExpression()), !dbg !5095
  %22 = icmp eq i64 %21, -1, !dbg !5096
  br i1 %22, label %30, label %23, !dbg !5098

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !5099
  %25 = load i32, i32* %24, align 8, !dbg !5100, !tbaa !1977
  %26 = and i32 %25, -17, !dbg !5100
  store i32 %26, i32* %24, align 8, !dbg !5100, !tbaa !1977
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !5101
  store i64 %21, i64* %27, align 8, !dbg !5102, !tbaa !5103
  br label %30, !dbg !5104

28:                                               ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* nonnull %0, i64 %1, i32 %2), !dbg !5105
  br label %30, !dbg !5106

30:                                               ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ], !dbg !5077
  ret i32 %31, !dbg !5107
}

; Function Attrs: nofree nounwind
declare !dbg !848 i32 @fseeko(%struct._IO_FILE* nocapture, i64, i32) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rpl_mbrtowc(i32* %0, i8* %1, i64 %2, %struct.__mbstate_t* %3) local_unnamed_addr #8 !dbg !5108 {
  %5 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32* %0, metadata !5116, metadata !DIExpression()), !dbg !5125
  call void @llvm.dbg.value(metadata i8* %1, metadata !5117, metadata !DIExpression()), !dbg !5125
  call void @llvm.dbg.value(metadata i64 %2, metadata !5118, metadata !DIExpression()), !dbg !5125
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %3, metadata !5119, metadata !DIExpression()), !dbg !5125
  %6 = bitcast i32* %5 to i8*, !dbg !5126
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #18, !dbg !5126
  %7 = icmp eq i32* %0, null, !dbg !5127
  %8 = select i1 %7, i32* %5, i32* %0, !dbg !5129
  call void @llvm.dbg.value(metadata i32* %8, metadata !5116, metadata !DIExpression()), !dbg !5125
  %9 = call i64 @mbrtowc(i32* %8, i8* %1, i64 %2, %struct.__mbstate_t* %3) #18, !dbg !5130
  call void @llvm.dbg.value(metadata i64 %9, metadata !5120, metadata !DIExpression()), !dbg !5125
  %10 = icmp ugt i64 %9, -3, !dbg !5131
  %11 = icmp ne i64 %2, 0, !dbg !5132
  %12 = and i1 %11, %10, !dbg !5133
  br i1 %12, label %13, label %18, !dbg !5133

13:                                               ; preds = %4
  %14 = call zeroext i1 @hard_locale(i32 0) #18, !dbg !5134
  br i1 %14, label %18, label %15, !dbg !5135

15:                                               ; preds = %13
  %16 = load i8, i8* %1, align 1, !dbg !5136, !tbaa !1649
  call void @llvm.dbg.value(metadata i8 %16, metadata !5122, metadata !DIExpression()), !dbg !5137
  %17 = zext i8 %16 to i32, !dbg !5138
  store i32 %17, i32* %8, align 4, !dbg !5139, !tbaa !1559
  br label %18

18:                                               ; preds = %4, %13, %15
  %19 = phi i64 [ 1, %15 ], [ %9, %13 ], [ %9, %4 ], !dbg !5125
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #18, !dbg !5140
  ret i64 %19, !dbg !5140
}

; Function Attrs: nounwind
declare !dbg !854 i64 @mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @close_stream(%struct._IO_FILE* %0) local_unnamed_addr #8 !dbg !5141 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !5147, metadata !DIExpression()), !dbg !5152
  %2 = tail call i64 @__fpending(%struct._IO_FILE* %0) #18, !dbg !5153
  call void @llvm.dbg.value(metadata i1 undef, metadata !5148, metadata !DIExpression()), !dbg !5152
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !5154, metadata !DIExpression()), !dbg !5157
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !5159
  %4 = load i32, i32* %3, align 8, !dbg !5159, !tbaa !1977
  %5 = and i32 %4, 32, !dbg !5159
  %6 = icmp eq i32 %5, 0, !dbg !5160
  call void @llvm.dbg.value(metadata i1 %6, metadata !5150, metadata !DIExpression()), !dbg !5152
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* %0) #18, !dbg !5161
  %8 = icmp ne i32 %7, 0, !dbg !5162
  call void @llvm.dbg.value(metadata i1 %8, metadata !5151, metadata !DIExpression()), !dbg !5152
  br i1 %6, label %9, label %19, !dbg !5163

9:                                                ; preds = %1
  %10 = icmp ne i64 %2, 0, !dbg !5165
  call void @llvm.dbg.value(metadata i1 %10, metadata !5148, metadata !DIExpression()), !dbg !5152
  %11 = xor i1 %8, true, !dbg !5166
  %12 = or i1 %10, %11, !dbg !5166
  %13 = sext i1 %8 to i32, !dbg !5166
  br i1 %12, label %22, label %14, !dbg !5166

14:                                               ; preds = %9
  %15 = tail call i32* @__errno_location() #24, !dbg !5167
  %16 = load i32, i32* %15, align 4, !dbg !5167, !tbaa !1559
  %17 = icmp ne i32 %16, 9, !dbg !5168
  %18 = sext i1 %17 to i32, !dbg !5169
  br label %22, !dbg !5169

19:                                               ; preds = %1
  br i1 %8, label %22, label %20, !dbg !5170

20:                                               ; preds = %19
  %21 = tail call i32* @__errno_location() #24, !dbg !5172
  store i32 0, i32* %21, align 4, !dbg !5174, !tbaa !1559
  br label %22, !dbg !5172

22:                                               ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ], !dbg !5152
  ret i32 %23, !dbg !5175
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local zeroext i1 @hard_locale(i32 %0) local_unnamed_addr #8 !dbg !5176 {
  %2 = alloca [257 x i8], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !5178, metadata !DIExpression()), !dbg !5183
  %3 = getelementptr inbounds [257 x i8], [257 x i8]* %2, i64 0, i64 0, !dbg !5184
  call void @llvm.lifetime.start.p0i8(i64 257, i8* nonnull %3) #18, !dbg !5184
  call void @llvm.dbg.declare(metadata [257 x i8]* %2, metadata !5179, metadata !DIExpression()), !dbg !5185
  %4 = call i32 @setlocale_null_r(i32 %0, i8* nonnull %3, i64 257) #18, !dbg !5186
  %5 = icmp eq i32 %4, 0, !dbg !5186
  br i1 %5, label %6, label %13, !dbg !5188

6:                                                ; preds = %1
  %7 = bitcast [257 x i8]* %2 to i16*, !dbg !5189
  %8 = load i16, i16* %7, align 16, !dbg !5189
  %9 = icmp eq i16 %8, 67, !dbg !5189
  br i1 %9, label %13, label %10, !dbg !5190

10:                                               ; preds = %6
  %11 = call i32 @bcmp(i8* nonnull dereferenceable(6) %3, i8* nonnull dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.180, i64 0, i64 0), i64 6), !dbg !5191
  %12 = icmp ne i32 %11, 0, !dbg !5192
  br label %13, !dbg !5190

13:                                               ; preds = %6, %10, %1
  %14 = phi i1 [ false, %1 ], [ false, %6 ], [ %12, %10 ], !dbg !5183
  call void @llvm.lifetime.end.p0i8(i64 257, i8* nonnull %3) #18, !dbg !5193
  ret i1 %14, !dbg !5193
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @locale_charset() local_unnamed_addr #8 !dbg !5194 {
  %1 = tail call i8* @nl_langinfo(i32 14) #18, !dbg !5197
  call void @llvm.dbg.value(metadata i8* %1, metadata !5196, metadata !DIExpression()), !dbg !5198
  %2 = icmp eq i8* %1, null, !dbg !5199
  %3 = select i1 %2, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.183, i64 0, i64 0), i8* %1, !dbg !5201
  call void @llvm.dbg.value(metadata i8* %3, metadata !5196, metadata !DIExpression()), !dbg !5198
  %4 = load i8, i8* %3, align 1, !dbg !5202, !tbaa !1649
  %5 = icmp eq i8 %4, 0, !dbg !5206
  %6 = select i1 %5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.184, i64 0, i64 0), i8* %3, !dbg !5207
  call void @llvm.dbg.value(metadata i8* %6, metadata !5196, metadata !DIExpression()), !dbg !5198
  ret i8* %6, !dbg !5208
}

; Function Attrs: nounwind
declare !dbg !1305 i8* @nl_langinfo(i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @setlocale_null_r(i32 %0, i8* nonnull %1, i64 %2) local_unnamed_addr #8 !dbg !5209 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5213, metadata !DIExpression()), !dbg !5216
  call void @llvm.dbg.value(metadata i8* %1, metadata !5214, metadata !DIExpression()), !dbg !5216
  call void @llvm.dbg.value(metadata i64 %2, metadata !5215, metadata !DIExpression()), !dbg !5216
  call void @llvm.dbg.value(metadata i32 %0, metadata !5217, metadata !DIExpression()) #18, !dbg !5226
  call void @llvm.dbg.value(metadata i8* %1, metadata !5220, metadata !DIExpression()) #18, !dbg !5226
  call void @llvm.dbg.value(metadata i64 %2, metadata !5221, metadata !DIExpression()) #18, !dbg !5226
  call void @llvm.dbg.value(metadata i32 %0, metadata !5228, metadata !DIExpression()) #18, !dbg !5234
  %4 = tail call i8* @setlocale(i32 %0, i8* null) #18, !dbg !5236
  call void @llvm.dbg.value(metadata i8* %4, metadata !5233, metadata !DIExpression()) #18, !dbg !5234
  call void @llvm.dbg.value(metadata i8* %4, metadata !5222, metadata !DIExpression()) #18, !dbg !5226
  %5 = icmp eq i8* %4, null, !dbg !5237
  br i1 %5, label %6, label %9, !dbg !5238

6:                                                ; preds = %3
  %7 = icmp eq i64 %2, 0, !dbg !5239
  br i1 %7, label %19, label %8, !dbg !5242

8:                                                ; preds = %6
  store i8 0, i8* %1, align 1, !dbg !5243, !tbaa !1649
  br label %19, !dbg !5244

9:                                                ; preds = %3
  %10 = tail call i64 @strlen(i8* nonnull %4) #21, !dbg !5245
  call void @llvm.dbg.value(metadata i64 %10, metadata !5223, metadata !DIExpression()) #18, !dbg !5246
  %11 = icmp ult i64 %10, %2, !dbg !5247
  br i1 %11, label %12, label %14, !dbg !5249

12:                                               ; preds = %9
  %13 = add nuw i64 %10, 1, !dbg !5250
  call void @llvm.dbg.value(metadata i8* %1, metadata !5252, metadata !DIExpression()) #18, !dbg !5257
  call void @llvm.dbg.value(metadata i8* %4, metadata !5255, metadata !DIExpression()) #18, !dbg !5257
  call void @llvm.dbg.value(metadata i64 %13, metadata !5256, metadata !DIExpression()) #18, !dbg !5257
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %1, i8* nonnull align 1 %4, i64 %13, i1 false) #18, !dbg !5259
  br label %19, !dbg !5260

14:                                               ; preds = %9
  %15 = icmp eq i64 %2, 0, !dbg !5261
  br i1 %15, label %19, label %16, !dbg !5264

16:                                               ; preds = %14
  %17 = add i64 %2, -1, !dbg !5265
  call void @llvm.dbg.value(metadata i8* %1, metadata !5252, metadata !DIExpression()) #18, !dbg !5267
  call void @llvm.dbg.value(metadata i8* %4, metadata !5255, metadata !DIExpression()) #18, !dbg !5267
  call void @llvm.dbg.value(metadata i64 %17, metadata !5256, metadata !DIExpression()) #18, !dbg !5267
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %1, i8* nonnull align 1 %4, i64 %17, i1 false) #18, !dbg !5269
  %18 = getelementptr inbounds i8, i8* %1, i64 %17, !dbg !5270
  store i8 0, i8* %18, align 1, !dbg !5271, !tbaa !1649
  br label %19, !dbg !5272

19:                                               ; preds = %6, %8, %12, %14, %16
  %20 = phi i32 [ 22, %6 ], [ 22, %8 ], [ 0, %12 ], [ 34, %14 ], [ 34, %16 ], !dbg !5273
  ret i32 %20, !dbg !5274
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @setlocale_null(i32 %0) local_unnamed_addr #8 !dbg !5275 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5277, metadata !DIExpression()), !dbg !5278
  call void @llvm.dbg.value(metadata i32 %0, metadata !5228, metadata !DIExpression()) #18, !dbg !5279
  %2 = tail call i8* @setlocale(i32 %0, i8* null) #18, !dbg !5281
  call void @llvm.dbg.value(metadata i8* %2, metadata !5233, metadata !DIExpression()) #18, !dbg !5279
  ret i8* %2, !dbg !5282
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

!llvm.dbg.cu = !{!2, !292, !297, !342, !379, !566, !608, !385, !426, !652, !657, !533, !699, !720, !723, !726, !545, !769, !810, !851, !870, !908, !915, !1308}
!llvm.ident = !{!1311, !1311, !1311, !1311, !1311, !1311, !1311, !1311, !1311, !1311, !1311, !1311, !1311, !1311, !1311, !1311, !1311, !1311, !1311, !1311, !1311, !1311, !1311, !1311}
!llvm.module.flags = !{!1312, !1313, !1314, !1315, !1316}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "long_options", scope: !2, file: !3, line: 202, type: !278, isLocal: true, isDefinition: true)
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
!197 = !DISubprogram(name: "sha1_stream", scope: !198, file: !198, line: 97, type: !199, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !68)
!198 = !DIFile(filename: "./lib/sha1.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!199 = !DISubroutineType(types: !200)
!200 = !{!67, !73, !119}
!201 = !{!202, !205, !207, !0, !209, !211, !213, !215, !217, !219, !221, !276}
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
!222 = distinct !DIGlobalVariable(name: "bin2hex", scope: !223, file: !3, line: 730, type: !273, isLocal: true, isDefinition: true)
!223 = distinct !DISubprogram(name: "digest_check", scope: !3, file: !3, line: 652, type: !224, scopeLine: 653, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !226)
!224 = !DISubroutineType(types: !225)
!225 = !{!204, !65}
!226 = !{!227, !228, !232, !233, !234, !235, !236, !237, !238, !242, !243, !244, !245, !246, !247, !249, !250, !251, !255, !258, !259, !260, !264, !265, !271}
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
!239 = !DICompositeType(tag: DW_TAG_array_type, baseType: !193, size: 192, elements: !240)
!240 = !{!241}
!241 = !DISubrange(count: 24)
!242 = !DILocalVariable(name: "bin_buffer", scope: !223, file: !3, line: 663, type: !192)
!243 = !DILocalVariable(name: "line_number", scope: !223, file: !3, line: 664, type: !41)
!244 = !DILocalVariable(name: "line", scope: !223, file: !3, line: 665, type: !63)
!245 = !DILocalVariable(name: "line_chars_allocated", scope: !223, file: !3, line: 666, type: !121)
!246 = !DILocalVariable(name: "is_stdin", scope: !223, file: !3, line: 667, type: !204)
!247 = !DILocalVariable(name: "filename", scope: !248, file: !3, line: 690, type: !63)
!248 = distinct !DILexicalBlock(scope: !223, file: !3, line: 689, column: 5)
!249 = !DILocalVariable(name: "binary", scope: !248, file: !3, line: 691, type: !67)
!250 = !DILocalVariable(name: "hex_digest", scope: !248, file: !3, line: 692, type: !192)
!251 = !DILocalVariable(name: "line_length", scope: !248, file: !3, line: 693, type: !252)
!252 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !253, line: 108, baseType: !254)
!253 = !DIFile(filename: "/usr/include/sys/types.h", directory: "")
!254 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !44, line: 193, baseType: !97)
!255 = !DILocalVariable(name: "ok", scope: !256, file: !3, line: 734, type: !204)
!256 = distinct !DILexicalBlock(scope: !257, file: !3, line: 729, column: 9)
!257 = distinct !DILexicalBlock(scope: !248, file: !3, line: 712, column: 11)
!258 = !DILocalVariable(name: "missing", scope: !256, file: !3, line: 735, type: !204)
!259 = !DILocalVariable(name: "needs_escape", scope: !256, file: !3, line: 738, type: !204)
!260 = !DILocalVariable(name: "digest_bin_bytes", scope: !261, file: !3, line: 762, type: !121)
!261 = distinct !DILexicalBlock(scope: !262, file: !3, line: 761, column: 13)
!262 = distinct !DILexicalBlock(scope: !263, file: !3, line: 755, column: 20)
!263 = distinct !DILexicalBlock(scope: !256, file: !3, line: 744, column: 15)
!264 = !DILocalVariable(name: "cnt", scope: !261, file: !3, line: 763, type: !121)
!265 = !DILocalVariable(name: "__res", scope: !266, file: !3, line: 769, type: !67)
!266 = distinct !DILexicalBlock(scope: !267, file: !3, line: 769, column: 23)
!267 = distinct !DILexicalBlock(scope: !268, file: !3, line: 769, column: 23)
!268 = distinct !DILexicalBlock(scope: !269, file: !3, line: 768, column: 17)
!269 = distinct !DILexicalBlock(scope: !270, file: !3, line: 767, column: 15)
!270 = distinct !DILexicalBlock(scope: !261, file: !3, line: 767, column: 15)
!271 = !DILocalVariable(name: "__res", scope: !272, file: !3, line: 771, type: !67)
!272 = distinct !DILexicalBlock(scope: !267, file: !3, line: 771, column: 27)
!273 = !DICompositeType(tag: DW_TAG_array_type, baseType: !66, size: 128, elements: !274)
!274 = !{!275}
!275 = !DISubrange(count: 16)
!276 = !DIGlobalVariableExpression(var: !277, expr: !DIExpression())
!277 = distinct !DIGlobalVariable(name: "bsd_reversed", scope: !2, file: !3, line: 158, type: !67, isLocal: true, isDefinition: true)
!278 = !DICompositeType(tag: DW_TAG_array_type, baseType: !159, size: 3328, elements: !279)
!279 = !{!280}
!280 = !DISubrange(count: 13)
!281 = !DIGlobalVariableExpression(var: !210, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!282 = !DIGlobalVariableExpression(var: !212, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!283 = !DIGlobalVariableExpression(var: !214, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!284 = !DIGlobalVariableExpression(var: !216, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!285 = !DIGlobalVariableExpression(var: !218, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!286 = !DIGlobalVariableExpression(var: !220, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 18446744073709551606, DW_OP_mul, DW_OP_constu, 10, DW_OP_plus, DW_OP_stack_value))
!287 = !DIGlobalVariableExpression(var: !206, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 42, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!288 = !DIGlobalVariableExpression(var: !208, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 40, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!289 = !DIGlobalVariableExpression(var: !203, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!290 = !DIGlobalVariableExpression(var: !291, expr: !DIExpression())
!291 = distinct !DIGlobalVariable(name: "Version", scope: !292, file: !293, line: 2, type: !65, isLocal: false, isDefinition: true)
!292 = distinct !DICompileUnit(language: DW_LANG_C99, file: !293, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !68, globals: !294, splitDebugInlining: false, nameTableKind: None)
!293 = !DIFile(filename: "src/version.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!294 = !{!290}
!295 = !DIGlobalVariableExpression(var: !296, expr: !DIExpression())
!296 = distinct !DIGlobalVariable(name: "file_name", scope: !297, file: !298, line: 46, type: !65, isLocal: true, isDefinition: true)
!297 = distinct !DICompileUnit(language: DW_LANG_C99, file: !298, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !68, retainedTypes: !299, globals: !337, splitDebugInlining: false, nameTableKind: None)
!298 = !DIFile(filename: "lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!299 = !{!300, !59, !336, !171}
!300 = !DISubprogram(name: "close_stream", scope: !301, file: !301, line: 2, type: !302, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !68)
!301 = !DIFile(filename: "./lib/close-stream.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!302 = !DISubroutineType(types: !303)
!303 = !{!67, !304}
!304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !305, size: 64)
!305 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !75, line: 49, size: 1728, elements: !306)
!306 = !{!307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335}
!307 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !305, file: !75, line: 51, baseType: !67, size: 32)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !305, file: !75, line: 54, baseType: !63, size: 64, offset: 64)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !305, file: !75, line: 55, baseType: !63, size: 64, offset: 128)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !305, file: !75, line: 56, baseType: !63, size: 64, offset: 192)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !305, file: !75, line: 57, baseType: !63, size: 64, offset: 256)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !305, file: !75, line: 58, baseType: !63, size: 64, offset: 320)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !305, file: !75, line: 59, baseType: !63, size: 64, offset: 384)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !305, file: !75, line: 60, baseType: !63, size: 64, offset: 448)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !305, file: !75, line: 61, baseType: !63, size: 64, offset: 512)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !305, file: !75, line: 64, baseType: !63, size: 64, offset: 576)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !305, file: !75, line: 65, baseType: !63, size: 64, offset: 640)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !305, file: !75, line: 66, baseType: !63, size: 64, offset: 704)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !305, file: !75, line: 68, baseType: !90, size: 64, offset: 768)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !305, file: !75, line: 70, baseType: !304, size: 64, offset: 832)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !305, file: !75, line: 72, baseType: !67, size: 32, offset: 896)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !305, file: !75, line: 73, baseType: !67, size: 32, offset: 928)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !305, file: !75, line: 74, baseType: !96, size: 64, offset: 960)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !305, file: !75, line: 77, baseType: !99, size: 16, offset: 1024)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !305, file: !75, line: 78, baseType: !101, size: 8, offset: 1040)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !305, file: !75, line: 79, baseType: !103, size: 8, offset: 1048)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !305, file: !75, line: 81, baseType: !107, size: 64, offset: 1088)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !305, file: !75, line: 89, baseType: !110, size: 64, offset: 1152)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !305, file: !75, line: 91, baseType: !112, size: 64, offset: 1216)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !305, file: !75, line: 92, baseType: !115, size: 64, offset: 1280)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !305, file: !75, line: 93, baseType: !304, size: 64, offset: 1344)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !305, file: !75, line: 94, baseType: !119, size: 64, offset: 1408)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !305, file: !75, line: 95, baseType: !121, size: 64, offset: 1472)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !305, file: !75, line: 96, baseType: !67, size: 32, offset: 1536)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !305, file: !75, line: 98, baseType: !125, size: 160, offset: 1568)
!336 = !DISubprogram(name: "quotearg_colon", scope: !6, file: !6, line: 391, type: !140, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !68)
!337 = !{!295, !338}
!338 = !DIGlobalVariableExpression(var: !339, expr: !DIExpression())
!339 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !297, file: !298, line: 56, type: !204, isLocal: true, isDefinition: true)
!340 = !DIGlobalVariableExpression(var: !341, expr: !DIExpression())
!341 = distinct !DIGlobalVariable(name: "fillbuf", scope: !342, file: !343, line: 55, type: !373, isLocal: true, isDefinition: true)
!342 = distinct !DICompileUnit(language: DW_LANG_C99, file: !343, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !68, retainedTypes: !344, globals: !372, splitDebugInlining: false, nameTableKind: None)
!343 = !DIFile(filename: "lib/sha1.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!344 = !{!63, !345, !186, !370, !65, !371, !354}
!345 = !DISubprogram(name: "sha1_process_block", scope: !198, file: !198, line: 60, type: !346, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !68)
!346 = !DISubroutineType(types: !347)
!347 = !{null, !348, !40, !350}
!348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !349, size: 64)
!349 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !351, size: 64)
!351 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sha1_ctx", file: !198, line: 40, size: 1280, elements: !352)
!352 = !{!353, !357, !358, !359, !360, !361, !365, !366}
!353 = !DIDerivedType(tag: DW_TAG_member, name: "A", scope: !351, file: !198, line: 42, baseType: !354, size: 32)
!354 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !355, line: 26, baseType: !356)
!355 = !DIFile(filename: "/usr/include/bits/stdint-uintn.h", directory: "")
!356 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !44, line: 42, baseType: !7)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "B", scope: !351, file: !198, line: 43, baseType: !354, size: 32, offset: 32)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "C", scope: !351, file: !198, line: 44, baseType: !354, size: 32, offset: 64)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "D", scope: !351, file: !198, line: 45, baseType: !354, size: 32, offset: 96)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "E", scope: !351, file: !198, line: 46, baseType: !354, size: 32, offset: 128)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "total", scope: !351, file: !198, line: 48, baseType: !362, size: 64, offset: 160)
!362 = !DICompositeType(tag: DW_TAG_array_type, baseType: !354, size: 64, elements: !363)
!363 = !{!364}
!364 = !DISubrange(count: 2)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !351, file: !198, line: 49, baseType: !354, size: 32, offset: 224)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !351, file: !198, line: 50, baseType: !367, size: 1024, offset: 256)
!367 = !DICompositeType(tag: DW_TAG_array_type, baseType: !354, size: 1024, elements: !368)
!368 = !{!369}
!369 = !DISubrange(count: 32)
!370 = !DISubprogram(name: "sha1_process_bytes", scope: !198, file: !198, line: 67, type: !346, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !68)
!371 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !42, line: 90, baseType: !40)
!372 = !{!340}
!373 = !DICompositeType(tag: DW_TAG_array_type, baseType: !374, size: 512, elements: !375)
!374 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !193)
!375 = !{!376}
!376 = !DISubrange(count: 64)
!377 = !DIGlobalVariableExpression(var: !378, expr: !DIExpression())
!378 = distinct !DIGlobalVariable(name: "exit_failure", scope: !379, file: !380, line: 24, type: !382, isLocal: false, isDefinition: true)
!379 = distinct !DICompileUnit(language: DW_LANG_C99, file: !380, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !68, globals: !381, splitDebugInlining: false, nameTableKind: None)
!380 = !DIFile(filename: "lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!381 = !{!377}
!382 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !67)
!383 = !DIGlobalVariableExpression(var: !384, expr: !DIExpression())
!384 = distinct !DIGlobalVariable(name: "program_name", scope: !385, file: !386, line: 33, type: !65, isLocal: false, isDefinition: true)
!385 = distinct !DICompileUnit(language: DW_LANG_C99, file: !386, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !68, retainedTypes: !387, globals: !423, splitDebugInlining: false, nameTableKind: None)
!386 = !DIFile(filename: "lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!387 = !{!119, !388, !63}
!388 = !DISubprogram(name: "fputs", scope: !70, file: !70, line: 626, type: !389, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !68)
!389 = !DISubroutineType(types: !390)
!390 = !{!67, !65, !391}
!391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !392, size: 64)
!392 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !75, line: 49, size: 1728, elements: !393)
!393 = !{!394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422}
!394 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !392, file: !75, line: 51, baseType: !67, size: 32)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !392, file: !75, line: 54, baseType: !63, size: 64, offset: 64)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !392, file: !75, line: 55, baseType: !63, size: 64, offset: 128)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !392, file: !75, line: 56, baseType: !63, size: 64, offset: 192)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !392, file: !75, line: 57, baseType: !63, size: 64, offset: 256)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !392, file: !75, line: 58, baseType: !63, size: 64, offset: 320)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !392, file: !75, line: 59, baseType: !63, size: 64, offset: 384)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !392, file: !75, line: 60, baseType: !63, size: 64, offset: 448)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !392, file: !75, line: 61, baseType: !63, size: 64, offset: 512)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !392, file: !75, line: 64, baseType: !63, size: 64, offset: 576)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !392, file: !75, line: 65, baseType: !63, size: 64, offset: 640)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !392, file: !75, line: 66, baseType: !63, size: 64, offset: 704)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !392, file: !75, line: 68, baseType: !90, size: 64, offset: 768)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !392, file: !75, line: 70, baseType: !391, size: 64, offset: 832)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !392, file: !75, line: 72, baseType: !67, size: 32, offset: 896)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !392, file: !75, line: 73, baseType: !67, size: 32, offset: 928)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !392, file: !75, line: 74, baseType: !96, size: 64, offset: 960)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !392, file: !75, line: 77, baseType: !99, size: 16, offset: 1024)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !392, file: !75, line: 78, baseType: !101, size: 8, offset: 1040)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !392, file: !75, line: 79, baseType: !103, size: 8, offset: 1048)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !392, file: !75, line: 81, baseType: !107, size: 64, offset: 1088)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !392, file: !75, line: 89, baseType: !110, size: 64, offset: 1152)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !392, file: !75, line: 91, baseType: !112, size: 64, offset: 1216)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !392, file: !75, line: 92, baseType: !115, size: 64, offset: 1280)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !392, file: !75, line: 93, baseType: !391, size: 64, offset: 1344)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !392, file: !75, line: 94, baseType: !119, size: 64, offset: 1408)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !392, file: !75, line: 95, baseType: !121, size: 64, offset: 1472)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !392, file: !75, line: 96, baseType: !67, size: 32, offset: 1536)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !392, file: !75, line: 98, baseType: !125, size: 160, offset: 1568)
!423 = !{!383}
!424 = !DIGlobalVariableExpression(var: !425, expr: !DIExpression())
!425 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !426, file: !427, line: 85, type: !527, isLocal: false, isDefinition: true)
!426 = distinct !DICompileUnit(language: DW_LANG_C99, file: !427, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !428, retainedTypes: !434, globals: !500, splitDebugInlining: false, nameTableKind: None)
!427 = !DIFile(filename: "lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!428 = !{!5, !429, !20}
!429 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !6, line: 242, baseType: !7, size: 32, elements: !430)
!430 = !{!431, !432, !433}
!431 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1, isUnsigned: true)
!432 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2, isUnsigned: true)
!433 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4, isUnsigned: true)
!434 = !{!435, !439, !186, !455, !67, !99, !458, !121, !475, !479, !59, !485, !489, !63, !493, !496, !497}
!435 = !DISubprogram(name: "xmemdup", scope: !436, file: !436, line: 62, type: !437, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !68)
!436 = !DIFile(filename: "./lib/xalloc.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!437 = !DISubroutineType(types: !438)
!438 = !{!119, !348, !40}
!439 = !DISubprogram(name: "quotearg_alloc_mem", scope: !6, file: !6, line: 342, type: !440, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !68)
!440 = !DISubroutineType(types: !441)
!441 = !{!63, !65, !40, !442, !443}
!442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64)
!443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !444, size: 64)
!444 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !445)
!445 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !427, line: 65, size: 448, elements: !446)
!446 = !{!447, !448, !449, !453, !454}
!447 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !445, file: !427, line: 68, baseType: !5, size: 32)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !445, file: !427, line: 71, baseType: !67, size: 32, offset: 32)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !445, file: !427, line: 75, baseType: !450, size: 256, offset: 64)
!450 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 256, elements: !451)
!451 = !{!452}
!452 = !DISubrange(count: 8)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !445, file: !427, line: 78, baseType: !65, size: 64, offset: 320)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !445, file: !427, line: 81, baseType: !65, size: 64, offset: 384)
!455 = !DISubprogram(name: "quotearg_n_custom_mem", scope: !6, file: !6, line: 408, type: !456, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !68)
!456 = !DISubroutineType(types: !457)
!457 = !{!63, !67, !65, !65, !65, !40}
!458 = !DISubprogram(name: "rpl_mbrtowc", scope: !459, file: !459, line: 717, type: !460, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !68)
!459 = !DIFile(filename: "./lib/wchar.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!460 = !DISubroutineType(types: !461)
!461 = !{!40, !165, !65, !40, !462}
!462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !463, size: 64)
!463 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !464, line: 13, size: 64, elements: !465)
!464 = !DIFile(filename: "/usr/include/bits/types/__mbstate_t.h", directory: "")
!465 = !{!466, !467}
!466 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !463, file: !464, line: 15, baseType: !67, size: 32)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !463, file: !464, line: 20, baseType: !468, size: 32, offset: 32)
!468 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !463, file: !464, line: 16, size: 32, elements: !469)
!469 = !{!470, !471}
!470 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !468, file: !464, line: 18, baseType: !7, size: 32)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !468, file: !464, line: 19, baseType: !472, size: 32)
!472 = !DICompositeType(tag: DW_TAG_array_type, baseType: !64, size: 32, elements: !473)
!473 = !{!474}
!474 = !DISubrange(count: 4)
!475 = !DISubprogram(name: "iswprint", scope: !476, file: !476, line: 120, type: !477, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !68)
!476 = !DIFile(filename: "/usr/include/bits/wctype-wchar.h", directory: "")
!477 = !DISubroutineType(types: !478)
!478 = !{!67, !7}
!479 = !DISubprogram(name: "mbsinit", scope: !480, file: !480, line: 292, type: !481, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !68)
!480 = !DIFile(filename: "/usr/include/wchar.h", directory: "")
!481 = !DISubroutineType(types: !482)
!482 = !{!67, !483}
!483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !484, size: 64)
!484 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !463)
!485 = !DISubprogram(name: "locale_charset", scope: !486, file: !486, line: 35, type: !487, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !68)
!486 = !DIFile(filename: "./lib/localcharset.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!487 = !DISubroutineType(types: !488)
!488 = !{!65}
!489 = !DISubprogram(name: "c_strcasecmp", scope: !490, file: !490, line: 42, type: !491, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !68)
!490 = !DIFile(filename: "./lib/c-strcase.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!491 = !DISubroutineType(types: !492)
!492 = !{!67, !65, !65}
!493 = !DISubprogram(name: "xmalloc", scope: !436, file: !436, line: 53, type: !494, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !68)
!494 = !DISubroutineType(types: !495)
!495 = !{!119, !40}
!496 = !DISubprogram(name: "xalloc_die", scope: !436, file: !436, line: 51, type: !147, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !68)
!497 = !DISubprogram(name: "xrealloc", scope: !436, file: !436, line: 59, type: !498, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !68)
!498 = !DISubroutineType(types: !499)
!499 = !{!119, !119, !40}
!500 = !{!424, !501, !507, !509, !511, !516, !523, !525}
!501 = !DIGlobalVariableExpression(var: !502, expr: !DIExpression())
!502 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !426, file: !427, line: 101, type: !503, isLocal: false, isDefinition: true)
!503 = !DICompositeType(tag: DW_TAG_array_type, baseType: !504, size: 320, elements: !505)
!504 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5)
!505 = !{!506}
!506 = !DISubrange(count: 10)
!507 = !DIGlobalVariableExpression(var: !508, expr: !DIExpression())
!508 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !426, file: !427, line: 1052, type: !445, isLocal: false, isDefinition: true)
!509 = !DIGlobalVariableExpression(var: !510, expr: !DIExpression())
!510 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !426, file: !427, line: 116, type: !445, isLocal: true, isDefinition: true)
!511 = !DIGlobalVariableExpression(var: !512, expr: !DIExpression())
!512 = distinct !DIGlobalVariable(name: "slot0", scope: !426, file: !427, line: 842, type: !513, isLocal: true, isDefinition: true)
!513 = !DICompositeType(tag: DW_TAG_array_type, baseType: !64, size: 2048, elements: !514)
!514 = !{!515}
!515 = !DISubrange(count: 256)
!516 = !DIGlobalVariableExpression(var: !517, expr: !DIExpression())
!517 = distinct !DIGlobalVariable(name: "slotvec", scope: !426, file: !427, line: 845, type: !518, isLocal: true, isDefinition: true)
!518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !519, size: 64)
!519 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !427, line: 834, size: 128, elements: !520)
!520 = !{!521, !522}
!521 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !519, file: !427, line: 836, baseType: !121, size: 64)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !519, file: !427, line: 837, baseType: !63, size: 64, offset: 64)
!523 = !DIGlobalVariableExpression(var: !524, expr: !DIExpression())
!524 = distinct !DIGlobalVariable(name: "nslots", scope: !426, file: !427, line: 843, type: !67, isLocal: true, isDefinition: true)
!525 = !DIGlobalVariableExpression(var: !526, expr: !DIExpression())
!526 = distinct !DIGlobalVariable(name: "slotvec0", scope: !426, file: !427, line: 844, type: !519, isLocal: true, isDefinition: true)
!527 = !DICompositeType(tag: DW_TAG_array_type, baseType: !528, size: 704, elements: !529)
!528 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !65)
!529 = !{!530}
!530 = !DISubrange(count: 11)
!531 = !DIGlobalVariableExpression(var: !532, expr: !DIExpression())
!532 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !533, file: !534, line: 26, type: !536, isLocal: false, isDefinition: true)
!533 = distinct !DICompileUnit(language: DW_LANG_C99, file: !534, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !68, globals: !535, splitDebugInlining: false, nameTableKind: None)
!534 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!535 = !{!531}
!536 = !DICompositeType(tag: DW_TAG_array_type, baseType: !66, size: 376, elements: !537)
!537 = !{!538}
!538 = !DISubrange(count: 47)
!539 = !DIGlobalVariableExpression(var: !540, expr: !DIExpression())
!540 = distinct !DIGlobalVariable(name: "have_dupfd_cloexec", scope: !541, file: !542, line: 507, type: !67, isLocal: true, isDefinition: true)
!541 = distinct !DISubprogram(name: "rpl_fcntl_DUPFD_CLOEXEC", scope: !542, file: !542, line: 488, type: !543, scopeLine: 489, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !545, retainedNodes: !556)
!542 = !DIFile(filename: "lib/fcntl.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!543 = !DISubroutineType(types: !544)
!544 = !{!67, !67, !67}
!545 = distinct !DICompileUnit(language: DW_LANG_C99, file: !542, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !68, retainedTypes: !546, globals: !555, splitDebugInlining: false, nameTableKind: None)
!546 = !{!547, !551}
!547 = !DISubprogram(name: "fcntl", scope: !548, file: !548, line: 176, type: !549, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !68)
!548 = !DIFile(filename: "/usr/include/fcntl.h", directory: "")
!549 = !DISubroutineType(types: !550)
!550 = !{!67, !67, !67, null}
!551 = !DISubprogram(name: "close", scope: !552, file: !552, line: 353, type: !553, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !68)
!552 = !DIFile(filename: "/usr/include/unistd.h", directory: "")
!553 = !DISubroutineType(types: !554)
!554 = !{!67, !67}
!555 = !{!539}
!556 = !{!557, !558, !559, !560, !563}
!557 = !DILocalVariable(name: "fd", arg: 1, scope: !541, file: !542, line: 488, type: !67)
!558 = !DILocalVariable(name: "target", arg: 2, scope: !541, file: !542, line: 488, type: !67)
!559 = !DILocalVariable(name: "result", scope: !541, file: !542, line: 490, type: !67)
!560 = !DILocalVariable(name: "flags", scope: !561, file: !542, line: 531, type: !67)
!561 = distinct !DILexicalBlock(scope: !562, file: !542, line: 530, column: 5)
!562 = distinct !DILexicalBlock(scope: !541, file: !542, line: 529, column: 7)
!563 = !DILocalVariable(name: "saved_errno", scope: !564, file: !542, line: 534, type: !67)
!564 = distinct !DILexicalBlock(scope: !565, file: !542, line: 533, column: 9)
!565 = distinct !DILexicalBlock(scope: !561, file: !542, line: 532, column: 11)
!566 = distinct !DICompileUnit(language: DW_LANG_C99, file: !567, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !568, retainedTypes: !569, splitDebugInlining: false, nameTableKind: None)
!567 = !DIFile(filename: "lib/fadvise.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!568 = !{!49}
!569 = !{!570, !573}
!570 = !DISubprogram(name: "posix_fadvise", scope: !548, file: !548, line: 288, type: !571, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !68)
!571 = !DISubroutineType(types: !572)
!572 = !{!67, !67, !97, !97, !67}
!573 = !DISubprogram(name: "fileno", scope: !70, file: !70, line: 786, type: !574, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !68)
!574 = !DISubroutineType(types: !575)
!575 = !{!67, !576}
!576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !577, size: 64)
!577 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !75, line: 49, size: 1728, elements: !578)
!578 = !{!579, !580, !581, !582, !583, !584, !585, !586, !587, !588, !589, !590, !591, !592, !593, !594, !595, !596, !597, !598, !599, !600, !601, !602, !603, !604, !605, !606, !607}
!579 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !577, file: !75, line: 51, baseType: !67, size: 32)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !577, file: !75, line: 54, baseType: !63, size: 64, offset: 64)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !577, file: !75, line: 55, baseType: !63, size: 64, offset: 128)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !577, file: !75, line: 56, baseType: !63, size: 64, offset: 192)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !577, file: !75, line: 57, baseType: !63, size: 64, offset: 256)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !577, file: !75, line: 58, baseType: !63, size: 64, offset: 320)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !577, file: !75, line: 59, baseType: !63, size: 64, offset: 384)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !577, file: !75, line: 60, baseType: !63, size: 64, offset: 448)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !577, file: !75, line: 61, baseType: !63, size: 64, offset: 512)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !577, file: !75, line: 64, baseType: !63, size: 64, offset: 576)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !577, file: !75, line: 65, baseType: !63, size: 64, offset: 640)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !577, file: !75, line: 66, baseType: !63, size: 64, offset: 704)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !577, file: !75, line: 68, baseType: !90, size: 64, offset: 768)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !577, file: !75, line: 70, baseType: !576, size: 64, offset: 832)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !577, file: !75, line: 72, baseType: !67, size: 32, offset: 896)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !577, file: !75, line: 73, baseType: !67, size: 32, offset: 928)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !577, file: !75, line: 74, baseType: !96, size: 64, offset: 960)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !577, file: !75, line: 77, baseType: !99, size: 16, offset: 1024)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !577, file: !75, line: 78, baseType: !101, size: 8, offset: 1040)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !577, file: !75, line: 79, baseType: !103, size: 8, offset: 1048)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !577, file: !75, line: 81, baseType: !107, size: 64, offset: 1088)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !577, file: !75, line: 89, baseType: !110, size: 64, offset: 1152)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !577, file: !75, line: 91, baseType: !112, size: 64, offset: 1216)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !577, file: !75, line: 92, baseType: !115, size: 64, offset: 1280)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !577, file: !75, line: 93, baseType: !576, size: 64, offset: 1344)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !577, file: !75, line: 94, baseType: !119, size: 64, offset: 1408)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !577, file: !75, line: 95, baseType: !121, size: 64, offset: 1472)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !577, file: !75, line: 96, baseType: !67, size: 32, offset: 1536)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !577, file: !75, line: 98, baseType: !125, size: 160, offset: 1568)
!608 = distinct !DICompileUnit(language: DW_LANG_C99, file: !609, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !68, retainedTypes: !610, splitDebugInlining: false, nameTableKind: None)
!609 = !DIFile(filename: "lib/fopen-safer.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!610 = !{!611, !646, !648, !649, !551}
!611 = !DISubprogram(name: "fileno", scope: !70, file: !70, line: 786, type: !612, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !68)
!612 = !DISubroutineType(types: !613)
!613 = !{!67, !614}
!614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !615, size: 64)
!615 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !75, line: 49, size: 1728, elements: !616)
!616 = !{!617, !618, !619, !620, !621, !622, !623, !624, !625, !626, !627, !628, !629, !630, !631, !632, !633, !634, !635, !636, !637, !638, !639, !640, !641, !642, !643, !644, !645}
!617 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !615, file: !75, line: 51, baseType: !67, size: 32)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !615, file: !75, line: 54, baseType: !63, size: 64, offset: 64)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !615, file: !75, line: 55, baseType: !63, size: 64, offset: 128)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !615, file: !75, line: 56, baseType: !63, size: 64, offset: 192)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !615, file: !75, line: 57, baseType: !63, size: 64, offset: 256)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !615, file: !75, line: 58, baseType: !63, size: 64, offset: 320)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !615, file: !75, line: 59, baseType: !63, size: 64, offset: 384)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !615, file: !75, line: 60, baseType: !63, size: 64, offset: 448)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !615, file: !75, line: 61, baseType: !63, size: 64, offset: 512)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !615, file: !75, line: 64, baseType: !63, size: 64, offset: 576)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !615, file: !75, line: 65, baseType: !63, size: 64, offset: 640)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !615, file: !75, line: 66, baseType: !63, size: 64, offset: 704)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !615, file: !75, line: 68, baseType: !90, size: 64, offset: 768)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !615, file: !75, line: 70, baseType: !614, size: 64, offset: 832)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !615, file: !75, line: 72, baseType: !67, size: 32, offset: 896)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !615, file: !75, line: 73, baseType: !67, size: 32, offset: 928)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !615, file: !75, line: 74, baseType: !96, size: 64, offset: 960)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !615, file: !75, line: 77, baseType: !99, size: 16, offset: 1024)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !615, file: !75, line: 78, baseType: !101, size: 8, offset: 1040)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !615, file: !75, line: 79, baseType: !103, size: 8, offset: 1048)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !615, file: !75, line: 81, baseType: !107, size: 64, offset: 1088)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !615, file: !75, line: 89, baseType: !110, size: 64, offset: 1152)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !615, file: !75, line: 91, baseType: !112, size: 64, offset: 1216)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !615, file: !75, line: 92, baseType: !115, size: 64, offset: 1280)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !615, file: !75, line: 93, baseType: !614, size: 64, offset: 1344)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !615, file: !75, line: 94, baseType: !119, size: 64, offset: 1408)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !615, file: !75, line: 95, baseType: !121, size: 64, offset: 1472)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !615, file: !75, line: 96, baseType: !67, size: 32, offset: 1536)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !615, file: !75, line: 98, baseType: !125, size: 160, offset: 1568)
!646 = !DISubprogram(name: "dup_safer", scope: !647, file: !647, line: 20, type: !553, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !68)
!647 = !DIFile(filename: "./lib/unistd-safer.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!648 = !DISubprogram(name: "rpl_fclose", scope: !176, file: !176, line: 672, type: !612, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !68)
!649 = !DISubprogram(name: "fdopen", scope: !70, file: !70, line: 279, type: !650, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !68)
!650 = !DISubroutineType(types: !651)
!651 = !{!614, !67, !65}
!652 = distinct !DICompileUnit(language: DW_LANG_C99, file: !653, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !68, retainedTypes: !654, splitDebugInlining: false, nameTableKind: None)
!653 = !DIFile(filename: "lib/dup-safer.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!654 = !{!655}
!655 = !DISubprogram(name: "rpl_fcntl", scope: !656, file: !656, line: 588, type: !549, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !68)
!656 = !DIFile(filename: "./lib/fcntl.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!657 = distinct !DICompileUnit(language: DW_LANG_C99, file: !658, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !659, retainedTypes: !663, splitDebugInlining: false, nameTableKind: None)
!658 = !DIFile(filename: "lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!659 = !{!660}
!660 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !658, line: 40, baseType: !7, size: 32, elements: !661)
!661 = !{!662}
!662 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2020, isUnsigned: true)
!663 = !{!59, !664, !119}
!664 = !DISubprogram(name: "fputs_unlocked", scope: !70, file: !70, line: 662, type: !665, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !68)
!665 = !DISubroutineType(types: !666)
!666 = !{!67, !65, !667}
!667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !668, size: 64)
!668 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !75, line: 49, size: 1728, elements: !669)
!669 = !{!670, !671, !672, !673, !674, !675, !676, !677, !678, !679, !680, !681, !682, !683, !684, !685, !686, !687, !688, !689, !690, !691, !692, !693, !694, !695, !696, !697, !698}
!670 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !668, file: !75, line: 51, baseType: !67, size: 32)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !668, file: !75, line: 54, baseType: !63, size: 64, offset: 64)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !668, file: !75, line: 55, baseType: !63, size: 64, offset: 128)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !668, file: !75, line: 56, baseType: !63, size: 64, offset: 192)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !668, file: !75, line: 57, baseType: !63, size: 64, offset: 256)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !668, file: !75, line: 58, baseType: !63, size: 64, offset: 320)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !668, file: !75, line: 59, baseType: !63, size: 64, offset: 384)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !668, file: !75, line: 60, baseType: !63, size: 64, offset: 448)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !668, file: !75, line: 61, baseType: !63, size: 64, offset: 512)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !668, file: !75, line: 64, baseType: !63, size: 64, offset: 576)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !668, file: !75, line: 65, baseType: !63, size: 64, offset: 640)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !668, file: !75, line: 66, baseType: !63, size: 64, offset: 704)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !668, file: !75, line: 68, baseType: !90, size: 64, offset: 768)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !668, file: !75, line: 70, baseType: !667, size: 64, offset: 832)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !668, file: !75, line: 72, baseType: !67, size: 32, offset: 896)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !668, file: !75, line: 73, baseType: !67, size: 32, offset: 928)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !668, file: !75, line: 74, baseType: !96, size: 64, offset: 960)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !668, file: !75, line: 77, baseType: !99, size: 16, offset: 1024)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !668, file: !75, line: 78, baseType: !101, size: 8, offset: 1040)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !668, file: !75, line: 79, baseType: !103, size: 8, offset: 1048)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !668, file: !75, line: 81, baseType: !107, size: 64, offset: 1088)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !668, file: !75, line: 89, baseType: !110, size: 64, offset: 1152)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !668, file: !75, line: 91, baseType: !112, size: 64, offset: 1216)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !668, file: !75, line: 92, baseType: !115, size: 64, offset: 1280)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !668, file: !75, line: 93, baseType: !667, size: 64, offset: 1344)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !668, file: !75, line: 94, baseType: !119, size: 64, offset: 1408)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !668, file: !75, line: 95, baseType: !121, size: 64, offset: 1472)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !668, file: !75, line: 96, baseType: !67, size: 32, offset: 1536)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !668, file: !75, line: 98, baseType: !125, size: 160, offset: 1568)
!699 = distinct !DICompileUnit(language: DW_LANG_C99, file: !700, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !701, retainedTypes: !714, splitDebugInlining: false, nameTableKind: None)
!700 = !DIFile(filename: "lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!701 = !{!702}
!702 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !703, file: !436, line: 186, baseType: !7, size: 32, elements: !712)
!703 = distinct !DISubprogram(name: "x2nrealloc", scope: !436, file: !436, line: 174, type: !704, scopeLine: 175, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !699, retainedNodes: !707)
!704 = !DISubroutineType(types: !705)
!705 = !{!119, !119, !706, !121}
!706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !121, size: 64)
!707 = !{!708, !709, !710, !711}
!708 = !DILocalVariable(name: "p", arg: 1, scope: !703, file: !436, line: 174, type: !119)
!709 = !DILocalVariable(name: "pn", arg: 2, scope: !703, file: !436, line: 174, type: !706)
!710 = !DILocalVariable(name: "s", arg: 3, scope: !703, file: !436, line: 174, type: !121)
!711 = !DILocalVariable(name: "n", scope: !703, file: !436, line: 176, type: !121)
!712 = !{!713}
!713 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128, isUnsigned: true)
!714 = !{!121, !496, !493, !497, !63, !186, !119, !715, !718}
!715 = !DISubprogram(name: "xcalloc", scope: !436, file: !436, line: 57, type: !716, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !68)
!716 = !DISubroutineType(types: !717)
!717 = !{!119, !40, !40}
!718 = !DISubprogram(name: "rpl_calloc", scope: !719, file: !719, line: 688, type: !716, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !68)
!719 = !DIFile(filename: "./lib/stdlib.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!720 = distinct !DICompileUnit(language: DW_LANG_C99, file: !721, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !68, retainedTypes: !722, splitDebugInlining: false, nameTableKind: None)
!721 = !DIFile(filename: "lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!722 = !{!59, !171}
!723 = distinct !DICompileUnit(language: DW_LANG_C99, file: !724, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !68, retainedTypes: !725, splitDebugInlining: false, nameTableKind: None)
!724 = !DIFile(filename: "lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!725 = !{!119}
!726 = distinct !DICompileUnit(language: DW_LANG_C99, file: !727, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !68, retainedTypes: !728, splitDebugInlining: false, nameTableKind: None)
!727 = !DIFile(filename: "lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!728 = !{!729, !764, !765, !768}
!729 = !DISubprogram(name: "fileno", scope: !70, file: !70, line: 786, type: !730, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !68)
!730 = !DISubroutineType(types: !731)
!731 = !{!67, !732}
!732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !733, size: 64)
!733 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !75, line: 49, size: 1728, elements: !734)
!734 = !{!735, !736, !737, !738, !739, !740, !741, !742, !743, !744, !745, !746, !747, !748, !749, !750, !751, !752, !753, !754, !755, !756, !757, !758, !759, !760, !761, !762, !763}
!735 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !733, file: !75, line: 51, baseType: !67, size: 32)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !733, file: !75, line: 54, baseType: !63, size: 64, offset: 64)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !733, file: !75, line: 55, baseType: !63, size: 64, offset: 128)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !733, file: !75, line: 56, baseType: !63, size: 64, offset: 192)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !733, file: !75, line: 57, baseType: !63, size: 64, offset: 256)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !733, file: !75, line: 58, baseType: !63, size: 64, offset: 320)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !733, file: !75, line: 59, baseType: !63, size: 64, offset: 384)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !733, file: !75, line: 60, baseType: !63, size: 64, offset: 448)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !733, file: !75, line: 61, baseType: !63, size: 64, offset: 512)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !733, file: !75, line: 64, baseType: !63, size: 64, offset: 576)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !733, file: !75, line: 65, baseType: !63, size: 64, offset: 640)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !733, file: !75, line: 66, baseType: !63, size: 64, offset: 704)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !733, file: !75, line: 68, baseType: !90, size: 64, offset: 768)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !733, file: !75, line: 70, baseType: !732, size: 64, offset: 832)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !733, file: !75, line: 72, baseType: !67, size: 32, offset: 896)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !733, file: !75, line: 73, baseType: !67, size: 32, offset: 928)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !733, file: !75, line: 74, baseType: !96, size: 64, offset: 960)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !733, file: !75, line: 77, baseType: !99, size: 16, offset: 1024)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !733, file: !75, line: 78, baseType: !101, size: 8, offset: 1040)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !733, file: !75, line: 79, baseType: !103, size: 8, offset: 1048)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !733, file: !75, line: 81, baseType: !107, size: 64, offset: 1088)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !733, file: !75, line: 89, baseType: !110, size: 64, offset: 1152)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !733, file: !75, line: 91, baseType: !112, size: 64, offset: 1216)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !733, file: !75, line: 92, baseType: !115, size: 64, offset: 1280)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !733, file: !75, line: 93, baseType: !732, size: 64, offset: 1344)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !733, file: !75, line: 94, baseType: !119, size: 64, offset: 1408)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !733, file: !75, line: 95, baseType: !121, size: 64, offset: 1472)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !733, file: !75, line: 96, baseType: !67, size: 32, offset: 1536)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !733, file: !75, line: 98, baseType: !125, size: 160, offset: 1568)
!764 = !DISubprogram(name: "fclose", scope: !70, file: !70, line: 213, type: !730, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !68)
!765 = !DISubprogram(name: "lseek", scope: !552, file: !552, line: 334, type: !766, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !68)
!766 = !DISubroutineType(types: !767)
!767 = !{!97, !67, !97, !67}
!768 = !DISubprogram(name: "rpl_fflush", scope: !176, file: !176, line: 718, type: !730, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !68)
!769 = distinct !DICompileUnit(language: DW_LANG_C99, file: !770, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !68, retainedTypes: !771, splitDebugInlining: false, nameTableKind: None)
!770 = !DIFile(filename: "lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!771 = !{!119, !772, !807}
!772 = !DISubprogram(name: "fflush", scope: !70, file: !70, line: 218, type: !773, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !68)
!773 = !DISubroutineType(types: !774)
!774 = !{!67, !775}
!775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !776, size: 64)
!776 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !75, line: 49, size: 1728, elements: !777)
!777 = !{!778, !779, !780, !781, !782, !783, !784, !785, !786, !787, !788, !789, !790, !791, !792, !793, !794, !795, !796, !797, !798, !799, !800, !801, !802, !803, !804, !805, !806}
!778 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !776, file: !75, line: 51, baseType: !67, size: 32)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !776, file: !75, line: 54, baseType: !63, size: 64, offset: 64)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !776, file: !75, line: 55, baseType: !63, size: 64, offset: 128)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !776, file: !75, line: 56, baseType: !63, size: 64, offset: 192)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !776, file: !75, line: 57, baseType: !63, size: 64, offset: 256)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !776, file: !75, line: 58, baseType: !63, size: 64, offset: 320)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !776, file: !75, line: 59, baseType: !63, size: 64, offset: 384)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !776, file: !75, line: 60, baseType: !63, size: 64, offset: 448)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !776, file: !75, line: 61, baseType: !63, size: 64, offset: 512)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !776, file: !75, line: 64, baseType: !63, size: 64, offset: 576)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !776, file: !75, line: 65, baseType: !63, size: 64, offset: 640)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !776, file: !75, line: 66, baseType: !63, size: 64, offset: 704)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !776, file: !75, line: 68, baseType: !90, size: 64, offset: 768)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !776, file: !75, line: 70, baseType: !775, size: 64, offset: 832)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !776, file: !75, line: 72, baseType: !67, size: 32, offset: 896)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !776, file: !75, line: 73, baseType: !67, size: 32, offset: 928)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !776, file: !75, line: 74, baseType: !96, size: 64, offset: 960)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !776, file: !75, line: 77, baseType: !99, size: 16, offset: 1024)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !776, file: !75, line: 78, baseType: !101, size: 8, offset: 1040)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !776, file: !75, line: 79, baseType: !103, size: 8, offset: 1048)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !776, file: !75, line: 81, baseType: !107, size: 64, offset: 1088)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !776, file: !75, line: 89, baseType: !110, size: 64, offset: 1152)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !776, file: !75, line: 91, baseType: !112, size: 64, offset: 1216)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !776, file: !75, line: 92, baseType: !115, size: 64, offset: 1280)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !776, file: !75, line: 93, baseType: !775, size: 64, offset: 1344)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !776, file: !75, line: 94, baseType: !119, size: 64, offset: 1408)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !776, file: !75, line: 95, baseType: !121, size: 64, offset: 1472)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !776, file: !75, line: 96, baseType: !67, size: 32, offset: 1536)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !776, file: !75, line: 98, baseType: !125, size: 160, offset: 1568)
!807 = !DISubprogram(name: "rpl_fseeko", scope: !176, file: !176, line: 1034, type: !808, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !68)
!808 = !DISubroutineType(types: !809)
!809 = !{!67, !775, !97, !67}
!810 = distinct !DICompileUnit(language: DW_LANG_C99, file: !811, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !68, retainedTypes: !812, splitDebugInlining: false, nameTableKind: None)
!811 = !DIFile(filename: "lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!812 = !{!119, !813, !765, !848}
!813 = !DISubprogram(name: "fileno", scope: !70, file: !70, line: 786, type: !814, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !68)
!814 = !DISubroutineType(types: !815)
!815 = !{!67, !816}
!816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !817, size: 64)
!817 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !75, line: 49, size: 1728, elements: !818)
!818 = !{!819, !820, !821, !822, !823, !824, !825, !826, !827, !828, !829, !830, !831, !832, !833, !834, !835, !836, !837, !838, !839, !840, !841, !842, !843, !844, !845, !846, !847}
!819 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !817, file: !75, line: 51, baseType: !67, size: 32)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !817, file: !75, line: 54, baseType: !63, size: 64, offset: 64)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !817, file: !75, line: 55, baseType: !63, size: 64, offset: 128)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !817, file: !75, line: 56, baseType: !63, size: 64, offset: 192)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !817, file: !75, line: 57, baseType: !63, size: 64, offset: 256)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !817, file: !75, line: 58, baseType: !63, size: 64, offset: 320)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !817, file: !75, line: 59, baseType: !63, size: 64, offset: 384)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !817, file: !75, line: 60, baseType: !63, size: 64, offset: 448)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !817, file: !75, line: 61, baseType: !63, size: 64, offset: 512)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !817, file: !75, line: 64, baseType: !63, size: 64, offset: 576)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !817, file: !75, line: 65, baseType: !63, size: 64, offset: 640)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !817, file: !75, line: 66, baseType: !63, size: 64, offset: 704)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !817, file: !75, line: 68, baseType: !90, size: 64, offset: 768)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !817, file: !75, line: 70, baseType: !816, size: 64, offset: 832)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !817, file: !75, line: 72, baseType: !67, size: 32, offset: 896)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !817, file: !75, line: 73, baseType: !67, size: 32, offset: 928)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !817, file: !75, line: 74, baseType: !96, size: 64, offset: 960)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !817, file: !75, line: 77, baseType: !99, size: 16, offset: 1024)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !817, file: !75, line: 78, baseType: !101, size: 8, offset: 1040)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !817, file: !75, line: 79, baseType: !103, size: 8, offset: 1048)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !817, file: !75, line: 81, baseType: !107, size: 64, offset: 1088)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !817, file: !75, line: 89, baseType: !110, size: 64, offset: 1152)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !817, file: !75, line: 91, baseType: !112, size: 64, offset: 1216)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !817, file: !75, line: 92, baseType: !115, size: 64, offset: 1280)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !817, file: !75, line: 93, baseType: !816, size: 64, offset: 1344)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !817, file: !75, line: 94, baseType: !119, size: 64, offset: 1408)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !817, file: !75, line: 95, baseType: !121, size: 64, offset: 1472)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !817, file: !75, line: 96, baseType: !67, size: 32, offset: 1536)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !817, file: !75, line: 98, baseType: !125, size: 160, offset: 1568)
!848 = !DISubprogram(name: "fseeko", scope: !70, file: !70, line: 707, type: !849, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !68)
!849 = !DISubroutineType(types: !850)
!850 = !{!67, !816, !97, !67}
!851 = distinct !DICompileUnit(language: DW_LANG_C99, file: !852, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !68, retainedTypes: !853, splitDebugInlining: false, nameTableKind: None)
!852 = !DIFile(filename: "lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!853 = !{!854, !121, !866}
!854 = !DISubprogram(name: "mbrtowc", scope: !480, file: !480, line: 296, type: !855, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !68)
!855 = !DISubroutineType(types: !856)
!856 = !{!40, !165, !65, !40, !857}
!857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !858, size: 64)
!858 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !464, line: 13, size: 64, elements: !859)
!859 = !{!860, !861}
!860 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !858, file: !464, line: 15, baseType: !67, size: 32)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !858, file: !464, line: 20, baseType: !862, size: 32, offset: 32)
!862 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !858, file: !464, line: 16, size: 32, elements: !863)
!863 = !{!864, !865}
!864 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !862, file: !464, line: 18, baseType: !7, size: 32)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !862, file: !464, line: 19, baseType: !472, size: 32)
!866 = !DISubprogram(name: "hard_locale", scope: !867, file: !867, line: 26, type: !868, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !68)
!867 = !DIFile(filename: "./lib/hard-locale.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!868 = !DISubroutineType(types: !869)
!869 = !{!204, !67}
!870 = distinct !DICompileUnit(language: DW_LANG_C99, file: !871, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !68, retainedTypes: !872, splitDebugInlining: false, nameTableKind: None)
!871 = !DIFile(filename: "lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!872 = !{!873}
!873 = !DISubprogram(name: "rpl_fclose", scope: !176, file: !176, line: 672, type: !874, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !68)
!874 = !DISubroutineType(types: !875)
!875 = !{!67, !876}
!876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !877, size: 64)
!877 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !75, line: 49, size: 1728, elements: !878)
!878 = !{!879, !880, !881, !882, !883, !884, !885, !886, !887, !888, !889, !890, !891, !892, !893, !894, !895, !896, !897, !898, !899, !900, !901, !902, !903, !904, !905, !906, !907}
!879 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !877, file: !75, line: 51, baseType: !67, size: 32)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !877, file: !75, line: 54, baseType: !63, size: 64, offset: 64)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !877, file: !75, line: 55, baseType: !63, size: 64, offset: 128)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !877, file: !75, line: 56, baseType: !63, size: 64, offset: 192)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !877, file: !75, line: 57, baseType: !63, size: 64, offset: 256)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !877, file: !75, line: 58, baseType: !63, size: 64, offset: 320)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !877, file: !75, line: 59, baseType: !63, size: 64, offset: 384)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !877, file: !75, line: 60, baseType: !63, size: 64, offset: 448)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !877, file: !75, line: 61, baseType: !63, size: 64, offset: 512)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !877, file: !75, line: 64, baseType: !63, size: 64, offset: 576)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !877, file: !75, line: 65, baseType: !63, size: 64, offset: 640)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !877, file: !75, line: 66, baseType: !63, size: 64, offset: 704)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !877, file: !75, line: 68, baseType: !90, size: 64, offset: 768)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !877, file: !75, line: 70, baseType: !876, size: 64, offset: 832)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !877, file: !75, line: 72, baseType: !67, size: 32, offset: 896)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !877, file: !75, line: 73, baseType: !67, size: 32, offset: 928)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !877, file: !75, line: 74, baseType: !96, size: 64, offset: 960)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !877, file: !75, line: 77, baseType: !99, size: 16, offset: 1024)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !877, file: !75, line: 78, baseType: !101, size: 8, offset: 1040)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !877, file: !75, line: 79, baseType: !103, size: 8, offset: 1048)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !877, file: !75, line: 81, baseType: !107, size: 64, offset: 1088)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !877, file: !75, line: 89, baseType: !110, size: 64, offset: 1152)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !877, file: !75, line: 91, baseType: !112, size: 64, offset: 1216)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !877, file: !75, line: 92, baseType: !115, size: 64, offset: 1280)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !877, file: !75, line: 93, baseType: !876, size: 64, offset: 1344)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !877, file: !75, line: 94, baseType: !119, size: 64, offset: 1408)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !877, file: !75, line: 95, baseType: !121, size: 64, offset: 1472)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !877, file: !75, line: 96, baseType: !67, size: 32, offset: 1536)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !877, file: !75, line: 98, baseType: !125, size: 160, offset: 1568)
!908 = distinct !DICompileUnit(language: DW_LANG_C99, file: !909, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !68, retainedTypes: !910, splitDebugInlining: false, nameTableKind: None)
!909 = !DIFile(filename: "lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!910 = !{!911}
!911 = !DISubprogram(name: "setlocale_null_r", scope: !912, file: !912, line: 64, type: !913, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !68)
!912 = !DIFile(filename: "./lib/setlocale_null.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!913 = !DISubroutineType(types: !914)
!914 = !{!67, !67, !63, !40}
!915 = distinct !DICompileUnit(language: DW_LANG_C99, file: !916, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !917, retainedTypes: !1304, splitDebugInlining: false, nameTableKind: None)
!916 = !DIFile(filename: "lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!917 = !{!918}
!918 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !919, line: 41, baseType: !7, size: 32, elements: !920)
!919 = !DIFile(filename: "/usr/include/langinfo.h", directory: "")
!920 = !{!921, !922, !923, !924, !925, !926, !927, !928, !929, !930, !931, !932, !933, !934, !935, !936, !937, !938, !939, !940, !941, !942, !943, !944, !945, !946, !947, !948, !949, !950, !951, !952, !953, !954, !955, !956, !957, !958, !959, !960, !961, !962, !963, !964, !965, !966, !967, !968, !969, !970, !971, !972, !973, !974, !975, !976, !977, !978, !979, !980, !981, !982, !983, !984, !985, !986, !987, !988, !989, !990, !991, !992, !993, !994, !995, !996, !997, !998, !999, !1000, !1001, !1002, !1003, !1004, !1005, !1006, !1007, !1008, !1009, !1010, !1011, !1012, !1013, !1014, !1015, !1016, !1017, !1018, !1019, !1020, !1021, !1022, !1023, !1024, !1025, !1026, !1027, !1028, !1029, !1030, !1031, !1032, !1033, !1034, !1035, !1036, !1037, !1038, !1039, !1040, !1041, !1042, !1043, !1044, !1045, !1046, !1047, !1048, !1049, !1050, !1051, !1052, !1053, !1054, !1055, !1056, !1057, !1058, !1059, !1060, !1061, !1062, !1063, !1064, !1065, !1066, !1067, !1068, !1069, !1070, !1071, !1072, !1073, !1074, !1075, !1076, !1077, !1078, !1079, !1080, !1081, !1082, !1083, !1084, !1085, !1086, !1087, !1088, !1089, !1090, !1091, !1092, !1093, !1094, !1095, !1096, !1097, !1098, !1099, !1100, !1101, !1102, !1103, !1104, !1105, !1106, !1107, !1108, !1109, !1110, !1111, !1112, !1113, !1114, !1115, !1116, !1117, !1118, !1119, !1120, !1121, !1122, !1123, !1124, !1125, !1126, !1127, !1128, !1129, !1130, !1131, !1132, !1133, !1134, !1135, !1136, !1137, !1138, !1139, !1140, !1141, !1142, !1143, !1144, !1145, !1146, !1147, !1148, !1149, !1150, !1151, !1152, !1153, !1154, !1155, !1156, !1157, !1158, !1159, !1160, !1161, !1162, !1163, !1164, !1165, !1166, !1167, !1168, !1169, !1170, !1171, !1172, !1173, !1174, !1175, !1176, !1177, !1178, !1179, !1180, !1181, !1182, !1183, !1184, !1185, !1186, !1187, !1188, !1189, !1190, !1191, !1192, !1193, !1194, !1195, !1196, !1197, !1198, !1199, !1200, !1201, !1202, !1203, !1204, !1205, !1206, !1207, !1208, !1209, !1210, !1211, !1212, !1213, !1214, !1215, !1216, !1217, !1218, !1219, !1220, !1221, !1222, !1223, !1224, !1225, !1226, !1227, !1228, !1229, !1230, !1231, !1232, !1233, !1234, !1235, !1236, !1237, !1238, !1239, !1240, !1241, !1242, !1243, !1244, !1245, !1246, !1247, !1248, !1249, !1250, !1251, !1252, !1253, !1254, !1255, !1256, !1257, !1258, !1259, !1260, !1261, !1262, !1263, !1264, !1265, !1266, !1267, !1268, !1269, !1270, !1271, !1272, !1273, !1274, !1275, !1276, !1277, !1278, !1279, !1280, !1281, !1282, !1283, !1284, !1285, !1286, !1287, !1288, !1289, !1290, !1291, !1292, !1293, !1294, !1295, !1296, !1297, !1298, !1299, !1300, !1301, !1302, !1303}
!921 = !DIEnumerator(name: "ABDAY_1", value: 131072, isUnsigned: true)
!922 = !DIEnumerator(name: "ABDAY_2", value: 131073, isUnsigned: true)
!923 = !DIEnumerator(name: "ABDAY_3", value: 131074, isUnsigned: true)
!924 = !DIEnumerator(name: "ABDAY_4", value: 131075, isUnsigned: true)
!925 = !DIEnumerator(name: "ABDAY_5", value: 131076, isUnsigned: true)
!926 = !DIEnumerator(name: "ABDAY_6", value: 131077, isUnsigned: true)
!927 = !DIEnumerator(name: "ABDAY_7", value: 131078, isUnsigned: true)
!928 = !DIEnumerator(name: "DAY_1", value: 131079, isUnsigned: true)
!929 = !DIEnumerator(name: "DAY_2", value: 131080, isUnsigned: true)
!930 = !DIEnumerator(name: "DAY_3", value: 131081, isUnsigned: true)
!931 = !DIEnumerator(name: "DAY_4", value: 131082, isUnsigned: true)
!932 = !DIEnumerator(name: "DAY_5", value: 131083, isUnsigned: true)
!933 = !DIEnumerator(name: "DAY_6", value: 131084, isUnsigned: true)
!934 = !DIEnumerator(name: "DAY_7", value: 131085, isUnsigned: true)
!935 = !DIEnumerator(name: "ABMON_1", value: 131086, isUnsigned: true)
!936 = !DIEnumerator(name: "ABMON_2", value: 131087, isUnsigned: true)
!937 = !DIEnumerator(name: "ABMON_3", value: 131088, isUnsigned: true)
!938 = !DIEnumerator(name: "ABMON_4", value: 131089, isUnsigned: true)
!939 = !DIEnumerator(name: "ABMON_5", value: 131090, isUnsigned: true)
!940 = !DIEnumerator(name: "ABMON_6", value: 131091, isUnsigned: true)
!941 = !DIEnumerator(name: "ABMON_7", value: 131092, isUnsigned: true)
!942 = !DIEnumerator(name: "ABMON_8", value: 131093, isUnsigned: true)
!943 = !DIEnumerator(name: "ABMON_9", value: 131094, isUnsigned: true)
!944 = !DIEnumerator(name: "ABMON_10", value: 131095, isUnsigned: true)
!945 = !DIEnumerator(name: "ABMON_11", value: 131096, isUnsigned: true)
!946 = !DIEnumerator(name: "ABMON_12", value: 131097, isUnsigned: true)
!947 = !DIEnumerator(name: "MON_1", value: 131098, isUnsigned: true)
!948 = !DIEnumerator(name: "MON_2", value: 131099, isUnsigned: true)
!949 = !DIEnumerator(name: "MON_3", value: 131100, isUnsigned: true)
!950 = !DIEnumerator(name: "MON_4", value: 131101, isUnsigned: true)
!951 = !DIEnumerator(name: "MON_5", value: 131102, isUnsigned: true)
!952 = !DIEnumerator(name: "MON_6", value: 131103, isUnsigned: true)
!953 = !DIEnumerator(name: "MON_7", value: 131104, isUnsigned: true)
!954 = !DIEnumerator(name: "MON_8", value: 131105, isUnsigned: true)
!955 = !DIEnumerator(name: "MON_9", value: 131106, isUnsigned: true)
!956 = !DIEnumerator(name: "MON_10", value: 131107, isUnsigned: true)
!957 = !DIEnumerator(name: "MON_11", value: 131108, isUnsigned: true)
!958 = !DIEnumerator(name: "MON_12", value: 131109, isUnsigned: true)
!959 = !DIEnumerator(name: "AM_STR", value: 131110, isUnsigned: true)
!960 = !DIEnumerator(name: "PM_STR", value: 131111, isUnsigned: true)
!961 = !DIEnumerator(name: "D_T_FMT", value: 131112, isUnsigned: true)
!962 = !DIEnumerator(name: "D_FMT", value: 131113, isUnsigned: true)
!963 = !DIEnumerator(name: "T_FMT", value: 131114, isUnsigned: true)
!964 = !DIEnumerator(name: "T_FMT_AMPM", value: 131115, isUnsigned: true)
!965 = !DIEnumerator(name: "ERA", value: 131116, isUnsigned: true)
!966 = !DIEnumerator(name: "__ERA_YEAR", value: 131117, isUnsigned: true)
!967 = !DIEnumerator(name: "ERA_D_FMT", value: 131118, isUnsigned: true)
!968 = !DIEnumerator(name: "ALT_DIGITS", value: 131119, isUnsigned: true)
!969 = !DIEnumerator(name: "ERA_D_T_FMT", value: 131120, isUnsigned: true)
!970 = !DIEnumerator(name: "ERA_T_FMT", value: 131121, isUnsigned: true)
!971 = !DIEnumerator(name: "_NL_TIME_ERA_NUM_ENTRIES", value: 131122, isUnsigned: true)
!972 = !DIEnumerator(name: "_NL_TIME_ERA_ENTRIES", value: 131123, isUnsigned: true)
!973 = !DIEnumerator(name: "_NL_WABDAY_1", value: 131124, isUnsigned: true)
!974 = !DIEnumerator(name: "_NL_WABDAY_2", value: 131125, isUnsigned: true)
!975 = !DIEnumerator(name: "_NL_WABDAY_3", value: 131126, isUnsigned: true)
!976 = !DIEnumerator(name: "_NL_WABDAY_4", value: 131127, isUnsigned: true)
!977 = !DIEnumerator(name: "_NL_WABDAY_5", value: 131128, isUnsigned: true)
!978 = !DIEnumerator(name: "_NL_WABDAY_6", value: 131129, isUnsigned: true)
!979 = !DIEnumerator(name: "_NL_WABDAY_7", value: 131130, isUnsigned: true)
!980 = !DIEnumerator(name: "_NL_WDAY_1", value: 131131, isUnsigned: true)
!981 = !DIEnumerator(name: "_NL_WDAY_2", value: 131132, isUnsigned: true)
!982 = !DIEnumerator(name: "_NL_WDAY_3", value: 131133, isUnsigned: true)
!983 = !DIEnumerator(name: "_NL_WDAY_4", value: 131134, isUnsigned: true)
!984 = !DIEnumerator(name: "_NL_WDAY_5", value: 131135, isUnsigned: true)
!985 = !DIEnumerator(name: "_NL_WDAY_6", value: 131136, isUnsigned: true)
!986 = !DIEnumerator(name: "_NL_WDAY_7", value: 131137, isUnsigned: true)
!987 = !DIEnumerator(name: "_NL_WABMON_1", value: 131138, isUnsigned: true)
!988 = !DIEnumerator(name: "_NL_WABMON_2", value: 131139, isUnsigned: true)
!989 = !DIEnumerator(name: "_NL_WABMON_3", value: 131140, isUnsigned: true)
!990 = !DIEnumerator(name: "_NL_WABMON_4", value: 131141, isUnsigned: true)
!991 = !DIEnumerator(name: "_NL_WABMON_5", value: 131142, isUnsigned: true)
!992 = !DIEnumerator(name: "_NL_WABMON_6", value: 131143, isUnsigned: true)
!993 = !DIEnumerator(name: "_NL_WABMON_7", value: 131144, isUnsigned: true)
!994 = !DIEnumerator(name: "_NL_WABMON_8", value: 131145, isUnsigned: true)
!995 = !DIEnumerator(name: "_NL_WABMON_9", value: 131146, isUnsigned: true)
!996 = !DIEnumerator(name: "_NL_WABMON_10", value: 131147, isUnsigned: true)
!997 = !DIEnumerator(name: "_NL_WABMON_11", value: 131148, isUnsigned: true)
!998 = !DIEnumerator(name: "_NL_WABMON_12", value: 131149, isUnsigned: true)
!999 = !DIEnumerator(name: "_NL_WMON_1", value: 131150, isUnsigned: true)
!1000 = !DIEnumerator(name: "_NL_WMON_2", value: 131151, isUnsigned: true)
!1001 = !DIEnumerator(name: "_NL_WMON_3", value: 131152, isUnsigned: true)
!1002 = !DIEnumerator(name: "_NL_WMON_4", value: 131153, isUnsigned: true)
!1003 = !DIEnumerator(name: "_NL_WMON_5", value: 131154, isUnsigned: true)
!1004 = !DIEnumerator(name: "_NL_WMON_6", value: 131155, isUnsigned: true)
!1005 = !DIEnumerator(name: "_NL_WMON_7", value: 131156, isUnsigned: true)
!1006 = !DIEnumerator(name: "_NL_WMON_8", value: 131157, isUnsigned: true)
!1007 = !DIEnumerator(name: "_NL_WMON_9", value: 131158, isUnsigned: true)
!1008 = !DIEnumerator(name: "_NL_WMON_10", value: 131159, isUnsigned: true)
!1009 = !DIEnumerator(name: "_NL_WMON_11", value: 131160, isUnsigned: true)
!1010 = !DIEnumerator(name: "_NL_WMON_12", value: 131161, isUnsigned: true)
!1011 = !DIEnumerator(name: "_NL_WAM_STR", value: 131162, isUnsigned: true)
!1012 = !DIEnumerator(name: "_NL_WPM_STR", value: 131163, isUnsigned: true)
!1013 = !DIEnumerator(name: "_NL_WD_T_FMT", value: 131164, isUnsigned: true)
!1014 = !DIEnumerator(name: "_NL_WD_FMT", value: 131165, isUnsigned: true)
!1015 = !DIEnumerator(name: "_NL_WT_FMT", value: 131166, isUnsigned: true)
!1016 = !DIEnumerator(name: "_NL_WT_FMT_AMPM", value: 131167, isUnsigned: true)
!1017 = !DIEnumerator(name: "_NL_WERA_YEAR", value: 131168, isUnsigned: true)
!1018 = !DIEnumerator(name: "_NL_WERA_D_FMT", value: 131169, isUnsigned: true)
!1019 = !DIEnumerator(name: "_NL_WALT_DIGITS", value: 131170, isUnsigned: true)
!1020 = !DIEnumerator(name: "_NL_WERA_D_T_FMT", value: 131171, isUnsigned: true)
!1021 = !DIEnumerator(name: "_NL_WERA_T_FMT", value: 131172, isUnsigned: true)
!1022 = !DIEnumerator(name: "_NL_TIME_WEEK_NDAYS", value: 131173, isUnsigned: true)
!1023 = !DIEnumerator(name: "_NL_TIME_WEEK_1STDAY", value: 131174, isUnsigned: true)
!1024 = !DIEnumerator(name: "_NL_TIME_WEEK_1STWEEK", value: 131175, isUnsigned: true)
!1025 = !DIEnumerator(name: "_NL_TIME_FIRST_WEEKDAY", value: 131176, isUnsigned: true)
!1026 = !DIEnumerator(name: "_NL_TIME_FIRST_WORKDAY", value: 131177, isUnsigned: true)
!1027 = !DIEnumerator(name: "_NL_TIME_CAL_DIRECTION", value: 131178, isUnsigned: true)
!1028 = !DIEnumerator(name: "_NL_TIME_TIMEZONE", value: 131179, isUnsigned: true)
!1029 = !DIEnumerator(name: "_DATE_FMT", value: 131180, isUnsigned: true)
!1030 = !DIEnumerator(name: "_NL_W_DATE_FMT", value: 131181, isUnsigned: true)
!1031 = !DIEnumerator(name: "_NL_TIME_CODESET", value: 131182, isUnsigned: true)
!1032 = !DIEnumerator(name: "__ALTMON_1", value: 131183, isUnsigned: true)
!1033 = !DIEnumerator(name: "__ALTMON_2", value: 131184, isUnsigned: true)
!1034 = !DIEnumerator(name: "__ALTMON_3", value: 131185, isUnsigned: true)
!1035 = !DIEnumerator(name: "__ALTMON_4", value: 131186, isUnsigned: true)
!1036 = !DIEnumerator(name: "__ALTMON_5", value: 131187, isUnsigned: true)
!1037 = !DIEnumerator(name: "__ALTMON_6", value: 131188, isUnsigned: true)
!1038 = !DIEnumerator(name: "__ALTMON_7", value: 131189, isUnsigned: true)
!1039 = !DIEnumerator(name: "__ALTMON_8", value: 131190, isUnsigned: true)
!1040 = !DIEnumerator(name: "__ALTMON_9", value: 131191, isUnsigned: true)
!1041 = !DIEnumerator(name: "__ALTMON_10", value: 131192, isUnsigned: true)
!1042 = !DIEnumerator(name: "__ALTMON_11", value: 131193, isUnsigned: true)
!1043 = !DIEnumerator(name: "__ALTMON_12", value: 131194, isUnsigned: true)
!1044 = !DIEnumerator(name: "_NL_WALTMON_1", value: 131195, isUnsigned: true)
!1045 = !DIEnumerator(name: "_NL_WALTMON_2", value: 131196, isUnsigned: true)
!1046 = !DIEnumerator(name: "_NL_WALTMON_3", value: 131197, isUnsigned: true)
!1047 = !DIEnumerator(name: "_NL_WALTMON_4", value: 131198, isUnsigned: true)
!1048 = !DIEnumerator(name: "_NL_WALTMON_5", value: 131199, isUnsigned: true)
!1049 = !DIEnumerator(name: "_NL_WALTMON_6", value: 131200, isUnsigned: true)
!1050 = !DIEnumerator(name: "_NL_WALTMON_7", value: 131201, isUnsigned: true)
!1051 = !DIEnumerator(name: "_NL_WALTMON_8", value: 131202, isUnsigned: true)
!1052 = !DIEnumerator(name: "_NL_WALTMON_9", value: 131203, isUnsigned: true)
!1053 = !DIEnumerator(name: "_NL_WALTMON_10", value: 131204, isUnsigned: true)
!1054 = !DIEnumerator(name: "_NL_WALTMON_11", value: 131205, isUnsigned: true)
!1055 = !DIEnumerator(name: "_NL_WALTMON_12", value: 131206, isUnsigned: true)
!1056 = !DIEnumerator(name: "_NL_ABALTMON_1", value: 131207, isUnsigned: true)
!1057 = !DIEnumerator(name: "_NL_ABALTMON_2", value: 131208, isUnsigned: true)
!1058 = !DIEnumerator(name: "_NL_ABALTMON_3", value: 131209, isUnsigned: true)
!1059 = !DIEnumerator(name: "_NL_ABALTMON_4", value: 131210, isUnsigned: true)
!1060 = !DIEnumerator(name: "_NL_ABALTMON_5", value: 131211, isUnsigned: true)
!1061 = !DIEnumerator(name: "_NL_ABALTMON_6", value: 131212, isUnsigned: true)
!1062 = !DIEnumerator(name: "_NL_ABALTMON_7", value: 131213, isUnsigned: true)
!1063 = !DIEnumerator(name: "_NL_ABALTMON_8", value: 131214, isUnsigned: true)
!1064 = !DIEnumerator(name: "_NL_ABALTMON_9", value: 131215, isUnsigned: true)
!1065 = !DIEnumerator(name: "_NL_ABALTMON_10", value: 131216, isUnsigned: true)
!1066 = !DIEnumerator(name: "_NL_ABALTMON_11", value: 131217, isUnsigned: true)
!1067 = !DIEnumerator(name: "_NL_ABALTMON_12", value: 131218, isUnsigned: true)
!1068 = !DIEnumerator(name: "_NL_WABALTMON_1", value: 131219, isUnsigned: true)
!1069 = !DIEnumerator(name: "_NL_WABALTMON_2", value: 131220, isUnsigned: true)
!1070 = !DIEnumerator(name: "_NL_WABALTMON_3", value: 131221, isUnsigned: true)
!1071 = !DIEnumerator(name: "_NL_WABALTMON_4", value: 131222, isUnsigned: true)
!1072 = !DIEnumerator(name: "_NL_WABALTMON_5", value: 131223, isUnsigned: true)
!1073 = !DIEnumerator(name: "_NL_WABALTMON_6", value: 131224, isUnsigned: true)
!1074 = !DIEnumerator(name: "_NL_WABALTMON_7", value: 131225, isUnsigned: true)
!1075 = !DIEnumerator(name: "_NL_WABALTMON_8", value: 131226, isUnsigned: true)
!1076 = !DIEnumerator(name: "_NL_WABALTMON_9", value: 131227, isUnsigned: true)
!1077 = !DIEnumerator(name: "_NL_WABALTMON_10", value: 131228, isUnsigned: true)
!1078 = !DIEnumerator(name: "_NL_WABALTMON_11", value: 131229, isUnsigned: true)
!1079 = !DIEnumerator(name: "_NL_WABALTMON_12", value: 131230, isUnsigned: true)
!1080 = !DIEnumerator(name: "_NL_NUM_LC_TIME", value: 131231, isUnsigned: true)
!1081 = !DIEnumerator(name: "_NL_COLLATE_NRULES", value: 196608, isUnsigned: true)
!1082 = !DIEnumerator(name: "_NL_COLLATE_RULESETS", value: 196609, isUnsigned: true)
!1083 = !DIEnumerator(name: "_NL_COLLATE_TABLEMB", value: 196610, isUnsigned: true)
!1084 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTMB", value: 196611, isUnsigned: true)
!1085 = !DIEnumerator(name: "_NL_COLLATE_EXTRAMB", value: 196612, isUnsigned: true)
!1086 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTMB", value: 196613, isUnsigned: true)
!1087 = !DIEnumerator(name: "_NL_COLLATE_GAP1", value: 196614, isUnsigned: true)
!1088 = !DIEnumerator(name: "_NL_COLLATE_GAP2", value: 196615, isUnsigned: true)
!1089 = !DIEnumerator(name: "_NL_COLLATE_GAP3", value: 196616, isUnsigned: true)
!1090 = !DIEnumerator(name: "_NL_COLLATE_TABLEWC", value: 196617, isUnsigned: true)
!1091 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTWC", value: 196618, isUnsigned: true)
!1092 = !DIEnumerator(name: "_NL_COLLATE_EXTRAWC", value: 196619, isUnsigned: true)
!1093 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTWC", value: 196620, isUnsigned: true)
!1094 = !DIEnumerator(name: "_NL_COLLATE_SYMB_HASH_SIZEMB", value: 196621, isUnsigned: true)
!1095 = !DIEnumerator(name: "_NL_COLLATE_SYMB_TABLEMB", value: 196622, isUnsigned: true)
!1096 = !DIEnumerator(name: "_NL_COLLATE_SYMB_EXTRAMB", value: 196623, isUnsigned: true)
!1097 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQMB", value: 196624, isUnsigned: true)
!1098 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQWC", value: 196625, isUnsigned: true)
!1099 = !DIEnumerator(name: "_NL_COLLATE_CODESET", value: 196626, isUnsigned: true)
!1100 = !DIEnumerator(name: "_NL_NUM_LC_COLLATE", value: 196627, isUnsigned: true)
!1101 = !DIEnumerator(name: "_NL_CTYPE_CLASS", value: 0, isUnsigned: true)
!1102 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER", value: 1, isUnsigned: true)
!1103 = !DIEnumerator(name: "_NL_CTYPE_GAP1", value: 2, isUnsigned: true)
!1104 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER", value: 3, isUnsigned: true)
!1105 = !DIEnumerator(name: "_NL_CTYPE_GAP2", value: 4, isUnsigned: true)
!1106 = !DIEnumerator(name: "_NL_CTYPE_CLASS32", value: 5, isUnsigned: true)
!1107 = !DIEnumerator(name: "_NL_CTYPE_GAP3", value: 6, isUnsigned: true)
!1108 = !DIEnumerator(name: "_NL_CTYPE_GAP4", value: 7, isUnsigned: true)
!1109 = !DIEnumerator(name: "_NL_CTYPE_GAP5", value: 8, isUnsigned: true)
!1110 = !DIEnumerator(name: "_NL_CTYPE_GAP6", value: 9, isUnsigned: true)
!1111 = !DIEnumerator(name: "_NL_CTYPE_CLASS_NAMES", value: 10, isUnsigned: true)
!1112 = !DIEnumerator(name: "_NL_CTYPE_MAP_NAMES", value: 11, isUnsigned: true)
!1113 = !DIEnumerator(name: "_NL_CTYPE_WIDTH", value: 12, isUnsigned: true)
!1114 = !DIEnumerator(name: "_NL_CTYPE_MB_CUR_MAX", value: 13, isUnsigned: true)
!1115 = !DIEnumerator(name: "_NL_CTYPE_CODESET_NAME", value: 14, isUnsigned: true)
!1116 = !DIEnumerator(name: "CODESET", value: 14, isUnsigned: true)
!1117 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER32", value: 15, isUnsigned: true)
!1118 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER32", value: 16, isUnsigned: true)
!1119 = !DIEnumerator(name: "_NL_CTYPE_CLASS_OFFSET", value: 17, isUnsigned: true)
!1120 = !DIEnumerator(name: "_NL_CTYPE_MAP_OFFSET", value: 18, isUnsigned: true)
!1121 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_MB_LEN", value: 19, isUnsigned: true)
!1122 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_MB", value: 20, isUnsigned: true)
!1123 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_MB", value: 21, isUnsigned: true)
!1124 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_MB", value: 22, isUnsigned: true)
!1125 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_MB", value: 23, isUnsigned: true)
!1126 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_MB", value: 24, isUnsigned: true)
!1127 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_MB", value: 25, isUnsigned: true)
!1128 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_MB", value: 26, isUnsigned: true)
!1129 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_MB", value: 27, isUnsigned: true)
!1130 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_MB", value: 28, isUnsigned: true)
!1131 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_MB", value: 29, isUnsigned: true)
!1132 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_WC_LEN", value: 30, isUnsigned: true)
!1133 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_WC", value: 31, isUnsigned: true)
!1134 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_WC", value: 32, isUnsigned: true)
!1135 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_WC", value: 33, isUnsigned: true)
!1136 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_WC", value: 34, isUnsigned: true)
!1137 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_WC", value: 35, isUnsigned: true)
!1138 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_WC", value: 36, isUnsigned: true)
!1139 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_WC", value: 37, isUnsigned: true)
!1140 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_WC", value: 38, isUnsigned: true)
!1141 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_WC", value: 39, isUnsigned: true)
!1142 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_WC", value: 40, isUnsigned: true)
!1143 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_MB", value: 41, isUnsigned: true)
!1144 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_MB", value: 42, isUnsigned: true)
!1145 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_MB", value: 43, isUnsigned: true)
!1146 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_MB", value: 44, isUnsigned: true)
!1147 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_MB", value: 45, isUnsigned: true)
!1148 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_MB", value: 46, isUnsigned: true)
!1149 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_MB", value: 47, isUnsigned: true)
!1150 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_MB", value: 48, isUnsigned: true)
!1151 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_MB", value: 49, isUnsigned: true)
!1152 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_MB", value: 50, isUnsigned: true)
!1153 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_WC", value: 51, isUnsigned: true)
!1154 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_WC", value: 52, isUnsigned: true)
!1155 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_WC", value: 53, isUnsigned: true)
!1156 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_WC", value: 54, isUnsigned: true)
!1157 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_WC", value: 55, isUnsigned: true)
!1158 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_WC", value: 56, isUnsigned: true)
!1159 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_WC", value: 57, isUnsigned: true)
!1160 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_WC", value: 58, isUnsigned: true)
!1161 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_WC", value: 59, isUnsigned: true)
!1162 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_WC", value: 60, isUnsigned: true)
!1163 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TAB_SIZE", value: 61, isUnsigned: true)
!1164 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_IDX", value: 62, isUnsigned: true)
!1165 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_TBL", value: 63, isUnsigned: true)
!1166 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_IDX", value: 64, isUnsigned: true)
!1167 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_TBL", value: 65, isUnsigned: true)
!1168 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING_LEN", value: 66, isUnsigned: true)
!1169 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING", value: 67, isUnsigned: true)
!1170 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE_LEN", value: 68, isUnsigned: true)
!1171 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE", value: 69, isUnsigned: true)
!1172 = !DIEnumerator(name: "_NL_CTYPE_MAP_TO_NONASCII", value: 70, isUnsigned: true)
!1173 = !DIEnumerator(name: "_NL_CTYPE_NONASCII_CASE", value: 71, isUnsigned: true)
!1174 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_1", value: 72, isUnsigned: true)
!1175 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_2", value: 73, isUnsigned: true)
!1176 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_3", value: 74, isUnsigned: true)
!1177 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_4", value: 75, isUnsigned: true)
!1178 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_5", value: 76, isUnsigned: true)
!1179 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_6", value: 77, isUnsigned: true)
!1180 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_7", value: 78, isUnsigned: true)
!1181 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_8", value: 79, isUnsigned: true)
!1182 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_9", value: 80, isUnsigned: true)
!1183 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_10", value: 81, isUnsigned: true)
!1184 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_11", value: 82, isUnsigned: true)
!1185 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_12", value: 83, isUnsigned: true)
!1186 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_13", value: 84, isUnsigned: true)
!1187 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_14", value: 85, isUnsigned: true)
!1188 = !DIEnumerator(name: "_NL_NUM_LC_CTYPE", value: 86, isUnsigned: true)
!1189 = !DIEnumerator(name: "__INT_CURR_SYMBOL", value: 262144, isUnsigned: true)
!1190 = !DIEnumerator(name: "__CURRENCY_SYMBOL", value: 262145, isUnsigned: true)
!1191 = !DIEnumerator(name: "__MON_DECIMAL_POINT", value: 262146, isUnsigned: true)
!1192 = !DIEnumerator(name: "__MON_THOUSANDS_SEP", value: 262147, isUnsigned: true)
!1193 = !DIEnumerator(name: "__MON_GROUPING", value: 262148, isUnsigned: true)
!1194 = !DIEnumerator(name: "__POSITIVE_SIGN", value: 262149, isUnsigned: true)
!1195 = !DIEnumerator(name: "__NEGATIVE_SIGN", value: 262150, isUnsigned: true)
!1196 = !DIEnumerator(name: "__INT_FRAC_DIGITS", value: 262151, isUnsigned: true)
!1197 = !DIEnumerator(name: "__FRAC_DIGITS", value: 262152, isUnsigned: true)
!1198 = !DIEnumerator(name: "__P_CS_PRECEDES", value: 262153, isUnsigned: true)
!1199 = !DIEnumerator(name: "__P_SEP_BY_SPACE", value: 262154, isUnsigned: true)
!1200 = !DIEnumerator(name: "__N_CS_PRECEDES", value: 262155, isUnsigned: true)
!1201 = !DIEnumerator(name: "__N_SEP_BY_SPACE", value: 262156, isUnsigned: true)
!1202 = !DIEnumerator(name: "__P_SIGN_POSN", value: 262157, isUnsigned: true)
!1203 = !DIEnumerator(name: "__N_SIGN_POSN", value: 262158, isUnsigned: true)
!1204 = !DIEnumerator(name: "_NL_MONETARY_CRNCYSTR", value: 262159, isUnsigned: true)
!1205 = !DIEnumerator(name: "__INT_P_CS_PRECEDES", value: 262160, isUnsigned: true)
!1206 = !DIEnumerator(name: "__INT_P_SEP_BY_SPACE", value: 262161, isUnsigned: true)
!1207 = !DIEnumerator(name: "__INT_N_CS_PRECEDES", value: 262162, isUnsigned: true)
!1208 = !DIEnumerator(name: "__INT_N_SEP_BY_SPACE", value: 262163, isUnsigned: true)
!1209 = !DIEnumerator(name: "__INT_P_SIGN_POSN", value: 262164, isUnsigned: true)
!1210 = !DIEnumerator(name: "__INT_N_SIGN_POSN", value: 262165, isUnsigned: true)
!1211 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_CURR_SYMBOL", value: 262166, isUnsigned: true)
!1212 = !DIEnumerator(name: "_NL_MONETARY_DUO_CURRENCY_SYMBOL", value: 262167, isUnsigned: true)
!1213 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_FRAC_DIGITS", value: 262168, isUnsigned: true)
!1214 = !DIEnumerator(name: "_NL_MONETARY_DUO_FRAC_DIGITS", value: 262169, isUnsigned: true)
!1215 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_CS_PRECEDES", value: 262170, isUnsigned: true)
!1216 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SEP_BY_SPACE", value: 262171, isUnsigned: true)
!1217 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_CS_PRECEDES", value: 262172, isUnsigned: true)
!1218 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SEP_BY_SPACE", value: 262173, isUnsigned: true)
!1219 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_CS_PRECEDES", value: 262174, isUnsigned: true)
!1220 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SEP_BY_SPACE", value: 262175, isUnsigned: true)
!1221 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_CS_PRECEDES", value: 262176, isUnsigned: true)
!1222 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SEP_BY_SPACE", value: 262177, isUnsigned: true)
!1223 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SIGN_POSN", value: 262178, isUnsigned: true)
!1224 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SIGN_POSN", value: 262179, isUnsigned: true)
!1225 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SIGN_POSN", value: 262180, isUnsigned: true)
!1226 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SIGN_POSN", value: 262181, isUnsigned: true)
!1227 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_FROM", value: 262182, isUnsigned: true)
!1228 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_TO", value: 262183, isUnsigned: true)
!1229 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_FROM", value: 262184, isUnsigned: true)
!1230 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_TO", value: 262185, isUnsigned: true)
!1231 = !DIEnumerator(name: "_NL_MONETARY_CONVERSION_RATE", value: 262186, isUnsigned: true)
!1232 = !DIEnumerator(name: "_NL_MONETARY_DECIMAL_POINT_WC", value: 262187, isUnsigned: true)
!1233 = !DIEnumerator(name: "_NL_MONETARY_THOUSANDS_SEP_WC", value: 262188, isUnsigned: true)
!1234 = !DIEnumerator(name: "_NL_MONETARY_CODESET", value: 262189, isUnsigned: true)
!1235 = !DIEnumerator(name: "_NL_NUM_LC_MONETARY", value: 262190, isUnsigned: true)
!1236 = !DIEnumerator(name: "__DECIMAL_POINT", value: 65536, isUnsigned: true)
!1237 = !DIEnumerator(name: "RADIXCHAR", value: 65536, isUnsigned: true)
!1238 = !DIEnumerator(name: "__THOUSANDS_SEP", value: 65537, isUnsigned: true)
!1239 = !DIEnumerator(name: "THOUSEP", value: 65537, isUnsigned: true)
!1240 = !DIEnumerator(name: "__GROUPING", value: 65538, isUnsigned: true)
!1241 = !DIEnumerator(name: "_NL_NUMERIC_DECIMAL_POINT_WC", value: 65539, isUnsigned: true)
!1242 = !DIEnumerator(name: "_NL_NUMERIC_THOUSANDS_SEP_WC", value: 65540, isUnsigned: true)
!1243 = !DIEnumerator(name: "_NL_NUMERIC_CODESET", value: 65541, isUnsigned: true)
!1244 = !DIEnumerator(name: "_NL_NUM_LC_NUMERIC", value: 65542, isUnsigned: true)
!1245 = !DIEnumerator(name: "__YESEXPR", value: 327680, isUnsigned: true)
!1246 = !DIEnumerator(name: "__NOEXPR", value: 327681, isUnsigned: true)
!1247 = !DIEnumerator(name: "__YESSTR", value: 327682, isUnsigned: true)
!1248 = !DIEnumerator(name: "__NOSTR", value: 327683, isUnsigned: true)
!1249 = !DIEnumerator(name: "_NL_MESSAGES_CODESET", value: 327684, isUnsigned: true)
!1250 = !DIEnumerator(name: "_NL_NUM_LC_MESSAGES", value: 327685, isUnsigned: true)
!1251 = !DIEnumerator(name: "_NL_PAPER_HEIGHT", value: 458752, isUnsigned: true)
!1252 = !DIEnumerator(name: "_NL_PAPER_WIDTH", value: 458753, isUnsigned: true)
!1253 = !DIEnumerator(name: "_NL_PAPER_CODESET", value: 458754, isUnsigned: true)
!1254 = !DIEnumerator(name: "_NL_NUM_LC_PAPER", value: 458755, isUnsigned: true)
!1255 = !DIEnumerator(name: "_NL_NAME_NAME_FMT", value: 524288, isUnsigned: true)
!1256 = !DIEnumerator(name: "_NL_NAME_NAME_GEN", value: 524289, isUnsigned: true)
!1257 = !DIEnumerator(name: "_NL_NAME_NAME_MR", value: 524290, isUnsigned: true)
!1258 = !DIEnumerator(name: "_NL_NAME_NAME_MRS", value: 524291, isUnsigned: true)
!1259 = !DIEnumerator(name: "_NL_NAME_NAME_MISS", value: 524292, isUnsigned: true)
!1260 = !DIEnumerator(name: "_NL_NAME_NAME_MS", value: 524293, isUnsigned: true)
!1261 = !DIEnumerator(name: "_NL_NAME_CODESET", value: 524294, isUnsigned: true)
!1262 = !DIEnumerator(name: "_NL_NUM_LC_NAME", value: 524295, isUnsigned: true)
!1263 = !DIEnumerator(name: "_NL_ADDRESS_POSTAL_FMT", value: 589824, isUnsigned: true)
!1264 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NAME", value: 589825, isUnsigned: true)
!1265 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_POST", value: 589826, isUnsigned: true)
!1266 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB2", value: 589827, isUnsigned: true)
!1267 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB3", value: 589828, isUnsigned: true)
!1268 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_CAR", value: 589829, isUnsigned: true)
!1269 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NUM", value: 589830, isUnsigned: true)
!1270 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_ISBN", value: 589831, isUnsigned: true)
!1271 = !DIEnumerator(name: "_NL_ADDRESS_LANG_NAME", value: 589832, isUnsigned: true)
!1272 = !DIEnumerator(name: "_NL_ADDRESS_LANG_AB", value: 589833, isUnsigned: true)
!1273 = !DIEnumerator(name: "_NL_ADDRESS_LANG_TERM", value: 589834, isUnsigned: true)
!1274 = !DIEnumerator(name: "_NL_ADDRESS_LANG_LIB", value: 589835, isUnsigned: true)
!1275 = !DIEnumerator(name: "_NL_ADDRESS_CODESET", value: 589836, isUnsigned: true)
!1276 = !DIEnumerator(name: "_NL_NUM_LC_ADDRESS", value: 589837, isUnsigned: true)
!1277 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_INT_FMT", value: 655360, isUnsigned: true)
!1278 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_DOM_FMT", value: 655361, isUnsigned: true)
!1279 = !DIEnumerator(name: "_NL_TELEPHONE_INT_SELECT", value: 655362, isUnsigned: true)
!1280 = !DIEnumerator(name: "_NL_TELEPHONE_INT_PREFIX", value: 655363, isUnsigned: true)
!1281 = !DIEnumerator(name: "_NL_TELEPHONE_CODESET", value: 655364, isUnsigned: true)
!1282 = !DIEnumerator(name: "_NL_NUM_LC_TELEPHONE", value: 655365, isUnsigned: true)
!1283 = !DIEnumerator(name: "_NL_MEASUREMENT_MEASUREMENT", value: 720896, isUnsigned: true)
!1284 = !DIEnumerator(name: "_NL_MEASUREMENT_CODESET", value: 720897, isUnsigned: true)
!1285 = !DIEnumerator(name: "_NL_NUM_LC_MEASUREMENT", value: 720898, isUnsigned: true)
!1286 = !DIEnumerator(name: "_NL_IDENTIFICATION_TITLE", value: 786432, isUnsigned: true)
!1287 = !DIEnumerator(name: "_NL_IDENTIFICATION_SOURCE", value: 786433, isUnsigned: true)
!1288 = !DIEnumerator(name: "_NL_IDENTIFICATION_ADDRESS", value: 786434, isUnsigned: true)
!1289 = !DIEnumerator(name: "_NL_IDENTIFICATION_CONTACT", value: 786435, isUnsigned: true)
!1290 = !DIEnumerator(name: "_NL_IDENTIFICATION_EMAIL", value: 786436, isUnsigned: true)
!1291 = !DIEnumerator(name: "_NL_IDENTIFICATION_TEL", value: 786437, isUnsigned: true)
!1292 = !DIEnumerator(name: "_NL_IDENTIFICATION_FAX", value: 786438, isUnsigned: true)
!1293 = !DIEnumerator(name: "_NL_IDENTIFICATION_LANGUAGE", value: 786439, isUnsigned: true)
!1294 = !DIEnumerator(name: "_NL_IDENTIFICATION_TERRITORY", value: 786440, isUnsigned: true)
!1295 = !DIEnumerator(name: "_NL_IDENTIFICATION_AUDIENCE", value: 786441, isUnsigned: true)
!1296 = !DIEnumerator(name: "_NL_IDENTIFICATION_APPLICATION", value: 786442, isUnsigned: true)
!1297 = !DIEnumerator(name: "_NL_IDENTIFICATION_ABBREVIATION", value: 786443, isUnsigned: true)
!1298 = !DIEnumerator(name: "_NL_IDENTIFICATION_REVISION", value: 786444, isUnsigned: true)
!1299 = !DIEnumerator(name: "_NL_IDENTIFICATION_DATE", value: 786445, isUnsigned: true)
!1300 = !DIEnumerator(name: "_NL_IDENTIFICATION_CATEGORY", value: 786446, isUnsigned: true)
!1301 = !DIEnumerator(name: "_NL_IDENTIFICATION_CODESET", value: 786447, isUnsigned: true)
!1302 = !DIEnumerator(name: "_NL_NUM_LC_IDENTIFICATION", value: 786448, isUnsigned: true)
!1303 = !DIEnumerator(name: "_NL_NUM", value: 786449, isUnsigned: true)
!1304 = !{!1305, !119}
!1305 = !DISubprogram(name: "nl_langinfo", scope: !919, file: !919, line: 661, type: !1306, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !68)
!1306 = !DISubroutineType(types: !1307)
!1307 = !{!63, !67}
!1308 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1309, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !68, retainedTypes: !1310, splitDebugInlining: false, nameTableKind: None)
!1309 = !DIFile(filename: "lib/setlocale_null.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!1310 = !{!119, !132}
!1311 = !{!"clang version 10.0.0 "}
!1312 = !{i32 7, !"Dwarf Version", i32 4}
!1313 = !{i32 2, !"Debug Info Version", i32 3}
!1314 = !{i32 1, !"wchar_size", i32 4}
!1315 = !{i32 7, !"PIC Level", i32 2}
!1316 = !{i32 7, !"PIE Level", i32 2}
!1317 = distinct !DISubprogram(name: "usage", scope: !3, file: !3, line: 223, type: !1318, scopeLine: 224, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1320)
!1318 = !DISubroutineType(types: !1319)
!1319 = !{null, !67}
!1320 = !{!1321}
!1321 = !DILocalVariable(name: "status", arg: 1, scope: !1317, file: !3, line: 223, type: !67)
!1322 = !DILocalVariable(name: "infomap", scope: !1323, file: !36, line: 636, type: !1335)
!1323 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !36, file: !36, line: 634, type: !130, scopeLine: 635, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1324)
!1324 = !{!1325, !1322, !1326, !1327, !1334}
!1325 = !DILocalVariable(name: "program", arg: 1, scope: !1323, file: !36, line: 634, type: !65)
!1326 = !DILocalVariable(name: "node", scope: !1323, file: !36, line: 646, type: !65)
!1327 = !DILocalVariable(name: "map_prog", scope: !1323, file: !36, line: 647, type: !1328)
!1328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1329, size: 64)
!1329 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1330)
!1330 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !1323, file: !36, line: 636, size: 128, elements: !1331)
!1331 = !{!1332, !1333}
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !1330, file: !36, line: 636, baseType: !65, size: 64)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1330, file: !36, line: 636, baseType: !65, size: 64, offset: 64)
!1334 = !DILocalVariable(name: "lc_messages", scope: !1323, file: !36, line: 659, type: !65)
!1335 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1329, size: 896, elements: !1336)
!1336 = !{!1337}
!1337 = !DISubrange(count: 7)
!1338 = !DILocation(line: 636, column: 67, scope: !1323, inlinedAt: !1339)
!1339 = distinct !DILocation(line: 295, column: 7, scope: !1340)
!1340 = distinct !DILexicalBlock(scope: !1341, file: !3, line: 228, column: 5)
!1341 = distinct !DILexicalBlock(scope: !1317, file: !3, line: 225, column: 7)
!1342 = !DILocation(line: 0, scope: !1317)
!1343 = !DILocation(line: 225, column: 14, scope: !1341)
!1344 = !DILocation(line: 225, column: 7, scope: !1317)
!1345 = !DILocation(line: 226, column: 5, scope: !1346)
!1346 = distinct !DILexicalBlock(scope: !1341, file: !3, line: 226, column: 5)
!1347 = !{!1348, !1348, i64 0}
!1348 = !{!"any pointer", !1349, i64 0}
!1349 = !{!"omnipotent char", !1350, i64 0}
!1350 = !{!"Simple C/C++ TBAA"}
!1351 = !DILocation(line: 229, column: 7, scope: !1340)
!1352 = !DILocation(line: 583, column: 3, scope: !1353, inlinedAt: !1354)
!1353 = distinct !DISubprogram(name: "emit_stdin_note", scope: !36, file: !36, line: 581, type: !147, scopeLine: 582, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !68)
!1354 = distinct !DILocation(line: 237, column: 7, scope: !1340)
!1355 = !DILocation(line: 244, column: 9, scope: !1356)
!1356 = distinct !DILexicalBlock(scope: !1340, file: !3, line: 238, column: 11)
!1357 = !DILocation(line: 249, column: 7, scope: !1340)
!1358 = !DILocation(line: 258, column: 7, scope: !1340)
!1359 = !DILocation(line: 266, column: 9, scope: !1360)
!1360 = distinct !DILexicalBlock(scope: !1340, file: !3, line: 261, column: 11)
!1361 = !DILocation(line: 269, column: 7, scope: !1340)
!1362 = !DILocation(line: 273, column: 7, scope: !1340)
!1363 = !DILocation(line: 283, column: 7, scope: !1340)
!1364 = !DILocation(line: 284, column: 7, scope: !1340)
!1365 = !DILocation(line: 285, column: 7, scope: !1340)
!1366 = !DILocation(line: 0, scope: !1323, inlinedAt: !1339)
!1367 = !DILocation(line: 636, column: 3, scope: !1323, inlinedAt: !1339)
!1368 = !DILocation(line: 647, column: 36, scope: !1323, inlinedAt: !1339)
!1369 = !DILocation(line: 649, column: 3, scope: !1323, inlinedAt: !1339)
!1370 = !DILocation(line: 649, column: 33, scope: !1323, inlinedAt: !1339)
!1371 = !DILocation(line: 650, column: 13, scope: !1323, inlinedAt: !1339)
!1372 = !DILocation(line: 649, column: 20, scope: !1323, inlinedAt: !1339)
!1373 = !{!1374, !1348, i64 0}
!1374 = !{!"infomap", !1348, i64 0, !1348, i64 8}
!1375 = !DILocation(line: 649, column: 10, scope: !1323, inlinedAt: !1339)
!1376 = !DILocation(line: 649, column: 28, scope: !1323, inlinedAt: !1339)
!1377 = distinct !{!1377, !1369, !1371}
!1378 = !DILocation(line: 652, column: 17, scope: !1379, inlinedAt: !1339)
!1379 = distinct !DILexicalBlock(scope: !1323, file: !36, line: 652, column: 7)
!1380 = !{!1374, !1348, i64 8}
!1381 = !DILocation(line: 652, column: 7, scope: !1379, inlinedAt: !1339)
!1382 = !DILocation(line: 652, column: 7, scope: !1323, inlinedAt: !1339)
!1383 = !DILocation(line: 655, column: 3, scope: !1323, inlinedAt: !1339)
!1384 = !DILocation(line: 659, column: 29, scope: !1323, inlinedAt: !1339)
!1385 = !DILocation(line: 660, column: 7, scope: !1386, inlinedAt: !1339)
!1386 = distinct !DILexicalBlock(scope: !1323, file: !36, line: 660, column: 7)
!1387 = !DILocation(line: 660, column: 19, scope: !1386, inlinedAt: !1339)
!1388 = !DILocation(line: 660, column: 22, scope: !1386, inlinedAt: !1339)
!1389 = !DILocation(line: 660, column: 7, scope: !1323, inlinedAt: !1339)
!1390 = !DILocation(line: 666, column: 7, scope: !1391, inlinedAt: !1339)
!1391 = distinct !DILexicalBlock(scope: !1386, file: !36, line: 661, column: 5)
!1392 = !DILocation(line: 668, column: 5, scope: !1391, inlinedAt: !1339)
!1393 = !DILocation(line: 669, column: 3, scope: !1323, inlinedAt: !1339)
!1394 = !DILocation(line: 671, column: 3, scope: !1323, inlinedAt: !1339)
!1395 = !DILocation(line: 673, column: 1, scope: !1323, inlinedAt: !1339)
!1396 = !DILocation(line: 298, column: 3, scope: !1317)
!1397 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 861, type: !1398, scopeLine: 862, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1401)
!1398 = !DISubroutineType(types: !1399)
!1399 = !{!67, !67, !1400}
!1400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !63, size: 64)
!1401 = !{!1402, !1403, !1404, !1405, !1406, !1407, !1408, !1409, !1410, !1411, !1412, !1413, !1415, !1418, !1421, !1422, !1425}
!1402 = !DILocalVariable(name: "argc", arg: 1, scope: !1397, file: !3, line: 861, type: !67)
!1403 = !DILocalVariable(name: "argv", arg: 2, scope: !1397, file: !3, line: 861, type: !1400)
!1404 = !DILocalVariable(name: "bin_buffer_unaligned", scope: !1397, file: !3, line: 863, type: !239)
!1405 = !DILocalVariable(name: "bin_buffer", scope: !1397, file: !3, line: 865, type: !192)
!1406 = !DILocalVariable(name: "do_check", scope: !1397, file: !3, line: 866, type: !204)
!1407 = !DILocalVariable(name: "opt", scope: !1397, file: !3, line: 867, type: !67)
!1408 = !DILocalVariable(name: "ok", scope: !1397, file: !3, line: 868, type: !204)
!1409 = !DILocalVariable(name: "binary", scope: !1397, file: !3, line: 869, type: !67)
!1410 = !DILocalVariable(name: "prefix_tag", scope: !1397, file: !3, line: 870, type: !204)
!1411 = !DILocalVariable(name: "short_opts", scope: !1397, file: !3, line: 889, type: !65)
!1412 = !DILocalVariable(name: "operand_lim", scope: !1397, file: !3, line: 1038, type: !1400)
!1413 = !DILocalVariable(name: "operandp", scope: !1414, file: !3, line: 1042, type: !1400)
!1414 = distinct !DILexicalBlock(scope: !1397, file: !3, line: 1042, column: 3)
!1415 = !DILocalVariable(name: "file", scope: !1416, file: !3, line: 1044, type: !63)
!1416 = distinct !DILexicalBlock(scope: !1417, file: !3, line: 1043, column: 5)
!1417 = distinct !DILexicalBlock(scope: !1414, file: !3, line: 1042, column: 3)
!1418 = !DILocalVariable(name: "file_is_binary", scope: !1419, file: !3, line: 1050, type: !67)
!1419 = distinct !DILexicalBlock(scope: !1420, file: !3, line: 1049, column: 9)
!1420 = distinct !DILexicalBlock(scope: !1416, file: !3, line: 1046, column: 11)
!1421 = !DILocalVariable(name: "missing", scope: !1419, file: !3, line: 1051, type: !204)
!1422 = !DILocalVariable(name: "needs_escape", scope: !1423, file: !3, line: 1064, type: !204)
!1423 = distinct !DILexicalBlock(scope: !1424, file: !3, line: 1056, column: 13)
!1424 = distinct !DILexicalBlock(scope: !1419, file: !3, line: 1053, column: 15)
!1425 = !DILocalVariable(name: "i", scope: !1426, file: !3, line: 1089, type: !121)
!1426 = distinct !DILexicalBlock(scope: !1423, file: !3, line: 1089, column: 15)
!1427 = !DILocation(line: 661, column: 17, scope: !223, inlinedAt: !1428)
!1428 = distinct !DILocation(line: 1047, column: 15, scope: !1420)
!1429 = !DILocation(line: 0, scope: !1397)
!1430 = !DILocation(line: 863, column: 3, scope: !1397)
!1431 = !DILocation(line: 863, column: 17, scope: !1397)
!1432 = !DILocalVariable(name: "ptr", arg: 1, scope: !1433, file: !36, line: 501, type: !348)
!1433 = distinct !DISubprogram(name: "ptr_align", scope: !36, file: !36, line: 501, type: !1434, scopeLine: 502, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1436)
!1434 = !DISubroutineType(types: !1435)
!1435 = !{!119, !348, !121}
!1436 = !{!1432, !1437, !1438, !1439}
!1437 = !DILocalVariable(name: "alignment", arg: 2, scope: !1433, file: !36, line: 501, type: !121)
!1438 = !DILocalVariable(name: "p0", scope: !1433, file: !36, line: 503, type: !65)
!1439 = !DILocalVariable(name: "p1", scope: !1433, file: !36, line: 504, type: !65)
!1440 = !DILocation(line: 0, scope: !1433, inlinedAt: !1441)
!1441 = distinct !DILocation(line: 865, column: 31, scope: !1397)
!1442 = !DILocation(line: 504, column: 35, scope: !1433, inlinedAt: !1441)
!1443 = !DILocation(line: 505, column: 25, scope: !1433, inlinedAt: !1441)
!1444 = !DILocation(line: 505, column: 37, scope: !1433, inlinedAt: !1441)
!1445 = !DILocation(line: 505, column: 23, scope: !1433, inlinedAt: !1441)
!1446 = !DILocation(line: 874, column: 21, scope: !1397)
!1447 = !DILocation(line: 874, column: 3, scope: !1397)
!1448 = !DILocation(line: 875, column: 3, scope: !1397)
!1449 = !DILocation(line: 876, column: 3, scope: !1397)
!1450 = !DILocation(line: 877, column: 3, scope: !1397)
!1451 = !DILocation(line: 879, column: 3, scope: !1397)
!1452 = !DILocation(line: 883, column: 12, scope: !1397)
!1453 = !DILocation(line: 883, column: 3, scope: !1397)
!1454 = !DILocation(line: 892, column: 3, scope: !1397)
!1455 = !DILocation(line: 869, column: 7, scope: !1397)
!1456 = !DILocation(line: 870, column: 8, scope: !1397)
!1457 = !DILocation(line: 866, column: 8, scope: !1397)
!1458 = !DILocation(line: 892, column: 17, scope: !1397)
!1459 = distinct !{!1459, !1454, !1460}
!1460 = !DILocation(line: 948, column: 7, scope: !1397)
!1461 = !DILocation(line: 912, column: 9, scope: !1462)
!1462 = distinct !DILexicalBlock(scope: !1397, file: !3, line: 894, column: 7)
!1463 = !DILocation(line: 914, column: 21, scope: !1462)
!1464 = !DILocation(line: 915, column: 14, scope: !1462)
!1465 = !DILocation(line: 916, column: 15, scope: !1462)
!1466 = !DILocation(line: 917, column: 9, scope: !1462)
!1467 = !DILocation(line: 920, column: 9, scope: !1462)
!1468 = !DILocation(line: 922, column: 21, scope: !1462)
!1469 = !DILocation(line: 923, column: 14, scope: !1462)
!1470 = !DILocation(line: 924, column: 15, scope: !1462)
!1471 = !DILocation(line: 925, column: 9, scope: !1462)
!1472 = !DILocation(line: 927, column: 24, scope: !1462)
!1473 = !DILocation(line: 928, column: 9, scope: !1462)
!1474 = !DILocation(line: 930, column: 21, scope: !1462)
!1475 = !DILocation(line: 931, column: 14, scope: !1462)
!1476 = !DILocation(line: 932, column: 15, scope: !1462)
!1477 = !DILocation(line: 933, column: 9, scope: !1462)
!1478 = !DILocation(line: 935, column: 16, scope: !1462)
!1479 = !DILocation(line: 936, column: 9, scope: !1462)
!1480 = !DILocation(line: 940, column: 9, scope: !1462)
!1481 = !DILocation(line: 942, column: 15, scope: !1462)
!1482 = !DILocation(line: 943, column: 9, scope: !1462)
!1483 = !DILocation(line: 944, column: 7, scope: !1462)
!1484 = !DILocation(line: 945, column: 7, scope: !1462)
!1485 = !DILocation(line: 947, column: 9, scope: !1462)
!1486 = !DILocation(line: 950, column: 26, scope: !1397)
!1487 = !DILocation(line: 964, column: 20, scope: !1397)
!1488 = !DILocation(line: 967, column: 7, scope: !1489)
!1489 = distinct !DILexicalBlock(scope: !1397, file: !3, line: 967, column: 7)
!1490 = !DILocation(line: 967, column: 18, scope: !1489)
!1491 = !DILocation(line: 967, column: 22, scope: !1489)
!1492 = !DILocation(line: 974, column: 19, scope: !1493)
!1493 = distinct !DILexicalBlock(scope: !1489, file: !3, line: 968, column: 4)
!1494 = !DILocation(line: 974, column: 6, scope: !1493)
!1495 = !DILocation(line: 975, column: 6, scope: !1493)
!1496 = !DILocation(line: 978, column: 7, scope: !1497)
!1497 = distinct !DILexicalBlock(scope: !1397, file: !3, line: 978, column: 7)
!1498 = !DILocation(line: 978, column: 21, scope: !1497)
!1499 = !DILocation(line: 978, column: 24, scope: !1497)
!1500 = !DILocation(line: 980, column: 20, scope: !1501)
!1501 = distinct !DILexicalBlock(scope: !1497, file: !3, line: 979, column: 5)
!1502 = !DILocation(line: 980, column: 7, scope: !1501)
!1503 = !DILocation(line: 982, column: 7, scope: !1501)
!1504 = !DILocation(line: 985, column: 18, scope: !1505)
!1505 = distinct !DILexicalBlock(scope: !1397, file: !3, line: 985, column: 7)
!1506 = !DILocation(line: 987, column: 20, scope: !1507)
!1507 = distinct !DILexicalBlock(scope: !1505, file: !3, line: 986, column: 5)
!1508 = !DILocation(line: 987, column: 7, scope: !1507)
!1509 = !DILocation(line: 989, column: 7, scope: !1507)
!1510 = !DILocation(line: 992, column: 9, scope: !1511)
!1511 = distinct !DILexicalBlock(scope: !1397, file: !3, line: 992, column: 7)
!1512 = !DILocation(line: 992, column: 19, scope: !1511)
!1513 = !DILocation(line: 994, column: 20, scope: !1514)
!1514 = distinct !DILexicalBlock(scope: !1511, file: !3, line: 993, column: 5)
!1515 = !DILocation(line: 994, column: 7, scope: !1514)
!1516 = !DILocation(line: 996, column: 7, scope: !1514)
!1517 = !DILocation(line: 999, column: 7, scope: !1518)
!1518 = distinct !DILexicalBlock(scope: !1397, file: !3, line: 999, column: 7)
!1519 = !DILocation(line: 999, column: 22, scope: !1518)
!1520 = !DILocation(line: 1002, column: 14, scope: !1521)
!1521 = distinct !DILexicalBlock(scope: !1518, file: !3, line: 1000, column: 5)
!1522 = !DILocation(line: 1001, column: 7, scope: !1521)
!1523 = !DILocation(line: 1004, column: 7, scope: !1521)
!1524 = !DILocation(line: 1007, column: 7, scope: !1525)
!1525 = distinct !DILexicalBlock(scope: !1397, file: !3, line: 1007, column: 7)
!1526 = !DILocation(line: 1007, column: 19, scope: !1525)
!1527 = !DILocation(line: 1010, column: 8, scope: !1528)
!1528 = distinct !DILexicalBlock(scope: !1525, file: !3, line: 1008, column: 5)
!1529 = !DILocation(line: 1009, column: 7, scope: !1528)
!1530 = !DILocation(line: 1011, column: 7, scope: !1528)
!1531 = !DILocation(line: 1014, column: 7, scope: !1532)
!1532 = distinct !DILexicalBlock(scope: !1397, file: !3, line: 1014, column: 7)
!1533 = !DILocation(line: 1014, column: 12, scope: !1532)
!1534 = !DILocation(line: 1017, column: 8, scope: !1535)
!1535 = distinct !DILexicalBlock(scope: !1532, file: !3, line: 1015, column: 5)
!1536 = !DILocation(line: 1016, column: 7, scope: !1535)
!1537 = !DILocation(line: 1018, column: 7, scope: !1535)
!1538 = !DILocation(line: 1021, column: 7, scope: !1539)
!1539 = distinct !DILexicalBlock(scope: !1397, file: !3, line: 1021, column: 7)
!1540 = !DILocation(line: 1021, column: 13, scope: !1539)
!1541 = !DILocation(line: 1024, column: 8, scope: !1542)
!1542 = distinct !DILexicalBlock(scope: !1539, file: !3, line: 1022, column: 5)
!1543 = !DILocation(line: 1023, column: 7, scope: !1542)
!1544 = !DILocation(line: 1025, column: 7, scope: !1542)
!1545 = !DILocation(line: 1028, column: 7, scope: !1546)
!1546 = distinct !DILexicalBlock(scope: !1397, file: !3, line: 1028, column: 7)
!1547 = !DILocation(line: 1028, column: 17, scope: !1546)
!1548 = !DILocation(line: 1028, column: 16, scope: !1546)
!1549 = !DILocation(line: 1028, column: 14, scope: !1546)
!1550 = !DILocation(line: 1028, column: 7, scope: !1397)
!1551 = !DILocation(line: 1031, column: 9, scope: !1552)
!1552 = distinct !DILexicalBlock(scope: !1546, file: !3, line: 1029, column: 4)
!1553 = !DILocation(line: 1030, column: 6, scope: !1552)
!1554 = !DILocation(line: 1032, column: 6, scope: !1552)
!1555 = !DILocation(line: 1035, column: 7, scope: !1397)
!1556 = !DILocation(line: 1038, column: 29, scope: !1397)
!1557 = !DILocation(line: 1039, column: 7, scope: !1558)
!1558 = distinct !DILexicalBlock(scope: !1397, file: !3, line: 1039, column: 7)
!1559 = !{!1560, !1560, i64 0}
!1560 = !{!"int", !1349, i64 0}
!1561 = !DILocation(line: 1039, column: 14, scope: !1558)
!1562 = !DILocation(line: 1039, column: 7, scope: !1397)
!1563 = !DILocation(line: 1040, column: 17, scope: !1558)
!1564 = !DILocation(line: 1040, column: 20, scope: !1558)
!1565 = !DILocation(line: 1040, column: 5, scope: !1558)
!1566 = !DILocation(line: 1042, column: 31, scope: !1414)
!1567 = !DILocation(line: 0, scope: !1414)
!1568 = !DILocation(line: 1042, column: 50, scope: !1417)
!1569 = !DILocation(line: 1042, column: 3, scope: !1414)
!1570 = !DILocation(line: 0, scope: !1571)
!1571 = distinct !DILexicalBlock(scope: !1572, file: !3, line: 1093, column: 17)
!1572 = distinct !DILexicalBlock(scope: !1423, file: !3, line: 1092, column: 19)
!1573 = !DILocation(line: 0, scope: !1574, inlinedAt: !1578)
!1574 = distinct !DISubprogram(name: "putchar_unlocked", scope: !1575, file: !1575, line: 108, type: !553, scopeLine: 109, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1576)
!1575 = !DIFile(filename: "/usr/include/bits/stdio.h", directory: "")
!1576 = !{!1577}
!1577 = !DILocalVariable(name: "__c", arg: 1, scope: !1574, file: !1575, line: 108, type: !67)
!1578 = distinct !DILocation(line: 1096, column: 19, scope: !1571)
!1579 = !DILocation(line: 0, scope: !223, inlinedAt: !1428)
!1580 = !DILocation(line: 0, scope: !1433, inlinedAt: !1581)
!1581 = distinct !DILocation(line: 663, column: 31, scope: !223, inlinedAt: !1428)
!1582 = !DILocation(line: 1106, column: 7, scope: !1583)
!1583 = distinct !DILexicalBlock(scope: !1397, file: !3, line: 1106, column: 7)
!1584 = !DILocation(line: 1106, column: 23, scope: !1583)
!1585 = !DILocation(line: 1044, column: 20, scope: !1416)
!1586 = !DILocation(line: 0, scope: !1416)
!1587 = !DILocation(line: 1046, column: 11, scope: !1416)
!1588 = !DILocation(line: 661, column: 3, scope: !223, inlinedAt: !1428)
!1589 = !DILocation(line: 665, column: 3, scope: !223, inlinedAt: !1428)
!1590 = !DILocation(line: 666, column: 3, scope: !223, inlinedAt: !1428)
!1591 = !DILocation(line: 667, column: 19, scope: !223, inlinedAt: !1428)
!1592 = !DILocation(line: 669, column: 7, scope: !223, inlinedAt: !1428)
!1593 = !DILocation(line: 671, column: 23, scope: !1594, inlinedAt: !1428)
!1594 = distinct !DILexicalBlock(scope: !1595, file: !3, line: 670, column: 5)
!1595 = distinct !DILexicalBlock(scope: !223, file: !3, line: 669, column: 7)
!1596 = !DILocation(line: 672, column: 24, scope: !1594, inlinedAt: !1428)
!1597 = !DILocation(line: 673, column: 26, scope: !1594, inlinedAt: !1428)
!1598 = !DILocation(line: 674, column: 5, scope: !1594, inlinedAt: !1428)
!1599 = !DILocation(line: 677, column: 26, scope: !1600, inlinedAt: !1428)
!1600 = distinct !DILexicalBlock(scope: !1595, file: !3, line: 676, column: 5)
!1601 = !DILocation(line: 678, column: 28, scope: !1602, inlinedAt: !1428)
!1602 = distinct !DILexicalBlock(scope: !1600, file: !3, line: 678, column: 11)
!1603 = !DILocation(line: 678, column: 11, scope: !1600, inlinedAt: !1428)
!1604 = !DILocation(line: 680, column: 21, scope: !1605, inlinedAt: !1428)
!1605 = distinct !DILexicalBlock(scope: !1602, file: !3, line: 679, column: 9)
!1606 = !DILocation(line: 680, column: 34, scope: !1605, inlinedAt: !1428)
!1607 = !DILocation(line: 680, column: 11, scope: !1605, inlinedAt: !1428)
!1608 = !DILocation(line: 681, column: 11, scope: !1605, inlinedAt: !1428)
!1609 = !DILocation(line: 0, scope: !1595, inlinedAt: !1428)
!1610 = !DILocation(line: 686, column: 8, scope: !223, inlinedAt: !1428)
!1611 = !DILocation(line: 687, column: 24, scope: !223, inlinedAt: !1428)
!1612 = !{!1613, !1613, i64 0}
!1613 = !{!"long", !1349, i64 0}
!1614 = !DILocation(line: 0, scope: !1615, inlinedAt: !1620)
!1615 = distinct !DISubprogram(name: "feof_unlocked", scope: !1575, file: !1575, line: 128, type: !1616, scopeLine: 129, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1618)
!1616 = !DISubroutineType(types: !1617)
!1617 = !{!67, !229}
!1618 = !{!1619}
!1619 = !DILocalVariable(name: "__stream", arg: 1, scope: !1615, file: !1575, line: 128, type: !229)
!1620 = distinct !DILocation(line: 797, column: 11, scope: !223, inlinedAt: !1428)
!1621 = !DILocation(line: 688, column: 3, scope: !223, inlinedAt: !1428)
!1622 = !DILocation(line: 660, column: 8, scope: !223, inlinedAt: !1428)
!1623 = !DILocation(line: 659, column: 8, scope: !223, inlinedAt: !1428)
!1624 = !DILocation(line: 658, column: 13, scope: !223, inlinedAt: !1428)
!1625 = !DILocation(line: 657, column: 13, scope: !223, inlinedAt: !1428)
!1626 = !DILocation(line: 656, column: 13, scope: !223, inlinedAt: !1428)
!1627 = !DILocation(line: 655, column: 13, scope: !223, inlinedAt: !1428)
!1628 = !DILocation(line: 695, column: 7, scope: !248, inlinedAt: !1428)
!1629 = !DILocation(line: 696, column: 23, scope: !1630, inlinedAt: !1428)
!1630 = distinct !DILexicalBlock(scope: !248, file: !3, line: 696, column: 11)
!1631 = !DILocation(line: 696, column: 11, scope: !248, inlinedAt: !1428)
!1632 = !DILocation(line: 697, column: 9, scope: !1630, inlinedAt: !1428)
!1633 = !DILocalVariable(name: "__lineptr", arg: 1, scope: !1634, file: !1575, line: 118, type: !1400)
!1634 = distinct !DISubprogram(name: "getline", scope: !1575, file: !1575, line: 118, type: !1635, scopeLine: 119, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1637)
!1635 = !DISubroutineType(types: !1636)
!1636 = !{!254, !1400, !706, !229}
!1637 = !{!1633, !1638, !1639}
!1638 = !DILocalVariable(name: "__n", arg: 2, scope: !1634, file: !1575, line: 118, type: !706)
!1639 = !DILocalVariable(name: "__stream", arg: 3, scope: !1634, file: !1575, line: 118, type: !229)
!1640 = !DILocation(line: 0, scope: !1634, inlinedAt: !1641)
!1641 = distinct !DILocation(line: 700, column: 21, scope: !248, inlinedAt: !1428)
!1642 = !DILocation(line: 120, column: 10, scope: !1634, inlinedAt: !1641)
!1643 = !DILocation(line: 0, scope: !248, inlinedAt: !1428)
!1644 = !DILocation(line: 701, column: 23, scope: !1645, inlinedAt: !1428)
!1645 = distinct !DILexicalBlock(scope: !248, file: !3, line: 701, column: 11)
!1646 = !DILocation(line: 701, column: 11, scope: !248, inlinedAt: !1428)
!1647 = !DILocation(line: 705, column: 11, scope: !1648, inlinedAt: !1428)
!1648 = distinct !DILexicalBlock(scope: !248, file: !3, line: 705, column: 11)
!1649 = !{!1349, !1349, i64 0}
!1650 = !DILocation(line: 705, column: 19, scope: !1648, inlinedAt: !1428)
!1651 = !DILocation(line: 705, column: 11, scope: !248, inlinedAt: !1428)
!1652 = !DILocation(line: 709, column: 28, scope: !1653, inlinedAt: !1428)
!1653 = distinct !DILexicalBlock(scope: !248, file: !3, line: 709, column: 11)
!1654 = !DILocation(line: 709, column: 11, scope: !1653, inlinedAt: !1428)
!1655 = !DILocation(line: 709, column: 33, scope: !1653, inlinedAt: !1428)
!1656 = !DILocation(line: 709, column: 11, scope: !248, inlinedAt: !1428)
!1657 = !DILocation(line: 710, column: 29, scope: !1653, inlinedAt: !1428)
!1658 = !DILocation(line: 712, column: 23, scope: !257, inlinedAt: !1428)
!1659 = !DILocation(line: 710, column: 9, scope: !1653, inlinedAt: !1428)
!1660 = !DILocalVariable(name: "s", arg: 1, scope: !1661, file: !3, line: 419, type: !63)
!1661 = distinct !DISubprogram(name: "split_3", scope: !3, file: !3, line: 419, type: !1662, scopeLine: 421, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1665)
!1662 = !DISubroutineType(types: !1663)
!1663 = !{!204, !63, !121, !1664, !165, !1400}
!1664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !192, size: 64)
!1665 = !{!1660, !1666, !1667, !1668, !1669, !1670, !1671, !1672}
!1666 = !DILocalVariable(name: "s_len", arg: 2, scope: !1661, file: !3, line: 419, type: !121)
!1667 = !DILocalVariable(name: "hex_digest", arg: 3, scope: !1661, file: !3, line: 420, type: !1664)
!1668 = !DILocalVariable(name: "binary", arg: 4, scope: !1661, file: !3, line: 420, type: !165)
!1669 = !DILocalVariable(name: "file_name", arg: 5, scope: !1661, file: !3, line: 420, type: !1400)
!1670 = !DILocalVariable(name: "escaped_filename", scope: !1661, file: !3, line: 422, type: !204)
!1671 = !DILocalVariable(name: "algo_name_len", scope: !1661, file: !3, line: 423, type: !121)
!1672 = !DILocalVariable(name: "i", scope: !1661, file: !3, line: 425, type: !121)
!1673 = !DILocation(line: 0, scope: !1661, inlinedAt: !1674)
!1674 = distinct !DILocation(line: 712, column: 14, scope: !257, inlinedAt: !1428)
!1675 = !DILocation(line: 426, column: 3, scope: !1661, inlinedAt: !1674)
!1676 = !DILocation(line: 426, column: 10, scope: !1661, inlinedAt: !1674)
!1677 = !DILocation(line: 427, column: 5, scope: !1661, inlinedAt: !1674)
!1678 = distinct !{!1678, !1675, !1679}
!1679 = !DILocation(line: 427, column: 7, scope: !1661, inlinedAt: !1674)
!1680 = !DILocation(line: 431, column: 7, scope: !1681, inlinedAt: !1674)
!1681 = distinct !DILexicalBlock(scope: !1682, file: !3, line: 430, column: 5)
!1682 = distinct !DILexicalBlock(scope: !1661, file: !3, line: 429, column: 7)
!1683 = !DILocation(line: 433, column: 5, scope: !1681, inlinedAt: !1674)
!1684 = !DILocation(line: 438, column: 7, scope: !1685, inlinedAt: !1674)
!1685 = distinct !DILexicalBlock(scope: !1661, file: !3, line: 438, column: 7)
!1686 = !DILocation(line: 438, column: 7, scope: !1661, inlinedAt: !1674)
!1687 = !DILocation(line: 440, column: 9, scope: !1688, inlinedAt: !1674)
!1688 = distinct !DILexicalBlock(scope: !1685, file: !3, line: 439, column: 5)
!1689 = !DILocation(line: 473, column: 11, scope: !1690, inlinedAt: !1674)
!1690 = distinct !DILexicalBlock(scope: !1688, file: !3, line: 473, column: 11)
!1691 = !DILocation(line: 473, column: 16, scope: !1690, inlinedAt: !1674)
!1692 = !DILocation(line: 474, column: 9, scope: !1690, inlinedAt: !1674)
!1693 = !DILocation(line: 473, column: 11, scope: !1688, inlinedAt: !1674)
!1694 = !DILocation(line: 475, column: 11, scope: !1695, inlinedAt: !1674)
!1695 = distinct !DILexicalBlock(scope: !1688, file: !3, line: 475, column: 11)
!1696 = !DILocation(line: 475, column: 16, scope: !1695, inlinedAt: !1674)
!1697 = !DILocation(line: 475, column: 11, scope: !1688, inlinedAt: !1674)
!1698 = !DILocation(line: 477, column: 11, scope: !1699, inlinedAt: !1674)
!1699 = distinct !DILexicalBlock(scope: !1695, file: !3, line: 476, column: 9)
!1700 = !DILocation(line: 479, column: 33, scope: !1699, inlinedAt: !1674)
!1701 = !DILocation(line: 479, column: 44, scope: !1699, inlinedAt: !1674)
!1702 = !DILocalVariable(name: "s", arg: 1, scope: !1703, file: !3, line: 375, type: !63)
!1703 = distinct !DISubprogram(name: "bsd_split_3", scope: !3, file: !3, line: 375, type: !1704, scopeLine: 377, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1706)
!1704 = !DISubroutineType(types: !1705)
!1705 = !{!204, !63, !121, !1664, !1400, !204}
!1706 = !{!1702, !1707, !1708, !1709, !1710, !1711}
!1707 = !DILocalVariable(name: "s_len", arg: 2, scope: !1703, file: !3, line: 375, type: !121)
!1708 = !DILocalVariable(name: "hex_digest", arg: 3, scope: !1703, file: !3, line: 375, type: !1664)
!1709 = !DILocalVariable(name: "file_name", arg: 4, scope: !1703, file: !3, line: 376, type: !1400)
!1710 = !DILocalVariable(name: "escaped_filename", arg: 5, scope: !1703, file: !3, line: 376, type: !204)
!1711 = !DILocalVariable(name: "i", scope: !1703, file: !3, line: 378, type: !121)
!1712 = !DILocation(line: 0, scope: !1703, inlinedAt: !1713)
!1713 = distinct !DILocation(line: 479, column: 18, scope: !1699, inlinedAt: !1674)
!1714 = !DILocation(line: 380, column: 13, scope: !1715, inlinedAt: !1713)
!1715 = distinct !DILexicalBlock(scope: !1703, file: !3, line: 380, column: 7)
!1716 = !DILocation(line: 380, column: 7, scope: !1703, inlinedAt: !1713)
!1717 = !DILocation(line: 385, column: 10, scope: !1703, inlinedAt: !1713)
!1718 = !DILocation(line: 385, column: 12, scope: !1703, inlinedAt: !1713)
!1719 = !DILocation(line: 385, column: 15, scope: !1703, inlinedAt: !1713)
!1720 = !DILocation(line: 385, column: 20, scope: !1703, inlinedAt: !1713)
!1721 = !DILocation(line: 385, column: 3, scope: !1703, inlinedAt: !1713)
!1722 = distinct !{!1722, !1721, !1723}
!1723 = !DILocation(line: 386, column: 6, scope: !1703, inlinedAt: !1713)
!1724 = !DILocation(line: 388, column: 7, scope: !1725, inlinedAt: !1713)
!1725 = distinct !DILexicalBlock(scope: !1703, file: !3, line: 388, column: 7)
!1726 = !DILocation(line: 388, column: 7, scope: !1703, inlinedAt: !1713)
!1727 = !DILocation(line: 393, column: 24, scope: !1728, inlinedAt: !1713)
!1728 = distinct !DILexicalBlock(scope: !1703, file: !3, line: 393, column: 7)
!1729 = !DILocalVariable(name: "s", arg: 1, scope: !1730, file: !3, line: 312, type: !63)
!1730 = distinct !DISubprogram(name: "filename_unescape", scope: !3, file: !3, line: 312, type: !1731, scopeLine: 313, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1733)
!1731 = !DISubroutineType(types: !1732)
!1732 = !{!63, !63, !121}
!1733 = !{!1729, !1734, !1735, !1736}
!1734 = !DILocalVariable(name: "s_len", arg: 2, scope: !1730, file: !3, line: 312, type: !121)
!1735 = !DILocalVariable(name: "dst", scope: !1730, file: !3, line: 314, type: !63)
!1736 = !DILocalVariable(name: "i", scope: !1737, file: !3, line: 316, type: !121)
!1737 = distinct !DILexicalBlock(scope: !1730, file: !3, line: 316, column: 3)
!1738 = !DILocation(line: 0, scope: !1730, inlinedAt: !1739)
!1739 = distinct !DILocation(line: 393, column: 27, scope: !1728, inlinedAt: !1713)
!1740 = !DILocation(line: 0, scope: !1737, inlinedAt: !1739)
!1741 = !DILocation(line: 316, column: 3, scope: !1737, inlinedAt: !1739)
!1742 = !DILocation(line: 0, scope: !1743, inlinedAt: !1739)
!1743 = distinct !DILexicalBlock(scope: !1744, file: !3, line: 321, column: 15)
!1744 = distinct !DILexicalBlock(scope: !1745, file: !3, line: 319, column: 9)
!1745 = distinct !DILexicalBlock(scope: !1746, file: !3, line: 317, column: 5)
!1746 = distinct !DILexicalBlock(scope: !1737, file: !3, line: 316, column: 3)
!1747 = !DILocation(line: 318, column: 15, scope: !1745, inlinedAt: !1739)
!1748 = !DILocation(line: 318, column: 7, scope: !1745, inlinedAt: !1739)
!1749 = !DILocation(line: 321, column: 17, scope: !1743, inlinedAt: !1739)
!1750 = !DILocation(line: 321, column: 15, scope: !1744, inlinedAt: !1739)
!1751 = !DILocation(line: 326, column: 11, scope: !1744, inlinedAt: !1739)
!1752 = !DILocation(line: 327, column: 19, scope: !1744, inlinedAt: !1739)
!1753 = !DILocation(line: 327, column: 11, scope: !1744, inlinedAt: !1739)
!1754 = !DILocation(line: 334, column: 15, scope: !1755, inlinedAt: !1739)
!1755 = distinct !DILexicalBlock(scope: !1744, file: !3, line: 328, column: 13)
!1756 = !DILocation(line: 0, scope: !1744, inlinedAt: !1739)
!1757 = !DILocation(line: 316, column: 34, scope: !1746, inlinedAt: !1739)
!1758 = !DILocation(line: 316, column: 24, scope: !1746, inlinedAt: !1739)
!1759 = distinct !{!1759, !1741, !1760}
!1760 = !DILocation(line: 349, column: 5, scope: !1737, inlinedAt: !1739)
!1761 = !DILocation(line: 350, column: 11, scope: !1762, inlinedAt: !1739)
!1762 = distinct !DILexicalBlock(scope: !1730, file: !3, line: 350, column: 7)
!1763 = !DILocation(line: 350, column: 7, scope: !1730, inlinedAt: !1739)
!1764 = !DILocation(line: 351, column: 10, scope: !1762, inlinedAt: !1739)
!1765 = !DILocation(line: 351, column: 5, scope: !1762, inlinedAt: !1739)
!1766 = !DILocation(line: 396, column: 10, scope: !1703, inlinedAt: !1713)
!1767 = !DILocation(line: 398, column: 3, scope: !1703, inlinedAt: !1713)
!1768 = !DILocation(line: 398, column: 10, scope: !1703, inlinedAt: !1713)
!1769 = !DILocation(line: 399, column: 6, scope: !1703, inlinedAt: !1713)
!1770 = distinct !{!1770, !1767, !1769}
!1771 = !DILocation(line: 406, column: 10, scope: !1703, inlinedAt: !1713)
!1772 = distinct !{!1772, !1773, !1774}
!1773 = !DILocation(line: 406, column: 3, scope: !1703, inlinedAt: !1713)
!1774 = !DILocation(line: 407, column: 6, scope: !1703, inlinedAt: !1713)
!1775 = !DILocalVariable(name: "s", arg: 1, scope: !1776, file: !3, line: 359, type: !1779)
!1776 = distinct !DISubprogram(name: "hex_digits", scope: !3, file: !3, line: 359, type: !1777, scopeLine: 360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1780)
!1777 = !DISubroutineType(types: !1778)
!1778 = !{!204, !1779}
!1779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !374, size: 64)
!1780 = !{!1775, !1781}
!1781 = !DILocalVariable(name: "i", scope: !1782, file: !3, line: 361, type: !7)
!1782 = distinct !DILexicalBlock(scope: !1776, file: !3, line: 361, column: 3)
!1783 = !DILocation(line: 0, scope: !1776, inlinedAt: !1784)
!1784 = distinct !DILocation(line: 411, column: 10, scope: !1703, inlinedAt: !1713)
!1785 = !DILocation(line: 0, scope: !1782, inlinedAt: !1784)
!1786 = !DILocation(line: 361, column: 32, scope: !1787, inlinedAt: !1784)
!1787 = distinct !DILexicalBlock(scope: !1782, file: !3, line: 361, column: 3)
!1788 = !DILocation(line: 361, column: 3, scope: !1782, inlinedAt: !1784)
!1789 = !DILocation(line: 0, scope: !1790, inlinedAt: !1784)
!1790 = distinct !DILexicalBlock(scope: !1791, file: !3, line: 363, column: 11)
!1791 = distinct !DILexicalBlock(scope: !1787, file: !3, line: 362, column: 5)
!1792 = !DILocation(line: 363, column: 12, scope: !1790, inlinedAt: !1784)
!1793 = !{!1794, !1794, i64 0}
!1794 = !{!"short", !1349, i64 0}
!1795 = !DILocation(line: 363, column: 11, scope: !1791, inlinedAt: !1784)
!1796 = !DILocation(line: 365, column: 7, scope: !1791, inlinedAt: !1784)
!1797 = !DILocation(line: 361, column: 51, scope: !1787, inlinedAt: !1784)
!1798 = !DILocation(line: 361, column: 30, scope: !1787, inlinedAt: !1784)
!1799 = distinct !{!1799, !1788, !1800}
!1800 = !DILocation(line: 366, column: 5, scope: !1782, inlinedAt: !1784)
!1801 = !DILocation(line: 489, column: 13, scope: !1802, inlinedAt: !1674)
!1802 = distinct !DILexicalBlock(scope: !1661, file: !3, line: 489, column: 7)
!1803 = !DILocation(line: 489, column: 19, scope: !1802, inlinedAt: !1674)
!1804 = !DILocation(line: 489, column: 45, scope: !1802, inlinedAt: !1674)
!1805 = !DILocation(line: 489, column: 50, scope: !1802, inlinedAt: !1674)
!1806 = !DILocation(line: 489, column: 44, scope: !1802, inlinedAt: !1674)
!1807 = !DILocation(line: 489, column: 42, scope: !1802, inlinedAt: !1674)
!1808 = !DILocation(line: 489, column: 17, scope: !1802, inlinedAt: !1674)
!1809 = !DILocation(line: 489, column: 7, scope: !1661, inlinedAt: !1674)
!1810 = !DILocation(line: 509, column: 8, scope: !1661, inlinedAt: !1674)
!1811 = !DILocation(line: 509, column: 5, scope: !1661, inlinedAt: !1674)
!1812 = !DILocation(line: 510, column: 8, scope: !1813, inlinedAt: !1674)
!1813 = distinct !DILexicalBlock(scope: !1661, file: !3, line: 510, column: 7)
!1814 = !DILocation(line: 513, column: 6, scope: !1661, inlinedAt: !1674)
!1815 = !DILocation(line: 513, column: 10, scope: !1661, inlinedAt: !1674)
!1816 = !DILocation(line: 0, scope: !1776, inlinedAt: !1817)
!1817 = distinct !DILocation(line: 515, column: 9, scope: !1818, inlinedAt: !1674)
!1818 = distinct !DILexicalBlock(scope: !1661, file: !3, line: 515, column: 7)
!1819 = !DILocation(line: 0, scope: !1782, inlinedAt: !1817)
!1820 = !DILocation(line: 361, column: 3, scope: !1782, inlinedAt: !1817)
!1821 = !DILocation(line: 0, scope: !1790, inlinedAt: !1817)
!1822 = !DILocation(line: 363, column: 12, scope: !1790, inlinedAt: !1817)
!1823 = !DILocation(line: 363, column: 11, scope: !1791, inlinedAt: !1817)
!1824 = !DILocation(line: 365, column: 7, scope: !1791, inlinedAt: !1817)
!1825 = !DILocation(line: 367, column: 10, scope: !1776, inlinedAt: !1817)
!1826 = !DILocation(line: 367, column: 13, scope: !1776, inlinedAt: !1817)
!1827 = !DILocation(line: 515, column: 7, scope: !1661, inlinedAt: !1674)
!1828 = !DILocation(line: 519, column: 14, scope: !1829, inlinedAt: !1674)
!1829 = distinct !DILexicalBlock(scope: !1661, file: !3, line: 519, column: 7)
!1830 = !DILocation(line: 519, column: 18, scope: !1829, inlinedAt: !1674)
!1831 = !DILocation(line: 519, column: 24, scope: !1829, inlinedAt: !1674)
!1832 = !DILocation(line: 519, column: 28, scope: !1829, inlinedAt: !1674)
!1833 = !DILocation(line: 519, column: 40, scope: !1829, inlinedAt: !1674)
!1834 = !DILocation(line: 527, column: 11, scope: !1835, inlinedAt: !1674)
!1835 = distinct !DILexicalBlock(scope: !1836, file: !3, line: 527, column: 11)
!1836 = distinct !DILexicalBlock(scope: !1829, file: !3, line: 520, column: 5)
!1837 = !DILocation(line: 527, column: 24, scope: !1835, inlinedAt: !1674)
!1838 = !DILocation(line: 527, column: 11, scope: !1836, inlinedAt: !1674)
!1839 = !DILocation(line: 529, column: 20, scope: !1836, inlinedAt: !1674)
!1840 = !DILocation(line: 530, column: 5, scope: !1836, inlinedAt: !1674)
!1841 = !DILocation(line: 531, column: 12, scope: !1842, inlinedAt: !1674)
!1842 = distinct !DILexicalBlock(scope: !1829, file: !3, line: 531, column: 12)
!1843 = !DILocation(line: 531, column: 25, scope: !1842, inlinedAt: !1674)
!1844 = !DILocation(line: 531, column: 12, scope: !1829, inlinedAt: !1674)
!1845 = !DILocation(line: 533, column: 20, scope: !1846, inlinedAt: !1674)
!1846 = distinct !DILexicalBlock(scope: !1842, file: !3, line: 532, column: 5)
!1847 = !DILocation(line: 534, column: 21, scope: !1846, inlinedAt: !1674)
!1848 = !DILocation(line: 535, column: 5, scope: !1846, inlinedAt: !1674)
!1849 = !DILocation(line: 539, column: 17, scope: !1661, inlinedAt: !1674)
!1850 = !DILocation(line: 541, column: 7, scope: !1661, inlinedAt: !1674)
!1851 = !DILocation(line: 542, column: 44, scope: !1852, inlinedAt: !1674)
!1852 = distinct !DILexicalBlock(scope: !1661, file: !3, line: 541, column: 7)
!1853 = !DILocation(line: 0, scope: !1730, inlinedAt: !1854)
!1854 = distinct !DILocation(line: 542, column: 12, scope: !1852, inlinedAt: !1674)
!1855 = !DILocation(line: 0, scope: !1737, inlinedAt: !1854)
!1856 = !DILocation(line: 316, column: 24, scope: !1746, inlinedAt: !1854)
!1857 = !DILocation(line: 316, column: 3, scope: !1737, inlinedAt: !1854)
!1858 = !DILocation(line: 0, scope: !1743, inlinedAt: !1854)
!1859 = !DILocation(line: 318, column: 15, scope: !1745, inlinedAt: !1854)
!1860 = !DILocation(line: 318, column: 7, scope: !1745, inlinedAt: !1854)
!1861 = !DILocation(line: 321, column: 17, scope: !1743, inlinedAt: !1854)
!1862 = !DILocation(line: 321, column: 15, scope: !1744, inlinedAt: !1854)
!1863 = !DILocation(line: 326, column: 11, scope: !1744, inlinedAt: !1854)
!1864 = !DILocation(line: 327, column: 19, scope: !1744, inlinedAt: !1854)
!1865 = !DILocation(line: 327, column: 11, scope: !1744, inlinedAt: !1854)
!1866 = !DILocation(line: 334, column: 15, scope: !1755, inlinedAt: !1854)
!1867 = !DILocation(line: 0, scope: !1744, inlinedAt: !1854)
!1868 = !DILocation(line: 316, column: 34, scope: !1746, inlinedAt: !1854)
!1869 = distinct !{!1869, !1857, !1870}
!1870 = !DILocation(line: 349, column: 5, scope: !1737, inlinedAt: !1854)
!1871 = !DILocation(line: 350, column: 15, scope: !1762, inlinedAt: !1854)
!1872 = !DILocation(line: 350, column: 11, scope: !1762, inlinedAt: !1854)
!1873 = !DILocation(line: 350, column: 7, scope: !1730, inlinedAt: !1854)
!1874 = !DILocation(line: 351, column: 10, scope: !1762, inlinedAt: !1854)
!1875 = !DILocation(line: 351, column: 5, scope: !1762, inlinedAt: !1854)
!1876 = !DILocation(line: 542, column: 49, scope: !1852, inlinedAt: !1674)
!1877 = !DILocation(line: 713, column: 14, scope: !257, inlinedAt: !1428)
!1878 = !DILocation(line: 367, column: 10, scope: !1776, inlinedAt: !1784)
!1879 = !DILocation(line: 367, column: 13, scope: !1776, inlinedAt: !1784)
!1880 = !DILocation(line: 713, column: 29, scope: !257, inlinedAt: !1428)
!1881 = !DILocation(line: 713, column: 32, scope: !257, inlinedAt: !1428)
!1882 = !DILocation(line: 712, column: 11, scope: !248, inlinedAt: !1428)
!1883 = !DILocation(line: 715, column: 11, scope: !1884, inlinedAt: !1428)
!1884 = distinct !DILexicalBlock(scope: !257, file: !3, line: 714, column: 9)
!1885 = !DILocation(line: 717, column: 15, scope: !1886, inlinedAt: !1428)
!1886 = distinct !DILexicalBlock(scope: !1884, file: !3, line: 717, column: 15)
!1887 = !DILocation(line: 717, column: 15, scope: !1884, inlinedAt: !1428)
!1888 = !DILocation(line: 720, column: 22, scope: !1889, inlinedAt: !1428)
!1889 = distinct !DILexicalBlock(scope: !1886, file: !3, line: 718, column: 13)
!1890 = !DILocation(line: 722, column: 22, scope: !1889, inlinedAt: !1428)
!1891 = !DILocation(line: 719, column: 15, scope: !1889, inlinedAt: !1428)
!1892 = !DILocation(line: 724, column: 13, scope: !1889, inlinedAt: !1428)
!1893 = !DILocation(line: 726, column: 11, scope: !1884, inlinedAt: !1428)
!1894 = !DILocation(line: 727, column: 9, scope: !1884, inlinedAt: !1428)
!1895 = !DILocation(line: 735, column: 11, scope: !256, inlinedAt: !1428)
!1896 = !DILocation(line: 738, column: 33, scope: !256, inlinedAt: !1428)
!1897 = !DILocation(line: 738, column: 45, scope: !256, inlinedAt: !1428)
!1898 = !DILocation(line: 738, column: 48, scope: !256, inlinedAt: !1428)
!1899 = !DILocation(line: 0, scope: !256, inlinedAt: !1428)
!1900 = !DILocation(line: 742, column: 16, scope: !256, inlinedAt: !1428)
!1901 = !DILocation(line: 744, column: 15, scope: !256, inlinedAt: !1428)
!1902 = !DILocation(line: 746, column: 15, scope: !1903, inlinedAt: !1428)
!1903 = distinct !DILexicalBlock(scope: !263, file: !3, line: 745, column: 13)
!1904 = !DILocation(line: 747, column: 20, scope: !1905, inlinedAt: !1428)
!1905 = distinct !DILexicalBlock(scope: !1903, file: !3, line: 747, column: 19)
!1906 = !DILocation(line: 747, column: 19, scope: !1903, inlinedAt: !1428)
!1907 = !DILocation(line: 749, column: 23, scope: !1908, inlinedAt: !1428)
!1908 = distinct !DILexicalBlock(scope: !1905, file: !3, line: 748, column: 17)
!1909 = !DILocation(line: 0, scope: !1574, inlinedAt: !1910)
!1910 = distinct !DILocation(line: 750, column: 21, scope: !1911, inlinedAt: !1428)
!1911 = distinct !DILexicalBlock(scope: !1908, file: !3, line: 749, column: 23)
!1912 = !DILocation(line: 110, column: 10, scope: !1574, inlinedAt: !1910)
!1913 = !{!1914, !1348, i64 40}
!1914 = !{!"_IO_FILE", !1560, i64 0, !1348, i64 8, !1348, i64 16, !1348, i64 24, !1348, i64 32, !1348, i64 40, !1348, i64 48, !1348, i64 56, !1348, i64 64, !1348, i64 72, !1348, i64 80, !1348, i64 88, !1348, i64 96, !1348, i64 104, !1560, i64 112, !1560, i64 116, !1613, i64 120, !1794, i64 128, !1349, i64 130, !1349, i64 131, !1348, i64 136, !1613, i64 144, !1348, i64 152, !1348, i64 160, !1348, i64 168, !1348, i64 176, !1613, i64 184, !1560, i64 192, !1349, i64 196}
!1915 = !{!1914, !1348, i64 48}
!1916 = !{!"branch_weights", i32 2000, i32 1}
!1917 = !{!"misexpect", i64 1, i64 2000, i64 1}
!1918 = !DILocation(line: 751, column: 19, scope: !1908, inlinedAt: !1428)
!1919 = !DILocation(line: 752, column: 19, scope: !1908, inlinedAt: !1428)
!1920 = !DILocation(line: 753, column: 17, scope: !1908, inlinedAt: !1428)
!1921 = !DILocation(line: 755, column: 20, scope: !262, inlinedAt: !1428)
!1922 = !DILocation(line: 755, column: 35, scope: !262, inlinedAt: !1428)
!1923 = !DILocation(line: 755, column: 38, scope: !262, inlinedAt: !1428)
!1924 = !DILocation(line: 762, column: 41, scope: !261, inlinedAt: !1428)
!1925 = !DILocation(line: 762, column: 58, scope: !261, inlinedAt: !1428)
!1926 = !DILocation(line: 0, scope: !261, inlinedAt: !1428)
!1927 = !DILocation(line: 767, column: 15, scope: !270, inlinedAt: !1428)
!1928 = !DILocation(line: 0, scope: !1929, inlinedAt: !1428)
!1929 = distinct !DILexicalBlock(scope: !266, file: !3, line: 769, column: 23)
!1930 = !DILocation(line: 769, column: 23, scope: !1929, inlinedAt: !1428)
!1931 = !DILocation(line: 0, scope: !266, inlinedAt: !1428)
!1932 = !DILocation(line: 770, column: 34, scope: !267, inlinedAt: !1428)
!1933 = !DILocation(line: 770, column: 50, scope: !267, inlinedAt: !1428)
!1934 = !DILocation(line: 770, column: 26, scope: !267, inlinedAt: !1428)
!1935 = !DILocation(line: 770, column: 23, scope: !267, inlinedAt: !1428)
!1936 = !DILocation(line: 771, column: 23, scope: !267, inlinedAt: !1428)
!1937 = !DILocation(line: 771, column: 27, scope: !1938, inlinedAt: !1428)
!1938 = distinct !DILexicalBlock(scope: !272, file: !3, line: 771, column: 27)
!1939 = !DILocation(line: 0, scope: !272, inlinedAt: !1428)
!1940 = !DILocation(line: 772, column: 55, scope: !267, inlinedAt: !1428)
!1941 = !DILocation(line: 772, column: 31, scope: !267, inlinedAt: !1428)
!1942 = !DILocation(line: 772, column: 30, scope: !267, inlinedAt: !1428)
!1943 = !DILocation(line: 772, column: 27, scope: !267, inlinedAt: !1428)
!1944 = !DILocation(line: 769, column: 23, scope: !268, inlinedAt: !1428)
!1945 = !DILocation(line: 767, column: 53, scope: !269, inlinedAt: !1428)
!1946 = !DILocation(line: 767, column: 33, scope: !269, inlinedAt: !1428)
!1947 = distinct !{!1947, !1927, !1948}
!1948 = !DILocation(line: 774, column: 17, scope: !270, inlinedAt: !1428)
!1949 = !DILocation(line: 0, scope: !270, inlinedAt: !1428)
!1950 = !DILocation(line: 775, column: 23, scope: !1951, inlinedAt: !1428)
!1951 = distinct !DILexicalBlock(scope: !261, file: !3, line: 775, column: 19)
!1952 = !DILocation(line: 775, column: 19, scope: !261, inlinedAt: !1428)
!1953 = !DILocation(line: 780, column: 20, scope: !1954, inlinedAt: !1428)
!1954 = distinct !DILexicalBlock(scope: !261, file: !3, line: 780, column: 19)
!1955 = !DILocation(line: 780, column: 19, scope: !261, inlinedAt: !1428)
!1956 = !DILocation(line: 782, column: 47, scope: !1957, inlinedAt: !1428)
!1957 = distinct !DILexicalBlock(scope: !1958, file: !3, line: 782, column: 23)
!1958 = distinct !DILexicalBlock(scope: !1954, file: !3, line: 781, column: 17)
!1959 = !DILocation(line: 782, column: 52, scope: !1957, inlinedAt: !1428)
!1960 = !DILocation(line: 782, column: 23, scope: !1958, inlinedAt: !1428)
!1961 = !DILocation(line: 784, column: 27, scope: !1962, inlinedAt: !1428)
!1962 = distinct !DILexicalBlock(scope: !1957, file: !3, line: 783, column: 21)
!1963 = !DILocation(line: 0, scope: !1574, inlinedAt: !1964)
!1964 = distinct !DILocation(line: 785, column: 25, scope: !1965, inlinedAt: !1428)
!1965 = distinct !DILexicalBlock(scope: !1962, file: !3, line: 784, column: 27)
!1966 = !DILocation(line: 110, column: 10, scope: !1574, inlinedAt: !1964)
!1967 = !DILocation(line: 786, column: 23, scope: !1962, inlinedAt: !1428)
!1968 = !DILocation(line: 789, column: 23, scope: !1958, inlinedAt: !1428)
!1969 = !DILocation(line: 790, column: 21, scope: !1970, inlinedAt: !1428)
!1970 = distinct !DILexicalBlock(scope: !1958, file: !3, line: 789, column: 23)
!1971 = !DILocation(line: 791, column: 29, scope: !1972, inlinedAt: !1428)
!1972 = distinct !DILexicalBlock(scope: !1970, file: !3, line: 791, column: 28)
!1973 = !DILocation(line: 791, column: 28, scope: !1970, inlinedAt: !1428)
!1974 = !DILocation(line: 792, column: 21, scope: !1972, inlinedAt: !1428)
!1975 = !DILocation(line: 795, column: 9, scope: !257, inlinedAt: !1428)
!1976 = !DILocation(line: 130, column: 10, scope: !1615, inlinedAt: !1620)
!1977 = !{!1914, !1560, i64 0}
!1978 = !DILocation(line: 797, column: 35, scope: !223, inlinedAt: !1428)
!1979 = !DILocalVariable(name: "__stream", arg: 1, scope: !1980, file: !1575, line: 135, type: !229)
!1980 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1575, file: !1575, line: 135, type: !1616, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1981)
!1981 = !{!1979}
!1982 = !DILocation(line: 0, scope: !1980, inlinedAt: !1983)
!1983 = distinct !DILocation(line: 797, column: 39, scope: !223, inlinedAt: !1428)
!1984 = distinct !{!1984, !1621, !1985}
!1985 = !DILocation(line: 797, column: 64, scope: !223, inlinedAt: !1428)
!1986 = !DILocation(line: 799, column: 9, scope: !223, inlinedAt: !1428)
!1987 = !DILocation(line: 799, column: 3, scope: !223, inlinedAt: !1428)
!1988 = !DILocation(line: 0, scope: !1980, inlinedAt: !1989)
!1989 = distinct !DILocation(line: 801, column: 7, scope: !1990, inlinedAt: !1428)
!1990 = distinct !DILexicalBlock(scope: !223, file: !3, line: 801, column: 7)
!1991 = !DILocation(line: 137, column: 10, scope: !1980, inlinedAt: !1989)
!1992 = !DILocation(line: 801, column: 7, scope: !1990, inlinedAt: !1428)
!1993 = !DILocation(line: 801, column: 7, scope: !223, inlinedAt: !1428)
!1994 = !DILocation(line: 803, column: 20, scope: !1995, inlinedAt: !1428)
!1995 = distinct !DILexicalBlock(scope: !1990, file: !3, line: 802, column: 5)
!1996 = !DILocation(line: 803, column: 41, scope: !1995, inlinedAt: !1428)
!1997 = !DILocation(line: 803, column: 7, scope: !1995, inlinedAt: !1428)
!1998 = !DILocation(line: 804, column: 7, scope: !1995, inlinedAt: !1428)
!1999 = !DILocation(line: 807, column: 17, scope: !2000, inlinedAt: !1428)
!2000 = distinct !DILexicalBlock(scope: !223, file: !3, line: 807, column: 7)
!2001 = !DILocation(line: 807, column: 20, scope: !2000, inlinedAt: !1428)
!2002 = !DILocation(line: 807, column: 46, scope: !2000, inlinedAt: !1428)
!2003 = !DILocation(line: 807, column: 7, scope: !223, inlinedAt: !1428)
!2004 = !DILocation(line: 809, column: 17, scope: !2005, inlinedAt: !1428)
!2005 = distinct !DILexicalBlock(scope: !2000, file: !3, line: 808, column: 5)
!2006 = !DILocation(line: 809, column: 30, scope: !2005, inlinedAt: !1428)
!2007 = !DILocation(line: 809, column: 7, scope: !2005, inlinedAt: !1428)
!2008 = !DILocation(line: 810, column: 7, scope: !2005, inlinedAt: !1428)
!2009 = !DILocation(line: 813, column: 9, scope: !2010, inlinedAt: !1428)
!2010 = distinct !DILexicalBlock(scope: !223, file: !3, line: 813, column: 7)
!2011 = !DILocation(line: 813, column: 7, scope: !223, inlinedAt: !1428)
!2012 = !DILocation(line: 821, column: 12, scope: !2013, inlinedAt: !1428)
!2013 = distinct !DILexicalBlock(scope: !2014, file: !3, line: 821, column: 11)
!2014 = distinct !DILexicalBlock(scope: !2010, file: !3, line: 820, column: 5)
!2015 = !DILocation(line: 821, column: 11, scope: !2014, inlinedAt: !1428)
!2016 = !DILocation(line: 854, column: 14, scope: !223, inlinedAt: !1428)
!2017 = !DILocation(line: 823, column: 36, scope: !2018, inlinedAt: !1428)
!2018 = distinct !DILexicalBlock(scope: !2019, file: !3, line: 823, column: 15)
!2019 = distinct !DILexicalBlock(scope: !2013, file: !3, line: 822, column: 9)
!2020 = !DILocation(line: 823, column: 15, scope: !2019, inlinedAt: !1428)
!2021 = !DILocation(line: 825, column: 21, scope: !2018, inlinedAt: !1428)
!2022 = !DILocation(line: 824, column: 13, scope: !2018, inlinedAt: !1428)
!2023 = !DILocation(line: 831, column: 39, scope: !2024, inlinedAt: !1428)
!2024 = distinct !DILexicalBlock(scope: !2019, file: !3, line: 831, column: 15)
!2025 = !DILocation(line: 831, column: 15, scope: !2019, inlinedAt: !1428)
!2026 = !DILocation(line: 833, column: 21, scope: !2024, inlinedAt: !1428)
!2027 = !DILocation(line: 832, column: 13, scope: !2024, inlinedAt: !1428)
!2028 = !DILocation(line: 839, column: 38, scope: !2029, inlinedAt: !1428)
!2029 = distinct !DILexicalBlock(scope: !2019, file: !3, line: 839, column: 15)
!2030 = !DILocation(line: 839, column: 15, scope: !2019, inlinedAt: !1428)
!2031 = !DILocation(line: 841, column: 21, scope: !2029, inlinedAt: !1428)
!2032 = !DILocation(line: 840, column: 13, scope: !2029, inlinedAt: !1428)
!2033 = !DILocation(line: 847, column: 15, scope: !2034, inlinedAt: !1428)
!2034 = distinct !DILexicalBlock(scope: !2019, file: !3, line: 847, column: 15)
!2035 = !DILocation(line: 847, column: 35, scope: !2034, inlinedAt: !1428)
!2036 = !DILocation(line: 847, column: 30, scope: !2034, inlinedAt: !1428)
!2037 = !DILocation(line: 848, column: 26, scope: !2034, inlinedAt: !1428)
!2038 = !DILocation(line: 849, column: 20, scope: !2034, inlinedAt: !1428)
!2039 = !DILocation(line: 848, column: 13, scope: !2034, inlinedAt: !1428)
!2040 = !DILocation(line: 855, column: 11, scope: !223, inlinedAt: !1428)
!2041 = !DILocation(line: 816, column: 20, scope: !2042, inlinedAt: !1428)
!2042 = distinct !DILexicalBlock(scope: !2010, file: !3, line: 814, column: 5)
!2043 = !DILocation(line: 817, column: 14, scope: !2042, inlinedAt: !1428)
!2044 = !DILocation(line: 816, column: 7, scope: !2042, inlinedAt: !1428)
!2045 = !DILocation(line: 854, column: 11, scope: !223, inlinedAt: !1428)
!2046 = !DILocation(line: 857, column: 16, scope: !223, inlinedAt: !1428)
!2047 = !DILocation(line: 857, column: 23, scope: !223, inlinedAt: !1428)
!2048 = !DILocation(line: 858, column: 1, scope: !223, inlinedAt: !1428)
!2049 = !DILocation(line: 1047, column: 15, scope: !1420)
!2050 = !DILocation(line: 1047, column: 12, scope: !1420)
!2051 = !DILocation(line: 1047, column: 9, scope: !1420)
!2052 = !DILocation(line: 0, scope: !1419)
!2053 = !DILocation(line: 1051, column: 11, scope: !1419)
!2054 = !DILocation(line: 1053, column: 17, scope: !1424)
!2055 = !DILocation(line: 1053, column: 15, scope: !1419)
!2056 = !DILocation(line: 1064, column: 36, scope: !1423)
!2057 = !DILocation(line: 1064, column: 56, scope: !1423)
!2058 = !DILocation(line: 1064, column: 59, scope: !1423)
!2059 = !DILocation(line: 1065, column: 35, scope: !1423)
!2060 = !DILocation(line: 1065, column: 38, scope: !1423)
!2061 = !DILocation(line: 1065, column: 44, scope: !1423)
!2062 = !DILocation(line: 0, scope: !1423)
!2063 = !DILocation(line: 1067, column: 19, scope: !1423)
!2064 = !DILocation(line: 1069, column: 23, scope: !2065)
!2065 = distinct !DILexicalBlock(scope: !2066, file: !3, line: 1068, column: 17)
!2066 = distinct !DILexicalBlock(scope: !1423, file: !3, line: 1067, column: 19)
!2067 = !DILocation(line: 0, scope: !1574, inlinedAt: !2068)
!2068 = distinct !DILocation(line: 1070, column: 21, scope: !2069)
!2069 = distinct !DILexicalBlock(scope: !2065, file: !3, line: 1069, column: 23)
!2070 = !DILocation(line: 110, column: 10, scope: !1574, inlinedAt: !2068)
!2071 = !DILocation(line: 1077, column: 19, scope: !2065)
!2072 = !DILocation(line: 1079, column: 19, scope: !2065)
!2073 = !DILocation(line: 1080, column: 19, scope: !2065)
!2074 = !DILocation(line: 1081, column: 19, scope: !2065)
!2075 = !DILocation(line: 1086, column: 31, scope: !2076)
!2076 = distinct !DILexicalBlock(scope: !1423, file: !3, line: 1086, column: 19)
!2077 = !DILocation(line: 1086, column: 19, scope: !1423)
!2078 = !DILocation(line: 0, scope: !1574, inlinedAt: !2079)
!2079 = distinct !DILocation(line: 1087, column: 17, scope: !2076)
!2080 = !DILocation(line: 110, column: 10, scope: !1574, inlinedAt: !2079)
!2081 = !DILocation(line: 0, scope: !1426)
!2082 = !DILocation(line: 1089, column: 39, scope: !2083)
!2083 = distinct !DILexicalBlock(scope: !1426, file: !3, line: 1089, column: 15)
!2084 = !DILocation(line: 1089, column: 15, scope: !1426)
!2085 = !DILocation(line: 1092, column: 19, scope: !1423)
!2086 = !DILocation(line: 1090, column: 17, scope: !2083)
!2087 = !DILocation(line: 1089, column: 62, scope: !2083)
!2088 = !DILocation(line: 1089, column: 56, scope: !2083)
!2089 = !DILocation(line: 1089, column: 36, scope: !2083)
!2090 = distinct !{!2090, !2084, !2091}
!2091 = !DILocation(line: 1090, column: 17, scope: !1426)
!2092 = !DILocation(line: 0, scope: !1574, inlinedAt: !2093)
!2093 = distinct !DILocation(line: 1094, column: 19, scope: !1571)
!2094 = !DILocation(line: 110, column: 10, scope: !1574, inlinedAt: !2093)
!2095 = !DILocation(line: 110, column: 10, scope: !1574, inlinedAt: !1578)
!2096 = !DILocation(line: 1098, column: 19, scope: !1571)
!2097 = !DILocation(line: 1099, column: 17, scope: !1571)
!2098 = !DILocation(line: 1101, column: 15, scope: !1423)
!2099 = !DILocation(line: 0, scope: !1574, inlinedAt: !2100)
!2100 = distinct !DILocation(line: 1101, column: 15, scope: !1423)
!2101 = !DILocation(line: 110, column: 10, scope: !1574, inlinedAt: !2100)
!2102 = !DILocation(line: 1103, column: 9, scope: !1420)
!2103 = !DILocation(line: 1042, column: 73, scope: !1417)
!2104 = distinct !{!2104, !1569, !2105}
!2105 = !DILocation(line: 1104, column: 5, scope: !1414)
!2106 = !DILocation(line: 1106, column: 34, scope: !1583)
!2107 = !DILocation(line: 1106, column: 26, scope: !1583)
!2108 = !DILocation(line: 1106, column: 41, scope: !1583)
!2109 = !DILocation(line: 1106, column: 7, scope: !1397)
!2110 = !DILocation(line: 1107, column: 5, scope: !1583)
!2111 = !DILocation(line: 1109, column: 10, scope: !1397)
!2112 = !DILocation(line: 1110, column: 1, scope: !1397)
!2113 = !DILocation(line: 361, column: 51, scope: !1787, inlinedAt: !1817)
!2114 = !DILocation(line: 361, column: 30, scope: !1787, inlinedAt: !1817)
!2115 = distinct !{!2115, !1820, !2116}
!2116 = !DILocation(line: 366, column: 5, scope: !1782, inlinedAt: !1817)
!2117 = distinct !DISubprogram(name: "digest_file", scope: !3, file: !3, line: 591, type: !2118, scopeLine: 593, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2121)
!2118 = !DISubroutineType(types: !2119)
!2119 = !{!204, !65, !165, !192, !2120}
!2120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !204, size: 64)
!2121 = !{!2122, !2123, !2124, !2125, !2126, !2127, !2128}
!2122 = !DILocalVariable(name: "filename", arg: 1, scope: !2117, file: !3, line: 591, type: !65)
!2123 = !DILocalVariable(name: "binary", arg: 2, scope: !2117, file: !3, line: 591, type: !165)
!2124 = !DILocalVariable(name: "bin_result", arg: 3, scope: !2117, file: !3, line: 591, type: !192)
!2125 = !DILocalVariable(name: "missing", arg: 4, scope: !2117, file: !3, line: 592, type: !2120)
!2126 = !DILocalVariable(name: "fp", scope: !2117, file: !3, line: 594, type: !229)
!2127 = !DILocalVariable(name: "err", scope: !2117, file: !3, line: 595, type: !67)
!2128 = !DILocalVariable(name: "is_stdin", scope: !2117, file: !3, line: 596, type: !204)
!2129 = !DILocation(line: 0, scope: !2117)
!2130 = !DILocation(line: 596, column: 19, scope: !2117)
!2131 = !DILocation(line: 598, column: 12, scope: !2117)
!2132 = !{!2133, !2133, i64 0}
!2133 = !{!"_Bool", !1349, i64 0}
!2134 = !DILocation(line: 600, column: 7, scope: !2117)
!2135 = !DILocation(line: 602, column: 23, scope: !2136)
!2136 = distinct !DILexicalBlock(scope: !2137, file: !3, line: 601, column: 5)
!2137 = distinct !DILexicalBlock(scope: !2117, file: !3, line: 600, column: 7)
!2138 = !DILocation(line: 603, column: 12, scope: !2136)
!2139 = !DILocation(line: 611, column: 5, scope: !2136)
!2140 = !DILocation(line: 614, column: 12, scope: !2141)
!2141 = distinct !DILexicalBlock(scope: !2137, file: !3, line: 613, column: 5)
!2142 = !DILocation(line: 615, column: 14, scope: !2143)
!2143 = distinct !DILexicalBlock(scope: !2141, file: !3, line: 615, column: 11)
!2144 = !DILocation(line: 615, column: 11, scope: !2141)
!2145 = !DILocation(line: 617, column: 15, scope: !2146)
!2146 = distinct !DILexicalBlock(scope: !2147, file: !3, line: 617, column: 15)
!2147 = distinct !DILexicalBlock(scope: !2143, file: !3, line: 616, column: 9)
!2148 = !DILocation(line: 0, scope: !2147)
!2149 = !DILocation(line: 617, column: 30, scope: !2146)
!2150 = !DILocation(line: 617, column: 33, scope: !2146)
!2151 = !DILocation(line: 617, column: 39, scope: !2146)
!2152 = !DILocation(line: 617, column: 15, scope: !2147)
!2153 = !DILocation(line: 619, column: 24, scope: !2154)
!2154 = distinct !DILexicalBlock(scope: !2146, file: !3, line: 618, column: 13)
!2155 = !DILocation(line: 620, column: 15, scope: !2154)
!2156 = !DILocation(line: 622, column: 21, scope: !2147)
!2157 = !DILocation(line: 622, column: 34, scope: !2147)
!2158 = !DILocation(line: 622, column: 11, scope: !2147)
!2159 = !DILocation(line: 623, column: 11, scope: !2147)
!2160 = !DILocation(line: 0, scope: !2137)
!2161 = !DILocation(line: 627, column: 3, scope: !2117)
!2162 = !DILocation(line: 632, column: 9, scope: !2117)
!2163 = !DILocation(line: 634, column: 7, scope: !2164)
!2164 = distinct !DILexicalBlock(scope: !2117, file: !3, line: 634, column: 7)
!2165 = !DILocation(line: 634, column: 7, scope: !2117)
!2166 = !DILocation(line: 636, column: 17, scope: !2167)
!2167 = distinct !DILexicalBlock(scope: !2164, file: !3, line: 635, column: 5)
!2168 = !DILocation(line: 636, column: 30, scope: !2167)
!2169 = !DILocation(line: 636, column: 7, scope: !2167)
!2170 = !DILocation(line: 637, column: 17, scope: !2171)
!2171 = distinct !DILexicalBlock(scope: !2167, file: !3, line: 637, column: 11)
!2172 = !DILocation(line: 637, column: 14, scope: !2171)
!2173 = !DILocation(line: 637, column: 11, scope: !2167)
!2174 = !DILocation(line: 638, column: 9, scope: !2171)
!2175 = !DILocation(line: 642, column: 17, scope: !2176)
!2176 = distinct !DILexicalBlock(scope: !2117, file: !3, line: 642, column: 7)
!2177 = !DILocation(line: 642, column: 20, scope: !2176)
!2178 = !DILocation(line: 642, column: 32, scope: !2176)
!2179 = !DILocation(line: 642, column: 7, scope: !2117)
!2180 = !DILocation(line: 644, column: 17, scope: !2181)
!2181 = distinct !DILexicalBlock(scope: !2176, file: !3, line: 643, column: 5)
!2182 = !DILocation(line: 644, column: 30, scope: !2181)
!2183 = !DILocation(line: 644, column: 7, scope: !2181)
!2184 = !DILocation(line: 645, column: 7, scope: !2181)
!2185 = !DILocation(line: 649, column: 1, scope: !2117)
!2186 = distinct !DISubprogram(name: "print_filename", scope: !3, file: !3, line: 550, type: !2187, scopeLine: 551, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2189)
!2187 = !DISubroutineType(types: !2188)
!2188 = !{null, !65, !204}
!2189 = !{!2190, !2191}
!2190 = !DILocalVariable(name: "file", arg: 1, scope: !2186, file: !3, line: 550, type: !65)
!2191 = !DILocalVariable(name: "escape", arg: 2, scope: !2186, file: !3, line: 550, type: !204)
!2192 = !DILocation(line: 0, scope: !2186)
!2193 = !DILocation(line: 552, column: 7, scope: !2186)
!2194 = !DILocation(line: 558, column: 10, scope: !2186)
!2195 = !DILocation(line: 558, column: 3, scope: !2186)
!2196 = !DILocation(line: 554, column: 7, scope: !2197)
!2197 = distinct !DILexicalBlock(scope: !2198, file: !3, line: 553, column: 5)
!2198 = distinct !DILexicalBlock(scope: !2186, file: !3, line: 552, column: 7)
!2199 = !DILocation(line: 555, column: 7, scope: !2197)
!2200 = !DILocation(line: 560, column: 15, scope: !2201)
!2201 = distinct !DILexicalBlock(scope: !2186, file: !3, line: 559, column: 5)
!2202 = !DILocation(line: 560, column: 7, scope: !2201)
!2203 = !DILocation(line: 563, column: 11, scope: !2204)
!2204 = distinct !DILexicalBlock(scope: !2201, file: !3, line: 561, column: 9)
!2205 = !DILocation(line: 564, column: 11, scope: !2204)
!2206 = !DILocation(line: 567, column: 11, scope: !2204)
!2207 = !DILocation(line: 568, column: 11, scope: !2204)
!2208 = !DILocation(line: 0, scope: !1574, inlinedAt: !2209)
!2209 = distinct !DILocation(line: 571, column: 11, scope: !2204)
!2210 = !DILocation(line: 110, column: 10, scope: !1574, inlinedAt: !2209)
!2211 = !DILocation(line: 574, column: 11, scope: !2201)
!2212 = distinct !{!2212, !2195, !2213}
!2213 = !DILocation(line: 575, column: 5, scope: !2186)
!2214 = !DILocation(line: 576, column: 1, scope: !2186)
!2215 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !298, file: !298, line: 51, type: !130, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !297, retainedNodes: !2216)
!2216 = !{!2217}
!2217 = !DILocalVariable(name: "file", arg: 1, scope: !2215, file: !298, line: 51, type: !65)
!2218 = !DILocation(line: 0, scope: !2215)
!2219 = !DILocation(line: 53, column: 13, scope: !2215)
!2220 = !DILocation(line: 54, column: 1, scope: !2215)
!2221 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !298, file: !298, line: 88, type: !2222, scopeLine: 89, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !297, retainedNodes: !2224)
!2222 = !DISubroutineType(types: !2223)
!2223 = !{null, !204}
!2224 = !{!2225}
!2225 = !DILocalVariable(name: "ignore", arg: 1, scope: !2221, file: !298, line: 88, type: !204)
!2226 = !DILocation(line: 0, scope: !2221)
!2227 = !DILocation(line: 90, column: 16, scope: !2221)
!2228 = !DILocation(line: 91, column: 1, scope: !2221)
!2229 = distinct !DISubprogram(name: "close_stdout", scope: !298, file: !298, line: 117, type: !147, scopeLine: 118, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !297, retainedNodes: !2230)
!2230 = !{!2231}
!2231 = !DILocalVariable(name: "write_error", scope: !2232, file: !298, line: 122, type: !65)
!2232 = distinct !DILexicalBlock(scope: !2233, file: !298, line: 121, column: 5)
!2233 = distinct !DILexicalBlock(scope: !2229, file: !298, line: 119, column: 7)
!2234 = !DILocation(line: 119, column: 21, scope: !2233)
!2235 = !DILocation(line: 119, column: 7, scope: !2233)
!2236 = !DILocation(line: 119, column: 29, scope: !2233)
!2237 = !DILocation(line: 120, column: 7, scope: !2233)
!2238 = !DILocation(line: 120, column: 12, scope: !2233)
!2239 = !{i8 0, i8 2}
!2240 = !DILocation(line: 120, column: 25, scope: !2233)
!2241 = !DILocation(line: 120, column: 28, scope: !2233)
!2242 = !DILocation(line: 120, column: 34, scope: !2233)
!2243 = !DILocation(line: 119, column: 7, scope: !2229)
!2244 = !DILocation(line: 122, column: 33, scope: !2232)
!2245 = !DILocation(line: 0, scope: !2232)
!2246 = !DILocation(line: 123, column: 11, scope: !2247)
!2247 = distinct !DILexicalBlock(scope: !2232, file: !298, line: 123, column: 11)
!2248 = !DILocation(line: 0, scope: !2247)
!2249 = !DILocation(line: 123, column: 11, scope: !2232)
!2250 = !DILocation(line: 124, column: 36, scope: !2247)
!2251 = !DILocation(line: 124, column: 9, scope: !2247)
!2252 = !DILocation(line: 127, column: 9, scope: !2247)
!2253 = !DILocation(line: 129, column: 14, scope: !2232)
!2254 = !DILocation(line: 129, column: 7, scope: !2232)
!2255 = !DILocation(line: 134, column: 42, scope: !2256)
!2256 = distinct !DILexicalBlock(scope: !2229, file: !298, line: 134, column: 7)
!2257 = !DILocation(line: 134, column: 28, scope: !2256)
!2258 = !DILocation(line: 134, column: 50, scope: !2256)
!2259 = !DILocation(line: 134, column: 7, scope: !2229)
!2260 = !DILocation(line: 135, column: 12, scope: !2256)
!2261 = !DILocation(line: 135, column: 5, scope: !2256)
!2262 = !DILocation(line: 136, column: 1, scope: !2229)
!2263 = distinct !DISubprogram(name: "sha1_init_ctx", scope: !343, file: !343, line: 62, type: !2264, scopeLine: 63, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !342, retainedNodes: !2266)
!2264 = !DISubroutineType(types: !2265)
!2265 = !{null, !350}
!2266 = !{!2267}
!2267 = !DILocalVariable(name: "ctx", arg: 1, scope: !2263, file: !343, line: 62, type: !350)
!2268 = !DILocation(line: 0, scope: !2263)
!2269 = !DILocation(line: 64, column: 10, scope: !2263)
!2270 = !DILocation(line: 68, column: 8, scope: !2263)
!2271 = !DILocation(line: 68, column: 10, scope: !2263)
!2272 = !DILocation(line: 72, column: 1, scope: !2263)
!2273 = distinct !DISubprogram(name: "sha1_read_ctx", scope: !343, file: !343, line: 86, type: !2274, scopeLine: 87, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !342, retainedNodes: !2278)
!2274 = !DISubroutineType(types: !2275)
!2275 = !{!119, !2276, !119}
!2276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2277, size: 64)
!2277 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !351)
!2278 = !{!2279, !2280, !2281}
!2279 = !DILocalVariable(name: "ctx", arg: 1, scope: !2273, file: !343, line: 86, type: !2276)
!2280 = !DILocalVariable(name: "resbuf", arg: 2, scope: !2273, file: !343, line: 86, type: !119)
!2281 = !DILocalVariable(name: "r", scope: !2273, file: !343, line: 88, type: !63)
!2282 = !DILocation(line: 0, scope: !2273)
!2283 = !DILocation(line: 89, column: 38, scope: !2273)
!2284 = !{!2285, !1560, i64 0}
!2285 = !{!"sha1_ctx", !1560, i64 0, !1560, i64 4, !1560, i64 8, !1560, i64 12, !1560, i64 16, !1349, i64 20, !1560, i64 28, !1349, i64 32}
!2286 = !DILocalVariable(name: "__bsx", arg: 1, scope: !2287, file: !2288, line: 49, type: !356)
!2287 = distinct !DISubprogram(name: "__bswap_32", scope: !2288, file: !2288, line: 49, type: !2289, scopeLine: 50, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !342, retainedNodes: !2291)
!2288 = !DIFile(filename: "/usr/include/bits/byteswap.h", directory: "")
!2289 = !DISubroutineType(types: !2290)
!2290 = !{!356, !356}
!2291 = !{!2286}
!2292 = !DILocation(line: 0, scope: !2287, inlinedAt: !2293)
!2293 = distinct !DILocation(line: 89, column: 38, scope: !2273)
!2294 = !DILocation(line: 54, column: 10, scope: !2287, inlinedAt: !2293)
!2295 = !DILocalVariable(name: "cp", arg: 1, scope: !2296, file: !343, line: 78, type: !63)
!2296 = distinct !DISubprogram(name: "set_uint32", scope: !343, file: !343, line: 78, type: !2297, scopeLine: 79, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !342, retainedNodes: !2299)
!2297 = !DISubroutineType(types: !2298)
!2298 = !{null, !63, !354}
!2299 = !{!2295, !2300}
!2300 = !DILocalVariable(name: "v", arg: 2, scope: !2296, file: !343, line: 78, type: !354)
!2301 = !DILocation(line: 0, scope: !2296, inlinedAt: !2302)
!2302 = distinct !DILocation(line: 89, column: 3, scope: !2273)
!2303 = !DILocalVariable(name: "__dest", arg: 1, scope: !2304, file: !2305, line: 31, type: !2308)
!2304 = distinct !DISubprogram(name: "memcpy", scope: !2305, file: !2305, line: 31, type: !2306, scopeLine: 33, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !342, retainedNodes: !2310)
!2305 = !DIFile(filename: "/usr/include/bits/string_fortified.h", directory: "")
!2306 = !DISubroutineType(types: !2307)
!2307 = !{!119, !2308, !2309, !121}
!2308 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !119)
!2309 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !348)
!2310 = !{!2303, !2311, !2312}
!2311 = !DILocalVariable(name: "__src", arg: 2, scope: !2304, file: !2305, line: 31, type: !2309)
!2312 = !DILocalVariable(name: "__len", arg: 3, scope: !2304, file: !2305, line: 31, type: !121)
!2313 = !DILocation(line: 0, scope: !2304, inlinedAt: !2314)
!2314 = distinct !DILocation(line: 80, column: 3, scope: !2296, inlinedAt: !2302)
!2315 = !DILocation(line: 34, column: 10, scope: !2304, inlinedAt: !2314)
!2316 = !DILocation(line: 90, column: 17, scope: !2273)
!2317 = !DILocation(line: 90, column: 38, scope: !2273)
!2318 = !{!2285, !1560, i64 4}
!2319 = !DILocation(line: 0, scope: !2287, inlinedAt: !2320)
!2320 = distinct !DILocation(line: 90, column: 38, scope: !2273)
!2321 = !DILocation(line: 54, column: 10, scope: !2287, inlinedAt: !2320)
!2322 = !DILocation(line: 0, scope: !2296, inlinedAt: !2323)
!2323 = distinct !DILocation(line: 90, column: 3, scope: !2273)
!2324 = !DILocation(line: 0, scope: !2304, inlinedAt: !2325)
!2325 = distinct !DILocation(line: 80, column: 3, scope: !2296, inlinedAt: !2323)
!2326 = !DILocation(line: 34, column: 10, scope: !2304, inlinedAt: !2325)
!2327 = !DILocation(line: 91, column: 17, scope: !2273)
!2328 = !DILocation(line: 91, column: 38, scope: !2273)
!2329 = !{!2285, !1560, i64 8}
!2330 = !DILocation(line: 0, scope: !2287, inlinedAt: !2331)
!2331 = distinct !DILocation(line: 91, column: 38, scope: !2273)
!2332 = !DILocation(line: 54, column: 10, scope: !2287, inlinedAt: !2331)
!2333 = !DILocation(line: 0, scope: !2296, inlinedAt: !2334)
!2334 = distinct !DILocation(line: 91, column: 3, scope: !2273)
!2335 = !DILocation(line: 0, scope: !2304, inlinedAt: !2336)
!2336 = distinct !DILocation(line: 80, column: 3, scope: !2296, inlinedAt: !2334)
!2337 = !DILocation(line: 34, column: 10, scope: !2304, inlinedAt: !2336)
!2338 = !DILocation(line: 92, column: 17, scope: !2273)
!2339 = !DILocation(line: 92, column: 38, scope: !2273)
!2340 = !{!2285, !1560, i64 12}
!2341 = !DILocation(line: 0, scope: !2287, inlinedAt: !2342)
!2342 = distinct !DILocation(line: 92, column: 38, scope: !2273)
!2343 = !DILocation(line: 54, column: 10, scope: !2287, inlinedAt: !2342)
!2344 = !DILocation(line: 0, scope: !2296, inlinedAt: !2345)
!2345 = distinct !DILocation(line: 92, column: 3, scope: !2273)
!2346 = !DILocation(line: 0, scope: !2304, inlinedAt: !2347)
!2347 = distinct !DILocation(line: 80, column: 3, scope: !2296, inlinedAt: !2345)
!2348 = !DILocation(line: 34, column: 10, scope: !2304, inlinedAt: !2347)
!2349 = !DILocation(line: 93, column: 17, scope: !2273)
!2350 = !DILocation(line: 93, column: 38, scope: !2273)
!2351 = !{!2285, !1560, i64 16}
!2352 = !DILocation(line: 0, scope: !2287, inlinedAt: !2353)
!2353 = distinct !DILocation(line: 93, column: 38, scope: !2273)
!2354 = !DILocation(line: 54, column: 10, scope: !2287, inlinedAt: !2353)
!2355 = !DILocation(line: 0, scope: !2296, inlinedAt: !2356)
!2356 = distinct !DILocation(line: 93, column: 3, scope: !2273)
!2357 = !DILocation(line: 0, scope: !2304, inlinedAt: !2358)
!2358 = distinct !DILocation(line: 80, column: 3, scope: !2296, inlinedAt: !2356)
!2359 = !DILocation(line: 34, column: 10, scope: !2304, inlinedAt: !2358)
!2360 = !DILocation(line: 95, column: 3, scope: !2273)
!2361 = distinct !DISubprogram(name: "sha1_finish_ctx", scope: !343, file: !343, line: 101, type: !2362, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !342, retainedNodes: !2364)
!2362 = !DISubroutineType(types: !2363)
!2363 = !{!119, !350, !119}
!2364 = !{!2365, !2366, !2367, !2368}
!2365 = !DILocalVariable(name: "ctx", arg: 1, scope: !2361, file: !343, line: 101, type: !350)
!2366 = !DILocalVariable(name: "resbuf", arg: 2, scope: !2361, file: !343, line: 101, type: !119)
!2367 = !DILocalVariable(name: "bytes", scope: !2361, file: !343, line: 104, type: !354)
!2368 = !DILocalVariable(name: "size", scope: !2361, file: !343, line: 105, type: !121)
!2369 = !DILocation(line: 0, scope: !2361)
!2370 = !DILocation(line: 104, column: 25, scope: !2361)
!2371 = !{!2285, !1560, i64 28}
!2372 = !DILocation(line: 105, column: 24, scope: !2361)
!2373 = !DILocation(line: 105, column: 17, scope: !2361)
!2374 = !DILocation(line: 108, column: 3, scope: !2361)
!2375 = !DILocation(line: 108, column: 17, scope: !2361)
!2376 = !DILocation(line: 109, column: 21, scope: !2377)
!2377 = distinct !DILexicalBlock(scope: !2361, file: !343, line: 109, column: 7)
!2378 = !DILocation(line: 109, column: 7, scope: !2361)
!2379 = !DILocation(line: 110, column: 5, scope: !2377)
!2380 = !DILocation(line: 113, column: 27, scope: !2361)
!2381 = !DILocation(line: 0, scope: !2287, inlinedAt: !2382)
!2382 = distinct !DILocation(line: 113, column: 27, scope: !2361)
!2383 = !DILocation(line: 54, column: 10, scope: !2287, inlinedAt: !2382)
!2384 = !DILocation(line: 113, column: 20, scope: !2361)
!2385 = !DILocation(line: 113, column: 3, scope: !2361)
!2386 = !DILocation(line: 113, column: 25, scope: !2361)
!2387 = !DILocation(line: 114, column: 27, scope: !2361)
!2388 = !DILocation(line: 0, scope: !2287, inlinedAt: !2389)
!2389 = distinct !DILocation(line: 114, column: 27, scope: !2361)
!2390 = !DILocation(line: 54, column: 10, scope: !2287, inlinedAt: !2389)
!2391 = !DILocation(line: 114, column: 20, scope: !2361)
!2392 = !DILocation(line: 114, column: 3, scope: !2361)
!2393 = !DILocation(line: 114, column: 25, scope: !2361)
!2394 = !DILocation(line: 116, column: 12, scope: !2361)
!2395 = !DILocation(line: 116, column: 63, scope: !2361)
!2396 = !DILocation(line: 116, column: 67, scope: !2361)
!2397 = !DILocation(line: 0, scope: !2304, inlinedAt: !2398)
!2398 = distinct !DILocation(line: 116, column: 3, scope: !2361)
!2399 = !DILocation(line: 34, column: 10, scope: !2304, inlinedAt: !2398)
!2400 = !DILocation(line: 119, column: 41, scope: !2361)
!2401 = !DILocation(line: 119, column: 3, scope: !2361)
!2402 = !DILocation(line: 0, scope: !2273, inlinedAt: !2403)
!2403 = distinct !DILocation(line: 121, column: 10, scope: !2361)
!2404 = !DILocation(line: 89, column: 38, scope: !2273, inlinedAt: !2403)
!2405 = !DILocation(line: 0, scope: !2287, inlinedAt: !2406)
!2406 = distinct !DILocation(line: 89, column: 38, scope: !2273, inlinedAt: !2403)
!2407 = !DILocation(line: 54, column: 10, scope: !2287, inlinedAt: !2406)
!2408 = !DILocation(line: 0, scope: !2296, inlinedAt: !2409)
!2409 = distinct !DILocation(line: 89, column: 3, scope: !2273, inlinedAt: !2403)
!2410 = !DILocation(line: 0, scope: !2304, inlinedAt: !2411)
!2411 = distinct !DILocation(line: 80, column: 3, scope: !2296, inlinedAt: !2409)
!2412 = !DILocation(line: 34, column: 10, scope: !2304, inlinedAt: !2411)
!2413 = !DILocation(line: 90, column: 17, scope: !2273, inlinedAt: !2403)
!2414 = !DILocation(line: 90, column: 38, scope: !2273, inlinedAt: !2403)
!2415 = !DILocation(line: 0, scope: !2287, inlinedAt: !2416)
!2416 = distinct !DILocation(line: 90, column: 38, scope: !2273, inlinedAt: !2403)
!2417 = !DILocation(line: 54, column: 10, scope: !2287, inlinedAt: !2416)
!2418 = !DILocation(line: 0, scope: !2296, inlinedAt: !2419)
!2419 = distinct !DILocation(line: 90, column: 3, scope: !2273, inlinedAt: !2403)
!2420 = !DILocation(line: 0, scope: !2304, inlinedAt: !2421)
!2421 = distinct !DILocation(line: 80, column: 3, scope: !2296, inlinedAt: !2419)
!2422 = !DILocation(line: 34, column: 10, scope: !2304, inlinedAt: !2421)
!2423 = !DILocation(line: 91, column: 17, scope: !2273, inlinedAt: !2403)
!2424 = !DILocation(line: 91, column: 38, scope: !2273, inlinedAt: !2403)
!2425 = !DILocation(line: 0, scope: !2287, inlinedAt: !2426)
!2426 = distinct !DILocation(line: 91, column: 38, scope: !2273, inlinedAt: !2403)
!2427 = !DILocation(line: 54, column: 10, scope: !2287, inlinedAt: !2426)
!2428 = !DILocation(line: 0, scope: !2296, inlinedAt: !2429)
!2429 = distinct !DILocation(line: 91, column: 3, scope: !2273, inlinedAt: !2403)
!2430 = !DILocation(line: 0, scope: !2304, inlinedAt: !2431)
!2431 = distinct !DILocation(line: 80, column: 3, scope: !2296, inlinedAt: !2429)
!2432 = !DILocation(line: 34, column: 10, scope: !2304, inlinedAt: !2431)
!2433 = !DILocation(line: 92, column: 17, scope: !2273, inlinedAt: !2403)
!2434 = !DILocation(line: 92, column: 38, scope: !2273, inlinedAt: !2403)
!2435 = !DILocation(line: 0, scope: !2287, inlinedAt: !2436)
!2436 = distinct !DILocation(line: 92, column: 38, scope: !2273, inlinedAt: !2403)
!2437 = !DILocation(line: 54, column: 10, scope: !2287, inlinedAt: !2436)
!2438 = !DILocation(line: 0, scope: !2296, inlinedAt: !2439)
!2439 = distinct !DILocation(line: 92, column: 3, scope: !2273, inlinedAt: !2403)
!2440 = !DILocation(line: 0, scope: !2304, inlinedAt: !2441)
!2441 = distinct !DILocation(line: 80, column: 3, scope: !2296, inlinedAt: !2439)
!2442 = !DILocation(line: 34, column: 10, scope: !2304, inlinedAt: !2441)
!2443 = !DILocation(line: 93, column: 17, scope: !2273, inlinedAt: !2403)
!2444 = !DILocation(line: 93, column: 38, scope: !2273, inlinedAt: !2403)
!2445 = !DILocation(line: 0, scope: !2287, inlinedAt: !2446)
!2446 = distinct !DILocation(line: 93, column: 38, scope: !2273, inlinedAt: !2403)
!2447 = !DILocation(line: 54, column: 10, scope: !2287, inlinedAt: !2446)
!2448 = !DILocation(line: 0, scope: !2296, inlinedAt: !2449)
!2449 = distinct !DILocation(line: 93, column: 3, scope: !2273, inlinedAt: !2403)
!2450 = !DILocation(line: 0, scope: !2304, inlinedAt: !2451)
!2451 = distinct !DILocation(line: 80, column: 3, scope: !2296, inlinedAt: !2449)
!2452 = !DILocation(line: 34, column: 10, scope: !2304, inlinedAt: !2451)
!2453 = !DILocation(line: 121, column: 3, scope: !2361)
!2454 = distinct !DISubprogram(name: "sha1_process_block", scope: !343, file: !343, line: 317, type: !2455, scopeLine: 318, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !342, retainedNodes: !2457)
!2455 = !DISubroutineType(types: !2456)
!2456 = !{null, !348, !121, !350}
!2457 = !{!2458, !2459, !2460, !2461, !2464, !2465, !2466, !2468, !2469, !2470, !2471, !2472, !2473, !2474, !2476}
!2458 = !DILocalVariable(name: "buffer", arg: 1, scope: !2454, file: !343, line: 317, type: !348)
!2459 = !DILocalVariable(name: "len", arg: 2, scope: !2454, file: !343, line: 317, type: !121)
!2460 = !DILocalVariable(name: "ctx", arg: 3, scope: !2454, file: !343, line: 317, type: !350)
!2461 = !DILocalVariable(name: "words", scope: !2454, file: !343, line: 319, type: !2462)
!2462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2463, size: 64)
!2463 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !354)
!2464 = !DILocalVariable(name: "nwords", scope: !2454, file: !343, line: 320, type: !121)
!2465 = !DILocalVariable(name: "endp", scope: !2454, file: !343, line: 321, type: !2462)
!2466 = !DILocalVariable(name: "x", scope: !2454, file: !343, line: 322, type: !2467)
!2467 = !DICompositeType(tag: DW_TAG_array_type, baseType: !354, size: 512, elements: !274)
!2468 = !DILocalVariable(name: "a", scope: !2454, file: !343, line: 323, type: !354)
!2469 = !DILocalVariable(name: "b", scope: !2454, file: !343, line: 324, type: !354)
!2470 = !DILocalVariable(name: "c", scope: !2454, file: !343, line: 325, type: !354)
!2471 = !DILocalVariable(name: "d", scope: !2454, file: !343, line: 326, type: !354)
!2472 = !DILocalVariable(name: "e", scope: !2454, file: !343, line: 327, type: !354)
!2473 = !DILocalVariable(name: "lolen", scope: !2454, file: !343, line: 328, type: !354)
!2474 = !DILocalVariable(name: "tm", scope: !2475, file: !343, line: 351, type: !354)
!2475 = distinct !DILexicalBlock(scope: !2454, file: !343, line: 350, column: 5)
!2476 = !DILocalVariable(name: "t", scope: !2475, file: !343, line: 352, type: !67)
!2477 = !DILocation(line: 0, scope: !2454)
!2478 = !DILocation(line: 319, column: 27, scope: !2454)
!2479 = !DILocation(line: 320, column: 23, scope: !2454)
!2480 = !DILocation(line: 321, column: 32, scope: !2454)
!2481 = !DILocation(line: 322, column: 3, scope: !2454)
!2482 = !DILocation(line: 322, column: 12, scope: !2454)
!2483 = !DILocation(line: 323, column: 21, scope: !2454)
!2484 = !DILocation(line: 324, column: 21, scope: !2454)
!2485 = !DILocation(line: 328, column: 20, scope: !2454)
!2486 = !DILocation(line: 333, column: 3, scope: !2454)
!2487 = !DILocation(line: 333, column: 17, scope: !2454)
!2488 = !DILocation(line: 334, column: 25, scope: !2454)
!2489 = !DILocation(line: 334, column: 54, scope: !2454)
!2490 = !DILocation(line: 334, column: 39, scope: !2454)
!2491 = !DILocation(line: 334, column: 37, scope: !2454)
!2492 = !DILocation(line: 334, column: 3, scope: !2454)
!2493 = !DILocation(line: 334, column: 17, scope: !2454)
!2494 = !DILocation(line: 349, column: 16, scope: !2454)
!2495 = !DILocation(line: 349, column: 3, scope: !2454)
!2496 = !DILocation(line: 0, scope: !2497)
!2497 = distinct !DILexicalBlock(scope: !2475, file: !343, line: 359, column: 7)
!2498 = !DILocation(line: 0, scope: !2499)
!2499 = distinct !DILexicalBlock(scope: !2475, file: !343, line: 360, column: 7)
!2500 = !DILocation(line: 0, scope: !2501)
!2501 = distinct !DILexicalBlock(scope: !2475, file: !343, line: 361, column: 7)
!2502 = !DILocation(line: 0, scope: !2503)
!2503 = distinct !DILexicalBlock(scope: !2475, file: !343, line: 362, column: 7)
!2504 = !DILocation(line: 0, scope: !2505)
!2505 = distinct !DILexicalBlock(scope: !2475, file: !343, line: 363, column: 7)
!2506 = !DILocation(line: 0, scope: !2507)
!2507 = distinct !DILexicalBlock(scope: !2475, file: !343, line: 364, column: 7)
!2508 = !DILocation(line: 0, scope: !2509)
!2509 = distinct !DILexicalBlock(scope: !2475, file: !343, line: 365, column: 7)
!2510 = !DILocation(line: 0, scope: !2511)
!2511 = distinct !DILexicalBlock(scope: !2475, file: !343, line: 366, column: 7)
!2512 = !DILocation(line: 0, scope: !2513)
!2513 = distinct !DILexicalBlock(scope: !2475, file: !343, line: 367, column: 7)
!2514 = !DILocation(line: 0, scope: !2515)
!2515 = distinct !DILexicalBlock(scope: !2475, file: !343, line: 368, column: 7)
!2516 = !DILocation(line: 0, scope: !2517)
!2517 = distinct !DILexicalBlock(scope: !2475, file: !343, line: 369, column: 7)
!2518 = !DILocation(line: 0, scope: !2519)
!2519 = distinct !DILexicalBlock(scope: !2475, file: !343, line: 370, column: 7)
!2520 = !DILocation(line: 0, scope: !2521)
!2521 = distinct !DILexicalBlock(scope: !2475, file: !343, line: 371, column: 7)
!2522 = !DILocation(line: 0, scope: !2523)
!2523 = distinct !DILexicalBlock(scope: !2475, file: !343, line: 372, column: 7)
!2524 = !DILocation(line: 0, scope: !2525)
!2525 = distinct !DILexicalBlock(scope: !2475, file: !343, line: 373, column: 7)
!2526 = !DILocation(line: 0, scope: !2527)
!2527 = distinct !DILexicalBlock(scope: !2475, file: !343, line: 374, column: 7)
!2528 = !DILocation(line: 0, scope: !2529)
!2529 = distinct !DILexicalBlock(scope: !2530, file: !343, line: 354, column: 9)
!2530 = distinct !DILexicalBlock(scope: !2531, file: !343, line: 353, column: 7)
!2531 = distinct !DILexicalBlock(scope: !2475, file: !343, line: 353, column: 7)
!2532 = !DILocation(line: 0, scope: !2475)
!2533 = !DILocation(line: 355, column: 18, scope: !2529)
!2534 = !DILocation(line: 0, scope: !2287, inlinedAt: !2535)
!2535 = distinct !DILocation(line: 355, column: 18, scope: !2529)
!2536 = !DILocation(line: 54, column: 10, scope: !2287, inlinedAt: !2535)
!2537 = !DILocation(line: 356, column: 16, scope: !2529)
!2538 = !DILocation(line: 355, column: 16, scope: !2529)
!2539 = !DILocation(line: 359, column: 7, scope: !2497)
!2540 = !DILocation(line: 360, column: 7, scope: !2499)
!2541 = !DILocation(line: 361, column: 7, scope: !2501)
!2542 = !DILocation(line: 362, column: 7, scope: !2503)
!2543 = !DILocation(line: 363, column: 7, scope: !2505)
!2544 = !DILocation(line: 364, column: 7, scope: !2507)
!2545 = !DILocation(line: 365, column: 7, scope: !2509)
!2546 = !DILocation(line: 366, column: 7, scope: !2511)
!2547 = !DILocation(line: 367, column: 7, scope: !2513)
!2548 = !DILocation(line: 368, column: 7, scope: !2515)
!2549 = !DILocation(line: 369, column: 7, scope: !2517)
!2550 = !DILocation(line: 370, column: 7, scope: !2519)
!2551 = !DILocation(line: 371, column: 7, scope: !2521)
!2552 = !DILocation(line: 372, column: 7, scope: !2523)
!2553 = !DILocation(line: 373, column: 7, scope: !2525)
!2554 = !DILocation(line: 374, column: 7, scope: !2527)
!2555 = !DILocation(line: 375, column: 7, scope: !2556)
!2556 = distinct !DILexicalBlock(scope: !2475, file: !343, line: 375, column: 7)
!2557 = !DILocation(line: 376, column: 7, scope: !2558)
!2558 = distinct !DILexicalBlock(scope: !2475, file: !343, line: 376, column: 7)
!2559 = !DILocation(line: 377, column: 7, scope: !2560)
!2560 = distinct !DILexicalBlock(scope: !2475, file: !343, line: 377, column: 7)
!2561 = !DILocation(line: 378, column: 7, scope: !2562)
!2562 = distinct !DILexicalBlock(scope: !2475, file: !343, line: 378, column: 7)
!2563 = !DILocation(line: 379, column: 7, scope: !2564)
!2564 = distinct !DILexicalBlock(scope: !2475, file: !343, line: 379, column: 7)
!2565 = !DILocation(line: 380, column: 7, scope: !2566)
!2566 = distinct !DILexicalBlock(scope: !2475, file: !343, line: 380, column: 7)
!2567 = !DILocation(line: 381, column: 7, scope: !2568)
!2568 = distinct !DILexicalBlock(scope: !2475, file: !343, line: 381, column: 7)
!2569 = !DILocation(line: 382, column: 7, scope: !2570)
!2570 = distinct !DILexicalBlock(scope: !2475, file: !343, line: 382, column: 7)
!2571 = !DILocation(line: 383, column: 7, scope: !2572)
!2572 = distinct !DILexicalBlock(scope: !2475, file: !343, line: 383, column: 7)
!2573 = !DILocation(line: 384, column: 7, scope: !2574)
!2574 = distinct !DILexicalBlock(scope: !2475, file: !343, line: 384, column: 7)
!2575 = !DILocation(line: 385, column: 7, scope: !2576)
!2576 = distinct !DILexicalBlock(scope: !2475, file: !343, line: 385, column: 7)
!2577 = !DILocation(line: 386, column: 7, scope: !2578)
!2578 = distinct !DILexicalBlock(scope: !2475, file: !343, line: 386, column: 7)
!2579 = !DILocation(line: 387, column: 7, scope: !2580)
!2580 = distinct !DILexicalBlock(scope: !2475, file: !343, line: 387, column: 7)
!2581 = !DILocation(line: 388, column: 7, scope: !2582)
!2582 = distinct !DILexicalBlock(scope: !2475, file: !343, line: 388, column: 7)
!2583 = !DILocation(line: 389, column: 7, scope: !2584)
!2584 = distinct !DILexicalBlock(scope: !2475, file: !343, line: 389, column: 7)
!2585 = !DILocation(line: 390, column: 7, scope: !2586)
!2586 = distinct !DILexicalBlock(scope: !2475, file: !343, line: 390, column: 7)
!2587 = !DILocation(line: 391, column: 7, scope: !2588)
!2588 = distinct !DILexicalBlock(scope: !2475, file: !343, line: 391, column: 7)
!2589 = !DILocation(line: 392, column: 7, scope: !2590)
!2590 = distinct !DILexicalBlock(scope: !2475, file: !343, line: 392, column: 7)
!2591 = !DILocation(line: 393, column: 7, scope: !2592)
!2592 = distinct !DILexicalBlock(scope: !2475, file: !343, line: 393, column: 7)
!2593 = !DILocation(line: 394, column: 7, scope: !2594)
!2594 = distinct !DILexicalBlock(scope: !2475, file: !343, line: 394, column: 7)
!2595 = !DILocation(line: 395, column: 7, scope: !2596)
!2596 = distinct !DILexicalBlock(scope: !2475, file: !343, line: 395, column: 7)
!2597 = !DILocation(line: 396, column: 7, scope: !2598)
!2598 = distinct !DILexicalBlock(scope: !2475, file: !343, line: 396, column: 7)
!2599 = !DILocation(line: 397, column: 7, scope: !2600)
!2600 = distinct !DILexicalBlock(scope: !2475, file: !343, line: 397, column: 7)
!2601 = !DILocation(line: 398, column: 7, scope: !2602)
!2602 = distinct !DILexicalBlock(scope: !2475, file: !343, line: 398, column: 7)
!2603 = !DILocation(line: 399, column: 7, scope: !2604)
!2604 = distinct !DILexicalBlock(scope: !2475, file: !343, line: 399, column: 7)
!2605 = !DILocation(line: 400, column: 7, scope: !2606)
!2606 = distinct !DILexicalBlock(scope: !2475, file: !343, line: 400, column: 7)
!2607 = !DILocation(line: 401, column: 7, scope: !2608)
!2608 = distinct !DILexicalBlock(scope: !2475, file: !343, line: 401, column: 7)
!2609 = !DILocation(line: 402, column: 7, scope: !2610)
!2610 = distinct !DILexicalBlock(scope: !2475, file: !343, line: 402, column: 7)
!2611 = !DILocation(line: 403, column: 7, scope: !2612)
!2612 = distinct !DILexicalBlock(scope: !2475, file: !343, line: 403, column: 7)
!2613 = !DILocation(line: 404, column: 7, scope: !2614)
!2614 = distinct !DILexicalBlock(scope: !2475, file: !343, line: 404, column: 7)
!2615 = !DILocation(line: 405, column: 7, scope: !2616)
!2616 = distinct !DILexicalBlock(scope: !2475, file: !343, line: 405, column: 7)
!2617 = !DILocation(line: 406, column: 7, scope: !2618)
!2618 = distinct !DILexicalBlock(scope: !2475, file: !343, line: 406, column: 7)
!2619 = !DILocation(line: 407, column: 7, scope: !2620)
!2620 = distinct !DILexicalBlock(scope: !2475, file: !343, line: 407, column: 7)
!2621 = !DILocation(line: 408, column: 7, scope: !2622)
!2622 = distinct !DILexicalBlock(scope: !2475, file: !343, line: 408, column: 7)
!2623 = !DILocation(line: 409, column: 7, scope: !2624)
!2624 = distinct !DILexicalBlock(scope: !2475, file: !343, line: 409, column: 7)
!2625 = !DILocation(line: 410, column: 7, scope: !2626)
!2626 = distinct !DILexicalBlock(scope: !2475, file: !343, line: 410, column: 7)
!2627 = !DILocation(line: 411, column: 7, scope: !2628)
!2628 = distinct !DILexicalBlock(scope: !2475, file: !343, line: 411, column: 7)
!2629 = !DILocation(line: 412, column: 7, scope: !2630)
!2630 = distinct !DILexicalBlock(scope: !2475, file: !343, line: 412, column: 7)
!2631 = !DILocation(line: 413, column: 7, scope: !2632)
!2632 = distinct !DILexicalBlock(scope: !2475, file: !343, line: 413, column: 7)
!2633 = !DILocation(line: 414, column: 7, scope: !2634)
!2634 = distinct !DILexicalBlock(scope: !2475, file: !343, line: 414, column: 7)
!2635 = !DILocation(line: 415, column: 7, scope: !2636)
!2636 = distinct !DILexicalBlock(scope: !2475, file: !343, line: 415, column: 7)
!2637 = !DILocation(line: 416, column: 7, scope: !2638)
!2638 = distinct !DILexicalBlock(scope: !2475, file: !343, line: 416, column: 7)
!2639 = !DILocation(line: 417, column: 7, scope: !2640)
!2640 = distinct !DILexicalBlock(scope: !2475, file: !343, line: 417, column: 7)
!2641 = !DILocation(line: 418, column: 7, scope: !2642)
!2642 = distinct !DILexicalBlock(scope: !2475, file: !343, line: 418, column: 7)
!2643 = !DILocation(line: 419, column: 7, scope: !2644)
!2644 = distinct !DILexicalBlock(scope: !2475, file: !343, line: 419, column: 7)
!2645 = !DILocation(line: 420, column: 7, scope: !2646)
!2646 = distinct !DILexicalBlock(scope: !2475, file: !343, line: 420, column: 7)
!2647 = !DILocation(line: 421, column: 7, scope: !2648)
!2648 = distinct !DILexicalBlock(scope: !2475, file: !343, line: 421, column: 7)
!2649 = !DILocation(line: 422, column: 7, scope: !2650)
!2650 = distinct !DILexicalBlock(scope: !2475, file: !343, line: 422, column: 7)
!2651 = !DILocation(line: 423, column: 7, scope: !2652)
!2652 = distinct !DILexicalBlock(scope: !2475, file: !343, line: 423, column: 7)
!2653 = !DILocation(line: 424, column: 7, scope: !2654)
!2654 = distinct !DILexicalBlock(scope: !2475, file: !343, line: 424, column: 7)
!2655 = !DILocation(line: 425, column: 7, scope: !2656)
!2656 = distinct !DILexicalBlock(scope: !2475, file: !343, line: 425, column: 7)
!2657 = !DILocation(line: 426, column: 7, scope: !2658)
!2658 = distinct !DILexicalBlock(scope: !2475, file: !343, line: 426, column: 7)
!2659 = !DILocation(line: 427, column: 7, scope: !2660)
!2660 = distinct !DILexicalBlock(scope: !2475, file: !343, line: 427, column: 7)
!2661 = !DILocation(line: 428, column: 7, scope: !2662)
!2662 = distinct !DILexicalBlock(scope: !2475, file: !343, line: 428, column: 7)
!2663 = !DILocation(line: 429, column: 7, scope: !2664)
!2664 = distinct !DILexicalBlock(scope: !2475, file: !343, line: 429, column: 7)
!2665 = !DILocation(line: 430, column: 7, scope: !2666)
!2666 = distinct !DILexicalBlock(scope: !2475, file: !343, line: 430, column: 7)
!2667 = !DILocation(line: 431, column: 7, scope: !2668)
!2668 = distinct !DILexicalBlock(scope: !2475, file: !343, line: 431, column: 7)
!2669 = !DILocation(line: 432, column: 7, scope: !2670)
!2670 = distinct !DILexicalBlock(scope: !2475, file: !343, line: 432, column: 7)
!2671 = !DILocation(line: 433, column: 7, scope: !2672)
!2672 = distinct !DILexicalBlock(scope: !2475, file: !343, line: 433, column: 7)
!2673 = !DILocation(line: 434, column: 7, scope: !2674)
!2674 = distinct !DILexicalBlock(scope: !2475, file: !343, line: 434, column: 7)
!2675 = !DILocation(line: 435, column: 7, scope: !2676)
!2676 = distinct !DILexicalBlock(scope: !2475, file: !343, line: 435, column: 7)
!2677 = !DILocation(line: 436, column: 7, scope: !2678)
!2678 = distinct !DILexicalBlock(scope: !2475, file: !343, line: 436, column: 7)
!2679 = !DILocation(line: 437, column: 7, scope: !2680)
!2680 = distinct !DILexicalBlock(scope: !2475, file: !343, line: 437, column: 7)
!2681 = !DILocation(line: 438, column: 7, scope: !2682)
!2682 = distinct !DILexicalBlock(scope: !2475, file: !343, line: 438, column: 7)
!2683 = !DILocation(line: 440, column: 18, scope: !2475)
!2684 = !DILocation(line: 441, column: 18, scope: !2475)
!2685 = distinct !{!2685, !2495, !2686}
!2686 = !DILocation(line: 445, column: 5, scope: !2454)
!2687 = !DILocation(line: 446, column: 1, scope: !2454)
!2688 = distinct !DISubprogram(name: "sha1_stream", scope: !343, file: !343, line: 133, type: !2689, scopeLine: 134, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !342, retainedNodes: !2725)
!2689 = !DISubroutineType(types: !2690)
!2690 = !{!67, !2691, !119}
!2691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2692, size: 64)
!2692 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !231, line: 7, baseType: !2693)
!2693 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !75, line: 49, size: 1728, elements: !2694)
!2694 = !{!2695, !2696, !2697, !2698, !2699, !2700, !2701, !2702, !2703, !2704, !2705, !2706, !2707, !2708, !2710, !2711, !2712, !2713, !2714, !2715, !2716, !2717, !2718, !2719, !2720, !2721, !2722, !2723, !2724}
!2695 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2693, file: !75, line: 51, baseType: !67, size: 32)
!2696 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2693, file: !75, line: 54, baseType: !63, size: 64, offset: 64)
!2697 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2693, file: !75, line: 55, baseType: !63, size: 64, offset: 128)
!2698 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2693, file: !75, line: 56, baseType: !63, size: 64, offset: 192)
!2699 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2693, file: !75, line: 57, baseType: !63, size: 64, offset: 256)
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2693, file: !75, line: 58, baseType: !63, size: 64, offset: 320)
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2693, file: !75, line: 59, baseType: !63, size: 64, offset: 384)
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2693, file: !75, line: 60, baseType: !63, size: 64, offset: 448)
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2693, file: !75, line: 61, baseType: !63, size: 64, offset: 512)
!2704 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2693, file: !75, line: 64, baseType: !63, size: 64, offset: 576)
!2705 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2693, file: !75, line: 65, baseType: !63, size: 64, offset: 640)
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2693, file: !75, line: 66, baseType: !63, size: 64, offset: 704)
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2693, file: !75, line: 68, baseType: !90, size: 64, offset: 768)
!2708 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2693, file: !75, line: 70, baseType: !2709, size: 64, offset: 832)
!2709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2693, size: 64)
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2693, file: !75, line: 72, baseType: !67, size: 32, offset: 896)
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2693, file: !75, line: 73, baseType: !67, size: 32, offset: 928)
!2712 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2693, file: !75, line: 74, baseType: !96, size: 64, offset: 960)
!2713 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2693, file: !75, line: 77, baseType: !99, size: 16, offset: 1024)
!2714 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2693, file: !75, line: 78, baseType: !101, size: 8, offset: 1040)
!2715 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2693, file: !75, line: 79, baseType: !103, size: 8, offset: 1048)
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2693, file: !75, line: 81, baseType: !107, size: 64, offset: 1088)
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2693, file: !75, line: 89, baseType: !110, size: 64, offset: 1152)
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2693, file: !75, line: 91, baseType: !112, size: 64, offset: 1216)
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2693, file: !75, line: 92, baseType: !115, size: 64, offset: 1280)
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2693, file: !75, line: 93, baseType: !2709, size: 64, offset: 1344)
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2693, file: !75, line: 94, baseType: !119, size: 64, offset: 1408)
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2693, file: !75, line: 95, baseType: !121, size: 64, offset: 1472)
!2723 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2693, file: !75, line: 96, baseType: !67, size: 32, offset: 1536)
!2724 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2693, file: !75, line: 98, baseType: !125, size: 160, offset: 1568)
!2725 = !{!2726, !2727, !2728, !2729, !2730, !2731, !2733}
!2726 = !DILocalVariable(name: "stream", arg: 1, scope: !2688, file: !343, line: 133, type: !2691)
!2727 = !DILocalVariable(name: "resblock", arg: 2, scope: !2688, file: !343, line: 133, type: !119)
!2728 = !DILocalVariable(name: "buffer", scope: !2688, file: !343, line: 141, type: !63)
!2729 = !DILocalVariable(name: "ctx", scope: !2688, file: !343, line: 145, type: !351)
!2730 = !DILocalVariable(name: "sum", scope: !2688, file: !343, line: 147, type: !121)
!2731 = !DILocalVariable(name: "n", scope: !2732, file: !343, line: 155, type: !121)
!2732 = distinct !DILexicalBlock(scope: !2688, file: !343, line: 151, column: 5)
!2733 = !DILabel(scope: !2688, name: "process_partial_block", file: !343, line: 196)
!2734 = !DILocation(line: 0, scope: !2688)
!2735 = !DILocation(line: 141, column: 18, scope: !2688)
!2736 = !DILocation(line: 142, column: 8, scope: !2737)
!2737 = distinct !DILexicalBlock(scope: !2688, file: !343, line: 142, column: 7)
!2738 = !DILocation(line: 142, column: 7, scope: !2688)
!2739 = !DILocation(line: 145, column: 3, scope: !2688)
!2740 = !DILocation(line: 145, column: 19, scope: !2688)
!2741 = !DILocation(line: 0, scope: !2263, inlinedAt: !2742)
!2742 = distinct !DILocation(line: 146, column: 3, scope: !2688)
!2743 = !DILocation(line: 64, column: 10, scope: !2263, inlinedAt: !2742)
!2744 = !DILocation(line: 68, column: 8, scope: !2263, inlinedAt: !2742)
!2745 = !DILocation(line: 68, column: 10, scope: !2263, inlinedAt: !2742)
!2746 = !DILocation(line: 0, scope: !2747, inlinedAt: !2752)
!2747 = distinct !DISubprogram(name: "feof_unlocked", scope: !1575, file: !1575, line: 128, type: !2748, scopeLine: 129, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !342, retainedNodes: !2750)
!2748 = !DISubroutineType(types: !2749)
!2749 = !{!67, !2691}
!2750 = !{!2751}
!2751 = !DILocalVariable(name: "__stream", arg: 1, scope: !2747, file: !1575, line: 128, type: !2691)
!2752 = distinct !DILocation(line: 166, column: 15, scope: !2753)
!2753 = distinct !DILexicalBlock(scope: !2754, file: !343, line: 166, column: 15)
!2754 = distinct !DILexicalBlock(scope: !2732, file: !343, line: 160, column: 9)
!2755 = !DILocation(line: 150, column: 3, scope: !2688)
!2756 = !DILocation(line: 0, scope: !2732)
!2757 = !DILocation(line: 130, column: 10, scope: !2747, inlinedAt: !2752)
!2758 = !DILocation(line: 166, column: 15, scope: !2753)
!2759 = !DILocation(line: 166, column: 15, scope: !2754)
!2760 = !DILocation(line: 169, column: 15, scope: !2754)
!2761 = !DILocation(line: 171, column: 15, scope: !2754)
!2762 = !DILocation(line: 173, column: 19, scope: !2763)
!2763 = distinct !DILexicalBlock(scope: !2754, file: !343, line: 173, column: 15)
!2764 = !DILocation(line: 173, column: 15, scope: !2754)
!2765 = !DILocation(line: 176, column: 17, scope: !2766)
!2766 = distinct !DILexicalBlock(scope: !2754, file: !343, line: 176, column: 15)
!2767 = !DILocation(line: 176, column: 15, scope: !2754)
!2768 = distinct !{!2768, !2769, !2770}
!2769 = !DILocation(line: 159, column: 7, scope: !2732)
!2770 = !DILocation(line: 188, column: 9, scope: !2732)
!2771 = !DILocalVariable(name: "__stream", arg: 1, scope: !2772, file: !1575, line: 135, type: !2691)
!2772 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1575, file: !1575, line: 135, type: !2748, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !342, retainedNodes: !2773)
!2773 = !{!2771}
!2774 = !DILocation(line: 0, scope: !2772, inlinedAt: !2775)
!2775 = distinct !DILocation(line: 181, column: 19, scope: !2776)
!2776 = distinct !DILexicalBlock(scope: !2777, file: !343, line: 181, column: 19)
!2777 = distinct !DILexicalBlock(scope: !2766, file: !343, line: 177, column: 13)
!2778 = !DILocation(line: 137, column: 10, scope: !2772, inlinedAt: !2775)
!2779 = !DILocation(line: 181, column: 19, scope: !2776)
!2780 = !DILocation(line: 181, column: 19, scope: !2777)
!2781 = !DILocation(line: 183, column: 19, scope: !2782)
!2782 = distinct !DILexicalBlock(scope: !2776, file: !343, line: 182, column: 17)
!2783 = !DILocation(line: 193, column: 7, scope: !2732)
!2784 = !DILocation(line: 196, column: 2, scope: !2688)
!2785 = !DILocation(line: 199, column: 11, scope: !2786)
!2786 = distinct !DILexicalBlock(scope: !2688, file: !343, line: 199, column: 7)
!2787 = !DILocation(line: 199, column: 7, scope: !2688)
!2788 = !DILocation(line: 200, column: 5, scope: !2786)
!2789 = !DILocation(line: 203, column: 3, scope: !2688)
!2790 = !DILocation(line: 204, column: 3, scope: !2688)
!2791 = !DILocation(line: 205, column: 3, scope: !2688)
!2792 = !DILocation(line: 206, column: 1, scope: !2688)
!2793 = distinct !DISubprogram(name: "sha1_process_bytes", scope: !343, file: !343, line: 230, type: !2455, scopeLine: 231, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !342, retainedNodes: !2794)
!2794 = !{!2795, !2796, !2797, !2798, !2801, !2802}
!2795 = !DILocalVariable(name: "buffer", arg: 1, scope: !2793, file: !343, line: 230, type: !348)
!2796 = !DILocalVariable(name: "len", arg: 2, scope: !2793, file: !343, line: 230, type: !121)
!2797 = !DILocalVariable(name: "ctx", arg: 3, scope: !2793, file: !343, line: 230, type: !350)
!2798 = !DILocalVariable(name: "left_over", scope: !2799, file: !343, line: 236, type: !121)
!2799 = distinct !DILexicalBlock(scope: !2800, file: !343, line: 235, column: 5)
!2800 = distinct !DILexicalBlock(scope: !2793, file: !343, line: 234, column: 7)
!2801 = !DILocalVariable(name: "add", scope: !2799, file: !343, line: 237, type: !121)
!2802 = !DILocalVariable(name: "left_over", scope: !2803, file: !343, line: 282, type: !121)
!2803 = distinct !DILexicalBlock(scope: !2804, file: !343, line: 281, column: 5)
!2804 = distinct !DILexicalBlock(scope: !2793, file: !343, line: 280, column: 7)
!2805 = !DILocation(line: 0, scope: !2793)
!2806 = !DILocation(line: 234, column: 12, scope: !2800)
!2807 = !DILocation(line: 234, column: 19, scope: !2800)
!2808 = !DILocation(line: 234, column: 7, scope: !2793)
!2809 = !DILocation(line: 236, column: 26, scope: !2799)
!2810 = !DILocation(line: 0, scope: !2799)
!2811 = !DILocation(line: 237, column: 24, scope: !2799)
!2812 = !DILocation(line: 237, column: 36, scope: !2799)
!2813 = !DILocation(line: 237, column: 20, scope: !2799)
!2814 = !DILocation(line: 239, column: 16, scope: !2799)
!2815 = !DILocation(line: 0, scope: !2304, inlinedAt: !2816)
!2816 = distinct !DILocation(line: 239, column: 7, scope: !2799)
!2817 = !DILocation(line: 34, column: 10, scope: !2304, inlinedAt: !2816)
!2818 = !DILocation(line: 240, column: 19, scope: !2799)
!2819 = !DILocation(line: 242, column: 23, scope: !2820)
!2820 = distinct !DILexicalBlock(scope: !2799, file: !343, line: 242, column: 11)
!2821 = !DILocation(line: 242, column: 11, scope: !2799)
!2822 = !DILocation(line: 244, column: 56, scope: !2823)
!2823 = distinct !DILexicalBlock(scope: !2820, file: !343, line: 243, column: 9)
!2824 = !DILocation(line: 244, column: 44, scope: !2823)
!2825 = !DILocation(line: 244, column: 11, scope: !2823)
!2826 = !DILocation(line: 246, column: 23, scope: !2823)
!2827 = !DILocation(line: 250, column: 54, scope: !2823)
!2828 = !DILocation(line: 250, column: 61, scope: !2823)
!2829 = !DILocation(line: 250, column: 20, scope: !2823)
!2830 = !DILocation(line: 251, column: 19, scope: !2823)
!2831 = !DILocation(line: 0, scope: !2304, inlinedAt: !2832)
!2832 = distinct !DILocation(line: 249, column: 11, scope: !2823)
!2833 = !DILocation(line: 34, column: 10, scope: !2304, inlinedAt: !2832)
!2834 = !DILocation(line: 252, column: 9, scope: !2823)
!2835 = !DILocation(line: 254, column: 38, scope: !2799)
!2836 = !DILocation(line: 255, column: 11, scope: !2799)
!2837 = !DILocation(line: 256, column: 5, scope: !2799)
!2838 = !DILocation(line: 259, column: 11, scope: !2839)
!2839 = distinct !DILexicalBlock(scope: !2793, file: !343, line: 259, column: 7)
!2840 = !DILocation(line: 259, column: 7, scope: !2793)
!2841 = !DILocation(line: 263, column: 11, scope: !2842)
!2842 = distinct !DILexicalBlock(scope: !2843, file: !343, line: 263, column: 11)
!2843 = distinct !DILexicalBlock(scope: !2839, file: !343, line: 260, column: 5)
!2844 = !DILocation(line: 263, column: 11, scope: !2843)
!2845 = !DILocation(line: 264, column: 20, scope: !2842)
!2846 = !DILocation(line: 264, column: 9, scope: !2842)
!2847 = !DILocation(line: 0, scope: !2848)
!2848 = distinct !DILexicalBlock(scope: !2842, file: !343, line: 265, column: 11)
!2849 = !DILocation(line: 0, scope: !2304, inlinedAt: !2850)
!2850 = distinct !DILocation(line: 266, column: 33, scope: !2848)
!2851 = !DILocation(line: 34, column: 10, scope: !2304, inlinedAt: !2850)
!2852 = !DILocation(line: 266, column: 13, scope: !2848)
!2853 = !DILocation(line: 267, column: 44, scope: !2848)
!2854 = !DILocation(line: 268, column: 17, scope: !2848)
!2855 = distinct !{!2855, !2846, !2856}
!2856 = !DILocation(line: 269, column: 11, scope: !2842)
!2857 = !DILocation(line: 273, column: 43, scope: !2858)
!2858 = distinct !DILexicalBlock(scope: !2842, file: !343, line: 272, column: 9)
!2859 = !DILocation(line: 273, column: 11, scope: !2858)
!2860 = !DILocation(line: 274, column: 42, scope: !2858)
!2861 = !DILocation(line: 275, column: 15, scope: !2858)
!2862 = !DILocation(line: 280, column: 11, scope: !2804)
!2863 = !DILocation(line: 280, column: 7, scope: !2793)
!2864 = !DILocation(line: 282, column: 31, scope: !2803)
!2865 = !DILocation(line: 282, column: 26, scope: !2803)
!2866 = !DILocation(line: 0, scope: !2803)
!2867 = !DILocation(line: 284, column: 31, scope: !2803)
!2868 = !DILocation(line: 284, column: 16, scope: !2803)
!2869 = !DILocation(line: 0, scope: !2304, inlinedAt: !2870)
!2870 = distinct !DILocation(line: 284, column: 7, scope: !2803)
!2871 = !DILocation(line: 34, column: 10, scope: !2304, inlinedAt: !2870)
!2872 = !DILocation(line: 285, column: 17, scope: !2803)
!2873 = !DILocation(line: 286, column: 21, scope: !2874)
!2874 = distinct !DILexicalBlock(scope: !2803, file: !343, line: 286, column: 11)
!2875 = !DILocation(line: 286, column: 11, scope: !2803)
!2876 = !DILocation(line: 288, column: 11, scope: !2877)
!2877 = distinct !DILexicalBlock(scope: !2874, file: !343, line: 287, column: 9)
!2878 = !DILocation(line: 289, column: 21, scope: !2877)
!2879 = !DILocation(line: 292, column: 33, scope: !2877)
!2880 = !DILocation(line: 292, column: 32, scope: !2877)
!2881 = !DILocation(line: 0, scope: !2304, inlinedAt: !2882)
!2882 = distinct !DILocation(line: 292, column: 11, scope: !2877)
!2883 = !DILocation(line: 34, column: 10, scope: !2304, inlinedAt: !2882)
!2884 = !DILocation(line: 293, column: 9, scope: !2877)
!2885 = !DILocation(line: 294, column: 21, scope: !2803)
!2886 = !DILocation(line: 294, column: 19, scope: !2803)
!2887 = !DILocation(line: 295, column: 5, scope: !2803)
!2888 = !DILocation(line: 296, column: 1, scope: !2793)
!2889 = distinct !DISubprogram(name: "sha1_buffer", scope: !343, file: !343, line: 215, type: !2890, scopeLine: 216, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !342, retainedNodes: !2892)
!2890 = !DISubroutineType(types: !2891)
!2891 = !{!119, !65, !121, !119}
!2892 = !{!2893, !2894, !2895, !2896}
!2893 = !DILocalVariable(name: "buffer", arg: 1, scope: !2889, file: !343, line: 215, type: !65)
!2894 = !DILocalVariable(name: "len", arg: 2, scope: !2889, file: !343, line: 215, type: !121)
!2895 = !DILocalVariable(name: "resblock", arg: 3, scope: !2889, file: !343, line: 215, type: !119)
!2896 = !DILocalVariable(name: "ctx", scope: !2889, file: !343, line: 217, type: !351)
!2897 = !DILocation(line: 0, scope: !2889)
!2898 = !DILocation(line: 217, column: 3, scope: !2889)
!2899 = !DILocation(line: 217, column: 19, scope: !2889)
!2900 = !DILocation(line: 0, scope: !2263, inlinedAt: !2901)
!2901 = distinct !DILocation(line: 220, column: 3, scope: !2889)
!2902 = !DILocation(line: 64, column: 10, scope: !2263, inlinedAt: !2901)
!2903 = !DILocation(line: 68, column: 8, scope: !2263, inlinedAt: !2901)
!2904 = !DILocation(line: 68, column: 10, scope: !2263, inlinedAt: !2901)
!2905 = !DILocation(line: 223, column: 3, scope: !2889)
!2906 = !DILocation(line: 226, column: 10, scope: !2889)
!2907 = !DILocation(line: 227, column: 1, scope: !2889)
!2908 = !DILocation(line: 226, column: 3, scope: !2889)
!2909 = distinct !DISubprogram(name: "fdadvise", scope: !567, file: !567, line: 31, type: !2910, scopeLine: 32, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !566, retainedNodes: !2914)
!2910 = !DISubroutineType(types: !2911)
!2911 = !{null, !67, !2912, !2912, !2913}
!2912 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !70, line: 63, baseType: !96)
!2913 = !DIDerivedType(tag: DW_TAG_typedef, name: "fadvice_t", file: !50, line: 52, baseType: !49)
!2914 = !{!2915, !2916, !2917, !2918, !2919}
!2915 = !DILocalVariable(name: "fd", arg: 1, scope: !2909, file: !567, line: 31, type: !67)
!2916 = !DILocalVariable(name: "offset", arg: 2, scope: !2909, file: !567, line: 31, type: !2912)
!2917 = !DILocalVariable(name: "len", arg: 3, scope: !2909, file: !567, line: 31, type: !2912)
!2918 = !DILocalVariable(name: "advice", arg: 4, scope: !2909, file: !567, line: 31, type: !2913)
!2919 = !DILocalVariable(name: "__x", scope: !2920, file: !567, line: 34, type: !67)
!2920 = distinct !DILexicalBlock(scope: !2909, file: !567, line: 34, column: 3)
!2921 = !DILocation(line: 0, scope: !2909)
!2922 = !DILocation(line: 34, column: 3, scope: !2920)
!2923 = !DILocation(line: 0, scope: !2920)
!2924 = !DILocation(line: 36, column: 1, scope: !2909)
!2925 = distinct !DISubprogram(name: "fadvise", scope: !567, file: !567, line: 39, type: !2926, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !566, retainedNodes: !2930)
!2926 = !DISubroutineType(types: !2927)
!2927 = !{null, !2928, !2913}
!2928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2929, size: 64)
!2929 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !231, line: 7, baseType: !577)
!2930 = !{!2931, !2932}
!2931 = !DILocalVariable(name: "fp", arg: 1, scope: !2925, file: !567, line: 39, type: !2928)
!2932 = !DILocalVariable(name: "advice", arg: 2, scope: !2925, file: !567, line: 39, type: !2913)
!2933 = !DILocation(line: 0, scope: !2925)
!2934 = !DILocation(line: 41, column: 7, scope: !2935)
!2935 = distinct !DILexicalBlock(scope: !2925, file: !567, line: 41, column: 7)
!2936 = !DILocation(line: 41, column: 7, scope: !2925)
!2937 = !DILocation(line: 42, column: 15, scope: !2935)
!2938 = !DILocation(line: 0, scope: !2909, inlinedAt: !2939)
!2939 = distinct !DILocation(line: 42, column: 5, scope: !2935)
!2940 = !DILocation(line: 34, column: 3, scope: !2920, inlinedAt: !2939)
!2941 = !DILocation(line: 0, scope: !2920, inlinedAt: !2939)
!2942 = !DILocation(line: 42, column: 5, scope: !2935)
!2943 = !DILocation(line: 43, column: 1, scope: !2925)
!2944 = distinct !DISubprogram(name: "fopen_safer", scope: !609, file: !609, line: 31, type: !2945, scopeLine: 32, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !608, retainedNodes: !2949)
!2945 = !DISubroutineType(types: !2946)
!2946 = !{!2947, !65, !65}
!2947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2948, size: 64)
!2948 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !231, line: 7, baseType: !615)
!2949 = !{!2950, !2951, !2952, !2953, !2956, !2959, !2962}
!2950 = !DILocalVariable(name: "file", arg: 1, scope: !2944, file: !609, line: 31, type: !65)
!2951 = !DILocalVariable(name: "mode", arg: 2, scope: !2944, file: !609, line: 31, type: !65)
!2952 = !DILocalVariable(name: "fp", scope: !2944, file: !609, line: 33, type: !2947)
!2953 = !DILocalVariable(name: "fd", scope: !2954, file: !609, line: 37, type: !67)
!2954 = distinct !DILexicalBlock(scope: !2955, file: !609, line: 36, column: 5)
!2955 = distinct !DILexicalBlock(scope: !2944, file: !609, line: 35, column: 7)
!2956 = !DILocalVariable(name: "f", scope: !2957, file: !609, line: 41, type: !67)
!2957 = distinct !DILexicalBlock(scope: !2958, file: !609, line: 40, column: 9)
!2958 = distinct !DILexicalBlock(scope: !2954, file: !609, line: 39, column: 11)
!2959 = !DILocalVariable(name: "e", scope: !2960, file: !609, line: 45, type: !67)
!2960 = distinct !DILexicalBlock(scope: !2961, file: !609, line: 44, column: 13)
!2961 = distinct !DILexicalBlock(scope: !2957, file: !609, line: 43, column: 15)
!2962 = !DILocalVariable(name: "e", scope: !2963, file: !609, line: 54, type: !67)
!2963 = distinct !DILexicalBlock(scope: !2964, file: !609, line: 53, column: 13)
!2964 = distinct !DILexicalBlock(scope: !2957, file: !609, line: 51, column: 15)
!2965 = !DILocation(line: 0, scope: !2944)
!2966 = !DILocation(line: 33, column: 14, scope: !2944)
!2967 = !DILocation(line: 35, column: 7, scope: !2955)
!2968 = !DILocation(line: 35, column: 7, scope: !2944)
!2969 = !DILocation(line: 37, column: 16, scope: !2954)
!2970 = !DILocation(line: 0, scope: !2954)
!2971 = !DILocation(line: 39, column: 19, scope: !2958)
!2972 = !DILocation(line: 41, column: 19, scope: !2957)
!2973 = !DILocation(line: 0, scope: !2957)
!2974 = !DILocation(line: 43, column: 17, scope: !2961)
!2975 = !DILocation(line: 43, column: 15, scope: !2957)
!2976 = !DILocation(line: 45, column: 23, scope: !2960)
!2977 = !DILocation(line: 0, scope: !2960)
!2978 = !DILocation(line: 46, column: 15, scope: !2960)
!2979 = !DILocation(line: 47, column: 21, scope: !2960)
!2980 = !DILocation(line: 51, column: 15, scope: !2964)
!2981 = !DILocation(line: 51, column: 27, scope: !2964)
!2982 = !DILocation(line: 52, column: 15, scope: !2964)
!2983 = !DILocation(line: 52, column: 26, scope: !2964)
!2984 = !DILocation(line: 52, column: 24, scope: !2964)
!2985 = !DILocation(line: 51, column: 15, scope: !2957)
!2986 = !DILocation(line: 54, column: 23, scope: !2963)
!2987 = !DILocation(line: 0, scope: !2963)
!2988 = !DILocation(line: 55, column: 15, scope: !2963)
!2989 = !DILocation(line: 56, column: 21, scope: !2963)
!2990 = !DILocation(line: 63, column: 1, scope: !2944)
!2991 = distinct !DISubprogram(name: "set_program_name", scope: !386, file: !386, line: 39, type: !130, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !385, retainedNodes: !2992)
!2992 = !{!2993, !2994, !2995}
!2993 = !DILocalVariable(name: "argv0", arg: 1, scope: !2991, file: !386, line: 39, type: !65)
!2994 = !DILocalVariable(name: "slash", scope: !2991, file: !386, line: 46, type: !65)
!2995 = !DILocalVariable(name: "base", scope: !2991, file: !386, line: 47, type: !65)
!2996 = !DILocation(line: 0, scope: !2991)
!2997 = !DILocation(line: 51, column: 13, scope: !2998)
!2998 = distinct !DILexicalBlock(scope: !2991, file: !386, line: 51, column: 7)
!2999 = !DILocation(line: 51, column: 7, scope: !2991)
!3000 = !DILocation(line: 55, column: 14, scope: !3001)
!3001 = distinct !DILexicalBlock(scope: !2998, file: !386, line: 52, column: 5)
!3002 = !DILocation(line: 54, column: 7, scope: !3001)
!3003 = !DILocation(line: 56, column: 7, scope: !3001)
!3004 = !DILocation(line: 59, column: 11, scope: !2991)
!3005 = !DILocation(line: 60, column: 17, scope: !2991)
!3006 = !DILocation(line: 60, column: 11, scope: !2991)
!3007 = !DILocation(line: 61, column: 12, scope: !3008)
!3008 = distinct !DILexicalBlock(scope: !2991, file: !386, line: 61, column: 7)
!3009 = !DILocation(line: 61, column: 20, scope: !3008)
!3010 = !DILocation(line: 61, column: 25, scope: !3008)
!3011 = !DILocation(line: 61, column: 42, scope: !3008)
!3012 = !DILocation(line: 61, column: 28, scope: !3008)
!3013 = !DILocation(line: 61, column: 61, scope: !3008)
!3014 = !DILocation(line: 61, column: 7, scope: !2991)
!3015 = !DILocation(line: 64, column: 11, scope: !3016)
!3016 = distinct !DILexicalBlock(scope: !3017, file: !386, line: 64, column: 11)
!3017 = distinct !DILexicalBlock(scope: !3008, file: !386, line: 62, column: 5)
!3018 = !DILocation(line: 64, column: 36, scope: !3016)
!3019 = !DILocation(line: 64, column: 11, scope: !3017)
!3020 = !DILocation(line: 66, column: 24, scope: !3021)
!3021 = distinct !DILexicalBlock(scope: !3016, file: !386, line: 65, column: 9)
!3022 = !DILocation(line: 70, column: 41, scope: !3021)
!3023 = !DILocation(line: 72, column: 9, scope: !3021)
!3024 = !DILocation(line: 84, column: 16, scope: !2991)
!3025 = !DILocation(line: 90, column: 27, scope: !2991)
!3026 = !DILocation(line: 92, column: 1, scope: !2991)
!3027 = distinct !DISubprogram(name: "clone_quoting_options", scope: !427, file: !427, line: 122, type: !3028, scopeLine: 123, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !426, retainedNodes: !3031)
!3028 = !DISubroutineType(types: !3029)
!3029 = !{!3030, !3030}
!3030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !445, size: 64)
!3031 = !{!3032, !3033, !3034}
!3032 = !DILocalVariable(name: "o", arg: 1, scope: !3027, file: !427, line: 122, type: !3030)
!3033 = !DILocalVariable(name: "e", scope: !3027, file: !427, line: 124, type: !67)
!3034 = !DILocalVariable(name: "p", scope: !3027, file: !427, line: 125, type: !3030)
!3035 = !DILocation(line: 0, scope: !3027)
!3036 = !DILocation(line: 124, column: 11, scope: !3027)
!3037 = !DILocation(line: 125, column: 40, scope: !3027)
!3038 = !DILocation(line: 125, column: 31, scope: !3027)
!3039 = !DILocation(line: 127, column: 9, scope: !3027)
!3040 = !DILocation(line: 128, column: 3, scope: !3027)
!3041 = distinct !DISubprogram(name: "get_quoting_style", scope: !427, file: !427, line: 133, type: !3042, scopeLine: 134, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !426, retainedNodes: !3044)
!3042 = !DISubroutineType(types: !3043)
!3043 = !{!5, !443}
!3044 = !{!3045}
!3045 = !DILocalVariable(name: "o", arg: 1, scope: !3041, file: !427, line: 133, type: !443)
!3046 = !DILocation(line: 0, scope: !3041)
!3047 = !DILocation(line: 135, column: 11, scope: !3041)
!3048 = !DILocation(line: 135, column: 46, scope: !3041)
!3049 = !{!3050, !1349, i64 0}
!3050 = !{!"quoting_options", !1349, i64 0, !1560, i64 4, !1349, i64 8, !1348, i64 40, !1348, i64 48}
!3051 = !DILocation(line: 135, column: 3, scope: !3041)
!3052 = distinct !DISubprogram(name: "set_quoting_style", scope: !427, file: !427, line: 141, type: !3053, scopeLine: 142, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !426, retainedNodes: !3055)
!3053 = !DISubroutineType(types: !3054)
!3054 = !{null, !3030, !5}
!3055 = !{!3056, !3057}
!3056 = !DILocalVariable(name: "o", arg: 1, scope: !3052, file: !427, line: 141, type: !3030)
!3057 = !DILocalVariable(name: "s", arg: 2, scope: !3052, file: !427, line: 141, type: !5)
!3058 = !DILocation(line: 0, scope: !3052)
!3059 = !DILocation(line: 143, column: 4, scope: !3052)
!3060 = !DILocation(line: 143, column: 39, scope: !3052)
!3061 = !DILocation(line: 143, column: 45, scope: !3052)
!3062 = !DILocation(line: 144, column: 1, scope: !3052)
!3063 = distinct !DISubprogram(name: "set_char_quoting", scope: !427, file: !427, line: 152, type: !3064, scopeLine: 153, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !426, retainedNodes: !3066)
!3064 = !DISubroutineType(types: !3065)
!3065 = !{!67, !3030, !64, !67}
!3066 = !{!3067, !3068, !3069, !3070, !3071, !3073, !3074}
!3067 = !DILocalVariable(name: "o", arg: 1, scope: !3063, file: !427, line: 152, type: !3030)
!3068 = !DILocalVariable(name: "c", arg: 2, scope: !3063, file: !427, line: 152, type: !64)
!3069 = !DILocalVariable(name: "i", arg: 3, scope: !3063, file: !427, line: 152, type: !67)
!3070 = !DILocalVariable(name: "uc", scope: !3063, file: !427, line: 154, type: !193)
!3071 = !DILocalVariable(name: "p", scope: !3063, file: !427, line: 155, type: !3072)
!3072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!3073 = !DILocalVariable(name: "shift", scope: !3063, file: !427, line: 157, type: !67)
!3074 = !DILocalVariable(name: "r", scope: !3063, file: !427, line: 158, type: !67)
!3075 = !DILocation(line: 0, scope: !3063)
!3076 = !DILocation(line: 156, column: 6, scope: !3063)
!3077 = !DILocation(line: 156, column: 62, scope: !3063)
!3078 = !DILocation(line: 156, column: 57, scope: !3063)
!3079 = !DILocation(line: 157, column: 15, scope: !3063)
!3080 = !DILocation(line: 158, column: 12, scope: !3063)
!3081 = !DILocation(line: 158, column: 15, scope: !3063)
!3082 = !DILocation(line: 158, column: 25, scope: !3063)
!3083 = !DILocation(line: 159, column: 13, scope: !3063)
!3084 = !DILocation(line: 159, column: 18, scope: !3063)
!3085 = !DILocation(line: 159, column: 23, scope: !3063)
!3086 = !DILocation(line: 159, column: 6, scope: !3063)
!3087 = !DILocation(line: 160, column: 3, scope: !3063)
!3088 = distinct !DISubprogram(name: "set_quoting_flags", scope: !427, file: !427, line: 168, type: !3089, scopeLine: 169, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !426, retainedNodes: !3091)
!3089 = !DISubroutineType(types: !3090)
!3090 = !{!67, !3030, !67}
!3091 = !{!3092, !3093, !3094}
!3092 = !DILocalVariable(name: "o", arg: 1, scope: !3088, file: !427, line: 168, type: !3030)
!3093 = !DILocalVariable(name: "i", arg: 2, scope: !3088, file: !427, line: 168, type: !67)
!3094 = !DILocalVariable(name: "r", scope: !3088, file: !427, line: 170, type: !67)
!3095 = !DILocation(line: 0, scope: !3088)
!3096 = !DILocation(line: 171, column: 8, scope: !3097)
!3097 = distinct !DILexicalBlock(scope: !3088, file: !427, line: 171, column: 7)
!3098 = !DILocation(line: 171, column: 7, scope: !3088)
!3099 = !DILocation(line: 173, column: 10, scope: !3088)
!3100 = !{!3050, !1560, i64 4}
!3101 = !DILocation(line: 174, column: 12, scope: !3088)
!3102 = !DILocation(line: 175, column: 3, scope: !3088)
!3103 = distinct !DISubprogram(name: "set_custom_quoting", scope: !427, file: !427, line: 179, type: !3104, scopeLine: 181, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !426, retainedNodes: !3106)
!3104 = !DISubroutineType(types: !3105)
!3105 = !{null, !3030, !65, !65}
!3106 = !{!3107, !3108, !3109}
!3107 = !DILocalVariable(name: "o", arg: 1, scope: !3103, file: !427, line: 179, type: !3030)
!3108 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3103, file: !427, line: 180, type: !65)
!3109 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3103, file: !427, line: 180, type: !65)
!3110 = !DILocation(line: 0, scope: !3103)
!3111 = !DILocation(line: 182, column: 8, scope: !3112)
!3112 = distinct !DILexicalBlock(scope: !3103, file: !427, line: 182, column: 7)
!3113 = !DILocation(line: 182, column: 7, scope: !3103)
!3114 = !DILocation(line: 184, column: 6, scope: !3103)
!3115 = !DILocation(line: 184, column: 12, scope: !3103)
!3116 = !DILocation(line: 185, column: 8, scope: !3117)
!3117 = distinct !DILexicalBlock(scope: !3103, file: !427, line: 185, column: 7)
!3118 = !DILocation(line: 185, column: 23, scope: !3117)
!3119 = !DILocation(line: 185, column: 19, scope: !3117)
!3120 = !DILocation(line: 186, column: 5, scope: !3117)
!3121 = !DILocation(line: 187, column: 6, scope: !3103)
!3122 = !DILocation(line: 187, column: 17, scope: !3103)
!3123 = !{!3050, !1348, i64 40}
!3124 = !DILocation(line: 188, column: 6, scope: !3103)
!3125 = !DILocation(line: 188, column: 18, scope: !3103)
!3126 = !{!3050, !1348, i64 48}
!3127 = !DILocation(line: 189, column: 1, scope: !3103)
!3128 = distinct !DISubprogram(name: "quotearg_buffer", scope: !427, file: !427, line: 784, type: !3129, scopeLine: 787, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !426, retainedNodes: !3131)
!3129 = !DISubroutineType(types: !3130)
!3130 = !{!121, !63, !121, !65, !121, !443}
!3131 = !{!3132, !3133, !3134, !3135, !3136, !3137, !3138, !3139}
!3132 = !DILocalVariable(name: "buffer", arg: 1, scope: !3128, file: !427, line: 784, type: !63)
!3133 = !DILocalVariable(name: "buffersize", arg: 2, scope: !3128, file: !427, line: 784, type: !121)
!3134 = !DILocalVariable(name: "arg", arg: 3, scope: !3128, file: !427, line: 785, type: !65)
!3135 = !DILocalVariable(name: "argsize", arg: 4, scope: !3128, file: !427, line: 785, type: !121)
!3136 = !DILocalVariable(name: "o", arg: 5, scope: !3128, file: !427, line: 786, type: !443)
!3137 = !DILocalVariable(name: "p", scope: !3128, file: !427, line: 788, type: !443)
!3138 = !DILocalVariable(name: "e", scope: !3128, file: !427, line: 789, type: !67)
!3139 = !DILocalVariable(name: "r", scope: !3128, file: !427, line: 790, type: !121)
!3140 = !DILocation(line: 0, scope: !3128)
!3141 = !DILocation(line: 788, column: 37, scope: !3128)
!3142 = !DILocation(line: 789, column: 11, scope: !3128)
!3143 = !DILocation(line: 791, column: 43, scope: !3128)
!3144 = !DILocation(line: 791, column: 53, scope: !3128)
!3145 = !DILocation(line: 791, column: 60, scope: !3128)
!3146 = !DILocation(line: 792, column: 43, scope: !3128)
!3147 = !DILocation(line: 792, column: 58, scope: !3128)
!3148 = !DILocation(line: 790, column: 14, scope: !3128)
!3149 = !DILocation(line: 793, column: 9, scope: !3128)
!3150 = !DILocation(line: 794, column: 3, scope: !3128)
!3151 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !427, file: !427, line: 256, type: !3152, scopeLine: 262, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !426, retainedNodes: !3156)
!3152 = !DISubroutineType(types: !3153)
!3153 = !{!121, !63, !121, !65, !121, !5, !67, !3154, !65, !65}
!3154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3155, size: 64)
!3155 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!3156 = !{!3157, !3158, !3159, !3160, !3161, !3162, !3163, !3164, !3165, !3166, !3167, !3168, !3169, !3170, !3171, !3172, !3173, !3174, !3175, !3176, !3177, !3181, !3182, !3183, !3184, !3185, !3188, !3189, !3195, !3198, !3199, !3206, !3209, !3210, !3211, !3212, !3213, !3214}
!3157 = !DILocalVariable(name: "buffer", arg: 1, scope: !3151, file: !427, line: 256, type: !63)
!3158 = !DILocalVariable(name: "buffersize", arg: 2, scope: !3151, file: !427, line: 256, type: !121)
!3159 = !DILocalVariable(name: "arg", arg: 3, scope: !3151, file: !427, line: 257, type: !65)
!3160 = !DILocalVariable(name: "argsize", arg: 4, scope: !3151, file: !427, line: 257, type: !121)
!3161 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !3151, file: !427, line: 258, type: !5)
!3162 = !DILocalVariable(name: "flags", arg: 6, scope: !3151, file: !427, line: 258, type: !67)
!3163 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !3151, file: !427, line: 259, type: !3154)
!3164 = !DILocalVariable(name: "left_quote", arg: 8, scope: !3151, file: !427, line: 260, type: !65)
!3165 = !DILocalVariable(name: "right_quote", arg: 9, scope: !3151, file: !427, line: 261, type: !65)
!3166 = !DILocalVariable(name: "i", scope: !3151, file: !427, line: 263, type: !121)
!3167 = !DILocalVariable(name: "len", scope: !3151, file: !427, line: 264, type: !121)
!3168 = !DILocalVariable(name: "orig_buffersize", scope: !3151, file: !427, line: 265, type: !121)
!3169 = !DILocalVariable(name: "quote_string", scope: !3151, file: !427, line: 266, type: !65)
!3170 = !DILocalVariable(name: "quote_string_len", scope: !3151, file: !427, line: 267, type: !121)
!3171 = !DILocalVariable(name: "backslash_escapes", scope: !3151, file: !427, line: 268, type: !204)
!3172 = !DILocalVariable(name: "unibyte_locale", scope: !3151, file: !427, line: 269, type: !204)
!3173 = !DILocalVariable(name: "elide_outer_quotes", scope: !3151, file: !427, line: 270, type: !204)
!3174 = !DILocalVariable(name: "pending_shell_escape_end", scope: !3151, file: !427, line: 271, type: !204)
!3175 = !DILocalVariable(name: "encountered_single_quote", scope: !3151, file: !427, line: 272, type: !204)
!3176 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !3151, file: !427, line: 273, type: !204)
!3177 = !DILocalVariable(name: "c", scope: !3178, file: !427, line: 402, type: !193)
!3178 = distinct !DILexicalBlock(scope: !3179, file: !427, line: 401, column: 5)
!3179 = distinct !DILexicalBlock(scope: !3180, file: !427, line: 400, column: 3)
!3180 = distinct !DILexicalBlock(scope: !3151, file: !427, line: 400, column: 3)
!3181 = !DILocalVariable(name: "esc", scope: !3178, file: !427, line: 403, type: !193)
!3182 = !DILocalVariable(name: "is_right_quote", scope: !3178, file: !427, line: 404, type: !204)
!3183 = !DILocalVariable(name: "escaping", scope: !3178, file: !427, line: 405, type: !204)
!3184 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !3178, file: !427, line: 406, type: !204)
!3185 = !DILocalVariable(name: "m", scope: !3186, file: !427, line: 610, type: !121)
!3186 = distinct !DILexicalBlock(scope: !3187, file: !427, line: 608, column: 11)
!3187 = distinct !DILexicalBlock(scope: !3178, file: !427, line: 426, column: 9)
!3188 = !DILocalVariable(name: "printable", scope: !3186, file: !427, line: 612, type: !204)
!3189 = !DILocalVariable(name: "mbstate", scope: !3190, file: !427, line: 621, type: !3192)
!3190 = distinct !DILexicalBlock(scope: !3191, file: !427, line: 620, column: 15)
!3191 = distinct !DILexicalBlock(scope: !3186, file: !427, line: 614, column: 17)
!3192 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !3193, line: 6, baseType: !3194)
!3193 = !DIFile(filename: "/usr/include/bits/types/mbstate_t.h", directory: "")
!3194 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !464, line: 21, baseType: !463)
!3195 = !DILocalVariable(name: "w", scope: !3196, file: !427, line: 631, type: !3197)
!3196 = distinct !DILexicalBlock(scope: !3190, file: !427, line: 630, column: 19)
!3197 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !122, line: 74, baseType: !67)
!3198 = !DILocalVariable(name: "bytes", scope: !3196, file: !427, line: 632, type: !121)
!3199 = !DILocalVariable(name: "j", scope: !3200, file: !427, line: 657, type: !121)
!3200 = distinct !DILexicalBlock(scope: !3201, file: !427, line: 656, column: 27)
!3201 = distinct !DILexicalBlock(scope: !3202, file: !427, line: 654, column: 29)
!3202 = distinct !DILexicalBlock(scope: !3203, file: !427, line: 649, column: 23)
!3203 = distinct !DILexicalBlock(scope: !3204, file: !427, line: 641, column: 30)
!3204 = distinct !DILexicalBlock(scope: !3205, file: !427, line: 636, column: 30)
!3205 = distinct !DILexicalBlock(scope: !3196, file: !427, line: 634, column: 25)
!3206 = !DILocalVariable(name: "ilim", scope: !3207, file: !427, line: 684, type: !121)
!3207 = distinct !DILexicalBlock(scope: !3208, file: !427, line: 681, column: 15)
!3208 = distinct !DILexicalBlock(scope: !3186, file: !427, line: 680, column: 17)
!3209 = !DILabel(scope: !3151, name: "process_input", file: !427, line: 314)
!3210 = !DILabel(scope: !3187, name: "c_and_shell_escape", file: !427, line: 512)
!3211 = !DILabel(scope: !3187, name: "c_escape", file: !427, line: 517)
!3212 = !DILabel(scope: !3178, name: "store_escape", file: !427, line: 719)
!3213 = !DILabel(scope: !3178, name: "store_c", file: !427, line: 722)
!3214 = !DILabel(scope: !3151, name: "force_outer_quoting_style", file: !427, line: 763)
!3215 = !DILocation(line: 0, scope: !3151)
!3216 = !DILocation(line: 269, column: 25, scope: !3151)
!3217 = !DILocation(line: 269, column: 36, scope: !3151)
!3218 = !DILocation(line: 270, column: 8, scope: !3151)
!3219 = !DILocation(line: 0, scope: !3220)
!3220 = distinct !DILexicalBlock(scope: !3187, file: !427, line: 526, column: 15)
!3221 = !DILocation(line: 0, scope: !3222)
!3222 = distinct !DILexicalBlock(scope: !3223, file: !427, line: 462, column: 19)
!3223 = distinct !DILexicalBlock(scope: !3187, file: !427, line: 455, column: 13)
!3224 = !DILocation(line: 0, scope: !3225)
!3225 = distinct !DILexicalBlock(scope: !3226, file: !427, line: 449, column: 20)
!3226 = distinct !DILexicalBlock(scope: !3187, file: !427, line: 428, column: 15)
!3227 = !DILocation(line: 0, scope: !3190)
!3228 = !DILocation(line: 0, scope: !3196)
!3229 = !DILocation(line: 0, scope: !3230)
!3230 = distinct !DILexicalBlock(scope: !3178, file: !427, line: 712, column: 11)
!3231 = !DILocation(line: 273, column: 3, scope: !3151)
!3232 = !DILocation(line: 265, column: 10, scope: !3151)
!3233 = !DILocation(line: 266, column: 15, scope: !3151)
!3234 = !DILocation(line: 267, column: 10, scope: !3151)
!3235 = !DILocation(line: 268, column: 8, scope: !3151)
!3236 = !DILocation(line: 271, column: 8, scope: !3151)
!3237 = !DILocation(line: 272, column: 8, scope: !3151)
!3238 = !DILocation(line: 273, column: 8, scope: !3151)
!3239 = !DILocation(line: 314, column: 2, scope: !3151)
!3240 = !DILocation(line: 316, column: 3, scope: !3151)
!3241 = !DILocation(line: 323, column: 11, scope: !3242)
!3242 = distinct !DILexicalBlock(scope: !3151, file: !427, line: 317, column: 5)
!3243 = !DILocation(line: 323, column: 12, scope: !3244)
!3244 = distinct !DILexicalBlock(scope: !3242, file: !427, line: 323, column: 11)
!3245 = !DILocation(line: 324, column: 9, scope: !3246)
!3246 = distinct !DILexicalBlock(scope: !3247, file: !427, line: 324, column: 9)
!3247 = distinct !DILexicalBlock(scope: !3244, file: !427, line: 324, column: 9)
!3248 = !DILocation(line: 324, column: 9, scope: !3247)
!3249 = !DILocation(line: 362, column: 26, scope: !3250)
!3250 = distinct !DILexicalBlock(scope: !3251, file: !427, line: 340, column: 11)
!3251 = distinct !DILexicalBlock(scope: !3252, file: !427, line: 339, column: 13)
!3252 = distinct !DILexicalBlock(scope: !3242, file: !427, line: 338, column: 7)
!3253 = !DILocation(line: 363, column: 27, scope: !3250)
!3254 = !DILocation(line: 364, column: 11, scope: !3250)
!3255 = !DILocation(line: 365, column: 14, scope: !3256)
!3256 = distinct !DILexicalBlock(scope: !3252, file: !427, line: 365, column: 13)
!3257 = !DILocation(line: 365, column: 13, scope: !3252)
!3258 = !DILocation(line: 366, column: 43, scope: !3259)
!3259 = distinct !DILexicalBlock(scope: !3260, file: !427, line: 366, column: 11)
!3260 = distinct !DILexicalBlock(scope: !3256, file: !427, line: 366, column: 11)
!3261 = !DILocation(line: 366, column: 11, scope: !3260)
!3262 = !DILocation(line: 367, column: 13, scope: !3263)
!3263 = distinct !DILexicalBlock(scope: !3264, file: !427, line: 367, column: 13)
!3264 = distinct !DILexicalBlock(scope: !3259, file: !427, line: 367, column: 13)
!3265 = !DILocation(line: 367, column: 13, scope: !3264)
!3266 = !DILocation(line: 366, column: 70, scope: !3259)
!3267 = distinct !{!3267, !3261, !3268}
!3268 = !DILocation(line: 367, column: 13, scope: !3260)
!3269 = !DILocation(line: 264, column: 10, scope: !3151)
!3270 = !DILocation(line: 370, column: 28, scope: !3252)
!3271 = !DILocation(line: 372, column: 7, scope: !3242)
!3272 = !DILocation(line: 376, column: 7, scope: !3242)
!3273 = !DILocation(line: 379, column: 7, scope: !3242)
!3274 = !DILocation(line: 381, column: 12, scope: !3275)
!3275 = distinct !DILexicalBlock(scope: !3242, file: !427, line: 381, column: 11)
!3276 = !DILocation(line: 381, column: 11, scope: !3242)
!3277 = !DILocation(line: 386, column: 12, scope: !3278)
!3278 = distinct !DILexicalBlock(scope: !3242, file: !427, line: 386, column: 11)
!3279 = !DILocation(line: 386, column: 11, scope: !3242)
!3280 = !DILocation(line: 387, column: 9, scope: !3281)
!3281 = distinct !DILexicalBlock(scope: !3282, file: !427, line: 387, column: 9)
!3282 = distinct !DILexicalBlock(scope: !3278, file: !427, line: 387, column: 9)
!3283 = !DILocation(line: 387, column: 9, scope: !3282)
!3284 = !DILocation(line: 394, column: 7, scope: !3242)
!3285 = !DILocation(line: 397, column: 7, scope: !3242)
!3286 = !DILocation(line: 0, scope: !3287)
!3287 = distinct !DILexicalBlock(scope: !3178, file: !427, line: 408, column: 11)
!3288 = !DILocation(line: 0, scope: !3289)
!3289 = distinct !DILexicalBlock(scope: !3290, file: !427, line: 419, column: 15)
!3290 = distinct !DILexicalBlock(scope: !3287, file: !427, line: 418, column: 9)
!3291 = !DILocation(line: 0, scope: !3292)
!3292 = distinct !DILexicalBlock(scope: !3187, file: !427, line: 556, column: 15)
!3293 = !DILocation(line: 0, scope: !3294)
!3294 = distinct !DILexicalBlock(scope: !3187, file: !427, line: 548, column: 15)
!3295 = !DILocation(line: 0, scope: !3201)
!3296 = !DILocation(line: 0, scope: !3208)
!3297 = !DILocation(line: 0, scope: !3298)
!3298 = distinct !DILexicalBlock(scope: !3187, file: !427, line: 509, column: 15)
!3299 = !DILocation(line: 400, column: 8, scope: !3180)
!3300 = !DILocation(line: 0, scope: !3180)
!3301 = !DILocation(line: 400, column: 27, scope: !3179)
!3302 = !DILocation(line: 400, column: 19, scope: !3179)
!3303 = !DILocation(line: 400, column: 41, scope: !3179)
!3304 = !DILocation(line: 400, column: 48, scope: !3179)
!3305 = !DILocation(line: 400, column: 3, scope: !3180)
!3306 = !DILocation(line: 400, column: 60, scope: !3179)
!3307 = !DILocation(line: 0, scope: !3178)
!3308 = !DILocation(line: 409, column: 11, scope: !3287)
!3309 = !DILocation(line: 411, column: 17, scope: !3287)
!3310 = !DILocation(line: 412, column: 39, scope: !3287)
!3311 = !DILocation(line: 416, column: 32, scope: !3287)
!3312 = !DILocation(line: 412, column: 19, scope: !3287)
!3313 = !DILocation(line: 412, column: 15, scope: !3287)
!3314 = !DILocation(line: 417, column: 11, scope: !3287)
!3315 = !DILocation(line: 417, column: 26, scope: !3287)
!3316 = !DILocation(line: 417, column: 14, scope: !3287)
!3317 = !DILocation(line: 417, column: 63, scope: !3287)
!3318 = !DILocation(line: 408, column: 11, scope: !3178)
!3319 = !DILocation(line: 424, column: 11, scope: !3178)
!3320 = !DILocation(line: 425, column: 7, scope: !3178)
!3321 = !DILocation(line: 428, column: 15, scope: !3187)
!3322 = !DILocation(line: 430, column: 15, scope: !3323)
!3323 = distinct !DILexicalBlock(scope: !3324, file: !427, line: 430, column: 15)
!3324 = distinct !DILexicalBlock(scope: !3226, file: !427, line: 429, column: 13)
!3325 = !DILocation(line: 430, column: 15, scope: !3326)
!3326 = distinct !DILexicalBlock(scope: !3323, file: !427, line: 430, column: 15)
!3327 = !DILocation(line: 430, column: 15, scope: !3328)
!3328 = distinct !DILexicalBlock(scope: !3329, file: !427, line: 430, column: 15)
!3329 = distinct !DILexicalBlock(scope: !3330, file: !427, line: 430, column: 15)
!3330 = distinct !DILexicalBlock(scope: !3326, file: !427, line: 430, column: 15)
!3331 = !DILocation(line: 430, column: 15, scope: !3329)
!3332 = !DILocation(line: 430, column: 15, scope: !3333)
!3333 = distinct !DILexicalBlock(scope: !3334, file: !427, line: 430, column: 15)
!3334 = distinct !DILexicalBlock(scope: !3330, file: !427, line: 430, column: 15)
!3335 = !DILocation(line: 430, column: 15, scope: !3334)
!3336 = !DILocation(line: 430, column: 15, scope: !3337)
!3337 = distinct !DILexicalBlock(scope: !3338, file: !427, line: 430, column: 15)
!3338 = distinct !DILexicalBlock(scope: !3330, file: !427, line: 430, column: 15)
!3339 = !DILocation(line: 430, column: 15, scope: !3338)
!3340 = !DILocation(line: 430, column: 15, scope: !3330)
!3341 = !DILocation(line: 430, column: 15, scope: !3342)
!3342 = distinct !DILexicalBlock(scope: !3343, file: !427, line: 430, column: 15)
!3343 = distinct !DILexicalBlock(scope: !3323, file: !427, line: 430, column: 15)
!3344 = !DILocation(line: 430, column: 15, scope: !3343)
!3345 = !DILocation(line: 438, column: 19, scope: !3346)
!3346 = distinct !DILexicalBlock(scope: !3324, file: !427, line: 437, column: 19)
!3347 = !DILocation(line: 438, column: 24, scope: !3346)
!3348 = !DILocation(line: 438, column: 28, scope: !3346)
!3349 = !DILocation(line: 438, column: 38, scope: !3346)
!3350 = !DILocation(line: 438, column: 48, scope: !3346)
!3351 = !DILocation(line: 438, column: 59, scope: !3346)
!3352 = !DILocation(line: 440, column: 19, scope: !3353)
!3353 = distinct !DILexicalBlock(scope: !3354, file: !427, line: 440, column: 19)
!3354 = distinct !DILexicalBlock(scope: !3355, file: !427, line: 440, column: 19)
!3355 = distinct !DILexicalBlock(scope: !3346, file: !427, line: 439, column: 17)
!3356 = !DILocation(line: 440, column: 19, scope: !3354)
!3357 = !DILocation(line: 441, column: 19, scope: !3358)
!3358 = distinct !DILexicalBlock(scope: !3359, file: !427, line: 441, column: 19)
!3359 = distinct !DILexicalBlock(scope: !3355, file: !427, line: 441, column: 19)
!3360 = !DILocation(line: 441, column: 19, scope: !3359)
!3361 = !DILocation(line: 442, column: 17, scope: !3355)
!3362 = !DILocation(line: 449, column: 20, scope: !3226)
!3363 = !DILocation(line: 454, column: 11, scope: !3187)
!3364 = !DILocation(line: 457, column: 19, scope: !3223)
!3365 = !DILocation(line: 463, column: 19, scope: !3222)
!3366 = !DILocation(line: 463, column: 24, scope: !3222)
!3367 = !DILocation(line: 463, column: 28, scope: !3222)
!3368 = !DILocation(line: 463, column: 38, scope: !3222)
!3369 = !DILocation(line: 463, column: 47, scope: !3222)
!3370 = !DILocation(line: 463, column: 41, scope: !3222)
!3371 = !DILocation(line: 463, column: 52, scope: !3222)
!3372 = !DILocation(line: 462, column: 19, scope: !3223)
!3373 = !DILocation(line: 464, column: 25, scope: !3222)
!3374 = !DILocation(line: 464, column: 17, scope: !3222)
!3375 = !DILocation(line: 471, column: 25, scope: !3376)
!3376 = distinct !DILexicalBlock(scope: !3222, file: !427, line: 465, column: 19)
!3377 = !DILocation(line: 475, column: 21, scope: !3378)
!3378 = distinct !DILexicalBlock(scope: !3379, file: !427, line: 475, column: 21)
!3379 = distinct !DILexicalBlock(scope: !3376, file: !427, line: 475, column: 21)
!3380 = !DILocation(line: 475, column: 21, scope: !3379)
!3381 = !DILocation(line: 476, column: 21, scope: !3382)
!3382 = distinct !DILexicalBlock(scope: !3383, file: !427, line: 476, column: 21)
!3383 = distinct !DILexicalBlock(scope: !3376, file: !427, line: 476, column: 21)
!3384 = !DILocation(line: 476, column: 21, scope: !3383)
!3385 = !DILocation(line: 477, column: 21, scope: !3386)
!3386 = distinct !DILexicalBlock(scope: !3387, file: !427, line: 477, column: 21)
!3387 = distinct !DILexicalBlock(scope: !3376, file: !427, line: 477, column: 21)
!3388 = !DILocation(line: 477, column: 21, scope: !3387)
!3389 = !DILocation(line: 478, column: 21, scope: !3390)
!3390 = distinct !DILexicalBlock(scope: !3391, file: !427, line: 478, column: 21)
!3391 = distinct !DILexicalBlock(scope: !3376, file: !427, line: 478, column: 21)
!3392 = !DILocation(line: 478, column: 21, scope: !3391)
!3393 = !DILocation(line: 479, column: 21, scope: !3376)
!3394 = !DILocation(line: 492, column: 31, scope: !3187)
!3395 = !DILocation(line: 493, column: 31, scope: !3187)
!3396 = !DILocation(line: 495, column: 31, scope: !3187)
!3397 = !DILocation(line: 496, column: 31, scope: !3187)
!3398 = !DILocation(line: 497, column: 31, scope: !3187)
!3399 = !DILocation(line: 500, column: 15, scope: !3187)
!3400 = !DILocation(line: 502, column: 19, scope: !3401)
!3401 = distinct !DILexicalBlock(scope: !3402, file: !427, line: 501, column: 13)
!3402 = distinct !DILexicalBlock(scope: !3187, file: !427, line: 500, column: 15)
!3403 = !DILocation(line: 509, column: 33, scope: !3298)
!3404 = !DILocation(line: 0, scope: !3187)
!3405 = !DILocation(line: 512, column: 9, scope: !3187)
!3406 = !DILocation(line: 514, column: 15, scope: !3407)
!3407 = distinct !DILexicalBlock(scope: !3187, file: !427, line: 513, column: 15)
!3408 = !DILocation(line: 517, column: 9, scope: !3187)
!3409 = !DILocation(line: 518, column: 15, scope: !3187)
!3410 = !DILocation(line: 526, column: 15, scope: !3187)
!3411 = !DILocation(line: 526, column: 40, scope: !3220)
!3412 = !DILocation(line: 526, column: 47, scope: !3220)
!3413 = !DILocation(line: 526, column: 18, scope: !3220)
!3414 = !DILocation(line: 530, column: 17, scope: !3415)
!3415 = distinct !DILexicalBlock(scope: !3187, file: !427, line: 530, column: 15)
!3416 = !DILocation(line: 530, column: 15, scope: !3187)
!3417 = !DILocation(line: 535, column: 11, scope: !3187)
!3418 = !DILocation(line: 549, column: 15, scope: !3294)
!3419 = !DILocation(line: 556, column: 15, scope: !3187)
!3420 = !DILocation(line: 558, column: 19, scope: !3421)
!3421 = distinct !DILexicalBlock(scope: !3292, file: !427, line: 557, column: 13)
!3422 = !DILocation(line: 561, column: 19, scope: !3423)
!3423 = distinct !DILexicalBlock(scope: !3421, file: !427, line: 561, column: 19)
!3424 = !DILocation(line: 561, column: 35, scope: !3423)
!3425 = !DILocation(line: 561, column: 30, scope: !3423)
!3426 = !DILocation(line: 570, column: 15, scope: !3427)
!3427 = distinct !DILexicalBlock(scope: !3428, file: !427, line: 570, column: 15)
!3428 = distinct !DILexicalBlock(scope: !3421, file: !427, line: 570, column: 15)
!3429 = !DILocation(line: 570, column: 15, scope: !3428)
!3430 = !DILocation(line: 571, column: 15, scope: !3431)
!3431 = distinct !DILexicalBlock(scope: !3432, file: !427, line: 571, column: 15)
!3432 = distinct !DILexicalBlock(scope: !3421, file: !427, line: 571, column: 15)
!3433 = !DILocation(line: 571, column: 15, scope: !3432)
!3434 = !DILocation(line: 572, column: 15, scope: !3435)
!3435 = distinct !DILexicalBlock(scope: !3436, file: !427, line: 572, column: 15)
!3436 = distinct !DILexicalBlock(scope: !3421, file: !427, line: 572, column: 15)
!3437 = !DILocation(line: 572, column: 15, scope: !3436)
!3438 = !DILocation(line: 574, column: 13, scope: !3421)
!3439 = !DILocation(line: 614, column: 17, scope: !3186)
!3440 = !DILocation(line: 0, scope: !3186)
!3441 = !DILocation(line: 617, column: 29, scope: !3442)
!3442 = distinct !DILexicalBlock(scope: !3191, file: !427, line: 615, column: 15)
!3443 = !DILocation(line: 617, column: 27, scope: !3442)
!3444 = !DILocation(line: 618, column: 15, scope: !3442)
!3445 = !DILocation(line: 621, column: 17, scope: !3190)
!3446 = !DILocation(line: 621, column: 27, scope: !3190)
!3447 = !DILocalVariable(name: "__dest", arg: 1, scope: !3448, file: !2305, line: 59, type: !119)
!3448 = distinct !DISubprogram(name: "memset", scope: !2305, file: !2305, line: 59, type: !3449, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !426, retainedNodes: !3451)
!3449 = !DISubroutineType(types: !3450)
!3450 = !{!119, !119, !67, !121}
!3451 = !{!3447, !3452, !3453}
!3452 = !DILocalVariable(name: "__ch", arg: 2, scope: !3448, file: !2305, line: 59, type: !67)
!3453 = !DILocalVariable(name: "__len", arg: 3, scope: !3448, file: !2305, line: 59, type: !121)
!3454 = !DILocation(line: 0, scope: !3448, inlinedAt: !3455)
!3455 = distinct !DILocation(line: 622, column: 17, scope: !3190)
!3456 = !DILocation(line: 71, column: 10, scope: !3448, inlinedAt: !3455)
!3457 = !DILocation(line: 626, column: 29, scope: !3458)
!3458 = distinct !DILexicalBlock(scope: !3190, file: !427, line: 626, column: 21)
!3459 = !DILocation(line: 626, column: 21, scope: !3190)
!3460 = !DILocation(line: 627, column: 29, scope: !3458)
!3461 = !DILocation(line: 627, column: 19, scope: !3458)
!3462 = !DILocation(line: 629, column: 17, scope: !3190)
!3463 = !DILocation(line: 624, column: 19, scope: !3190)
!3464 = !DILocation(line: 625, column: 27, scope: !3190)
!3465 = !DILocation(line: 631, column: 21, scope: !3196)
!3466 = !DILocation(line: 632, column: 56, scope: !3196)
!3467 = !DILocation(line: 632, column: 50, scope: !3196)
!3468 = !DILocation(line: 633, column: 53, scope: !3196)
!3469 = !DILocation(line: 632, column: 36, scope: !3196)
!3470 = !DILocation(line: 634, column: 25, scope: !3196)
!3471 = !DILocation(line: 644, column: 38, scope: !3472)
!3472 = distinct !DILexicalBlock(scope: !3203, file: !427, line: 642, column: 23)
!3473 = !DILocation(line: 644, column: 48, scope: !3472)
!3474 = !DILocation(line: 644, column: 25, scope: !3472)
!3475 = !DILocation(line: 644, column: 51, scope: !3472)
!3476 = !DILocation(line: 645, column: 28, scope: !3472)
!3477 = !DILocation(line: 644, column: 34, scope: !3472)
!3478 = distinct !{!3478, !3474, !3476}
!3479 = !DILocation(line: 658, column: 43, scope: !3480)
!3480 = distinct !DILexicalBlock(scope: !3481, file: !427, line: 658, column: 29)
!3481 = distinct !DILexicalBlock(scope: !3200, file: !427, line: 658, column: 29)
!3482 = !DILocation(line: 655, column: 29, scope: !3201)
!3483 = !DILocation(line: 0, scope: !3200)
!3484 = !DILocation(line: 659, column: 49, scope: !3480)
!3485 = !DILocation(line: 659, column: 39, scope: !3480)
!3486 = !DILocation(line: 659, column: 31, scope: !3480)
!3487 = !DILocation(line: 658, column: 53, scope: !3480)
!3488 = !DILocation(line: 658, column: 29, scope: !3481)
!3489 = distinct !{!3489, !3488, !3490}
!3490 = !DILocation(line: 667, column: 33, scope: !3481)
!3491 = !DILocation(line: 674, column: 19, scope: !3190)
!3492 = !DILocation(line: 670, column: 41, scope: !3493)
!3493 = distinct !DILexicalBlock(scope: !3202, file: !427, line: 670, column: 29)
!3494 = !DILocation(line: 670, column: 31, scope: !3493)
!3495 = !DILocation(line: 670, column: 29, scope: !3202)
!3496 = !DILocation(line: 672, column: 27, scope: !3202)
!3497 = !DILocation(line: 675, column: 26, scope: !3190)
!3498 = !DILocation(line: 675, column: 24, scope: !3190)
!3499 = !DILocation(line: 674, column: 19, scope: !3196)
!3500 = distinct !{!3500, !3462, !3501}
!3501 = !DILocation(line: 675, column: 44, scope: !3190)
!3502 = !DILocation(line: 676, column: 15, scope: !3191)
!3503 = !DILocation(line: 0, scope: !3191)
!3504 = !DILocation(line: 678, column: 40, scope: !3186)
!3505 = !DILocation(line: 680, column: 19, scope: !3208)
!3506 = !DILocation(line: 680, column: 45, scope: !3208)
!3507 = !DILocation(line: 680, column: 23, scope: !3208)
!3508 = !DILocation(line: 684, column: 33, scope: !3207)
!3509 = !DILocation(line: 0, scope: !3207)
!3510 = !DILocation(line: 686, column: 17, scope: !3207)
!3511 = !DILocation(line: 405, column: 12, scope: !3178)
!3512 = !DILocation(line: 688, column: 43, scope: !3513)
!3513 = distinct !DILexicalBlock(scope: !3514, file: !427, line: 688, column: 25)
!3514 = distinct !DILexicalBlock(scope: !3515, file: !427, line: 687, column: 19)
!3515 = distinct !DILexicalBlock(scope: !3516, file: !427, line: 686, column: 17)
!3516 = distinct !DILexicalBlock(scope: !3207, file: !427, line: 686, column: 17)
!3517 = !DILocation(line: 690, column: 25, scope: !3518)
!3518 = distinct !DILexicalBlock(scope: !3519, file: !427, line: 690, column: 25)
!3519 = distinct !DILexicalBlock(scope: !3513, file: !427, line: 689, column: 23)
!3520 = !DILocation(line: 690, column: 25, scope: !3521)
!3521 = distinct !DILexicalBlock(scope: !3518, file: !427, line: 690, column: 25)
!3522 = !DILocation(line: 690, column: 25, scope: !3523)
!3523 = distinct !DILexicalBlock(scope: !3524, file: !427, line: 690, column: 25)
!3524 = distinct !DILexicalBlock(scope: !3525, file: !427, line: 690, column: 25)
!3525 = distinct !DILexicalBlock(scope: !3521, file: !427, line: 690, column: 25)
!3526 = !DILocation(line: 690, column: 25, scope: !3524)
!3527 = !DILocation(line: 690, column: 25, scope: !3528)
!3528 = distinct !DILexicalBlock(scope: !3529, file: !427, line: 690, column: 25)
!3529 = distinct !DILexicalBlock(scope: !3525, file: !427, line: 690, column: 25)
!3530 = !DILocation(line: 690, column: 25, scope: !3529)
!3531 = !DILocation(line: 690, column: 25, scope: !3532)
!3532 = distinct !DILexicalBlock(scope: !3533, file: !427, line: 690, column: 25)
!3533 = distinct !DILexicalBlock(scope: !3525, file: !427, line: 690, column: 25)
!3534 = !DILocation(line: 690, column: 25, scope: !3533)
!3535 = !DILocation(line: 690, column: 25, scope: !3525)
!3536 = !DILocation(line: 690, column: 25, scope: !3537)
!3537 = distinct !DILexicalBlock(scope: !3538, file: !427, line: 690, column: 25)
!3538 = distinct !DILexicalBlock(scope: !3518, file: !427, line: 690, column: 25)
!3539 = !DILocation(line: 690, column: 25, scope: !3538)
!3540 = !DILocation(line: 691, column: 25, scope: !3541)
!3541 = distinct !DILexicalBlock(scope: !3542, file: !427, line: 691, column: 25)
!3542 = distinct !DILexicalBlock(scope: !3519, file: !427, line: 691, column: 25)
!3543 = !DILocation(line: 691, column: 25, scope: !3542)
!3544 = !DILocation(line: 692, column: 25, scope: !3545)
!3545 = distinct !DILexicalBlock(scope: !3546, file: !427, line: 692, column: 25)
!3546 = distinct !DILexicalBlock(scope: !3519, file: !427, line: 692, column: 25)
!3547 = !DILocation(line: 692, column: 25, scope: !3546)
!3548 = !DILocation(line: 693, column: 38, scope: !3519)
!3549 = !DILocation(line: 693, column: 33, scope: !3519)
!3550 = !DILocation(line: 694, column: 23, scope: !3519)
!3551 = !DILocation(line: 695, column: 30, scope: !3552)
!3552 = distinct !DILexicalBlock(scope: !3513, file: !427, line: 695, column: 30)
!3553 = !DILocation(line: 695, column: 30, scope: !3513)
!3554 = !DILocation(line: 697, column: 25, scope: !3555)
!3555 = distinct !DILexicalBlock(scope: !3556, file: !427, line: 697, column: 25)
!3556 = distinct !DILexicalBlock(scope: !3557, file: !427, line: 697, column: 25)
!3557 = distinct !DILexicalBlock(scope: !3552, file: !427, line: 696, column: 23)
!3558 = !DILocation(line: 697, column: 25, scope: !3556)
!3559 = !DILocation(line: 699, column: 23, scope: !3557)
!3560 = !DILocation(line: 700, column: 35, scope: !3561)
!3561 = distinct !DILexicalBlock(scope: !3514, file: !427, line: 700, column: 25)
!3562 = !DILocation(line: 700, column: 30, scope: !3561)
!3563 = !DILocation(line: 700, column: 25, scope: !3514)
!3564 = !DILocation(line: 702, column: 21, scope: !3565)
!3565 = distinct !DILexicalBlock(scope: !3566, file: !427, line: 702, column: 21)
!3566 = distinct !DILexicalBlock(scope: !3514, file: !427, line: 702, column: 21)
!3567 = !DILocation(line: 702, column: 21, scope: !3568)
!3568 = distinct !DILexicalBlock(scope: !3569, file: !427, line: 702, column: 21)
!3569 = distinct !DILexicalBlock(scope: !3570, file: !427, line: 702, column: 21)
!3570 = distinct !DILexicalBlock(scope: !3565, file: !427, line: 702, column: 21)
!3571 = !DILocation(line: 702, column: 21, scope: !3569)
!3572 = !DILocation(line: 702, column: 21, scope: !3573)
!3573 = distinct !DILexicalBlock(scope: !3574, file: !427, line: 702, column: 21)
!3574 = distinct !DILexicalBlock(scope: !3570, file: !427, line: 702, column: 21)
!3575 = !DILocation(line: 702, column: 21, scope: !3574)
!3576 = !DILocation(line: 702, column: 21, scope: !3570)
!3577 = !DILocation(line: 0, scope: !3514)
!3578 = !DILocation(line: 703, column: 21, scope: !3579)
!3579 = distinct !DILexicalBlock(scope: !3580, file: !427, line: 703, column: 21)
!3580 = distinct !DILexicalBlock(scope: !3514, file: !427, line: 703, column: 21)
!3581 = !DILocation(line: 703, column: 21, scope: !3580)
!3582 = !DILocation(line: 704, column: 25, scope: !3514)
!3583 = !DILocation(line: 686, column: 17, scope: !3515)
!3584 = distinct !{!3584, !3585, !3586}
!3585 = !DILocation(line: 686, column: 17, scope: !3516)
!3586 = !DILocation(line: 705, column: 19, scope: !3516)
!3587 = !DILocation(line: 416, column: 30, scope: !3287)
!3588 = !DILocation(line: 712, column: 34, scope: !3230)
!3589 = !DILocation(line: 715, column: 35, scope: !3230)
!3590 = !DILocation(line: 715, column: 17, scope: !3230)
!3591 = !DILocation(line: 715, column: 47, scope: !3230)
!3592 = !DILocation(line: 715, column: 65, scope: !3230)
!3593 = !DILocation(line: 716, column: 15, scope: !3230)
!3594 = !DILocation(line: 716, column: 11, scope: !3230)
!3595 = !DILocation(line: 712, column: 11, scope: !3178)
!3596 = !DILocation(line: 400, column: 10, scope: !3180)
!3597 = !DILocation(line: 719, column: 5, scope: !3178)
!3598 = !DILocation(line: 720, column: 7, scope: !3599)
!3599 = distinct !DILexicalBlock(scope: !3178, file: !427, line: 720, column: 7)
!3600 = !DILocation(line: 720, column: 7, scope: !3601)
!3601 = distinct !DILexicalBlock(scope: !3599, file: !427, line: 720, column: 7)
!3602 = !DILocation(line: 720, column: 7, scope: !3603)
!3603 = distinct !DILexicalBlock(scope: !3604, file: !427, line: 720, column: 7)
!3604 = distinct !DILexicalBlock(scope: !3605, file: !427, line: 720, column: 7)
!3605 = distinct !DILexicalBlock(scope: !3601, file: !427, line: 720, column: 7)
!3606 = !DILocation(line: 720, column: 7, scope: !3604)
!3607 = !DILocation(line: 720, column: 7, scope: !3608)
!3608 = distinct !DILexicalBlock(scope: !3609, file: !427, line: 720, column: 7)
!3609 = distinct !DILexicalBlock(scope: !3605, file: !427, line: 720, column: 7)
!3610 = !DILocation(line: 720, column: 7, scope: !3609)
!3611 = !DILocation(line: 720, column: 7, scope: !3612)
!3612 = distinct !DILexicalBlock(scope: !3613, file: !427, line: 720, column: 7)
!3613 = distinct !DILexicalBlock(scope: !3605, file: !427, line: 720, column: 7)
!3614 = !DILocation(line: 720, column: 7, scope: !3613)
!3615 = !DILocation(line: 720, column: 7, scope: !3605)
!3616 = !DILocation(line: 720, column: 7, scope: !3617)
!3617 = distinct !DILexicalBlock(scope: !3618, file: !427, line: 720, column: 7)
!3618 = distinct !DILexicalBlock(scope: !3599, file: !427, line: 720, column: 7)
!3619 = !DILocation(line: 720, column: 7, scope: !3618)
!3620 = !DILocation(line: 722, column: 5, scope: !3178)
!3621 = !DILocation(line: 723, column: 7, scope: !3622)
!3622 = distinct !DILexicalBlock(scope: !3623, file: !427, line: 723, column: 7)
!3623 = distinct !DILexicalBlock(scope: !3178, file: !427, line: 723, column: 7)
!3624 = !DILocation(line: 424, column: 9, scope: !3178)
!3625 = !DILocation(line: 723, column: 7, scope: !3626)
!3626 = distinct !DILexicalBlock(scope: !3627, file: !427, line: 723, column: 7)
!3627 = distinct !DILexicalBlock(scope: !3628, file: !427, line: 723, column: 7)
!3628 = distinct !DILexicalBlock(scope: !3622, file: !427, line: 723, column: 7)
!3629 = !DILocation(line: 723, column: 7, scope: !3627)
!3630 = !DILocation(line: 723, column: 7, scope: !3631)
!3631 = distinct !DILexicalBlock(scope: !3632, file: !427, line: 723, column: 7)
!3632 = distinct !DILexicalBlock(scope: !3628, file: !427, line: 723, column: 7)
!3633 = !DILocation(line: 723, column: 7, scope: !3632)
!3634 = !DILocation(line: 723, column: 7, scope: !3628)
!3635 = !DILocation(line: 724, column: 7, scope: !3636)
!3636 = distinct !DILexicalBlock(scope: !3637, file: !427, line: 724, column: 7)
!3637 = distinct !DILexicalBlock(scope: !3178, file: !427, line: 724, column: 7)
!3638 = !DILocation(line: 724, column: 7, scope: !3637)
!3639 = !DILocation(line: 726, column: 13, scope: !3640)
!3640 = distinct !DILexicalBlock(scope: !3178, file: !427, line: 726, column: 11)
!3641 = !DILocation(line: 726, column: 11, scope: !3178)
!3642 = !DILocation(line: 728, column: 5, scope: !3179)
!3643 = !DILocation(line: 400, column: 75, scope: !3179)
!3644 = !DILocation(line: 400, column: 3, scope: !3179)
!3645 = distinct !{!3645, !3305, !3646}
!3646 = !DILocation(line: 728, column: 5, scope: !3180)
!3647 = !DILocation(line: 730, column: 11, scope: !3648)
!3648 = distinct !DILexicalBlock(scope: !3151, file: !427, line: 730, column: 7)
!3649 = !DILocation(line: 730, column: 16, scope: !3648)
!3650 = !DILocation(line: 738, column: 51, scope: !3651)
!3651 = distinct !DILexicalBlock(scope: !3151, file: !427, line: 738, column: 7)
!3652 = !DILocation(line: 739, column: 10, scope: !3651)
!3653 = !DILocation(line: 741, column: 11, scope: !3654)
!3654 = distinct !DILexicalBlock(scope: !3655, file: !427, line: 741, column: 11)
!3655 = distinct !DILexicalBlock(scope: !3651, file: !427, line: 740, column: 5)
!3656 = !DILocation(line: 741, column: 11, scope: !3655)
!3657 = !DILocation(line: 742, column: 16, scope: !3654)
!3658 = !DILocation(line: 742, column: 9, scope: !3654)
!3659 = !DILocation(line: 746, column: 18, scope: !3660)
!3660 = distinct !DILexicalBlock(scope: !3654, file: !427, line: 746, column: 16)
!3661 = !DILocation(line: 746, column: 32, scope: !3660)
!3662 = !DILocation(line: 746, column: 29, scope: !3660)
!3663 = !DILocation(line: 755, column: 7, scope: !3664)
!3664 = distinct !DILexicalBlock(scope: !3151, file: !427, line: 755, column: 7)
!3665 = !DILocation(line: 755, column: 20, scope: !3664)
!3666 = !DILocation(line: 756, column: 12, scope: !3667)
!3667 = distinct !DILexicalBlock(scope: !3668, file: !427, line: 756, column: 5)
!3668 = distinct !DILexicalBlock(scope: !3664, file: !427, line: 756, column: 5)
!3669 = !DILocation(line: 756, column: 5, scope: !3668)
!3670 = !DILocation(line: 757, column: 7, scope: !3671)
!3671 = distinct !DILexicalBlock(scope: !3672, file: !427, line: 757, column: 7)
!3672 = distinct !DILexicalBlock(scope: !3667, file: !427, line: 757, column: 7)
!3673 = !DILocation(line: 757, column: 7, scope: !3672)
!3674 = !DILocation(line: 756, column: 39, scope: !3667)
!3675 = distinct !{!3675, !3669, !3676}
!3676 = !DILocation(line: 757, column: 7, scope: !3668)
!3677 = !DILocation(line: 759, column: 11, scope: !3678)
!3678 = distinct !DILexicalBlock(scope: !3151, file: !427, line: 759, column: 7)
!3679 = !DILocation(line: 759, column: 7, scope: !3151)
!3680 = !DILocation(line: 760, column: 5, scope: !3678)
!3681 = !DILocation(line: 760, column: 17, scope: !3678)
!3682 = !DILocation(line: 763, column: 2, scope: !3151)
!3683 = !DILocation(line: 766, column: 51, scope: !3684)
!3684 = distinct !DILexicalBlock(scope: !3151, file: !427, line: 766, column: 7)
!3685 = !DILocation(line: 766, column: 21, scope: !3684)
!3686 = !DILocation(line: 770, column: 42, scope: !3151)
!3687 = !DILocation(line: 768, column: 10, scope: !3151)
!3688 = !DILocation(line: 768, column: 3, scope: !3151)
!3689 = !DILocation(line: 772, column: 1, scope: !3151)
!3690 = distinct !DISubprogram(name: "gettext_quote", scope: !427, file: !427, line: 207, type: !3691, scopeLine: 208, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !426, retainedNodes: !3693)
!3691 = !DISubroutineType(types: !3692)
!3692 = !{!65, !65, !5}
!3693 = !{!3694, !3695, !3696, !3697}
!3694 = !DILocalVariable(name: "msgid", arg: 1, scope: !3690, file: !427, line: 207, type: !65)
!3695 = !DILocalVariable(name: "s", arg: 2, scope: !3690, file: !427, line: 207, type: !5)
!3696 = !DILocalVariable(name: "translation", scope: !3690, file: !427, line: 209, type: !65)
!3697 = !DILocalVariable(name: "locale_code", scope: !3690, file: !427, line: 210, type: !65)
!3698 = !DILocation(line: 0, scope: !3690)
!3699 = !DILocation(line: 209, column: 29, scope: !3690)
!3700 = !DILocation(line: 212, column: 19, scope: !3701)
!3701 = distinct !DILexicalBlock(scope: !3690, file: !427, line: 212, column: 7)
!3702 = !DILocation(line: 212, column: 7, scope: !3690)
!3703 = !DILocation(line: 233, column: 17, scope: !3690)
!3704 = !DILocalVariable(name: "s1", arg: 1, scope: !3705, file: !3706, line: 160, type: !65)
!3705 = distinct !DISubprogram(name: "strcaseeq0", scope: !3706, file: !3706, line: 160, type: !3707, scopeLine: 161, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !426, retainedNodes: !3709)
!3706 = !DIFile(filename: "./lib/c-strcaseeq.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!3707 = !DISubroutineType(types: !3708)
!3708 = !{!67, !65, !65, !64, !64, !64, !64, !64, !64, !64, !64, !64}
!3709 = !{!3704, !3710, !3711, !3712, !3713, !3714, !3715, !3716, !3717, !3718, !3719}
!3710 = !DILocalVariable(name: "s2", arg: 2, scope: !3705, file: !3706, line: 160, type: !65)
!3711 = !DILocalVariable(name: "s20", arg: 3, scope: !3705, file: !3706, line: 160, type: !64)
!3712 = !DILocalVariable(name: "s21", arg: 4, scope: !3705, file: !3706, line: 160, type: !64)
!3713 = !DILocalVariable(name: "s22", arg: 5, scope: !3705, file: !3706, line: 160, type: !64)
!3714 = !DILocalVariable(name: "s23", arg: 6, scope: !3705, file: !3706, line: 160, type: !64)
!3715 = !DILocalVariable(name: "s24", arg: 7, scope: !3705, file: !3706, line: 160, type: !64)
!3716 = !DILocalVariable(name: "s25", arg: 8, scope: !3705, file: !3706, line: 160, type: !64)
!3717 = !DILocalVariable(name: "s26", arg: 9, scope: !3705, file: !3706, line: 160, type: !64)
!3718 = !DILocalVariable(name: "s27", arg: 10, scope: !3705, file: !3706, line: 160, type: !64)
!3719 = !DILocalVariable(name: "s28", arg: 11, scope: !3705, file: !3706, line: 160, type: !64)
!3720 = !DILocation(line: 0, scope: !3705, inlinedAt: !3721)
!3721 = distinct !DILocation(line: 234, column: 7, scope: !3722)
!3722 = distinct !DILexicalBlock(scope: !3690, file: !427, line: 234, column: 7)
!3723 = !DILocation(line: 162, column: 7, scope: !3724, inlinedAt: !3721)
!3724 = distinct !DILexicalBlock(scope: !3705, file: !3706, line: 162, column: 7)
!3725 = !DILocalVariable(name: "s1", arg: 1, scope: !3726, file: !3706, line: 146, type: !65)
!3726 = distinct !DISubprogram(name: "strcaseeq1", scope: !3706, file: !3706, line: 146, type: !3727, scopeLine: 147, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !426, retainedNodes: !3729)
!3727 = !DISubroutineType(types: !3728)
!3728 = !{!67, !65, !65, !64, !64, !64, !64, !64, !64, !64, !64}
!3729 = !{!3725, !3730, !3731, !3732, !3733, !3734, !3735, !3736, !3737, !3738}
!3730 = !DILocalVariable(name: "s2", arg: 2, scope: !3726, file: !3706, line: 146, type: !65)
!3731 = !DILocalVariable(name: "s21", arg: 3, scope: !3726, file: !3706, line: 146, type: !64)
!3732 = !DILocalVariable(name: "s22", arg: 4, scope: !3726, file: !3706, line: 146, type: !64)
!3733 = !DILocalVariable(name: "s23", arg: 5, scope: !3726, file: !3706, line: 146, type: !64)
!3734 = !DILocalVariable(name: "s24", arg: 6, scope: !3726, file: !3706, line: 146, type: !64)
!3735 = !DILocalVariable(name: "s25", arg: 7, scope: !3726, file: !3706, line: 146, type: !64)
!3736 = !DILocalVariable(name: "s26", arg: 8, scope: !3726, file: !3706, line: 146, type: !64)
!3737 = !DILocalVariable(name: "s27", arg: 9, scope: !3726, file: !3706, line: 146, type: !64)
!3738 = !DILocalVariable(name: "s28", arg: 10, scope: !3726, file: !3706, line: 146, type: !64)
!3739 = !DILocation(line: 0, scope: !3726, inlinedAt: !3740)
!3740 = distinct !DILocation(line: 167, column: 16, scope: !3741, inlinedAt: !3721)
!3741 = distinct !DILexicalBlock(scope: !3742, file: !3706, line: 164, column: 11)
!3742 = distinct !DILexicalBlock(scope: !3724, file: !3706, line: 163, column: 5)
!3743 = !DILocation(line: 148, column: 7, scope: !3744, inlinedAt: !3740)
!3744 = distinct !DILexicalBlock(scope: !3726, file: !3706, line: 148, column: 7)
!3745 = !DILocalVariable(name: "s1", arg: 1, scope: !3746, file: !3706, line: 132, type: !65)
!3746 = distinct !DISubprogram(name: "strcaseeq2", scope: !3706, file: !3706, line: 132, type: !3747, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !426, retainedNodes: !3749)
!3747 = !DISubroutineType(types: !3748)
!3748 = !{!67, !65, !65, !64, !64, !64, !64, !64, !64, !64}
!3749 = !{!3745, !3750, !3751, !3752, !3753, !3754, !3755, !3756, !3757}
!3750 = !DILocalVariable(name: "s2", arg: 2, scope: !3746, file: !3706, line: 132, type: !65)
!3751 = !DILocalVariable(name: "s22", arg: 3, scope: !3746, file: !3706, line: 132, type: !64)
!3752 = !DILocalVariable(name: "s23", arg: 4, scope: !3746, file: !3706, line: 132, type: !64)
!3753 = !DILocalVariable(name: "s24", arg: 5, scope: !3746, file: !3706, line: 132, type: !64)
!3754 = !DILocalVariable(name: "s25", arg: 6, scope: !3746, file: !3706, line: 132, type: !64)
!3755 = !DILocalVariable(name: "s26", arg: 7, scope: !3746, file: !3706, line: 132, type: !64)
!3756 = !DILocalVariable(name: "s27", arg: 8, scope: !3746, file: !3706, line: 132, type: !64)
!3757 = !DILocalVariable(name: "s28", arg: 9, scope: !3746, file: !3706, line: 132, type: !64)
!3758 = !DILocation(line: 0, scope: !3746, inlinedAt: !3759)
!3759 = distinct !DILocation(line: 153, column: 16, scope: !3760, inlinedAt: !3740)
!3760 = distinct !DILexicalBlock(scope: !3761, file: !3706, line: 150, column: 11)
!3761 = distinct !DILexicalBlock(scope: !3744, file: !3706, line: 149, column: 5)
!3762 = !DILocation(line: 134, column: 7, scope: !3763, inlinedAt: !3759)
!3763 = distinct !DILexicalBlock(scope: !3746, file: !3706, line: 134, column: 7)
!3764 = !DILocalVariable(name: "s1", arg: 1, scope: !3765, file: !3706, line: 118, type: !65)
!3765 = distinct !DISubprogram(name: "strcaseeq3", scope: !3706, file: !3706, line: 118, type: !3766, scopeLine: 119, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !426, retainedNodes: !3768)
!3766 = !DISubroutineType(types: !3767)
!3767 = !{!67, !65, !65, !64, !64, !64, !64, !64, !64}
!3768 = !{!3764, !3769, !3770, !3771, !3772, !3773, !3774, !3775}
!3769 = !DILocalVariable(name: "s2", arg: 2, scope: !3765, file: !3706, line: 118, type: !65)
!3770 = !DILocalVariable(name: "s23", arg: 3, scope: !3765, file: !3706, line: 118, type: !64)
!3771 = !DILocalVariable(name: "s24", arg: 4, scope: !3765, file: !3706, line: 118, type: !64)
!3772 = !DILocalVariable(name: "s25", arg: 5, scope: !3765, file: !3706, line: 118, type: !64)
!3773 = !DILocalVariable(name: "s26", arg: 6, scope: !3765, file: !3706, line: 118, type: !64)
!3774 = !DILocalVariable(name: "s27", arg: 7, scope: !3765, file: !3706, line: 118, type: !64)
!3775 = !DILocalVariable(name: "s28", arg: 8, scope: !3765, file: !3706, line: 118, type: !64)
!3776 = !DILocation(line: 0, scope: !3765, inlinedAt: !3777)
!3777 = distinct !DILocation(line: 139, column: 16, scope: !3778, inlinedAt: !3759)
!3778 = distinct !DILexicalBlock(scope: !3779, file: !3706, line: 136, column: 11)
!3779 = distinct !DILexicalBlock(scope: !3763, file: !3706, line: 135, column: 5)
!3780 = !DILocation(line: 120, column: 7, scope: !3781, inlinedAt: !3777)
!3781 = distinct !DILexicalBlock(scope: !3765, file: !3706, line: 120, column: 7)
!3782 = !DILocation(line: 120, column: 7, scope: !3765, inlinedAt: !3777)
!3783 = !DILocalVariable(name: "s1", arg: 1, scope: !3784, file: !3706, line: 104, type: !65)
!3784 = distinct !DISubprogram(name: "strcaseeq4", scope: !3706, file: !3706, line: 104, type: !3785, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !426, retainedNodes: !3787)
!3785 = !DISubroutineType(types: !3786)
!3786 = !{!67, !65, !65, !64, !64, !64, !64, !64}
!3787 = !{!3783, !3788, !3789, !3790, !3791, !3792, !3793}
!3788 = !DILocalVariable(name: "s2", arg: 2, scope: !3784, file: !3706, line: 104, type: !65)
!3789 = !DILocalVariable(name: "s24", arg: 3, scope: !3784, file: !3706, line: 104, type: !64)
!3790 = !DILocalVariable(name: "s25", arg: 4, scope: !3784, file: !3706, line: 104, type: !64)
!3791 = !DILocalVariable(name: "s26", arg: 5, scope: !3784, file: !3706, line: 104, type: !64)
!3792 = !DILocalVariable(name: "s27", arg: 6, scope: !3784, file: !3706, line: 104, type: !64)
!3793 = !DILocalVariable(name: "s28", arg: 7, scope: !3784, file: !3706, line: 104, type: !64)
!3794 = !DILocation(line: 0, scope: !3784, inlinedAt: !3795)
!3795 = distinct !DILocation(line: 125, column: 16, scope: !3796, inlinedAt: !3777)
!3796 = distinct !DILexicalBlock(scope: !3797, file: !3706, line: 122, column: 11)
!3797 = distinct !DILexicalBlock(scope: !3781, file: !3706, line: 121, column: 5)
!3798 = !DILocation(line: 106, column: 7, scope: !3799, inlinedAt: !3795)
!3799 = distinct !DILexicalBlock(scope: !3784, file: !3706, line: 106, column: 7)
!3800 = !DILocation(line: 106, column: 7, scope: !3784, inlinedAt: !3795)
!3801 = !DILocalVariable(name: "s1", arg: 1, scope: !3802, file: !3706, line: 90, type: !65)
!3802 = distinct !DISubprogram(name: "strcaseeq5", scope: !3706, file: !3706, line: 90, type: !3803, scopeLine: 91, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !426, retainedNodes: !3805)
!3803 = !DISubroutineType(types: !3804)
!3804 = !{!67, !65, !65, !64, !64, !64, !64}
!3805 = !{!3801, !3806, !3807, !3808, !3809, !3810}
!3806 = !DILocalVariable(name: "s2", arg: 2, scope: !3802, file: !3706, line: 90, type: !65)
!3807 = !DILocalVariable(name: "s25", arg: 3, scope: !3802, file: !3706, line: 90, type: !64)
!3808 = !DILocalVariable(name: "s26", arg: 4, scope: !3802, file: !3706, line: 90, type: !64)
!3809 = !DILocalVariable(name: "s27", arg: 5, scope: !3802, file: !3706, line: 90, type: !64)
!3810 = !DILocalVariable(name: "s28", arg: 6, scope: !3802, file: !3706, line: 90, type: !64)
!3811 = !DILocation(line: 0, scope: !3802, inlinedAt: !3812)
!3812 = distinct !DILocation(line: 111, column: 16, scope: !3813, inlinedAt: !3795)
!3813 = distinct !DILexicalBlock(scope: !3814, file: !3706, line: 108, column: 11)
!3814 = distinct !DILexicalBlock(scope: !3799, file: !3706, line: 107, column: 5)
!3815 = !DILocation(line: 92, column: 7, scope: !3816, inlinedAt: !3812)
!3816 = distinct !DILexicalBlock(scope: !3802, file: !3706, line: 92, column: 7)
!3817 = !DILocation(line: 92, column: 7, scope: !3802, inlinedAt: !3812)
!3818 = !DILocation(line: 235, column: 12, scope: !3722)
!3819 = !DILocation(line: 235, column: 21, scope: !3722)
!3820 = !DILocation(line: 235, column: 5, scope: !3722)
!3821 = !DILocation(line: 0, scope: !3726, inlinedAt: !3822)
!3822 = distinct !DILocation(line: 167, column: 16, scope: !3741, inlinedAt: !3823)
!3823 = distinct !DILocation(line: 236, column: 7, scope: !3824)
!3824 = distinct !DILexicalBlock(scope: !3690, file: !427, line: 236, column: 7)
!3825 = !DILocation(line: 148, column: 7, scope: !3744, inlinedAt: !3822)
!3826 = !DILocation(line: 0, scope: !3746, inlinedAt: !3827)
!3827 = distinct !DILocation(line: 153, column: 16, scope: !3760, inlinedAt: !3822)
!3828 = !DILocation(line: 134, column: 7, scope: !3763, inlinedAt: !3827)
!3829 = !DILocation(line: 134, column: 7, scope: !3746, inlinedAt: !3827)
!3830 = !DILocation(line: 0, scope: !3765, inlinedAt: !3831)
!3831 = distinct !DILocation(line: 139, column: 16, scope: !3778, inlinedAt: !3827)
!3832 = !DILocation(line: 120, column: 7, scope: !3781, inlinedAt: !3831)
!3833 = !DILocation(line: 120, column: 7, scope: !3765, inlinedAt: !3831)
!3834 = !DILocation(line: 0, scope: !3784, inlinedAt: !3835)
!3835 = distinct !DILocation(line: 125, column: 16, scope: !3796, inlinedAt: !3831)
!3836 = !DILocation(line: 106, column: 7, scope: !3799, inlinedAt: !3835)
!3837 = !DILocation(line: 106, column: 7, scope: !3784, inlinedAt: !3835)
!3838 = !DILocation(line: 0, scope: !3802, inlinedAt: !3839)
!3839 = distinct !DILocation(line: 111, column: 16, scope: !3813, inlinedAt: !3835)
!3840 = !DILocation(line: 92, column: 7, scope: !3816, inlinedAt: !3839)
!3841 = !DILocation(line: 92, column: 7, scope: !3802, inlinedAt: !3839)
!3842 = !DILocalVariable(name: "s1", arg: 1, scope: !3843, file: !3706, line: 76, type: !65)
!3843 = distinct !DISubprogram(name: "strcaseeq6", scope: !3706, file: !3706, line: 76, type: !3844, scopeLine: 77, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !426, retainedNodes: !3846)
!3844 = !DISubroutineType(types: !3845)
!3845 = !{!67, !65, !65, !64, !64, !64}
!3846 = !{!3842, !3847, !3848, !3849, !3850}
!3847 = !DILocalVariable(name: "s2", arg: 2, scope: !3843, file: !3706, line: 76, type: !65)
!3848 = !DILocalVariable(name: "s26", arg: 3, scope: !3843, file: !3706, line: 76, type: !64)
!3849 = !DILocalVariable(name: "s27", arg: 4, scope: !3843, file: !3706, line: 76, type: !64)
!3850 = !DILocalVariable(name: "s28", arg: 5, scope: !3843, file: !3706, line: 76, type: !64)
!3851 = !DILocation(line: 0, scope: !3843, inlinedAt: !3852)
!3852 = distinct !DILocation(line: 97, column: 16, scope: !3853, inlinedAt: !3839)
!3853 = distinct !DILexicalBlock(scope: !3854, file: !3706, line: 94, column: 11)
!3854 = distinct !DILexicalBlock(scope: !3816, file: !3706, line: 93, column: 5)
!3855 = !DILocation(line: 78, column: 7, scope: !3856, inlinedAt: !3852)
!3856 = distinct !DILexicalBlock(scope: !3843, file: !3706, line: 78, column: 7)
!3857 = !DILocation(line: 78, column: 7, scope: !3843, inlinedAt: !3852)
!3858 = !DILocalVariable(name: "s1", arg: 1, scope: !3859, file: !3706, line: 62, type: !65)
!3859 = distinct !DISubprogram(name: "strcaseeq7", scope: !3706, file: !3706, line: 62, type: !3860, scopeLine: 63, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !426, retainedNodes: !3862)
!3860 = !DISubroutineType(types: !3861)
!3861 = !{!67, !65, !65, !64, !64}
!3862 = !{!3858, !3863, !3864, !3865}
!3863 = !DILocalVariable(name: "s2", arg: 2, scope: !3859, file: !3706, line: 62, type: !65)
!3864 = !DILocalVariable(name: "s27", arg: 3, scope: !3859, file: !3706, line: 62, type: !64)
!3865 = !DILocalVariable(name: "s28", arg: 4, scope: !3859, file: !3706, line: 62, type: !64)
!3866 = !DILocation(line: 0, scope: !3859, inlinedAt: !3867)
!3867 = distinct !DILocation(line: 83, column: 16, scope: !3868, inlinedAt: !3852)
!3868 = distinct !DILexicalBlock(scope: !3869, file: !3706, line: 80, column: 11)
!3869 = distinct !DILexicalBlock(scope: !3856, file: !3706, line: 79, column: 5)
!3870 = !DILocation(line: 64, column: 7, scope: !3871, inlinedAt: !3867)
!3871 = distinct !DILexicalBlock(scope: !3859, file: !3706, line: 64, column: 7)
!3872 = !DILocation(line: 236, column: 7, scope: !3690)
!3873 = !DILocation(line: 237, column: 12, scope: !3824)
!3874 = !DILocation(line: 237, column: 21, scope: !3824)
!3875 = !DILocation(line: 237, column: 5, scope: !3824)
!3876 = !DILocation(line: 239, column: 13, scope: !3690)
!3877 = !DILocation(line: 239, column: 11, scope: !3690)
!3878 = !DILocation(line: 239, column: 3, scope: !3690)
!3879 = !DILocation(line: 240, column: 1, scope: !3690)
!3880 = distinct !DISubprogram(name: "quotearg_alloc", scope: !427, file: !427, line: 799, type: !3881, scopeLine: 801, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !426, retainedNodes: !3883)
!3881 = !DISubroutineType(types: !3882)
!3882 = !{!63, !65, !121, !443}
!3883 = !{!3884, !3885, !3886}
!3884 = !DILocalVariable(name: "arg", arg: 1, scope: !3880, file: !427, line: 799, type: !65)
!3885 = !DILocalVariable(name: "argsize", arg: 2, scope: !3880, file: !427, line: 799, type: !121)
!3886 = !DILocalVariable(name: "o", arg: 3, scope: !3880, file: !427, line: 800, type: !443)
!3887 = !DILocation(line: 0, scope: !3880)
!3888 = !DILocalVariable(name: "arg", arg: 1, scope: !3889, file: !427, line: 812, type: !65)
!3889 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !427, file: !427, line: 812, type: !3890, scopeLine: 814, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !426, retainedNodes: !3892)
!3890 = !DISubroutineType(types: !3891)
!3891 = !{!63, !65, !121, !706, !443}
!3892 = !{!3888, !3893, !3894, !3895, !3896, !3897, !3898, !3899, !3900}
!3893 = !DILocalVariable(name: "argsize", arg: 2, scope: !3889, file: !427, line: 812, type: !121)
!3894 = !DILocalVariable(name: "size", arg: 3, scope: !3889, file: !427, line: 812, type: !706)
!3895 = !DILocalVariable(name: "o", arg: 4, scope: !3889, file: !427, line: 813, type: !443)
!3896 = !DILocalVariable(name: "p", scope: !3889, file: !427, line: 815, type: !443)
!3897 = !DILocalVariable(name: "e", scope: !3889, file: !427, line: 816, type: !67)
!3898 = !DILocalVariable(name: "flags", scope: !3889, file: !427, line: 818, type: !67)
!3899 = !DILocalVariable(name: "bufsize", scope: !3889, file: !427, line: 819, type: !121)
!3900 = !DILocalVariable(name: "buf", scope: !3889, file: !427, line: 823, type: !63)
!3901 = !DILocation(line: 0, scope: !3889, inlinedAt: !3902)
!3902 = distinct !DILocation(line: 802, column: 10, scope: !3880)
!3903 = !DILocation(line: 815, column: 37, scope: !3889, inlinedAt: !3902)
!3904 = !DILocation(line: 816, column: 11, scope: !3889, inlinedAt: !3902)
!3905 = !DILocation(line: 818, column: 18, scope: !3889, inlinedAt: !3902)
!3906 = !DILocation(line: 818, column: 24, scope: !3889, inlinedAt: !3902)
!3907 = !DILocation(line: 819, column: 69, scope: !3889, inlinedAt: !3902)
!3908 = !DILocation(line: 820, column: 53, scope: !3889, inlinedAt: !3902)
!3909 = !DILocation(line: 821, column: 49, scope: !3889, inlinedAt: !3902)
!3910 = !DILocation(line: 822, column: 49, scope: !3889, inlinedAt: !3902)
!3911 = !DILocation(line: 819, column: 20, scope: !3889, inlinedAt: !3902)
!3912 = !DILocation(line: 822, column: 62, scope: !3889, inlinedAt: !3902)
!3913 = !DILocalVariable(name: "n", arg: 1, scope: !3914, file: !436, line: 216, type: !121)
!3914 = distinct !DISubprogram(name: "xcharalloc", scope: !436, file: !436, line: 216, type: !3915, scopeLine: 217, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !426, retainedNodes: !3917)
!3915 = !DISubroutineType(types: !3916)
!3916 = !{!63, !121}
!3917 = !{!3913}
!3918 = !DILocation(line: 0, scope: !3914, inlinedAt: !3919)
!3919 = distinct !DILocation(line: 823, column: 15, scope: !3889, inlinedAt: !3902)
!3920 = !DILocation(line: 218, column: 10, scope: !3914, inlinedAt: !3919)
!3921 = !DILocation(line: 824, column: 60, scope: !3889, inlinedAt: !3902)
!3922 = !DILocation(line: 826, column: 32, scope: !3889, inlinedAt: !3902)
!3923 = !DILocation(line: 826, column: 47, scope: !3889, inlinedAt: !3902)
!3924 = !DILocation(line: 824, column: 3, scope: !3889, inlinedAt: !3902)
!3925 = !DILocation(line: 827, column: 9, scope: !3889, inlinedAt: !3902)
!3926 = !DILocation(line: 802, column: 3, scope: !3880)
!3927 = !DILocation(line: 0, scope: !3889)
!3928 = !DILocation(line: 815, column: 37, scope: !3889)
!3929 = !DILocation(line: 816, column: 11, scope: !3889)
!3930 = !DILocation(line: 818, column: 18, scope: !3889)
!3931 = !DILocation(line: 818, column: 27, scope: !3889)
!3932 = !DILocation(line: 818, column: 24, scope: !3889)
!3933 = !DILocation(line: 819, column: 69, scope: !3889)
!3934 = !DILocation(line: 820, column: 53, scope: !3889)
!3935 = !DILocation(line: 821, column: 49, scope: !3889)
!3936 = !DILocation(line: 822, column: 49, scope: !3889)
!3937 = !DILocation(line: 819, column: 20, scope: !3889)
!3938 = !DILocation(line: 822, column: 62, scope: !3889)
!3939 = !DILocation(line: 0, scope: !3914, inlinedAt: !3940)
!3940 = distinct !DILocation(line: 823, column: 15, scope: !3889)
!3941 = !DILocation(line: 218, column: 10, scope: !3914, inlinedAt: !3940)
!3942 = !DILocation(line: 824, column: 60, scope: !3889)
!3943 = !DILocation(line: 826, column: 32, scope: !3889)
!3944 = !DILocation(line: 826, column: 47, scope: !3889)
!3945 = !DILocation(line: 824, column: 3, scope: !3889)
!3946 = !DILocation(line: 827, column: 9, scope: !3889)
!3947 = !DILocation(line: 828, column: 7, scope: !3889)
!3948 = !DILocation(line: 829, column: 11, scope: !3949)
!3949 = distinct !DILexicalBlock(scope: !3889, file: !427, line: 828, column: 7)
!3950 = !DILocation(line: 829, column: 5, scope: !3949)
!3951 = !DILocation(line: 830, column: 3, scope: !3889)
!3952 = distinct !DISubprogram(name: "quotearg_free", scope: !427, file: !427, line: 848, type: !147, scopeLine: 849, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !426, retainedNodes: !3953)
!3953 = !{!3954, !3955}
!3954 = !DILocalVariable(name: "sv", scope: !3952, file: !427, line: 850, type: !518)
!3955 = !DILocalVariable(name: "i", scope: !3952, file: !427, line: 851, type: !67)
!3956 = !DILocation(line: 850, column: 24, scope: !3952)
!3957 = !DILocation(line: 0, scope: !3952)
!3958 = !DILocation(line: 852, column: 19, scope: !3959)
!3959 = distinct !DILexicalBlock(scope: !3960, file: !427, line: 852, column: 3)
!3960 = distinct !DILexicalBlock(scope: !3952, file: !427, line: 852, column: 3)
!3961 = !DILocation(line: 852, column: 17, scope: !3959)
!3962 = !DILocation(line: 852, column: 3, scope: !3960)
!3963 = !DILocation(line: 853, column: 17, scope: !3959)
!3964 = !{!3965, !1348, i64 8}
!3965 = !{!"slotvec", !1613, i64 0, !1348, i64 8}
!3966 = !DILocation(line: 853, column: 5, scope: !3959)
!3967 = !DILocation(line: 852, column: 28, scope: !3959)
!3968 = distinct !{!3968, !3962, !3969}
!3969 = !DILocation(line: 853, column: 20, scope: !3960)
!3970 = !DILocation(line: 854, column: 13, scope: !3971)
!3971 = distinct !DILexicalBlock(scope: !3952, file: !427, line: 854, column: 7)
!3972 = !DILocation(line: 854, column: 17, scope: !3971)
!3973 = !DILocation(line: 854, column: 7, scope: !3952)
!3974 = !DILocation(line: 856, column: 7, scope: !3975)
!3975 = distinct !DILexicalBlock(scope: !3971, file: !427, line: 855, column: 5)
!3976 = !DILocation(line: 857, column: 21, scope: !3975)
!3977 = !{!3965, !1613, i64 0}
!3978 = !DILocation(line: 858, column: 20, scope: !3975)
!3979 = !DILocation(line: 859, column: 5, scope: !3975)
!3980 = !DILocation(line: 860, column: 10, scope: !3981)
!3981 = distinct !DILexicalBlock(scope: !3952, file: !427, line: 860, column: 7)
!3982 = !DILocation(line: 860, column: 7, scope: !3952)
!3983 = !DILocation(line: 862, column: 13, scope: !3984)
!3984 = distinct !DILexicalBlock(scope: !3981, file: !427, line: 861, column: 5)
!3985 = !DILocation(line: 862, column: 7, scope: !3984)
!3986 = !DILocation(line: 863, column: 15, scope: !3984)
!3987 = !DILocation(line: 864, column: 5, scope: !3984)
!3988 = !DILocation(line: 865, column: 10, scope: !3952)
!3989 = !DILocation(line: 866, column: 1, scope: !3952)
!3990 = distinct !DISubprogram(name: "quotearg_n", scope: !427, file: !427, line: 931, type: !134, scopeLine: 932, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !426, retainedNodes: !3991)
!3991 = !{!3992, !3993}
!3992 = !DILocalVariable(name: "n", arg: 1, scope: !3990, file: !427, line: 931, type: !67)
!3993 = !DILocalVariable(name: "arg", arg: 2, scope: !3990, file: !427, line: 931, type: !65)
!3994 = !DILocation(line: 0, scope: !3990)
!3995 = !DILocation(line: 933, column: 10, scope: !3990)
!3996 = !DILocation(line: 933, column: 3, scope: !3990)
!3997 = distinct !DISubprogram(name: "quotearg_n_options", scope: !427, file: !427, line: 877, type: !3998, scopeLine: 879, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !426, retainedNodes: !4000)
!3998 = !DISubroutineType(types: !3999)
!3999 = !{!63, !67, !65, !121, !443}
!4000 = !{!4001, !4002, !4003, !4004, !4005, !4006, !4007, !4010, !4011, !4013, !4014, !4015}
!4001 = !DILocalVariable(name: "n", arg: 1, scope: !3997, file: !427, line: 877, type: !67)
!4002 = !DILocalVariable(name: "arg", arg: 2, scope: !3997, file: !427, line: 877, type: !65)
!4003 = !DILocalVariable(name: "argsize", arg: 3, scope: !3997, file: !427, line: 877, type: !121)
!4004 = !DILocalVariable(name: "options", arg: 4, scope: !3997, file: !427, line: 878, type: !443)
!4005 = !DILocalVariable(name: "e", scope: !3997, file: !427, line: 880, type: !67)
!4006 = !DILocalVariable(name: "sv", scope: !3997, file: !427, line: 882, type: !518)
!4007 = !DILocalVariable(name: "preallocated", scope: !4008, file: !427, line: 889, type: !204)
!4008 = distinct !DILexicalBlock(scope: !4009, file: !427, line: 888, column: 5)
!4009 = distinct !DILexicalBlock(scope: !3997, file: !427, line: 887, column: 7)
!4010 = !DILocalVariable(name: "nmax", scope: !4008, file: !427, line: 890, type: !67)
!4011 = !DILocalVariable(name: "size", scope: !4012, file: !427, line: 903, type: !121)
!4012 = distinct !DILexicalBlock(scope: !3997, file: !427, line: 902, column: 3)
!4013 = !DILocalVariable(name: "val", scope: !4012, file: !427, line: 904, type: !63)
!4014 = !DILocalVariable(name: "flags", scope: !4012, file: !427, line: 906, type: !67)
!4015 = !DILocalVariable(name: "qsize", scope: !4012, file: !427, line: 907, type: !121)
!4016 = !DILocation(line: 0, scope: !3997)
!4017 = !DILocation(line: 880, column: 11, scope: !3997)
!4018 = !DILocation(line: 882, column: 24, scope: !3997)
!4019 = !DILocation(line: 884, column: 9, scope: !4020)
!4020 = distinct !DILexicalBlock(scope: !3997, file: !427, line: 884, column: 7)
!4021 = !DILocation(line: 884, column: 7, scope: !3997)
!4022 = !DILocation(line: 885, column: 5, scope: !4020)
!4023 = !DILocation(line: 887, column: 7, scope: !4009)
!4024 = !DILocation(line: 887, column: 14, scope: !4009)
!4025 = !DILocation(line: 887, column: 7, scope: !3997)
!4026 = !DILocation(line: 889, column: 31, scope: !4008)
!4027 = !DILocation(line: 0, scope: !4008)
!4028 = !DILocation(line: 892, column: 16, scope: !4029)
!4029 = distinct !DILexicalBlock(scope: !4008, file: !427, line: 892, column: 11)
!4030 = !DILocation(line: 892, column: 11, scope: !4008)
!4031 = !DILocation(line: 893, column: 9, scope: !4029)
!4032 = !DILocation(line: 895, column: 32, scope: !4008)
!4033 = !DILocation(line: 895, column: 61, scope: !4008)
!4034 = !DILocation(line: 895, column: 58, scope: !4008)
!4035 = !DILocation(line: 895, column: 66, scope: !4008)
!4036 = !DILocation(line: 895, column: 22, scope: !4008)
!4037 = !DILocation(line: 895, column: 15, scope: !4008)
!4038 = !DILocation(line: 896, column: 11, scope: !4008)
!4039 = !DILocation(line: 897, column: 15, scope: !4040)
!4040 = distinct !DILexicalBlock(scope: !4008, file: !427, line: 896, column: 11)
!4041 = !{i64 0, i64 8, !1612, i64 8, i64 8, !1347}
!4042 = !DILocation(line: 897, column: 9, scope: !4040)
!4043 = !DILocation(line: 898, column: 20, scope: !4008)
!4044 = !DILocation(line: 898, column: 18, scope: !4008)
!4045 = !DILocation(line: 898, column: 15, scope: !4008)
!4046 = !DILocation(line: 898, column: 38, scope: !4008)
!4047 = !DILocation(line: 898, column: 31, scope: !4008)
!4048 = !DILocation(line: 898, column: 48, scope: !4008)
!4049 = !DILocation(line: 0, scope: !3448, inlinedAt: !4050)
!4050 = distinct !DILocation(line: 898, column: 7, scope: !4008)
!4051 = !DILocation(line: 71, column: 10, scope: !3448, inlinedAt: !4050)
!4052 = !DILocation(line: 899, column: 14, scope: !4008)
!4053 = !DILocation(line: 900, column: 5, scope: !4008)
!4054 = !DILocation(line: 903, column: 19, scope: !4012)
!4055 = !DILocation(line: 903, column: 25, scope: !4012)
!4056 = !DILocation(line: 0, scope: !4012)
!4057 = !DILocation(line: 904, column: 23, scope: !4012)
!4058 = !DILocation(line: 906, column: 26, scope: !4012)
!4059 = !DILocation(line: 906, column: 32, scope: !4012)
!4060 = !DILocation(line: 908, column: 55, scope: !4012)
!4061 = !DILocation(line: 909, column: 46, scope: !4012)
!4062 = !DILocation(line: 910, column: 55, scope: !4012)
!4063 = !DILocation(line: 911, column: 55, scope: !4012)
!4064 = !DILocation(line: 907, column: 20, scope: !4012)
!4065 = !DILocation(line: 913, column: 14, scope: !4066)
!4066 = distinct !DILexicalBlock(scope: !4012, file: !427, line: 913, column: 9)
!4067 = !DILocation(line: 913, column: 9, scope: !4012)
!4068 = !DILocation(line: 915, column: 35, scope: !4069)
!4069 = distinct !DILexicalBlock(scope: !4066, file: !427, line: 914, column: 7)
!4070 = !DILocation(line: 915, column: 20, scope: !4069)
!4071 = !DILocation(line: 916, column: 17, scope: !4072)
!4072 = distinct !DILexicalBlock(scope: !4069, file: !427, line: 916, column: 13)
!4073 = !DILocation(line: 916, column: 13, scope: !4069)
!4074 = !DILocation(line: 917, column: 11, scope: !4072)
!4075 = !DILocation(line: 0, scope: !3914, inlinedAt: !4076)
!4076 = distinct !DILocation(line: 918, column: 27, scope: !4069)
!4077 = !DILocation(line: 218, column: 10, scope: !3914, inlinedAt: !4076)
!4078 = !DILocation(line: 918, column: 19, scope: !4069)
!4079 = !DILocation(line: 919, column: 69, scope: !4069)
!4080 = !DILocation(line: 921, column: 44, scope: !4069)
!4081 = !DILocation(line: 922, column: 44, scope: !4069)
!4082 = !DILocation(line: 919, column: 9, scope: !4069)
!4083 = !DILocation(line: 923, column: 7, scope: !4069)
!4084 = !DILocation(line: 925, column: 11, scope: !4012)
!4085 = !DILocation(line: 926, column: 5, scope: !4012)
!4086 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !427, file: !427, line: 937, type: !4087, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !426, retainedNodes: !4089)
!4087 = !DISubroutineType(types: !4088)
!4088 = !{!63, !67, !65, !121}
!4089 = !{!4090, !4091, !4092}
!4090 = !DILocalVariable(name: "n", arg: 1, scope: !4086, file: !427, line: 937, type: !67)
!4091 = !DILocalVariable(name: "arg", arg: 2, scope: !4086, file: !427, line: 937, type: !65)
!4092 = !DILocalVariable(name: "argsize", arg: 3, scope: !4086, file: !427, line: 937, type: !121)
!4093 = !DILocation(line: 0, scope: !4086)
!4094 = !DILocation(line: 939, column: 10, scope: !4086)
!4095 = !DILocation(line: 939, column: 3, scope: !4086)
!4096 = distinct !DISubprogram(name: "quotearg", scope: !427, file: !427, line: 943, type: !140, scopeLine: 944, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !426, retainedNodes: !4097)
!4097 = !{!4098}
!4098 = !DILocalVariable(name: "arg", arg: 1, scope: !4096, file: !427, line: 943, type: !65)
!4099 = !DILocation(line: 0, scope: !4096)
!4100 = !DILocation(line: 0, scope: !3990, inlinedAt: !4101)
!4101 = distinct !DILocation(line: 945, column: 10, scope: !4096)
!4102 = !DILocation(line: 933, column: 10, scope: !3990, inlinedAt: !4101)
!4103 = !DILocation(line: 945, column: 3, scope: !4096)
!4104 = distinct !DISubprogram(name: "quotearg_mem", scope: !427, file: !427, line: 949, type: !4105, scopeLine: 950, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !426, retainedNodes: !4107)
!4105 = !DISubroutineType(types: !4106)
!4106 = !{!63, !65, !121}
!4107 = !{!4108, !4109}
!4108 = !DILocalVariable(name: "arg", arg: 1, scope: !4104, file: !427, line: 949, type: !65)
!4109 = !DILocalVariable(name: "argsize", arg: 2, scope: !4104, file: !427, line: 949, type: !121)
!4110 = !DILocation(line: 0, scope: !4104)
!4111 = !DILocation(line: 0, scope: !4086, inlinedAt: !4112)
!4112 = distinct !DILocation(line: 951, column: 10, scope: !4104)
!4113 = !DILocation(line: 939, column: 10, scope: !4086, inlinedAt: !4112)
!4114 = !DILocation(line: 951, column: 3, scope: !4104)
!4115 = distinct !DISubprogram(name: "quotearg_n_style", scope: !427, file: !427, line: 955, type: !184, scopeLine: 956, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !426, retainedNodes: !4116)
!4116 = !{!4117, !4118, !4119, !4120}
!4117 = !DILocalVariable(name: "n", arg: 1, scope: !4115, file: !427, line: 955, type: !67)
!4118 = !DILocalVariable(name: "s", arg: 2, scope: !4115, file: !427, line: 955, type: !5)
!4119 = !DILocalVariable(name: "arg", arg: 3, scope: !4115, file: !427, line: 955, type: !65)
!4120 = !DILocalVariable(name: "o", scope: !4115, file: !427, line: 957, type: !444)
!4121 = !DILocation(line: 0, scope: !4115)
!4122 = !DILocation(line: 957, column: 3, scope: !4115)
!4123 = !DILocation(line: 957, column: 32, scope: !4115)
!4124 = !DILocalVariable(name: "style", arg: 1, scope: !4125, file: !427, line: 193, type: !5)
!4125 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !427, file: !427, line: 193, type: !4126, scopeLine: 194, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !426, retainedNodes: !4128)
!4126 = !DISubroutineType(types: !4127)
!4127 = !{!445, !5}
!4128 = !{!4124, !4129}
!4129 = !DILocalVariable(name: "o", scope: !4125, file: !427, line: 195, type: !445)
!4130 = !DILocation(line: 0, scope: !4125, inlinedAt: !4131)
!4131 = distinct !DILocation(line: 957, column: 36, scope: !4115)
!4132 = !DILocation(line: 195, column: 26, scope: !4125, inlinedAt: !4131)
!4133 = !{!4134}
!4134 = distinct !{!4134, !4135, !"quoting_options_from_style: argument 0"}
!4135 = distinct !{!4135, !"quoting_options_from_style"}
!4136 = !DILocation(line: 196, column: 13, scope: !4137, inlinedAt: !4131)
!4137 = distinct !DILexicalBlock(scope: !4125, file: !427, line: 196, column: 7)
!4138 = !DILocation(line: 196, column: 7, scope: !4125, inlinedAt: !4131)
!4139 = !DILocation(line: 197, column: 5, scope: !4137, inlinedAt: !4131)
!4140 = !DILocation(line: 198, column: 5, scope: !4125, inlinedAt: !4131)
!4141 = !DILocation(line: 198, column: 11, scope: !4125, inlinedAt: !4131)
!4142 = !DILocation(line: 958, column: 10, scope: !4115)
!4143 = !DILocation(line: 959, column: 1, scope: !4115)
!4144 = !DILocation(line: 958, column: 3, scope: !4115)
!4145 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !427, file: !427, line: 962, type: !4146, scopeLine: 964, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !426, retainedNodes: !4148)
!4146 = !DISubroutineType(types: !4147)
!4147 = !{!63, !67, !5, !65, !121}
!4148 = !{!4149, !4150, !4151, !4152, !4153}
!4149 = !DILocalVariable(name: "n", arg: 1, scope: !4145, file: !427, line: 962, type: !67)
!4150 = !DILocalVariable(name: "s", arg: 2, scope: !4145, file: !427, line: 962, type: !5)
!4151 = !DILocalVariable(name: "arg", arg: 3, scope: !4145, file: !427, line: 963, type: !65)
!4152 = !DILocalVariable(name: "argsize", arg: 4, scope: !4145, file: !427, line: 963, type: !121)
!4153 = !DILocalVariable(name: "o", scope: !4145, file: !427, line: 965, type: !444)
!4154 = !DILocation(line: 0, scope: !4145)
!4155 = !DILocation(line: 965, column: 3, scope: !4145)
!4156 = !DILocation(line: 965, column: 32, scope: !4145)
!4157 = !DILocation(line: 0, scope: !4125, inlinedAt: !4158)
!4158 = distinct !DILocation(line: 965, column: 36, scope: !4145)
!4159 = !DILocation(line: 195, column: 26, scope: !4125, inlinedAt: !4158)
!4160 = !{!4161}
!4161 = distinct !{!4161, !4162, !"quoting_options_from_style: argument 0"}
!4162 = distinct !{!4162, !"quoting_options_from_style"}
!4163 = !DILocation(line: 196, column: 13, scope: !4137, inlinedAt: !4158)
!4164 = !DILocation(line: 196, column: 7, scope: !4125, inlinedAt: !4158)
!4165 = !DILocation(line: 197, column: 5, scope: !4137, inlinedAt: !4158)
!4166 = !DILocation(line: 198, column: 5, scope: !4125, inlinedAt: !4158)
!4167 = !DILocation(line: 198, column: 11, scope: !4125, inlinedAt: !4158)
!4168 = !DILocation(line: 966, column: 10, scope: !4145)
!4169 = !DILocation(line: 967, column: 1, scope: !4145)
!4170 = !DILocation(line: 966, column: 3, scope: !4145)
!4171 = distinct !DISubprogram(name: "quotearg_style", scope: !427, file: !427, line: 970, type: !4172, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !426, retainedNodes: !4174)
!4172 = !DISubroutineType(types: !4173)
!4173 = !{!63, !5, !65}
!4174 = !{!4175, !4176}
!4175 = !DILocalVariable(name: "s", arg: 1, scope: !4171, file: !427, line: 970, type: !5)
!4176 = !DILocalVariable(name: "arg", arg: 2, scope: !4171, file: !427, line: 970, type: !65)
!4177 = !DILocation(line: 195, column: 26, scope: !4125, inlinedAt: !4178)
!4178 = distinct !DILocation(line: 957, column: 36, scope: !4115, inlinedAt: !4179)
!4179 = distinct !DILocation(line: 972, column: 10, scope: !4171)
!4180 = !DILocation(line: 957, column: 32, scope: !4115, inlinedAt: !4179)
!4181 = !DILocation(line: 0, scope: !4171)
!4182 = !DILocation(line: 0, scope: !4115, inlinedAt: !4179)
!4183 = !DILocation(line: 957, column: 3, scope: !4115, inlinedAt: !4179)
!4184 = !DILocation(line: 0, scope: !4125, inlinedAt: !4178)
!4185 = !{!4186}
!4186 = distinct !{!4186, !4187, !"quoting_options_from_style: argument 0"}
!4187 = distinct !{!4187, !"quoting_options_from_style"}
!4188 = !DILocation(line: 196, column: 13, scope: !4137, inlinedAt: !4178)
!4189 = !DILocation(line: 196, column: 7, scope: !4125, inlinedAt: !4178)
!4190 = !DILocation(line: 197, column: 5, scope: !4137, inlinedAt: !4178)
!4191 = !DILocation(line: 198, column: 5, scope: !4125, inlinedAt: !4178)
!4192 = !DILocation(line: 198, column: 11, scope: !4125, inlinedAt: !4178)
!4193 = !DILocation(line: 958, column: 10, scope: !4115, inlinedAt: !4179)
!4194 = !DILocation(line: 959, column: 1, scope: !4115, inlinedAt: !4179)
!4195 = !DILocation(line: 972, column: 3, scope: !4171)
!4196 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !427, file: !427, line: 976, type: !4197, scopeLine: 977, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !426, retainedNodes: !4199)
!4197 = !DISubroutineType(types: !4198)
!4198 = !{!63, !5, !65, !121}
!4199 = !{!4200, !4201, !4202}
!4200 = !DILocalVariable(name: "s", arg: 1, scope: !4196, file: !427, line: 976, type: !5)
!4201 = !DILocalVariable(name: "arg", arg: 2, scope: !4196, file: !427, line: 976, type: !65)
!4202 = !DILocalVariable(name: "argsize", arg: 3, scope: !4196, file: !427, line: 976, type: !121)
!4203 = !DILocation(line: 195, column: 26, scope: !4125, inlinedAt: !4204)
!4204 = distinct !DILocation(line: 965, column: 36, scope: !4145, inlinedAt: !4205)
!4205 = distinct !DILocation(line: 978, column: 10, scope: !4196)
!4206 = !DILocation(line: 965, column: 32, scope: !4145, inlinedAt: !4205)
!4207 = !DILocation(line: 0, scope: !4196)
!4208 = !DILocation(line: 0, scope: !4145, inlinedAt: !4205)
!4209 = !DILocation(line: 965, column: 3, scope: !4145, inlinedAt: !4205)
!4210 = !DILocation(line: 0, scope: !4125, inlinedAt: !4204)
!4211 = !{!4212}
!4212 = distinct !{!4212, !4213, !"quoting_options_from_style: argument 0"}
!4213 = distinct !{!4213, !"quoting_options_from_style"}
!4214 = !DILocation(line: 196, column: 13, scope: !4137, inlinedAt: !4204)
!4215 = !DILocation(line: 196, column: 7, scope: !4125, inlinedAt: !4204)
!4216 = !DILocation(line: 197, column: 5, scope: !4137, inlinedAt: !4204)
!4217 = !DILocation(line: 198, column: 5, scope: !4125, inlinedAt: !4204)
!4218 = !DILocation(line: 198, column: 11, scope: !4125, inlinedAt: !4204)
!4219 = !DILocation(line: 966, column: 10, scope: !4145, inlinedAt: !4205)
!4220 = !DILocation(line: 967, column: 1, scope: !4145, inlinedAt: !4205)
!4221 = !DILocation(line: 978, column: 3, scope: !4196)
!4222 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !427, file: !427, line: 982, type: !4223, scopeLine: 983, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !426, retainedNodes: !4225)
!4223 = !DISubroutineType(types: !4224)
!4224 = !{!63, !65, !121, !64}
!4225 = !{!4226, !4227, !4228, !4229}
!4226 = !DILocalVariable(name: "arg", arg: 1, scope: !4222, file: !427, line: 982, type: !65)
!4227 = !DILocalVariable(name: "argsize", arg: 2, scope: !4222, file: !427, line: 982, type: !121)
!4228 = !DILocalVariable(name: "ch", arg: 3, scope: !4222, file: !427, line: 982, type: !64)
!4229 = !DILocalVariable(name: "options", scope: !4222, file: !427, line: 984, type: !445)
!4230 = !DILocation(line: 0, scope: !4222)
!4231 = !DILocation(line: 984, column: 3, scope: !4222)
!4232 = !DILocation(line: 984, column: 26, scope: !4222)
!4233 = !DILocation(line: 985, column: 13, scope: !4222)
!4234 = !{i64 0, i64 4, !1649, i64 4, i64 4, !1559, i64 8, i64 32, !1649, i64 40, i64 8, !1347, i64 48, i64 8, !1347}
!4235 = !DILocation(line: 0, scope: !3063, inlinedAt: !4236)
!4236 = distinct !DILocation(line: 986, column: 3, scope: !4222)
!4237 = !DILocation(line: 156, column: 62, scope: !3063, inlinedAt: !4236)
!4238 = !DILocation(line: 156, column: 57, scope: !3063, inlinedAt: !4236)
!4239 = !DILocation(line: 157, column: 15, scope: !3063, inlinedAt: !4236)
!4240 = !DILocation(line: 158, column: 12, scope: !3063, inlinedAt: !4236)
!4241 = !DILocation(line: 158, column: 15, scope: !3063, inlinedAt: !4236)
!4242 = !DILocation(line: 158, column: 25, scope: !3063, inlinedAt: !4236)
!4243 = !DILocation(line: 159, column: 18, scope: !3063, inlinedAt: !4236)
!4244 = !DILocation(line: 159, column: 23, scope: !3063, inlinedAt: !4236)
!4245 = !DILocation(line: 159, column: 6, scope: !3063, inlinedAt: !4236)
!4246 = !DILocation(line: 987, column: 10, scope: !4222)
!4247 = !DILocation(line: 988, column: 1, scope: !4222)
!4248 = !DILocation(line: 987, column: 3, scope: !4222)
!4249 = distinct !DISubprogram(name: "quotearg_char", scope: !427, file: !427, line: 991, type: !4250, scopeLine: 992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !426, retainedNodes: !4252)
!4250 = !DISubroutineType(types: !4251)
!4251 = !{!63, !65, !64}
!4252 = !{!4253, !4254}
!4253 = !DILocalVariable(name: "arg", arg: 1, scope: !4249, file: !427, line: 991, type: !65)
!4254 = !DILocalVariable(name: "ch", arg: 2, scope: !4249, file: !427, line: 991, type: !64)
!4255 = !DILocation(line: 984, column: 26, scope: !4222, inlinedAt: !4256)
!4256 = distinct !DILocation(line: 993, column: 10, scope: !4249)
!4257 = !DILocation(line: 0, scope: !4249)
!4258 = !DILocation(line: 0, scope: !4222, inlinedAt: !4256)
!4259 = !DILocation(line: 984, column: 3, scope: !4222, inlinedAt: !4256)
!4260 = !DILocation(line: 985, column: 13, scope: !4222, inlinedAt: !4256)
!4261 = !DILocation(line: 0, scope: !3063, inlinedAt: !4262)
!4262 = distinct !DILocation(line: 986, column: 3, scope: !4222, inlinedAt: !4256)
!4263 = !DILocation(line: 156, column: 62, scope: !3063, inlinedAt: !4262)
!4264 = !DILocation(line: 156, column: 57, scope: !3063, inlinedAt: !4262)
!4265 = !DILocation(line: 157, column: 15, scope: !3063, inlinedAt: !4262)
!4266 = !DILocation(line: 158, column: 12, scope: !3063, inlinedAt: !4262)
!4267 = !DILocation(line: 158, column: 15, scope: !3063, inlinedAt: !4262)
!4268 = !DILocation(line: 158, column: 25, scope: !3063, inlinedAt: !4262)
!4269 = !DILocation(line: 159, column: 18, scope: !3063, inlinedAt: !4262)
!4270 = !DILocation(line: 159, column: 23, scope: !3063, inlinedAt: !4262)
!4271 = !DILocation(line: 159, column: 6, scope: !3063, inlinedAt: !4262)
!4272 = !DILocation(line: 987, column: 10, scope: !4222, inlinedAt: !4256)
!4273 = !DILocation(line: 988, column: 1, scope: !4222, inlinedAt: !4256)
!4274 = !DILocation(line: 993, column: 3, scope: !4249)
!4275 = distinct !DISubprogram(name: "quotearg_colon", scope: !427, file: !427, line: 997, type: !140, scopeLine: 998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !426, retainedNodes: !4276)
!4276 = !{!4277}
!4277 = !DILocalVariable(name: "arg", arg: 1, scope: !4275, file: !427, line: 997, type: !65)
!4278 = !DILocation(line: 984, column: 26, scope: !4222, inlinedAt: !4279)
!4279 = distinct !DILocation(line: 993, column: 10, scope: !4249, inlinedAt: !4280)
!4280 = distinct !DILocation(line: 999, column: 10, scope: !4275)
!4281 = !DILocation(line: 0, scope: !4275)
!4282 = !DILocation(line: 0, scope: !4249, inlinedAt: !4280)
!4283 = !DILocation(line: 0, scope: !4222, inlinedAt: !4279)
!4284 = !DILocation(line: 984, column: 3, scope: !4222, inlinedAt: !4279)
!4285 = !DILocation(line: 985, column: 13, scope: !4222, inlinedAt: !4279)
!4286 = !DILocation(line: 0, scope: !3063, inlinedAt: !4287)
!4287 = distinct !DILocation(line: 986, column: 3, scope: !4222, inlinedAt: !4279)
!4288 = !DILocation(line: 156, column: 57, scope: !3063, inlinedAt: !4287)
!4289 = !DILocation(line: 158, column: 12, scope: !3063, inlinedAt: !4287)
!4290 = !DILocation(line: 159, column: 6, scope: !3063, inlinedAt: !4287)
!4291 = !DILocation(line: 987, column: 10, scope: !4222, inlinedAt: !4279)
!4292 = !DILocation(line: 988, column: 1, scope: !4222, inlinedAt: !4279)
!4293 = !DILocation(line: 999, column: 3, scope: !4275)
!4294 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !427, file: !427, line: 1003, type: !4105, scopeLine: 1004, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !426, retainedNodes: !4295)
!4295 = !{!4296, !4297}
!4296 = !DILocalVariable(name: "arg", arg: 1, scope: !4294, file: !427, line: 1003, type: !65)
!4297 = !DILocalVariable(name: "argsize", arg: 2, scope: !4294, file: !427, line: 1003, type: !121)
!4298 = !DILocation(line: 984, column: 26, scope: !4222, inlinedAt: !4299)
!4299 = distinct !DILocation(line: 1005, column: 10, scope: !4294)
!4300 = !DILocation(line: 0, scope: !4294)
!4301 = !DILocation(line: 0, scope: !4222, inlinedAt: !4299)
!4302 = !DILocation(line: 984, column: 3, scope: !4222, inlinedAt: !4299)
!4303 = !DILocation(line: 985, column: 13, scope: !4222, inlinedAt: !4299)
!4304 = !DILocation(line: 0, scope: !3063, inlinedAt: !4305)
!4305 = distinct !DILocation(line: 986, column: 3, scope: !4222, inlinedAt: !4299)
!4306 = !DILocation(line: 156, column: 57, scope: !3063, inlinedAt: !4305)
!4307 = !DILocation(line: 158, column: 12, scope: !3063, inlinedAt: !4305)
!4308 = !DILocation(line: 159, column: 6, scope: !3063, inlinedAt: !4305)
!4309 = !DILocation(line: 987, column: 10, scope: !4222, inlinedAt: !4299)
!4310 = !DILocation(line: 988, column: 1, scope: !4222, inlinedAt: !4299)
!4311 = !DILocation(line: 1005, column: 3, scope: !4294)
!4312 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !427, file: !427, line: 1009, type: !184, scopeLine: 1010, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !426, retainedNodes: !4313)
!4313 = !{!4314, !4315, !4316, !4317}
!4314 = !DILocalVariable(name: "n", arg: 1, scope: !4312, file: !427, line: 1009, type: !67)
!4315 = !DILocalVariable(name: "s", arg: 2, scope: !4312, file: !427, line: 1009, type: !5)
!4316 = !DILocalVariable(name: "arg", arg: 3, scope: !4312, file: !427, line: 1009, type: !65)
!4317 = !DILocalVariable(name: "options", scope: !4312, file: !427, line: 1011, type: !445)
!4318 = !DILocation(line: 195, column: 26, scope: !4125, inlinedAt: !4319)
!4319 = distinct !DILocation(line: 1012, column: 13, scope: !4312)
!4320 = !DILocation(line: 0, scope: !4312)
!4321 = !DILocation(line: 1011, column: 3, scope: !4312)
!4322 = !DILocation(line: 1011, column: 26, scope: !4312)
!4323 = !DILocation(line: 1012, column: 13, scope: !4312)
!4324 = !DILocation(line: 0, scope: !4125, inlinedAt: !4319)
!4325 = !{!4326}
!4326 = distinct !{!4326, !4327, !"quoting_options_from_style: argument 0"}
!4327 = distinct !{!4327, !"quoting_options_from_style"}
!4328 = !DILocation(line: 196, column: 13, scope: !4137, inlinedAt: !4319)
!4329 = !DILocation(line: 196, column: 7, scope: !4125, inlinedAt: !4319)
!4330 = !DILocation(line: 197, column: 5, scope: !4137, inlinedAt: !4319)
!4331 = !DILocation(line: 0, scope: !3063, inlinedAt: !4332)
!4332 = distinct !DILocation(line: 1013, column: 3, scope: !4312)
!4333 = !DILocation(line: 156, column: 57, scope: !3063, inlinedAt: !4332)
!4334 = !DILocation(line: 158, column: 12, scope: !3063, inlinedAt: !4332)
!4335 = !DILocation(line: 159, column: 6, scope: !3063, inlinedAt: !4332)
!4336 = !DILocation(line: 1014, column: 10, scope: !4312)
!4337 = !DILocation(line: 1015, column: 1, scope: !4312)
!4338 = !DILocation(line: 1014, column: 3, scope: !4312)
!4339 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !427, file: !427, line: 1018, type: !4340, scopeLine: 1020, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !426, retainedNodes: !4342)
!4340 = !DISubroutineType(types: !4341)
!4341 = !{!63, !67, !65, !65, !65}
!4342 = !{!4343, !4344, !4345, !4346}
!4343 = !DILocalVariable(name: "n", arg: 1, scope: !4339, file: !427, line: 1018, type: !67)
!4344 = !DILocalVariable(name: "left_quote", arg: 2, scope: !4339, file: !427, line: 1018, type: !65)
!4345 = !DILocalVariable(name: "right_quote", arg: 3, scope: !4339, file: !427, line: 1019, type: !65)
!4346 = !DILocalVariable(name: "arg", arg: 4, scope: !4339, file: !427, line: 1019, type: !65)
!4347 = !DILocalVariable(name: "o", scope: !4348, file: !427, line: 1030, type: !445)
!4348 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !427, file: !427, line: 1026, type: !4349, scopeLine: 1029, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !426, retainedNodes: !4351)
!4349 = !DISubroutineType(types: !4350)
!4350 = !{!63, !67, !65, !65, !65, !121}
!4351 = !{!4352, !4353, !4354, !4355, !4356, !4347}
!4352 = !DILocalVariable(name: "n", arg: 1, scope: !4348, file: !427, line: 1026, type: !67)
!4353 = !DILocalVariable(name: "left_quote", arg: 2, scope: !4348, file: !427, line: 1026, type: !65)
!4354 = !DILocalVariable(name: "right_quote", arg: 3, scope: !4348, file: !427, line: 1027, type: !65)
!4355 = !DILocalVariable(name: "arg", arg: 4, scope: !4348, file: !427, line: 1028, type: !65)
!4356 = !DILocalVariable(name: "argsize", arg: 5, scope: !4348, file: !427, line: 1028, type: !121)
!4357 = !DILocation(line: 1030, column: 26, scope: !4348, inlinedAt: !4358)
!4358 = distinct !DILocation(line: 1021, column: 10, scope: !4339)
!4359 = !DILocation(line: 0, scope: !4339)
!4360 = !DILocation(line: 0, scope: !4348, inlinedAt: !4358)
!4361 = !DILocation(line: 1030, column: 3, scope: !4348, inlinedAt: !4358)
!4362 = !DILocation(line: 1030, column: 30, scope: !4348, inlinedAt: !4358)
!4363 = !DILocation(line: 0, scope: !3103, inlinedAt: !4364)
!4364 = distinct !DILocation(line: 1031, column: 3, scope: !4348, inlinedAt: !4358)
!4365 = !DILocation(line: 184, column: 6, scope: !3103, inlinedAt: !4364)
!4366 = !DILocation(line: 184, column: 12, scope: !3103, inlinedAt: !4364)
!4367 = !DILocation(line: 185, column: 8, scope: !3117, inlinedAt: !4364)
!4368 = !DILocation(line: 185, column: 23, scope: !3117, inlinedAt: !4364)
!4369 = !DILocation(line: 185, column: 19, scope: !3117, inlinedAt: !4364)
!4370 = !DILocation(line: 186, column: 5, scope: !3117, inlinedAt: !4364)
!4371 = !DILocation(line: 187, column: 6, scope: !3103, inlinedAt: !4364)
!4372 = !DILocation(line: 187, column: 17, scope: !3103, inlinedAt: !4364)
!4373 = !DILocation(line: 188, column: 6, scope: !3103, inlinedAt: !4364)
!4374 = !DILocation(line: 188, column: 18, scope: !3103, inlinedAt: !4364)
!4375 = !DILocation(line: 1032, column: 10, scope: !4348, inlinedAt: !4358)
!4376 = !DILocation(line: 1033, column: 1, scope: !4348, inlinedAt: !4358)
!4377 = !DILocation(line: 1021, column: 3, scope: !4339)
!4378 = !DILocation(line: 0, scope: !4348)
!4379 = !DILocation(line: 1030, column: 3, scope: !4348)
!4380 = !DILocation(line: 1030, column: 26, scope: !4348)
!4381 = !DILocation(line: 1030, column: 30, scope: !4348)
!4382 = !DILocation(line: 0, scope: !3103, inlinedAt: !4383)
!4383 = distinct !DILocation(line: 1031, column: 3, scope: !4348)
!4384 = !DILocation(line: 184, column: 6, scope: !3103, inlinedAt: !4383)
!4385 = !DILocation(line: 184, column: 12, scope: !3103, inlinedAt: !4383)
!4386 = !DILocation(line: 185, column: 8, scope: !3117, inlinedAt: !4383)
!4387 = !DILocation(line: 185, column: 23, scope: !3117, inlinedAt: !4383)
!4388 = !DILocation(line: 185, column: 19, scope: !3117, inlinedAt: !4383)
!4389 = !DILocation(line: 186, column: 5, scope: !3117, inlinedAt: !4383)
!4390 = !DILocation(line: 187, column: 6, scope: !3103, inlinedAt: !4383)
!4391 = !DILocation(line: 187, column: 17, scope: !3103, inlinedAt: !4383)
!4392 = !DILocation(line: 188, column: 6, scope: !3103, inlinedAt: !4383)
!4393 = !DILocation(line: 188, column: 18, scope: !3103, inlinedAt: !4383)
!4394 = !DILocation(line: 1032, column: 10, scope: !4348)
!4395 = !DILocation(line: 1033, column: 1, scope: !4348)
!4396 = !DILocation(line: 1032, column: 3, scope: !4348)
!4397 = distinct !DISubprogram(name: "quotearg_custom", scope: !427, file: !427, line: 1036, type: !4398, scopeLine: 1038, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !426, retainedNodes: !4400)
!4398 = !DISubroutineType(types: !4399)
!4399 = !{!63, !65, !65, !65}
!4400 = !{!4401, !4402, !4403}
!4401 = !DILocalVariable(name: "left_quote", arg: 1, scope: !4397, file: !427, line: 1036, type: !65)
!4402 = !DILocalVariable(name: "right_quote", arg: 2, scope: !4397, file: !427, line: 1036, type: !65)
!4403 = !DILocalVariable(name: "arg", arg: 3, scope: !4397, file: !427, line: 1037, type: !65)
!4404 = !DILocation(line: 1030, column: 26, scope: !4348, inlinedAt: !4405)
!4405 = distinct !DILocation(line: 1021, column: 10, scope: !4339, inlinedAt: !4406)
!4406 = distinct !DILocation(line: 1039, column: 10, scope: !4397)
!4407 = !DILocation(line: 0, scope: !4397)
!4408 = !DILocation(line: 0, scope: !4339, inlinedAt: !4406)
!4409 = !DILocation(line: 0, scope: !4348, inlinedAt: !4405)
!4410 = !DILocation(line: 1030, column: 3, scope: !4348, inlinedAt: !4405)
!4411 = !DILocation(line: 1030, column: 30, scope: !4348, inlinedAt: !4405)
!4412 = !DILocation(line: 0, scope: !3103, inlinedAt: !4413)
!4413 = distinct !DILocation(line: 1031, column: 3, scope: !4348, inlinedAt: !4405)
!4414 = !DILocation(line: 184, column: 6, scope: !3103, inlinedAt: !4413)
!4415 = !DILocation(line: 184, column: 12, scope: !3103, inlinedAt: !4413)
!4416 = !DILocation(line: 185, column: 8, scope: !3117, inlinedAt: !4413)
!4417 = !DILocation(line: 185, column: 23, scope: !3117, inlinedAt: !4413)
!4418 = !DILocation(line: 185, column: 19, scope: !3117, inlinedAt: !4413)
!4419 = !DILocation(line: 186, column: 5, scope: !3117, inlinedAt: !4413)
!4420 = !DILocation(line: 187, column: 6, scope: !3103, inlinedAt: !4413)
!4421 = !DILocation(line: 187, column: 17, scope: !3103, inlinedAt: !4413)
!4422 = !DILocation(line: 188, column: 6, scope: !3103, inlinedAt: !4413)
!4423 = !DILocation(line: 188, column: 18, scope: !3103, inlinedAt: !4413)
!4424 = !DILocation(line: 1032, column: 10, scope: !4348, inlinedAt: !4405)
!4425 = !DILocation(line: 1033, column: 1, scope: !4348, inlinedAt: !4405)
!4426 = !DILocation(line: 1039, column: 3, scope: !4397)
!4427 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !427, file: !427, line: 1043, type: !4428, scopeLine: 1045, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !426, retainedNodes: !4430)
!4428 = !DISubroutineType(types: !4429)
!4429 = !{!63, !65, !65, !65, !121}
!4430 = !{!4431, !4432, !4433, !4434}
!4431 = !DILocalVariable(name: "left_quote", arg: 1, scope: !4427, file: !427, line: 1043, type: !65)
!4432 = !DILocalVariable(name: "right_quote", arg: 2, scope: !4427, file: !427, line: 1043, type: !65)
!4433 = !DILocalVariable(name: "arg", arg: 3, scope: !4427, file: !427, line: 1044, type: !65)
!4434 = !DILocalVariable(name: "argsize", arg: 4, scope: !4427, file: !427, line: 1044, type: !121)
!4435 = !DILocation(line: 1030, column: 26, scope: !4348, inlinedAt: !4436)
!4436 = distinct !DILocation(line: 1046, column: 10, scope: !4427)
!4437 = !DILocation(line: 0, scope: !4427)
!4438 = !DILocation(line: 0, scope: !4348, inlinedAt: !4436)
!4439 = !DILocation(line: 1030, column: 3, scope: !4348, inlinedAt: !4436)
!4440 = !DILocation(line: 1030, column: 30, scope: !4348, inlinedAt: !4436)
!4441 = !DILocation(line: 0, scope: !3103, inlinedAt: !4442)
!4442 = distinct !DILocation(line: 1031, column: 3, scope: !4348, inlinedAt: !4436)
!4443 = !DILocation(line: 184, column: 6, scope: !3103, inlinedAt: !4442)
!4444 = !DILocation(line: 184, column: 12, scope: !3103, inlinedAt: !4442)
!4445 = !DILocation(line: 185, column: 8, scope: !3117, inlinedAt: !4442)
!4446 = !DILocation(line: 185, column: 23, scope: !3117, inlinedAt: !4442)
!4447 = !DILocation(line: 185, column: 19, scope: !3117, inlinedAt: !4442)
!4448 = !DILocation(line: 186, column: 5, scope: !3117, inlinedAt: !4442)
!4449 = !DILocation(line: 187, column: 6, scope: !3103, inlinedAt: !4442)
!4450 = !DILocation(line: 187, column: 17, scope: !3103, inlinedAt: !4442)
!4451 = !DILocation(line: 188, column: 6, scope: !3103, inlinedAt: !4442)
!4452 = !DILocation(line: 188, column: 18, scope: !3103, inlinedAt: !4442)
!4453 = !DILocation(line: 1032, column: 10, scope: !4348, inlinedAt: !4436)
!4454 = !DILocation(line: 1033, column: 1, scope: !4348, inlinedAt: !4436)
!4455 = !DILocation(line: 1046, column: 3, scope: !4427)
!4456 = distinct !DISubprogram(name: "quote_n_mem", scope: !427, file: !427, line: 1061, type: !4457, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !426, retainedNodes: !4459)
!4457 = !DISubroutineType(types: !4458)
!4458 = !{!65, !67, !65, !121}
!4459 = !{!4460, !4461, !4462}
!4460 = !DILocalVariable(name: "n", arg: 1, scope: !4456, file: !427, line: 1061, type: !67)
!4461 = !DILocalVariable(name: "arg", arg: 2, scope: !4456, file: !427, line: 1061, type: !65)
!4462 = !DILocalVariable(name: "argsize", arg: 3, scope: !4456, file: !427, line: 1061, type: !121)
!4463 = !DILocation(line: 0, scope: !4456)
!4464 = !DILocation(line: 1063, column: 10, scope: !4456)
!4465 = !DILocation(line: 1063, column: 3, scope: !4456)
!4466 = distinct !DISubprogram(name: "quote_mem", scope: !427, file: !427, line: 1067, type: !4467, scopeLine: 1068, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !426, retainedNodes: !4469)
!4467 = !DISubroutineType(types: !4468)
!4468 = !{!65, !65, !121}
!4469 = !{!4470, !4471}
!4470 = !DILocalVariable(name: "arg", arg: 1, scope: !4466, file: !427, line: 1067, type: !65)
!4471 = !DILocalVariable(name: "argsize", arg: 2, scope: !4466, file: !427, line: 1067, type: !121)
!4472 = !DILocation(line: 0, scope: !4466)
!4473 = !DILocation(line: 0, scope: !4456, inlinedAt: !4474)
!4474 = distinct !DILocation(line: 1069, column: 10, scope: !4466)
!4475 = !DILocation(line: 1063, column: 10, scope: !4456, inlinedAt: !4474)
!4476 = !DILocation(line: 1069, column: 3, scope: !4466)
!4477 = distinct !DISubprogram(name: "quote_n", scope: !427, file: !427, line: 1073, type: !4478, scopeLine: 1074, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !426, retainedNodes: !4480)
!4478 = !DISubroutineType(types: !4479)
!4479 = !{!65, !67, !65}
!4480 = !{!4481, !4482}
!4481 = !DILocalVariable(name: "n", arg: 1, scope: !4477, file: !427, line: 1073, type: !67)
!4482 = !DILocalVariable(name: "arg", arg: 2, scope: !4477, file: !427, line: 1073, type: !65)
!4483 = !DILocation(line: 0, scope: !4477)
!4484 = !DILocation(line: 0, scope: !4456, inlinedAt: !4485)
!4485 = distinct !DILocation(line: 1075, column: 10, scope: !4477)
!4486 = !DILocation(line: 1063, column: 10, scope: !4456, inlinedAt: !4485)
!4487 = !DILocation(line: 1075, column: 3, scope: !4477)
!4488 = distinct !DISubprogram(name: "quote", scope: !427, file: !427, line: 1079, type: !4489, scopeLine: 1080, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !426, retainedNodes: !4491)
!4489 = !DISubroutineType(types: !4490)
!4490 = !{!65, !65}
!4491 = !{!4492}
!4492 = !DILocalVariable(name: "arg", arg: 1, scope: !4488, file: !427, line: 1079, type: !65)
!4493 = !DILocation(line: 0, scope: !4488)
!4494 = !DILocation(line: 0, scope: !4477, inlinedAt: !4495)
!4495 = distinct !DILocation(line: 1081, column: 10, scope: !4488)
!4496 = !DILocation(line: 0, scope: !4456, inlinedAt: !4497)
!4497 = distinct !DILocation(line: 1075, column: 10, scope: !4477, inlinedAt: !4495)
!4498 = !DILocation(line: 1063, column: 10, scope: !4456, inlinedAt: !4497)
!4499 = !DILocation(line: 1081, column: 3, scope: !4488)
!4500 = distinct !DISubprogram(name: "dup_safer", scope: !653, file: !653, line: 31, type: !553, scopeLine: 32, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !652, retainedNodes: !4501)
!4501 = !{!4502}
!4502 = !DILocalVariable(name: "fd", arg: 1, scope: !4500, file: !653, line: 31, type: !67)
!4503 = !DILocation(line: 0, scope: !4500)
!4504 = !DILocation(line: 33, column: 10, scope: !4500)
!4505 = !DILocation(line: 33, column: 3, scope: !4500)
!4506 = distinct !DISubprogram(name: "version_etc_arn", scope: !658, file: !658, line: 61, type: !4507, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !657, retainedNodes: !4512)
!4507 = !DISubroutineType(types: !4508)
!4508 = !{null, !4509, !65, !65, !65, !4511, !121}
!4509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4510, size: 64)
!4510 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !231, line: 7, baseType: !668)
!4511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !528, size: 64)
!4512 = !{!4513, !4514, !4515, !4516, !4517, !4518}
!4513 = !DILocalVariable(name: "stream", arg: 1, scope: !4506, file: !658, line: 61, type: !4509)
!4514 = !DILocalVariable(name: "command_name", arg: 2, scope: !4506, file: !658, line: 62, type: !65)
!4515 = !DILocalVariable(name: "package", arg: 3, scope: !4506, file: !658, line: 62, type: !65)
!4516 = !DILocalVariable(name: "version", arg: 4, scope: !4506, file: !658, line: 63, type: !65)
!4517 = !DILocalVariable(name: "authors", arg: 5, scope: !4506, file: !658, line: 64, type: !4511)
!4518 = !DILocalVariable(name: "n_authors", arg: 6, scope: !4506, file: !658, line: 64, type: !121)
!4519 = !DILocation(line: 0, scope: !4506)
!4520 = !DILocation(line: 66, column: 7, scope: !4521)
!4521 = distinct !DILexicalBlock(scope: !4506, file: !658, line: 66, column: 7)
!4522 = !DILocation(line: 66, column: 7, scope: !4506)
!4523 = !DILocation(line: 67, column: 5, scope: !4521)
!4524 = !DILocation(line: 69, column: 5, scope: !4521)
!4525 = !DILocation(line: 83, column: 3, scope: !4506)
!4526 = !DILocation(line: 85, column: 3, scope: !4506)
!4527 = !DILocation(line: 88, column: 3, scope: !4506)
!4528 = !DILocation(line: 95, column: 3, scope: !4506)
!4529 = !DILocation(line: 97, column: 3, scope: !4506)
!4530 = !DILocation(line: 105, column: 7, scope: !4531)
!4531 = distinct !DILexicalBlock(scope: !4506, file: !658, line: 98, column: 5)
!4532 = !DILocation(line: 106, column: 7, scope: !4531)
!4533 = !DILocation(line: 109, column: 7, scope: !4531)
!4534 = !DILocation(line: 110, column: 7, scope: !4531)
!4535 = !DILocation(line: 113, column: 7, scope: !4531)
!4536 = !DILocation(line: 115, column: 7, scope: !4531)
!4537 = !DILocation(line: 120, column: 7, scope: !4531)
!4538 = !DILocation(line: 122, column: 7, scope: !4531)
!4539 = !DILocation(line: 127, column: 7, scope: !4531)
!4540 = !DILocation(line: 129, column: 7, scope: !4531)
!4541 = !DILocation(line: 134, column: 7, scope: !4531)
!4542 = !DILocation(line: 137, column: 7, scope: !4531)
!4543 = !DILocation(line: 142, column: 7, scope: !4531)
!4544 = !DILocation(line: 145, column: 7, scope: !4531)
!4545 = !DILocation(line: 150, column: 7, scope: !4531)
!4546 = !DILocation(line: 154, column: 7, scope: !4531)
!4547 = !DILocation(line: 159, column: 7, scope: !4531)
!4548 = !DILocation(line: 163, column: 7, scope: !4531)
!4549 = !DILocation(line: 170, column: 7, scope: !4531)
!4550 = !DILocation(line: 174, column: 7, scope: !4531)
!4551 = !DILocation(line: 176, column: 1, scope: !4506)
!4552 = distinct !DISubprogram(name: "version_etc_ar", scope: !658, file: !658, line: 183, type: !4553, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !657, retainedNodes: !4555)
!4553 = !DISubroutineType(types: !4554)
!4554 = !{null, !4509, !65, !65, !65, !4511}
!4555 = !{!4556, !4557, !4558, !4559, !4560, !4561}
!4556 = !DILocalVariable(name: "stream", arg: 1, scope: !4552, file: !658, line: 183, type: !4509)
!4557 = !DILocalVariable(name: "command_name", arg: 2, scope: !4552, file: !658, line: 184, type: !65)
!4558 = !DILocalVariable(name: "package", arg: 3, scope: !4552, file: !658, line: 184, type: !65)
!4559 = !DILocalVariable(name: "version", arg: 4, scope: !4552, file: !658, line: 185, type: !65)
!4560 = !DILocalVariable(name: "authors", arg: 5, scope: !4552, file: !658, line: 185, type: !4511)
!4561 = !DILocalVariable(name: "n_authors", scope: !4552, file: !658, line: 187, type: !121)
!4562 = !DILocation(line: 0, scope: !4552)
!4563 = !DILocation(line: 189, column: 8, scope: !4564)
!4564 = distinct !DILexicalBlock(scope: !4552, file: !658, line: 189, column: 3)
!4565 = !DILocation(line: 0, scope: !4564)
!4566 = !DILocation(line: 189, column: 23, scope: !4567)
!4567 = distinct !DILexicalBlock(scope: !4564, file: !658, line: 189, column: 3)
!4568 = !DILocation(line: 189, column: 3, scope: !4564)
!4569 = !DILocation(line: 189, column: 52, scope: !4567)
!4570 = distinct !{!4570, !4568, !4571}
!4571 = !DILocation(line: 190, column: 5, scope: !4564)
!4572 = !DILocation(line: 191, column: 3, scope: !4552)
!4573 = !DILocation(line: 192, column: 1, scope: !4552)
!4574 = distinct !DISubprogram(name: "version_etc_va", scope: !658, file: !658, line: 199, type: !4575, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !657, retainedNodes: !4584)
!4575 = !DISubroutineType(types: !4576)
!4576 = !{null, !4509, !65, !65, !65, !4577}
!4577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4578, size: 64)
!4578 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !658, line: 192, size: 192, elements: !4579)
!4579 = !{!4580, !4581, !4582, !4583}
!4580 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !4578, file: !658, line: 192, baseType: !7, size: 32)
!4581 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !4578, file: !658, line: 192, baseType: !7, size: 32, offset: 32)
!4582 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !4578, file: !658, line: 192, baseType: !119, size: 64, offset: 64)
!4583 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !4578, file: !658, line: 192, baseType: !119, size: 64, offset: 128)
!4584 = !{!4585, !4586, !4587, !4588, !4589, !4590, !4591}
!4585 = !DILocalVariable(name: "stream", arg: 1, scope: !4574, file: !658, line: 199, type: !4509)
!4586 = !DILocalVariable(name: "command_name", arg: 2, scope: !4574, file: !658, line: 200, type: !65)
!4587 = !DILocalVariable(name: "package", arg: 3, scope: !4574, file: !658, line: 200, type: !65)
!4588 = !DILocalVariable(name: "version", arg: 4, scope: !4574, file: !658, line: 201, type: !65)
!4589 = !DILocalVariable(name: "authors", arg: 5, scope: !4574, file: !658, line: 201, type: !4577)
!4590 = !DILocalVariable(name: "n_authors", scope: !4574, file: !658, line: 203, type: !121)
!4591 = !DILocalVariable(name: "authtab", scope: !4574, file: !658, line: 204, type: !4592)
!4592 = !DICompositeType(tag: DW_TAG_array_type, baseType: !65, size: 640, elements: !505)
!4593 = !DILocation(line: 0, scope: !4574)
!4594 = !DILocation(line: 204, column: 3, scope: !4574)
!4595 = !DILocation(line: 204, column: 15, scope: !4574)
!4596 = !DILocation(line: 0, scope: !4597)
!4597 = distinct !DILexicalBlock(scope: !4598, file: !658, line: 206, column: 3)
!4598 = distinct !DILexicalBlock(scope: !4574, file: !658, line: 206, column: 3)
!4599 = !DILocation(line: 208, column: 35, scope: !4597)
!4600 = !DILocation(line: 208, column: 14, scope: !4597)
!4601 = !DILocation(line: 208, column: 33, scope: !4597)
!4602 = !DILocation(line: 208, column: 67, scope: !4597)
!4603 = !DILocation(line: 206, column: 3, scope: !4598)
!4604 = !DILocation(line: 0, scope: !4598)
!4605 = !DILocation(line: 211, column: 3, scope: !4574)
!4606 = !DILocation(line: 213, column: 1, scope: !4574)
!4607 = distinct !DISubprogram(name: "version_etc", scope: !658, file: !658, line: 230, type: !4608, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !657, retainedNodes: !4610)
!4608 = !DISubroutineType(types: !4609)
!4609 = !{null, !4509, !65, !65, !65, null}
!4610 = !{!4611, !4612, !4613, !4614, !4615}
!4611 = !DILocalVariable(name: "stream", arg: 1, scope: !4607, file: !658, line: 230, type: !4509)
!4612 = !DILocalVariable(name: "command_name", arg: 2, scope: !4607, file: !658, line: 231, type: !65)
!4613 = !DILocalVariable(name: "package", arg: 3, scope: !4607, file: !658, line: 231, type: !65)
!4614 = !DILocalVariable(name: "version", arg: 4, scope: !4607, file: !658, line: 232, type: !65)
!4615 = !DILocalVariable(name: "authors", scope: !4607, file: !658, line: 234, type: !4616)
!4616 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !70, line: 52, baseType: !4617)
!4617 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !4618, line: 32, baseType: !4619)
!4618 = !DIFile(filename: "/usr/lib/clang/10.0.0/include/stdarg.h", directory: "")
!4619 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !658, line: 234, baseType: !4620)
!4620 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4578, size: 192, elements: !104)
!4621 = !DILocation(line: 0, scope: !4607)
!4622 = !DILocation(line: 234, column: 3, scope: !4607)
!4623 = !DILocation(line: 234, column: 11, scope: !4607)
!4624 = !DILocation(line: 236, column: 3, scope: !4607)
!4625 = !DILocation(line: 237, column: 3, scope: !4607)
!4626 = !DILocation(line: 238, column: 3, scope: !4607)
!4627 = !DILocation(line: 239, column: 1, scope: !4607)
!4628 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !658, file: !658, line: 242, type: !147, scopeLine: 243, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !657, retainedNodes: !68)
!4629 = !DILocation(line: 244, column: 3, scope: !4628)
!4630 = !DILocation(line: 249, column: 3, scope: !4628)
!4631 = !DILocation(line: 255, column: 3, scope: !4628)
!4632 = !DILocation(line: 260, column: 3, scope: !4628)
!4633 = !DILocation(line: 262, column: 1, scope: !4628)
!4634 = distinct !DISubprogram(name: "xnmalloc", scope: !436, file: !436, line: 99, type: !4635, scopeLine: 100, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !699, retainedNodes: !4637)
!4635 = !DISubroutineType(types: !4636)
!4636 = !{!119, !121, !121}
!4637 = !{!4638, !4639}
!4638 = !DILocalVariable(name: "n", arg: 1, scope: !4634, file: !436, line: 99, type: !121)
!4639 = !DILocalVariable(name: "s", arg: 2, scope: !4634, file: !436, line: 99, type: !121)
!4640 = !DILocation(line: 0, scope: !4634)
!4641 = !DILocation(line: 101, column: 7, scope: !4642)
!4642 = distinct !DILexicalBlock(scope: !4634, file: !436, line: 101, column: 7)
!4643 = !DILocation(line: 101, column: 7, scope: !4634)
!4644 = !DILocation(line: 102, column: 5, scope: !4642)
!4645 = !DILocation(line: 103, column: 21, scope: !4634)
!4646 = !DILocalVariable(name: "n", arg: 1, scope: !4647, file: !700, line: 39, type: !121)
!4647 = distinct !DISubprogram(name: "xmalloc", scope: !700, file: !700, line: 39, type: !4648, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !699, retainedNodes: !4650)
!4648 = !DISubroutineType(types: !4649)
!4649 = !{!119, !121}
!4650 = !{!4646, !4651}
!4651 = !DILocalVariable(name: "p", scope: !4647, file: !700, line: 41, type: !119)
!4652 = !DILocation(line: 0, scope: !4647, inlinedAt: !4653)
!4653 = distinct !DILocation(line: 103, column: 10, scope: !4634)
!4654 = !DILocation(line: 41, column: 13, scope: !4647, inlinedAt: !4653)
!4655 = !DILocation(line: 42, column: 8, scope: !4656, inlinedAt: !4653)
!4656 = distinct !DILexicalBlock(scope: !4647, file: !700, line: 42, column: 7)
!4657 = !DILocation(line: 42, column: 15, scope: !4656, inlinedAt: !4653)
!4658 = !DILocation(line: 42, column: 10, scope: !4656, inlinedAt: !4653)
!4659 = !DILocation(line: 43, column: 5, scope: !4656, inlinedAt: !4653)
!4660 = !DILocation(line: 103, column: 3, scope: !4634)
!4661 = !DILocation(line: 0, scope: !4647)
!4662 = !DILocation(line: 41, column: 13, scope: !4647)
!4663 = !DILocation(line: 42, column: 8, scope: !4656)
!4664 = !DILocation(line: 42, column: 15, scope: !4656)
!4665 = !DILocation(line: 42, column: 10, scope: !4656)
!4666 = !DILocation(line: 43, column: 5, scope: !4656)
!4667 = !DILocation(line: 44, column: 3, scope: !4647)
!4668 = distinct !DISubprogram(name: "xnrealloc", scope: !436, file: !436, line: 112, type: !4669, scopeLine: 113, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !699, retainedNodes: !4671)
!4669 = !DISubroutineType(types: !4670)
!4670 = !{!119, !119, !121, !121}
!4671 = !{!4672, !4673, !4674}
!4672 = !DILocalVariable(name: "p", arg: 1, scope: !4668, file: !436, line: 112, type: !119)
!4673 = !DILocalVariable(name: "n", arg: 2, scope: !4668, file: !436, line: 112, type: !121)
!4674 = !DILocalVariable(name: "s", arg: 3, scope: !4668, file: !436, line: 112, type: !121)
!4675 = !DILocation(line: 0, scope: !4668)
!4676 = !DILocation(line: 114, column: 7, scope: !4677)
!4677 = distinct !DILexicalBlock(scope: !4668, file: !436, line: 114, column: 7)
!4678 = !DILocation(line: 114, column: 7, scope: !4668)
!4679 = !DILocation(line: 115, column: 5, scope: !4677)
!4680 = !DILocation(line: 116, column: 25, scope: !4668)
!4681 = !DILocalVariable(name: "p", arg: 1, scope: !4682, file: !700, line: 51, type: !119)
!4682 = distinct !DISubprogram(name: "xrealloc", scope: !700, file: !700, line: 51, type: !4683, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !699, retainedNodes: !4685)
!4683 = !DISubroutineType(types: !4684)
!4684 = !{!119, !119, !121}
!4685 = !{!4681, !4686}
!4686 = !DILocalVariable(name: "n", arg: 2, scope: !4682, file: !700, line: 51, type: !121)
!4687 = !DILocation(line: 0, scope: !4682, inlinedAt: !4688)
!4688 = distinct !DILocation(line: 116, column: 10, scope: !4668)
!4689 = !DILocation(line: 53, column: 8, scope: !4690, inlinedAt: !4688)
!4690 = distinct !DILexicalBlock(scope: !4682, file: !700, line: 53, column: 7)
!4691 = !DILocation(line: 53, column: 13, scope: !4690, inlinedAt: !4688)
!4692 = !DILocation(line: 53, column: 10, scope: !4690, inlinedAt: !4688)
!4693 = !DILocation(line: 57, column: 7, scope: !4694, inlinedAt: !4688)
!4694 = distinct !DILexicalBlock(scope: !4690, file: !700, line: 54, column: 5)
!4695 = !DILocation(line: 58, column: 7, scope: !4694, inlinedAt: !4688)
!4696 = !DILocation(line: 61, column: 7, scope: !4682, inlinedAt: !4688)
!4697 = !DILocation(line: 62, column: 8, scope: !4698, inlinedAt: !4688)
!4698 = distinct !DILexicalBlock(scope: !4682, file: !700, line: 62, column: 7)
!4699 = !DILocation(line: 62, column: 13, scope: !4698, inlinedAt: !4688)
!4700 = !DILocation(line: 62, column: 10, scope: !4698, inlinedAt: !4688)
!4701 = !DILocation(line: 63, column: 5, scope: !4698, inlinedAt: !4688)
!4702 = !DILocation(line: 116, column: 3, scope: !4668)
!4703 = !DILocation(line: 0, scope: !4682)
!4704 = !DILocation(line: 53, column: 8, scope: !4690)
!4705 = !DILocation(line: 53, column: 13, scope: !4690)
!4706 = !DILocation(line: 53, column: 10, scope: !4690)
!4707 = !DILocation(line: 57, column: 7, scope: !4694)
!4708 = !DILocation(line: 58, column: 7, scope: !4694)
!4709 = !DILocation(line: 61, column: 7, scope: !4682)
!4710 = !DILocation(line: 62, column: 8, scope: !4698)
!4711 = !DILocation(line: 62, column: 13, scope: !4698)
!4712 = !DILocation(line: 62, column: 10, scope: !4698)
!4713 = !DILocation(line: 63, column: 5, scope: !4698)
!4714 = !DILocation(line: 65, column: 1, scope: !4682)
!4715 = !DILocation(line: 0, scope: !703)
!4716 = !DILocation(line: 176, column: 14, scope: !703)
!4717 = !DILocation(line: 178, column: 9, scope: !4718)
!4718 = distinct !DILexicalBlock(scope: !703, file: !436, line: 178, column: 7)
!4719 = !DILocation(line: 178, column: 7, scope: !703)
!4720 = !DILocation(line: 180, column: 13, scope: !4721)
!4721 = distinct !DILexicalBlock(scope: !4722, file: !436, line: 180, column: 11)
!4722 = distinct !DILexicalBlock(scope: !4718, file: !436, line: 179, column: 5)
!4723 = !DILocation(line: 180, column: 11, scope: !4722)
!4724 = !DILocation(line: 188, column: 30, scope: !4725)
!4725 = distinct !DILexicalBlock(scope: !4721, file: !436, line: 181, column: 9)
!4726 = !DILocation(line: 189, column: 16, scope: !4725)
!4727 = !DILocation(line: 189, column: 13, scope: !4725)
!4728 = !DILocation(line: 190, column: 9, scope: !4725)
!4729 = !DILocation(line: 191, column: 11, scope: !4730)
!4730 = distinct !DILexicalBlock(scope: !4722, file: !436, line: 191, column: 11)
!4731 = !DILocation(line: 191, column: 11, scope: !4722)
!4732 = !DILocation(line: 206, column: 7, scope: !703)
!4733 = !DILocation(line: 207, column: 25, scope: !703)
!4734 = !DILocation(line: 0, scope: !4682, inlinedAt: !4735)
!4735 = distinct !DILocation(line: 207, column: 10, scope: !703)
!4736 = !DILocation(line: 53, column: 10, scope: !4690, inlinedAt: !4735)
!4737 = !DILocation(line: 192, column: 9, scope: !4730)
!4738 = !DILocation(line: 200, column: 69, scope: !4739)
!4739 = distinct !DILexicalBlock(scope: !4740, file: !436, line: 200, column: 11)
!4740 = distinct !DILexicalBlock(scope: !4718, file: !436, line: 195, column: 5)
!4741 = !DILocation(line: 201, column: 11, scope: !4739)
!4742 = !DILocation(line: 200, column: 11, scope: !4740)
!4743 = !DILocation(line: 202, column: 9, scope: !4739)
!4744 = !DILocation(line: 203, column: 14, scope: !4740)
!4745 = !DILocation(line: 203, column: 18, scope: !4740)
!4746 = !DILocation(line: 203, column: 9, scope: !4740)
!4747 = !DILocation(line: 53, column: 8, scope: !4690, inlinedAt: !4735)
!4748 = !DILocation(line: 57, column: 7, scope: !4694, inlinedAt: !4735)
!4749 = !DILocation(line: 58, column: 7, scope: !4694, inlinedAt: !4735)
!4750 = !DILocation(line: 61, column: 7, scope: !4682, inlinedAt: !4735)
!4751 = !DILocation(line: 62, column: 8, scope: !4698, inlinedAt: !4735)
!4752 = !DILocation(line: 62, column: 13, scope: !4698, inlinedAt: !4735)
!4753 = !DILocation(line: 62, column: 10, scope: !4698, inlinedAt: !4735)
!4754 = !DILocation(line: 63, column: 5, scope: !4698, inlinedAt: !4735)
!4755 = !DILocation(line: 207, column: 3, scope: !703)
!4756 = distinct !DISubprogram(name: "xcharalloc", scope: !436, file: !436, line: 216, type: !3915, scopeLine: 217, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !699, retainedNodes: !4757)
!4757 = !{!4758}
!4758 = !DILocalVariable(name: "n", arg: 1, scope: !4756, file: !436, line: 216, type: !121)
!4759 = !DILocation(line: 0, scope: !4756)
!4760 = !DILocation(line: 0, scope: !4647, inlinedAt: !4761)
!4761 = distinct !DILocation(line: 218, column: 10, scope: !4756)
!4762 = !DILocation(line: 41, column: 13, scope: !4647, inlinedAt: !4761)
!4763 = !DILocation(line: 42, column: 8, scope: !4656, inlinedAt: !4761)
!4764 = !DILocation(line: 42, column: 15, scope: !4656, inlinedAt: !4761)
!4765 = !DILocation(line: 42, column: 10, scope: !4656, inlinedAt: !4761)
!4766 = !DILocation(line: 43, column: 5, scope: !4656, inlinedAt: !4761)
!4767 = !DILocation(line: 218, column: 3, scope: !4756)
!4768 = distinct !DISubprogram(name: "x2realloc", scope: !700, file: !700, line: 74, type: !4769, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !699, retainedNodes: !4771)
!4769 = !DISubroutineType(types: !4770)
!4770 = !{!119, !119, !706}
!4771 = !{!4772, !4773}
!4772 = !DILocalVariable(name: "p", arg: 1, scope: !4768, file: !700, line: 74, type: !119)
!4773 = !DILocalVariable(name: "pn", arg: 2, scope: !4768, file: !700, line: 74, type: !706)
!4774 = !DILocation(line: 0, scope: !4768)
!4775 = !DILocation(line: 0, scope: !703, inlinedAt: !4776)
!4776 = distinct !DILocation(line: 76, column: 10, scope: !4768)
!4777 = !DILocation(line: 176, column: 14, scope: !703, inlinedAt: !4776)
!4778 = !DILocation(line: 178, column: 9, scope: !4718, inlinedAt: !4776)
!4779 = !DILocation(line: 178, column: 7, scope: !703, inlinedAt: !4776)
!4780 = !DILocation(line: 180, column: 13, scope: !4721, inlinedAt: !4776)
!4781 = !DILocation(line: 180, column: 11, scope: !4722, inlinedAt: !4776)
!4782 = !DILocation(line: 191, column: 11, scope: !4730, inlinedAt: !4776)
!4783 = !DILocation(line: 191, column: 11, scope: !4722, inlinedAt: !4776)
!4784 = !DILocation(line: 206, column: 7, scope: !703, inlinedAt: !4776)
!4785 = !DILocation(line: 0, scope: !4682, inlinedAt: !4786)
!4786 = distinct !DILocation(line: 207, column: 10, scope: !703, inlinedAt: !4776)
!4787 = !DILocation(line: 53, column: 10, scope: !4690, inlinedAt: !4786)
!4788 = !DILocation(line: 192, column: 9, scope: !4730, inlinedAt: !4776)
!4789 = !DILocation(line: 201, column: 11, scope: !4739, inlinedAt: !4776)
!4790 = !DILocation(line: 200, column: 11, scope: !4740, inlinedAt: !4776)
!4791 = !DILocation(line: 202, column: 9, scope: !4739, inlinedAt: !4776)
!4792 = !DILocation(line: 203, column: 14, scope: !4740, inlinedAt: !4776)
!4793 = !DILocation(line: 203, column: 18, scope: !4740, inlinedAt: !4776)
!4794 = !DILocation(line: 203, column: 9, scope: !4740, inlinedAt: !4776)
!4795 = !DILocation(line: 53, column: 8, scope: !4690, inlinedAt: !4786)
!4796 = !DILocation(line: 57, column: 7, scope: !4694, inlinedAt: !4786)
!4797 = !DILocation(line: 58, column: 7, scope: !4694, inlinedAt: !4786)
!4798 = !DILocation(line: 61, column: 7, scope: !4682, inlinedAt: !4786)
!4799 = !DILocation(line: 62, column: 8, scope: !4698, inlinedAt: !4786)
!4800 = !DILocation(line: 62, column: 13, scope: !4698, inlinedAt: !4786)
!4801 = !DILocation(line: 62, column: 10, scope: !4698, inlinedAt: !4786)
!4802 = !DILocation(line: 63, column: 5, scope: !4698, inlinedAt: !4786)
!4803 = !DILocation(line: 76, column: 3, scope: !4768)
!4804 = distinct !DISubprogram(name: "xzalloc", scope: !700, file: !700, line: 84, type: !4648, scopeLine: 85, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !699, retainedNodes: !4805)
!4805 = !{!4806}
!4806 = !DILocalVariable(name: "n", arg: 1, scope: !4804, file: !700, line: 84, type: !121)
!4807 = !DILocation(line: 0, scope: !4804)
!4808 = !DILocalVariable(name: "n", arg: 1, scope: !4809, file: !700, line: 93, type: !121)
!4809 = distinct !DISubprogram(name: "xcalloc", scope: !700, file: !700, line: 93, type: !4635, scopeLine: 94, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !699, retainedNodes: !4810)
!4810 = !{!4808, !4811, !4812}
!4811 = !DILocalVariable(name: "s", arg: 2, scope: !4809, file: !700, line: 93, type: !121)
!4812 = !DILocalVariable(name: "p", scope: !4809, file: !700, line: 95, type: !119)
!4813 = !DILocation(line: 0, scope: !4809, inlinedAt: !4814)
!4814 = distinct !DILocation(line: 86, column: 10, scope: !4804)
!4815 = !DILocation(line: 100, column: 7, scope: !4816, inlinedAt: !4814)
!4816 = distinct !DILexicalBlock(scope: !4809, file: !700, line: 100, column: 7)
!4817 = !DILocation(line: 101, column: 7, scope: !4816, inlinedAt: !4814)
!4818 = !DILocation(line: 101, column: 18, scope: !4816, inlinedAt: !4814)
!4819 = !DILocation(line: 101, column: 16, scope: !4816, inlinedAt: !4814)
!4820 = !DILocation(line: 100, column: 7, scope: !4809, inlinedAt: !4814)
!4821 = !DILocation(line: 102, column: 5, scope: !4816, inlinedAt: !4814)
!4822 = !DILocation(line: 86, column: 3, scope: !4804)
!4823 = !DILocation(line: 0, scope: !4809)
!4824 = !DILocation(line: 100, column: 7, scope: !4816)
!4825 = !DILocation(line: 101, column: 7, scope: !4816)
!4826 = !DILocation(line: 101, column: 18, scope: !4816)
!4827 = !DILocation(line: 101, column: 16, scope: !4816)
!4828 = !DILocation(line: 100, column: 7, scope: !4809)
!4829 = !DILocation(line: 102, column: 5, scope: !4816)
!4830 = !DILocation(line: 103, column: 3, scope: !4809)
!4831 = distinct !DISubprogram(name: "xmemdup", scope: !700, file: !700, line: 111, type: !1434, scopeLine: 112, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !699, retainedNodes: !4832)
!4832 = !{!4833, !4834}
!4833 = !DILocalVariable(name: "p", arg: 1, scope: !4831, file: !700, line: 111, type: !348)
!4834 = !DILocalVariable(name: "s", arg: 2, scope: !4831, file: !700, line: 111, type: !121)
!4835 = !DILocation(line: 0, scope: !4831)
!4836 = !DILocation(line: 0, scope: !4647, inlinedAt: !4837)
!4837 = distinct !DILocation(line: 113, column: 18, scope: !4831)
!4838 = !DILocation(line: 41, column: 13, scope: !4647, inlinedAt: !4837)
!4839 = !DILocation(line: 42, column: 8, scope: !4656, inlinedAt: !4837)
!4840 = !DILocation(line: 42, column: 15, scope: !4656, inlinedAt: !4837)
!4841 = !DILocation(line: 42, column: 10, scope: !4656, inlinedAt: !4837)
!4842 = !DILocation(line: 43, column: 5, scope: !4656, inlinedAt: !4837)
!4843 = !DILocalVariable(name: "__dest", arg: 1, scope: !4844, file: !2305, line: 31, type: !2308)
!4844 = distinct !DISubprogram(name: "memcpy", scope: !2305, file: !2305, line: 31, type: !2306, scopeLine: 33, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !699, retainedNodes: !4845)
!4845 = !{!4843, !4846, !4847}
!4846 = !DILocalVariable(name: "__src", arg: 2, scope: !4844, file: !2305, line: 31, type: !2309)
!4847 = !DILocalVariable(name: "__len", arg: 3, scope: !4844, file: !2305, line: 31, type: !121)
!4848 = !DILocation(line: 0, scope: !4844, inlinedAt: !4849)
!4849 = distinct !DILocation(line: 113, column: 10, scope: !4831)
!4850 = !DILocation(line: 34, column: 10, scope: !4844, inlinedAt: !4849)
!4851 = !DILocation(line: 113, column: 3, scope: !4831)
!4852 = distinct !DISubprogram(name: "xstrdup", scope: !700, file: !700, line: 119, type: !140, scopeLine: 120, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !699, retainedNodes: !4853)
!4853 = !{!4854}
!4854 = !DILocalVariable(name: "string", arg: 1, scope: !4852, file: !700, line: 119, type: !65)
!4855 = !DILocation(line: 0, scope: !4852)
!4856 = !DILocation(line: 121, column: 27, scope: !4852)
!4857 = !DILocation(line: 121, column: 43, scope: !4852)
!4858 = !DILocation(line: 0, scope: !4831, inlinedAt: !4859)
!4859 = distinct !DILocation(line: 121, column: 10, scope: !4852)
!4860 = !DILocation(line: 0, scope: !4647, inlinedAt: !4861)
!4861 = distinct !DILocation(line: 113, column: 18, scope: !4831, inlinedAt: !4859)
!4862 = !DILocation(line: 41, column: 13, scope: !4647, inlinedAt: !4861)
!4863 = !DILocation(line: 42, column: 8, scope: !4656, inlinedAt: !4861)
!4864 = !DILocation(line: 42, column: 15, scope: !4656, inlinedAt: !4861)
!4865 = !DILocation(line: 42, column: 10, scope: !4656, inlinedAt: !4861)
!4866 = !DILocation(line: 43, column: 5, scope: !4656, inlinedAt: !4861)
!4867 = !DILocation(line: 0, scope: !4844, inlinedAt: !4868)
!4868 = distinct !DILocation(line: 113, column: 10, scope: !4831, inlinedAt: !4859)
!4869 = !DILocation(line: 34, column: 10, scope: !4844, inlinedAt: !4868)
!4870 = !DILocation(line: 121, column: 3, scope: !4852)
!4871 = distinct !DISubprogram(name: "xalloc_die", scope: !721, file: !721, line: 32, type: !147, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !720, retainedNodes: !68)
!4872 = !DILocation(line: 34, column: 10, scope: !4871)
!4873 = !DILocation(line: 34, column: 33, scope: !4871)
!4874 = !DILocation(line: 34, column: 3, scope: !4871)
!4875 = !DILocation(line: 40, column: 3, scope: !4871)
!4876 = distinct !DISubprogram(name: "rpl_calloc", scope: !724, file: !724, line: 42, type: !4635, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !723, retainedNodes: !4877)
!4877 = !{!4878, !4879, !4880, !4881}
!4878 = !DILocalVariable(name: "n", arg: 1, scope: !4876, file: !724, line: 42, type: !121)
!4879 = !DILocalVariable(name: "s", arg: 2, scope: !4876, file: !724, line: 42, type: !121)
!4880 = !DILocalVariable(name: "result", scope: !4876, file: !724, line: 44, type: !119)
!4881 = !DILocalVariable(name: "bytes", scope: !4882, file: !724, line: 56, type: !121)
!4882 = distinct !DILexicalBlock(scope: !4883, file: !724, line: 53, column: 5)
!4883 = distinct !DILexicalBlock(scope: !4876, file: !724, line: 47, column: 7)
!4884 = !DILocation(line: 0, scope: !4876)
!4885 = !DILocation(line: 47, column: 9, scope: !4883)
!4886 = !DILocation(line: 47, column: 19, scope: !4883)
!4887 = !DILocation(line: 47, column: 14, scope: !4883)
!4888 = !DILocation(line: 0, scope: !4882)
!4889 = !DILocation(line: 57, column: 21, scope: !4890)
!4890 = distinct !DILexicalBlock(scope: !4882, file: !724, line: 57, column: 11)
!4891 = !DILocation(line: 57, column: 11, scope: !4882)
!4892 = !DILocation(line: 59, column: 11, scope: !4893)
!4893 = distinct !DILexicalBlock(scope: !4890, file: !724, line: 58, column: 9)
!4894 = !DILocation(line: 59, column: 17, scope: !4893)
!4895 = !DILocation(line: 65, column: 12, scope: !4876)
!4896 = !DILocation(line: 72, column: 3, scope: !4876)
!4897 = !DILocation(line: 73, column: 1, scope: !4876)
!4898 = distinct !DISubprogram(name: "rpl_fclose", scope: !727, file: !727, line: 58, type: !4899, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !726, retainedNodes: !4903)
!4899 = !DISubroutineType(types: !4900)
!4900 = !{!67, !4901}
!4901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4902, size: 64)
!4902 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !231, line: 7, baseType: !733)
!4903 = !{!4904, !4905, !4906, !4907}
!4904 = !DILocalVariable(name: "fp", arg: 1, scope: !4898, file: !727, line: 58, type: !4901)
!4905 = !DILocalVariable(name: "saved_errno", scope: !4898, file: !727, line: 60, type: !67)
!4906 = !DILocalVariable(name: "fd", scope: !4898, file: !727, line: 61, type: !67)
!4907 = !DILocalVariable(name: "result", scope: !4898, file: !727, line: 62, type: !67)
!4908 = !DILocation(line: 0, scope: !4898)
!4909 = !DILocation(line: 65, column: 8, scope: !4898)
!4910 = !DILocation(line: 66, column: 10, scope: !4911)
!4911 = distinct !DILexicalBlock(scope: !4898, file: !727, line: 66, column: 7)
!4912 = !DILocation(line: 66, column: 7, scope: !4898)
!4913 = !DILocation(line: 67, column: 12, scope: !4911)
!4914 = !DILocation(line: 67, column: 5, scope: !4911)
!4915 = !DILocation(line: 72, column: 9, scope: !4916)
!4916 = distinct !DILexicalBlock(scope: !4898, file: !727, line: 72, column: 7)
!4917 = !DILocation(line: 72, column: 23, scope: !4916)
!4918 = !DILocation(line: 72, column: 33, scope: !4916)
!4919 = !DILocation(line: 72, column: 26, scope: !4916)
!4920 = !DILocation(line: 72, column: 59, scope: !4916)
!4921 = !DILocation(line: 73, column: 7, scope: !4916)
!4922 = !DILocation(line: 73, column: 10, scope: !4916)
!4923 = !DILocation(line: 72, column: 7, scope: !4898)
!4924 = !DILocation(line: 100, column: 12, scope: !4898)
!4925 = !DILocation(line: 105, column: 7, scope: !4898)
!4926 = !DILocation(line: 74, column: 19, scope: !4916)
!4927 = !DILocation(line: 105, column: 19, scope: !4928)
!4928 = distinct !DILexicalBlock(scope: !4898, file: !727, line: 105, column: 7)
!4929 = !DILocation(line: 107, column: 13, scope: !4930)
!4930 = distinct !DILexicalBlock(scope: !4928, file: !727, line: 106, column: 5)
!4931 = !DILocation(line: 109, column: 5, scope: !4930)
!4932 = !DILocation(line: 112, column: 1, scope: !4898)
!4933 = distinct !DISubprogram(name: "rpl_fcntl", scope: !542, file: !542, line: 202, type: !549, scopeLine: 207, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !545, retainedNodes: !4934)
!4934 = !{!4935, !4936, !4937, !4947, !4948, !4951, !4953, !4957}
!4935 = !DILocalVariable(name: "fd", arg: 1, scope: !4933, file: !542, line: 202, type: !67)
!4936 = !DILocalVariable(name: "action", arg: 2, scope: !4933, file: !542, line: 202, type: !67)
!4937 = !DILocalVariable(name: "arg", scope: !4933, file: !542, line: 208, type: !4938)
!4938 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !4618, line: 14, baseType: !4939)
!4939 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !542, line: 208, baseType: !4940)
!4940 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4941, size: 192, elements: !104)
!4941 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !542, line: 208, size: 192, elements: !4942)
!4942 = !{!4943, !4944, !4945, !4946}
!4943 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !4941, file: !542, line: 208, baseType: !7, size: 32)
!4944 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !4941, file: !542, line: 208, baseType: !7, size: 32, offset: 32)
!4945 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !4941, file: !542, line: 208, baseType: !119, size: 64, offset: 64)
!4946 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !4941, file: !542, line: 208, baseType: !119, size: 64, offset: 128)
!4947 = !DILocalVariable(name: "result", scope: !4933, file: !542, line: 209, type: !67)
!4948 = !DILocalVariable(name: "target", scope: !4949, file: !542, line: 215, type: !67)
!4949 = distinct !DILexicalBlock(scope: !4950, file: !542, line: 214, column: 7)
!4950 = distinct !DILexicalBlock(scope: !4933, file: !542, line: 212, column: 5)
!4951 = !DILocalVariable(name: "target", scope: !4952, file: !542, line: 222, type: !67)
!4952 = distinct !DILexicalBlock(scope: !4950, file: !542, line: 221, column: 7)
!4953 = !DILocalVariable(name: "x", scope: !4954, file: !542, line: 423, type: !67)
!4954 = distinct !DILexicalBlock(scope: !4955, file: !542, line: 422, column: 13)
!4955 = distinct !DILexicalBlock(scope: !4956, file: !542, line: 260, column: 11)
!4956 = distinct !DILexicalBlock(scope: !4950, file: !542, line: 257, column: 7)
!4957 = !DILocalVariable(name: "p", scope: !4958, file: !542, line: 431, type: !119)
!4958 = distinct !DILexicalBlock(scope: !4955, file: !542, line: 430, column: 13)
!4959 = !DILocation(line: 0, scope: !4933)
!4960 = !DILocation(line: 208, column: 3, scope: !4933)
!4961 = !DILocation(line: 208, column: 11, scope: !4933)
!4962 = !DILocation(line: 210, column: 3, scope: !4933)
!4963 = !DILocation(line: 211, column: 3, scope: !4933)
!4964 = !DILocation(line: 215, column: 22, scope: !4949)
!4965 = !DILocation(line: 0, scope: !4949)
!4966 = !DILocalVariable(name: "fd", arg: 1, scope: !4967, file: !542, line: 447, type: !67)
!4967 = distinct !DISubprogram(name: "rpl_fcntl_DUPFD", scope: !542, file: !542, line: 447, type: !543, scopeLine: 448, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !545, retainedNodes: !4968)
!4968 = !{!4966, !4969, !4970}
!4969 = !DILocalVariable(name: "target", arg: 2, scope: !4967, file: !542, line: 447, type: !67)
!4970 = !DILocalVariable(name: "result", scope: !4967, file: !542, line: 449, type: !67)
!4971 = !DILocation(line: 0, scope: !4967, inlinedAt: !4972)
!4972 = distinct !DILocation(line: 216, column: 18, scope: !4949)
!4973 = !DILocation(line: 482, column: 12, scope: !4967, inlinedAt: !4972)
!4974 = !DILocation(line: 222, column: 22, scope: !4952)
!4975 = !DILocation(line: 0, scope: !4952)
!4976 = !DILocation(line: 0, scope: !541, inlinedAt: !4977)
!4977 = distinct !DILocation(line: 223, column: 18, scope: !4952)
!4978 = !DILocation(line: 508, column: 12, scope: !4979, inlinedAt: !4977)
!4979 = distinct !DILexicalBlock(scope: !541, file: !542, line: 508, column: 7)
!4980 = !DILocation(line: 508, column: 9, scope: !4979, inlinedAt: !4977)
!4981 = !DILocation(line: 508, column: 7, scope: !541, inlinedAt: !4977)
!4982 = !DILocation(line: 510, column: 16, scope: !4983, inlinedAt: !4977)
!4983 = distinct !DILexicalBlock(scope: !4979, file: !542, line: 509, column: 5)
!4984 = !DILocation(line: 511, column: 13, scope: !4985, inlinedAt: !4977)
!4985 = distinct !DILexicalBlock(scope: !4983, file: !542, line: 511, column: 11)
!4986 = !DILocation(line: 511, column: 23, scope: !4985, inlinedAt: !4977)
!4987 = !DILocation(line: 511, column: 26, scope: !4985, inlinedAt: !4977)
!4988 = !DILocation(line: 511, column: 32, scope: !4985, inlinedAt: !4977)
!4989 = !DILocation(line: 511, column: 11, scope: !4983, inlinedAt: !4977)
!4990 = !DILocation(line: 513, column: 30, scope: !4991, inlinedAt: !4977)
!4991 = distinct !DILexicalBlock(scope: !4985, file: !542, line: 512, column: 9)
!4992 = !DILocation(line: 529, column: 19, scope: !562, inlinedAt: !4977)
!4993 = !DILocation(line: 0, scope: !4967, inlinedAt: !4994)
!4994 = distinct !DILocation(line: 521, column: 20, scope: !4995, inlinedAt: !4977)
!4995 = distinct !DILexicalBlock(scope: !4985, file: !542, line: 520, column: 9)
!4996 = !DILocation(line: 482, column: 12, scope: !4967, inlinedAt: !4994)
!4997 = !DILocation(line: 522, column: 22, scope: !4998, inlinedAt: !4977)
!4998 = distinct !DILexicalBlock(scope: !4995, file: !542, line: 522, column: 15)
!4999 = !DILocation(line: 522, column: 15, scope: !4995, inlinedAt: !4977)
!5000 = !DILocation(line: 523, column: 32, scope: !4998, inlinedAt: !4977)
!5001 = !DILocation(line: 523, column: 13, scope: !4998, inlinedAt: !4977)
!5002 = !DILocation(line: 0, scope: !4967, inlinedAt: !5003)
!5003 = distinct !DILocation(line: 528, column: 14, scope: !4979, inlinedAt: !4977)
!5004 = !DILocation(line: 482, column: 12, scope: !4967, inlinedAt: !5003)
!5005 = !DILocation(line: 529, column: 22, scope: !562, inlinedAt: !4977)
!5006 = !DILocation(line: 0, scope: !4979, inlinedAt: !4977)
!5007 = !DILocation(line: 529, column: 9, scope: !562, inlinedAt: !4977)
!5008 = !DILocation(line: 531, column: 19, scope: !561, inlinedAt: !4977)
!5009 = !DILocation(line: 0, scope: !561, inlinedAt: !4977)
!5010 = !DILocation(line: 532, column: 17, scope: !565, inlinedAt: !4977)
!5011 = !DILocation(line: 532, column: 21, scope: !565, inlinedAt: !4977)
!5012 = !DILocation(line: 532, column: 54, scope: !565, inlinedAt: !4977)
!5013 = !DILocation(line: 532, column: 24, scope: !565, inlinedAt: !4977)
!5014 = !DILocation(line: 532, column: 68, scope: !565, inlinedAt: !4977)
!5015 = !DILocation(line: 532, column: 11, scope: !561, inlinedAt: !4977)
!5016 = !DILocation(line: 534, column: 29, scope: !564, inlinedAt: !4977)
!5017 = !DILocation(line: 0, scope: !564, inlinedAt: !4977)
!5018 = !DILocation(line: 535, column: 11, scope: !564, inlinedAt: !4977)
!5019 = !DILocation(line: 536, column: 17, scope: !564, inlinedAt: !4977)
!5020 = !DILocation(line: 538, column: 9, scope: !564, inlinedAt: !4977)
!5021 = !DILocation(line: 328, column: 22, scope: !4955)
!5022 = !DILocation(line: 329, column: 13, scope: !4955)
!5023 = !DILocation(line: 423, column: 23, scope: !4954)
!5024 = !DILocation(line: 0, scope: !4954)
!5025 = !DILocation(line: 424, column: 24, scope: !4954)
!5026 = !DILocation(line: 426, column: 13, scope: !4955)
!5027 = !DILocation(line: 431, column: 25, scope: !4958)
!5028 = !DILocation(line: 0, scope: !4958)
!5029 = !DILocation(line: 432, column: 24, scope: !4958)
!5030 = !DILocation(line: 434, column: 13, scope: !4955)
!5031 = !DILocation(line: 0, scope: !4950)
!5032 = !DILocation(line: 442, column: 3, scope: !4933)
!5033 = !DILocation(line: 444, column: 1, scope: !4933)
!5034 = !DILocation(line: 443, column: 3, scope: !4933)
!5035 = distinct !DISubprogram(name: "rpl_fflush", scope: !770, file: !770, line: 129, type: !5036, scopeLine: 130, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !769, retainedNodes: !5040)
!5036 = !DISubroutineType(types: !5037)
!5037 = !{!67, !5038}
!5038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5039, size: 64)
!5039 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !231, line: 7, baseType: !776)
!5040 = !{!5041}
!5041 = !DILocalVariable(name: "stream", arg: 1, scope: !5035, file: !770, line: 129, type: !5038)
!5042 = !DILocation(line: 0, scope: !5035)
!5043 = !DILocation(line: 150, column: 14, scope: !5044)
!5044 = distinct !DILexicalBlock(scope: !5035, file: !770, line: 150, column: 7)
!5045 = !DILocation(line: 150, column: 22, scope: !5044)
!5046 = !DILocation(line: 150, column: 27, scope: !5044)
!5047 = !DILocation(line: 150, column: 7, scope: !5035)
!5048 = !DILocation(line: 151, column: 12, scope: !5044)
!5049 = !DILocation(line: 151, column: 5, scope: !5044)
!5050 = !DILocalVariable(name: "fp", arg: 1, scope: !5051, file: !770, line: 41, type: !5038)
!5051 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !770, file: !770, line: 41, type: !5052, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !769, retainedNodes: !5054)
!5052 = !DISubroutineType(types: !5053)
!5053 = !{null, !5038}
!5054 = !{!5050}
!5055 = !DILocation(line: 0, scope: !5051, inlinedAt: !5056)
!5056 = distinct !DILocation(line: 156, column: 3, scope: !5035)
!5057 = !DILocation(line: 43, column: 11, scope: !5058, inlinedAt: !5056)
!5058 = distinct !DILexicalBlock(scope: !5051, file: !770, line: 43, column: 7)
!5059 = !DILocation(line: 43, column: 18, scope: !5058, inlinedAt: !5056)
!5060 = !DILocation(line: 43, column: 7, scope: !5051, inlinedAt: !5056)
!5061 = !DILocation(line: 45, column: 5, scope: !5058, inlinedAt: !5056)
!5062 = !DILocation(line: 158, column: 10, scope: !5035)
!5063 = !DILocation(line: 158, column: 3, scope: !5035)
!5064 = !DILocation(line: 235, column: 1, scope: !5035)
!5065 = distinct !DISubprogram(name: "rpl_fseeko", scope: !811, file: !811, line: 28, type: !5066, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !810, retainedNodes: !5070)
!5066 = !DISubroutineType(types: !5067)
!5067 = !{!67, !5068, !2912, !67}
!5068 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5069, size: 64)
!5069 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !231, line: 7, baseType: !817)
!5070 = !{!5071, !5072, !5073, !5074}
!5071 = !DILocalVariable(name: "fp", arg: 1, scope: !5065, file: !811, line: 28, type: !5068)
!5072 = !DILocalVariable(name: "offset", arg: 2, scope: !5065, file: !811, line: 28, type: !2912)
!5073 = !DILocalVariable(name: "whence", arg: 3, scope: !5065, file: !811, line: 28, type: !67)
!5074 = !DILocalVariable(name: "pos", scope: !5075, file: !811, line: 117, type: !2912)
!5075 = distinct !DILexicalBlock(scope: !5076, file: !811, line: 113, column: 5)
!5076 = distinct !DILexicalBlock(scope: !5065, file: !811, line: 52, column: 7)
!5077 = !DILocation(line: 0, scope: !5065)
!5078 = !DILocation(line: 52, column: 11, scope: !5076)
!5079 = !{!1914, !1348, i64 16}
!5080 = !DILocation(line: 52, column: 31, scope: !5076)
!5081 = !{!1914, !1348, i64 8}
!5082 = !DILocation(line: 52, column: 24, scope: !5076)
!5083 = !DILocation(line: 53, column: 7, scope: !5076)
!5084 = !DILocation(line: 53, column: 14, scope: !5076)
!5085 = !DILocation(line: 53, column: 35, scope: !5076)
!5086 = !{!1914, !1348, i64 32}
!5087 = !DILocation(line: 53, column: 28, scope: !5076)
!5088 = !DILocation(line: 54, column: 7, scope: !5076)
!5089 = !DILocation(line: 54, column: 14, scope: !5076)
!5090 = !{!1914, !1348, i64 72}
!5091 = !DILocation(line: 54, column: 28, scope: !5076)
!5092 = !DILocation(line: 52, column: 7, scope: !5065)
!5093 = !DILocation(line: 117, column: 26, scope: !5075)
!5094 = !DILocation(line: 117, column: 19, scope: !5075)
!5095 = !DILocation(line: 0, scope: !5075)
!5096 = !DILocation(line: 118, column: 15, scope: !5097)
!5097 = distinct !DILexicalBlock(scope: !5075, file: !811, line: 118, column: 11)
!5098 = !DILocation(line: 118, column: 11, scope: !5075)
!5099 = !DILocation(line: 129, column: 11, scope: !5075)
!5100 = !DILocation(line: 129, column: 18, scope: !5075)
!5101 = !DILocation(line: 130, column: 11, scope: !5075)
!5102 = !DILocation(line: 130, column: 19, scope: !5075)
!5103 = !{!1914, !1613, i64 144}
!5104 = !DILocation(line: 161, column: 7, scope: !5075)
!5105 = !DILocation(line: 163, column: 10, scope: !5065)
!5106 = !DILocation(line: 163, column: 3, scope: !5065)
!5107 = !DILocation(line: 164, column: 1, scope: !5065)
!5108 = distinct !DISubprogram(name: "rpl_mbrtowc", scope: !852, file: !852, line: 86, type: !5109, scopeLine: 87, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !851, retainedNodes: !5115)
!5109 = !DISubroutineType(types: !5110)
!5110 = !{!121, !5111, !65, !121, !5112}
!5111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3197, size: 64)
!5112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5113, size: 64)
!5113 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !3193, line: 6, baseType: !5114)
!5114 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !464, line: 21, baseType: !858)
!5115 = !{!5116, !5117, !5118, !5119, !5120, !5121, !5122}
!5116 = !DILocalVariable(name: "pwc", arg: 1, scope: !5108, file: !852, line: 86, type: !5111)
!5117 = !DILocalVariable(name: "s", arg: 2, scope: !5108, file: !852, line: 86, type: !65)
!5118 = !DILocalVariable(name: "n", arg: 3, scope: !5108, file: !852, line: 86, type: !121)
!5119 = !DILocalVariable(name: "ps", arg: 4, scope: !5108, file: !852, line: 86, type: !5112)
!5120 = !DILocalVariable(name: "ret", scope: !5108, file: !852, line: 88, type: !121)
!5121 = !DILocalVariable(name: "wc", scope: !5108, file: !852, line: 89, type: !3197)
!5122 = !DILocalVariable(name: "uc", scope: !5123, file: !852, line: 156, type: !193)
!5123 = distinct !DILexicalBlock(scope: !5124, file: !852, line: 155, column: 5)
!5124 = distinct !DILexicalBlock(scope: !5108, file: !852, line: 154, column: 7)
!5125 = !DILocation(line: 0, scope: !5108)
!5126 = !DILocation(line: 89, column: 3, scope: !5108)
!5127 = !DILocation(line: 105, column: 9, scope: !5128)
!5128 = distinct !DILexicalBlock(scope: !5108, file: !852, line: 105, column: 7)
!5129 = !DILocation(line: 105, column: 7, scope: !5108)
!5130 = !DILocation(line: 145, column: 9, scope: !5108)
!5131 = !DILocation(line: 154, column: 19, scope: !5124)
!5132 = !DILocation(line: 154, column: 31, scope: !5124)
!5133 = !DILocation(line: 154, column: 26, scope: !5124)
!5134 = !DILocation(line: 154, column: 41, scope: !5124)
!5135 = !DILocation(line: 154, column: 7, scope: !5108)
!5136 = !DILocation(line: 156, column: 26, scope: !5123)
!5137 = !DILocation(line: 0, scope: !5123)
!5138 = !DILocation(line: 157, column: 14, scope: !5123)
!5139 = !DILocation(line: 157, column: 12, scope: !5123)
!5140 = !DILocation(line: 163, column: 1, scope: !5108)
!5141 = distinct !DISubprogram(name: "close_stream", scope: !871, file: !871, line: 56, type: !5142, scopeLine: 57, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !870, retainedNodes: !5146)
!5142 = !DISubroutineType(types: !5143)
!5143 = !{!67, !5144}
!5144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5145, size: 64)
!5145 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !231, line: 7, baseType: !877)
!5146 = !{!5147, !5148, !5150, !5151}
!5147 = !DILocalVariable(name: "stream", arg: 1, scope: !5141, file: !871, line: 56, type: !5144)
!5148 = !DILocalVariable(name: "some_pending", scope: !5141, file: !871, line: 58, type: !5149)
!5149 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !204)
!5150 = !DILocalVariable(name: "prev_fail", scope: !5141, file: !871, line: 59, type: !5149)
!5151 = !DILocalVariable(name: "fclose_fail", scope: !5141, file: !871, line: 60, type: !5149)
!5152 = !DILocation(line: 0, scope: !5141)
!5153 = !DILocation(line: 58, column: 30, scope: !5141)
!5154 = !DILocalVariable(name: "__stream", arg: 1, scope: !5155, file: !1575, line: 135, type: !5144)
!5155 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1575, file: !1575, line: 135, type: !5142, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !870, retainedNodes: !5156)
!5156 = !{!5154}
!5157 = !DILocation(line: 0, scope: !5155, inlinedAt: !5158)
!5158 = distinct !DILocation(line: 59, column: 27, scope: !5141)
!5159 = !DILocation(line: 137, column: 10, scope: !5155, inlinedAt: !5158)
!5160 = !DILocation(line: 59, column: 43, scope: !5141)
!5161 = !DILocation(line: 60, column: 29, scope: !5141)
!5162 = !DILocation(line: 60, column: 45, scope: !5141)
!5163 = !DILocation(line: 70, column: 17, scope: !5164)
!5164 = distinct !DILexicalBlock(scope: !5141, file: !871, line: 70, column: 7)
!5165 = !DILocation(line: 58, column: 50, scope: !5141)
!5166 = !DILocation(line: 70, column: 33, scope: !5164)
!5167 = !DILocation(line: 70, column: 53, scope: !5164)
!5168 = !DILocation(line: 70, column: 59, scope: !5164)
!5169 = !DILocation(line: 70, column: 7, scope: !5141)
!5170 = !DILocation(line: 72, column: 11, scope: !5171)
!5171 = distinct !DILexicalBlock(scope: !5164, file: !871, line: 71, column: 5)
!5172 = !DILocation(line: 73, column: 9, scope: !5173)
!5173 = distinct !DILexicalBlock(scope: !5171, file: !871, line: 72, column: 11)
!5174 = !DILocation(line: 73, column: 15, scope: !5173)
!5175 = !DILocation(line: 78, column: 1, scope: !5141)
!5176 = distinct !DISubprogram(name: "hard_locale", scope: !909, file: !909, line: 27, type: !868, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !908, retainedNodes: !5177)
!5177 = !{!5178, !5179}
!5178 = !DILocalVariable(name: "category", arg: 1, scope: !5176, file: !909, line: 27, type: !67)
!5179 = !DILocalVariable(name: "locale", scope: !5176, file: !909, line: 29, type: !5180)
!5180 = !DICompositeType(tag: DW_TAG_array_type, baseType: !64, size: 2056, elements: !5181)
!5181 = !{!5182}
!5182 = !DISubrange(count: 257)
!5183 = !DILocation(line: 0, scope: !5176)
!5184 = !DILocation(line: 29, column: 3, scope: !5176)
!5185 = !DILocation(line: 29, column: 8, scope: !5176)
!5186 = !DILocation(line: 31, column: 7, scope: !5187)
!5187 = distinct !DILexicalBlock(scope: !5176, file: !909, line: 31, column: 7)
!5188 = !DILocation(line: 31, column: 7, scope: !5176)
!5189 = !DILocation(line: 34, column: 12, scope: !5176)
!5190 = !DILocation(line: 34, column: 38, scope: !5176)
!5191 = !DILocation(line: 34, column: 41, scope: !5176)
!5192 = !DILocation(line: 34, column: 66, scope: !5176)
!5193 = !DILocation(line: 35, column: 1, scope: !5176)
!5194 = distinct !DISubprogram(name: "locale_charset", scope: !916, file: !916, line: 831, type: !487, scopeLine: 832, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !915, retainedNodes: !5195)
!5195 = !{!5196}
!5196 = !DILocalVariable(name: "codeset", scope: !5194, file: !916, line: 833, type: !65)
!5197 = !DILocation(line: 847, column: 13, scope: !5194)
!5198 = !DILocation(line: 0, scope: !5194)
!5199 = !DILocation(line: 911, column: 15, scope: !5200)
!5200 = distinct !DILexicalBlock(scope: !5194, file: !916, line: 911, column: 7)
!5201 = !DILocation(line: 911, column: 7, scope: !5194)
!5202 = !DILocation(line: 1070, column: 13, scope: !5203)
!5203 = distinct !DILexicalBlock(scope: !5204, file: !916, line: 1070, column: 13)
!5204 = distinct !DILexicalBlock(scope: !5205, file: !916, line: 1060, column: 7)
!5205 = distinct !DILexicalBlock(scope: !5194, file: !916, line: 1019, column: 3)
!5206 = !DILocation(line: 1070, column: 24, scope: !5203)
!5207 = !DILocation(line: 1070, column: 13, scope: !5204)
!5208 = !DILocation(line: 1158, column: 3, scope: !5194)
!5209 = distinct !DISubprogram(name: "setlocale_null_r", scope: !1309, file: !1309, line: 269, type: !5210, scopeLine: 270, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1308, retainedNodes: !5212)
!5210 = !DISubroutineType(types: !5211)
!5211 = !{!67, !67, !63, !121}
!5212 = !{!5213, !5214, !5215}
!5213 = !DILocalVariable(name: "category", arg: 1, scope: !5209, file: !1309, line: 269, type: !67)
!5214 = !DILocalVariable(name: "buf", arg: 2, scope: !5209, file: !1309, line: 269, type: !63)
!5215 = !DILocalVariable(name: "bufsize", arg: 3, scope: !5209, file: !1309, line: 269, type: !121)
!5216 = !DILocation(line: 0, scope: !5209)
!5217 = !DILocalVariable(name: "category", arg: 1, scope: !5218, file: !1309, line: 91, type: !67)
!5218 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !1309, file: !1309, line: 91, type: !5210, scopeLine: 92, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1308, retainedNodes: !5219)
!5219 = !{!5217, !5220, !5221, !5222, !5223}
!5220 = !DILocalVariable(name: "buf", arg: 2, scope: !5218, file: !1309, line: 91, type: !63)
!5221 = !DILocalVariable(name: "bufsize", arg: 3, scope: !5218, file: !1309, line: 91, type: !121)
!5222 = !DILocalVariable(name: "result", scope: !5218, file: !1309, line: 140, type: !65)
!5223 = !DILocalVariable(name: "length", scope: !5224, file: !1309, line: 154, type: !121)
!5224 = distinct !DILexicalBlock(scope: !5225, file: !1309, line: 153, column: 5)
!5225 = distinct !DILexicalBlock(scope: !5218, file: !1309, line: 142, column: 7)
!5226 = !DILocation(line: 0, scope: !5218, inlinedAt: !5227)
!5227 = distinct !DILocation(line: 274, column: 10, scope: !5209)
!5228 = !DILocalVariable(name: "category", arg: 1, scope: !5229, file: !1309, line: 60, type: !67)
!5229 = distinct !DISubprogram(name: "setlocale_null_androidfix", scope: !1309, file: !1309, line: 60, type: !5230, scopeLine: 61, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1308, retainedNodes: !5232)
!5230 = !DISubroutineType(types: !5231)
!5231 = !{!65, !67}
!5232 = !{!5228, !5233}
!5233 = !DILocalVariable(name: "result", scope: !5229, file: !1309, line: 62, type: !65)
!5234 = !DILocation(line: 0, scope: !5229, inlinedAt: !5235)
!5235 = distinct !DILocation(line: 140, column: 24, scope: !5218, inlinedAt: !5227)
!5236 = !DILocation(line: 62, column: 24, scope: !5229, inlinedAt: !5235)
!5237 = !DILocation(line: 142, column: 14, scope: !5225, inlinedAt: !5227)
!5238 = !DILocation(line: 142, column: 7, scope: !5218, inlinedAt: !5227)
!5239 = !DILocation(line: 145, column: 19, scope: !5240, inlinedAt: !5227)
!5240 = distinct !DILexicalBlock(scope: !5241, file: !1309, line: 145, column: 11)
!5241 = distinct !DILexicalBlock(scope: !5225, file: !1309, line: 143, column: 5)
!5242 = !DILocation(line: 145, column: 11, scope: !5241, inlinedAt: !5227)
!5243 = !DILocation(line: 149, column: 16, scope: !5240, inlinedAt: !5227)
!5244 = !DILocation(line: 149, column: 9, scope: !5240, inlinedAt: !5227)
!5245 = !DILocation(line: 154, column: 23, scope: !5224, inlinedAt: !5227)
!5246 = !DILocation(line: 0, scope: !5224, inlinedAt: !5227)
!5247 = !DILocation(line: 155, column: 18, scope: !5248, inlinedAt: !5227)
!5248 = distinct !DILexicalBlock(scope: !5224, file: !1309, line: 155, column: 11)
!5249 = !DILocation(line: 155, column: 11, scope: !5224, inlinedAt: !5227)
!5250 = !DILocation(line: 157, column: 39, scope: !5251, inlinedAt: !5227)
!5251 = distinct !DILexicalBlock(scope: !5248, file: !1309, line: 156, column: 9)
!5252 = !DILocalVariable(name: "__dest", arg: 1, scope: !5253, file: !2305, line: 31, type: !2308)
!5253 = distinct !DISubprogram(name: "memcpy", scope: !2305, file: !2305, line: 31, type: !2306, scopeLine: 33, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1308, retainedNodes: !5254)
!5254 = !{!5252, !5255, !5256}
!5255 = !DILocalVariable(name: "__src", arg: 2, scope: !5253, file: !2305, line: 31, type: !2309)
!5256 = !DILocalVariable(name: "__len", arg: 3, scope: !5253, file: !2305, line: 31, type: !121)
!5257 = !DILocation(line: 0, scope: !5253, inlinedAt: !5258)
!5258 = distinct !DILocation(line: 157, column: 11, scope: !5251, inlinedAt: !5227)
!5259 = !DILocation(line: 34, column: 10, scope: !5253, inlinedAt: !5258)
!5260 = !DILocation(line: 158, column: 11, scope: !5251, inlinedAt: !5227)
!5261 = !DILocation(line: 162, column: 23, scope: !5262, inlinedAt: !5227)
!5262 = distinct !DILexicalBlock(scope: !5263, file: !1309, line: 162, column: 15)
!5263 = distinct !DILexicalBlock(scope: !5248, file: !1309, line: 161, column: 9)
!5264 = !DILocation(line: 162, column: 15, scope: !5263, inlinedAt: !5227)
!5265 = !DILocation(line: 167, column: 44, scope: !5266, inlinedAt: !5227)
!5266 = distinct !DILexicalBlock(scope: !5262, file: !1309, line: 163, column: 13)
!5267 = !DILocation(line: 0, scope: !5253, inlinedAt: !5268)
!5268 = distinct !DILocation(line: 167, column: 15, scope: !5266, inlinedAt: !5227)
!5269 = !DILocation(line: 34, column: 10, scope: !5253, inlinedAt: !5268)
!5270 = !DILocation(line: 168, column: 15, scope: !5266, inlinedAt: !5227)
!5271 = !DILocation(line: 168, column: 32, scope: !5266, inlinedAt: !5227)
!5272 = !DILocation(line: 169, column: 13, scope: !5266, inlinedAt: !5227)
!5273 = !DILocation(line: 0, scope: !5225, inlinedAt: !5227)
!5274 = !DILocation(line: 274, column: 3, scope: !5209)
!5275 = distinct !DISubprogram(name: "setlocale_null", scope: !1309, file: !1309, line: 301, type: !5230, scopeLine: 302, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1308, retainedNodes: !5276)
!5276 = !{!5277}
!5277 = !DILocalVariable(name: "category", arg: 1, scope: !5275, file: !1309, line: 301, type: !67)
!5278 = !DILocation(line: 0, scope: !5275)
!5279 = !DILocation(line: 0, scope: !5229, inlinedAt: !5280)
!5280 = distinct !DILocation(line: 304, column: 10, scope: !5275)
!5281 = !DILocation(line: 62, column: 24, scope: !5229, inlinedAt: !5280)
!5282 = !DILocation(line: 304, column: 3, scope: !5275)
