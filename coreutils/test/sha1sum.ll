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
@status_only = internal unnamed_addr global i1 false, align 1, !dbg !210
@warn = internal unnamed_addr global i1 false, align 1, !dbg !211
@quiet = internal unnamed_addr global i1 false, align 1, !dbg !212
@ignore_missing = internal unnamed_addr global i1 false, align 1, !dbg !213
@strict = internal unnamed_addr global i1 false, align 1, !dbg !214
@delim = internal unnamed_addr global i1 false, align 1, !dbg !215
@.str.19 = private unnamed_addr constant [15 x i8] c"Ulrich Drepper\00", align 1
@.str.20 = private unnamed_addr constant [13 x i8] c"Scott Miller\00", align 1
@.str.21 = private unnamed_addr constant [13 x i8] c"David Madore\00", align 1
@min_digest_line_length = internal unnamed_addr global i1 false, align 8, !dbg !216
@digest_hex_bytes = internal unnamed_addr global i1 false, align 8, !dbg !217
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
@have_read_stdin = internal unnamed_addr global i1 false, align 1, !dbg !218
@.str.35 = private unnamed_addr constant [15 x i8] c"standard input\00", align 1
@stdin = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.64 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.65 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.66 = private unnamed_addr constant [28 x i8] c"%s: too many checksum lines\00", align 1
@bsd_reversed = internal unnamed_addr global i32 -1, align 4, !dbg !196
@.str.67 = private unnamed_addr constant [47 x i8] c"%s: %lu: improperly formatted %s checksum line\00", align 1
@.str.69 = private unnamed_addr constant [20 x i8] c"FAILED open or read\00", align 1
@.str.68 = private unnamed_addr constant [6 x i8] c": %s\0A\00", align 1
@digest_check.bin2hex = internal unnamed_addr constant [16 x i8] c"0123456789abcdef", align 16, !dbg !88
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
@Version = dso_local local_unnamed_addr global i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.83, i64 0, i64 0), align 8, !dbg !219
@.str.83 = private unnamed_addr constant [5 x i8] c"8.32\00", align 1
@file_name = internal unnamed_addr global i8* null, align 8, !dbg !225
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !230
@.str.86 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.1.87 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.2.88 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@fillbuf = internal constant <{ i8, [63 x i8] }> <{ i8 -128, [63 x i8] zeroinitializer }>, align 16, !dbg !232
@exit_failure = dso_local global i32 1, align 4, !dbg !246
@program_name = dso_local local_unnamed_addr global i8* null, align 8, !dbg !252
@.str.101 = private unnamed_addr constant [56 x i8] c"A NULL argv[0] was passed through an exec system call.\0A\00", align 1
@.str.1.102 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.2.103 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@quoting_style_args = dso_local local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.104, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.105, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.106, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.107, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.108, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.109, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.110, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.111, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.112, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.113, i32 0, i32 0), i8* null], align 16, !dbg !258
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
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !270
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !276
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !288
@.str.11.114 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.115 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.10.116 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.14.117 = private unnamed_addr constant [4 x i8] c"\E2\80\98\00", align 1
@.str.15.118 = private unnamed_addr constant [4 x i8] c"\E2\80\99\00", align 1
@.str.17.119 = private unnamed_addr constant [4 x i8] c"\A1\07e\00", align 1
@.str.18.120 = private unnamed_addr constant [3 x i8] c"\A1\AF\00", align 1
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8, !dbg !295
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !302
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !290
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !304
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
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !310
@.str.1.162 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.163 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec = internal unnamed_addr global i32 0, align 4, !dbg !318
@.str.1.180 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1
@.str.183 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1.184 = private unnamed_addr constant [6 x i8] c"ASCII\00", align 1

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @usage(i32 %0) local_unnamed_addr #0 !dbg !781 {
  %2 = alloca [7 x %struct.infomap], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !785, metadata !DIExpression()), !dbg !786
  %3 = icmp eq i32 %0, 0, !dbg !787
  br i1 %3, label %9, label %4, !dbg !789

4:                                                ; preds = %1
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !790, !tbaa !792
  %6 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 5) #25, !dbg !790
  %7 = load i8*, i8** @program_name, align 8, !dbg !790, !tbaa !792
  %8 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %5, i32 1, i8* %6, i8* %7) #25, !dbg !790
  br label %77, !dbg !790

9:                                                ; preds = %1
  %10 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.1, i64 0, i64 0), i32 5) #25, !dbg !796
  %11 = load i8*, i8** @program_name, align 8, !dbg !796, !tbaa !792
  %12 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %10, i8* %11, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 160) #25, !dbg !796
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.36, i64 0, i64 0), i32 5) #25, !dbg !798
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !798, !tbaa !792
  %15 = tail call i32 @fputs_unlocked(i8* %13, %struct._IO_FILE* %14) #25, !dbg !798
  %16 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0), i32 5) #25, !dbg !803
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !803, !tbaa !792
  %18 = tail call i32 @fputs_unlocked(i8* %16, %struct._IO_FILE* %17), !dbg !803
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.4, i64 0, i64 0), i32 5) #25, !dbg !805
  %20 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %19, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #25, !dbg !805
  %21 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.5, i64 0, i64 0), i32 5) #25, !dbg !806
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !806, !tbaa !792
  %23 = tail call i32 @fputs_unlocked(i8* %21, %struct._IO_FILE* %22), !dbg !806
  %24 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.6, i64 0, i64 0), i32 5) #25, !dbg !807
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !807, !tbaa !792
  %26 = tail call i32 @fputs_unlocked(i8* %24, %struct._IO_FILE* %25), !dbg !807
  %27 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([122 x i8], [122 x i8]* @.str.7, i64 0, i64 0), i32 5) #25, !dbg !809
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !809, !tbaa !792
  %29 = tail call i32 @fputs_unlocked(i8* %27, %struct._IO_FILE* %28), !dbg !809
  %30 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([435 x i8], [435 x i8]* @.str.8, i64 0, i64 0), i32 5) #25, !dbg !810
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !810, !tbaa !792
  %32 = tail call i32 @fputs_unlocked(i8* %30, %struct._IO_FILE* %31), !dbg !810
  %33 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.9, i64 0, i64 0), i32 5) #25, !dbg !811
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !811, !tbaa !792
  %35 = tail call i32 @fputs_unlocked(i8* %33, %struct._IO_FILE* %34), !dbg !811
  %36 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.10, i64 0, i64 0), i32 5) #25, !dbg !812
  %37 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !812, !tbaa !792
  %38 = tail call i32 @fputs_unlocked(i8* %36, %struct._IO_FILE* %37), !dbg !812
  %39 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([377 x i8], [377 x i8]* @.str.11, i64 0, i64 0), i32 5) #25, !dbg !813
  %40 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %39, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i64 0, i64 0)) #25, !dbg !813
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i64 0, i64 0), metadata !814, metadata !DIExpression()) #25, !dbg !832
  %41 = bitcast [7 x %struct.infomap]* %2 to i8*, !dbg !834
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %41) #25, !dbg !834
  call void @llvm.dbg.declare(metadata [7 x %struct.infomap]* %2, metadata !819, metadata !DIExpression()) #25, !dbg !835
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 dereferenceable(112) %41, i8* nonnull align 16 dereferenceable(112) bitcast ([7 x %struct.infomap]* @__const.emit_ancillary_info.infomap to i8*), i64 112, i1 false) #25, !dbg !835
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i64 0, i64 0), metadata !828, metadata !DIExpression()) #25, !dbg !832
  call void @llvm.dbg.value(metadata [7 x %struct.infomap]* %2, metadata !829, metadata !DIExpression()) #25, !dbg !832
  %42 = getelementptr inbounds [7 x %struct.infomap], [7 x %struct.infomap]* %2, i64 0, i64 0, !dbg !836
  call void @llvm.dbg.value(metadata %struct.infomap* %42, metadata !829, metadata !DIExpression()) #25, !dbg !832
  br label %43, !dbg !837

43:                                               ; preds = %48, %9
  %44 = phi i8* [ %51, %48 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.37, i64 0, i64 0), %9 ]
  %45 = phi %struct.infomap* [ %49, %48 ], [ %42, %9 ]
  call void @llvm.dbg.value(metadata %struct.infomap* %45, metadata !829, metadata !DIExpression()) #25, !dbg !832
  %46 = tail call i32 @strcmp(i8* nonnull dereferenceable(8) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i64 0, i64 0), i8* nonnull %44) #26, !dbg !838
  %47 = icmp eq i32 %46, 0, !dbg !838
  br i1 %47, label %53, label %48, !dbg !837

48:                                               ; preds = %43
  %49 = getelementptr inbounds %struct.infomap, %struct.infomap* %45, i64 1, !dbg !839
  call void @llvm.dbg.value(metadata %struct.infomap* %49, metadata !829, metadata !DIExpression()) #25, !dbg !832
  %50 = getelementptr inbounds %struct.infomap, %struct.infomap* %49, i64 0, i32 0, !dbg !840
  %51 = load i8*, i8** %50, align 8, !dbg !840, !tbaa !841
  %52 = icmp eq i8* %51, null, !dbg !843
  br i1 %52, label %53, label %43, !dbg !844, !llvm.loop !845

53:                                               ; preds = %48, %43
  %54 = phi %struct.infomap* [ %45, %43 ], [ %49, %48 ]
  %55 = getelementptr inbounds %struct.infomap, %struct.infomap* %54, i64 0, i32 1, !dbg !847
  %56 = load i8*, i8** %55, align 8, !dbg !847, !tbaa !849
  %57 = icmp eq i8* %56, null, !dbg !850
  %58 = select i1 %57, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i64 0, i64 0), i8* %56, !dbg !851
  call void @llvm.dbg.value(metadata i8* %58, metadata !828, metadata !DIExpression()) #25, !dbg !832
  %59 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.45, i64 0, i64 0), i32 5) #25, !dbg !852
  %60 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %59, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.18, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.46, i64 0, i64 0)) #25, !dbg !852
  %61 = tail call i8* @setlocale(i32 5, i8* null) #25, !dbg !853
  call void @llvm.dbg.value(metadata i8* %61, metadata !831, metadata !DIExpression()) #25, !dbg !832
  %62 = icmp eq i8* %61, null, !dbg !854
  br i1 %62, label %70, label %63, !dbg !856

63:                                               ; preds = %53
  %64 = tail call i32 @strncmp(i8* nonnull %61, i8* nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.47, i64 0, i64 0), i64 3) #26, !dbg !857
  %65 = icmp eq i32 %64, 0, !dbg !857
  br i1 %65, label %70, label %66, !dbg !858

66:                                               ; preds = %63
  %67 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.48, i64 0, i64 0), i32 5) #25, !dbg !859
  %68 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !859, !tbaa !792
  %69 = tail call i32 @fputs_unlocked(i8* %67, %struct._IO_FILE* %68) #25, !dbg !859
  br label %70, !dbg !861

70:                                               ; preds = %53, %63, %66
  %71 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.49, i64 0, i64 0), i32 5) #25, !dbg !862
  %72 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %71, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.46, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i64 0, i64 0)) #25, !dbg !862
  %73 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.50, i64 0, i64 0), i32 5) #25, !dbg !863
  %74 = icmp eq i8* %58, getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i64 0, i64 0), !dbg !863
  %75 = select i1 %74, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.51, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.14, i64 0, i64 0), !dbg !863
  %76 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %73, i8* %58, i8* %75) #25, !dbg !863
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %41) #25, !dbg !864
  br label %77

77:                                               ; preds = %70, %4
  tail call void @exit(i32 %0) #27, !dbg !865
  unreachable, !dbg !865
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !866 i8* @dcgettext(i8*, i8*, i32) local_unnamed_addr #2

declare i32 @__fprintf_chk(%struct._IO_FILE*, i32, i8*, ...) local_unnamed_addr #3

declare i32 @__printf_chk(i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !870 noundef i32 @fputs_unlocked(i8* nocapture noundef readonly, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #5

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @strcmp(i8* nocapture, i8* nocapture) local_unnamed_addr #6

; Function Attrs: nounwind
declare !dbg !874 i8* @setlocale(i32, i8*) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @strncmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #6

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #5

; Function Attrs: noreturn nounwind
declare void @exit(i32) local_unnamed_addr #7

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @main(i32 %0, i8** %1) local_unnamed_addr #8 !dbg !878 {
  %3 = alloca [24 x i8], align 16
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8, align 1
  %7 = alloca [24 x i8], align 16
  %8 = alloca i8, align 1
  call void @llvm.dbg.value(metadata i32 %0, metadata !883, metadata !DIExpression()), !dbg !908
  call void @llvm.dbg.value(metadata i8** %1, metadata !884, metadata !DIExpression()), !dbg !908
  %9 = getelementptr inbounds [24 x i8], [24 x i8]* %7, i64 0, i64 0, !dbg !909
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %9) #25, !dbg !909
  call void @llvm.dbg.declare(metadata [24 x i8]* %7, metadata !885, metadata !DIExpression()), !dbg !910
  call void @llvm.dbg.value(metadata i8* %9, metadata !886, metadata !DIExpression()), !dbg !908
  call void @llvm.dbg.value(metadata i8 0, metadata !887, metadata !DIExpression()), !dbg !908
  call void @llvm.dbg.value(metadata i8 1, metadata !889, metadata !DIExpression()), !dbg !908
  call void @llvm.dbg.value(metadata i32 -1, metadata !890, metadata !DIExpression()), !dbg !908
  call void @llvm.dbg.value(metadata i8 0, metadata !891, metadata !DIExpression()), !dbg !908
  %10 = load i8*, i8** %1, align 8, !dbg !911, !tbaa !792
  tail call void @set_program_name(i8* %10) #25, !dbg !912
  %11 = tail call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.14, i64 0, i64 0)) #25, !dbg !913
  %12 = tail call i8* @bindtextdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.16, i64 0, i64 0)) #25, !dbg !914
  %13 = tail call i8* @textdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i64 0, i64 0)) #25, !dbg !915
  %14 = tail call i32 @atexit(void ()* nonnull @close_stdout) #25, !dbg !916
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !917, !tbaa !792
  %16 = tail call i32 @setvbuf(%struct._IO_FILE* %15, i8* null, i32 1, i64 0) #25, !dbg !918
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i64 0, i64 0), metadata !892, metadata !DIExpression()), !dbg !908
  br label %17, !dbg !919

17:                                               ; preds = %22, %2
  %18 = phi i32 [ -1, %2 ], [ %23, %22 ], !dbg !920
  %19 = phi i8 [ 0, %2 ], [ %24, %22 ], !dbg !921
  %20 = phi i8 [ 0, %2 ], [ %25, %22 ], !dbg !922
  call void @llvm.dbg.value(metadata i8 %20, metadata !887, metadata !DIExpression()), !dbg !908
  call void @llvm.dbg.value(metadata i8 %19, metadata !891, metadata !DIExpression()), !dbg !908
  call void @llvm.dbg.value(metadata i32 %18, metadata !890, metadata !DIExpression()), !dbg !908
  %21 = tail call i32 @getopt_long(i32 %0, i8** nonnull %1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i64 0, i64 0), %struct.option* getelementptr inbounds ([13 x %struct.option], [13 x %struct.option]* @long_options, i64 0, i64 0), i32* null) #25, !dbg !923
  call void @llvm.dbg.value(metadata i32 %21, metadata !888, metadata !DIExpression()), !dbg !908
  switch i32 %21, label %39 [
    i32 -1, label %40
    i32 98, label %22
    i32 99, label %26
    i32 129, label %27
    i32 116, label %28
    i32 119, label %29
    i32 128, label %30
    i32 130, label %31
    i32 131, label %32
    i32 132, label %33
    i32 122, label %34
    i32 -130, label %35
    i32 -131, label %36
  ], !dbg !919

22:                                               ; preds = %17, %34, %33, %32, %31, %30, %29, %28, %27, %26
  %23 = phi i32 [ %18, %34 ], [ 1, %33 ], [ %18, %32 ], [ %18, %31 ], [ %18, %30 ], [ %18, %29 ], [ 0, %28 ], [ %18, %27 ], [ %18, %26 ], [ 1, %17 ]
  %24 = phi i8 [ %19, %34 ], [ 1, %33 ], [ %19, %32 ], [ %19, %31 ], [ %19, %30 ], [ %19, %29 ], [ %19, %28 ], [ %19, %27 ], [ %19, %26 ], [ %19, %17 ]
  %25 = phi i8 [ %20, %34 ], [ %20, %33 ], [ %20, %32 ], [ %20, %31 ], [ %20, %30 ], [ %20, %29 ], [ %20, %28 ], [ %20, %27 ], [ 1, %26 ], [ %20, %17 ]
  br label %17, !dbg !908, !llvm.loop !924

26:                                               ; preds = %17
  call void @llvm.dbg.value(metadata i8 1, metadata !887, metadata !DIExpression()), !dbg !908
  br label %22, !dbg !926

27:                                               ; preds = %17
  store i1 true, i1* @status_only, align 1, !dbg !928
  store i1 false, i1* @warn, align 1, !dbg !929
  store i1 false, i1* @quiet, align 1, !dbg !930
  br label %22, !dbg !931

28:                                               ; preds = %17
  call void @llvm.dbg.value(metadata i32 0, metadata !890, metadata !DIExpression()), !dbg !908
  br label %22, !dbg !932

29:                                               ; preds = %17
  store i1 false, i1* @status_only, align 1, !dbg !933
  store i1 true, i1* @warn, align 1, !dbg !934
  store i1 false, i1* @quiet, align 1, !dbg !935
  br label %22, !dbg !936

30:                                               ; preds = %17
  store i1 true, i1* @ignore_missing, align 1, !dbg !937
  br label %22, !dbg !938

31:                                               ; preds = %17
  store i1 false, i1* @status_only, align 1, !dbg !939
  store i1 false, i1* @warn, align 1, !dbg !940
  store i1 true, i1* @quiet, align 1, !dbg !941
  br label %22, !dbg !942

32:                                               ; preds = %17
  store i1 true, i1* @strict, align 1, !dbg !943
  br label %22, !dbg !944

33:                                               ; preds = %17
  call void @llvm.dbg.value(metadata i8 1, metadata !891, metadata !DIExpression()), !dbg !908
  call void @llvm.dbg.value(metadata i32 1, metadata !890, metadata !DIExpression()), !dbg !908
  br label %22, !dbg !945

34:                                               ; preds = %17
  store i1 true, i1* @delim, align 1, !dbg !946
  br label %22, !dbg !947

35:                                               ; preds = %17
  tail call void @usage(i32 0) #28, !dbg !948
  unreachable, !dbg !948

36:                                               ; preds = %17
  %37 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !949, !tbaa !792
  %38 = load i8*, i8** @Version, align 8, !dbg !949, !tbaa !792
  tail call void (%struct._IO_FILE*, i8*, i8*, i8*, ...) @version_etc(%struct._IO_FILE* %37, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.18, i64 0, i64 0), i8* %38, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.19, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.20, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.21, i64 0, i64 0), i8* null) #25, !dbg !949
  tail call void @exit(i32 0) #27, !dbg !949
  unreachable, !dbg !949

39:                                               ; preds = %17
  tail call void @usage(i32 1) #28, !dbg !950
  unreachable, !dbg !950

40:                                               ; preds = %17
  store i1 true, i1* @min_digest_line_length, align 8, !dbg !951
  store i1 true, i1* @digest_hex_bytes, align 8, !dbg !952
  %41 = icmp eq i8 %19, 0, !dbg !953
  %42 = icmp ne i32 %18, 0
  %43 = or i1 %42, %41, !dbg !955
  br i1 %43, label %46, label %44, !dbg !955

44:                                               ; preds = %40
  %45 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.22, i64 0, i64 0), i32 5) #25, !dbg !956
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %45) #25, !dbg !958
  tail call void @usage(i32 1) #28, !dbg !959
  unreachable, !dbg !959

46:                                               ; preds = %40
  %47 = load i1, i1* @delim, align 1, !dbg !960
  %48 = xor i1 %47, true, !dbg !962
  %49 = icmp eq i8 %20, 0
  %50 = or i1 %49, %48, !dbg !962
  br i1 %50, label %53, label %51, !dbg !962

51:                                               ; preds = %46
  %52 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.23, i64 0, i64 0), i32 5) #25, !dbg !963
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %52) #25, !dbg !965
  tail call void @usage(i32 1) #28, !dbg !966
  unreachable, !dbg !966

53:                                               ; preds = %46
  %54 = and i8 %19, %20, !dbg !967
  %55 = icmp eq i8 %54, 0, !dbg !967
  br i1 %55, label %58, label %56, !dbg !967

56:                                               ; preds = %53
  %57 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.24, i64 0, i64 0), i32 5) #25, !dbg !969
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %57) #25, !dbg !971
  tail call void @usage(i32 1) #28, !dbg !972
  unreachable, !dbg !972

58:                                               ; preds = %53
  %59 = icmp slt i32 %18, 0, !dbg !973
  %60 = or i1 %59, %49, !dbg !975
  br i1 %60, label %63, label %61, !dbg !975

61:                                               ; preds = %58
  %62 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.25, i64 0, i64 0), i32 5) #25, !dbg !976
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %62) #25, !dbg !978
  tail call void @usage(i32 1) #28, !dbg !979
  unreachable, !dbg !979

63:                                               ; preds = %58
  %64 = load i1, i1* @ignore_missing, align 1, !dbg !980
  %65 = and i1 %49, %64, !dbg !982
  br i1 %65, label %66, label %68, !dbg !982

66:                                               ; preds = %63
  %67 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.26, i64 0, i64 0), i32 5) #25, !dbg !983
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %67) #25, !dbg !985
  tail call void @usage(i32 1) #28, !dbg !986
  unreachable, !dbg !986

68:                                               ; preds = %63
  %69 = load i1, i1* @status_only, align 1, !dbg !987
  %70 = and i1 %49, %69, !dbg !989
  br i1 %70, label %71, label %73, !dbg !989

71:                                               ; preds = %68
  %72 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.27, i64 0, i64 0), i32 5) #25, !dbg !990
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %72) #25, !dbg !992
  tail call void @usage(i32 1) #28, !dbg !993
  unreachable, !dbg !993

73:                                               ; preds = %68
  %74 = load i1, i1* @warn, align 1, !dbg !994
  %75 = and i1 %49, %74, !dbg !996
  br i1 %75, label %76, label %78, !dbg !996

76:                                               ; preds = %73
  %77 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.28, i64 0, i64 0), i32 5) #25, !dbg !997
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %77) #25, !dbg !999
  tail call void @usage(i32 1) #28, !dbg !1000
  unreachable, !dbg !1000

78:                                               ; preds = %73
  %79 = load i1, i1* @quiet, align 1, !dbg !1001
  %80 = and i1 %49, %79, !dbg !1003
  br i1 %80, label %81, label %83, !dbg !1003

81:                                               ; preds = %78
  %82 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.29, i64 0, i64 0), i32 5) #25, !dbg !1004
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %82) #25, !dbg !1006
  tail call void @usage(i32 1) #28, !dbg !1007
  unreachable, !dbg !1007

83:                                               ; preds = %78
  %84 = load i1, i1* @strict, align 1, !dbg !1008
  %85 = zext i1 %84 to i32, !dbg !1008
  %86 = xor i8 %20, 1, !dbg !1010
  %87 = zext i8 %86 to i32, !dbg !1010
  %88 = and i32 %85, %87, !dbg !1011
  %89 = icmp eq i32 %88, 0, !dbg !1011
  br i1 %89, label %92, label %90, !dbg !1012

90:                                               ; preds = %83
  %91 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.30, i64 0, i64 0), i32 5) #25, !dbg !1013
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %91) #25, !dbg !1015
  tail call void @usage(i32 1) #28, !dbg !1016
  unreachable, !dbg !1016

92:                                               ; preds = %83
  %93 = icmp slt i32 %18, 1, !dbg !1017
  call void @llvm.dbg.value(metadata i32 undef, metadata !890, metadata !DIExpression()), !dbg !908
  %94 = sext i32 %0 to i64, !dbg !1018
  %95 = getelementptr inbounds i8*, i8** %1, i64 %94, !dbg !1018
  call void @llvm.dbg.value(metadata i8** %95, metadata !893, metadata !DIExpression()), !dbg !908
  %96 = load i32, i32* @optind, align 4, !dbg !1019, !tbaa !1021
  %97 = icmp eq i32 %96, %0, !dbg !1023
  br i1 %97, label %98, label %100, !dbg !1024

98:                                               ; preds = %92
  %99 = getelementptr inbounds i8*, i8** %95, i64 1, !dbg !1025
  call void @llvm.dbg.value(metadata i8** %99, metadata !893, metadata !DIExpression()), !dbg !908
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.31, i64 0, i64 0), i8** %95, align 8, !dbg !1026, !tbaa !792
  br label %100, !dbg !1027

100:                                              ; preds = %98, %92
  %101 = phi i8** [ %99, %98 ], [ %95, %92 ], !dbg !908
  call void @llvm.dbg.value(metadata i8** %101, metadata !893, metadata !DIExpression()), !dbg !908
  %102 = sext i32 %96 to i64, !dbg !1028
  %103 = getelementptr inbounds i8*, i8** %1, i64 %102, !dbg !1028
  call void @llvm.dbg.value(metadata i8** %103, metadata !894, metadata !DIExpression()), !dbg !1029
  call void @llvm.dbg.value(metadata i8 1, metadata !889, metadata !DIExpression()), !dbg !908
  %104 = icmp ult i8** %103, %101, !dbg !1030
  br i1 %104, label %105, label %111, !dbg !1031

105:                                              ; preds = %100
  %106 = getelementptr inbounds [24 x i8], [24 x i8]* %3, i64 0, i64 0
  %107 = bitcast i8** %4 to i8*
  %108 = bitcast i64* %5 to i8*
  %109 = select i1 %93, i32 32, i32 42
  %110 = trunc i32 %109 to i8
  br label %114, !dbg !1031

111:                                              ; preds = %660, %100
  %112 = phi i8 [ 1, %100 ], [ %661, %660 ], !dbg !908
  %113 = load i1, i1* @have_read_stdin, align 1, !dbg !1032
  br i1 %113, label %664, label %672, !dbg !1034

114:                                              ; preds = %105, %660
  %115 = phi i8** [ %103, %105 ], [ %662, %660 ]
  %116 = phi i8 [ 1, %105 ], [ %661, %660 ]
  call void @llvm.dbg.value(metadata i8** %115, metadata !894, metadata !DIExpression()), !dbg !1029
  call void @llvm.dbg.value(metadata i8 %116, metadata !889, metadata !DIExpression()), !dbg !908
  %117 = load i8*, i8** %115, align 8, !dbg !1035, !tbaa !792
  call void @llvm.dbg.value(metadata i8* %117, metadata !896, metadata !DIExpression()), !dbg !1036
  br i1 %49, label %564, label %118, !dbg !1037

118:                                              ; preds = %114
  call void @llvm.dbg.value(metadata i8* %117, metadata !96, metadata !DIExpression()) #25, !dbg !1038
  call void @llvm.dbg.value(metadata i64 0, metadata !152, metadata !DIExpression()) #25, !dbg !1038
  call void @llvm.dbg.value(metadata i64 0, metadata !153, metadata !DIExpression()) #25, !dbg !1038
  call void @llvm.dbg.value(metadata i64 0, metadata !154, metadata !DIExpression()) #25, !dbg !1038
  call void @llvm.dbg.value(metadata i64 0, metadata !155, metadata !DIExpression()) #25, !dbg !1038
  call void @llvm.dbg.value(metadata i8 0, metadata !156, metadata !DIExpression()) #25, !dbg !1038
  call void @llvm.dbg.value(metadata i8 0, metadata !157, metadata !DIExpression()) #25, !dbg !1038
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %106) #25, !dbg !1040
  call void @llvm.dbg.declare(metadata [24 x i8]* %3, metadata !158, metadata !DIExpression()) #25, !dbg !1041
  call void @llvm.dbg.value(metadata i8* %106, metadata !162, metadata !DIExpression()) #25, !dbg !1038
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %107) #25, !dbg !1042
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %108) #25, !dbg !1043
  %119 = call i32 @strcmp(i8* nonnull dereferenceable(1) %117, i8* nonnull dereferenceable(2) getelementptr inbounds ([2 x i8], [2 x i8]* @.str.31, i64 0, i64 0)) #26, !dbg !1044
  %120 = icmp eq i32 %119, 0, !dbg !1044
  call void @llvm.dbg.value(metadata i1 %120, metadata !166, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #25, !dbg !1038
  br i1 %120, label %121, label %124, !dbg !1045

121:                                              ; preds = %118
  store i1 true, i1* @have_read_stdin, align 1, !dbg !1046
  %122 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.35, i64 0, i64 0), i32 5) #25, !dbg !1049
  call void @llvm.dbg.value(metadata i8* %122, metadata !96, metadata !DIExpression()) #25, !dbg !1038
  %123 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !1050, !tbaa !792
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %123, metadata !97, metadata !DIExpression()) #25, !dbg !1038
  br label %131, !dbg !1051

124:                                              ; preds = %118
  %125 = call %struct._IO_FILE* @fopen_safer(i8* %117, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.64, i64 0, i64 0)) #25, !dbg !1052
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %125, metadata !97, metadata !DIExpression()) #25, !dbg !1038
  %126 = icmp eq %struct._IO_FILE* %125, null, !dbg !1054
  br i1 %126, label %127, label %131, !dbg !1056

127:                                              ; preds = %124
  %128 = tail call i32* @__errno_location() #29, !dbg !1057
  %129 = load i32, i32* %128, align 4, !dbg !1057, !tbaa !1021
  %130 = call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %117) #25, !dbg !1059
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %129, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.65, i64 0, i64 0), i8* %130) #25, !dbg !1060
  br label %560, !dbg !1061

131:                                              ; preds = %124, %121
  %132 = phi %struct._IO_FILE* [ %123, %121 ], [ %125, %124 ], !dbg !1062
  %133 = phi i8* [ %122, %121 ], [ %117, %124 ]
  call void @llvm.dbg.value(metadata i8* %133, metadata !96, metadata !DIExpression()) #25, !dbg !1038
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %132, metadata !97, metadata !DIExpression()) #25, !dbg !1038
  call void @llvm.dbg.value(metadata i64 0, metadata !163, metadata !DIExpression()) #25, !dbg !1038
  call void @llvm.dbg.value(metadata i8* null, metadata !164, metadata !DIExpression()) #25, !dbg !1038
  store i8* null, i8** %4, align 8, !dbg !1063, !tbaa !792
  call void @llvm.dbg.value(metadata i64 0, metadata !165, metadata !DIExpression()) #25, !dbg !1038
  store i64 0, i64* %5, align 8, !dbg !1064, !tbaa !1065
  %134 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %132, i64 0, i32 0
  br label %135, !dbg !1067

135:                                              ; preds = %487, %131
  %136 = phi i8 [ 0, %131 ], [ %488, %487 ], !dbg !1068
  %137 = phi i64 [ 0, %131 ], [ %143, %487 ], !dbg !1038
  %138 = phi i8 [ 0, %131 ], [ %489, %487 ], !dbg !1069
  %139 = phi i64 [ 0, %131 ], [ %490, %487 ], !dbg !1070
  %140 = phi i64 [ 0, %131 ], [ %491, %487 ], !dbg !1071
  %141 = phi i64 [ 0, %131 ], [ %492, %487 ], !dbg !1072
  %142 = phi i64 [ 0, %131 ], [ %493, %487 ], !dbg !1073
  call void @llvm.dbg.value(metadata i64 %142, metadata !152, metadata !DIExpression()) #25, !dbg !1038
  call void @llvm.dbg.value(metadata i64 %141, metadata !153, metadata !DIExpression()) #25, !dbg !1038
  call void @llvm.dbg.value(metadata i64 %140, metadata !154, metadata !DIExpression()) #25, !dbg !1038
  call void @llvm.dbg.value(metadata i64 %139, metadata !155, metadata !DIExpression()) #25, !dbg !1038
  call void @llvm.dbg.value(metadata i8 %138, metadata !156, metadata !DIExpression()) #25, !dbg !1038
  call void @llvm.dbg.value(metadata i64 %137, metadata !163, metadata !DIExpression()) #25, !dbg !1038
  call void @llvm.dbg.value(metadata i8 %136, metadata !157, metadata !DIExpression()) #25, !dbg !1038
  %143 = add i64 %137, 1, !dbg !1074
  call void @llvm.dbg.value(metadata i64 %143, metadata !163, metadata !DIExpression()) #25, !dbg !1038
  %144 = icmp eq i64 %143, 0, !dbg !1075
  br i1 %144, label %145, label %148, !dbg !1077

145:                                              ; preds = %135
  %146 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.66, i64 0, i64 0), i32 5) #25, !dbg !1078
  %147 = call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %133) #25, !dbg !1078
  call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %146, i8* %147) #25, !dbg !1078
  unreachable, !dbg !1078

148:                                              ; preds = %135
  call void @llvm.dbg.value(metadata i8** %4, metadata !164, metadata !DIExpression(DW_OP_deref)) #25, !dbg !1038
  call void @llvm.dbg.value(metadata i64* %5, metadata !165, metadata !DIExpression(DW_OP_deref)) #25, !dbg !1038
  call void @llvm.dbg.value(metadata i8** %4, metadata !1079, metadata !DIExpression()) #25, !dbg !1087
  call void @llvm.dbg.value(metadata i64* %5, metadata !1085, metadata !DIExpression()) #25, !dbg !1087
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %132, metadata !1086, metadata !DIExpression()) #25, !dbg !1087
  %149 = call i64 @__getdelim(i8** nonnull %4, i64* nonnull %5, i32 10, %struct._IO_FILE* %132) #25, !dbg !1089
  call void @llvm.dbg.value(metadata i64 %149, metadata !171, metadata !DIExpression()) #25, !dbg !1090
  %150 = icmp slt i64 %149, 1, !dbg !1091
  br i1 %150, label %497, label %151, !dbg !1093

151:                                              ; preds = %148
  %152 = load i8*, i8** %4, align 8, !dbg !1094, !tbaa !792
  call void @llvm.dbg.value(metadata i8* %152, metadata !164, metadata !DIExpression()) #25, !dbg !1038
  %153 = load i8, i8* %152, align 1, !dbg !1094, !tbaa !1096
  %154 = icmp eq i8 %153, 35, !dbg !1097
  br i1 %154, label %487, label %155, !dbg !1098

155:                                              ; preds = %151
  %156 = add nsw i64 %149, -1, !dbg !1099
  %157 = getelementptr inbounds i8, i8* %152, i64 %156, !dbg !1101
  %158 = load i8, i8* %157, align 1, !dbg !1101, !tbaa !1096
  %159 = icmp eq i8 %158, 10, !dbg !1102
  br i1 %159, label %160, label %162, !dbg !1103

160:                                              ; preds = %155
  call void @llvm.dbg.value(metadata i64 %156, metadata !171, metadata !DIExpression()) #25, !dbg !1090
  store i8 0, i8* %157, align 1, !dbg !1104, !tbaa !1096
  %161 = load i8*, i8** %4, align 8, !dbg !1105, !tbaa !792
  br label %162, !dbg !1106

162:                                              ; preds = %160, %155
  %163 = phi i8* [ %161, %160 ], [ %152, %155 ], !dbg !1105
  %164 = phi i64 [ %156, %160 ], [ %149, %155 ], !dbg !1090
  call void @llvm.dbg.value(metadata i64 %164, metadata !171, metadata !DIExpression()) #25, !dbg !1090
  call void @llvm.dbg.value(metadata i8* %163, metadata !164, metadata !DIExpression()) #25, !dbg !1038
  call void @llvm.dbg.value(metadata i8* %163, metadata !1107, metadata !DIExpression()) #25, !dbg !1120
  call void @llvm.dbg.value(metadata i64 %164, metadata !1113, metadata !DIExpression()) #25, !dbg !1120
  call void @llvm.dbg.value(metadata i8** undef, metadata !1114, metadata !DIExpression()) #25, !dbg !1120
  call void @llvm.dbg.value(metadata i32* undef, metadata !1115, metadata !DIExpression()) #25, !dbg !1120
  call void @llvm.dbg.value(metadata i8** undef, metadata !1116, metadata !DIExpression()) #25, !dbg !1120
  call void @llvm.dbg.value(metadata i8 0, metadata !1117, metadata !DIExpression()) #25, !dbg !1120
  call void @llvm.dbg.value(metadata i64 0, metadata !1119, metadata !DIExpression()) #25, !dbg !1120
  br label %165, !dbg !1122

165:                                              ; preds = %169, %162
  %166 = phi i64 [ 0, %162 ], [ %170, %169 ], !dbg !1120
  call void @llvm.dbg.value(metadata i64 %166, metadata !1119, metadata !DIExpression()) #25, !dbg !1120
  %167 = getelementptr inbounds i8, i8* %163, i64 %166, !dbg !1123
  %168 = load i8, i8* %167, align 1, !dbg !1123, !tbaa !1096
  switch i8 %168, label %171 [
    i8 32, label %169
    i8 9, label %169
  ], !dbg !1123

169:                                              ; preds = %165, %165
  %170 = add i64 %166, 1, !dbg !1124
  call void @llvm.dbg.value(metadata i64 %170, metadata !1119, metadata !DIExpression()) #25, !dbg !1120
  br label %165, !dbg !1122, !llvm.loop !1125

171:                                              ; preds = %165
  %172 = icmp eq i8 %168, 92, !dbg !1127
  %173 = zext i1 %172 to i64, !dbg !1129
  %174 = add i64 %166, %173, !dbg !1129
  call void @llvm.dbg.value(metadata i64 %174, metadata !1119, metadata !DIExpression()) #25, !dbg !1120
  call void @llvm.dbg.value(metadata i8 undef, metadata !1117, metadata !DIExpression()) #25, !dbg !1120
  call void @llvm.dbg.value(metadata i64 4, metadata !1118, metadata !DIExpression()) #25, !dbg !1120
  %175 = getelementptr inbounds i8, i8* %163, i64 %174, !dbg !1130
  %176 = call i32 @strncmp(i8* nonnull dereferenceable(1) %175, i8* nonnull dereferenceable(5) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i64 4) #26, !dbg !1130
  %177 = icmp eq i32 %176, 0, !dbg !1130
  br i1 %177, label %178, label %271, !dbg !1132

178:                                              ; preds = %171
  %179 = add i64 %174, 4, !dbg !1133
  call void @llvm.dbg.value(metadata i64 %179, metadata !1119, metadata !DIExpression()) #25, !dbg !1120
  %180 = getelementptr inbounds i8, i8* %163, i64 %179, !dbg !1135
  %181 = load i8, i8* %180, align 1, !dbg !1135, !tbaa !1096
  %182 = icmp eq i8 %181, 32, !dbg !1137
  %183 = add i64 %174, 5
  %184 = select i1 %182, i64 %183, i64 %179, !dbg !1138
  call void @llvm.dbg.value(metadata i64 %184, metadata !1119, metadata !DIExpression()) #25, !dbg !1120
  %185 = getelementptr inbounds i8, i8* %163, i64 %184, !dbg !1139
  %186 = load i8, i8* %185, align 1, !dbg !1139, !tbaa !1096
  %187 = icmp eq i8 %186, 40, !dbg !1141
  br i1 %187, label %188, label %374, !dbg !1142

188:                                              ; preds = %178
  %189 = add i64 %184, 1, !dbg !1143
  call void @llvm.dbg.value(metadata i64 %189, metadata !1119, metadata !DIExpression()) #25, !dbg !1120
  %190 = getelementptr inbounds i8, i8* %163, i64 %189, !dbg !1145
  %191 = sub i64 %164, %189, !dbg !1146
  call void @llvm.dbg.value(metadata i8* %190, metadata !1147, metadata !DIExpression()) #25, !dbg !1157
  call void @llvm.dbg.value(metadata i64 %191, metadata !1152, metadata !DIExpression()) #25, !dbg !1157
  call void @llvm.dbg.value(metadata i8** undef, metadata !1153, metadata !DIExpression()) #25, !dbg !1157
  call void @llvm.dbg.value(metadata i8** undef, metadata !1154, metadata !DIExpression()) #25, !dbg !1157
  call void @llvm.dbg.value(metadata i1 %172, metadata !1155, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #25, !dbg !1157
  %192 = icmp eq i64 %191, 0, !dbg !1159
  br i1 %192, label %374, label %193, !dbg !1161

193:                                              ; preds = %188, %197
  %194 = phi i64 [ %195, %197 ], [ %191, %188 ]
  %195 = add i64 %194, -1, !dbg !1157
  call void @llvm.dbg.value(metadata i64 %195, metadata !1156, metadata !DIExpression()) #25, !dbg !1157
  %196 = icmp eq i64 %195, 0, !dbg !1162
  br i1 %196, label %201, label %197, !dbg !1163

197:                                              ; preds = %193
  %198 = getelementptr inbounds i8, i8* %190, i64 %195, !dbg !1164
  %199 = load i8, i8* %198, align 1, !dbg !1164, !tbaa !1096
  %200 = icmp eq i8 %199, 41, !dbg !1165
  br i1 %200, label %204, label %193, !dbg !1166, !llvm.loop !1167

201:                                              ; preds = %193
  %202 = load i8, i8* %190, align 1, !dbg !1169, !tbaa !1096
  %203 = icmp eq i8 %202, 41, !dbg !1163
  br i1 %203, label %231, label %374, !dbg !1171

204:                                              ; preds = %197
  %205 = getelementptr inbounds i8, i8* %190, i64 %195, !dbg !1164
  br i1 %172, label %206, label %231, !dbg !1172

206:                                              ; preds = %204
  call void @llvm.dbg.value(metadata i8* %190, metadata !1174, metadata !DIExpression()) #25, !dbg !1183
  call void @llvm.dbg.value(metadata i64 0, metadata !1179, metadata !DIExpression()) #25, !dbg !1183
  call void @llvm.dbg.value(metadata i8* %190, metadata !1180, metadata !DIExpression()) #25, !dbg !1183
  call void @llvm.dbg.value(metadata i64 0, metadata !1181, metadata !DIExpression()) #25, !dbg !1185
  %207 = add i64 %194, -2
  br label %208, !dbg !1186

208:                                              ; preds = %222, %206
  %209 = phi i64 [ 0, %206 ], [ %226, %222 ]
  %210 = phi i8* [ %190, %206 ], [ %225, %222 ]
  call void @llvm.dbg.value(metadata i64 %209, metadata !1181, metadata !DIExpression()) #25, !dbg !1185
  call void @llvm.dbg.value(metadata i8* %210, metadata !1180, metadata !DIExpression()) #25, !dbg !1183
  %211 = getelementptr inbounds i8, i8* %190, i64 %209, !dbg !1187
  %212 = load i8, i8* %211, align 1, !dbg !1187, !tbaa !1096
  %213 = sext i8 %212 to i32, !dbg !1187
  switch i32 %213, label %222 [
    i32 92, label %214
    i32 0, label %374
  ], !dbg !1190

214:                                              ; preds = %208
  %215 = icmp eq i64 %209, %207, !dbg !1191
  br i1 %215, label %374, label %216, !dbg !1194

216:                                              ; preds = %214
  %217 = add nuw i64 %209, 1, !dbg !1195
  call void @llvm.dbg.value(metadata i64 %217, metadata !1181, metadata !DIExpression()) #25, !dbg !1185
  %218 = getelementptr inbounds i8, i8* %190, i64 %217, !dbg !1196
  %219 = load i8, i8* %218, align 1, !dbg !1196, !tbaa !1096
  %220 = sext i8 %219 to i32, !dbg !1196
  switch i32 %220, label %374 [
    i32 110, label %222
    i32 92, label %221
  ], !dbg !1197

221:                                              ; preds = %216
  call void @llvm.dbg.value(metadata i8* %210, metadata !1180, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)) #25, !dbg !1183
  br label %222, !dbg !1198

222:                                              ; preds = %208, %216, %221
  %223 = phi i8 [ 92, %221 ], [ 10, %216 ], [ %212, %208 ]
  %224 = phi i64 [ %217, %221 ], [ %217, %216 ], [ %209, %208 ], !dbg !1185
  store i8 %223, i8* %210, align 1, !dbg !1200, !tbaa !1096
  %225 = getelementptr inbounds i8, i8* %210, i64 1, !dbg !1200
  call void @llvm.dbg.value(metadata i64 %224, metadata !1181, metadata !DIExpression()) #25, !dbg !1185
  call void @llvm.dbg.value(metadata i8* %225, metadata !1180, metadata !DIExpression()) #25, !dbg !1183
  %226 = add i64 %224, 1, !dbg !1201
  call void @llvm.dbg.value(metadata i64 %226, metadata !1181, metadata !DIExpression()) #25, !dbg !1185
  %227 = icmp ult i64 %226, %195, !dbg !1202
  br i1 %227, label %208, label %228, !dbg !1186, !llvm.loop !1203

228:                                              ; preds = %222
  %229 = icmp ult i8* %225, %205, !dbg !1205
  br i1 %229, label %230, label %231, !dbg !1207

230:                                              ; preds = %228
  store i8 0, i8* %225, align 1, !dbg !1208, !tbaa !1096
  br label %231, !dbg !1209

231:                                              ; preds = %230, %228, %204, %201
  %232 = phi i8* [ %205, %230 ], [ %205, %228 ], [ %205, %204 ], [ %190, %201 ]
  call void @llvm.dbg.value(metadata i64 1, metadata !1156, metadata !DIExpression()) #25, !dbg !1157
  store i8 0, i8* %232, align 1, !dbg !1210, !tbaa !1096
  br label %233, !dbg !1211

233:                                              ; preds = %237, %231
  %234 = phi i64 [ %194, %231 ], [ %238, %237 ], !dbg !1157
  call void @llvm.dbg.value(metadata i64 %234, metadata !1156, metadata !DIExpression()) #25, !dbg !1157
  %235 = getelementptr inbounds i8, i8* %190, i64 %234, !dbg !1212
  %236 = load i8, i8* %235, align 1, !dbg !1212, !tbaa !1096
  switch i8 %236, label %374 [
    i8 32, label %237
    i8 9, label %237
    i8 61, label %239
  ], !dbg !1212

237:                                              ; preds = %233, %233
  %238 = add i64 %234, 1, !dbg !1213
  call void @llvm.dbg.value(metadata i64 %238, metadata !1156, metadata !DIExpression()) #25, !dbg !1157
  br label %233, !dbg !1211, !llvm.loop !1214

239:                                              ; preds = %233, %244
  %240 = phi i64 [ %241, %244 ], [ %234, %233 ]
  %241 = add i64 %240, 1, !dbg !1157
  call void @llvm.dbg.value(metadata i64 %241, metadata !1156, metadata !DIExpression()) #25, !dbg !1157
  %242 = getelementptr inbounds i8, i8* %190, i64 %241, !dbg !1215
  %243 = load i8, i8* %242, align 1, !dbg !1215, !tbaa !1096
  switch i8 %243, label %245 [
    i8 32, label %244
    i8 9, label %244
  ], !dbg !1215

244:                                              ; preds = %239, %239
  br label %239, !dbg !1157, !llvm.loop !1216

245:                                              ; preds = %239
  %246 = getelementptr inbounds i8, i8* %190, i64 %241, !dbg !1215
  call void @llvm.dbg.value(metadata i8* %246, metadata !1219, metadata !DIExpression()) #25, !dbg !1227
  call void @llvm.dbg.value(metadata i32 0, metadata !1225, metadata !DIExpression()) #25, !dbg !1229
  %247 = load i1, i1* @digest_hex_bytes, align 8, !dbg !1230
  br i1 %247, label %248, label %365, !dbg !1232

248:                                              ; preds = %245
  %249 = tail call i16** @__ctype_b_loc() #29, !dbg !1227
  %250 = load i16*, i16** %249, align 8, !tbaa !792
  %251 = add i64 %240, 41, !dbg !1232
  %252 = getelementptr i8, i8* %190, i64 %251, !dbg !1232
  call void @llvm.dbg.value(metadata i32 0, metadata !1225, metadata !DIExpression()) #25, !dbg !1229
  call void @llvm.dbg.value(metadata i8* %246, metadata !1219, metadata !DIExpression()) #25, !dbg !1227
  %253 = zext i8 %243 to i64, !dbg !1233
  %254 = getelementptr inbounds i16, i16* %250, i64 %253, !dbg !1233
  %255 = load i16, i16* %254, align 2, !dbg !1233, !tbaa !1236
  %256 = and i16 %255, 4096, !dbg !1233
  %257 = icmp eq i16 %256, 0, !dbg !1233
  br i1 %257, label %374, label %258, !dbg !1238

258:                                              ; preds = %248, %264
  %259 = phi i8* [ %261, %264 ], [ %246, %248 ]
  %260 = phi i32 [ %262, %264 ], [ 0, %248 ]
  call void @llvm.dbg.value(metadata i8* %259, metadata !1219, metadata !DIExpression()) #25, !dbg !1227
  call void @llvm.dbg.value(metadata i32 %260, metadata !1225, metadata !DIExpression()) #25, !dbg !1229
  %261 = getelementptr inbounds i8, i8* %259, i64 1, !dbg !1239
  call void @llvm.dbg.value(metadata i8* %261, metadata !1219, metadata !DIExpression()) #25, !dbg !1227
  %262 = add nuw nsw i32 %260, 1, !dbg !1240
  call void @llvm.dbg.value(metadata i32 %262, metadata !1225, metadata !DIExpression()) #25, !dbg !1229
  %263 = icmp eq i32 %262, 40, !dbg !1241
  br i1 %263, label %363, label %264, !dbg !1232, !llvm.loop !1242

264:                                              ; preds = %258
  %265 = load i8, i8* %261, align 1, !dbg !1233, !tbaa !1096
  call void @llvm.dbg.value(metadata i32 %262, metadata !1225, metadata !DIExpression()) #25, !dbg !1229
  call void @llvm.dbg.value(metadata i8* %261, metadata !1219, metadata !DIExpression()) #25, !dbg !1227
  %266 = zext i8 %265 to i64, !dbg !1233
  %267 = getelementptr inbounds i16, i16* %250, i64 %266, !dbg !1233
  %268 = load i16, i16* %267, align 2, !dbg !1233, !tbaa !1236
  %269 = and i16 %268, 4096, !dbg !1233
  %270 = icmp eq i16 %269, 0, !dbg !1233
  br i1 %270, label %374, label %258, !dbg !1238

271:                                              ; preds = %171
  %272 = sub i64 %164, %174, !dbg !1244
  %273 = load i1, i1* @min_digest_line_length, align 8, !dbg !1246
  %274 = select i1 %273, i64 42, i64 0, !dbg !1246
  %275 = load i8, i8* %175, align 1, !dbg !1247, !tbaa !1096
  %276 = icmp eq i8 %275, 92, !dbg !1248
  %277 = zext i1 %276 to i64, !dbg !1249
  %278 = or i64 %274, %277, !dbg !1250
  %279 = icmp ult i64 %272, %278, !dbg !1251
  br i1 %279, label %374, label %280, !dbg !1252

280:                                              ; preds = %271
  %281 = load i1, i1* @digest_hex_bytes, align 8, !dbg !1253
  %282 = select i1 %281, i64 40, i64 0, !dbg !1253
  %283 = add i64 %282, %174, !dbg !1254
  call void @llvm.dbg.value(metadata i64 %283, metadata !1119, metadata !DIExpression()) #25, !dbg !1120
  %284 = getelementptr inbounds i8, i8* %163, i64 %283, !dbg !1255
  %285 = load i8, i8* %284, align 1, !dbg !1255, !tbaa !1096
  switch i8 %285, label %374 [
    i8 32, label %286
    i8 9, label %286
  ], !dbg !1255

286:                                              ; preds = %280, %280
  %287 = add i64 %283, 1, !dbg !1257
  call void @llvm.dbg.value(metadata i64 %287, metadata !1119, metadata !DIExpression()) #25, !dbg !1120
  store i8 0, i8* %284, align 1, !dbg !1258, !tbaa !1096
  call void @llvm.dbg.value(metadata i8* %175, metadata !1219, metadata !DIExpression()) #25, !dbg !1259
  call void @llvm.dbg.value(metadata i32 0, metadata !1225, metadata !DIExpression()) #25, !dbg !1262
  br i1 %281, label %288, label %309, !dbg !1263

288:                                              ; preds = %286
  %289 = tail call i16** @__ctype_b_loc() #29, !dbg !1259
  %290 = load i16*, i16** %289, align 8, !tbaa !792
  %291 = getelementptr i8, i8* %175, i64 40, !dbg !1263
  br label %292, !dbg !1263

292:                                              ; preds = %692, %288
  %293 = phi i32 [ 0, %288 ], [ %694, %692 ]
  %294 = phi i8* [ %175, %288 ], [ %693, %692 ]
  call void @llvm.dbg.value(metadata i32 %293, metadata !1225, metadata !DIExpression()) #25, !dbg !1262
  call void @llvm.dbg.value(metadata i8* %294, metadata !1219, metadata !DIExpression()) #25, !dbg !1259
  %295 = load i8, i8* %294, align 1, !dbg !1264, !tbaa !1096
  %296 = zext i8 %295 to i64, !dbg !1264
  %297 = getelementptr inbounds i16, i16* %290, i64 %296, !dbg !1264
  %298 = load i16, i16* %297, align 2, !dbg !1264, !tbaa !1236
  %299 = and i16 %298, 4096, !dbg !1264
  %300 = icmp eq i16 %299, 0, !dbg !1264
  br i1 %300, label %374, label %301, !dbg !1265

301:                                              ; preds = %292
  %302 = getelementptr inbounds i8, i8* %294, i64 1, !dbg !1266
  call void @llvm.dbg.value(metadata i8* %302, metadata !1219, metadata !DIExpression()) #25, !dbg !1259
  call void @llvm.dbg.value(metadata i32 %293, metadata !1225, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)) #25, !dbg !1262
  call void @llvm.dbg.value(metadata i32 %293, metadata !1225, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)) #25, !dbg !1262
  call void @llvm.dbg.value(metadata i8* %302, metadata !1219, metadata !DIExpression()) #25, !dbg !1259
  %303 = load i8, i8* %302, align 1, !dbg !1264, !tbaa !1096
  %304 = zext i8 %303 to i64, !dbg !1264
  %305 = getelementptr inbounds i16, i16* %290, i64 %304, !dbg !1264
  %306 = load i16, i16* %305, align 2, !dbg !1264, !tbaa !1236
  %307 = and i16 %306, 4096, !dbg !1264
  %308 = icmp eq i16 %307, 0, !dbg !1264
  br i1 %308, label %374, label %676, !dbg !1265

309:                                              ; preds = %692, %286
  %310 = phi i8* [ %175, %286 ], [ %291, %692 ]
  %311 = load i8, i8* %310, align 1, !dbg !1267, !tbaa !1096
  %312 = icmp eq i8 %311, 0, !dbg !1268
  br i1 %312, label %313, label %374, !dbg !1269

313:                                              ; preds = %309
  %314 = sub i64 %164, %287, !dbg !1270
  %315 = icmp eq i64 %314, 1, !dbg !1272
  br i1 %315, label %319, label %316, !dbg !1273

316:                                              ; preds = %313
  %317 = getelementptr inbounds i8, i8* %163, i64 %287, !dbg !1274
  %318 = load i8, i8* %317, align 1, !dbg !1274, !tbaa !1096
  switch i8 %318, label %319 [
    i8 32, label %323
    i8 42, label %323
  ], !dbg !1275

319:                                              ; preds = %316, %313
  %320 = load i32, i32* @bsd_reversed, align 4, !dbg !1276, !tbaa !1021
  %321 = icmp eq i32 %320, 0, !dbg !1279
  br i1 %321, label %374, label %322, !dbg !1280

322:                                              ; preds = %319
  store i32 1, i32* @bsd_reversed, align 4, !dbg !1281, !tbaa !1021
  br label %328, !dbg !1282

323:                                              ; preds = %316, %316
  %324 = load i32, i32* @bsd_reversed, align 4, !dbg !1283, !tbaa !1021
  %325 = icmp eq i32 %324, 1, !dbg !1285
  br i1 %325, label %328, label %326, !dbg !1286

326:                                              ; preds = %323
  store i32 0, i32* @bsd_reversed, align 4, !dbg !1287, !tbaa !1021
  %327 = add i64 %283, 2, !dbg !1289
  call void @llvm.dbg.value(metadata i64 %327, metadata !1119, metadata !DIExpression()) #25, !dbg !1120
  br label %328, !dbg !1290

328:                                              ; preds = %326, %323, %322
  %329 = phi i64 [ %287, %322 ], [ %327, %326 ], [ %287, %323 ], !dbg !1120
  call void @llvm.dbg.value(metadata i64 %329, metadata !1119, metadata !DIExpression()) #25, !dbg !1120
  %330 = getelementptr inbounds i8, i8* %163, i64 %329, !dbg !1291
  br i1 %172, label %331, label %368, !dbg !1292

331:                                              ; preds = %328
  %332 = sub i64 %164, %329, !dbg !1293
  call void @llvm.dbg.value(metadata i8* %330, metadata !1174, metadata !DIExpression()) #25, !dbg !1295
  call void @llvm.dbg.value(metadata i64 %332, metadata !1179, metadata !DIExpression()) #25, !dbg !1295
  call void @llvm.dbg.value(metadata i8* %330, metadata !1180, metadata !DIExpression()) #25, !dbg !1295
  call void @llvm.dbg.value(metadata i64 0, metadata !1181, metadata !DIExpression()) #25, !dbg !1297
  %333 = icmp eq i64 %332, 0, !dbg !1298
  br i1 %333, label %356, label %334, !dbg !1299

334:                                              ; preds = %331
  %335 = add i64 %332, -1
  br label %336, !dbg !1299

336:                                              ; preds = %350, %334
  %337 = phi i64 [ 0, %334 ], [ %354, %350 ]
  %338 = phi i8* [ %330, %334 ], [ %353, %350 ]
  call void @llvm.dbg.value(metadata i64 %337, metadata !1181, metadata !DIExpression()) #25, !dbg !1297
  call void @llvm.dbg.value(metadata i8* %338, metadata !1180, metadata !DIExpression()) #25, !dbg !1295
  %339 = getelementptr inbounds i8, i8* %330, i64 %337, !dbg !1300
  %340 = load i8, i8* %339, align 1, !dbg !1300, !tbaa !1096
  %341 = sext i8 %340 to i32, !dbg !1300
  switch i32 %341, label %350 [
    i32 92, label %342
    i32 0, label %374
  ], !dbg !1301

342:                                              ; preds = %336
  %343 = icmp eq i64 %337, %335, !dbg !1302
  br i1 %343, label %374, label %344, !dbg !1303

344:                                              ; preds = %342
  %345 = add nuw i64 %337, 1, !dbg !1304
  call void @llvm.dbg.value(metadata i64 %345, metadata !1181, metadata !DIExpression()) #25, !dbg !1297
  %346 = getelementptr inbounds i8, i8* %330, i64 %345, !dbg !1305
  %347 = load i8, i8* %346, align 1, !dbg !1305, !tbaa !1096
  %348 = sext i8 %347 to i32, !dbg !1305
  switch i32 %348, label %374 [
    i32 110, label %350
    i32 92, label %349
  ], !dbg !1306

349:                                              ; preds = %344
  call void @llvm.dbg.value(metadata i8* %338, metadata !1180, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)) #25, !dbg !1295
  br label %350, !dbg !1307

350:                                              ; preds = %336, %344, %349
  %351 = phi i8 [ 92, %349 ], [ 10, %344 ], [ %340, %336 ]
  %352 = phi i64 [ %345, %349 ], [ %345, %344 ], [ %337, %336 ], !dbg !1297
  store i8 %351, i8* %338, align 1, !dbg !1308, !tbaa !1096
  %353 = getelementptr inbounds i8, i8* %338, i64 1, !dbg !1308
  call void @llvm.dbg.value(metadata i64 %352, metadata !1181, metadata !DIExpression()) #25, !dbg !1297
  call void @llvm.dbg.value(metadata i8* %353, metadata !1180, metadata !DIExpression()) #25, !dbg !1295
  %354 = add i64 %352, 1, !dbg !1309
  call void @llvm.dbg.value(metadata i64 %354, metadata !1181, metadata !DIExpression()) #25, !dbg !1297
  %355 = icmp ult i64 %354, %332, !dbg !1298
  br i1 %355, label %336, label %356, !dbg !1299, !llvm.loop !1310

356:                                              ; preds = %350, %331
  %357 = phi i8* [ %330, %331 ], [ %353, %350 ], !dbg !1295
  %358 = getelementptr inbounds i8, i8* %163, i64 %164, !dbg !1312
  %359 = icmp ult i8* %357, %358, !dbg !1313
  br i1 %359, label %360, label %361, !dbg !1314

360:                                              ; preds = %356
  store i8 0, i8* %357, align 1, !dbg !1315, !tbaa !1096
  br label %361, !dbg !1316

361:                                              ; preds = %360, %356
  %362 = icmp eq i8* %163, null, !dbg !1317
  br i1 %362, label %374, label %368, !dbg !1318

363:                                              ; preds = %258
  %364 = load i8, i8* %252, align 1, !dbg !1319, !tbaa !1096
  br label %365, !dbg !1319

365:                                              ; preds = %363, %245
  %366 = phi i8 [ %364, %363 ], [ %243, %245 ], !dbg !1319
  %367 = icmp eq i8 %366, 0, !dbg !1320
  br i1 %367, label %368, label %374, !dbg !1318

368:                                              ; preds = %365, %361, %328
  %369 = phi i8* [ %246, %365 ], [ %175, %361 ], [ %175, %328 ]
  %370 = phi i8* [ %190, %365 ], [ %330, %361 ], [ %330, %328 ]
  br i1 %120, label %371, label %382, !dbg !1321

371:                                              ; preds = %368
  %372 = call i32 @strcmp(i8* nonnull dereferenceable(1) %370, i8* nonnull dereferenceable(2) getelementptr inbounds ([2 x i8], [2 x i8]* @.str.31, i64 0, i64 0)) #26, !dbg !1322
  %373 = icmp eq i32 %372, 0, !dbg !1322
  br i1 %373, label %374, label %382, !dbg !1323

374:                                              ; preds = %292, %301, %676, %684, %344, %342, %336, %216, %214, %208, %233, %264, %248, %371, %365, %361, %319, %309, %280, %271, %201, %188, %178
  %375 = add i64 %142, 1, !dbg !1324
  call void @llvm.dbg.value(metadata i64 %375, metadata !152, metadata !DIExpression()) #25, !dbg !1038
  %376 = load i1, i1* @warn, align 1, !dbg !1326
  br i1 %376, label %377, label %380, !dbg !1328

377:                                              ; preds = %374
  %378 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.67, i64 0, i64 0), i32 5) #25, !dbg !1329
  %379 = call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %133) #25, !dbg !1331
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %378, i8* %379, i64 %143, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #25, !dbg !1332
  br label %380, !dbg !1333

380:                                              ; preds = %377, %374
  %381 = add i64 %141, 1, !dbg !1334
  call void @llvm.dbg.value(metadata i64 %381, metadata !153, metadata !DIExpression()) #25, !dbg !1038
  br label %487, !dbg !1335

382:                                              ; preds = %371, %368
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %6) #25, !dbg !1336
  %383 = load i1, i1* @status_only, align 1, !dbg !1337
  br i1 %383, label %387, label %384, !dbg !1338

384:                                              ; preds = %382
  %385 = call i8* @strchr(i8* nonnull dereferenceable(1) %370, i32 10) #26, !dbg !1339
  %386 = icmp ne i8* %385, null, !dbg !1338
  br label %387

387:                                              ; preds = %384, %382
  %388 = phi i1 [ false, %382 ], [ %386, %384 ], !dbg !1340
  call void @llvm.dbg.value(metadata i1 %388, metadata !179, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #25, !dbg !1340
  call void @llvm.dbg.value(metadata i8 1, metadata !156, metadata !DIExpression()) #25, !dbg !1038
  call void @llvm.dbg.value(metadata i8* %6, metadata !178, metadata !DIExpression(DW_OP_deref)) #25, !dbg !1340
  %389 = call fastcc zeroext i1 @digest_file(i8* %370, i8* nonnull %106, i8* nonnull %6) #25, !dbg !1341
  call void @llvm.dbg.value(metadata i1 %389, metadata !175, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #25, !dbg !1340
  br i1 %389, label %408, label %390, !dbg !1342

390:                                              ; preds = %387
  %391 = add i64 %139, 1, !dbg !1343
  call void @llvm.dbg.value(metadata i64 %391, metadata !155, metadata !DIExpression()) #25, !dbg !1038
  %392 = load i1, i1* @status_only, align 1, !dbg !1345
  br i1 %392, label %483, label %393, !dbg !1347

393:                                              ; preds = %390
  br i1 %388, label %394, label %405, !dbg !1348

394:                                              ; preds = %393
  call void @llvm.dbg.value(metadata i32 92, metadata !1350, metadata !DIExpression()) #25, !dbg !1355
  %395 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1358, !tbaa !792
  %396 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %395, i64 0, i32 5, !dbg !1358
  %397 = load i8*, i8** %396, align 8, !dbg !1358, !tbaa !1359
  %398 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %395, i64 0, i32 6, !dbg !1358
  %399 = load i8*, i8** %398, align 8, !dbg !1358, !tbaa !1361
  %400 = icmp ult i8* %397, %399, !dbg !1358
  br i1 %400, label %403, label %401, !dbg !1358, !prof !1362

401:                                              ; preds = %394
  %402 = call i32 @__overflow(%struct._IO_FILE* nonnull %395, i32 92) #25, !dbg !1358
  br label %405, !dbg !1358

403:                                              ; preds = %394
  %404 = getelementptr inbounds i8, i8* %397, i64 1, !dbg !1358
  store i8* %404, i8** %396, align 8, !dbg !1358, !tbaa !1359
  store i8 92, i8* %397, align 1, !dbg !1358, !tbaa !1096
  br label %405, !dbg !1358

405:                                              ; preds = %403, %401, %393
  call fastcc void @print_filename(i8* %370, i1 zeroext %388) #25, !dbg !1363
  %406 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.69, i64 0, i64 0), i32 5) #25, !dbg !1364
  %407 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.68, i64 0, i64 0), i8* %406) #25, !dbg !1364
  br label %483, !dbg !1365

408:                                              ; preds = %387
  %409 = load i1, i1* @ignore_missing, align 1, !dbg !1366
  %410 = load i8, i8* %6, align 1
  %411 = icmp ne i8 %410, 0
  %412 = and i1 %409, %411, !dbg !1367
  call void @llvm.dbg.value(metadata i8 %410, metadata !178, metadata !DIExpression()) #25, !dbg !1340
  br i1 %412, label %483, label %413, !dbg !1367

413:                                              ; preds = %408
  %414 = load i1, i1* @digest_hex_bytes, align 8, !dbg !1368
  %415 = select i1 %414, i64 20, i64 0, !dbg !1369
  call void @llvm.dbg.value(metadata i64 %415, metadata !180, metadata !DIExpression()) #25, !dbg !1370
  call void @llvm.dbg.value(metadata i64 0, metadata !184, metadata !DIExpression()) #25, !dbg !1370
  br i1 %414, label %416, label %452, !dbg !1371

416:                                              ; preds = %413
  %417 = tail call i32** @__ctype_tolower_loc() #29, !dbg !1038
  %418 = load i32*, i32** %417, align 8, !tbaa !792
  br label %419, !dbg !1371

419:                                              ; preds = %449, %416
  %420 = phi i64 [ 0, %416 ], [ %450, %449 ]
  call void @llvm.dbg.value(metadata i64 %420, metadata !184, metadata !DIExpression()) #25, !dbg !1370
  %421 = shl nuw i64 %420, 1, !dbg !1372
  %422 = getelementptr inbounds i8, i8* %369, i64 %421, !dbg !1372
  %423 = load i8, i8* %422, align 1, !dbg !1372, !tbaa !1096
  %424 = zext i8 %423 to i64, !dbg !1372
  %425 = getelementptr inbounds i32, i32* %418, i64 %424, !dbg !1372
  %426 = load i32, i32* %425, align 4, !dbg !1372, !tbaa !1021
  call void @llvm.dbg.value(metadata i32 %426, metadata !185, metadata !DIExpression()) #25, !dbg !1374
  %427 = getelementptr inbounds [24 x i8], [24 x i8]* %3, i64 0, i64 %420, !dbg !1375
  %428 = load i8, i8* %427, align 1, !dbg !1375, !tbaa !1096
  %429 = zext i8 %428 to i32, !dbg !1375
  %430 = lshr i32 %429, 4, !dbg !1376
  %431 = zext i32 %430 to i64, !dbg !1377
  %432 = getelementptr inbounds [16 x i8], [16 x i8]* @digest_check.bin2hex, i64 0, i64 %431, !dbg !1377
  %433 = load i8, i8* %432, align 1, !dbg !1377, !tbaa !1096
  %434 = sext i8 %433 to i32, !dbg !1377
  %435 = icmp eq i32 %426, %434, !dbg !1378
  br i1 %435, label %436, label %452, !dbg !1379

436:                                              ; preds = %419
  %437 = or i64 %421, 1, !dbg !1380
  %438 = getelementptr inbounds i8, i8* %369, i64 %437, !dbg !1380
  %439 = load i8, i8* %438, align 1, !dbg !1380, !tbaa !1096
  %440 = zext i8 %439 to i64, !dbg !1380
  %441 = getelementptr inbounds i32, i32* %418, i64 %440, !dbg !1380
  %442 = load i32, i32* %441, align 4, !dbg !1380, !tbaa !1021
  call void @llvm.dbg.value(metadata i32 %442, metadata !191, metadata !DIExpression()) #25, !dbg !1382
  %443 = and i32 %429, 15, !dbg !1383
  %444 = zext i32 %443 to i64
  %445 = getelementptr inbounds [16 x i8], [16 x i8]* @digest_check.bin2hex, i64 0, i64 %444, !dbg !1384
  %446 = load i8, i8* %445, align 1, !dbg !1384, !tbaa !1096
  %447 = sext i8 %446 to i32, !dbg !1385
  %448 = icmp eq i32 %442, %447, !dbg !1386
  br i1 %448, label %449, label %452, !dbg !1387

449:                                              ; preds = %436
  %450 = add nuw nsw i64 %420, 1, !dbg !1388
  call void @llvm.dbg.value(metadata i64 %450, metadata !184, metadata !DIExpression()) #25, !dbg !1370
  %451 = icmp eq i64 %450, %415, !dbg !1389
  br i1 %451, label %452, label %419, !dbg !1371, !llvm.loop !1390

452:                                              ; preds = %449, %436, %419, %413
  %453 = phi i64 [ 0, %413 ], [ %415, %449 ], [ %420, %436 ], [ %420, %419 ], !dbg !1392
  %454 = icmp eq i64 %453, %415, !dbg !1393
  %455 = add i64 %140, 1, !dbg !1395
  %456 = select i1 %454, i8 1, i8 %136, !dbg !1395
  %457 = select i1 %454, i64 %140, i64 %455, !dbg !1395
  call void @llvm.dbg.value(metadata i64 %457, metadata !154, metadata !DIExpression()) #25, !dbg !1038
  call void @llvm.dbg.value(metadata i8 %456, metadata !157, metadata !DIExpression()) #25, !dbg !1038
  %458 = load i1, i1* @status_only, align 1, !dbg !1396
  br i1 %458, label %483, label %459, !dbg !1398

459:                                              ; preds = %452
  br i1 %454, label %460, label %462, !dbg !1399

460:                                              ; preds = %459
  %461 = load i1, i1* @quiet, align 1, !dbg !1402
  br i1 %461, label %483, label %462, !dbg !1403

462:                                              ; preds = %460, %459
  br i1 %388, label %463, label %474, !dbg !1404

463:                                              ; preds = %462
  call void @llvm.dbg.value(metadata i32 92, metadata !1350, metadata !DIExpression()) #25, !dbg !1406
  %464 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1409, !tbaa !792
  %465 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %464, i64 0, i32 5, !dbg !1409
  %466 = load i8*, i8** %465, align 8, !dbg !1409, !tbaa !1359
  %467 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %464, i64 0, i32 6, !dbg !1409
  %468 = load i8*, i8** %467, align 8, !dbg !1409, !tbaa !1361
  %469 = icmp ult i8* %466, %468, !dbg !1409
  br i1 %469, label %472, label %470, !dbg !1409, !prof !1362

470:                                              ; preds = %463
  %471 = call i32 @__overflow(%struct._IO_FILE* nonnull %464, i32 92) #25, !dbg !1409
  br label %474, !dbg !1409

472:                                              ; preds = %463
  %473 = getelementptr inbounds i8, i8* %466, i64 1, !dbg !1409
  store i8* %473, i8** %465, align 8, !dbg !1409, !tbaa !1359
  store i8 92, i8* %466, align 1, !dbg !1409, !tbaa !1096
  br label %474, !dbg !1409

474:                                              ; preds = %472, %470, %462
  call fastcc void @print_filename(i8* %370, i1 zeroext %388) #25, !dbg !1410
  br i1 %454, label %478, label %475, !dbg !1411

475:                                              ; preds = %474
  %476 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.70, i64 0, i64 0), i32 5) #25, !dbg !1412
  %477 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.68, i64 0, i64 0), i8* %476) #25, !dbg !1412
  br label %483, !dbg !1412

478:                                              ; preds = %474
  %479 = load i1, i1* @quiet, align 1, !dbg !1414
  br i1 %479, label %483, label %480, !dbg !1416

480:                                              ; preds = %478
  %481 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.71, i64 0, i64 0), i32 5) #25, !dbg !1417
  %482 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.68, i64 0, i64 0), i8* %481) #25, !dbg !1417
  br label %483, !dbg !1417

483:                                              ; preds = %480, %478, %475, %460, %452, %408, %405, %390
  %484 = phi i8 [ %136, %390 ], [ %136, %405 ], [ %136, %408 ], [ %136, %475 ], [ 1, %480 ], [ 1, %478 ], [ %456, %452 ], [ 1, %460 ], !dbg !1068
  %485 = phi i64 [ %391, %390 ], [ %391, %405 ], [ %139, %408 ], [ %139, %475 ], [ %139, %480 ], [ %139, %478 ], [ %139, %452 ], [ %139, %460 ], !dbg !1038
  %486 = phi i64 [ %140, %390 ], [ %140, %405 ], [ %140, %408 ], [ %455, %475 ], [ %140, %480 ], [ %140, %478 ], [ %457, %452 ], [ %140, %460 ], !dbg !1038
  call void @llvm.dbg.value(metadata i64 %486, metadata !154, metadata !DIExpression()) #25, !dbg !1038
  call void @llvm.dbg.value(metadata i64 %485, metadata !155, metadata !DIExpression()) #25, !dbg !1038
  call void @llvm.dbg.value(metadata i8 %484, metadata !157, metadata !DIExpression()) #25, !dbg !1038
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %6) #25, !dbg !1418
  br label %487

487:                                              ; preds = %483, %380, %151
  %488 = phi i8 [ %484, %483 ], [ %136, %380 ], [ %136, %151 ]
  %489 = phi i8 [ 1, %483 ], [ %138, %380 ], [ %138, %151 ]
  %490 = phi i64 [ %485, %483 ], [ %139, %380 ], [ %139, %151 ]
  %491 = phi i64 [ %486, %483 ], [ %140, %380 ], [ %140, %151 ]
  %492 = phi i64 [ %141, %483 ], [ %381, %380 ], [ %141, %151 ]
  %493 = phi i64 [ %142, %483 ], [ %375, %380 ], [ %142, %151 ]
  call void @llvm.dbg.value(metadata i64 undef, metadata !152, metadata !DIExpression()) #25, !dbg !1038
  call void @llvm.dbg.value(metadata i64 undef, metadata !153, metadata !DIExpression()) #25, !dbg !1038
  call void @llvm.dbg.value(metadata i64 undef, metadata !154, metadata !DIExpression()) #25, !dbg !1038
  call void @llvm.dbg.value(metadata i64 undef, metadata !155, metadata !DIExpression()) #25, !dbg !1038
  call void @llvm.dbg.value(metadata i8 undef, metadata !156, metadata !DIExpression()) #25, !dbg !1038
  call void @llvm.dbg.value(metadata i8 undef, metadata !157, metadata !DIExpression()) #25, !dbg !1038
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %132, metadata !1419, metadata !DIExpression()) #25, !dbg !1424
  %494 = load i32, i32* %134, align 8, !dbg !1426, !tbaa !1427
  %495 = and i32 %494, 48, !dbg !1428
  %496 = icmp eq i32 %495, 0, !dbg !1428
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %132, metadata !1429, metadata !DIExpression()) #25, !dbg !1432
  br i1 %496, label %135, label %497, !dbg !1428, !llvm.loop !1434

497:                                              ; preds = %487, %148
  %498 = phi i64 [ %493, %487 ], [ %142, %148 ]
  %499 = phi i64 [ %492, %487 ], [ %141, %148 ]
  %500 = phi i64 [ %491, %487 ], [ %140, %148 ]
  %501 = phi i64 [ %490, %487 ], [ %139, %148 ]
  %502 = phi i8 [ %489, %487 ], [ %138, %148 ]
  %503 = phi i8 [ %488, %487 ], [ %136, %148 ]
  %504 = load i8*, i8** %4, align 8, !dbg !1436, !tbaa !792
  call void @llvm.dbg.value(metadata i8* %504, metadata !164, metadata !DIExpression()) #25, !dbg !1038
  call void @free(i8* %504) #25, !dbg !1437
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %132, metadata !1429, metadata !DIExpression()) #25, !dbg !1438
  %505 = load i32, i32* %134, align 8, !dbg !1441, !tbaa !1427
  %506 = and i32 %505, 32, !dbg !1442
  %507 = icmp eq i32 %506, 0, !dbg !1442
  br i1 %507, label %511, label %508, !dbg !1443

508:                                              ; preds = %497
  %509 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.72, i64 0, i64 0), i32 5) #25, !dbg !1444
  %510 = call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %133) #25, !dbg !1446
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %509, i8* %510) #25, !dbg !1447
  br label %560, !dbg !1448

511:                                              ; preds = %497
  br i1 %120, label %519, label %512, !dbg !1449

512:                                              ; preds = %511
  %513 = call i32 @rpl_fclose(%struct._IO_FILE* nonnull %132) #25, !dbg !1451
  %514 = icmp eq i32 %513, 0, !dbg !1452
  br i1 %514, label %519, label %515, !dbg !1453

515:                                              ; preds = %512
  %516 = tail call i32* @__errno_location() #29, !dbg !1454
  %517 = load i32, i32* %516, align 4, !dbg !1454, !tbaa !1021
  %518 = call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %133) #25, !dbg !1456
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %517, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.65, i64 0, i64 0), i8* %518) #25, !dbg !1457
  br label %560, !dbg !1458

519:                                              ; preds = %512, %511
  %520 = and i8 %502, 1, !dbg !1459
  %521 = icmp eq i8 %520, 0, !dbg !1459
  br i1 %521, label %546, label %522, !dbg !1461

522:                                              ; preds = %519
  %523 = load i1, i1* @status_only, align 1, !dbg !1462
  br i1 %523, label %524, label %526, !dbg !1465

524:                                              ; preds = %522
  %525 = and i8 %503, 1, !dbg !1466
  br label %549, !dbg !1465

526:                                              ; preds = %522
  %527 = icmp eq i64 %498, 0, !dbg !1467
  br i1 %527, label %530, label %528, !dbg !1470

528:                                              ; preds = %526
  %529 = call i8* @dcngettext(i8* null, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.74, i64 0, i64 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.75, i64 0, i64 0), i64 %498, i32 5) #25, !dbg !1471
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %529, i64 %498) #25, !dbg !1472
  br label %530, !dbg !1472

530:                                              ; preds = %528, %526
  %531 = icmp eq i64 %501, 0, !dbg !1473
  br i1 %531, label %534, label %532, !dbg !1475

532:                                              ; preds = %530
  %533 = call i8* @dcngettext(i8* null, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.76, i64 0, i64 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.77, i64 0, i64 0), i64 %501, i32 5) #25, !dbg !1476
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %533, i64 %501) #25, !dbg !1477
  br label %534, !dbg !1477

534:                                              ; preds = %532, %530
  %535 = icmp eq i64 %500, 0, !dbg !1478
  br i1 %535, label %538, label %536, !dbg !1480

536:                                              ; preds = %534
  %537 = call i8* @dcngettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.78, i64 0, i64 0), i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.79, i64 0, i64 0), i64 %500, i32 5) #25, !dbg !1481
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %537, i64 %500) #25, !dbg !1482
  br label %538, !dbg !1482

538:                                              ; preds = %536, %534
  %539 = load i1, i1* @ignore_missing, align 1, !dbg !1483
  %540 = and i8 %503, 1
  %541 = icmp eq i8 %540, 0
  %542 = and i1 %541, %539, !dbg !1485
  br i1 %542, label %543, label %549, !dbg !1485

543:                                              ; preds = %538
  %544 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.80, i64 0, i64 0), i32 5) #25, !dbg !1486
  %545 = call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %133) #25, !dbg !1487
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %544, i8* %545) #25, !dbg !1488
  br label %560, !dbg !1489

546:                                              ; preds = %519
  %547 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.73, i64 0, i64 0), i32 5) #25, !dbg !1490
  %548 = call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %133) #25, !dbg !1492
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %547, i8* %548, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #25, !dbg !1493
  br label %560, !dbg !1494

549:                                              ; preds = %538, %524
  %550 = phi i8 [ %525, %524 ], [ %540, %538 ], !dbg !1466
  %551 = icmp ne i8 %550, 0, !dbg !1466
  %552 = or i64 %501, %500, !dbg !1489
  %553 = icmp eq i64 %552, 0, !dbg !1489
  %554 = and i1 %553, %551, !dbg !1489
  br i1 %554, label %555, label %560, !dbg !1489

555:                                              ; preds = %549
  %556 = load i1, i1* @strict, align 1, !dbg !1495
  %557 = icmp eq i64 %499, 0, !dbg !1496
  %558 = xor i1 %556, true, !dbg !1496
  %559 = or i1 %557, %558, !dbg !1496
  br label %560, !dbg !1496

560:                                              ; preds = %127, %508, %515, %543, %546, %549, %555
  %561 = phi i1 [ false, %508 ], [ false, %515 ], [ false, %127 ], [ false, %549 ], [ false, %546 ], [ %559, %555 ], [ false, %543 ], !dbg !1038
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %108) #25, !dbg !1497
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %107) #25, !dbg !1497
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %106) #25, !dbg !1497
  %562 = zext i1 %561 to i8, !dbg !1498
  %563 = and i8 %116, %562, !dbg !1499
  call void @llvm.dbg.value(metadata i8 %563, metadata !889, metadata !DIExpression()), !dbg !908
  br label %660, !dbg !1500

564:                                              ; preds = %114
  call void @llvm.dbg.value(metadata i32 undef, metadata !899, metadata !DIExpression()), !dbg !1501
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %8) #25, !dbg !1502
  call void @llvm.dbg.value(metadata i8* %8, metadata !902, metadata !DIExpression(DW_OP_deref)), !dbg !1501
  %565 = call fastcc zeroext i1 @digest_file(i8* %117, i8* nonnull %9, i8* nonnull %8), !dbg !1503
  br i1 %565, label %566, label %658, !dbg !1504

566:                                              ; preds = %564
  %567 = call i8* @strchr(i8* nonnull dereferenceable(1) %117, i32 92) #26, !dbg !1505
  %568 = icmp eq i8* %567, null, !dbg !1505
  br i1 %568, label %569, label %572, !dbg !1506

569:                                              ; preds = %566
  %570 = call i8* @strchr(i8* nonnull dereferenceable(1) %117, i32 10) #26, !dbg !1507
  %571 = icmp eq i8* %570, null, !dbg !1507
  br i1 %571, label %574, label %572, !dbg !1508

572:                                              ; preds = %566, %569
  %573 = load i1, i1* @delim, align 1, !dbg !1509
  call void @llvm.dbg.value(metadata i1 %573, metadata !903, metadata !DIExpression(DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1510
  br i1 %41, label %595, label %575, !dbg !1511

574:                                              ; preds = %569
  call void @llvm.dbg.value(metadata i1 %573, metadata !903, metadata !DIExpression(DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1510
  br i1 %41, label %607, label %587, !dbg !1511

575:                                              ; preds = %572
  br i1 %573, label %587, label %576, !dbg !1512

576:                                              ; preds = %575
  call void @llvm.dbg.value(metadata i32 92, metadata !1350, metadata !DIExpression()) #25, !dbg !1515
  %577 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1518, !tbaa !792
  %578 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %577, i64 0, i32 5, !dbg !1518
  %579 = load i8*, i8** %578, align 8, !dbg !1518, !tbaa !1359
  %580 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %577, i64 0, i32 6, !dbg !1518
  %581 = load i8*, i8** %580, align 8, !dbg !1518, !tbaa !1361
  %582 = icmp ult i8* %579, %581, !dbg !1518
  br i1 %582, label %585, label %583, !dbg !1518, !prof !1362

583:                                              ; preds = %576
  %584 = call i32 @__overflow(%struct._IO_FILE* nonnull %577, i32 92) #25, !dbg !1518
  br label %587, !dbg !1518

585:                                              ; preds = %576
  %586 = getelementptr inbounds i8, i8* %579, i64 1, !dbg !1518
  store i8* %586, i8** %578, align 8, !dbg !1518, !tbaa !1359
  store i8 92, i8* %579, align 1, !dbg !1518, !tbaa !1096
  br label %587, !dbg !1518

587:                                              ; preds = %574, %585, %583, %575
  %588 = phi i1 [ false, %575 ], [ true, %583 ], [ true, %585 ], [ false, %574 ]
  %589 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1519, !tbaa !792
  %590 = call i32 @fputs_unlocked(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), %struct._IO_FILE* %589), !dbg !1519
  %591 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1520, !tbaa !792
  %592 = call i32 @fputs_unlocked(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.32, i64 0, i64 0), %struct._IO_FILE* %591), !dbg !1520
  call fastcc void @print_filename(i8* %117, i1 zeroext %588), !dbg !1521
  %593 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1522, !tbaa !792
  %594 = call i32 @fputs_unlocked(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.33, i64 0, i64 0), %struct._IO_FILE* %593), !dbg !1522
  br label %607, !dbg !1523

595:                                              ; preds = %572
  call void @llvm.dbg.value(metadata i1 %573, metadata !903, metadata !DIExpression(DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1510
  br i1 %573, label %607, label %596, !dbg !1525

596:                                              ; preds = %595
  call void @llvm.dbg.value(metadata i32 92, metadata !1350, metadata !DIExpression()) #25, !dbg !1526
  %597 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1528, !tbaa !792
  %598 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %597, i64 0, i32 5, !dbg !1528
  %599 = load i8*, i8** %598, align 8, !dbg !1528, !tbaa !1359
  %600 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %597, i64 0, i32 6, !dbg !1528
  %601 = load i8*, i8** %600, align 8, !dbg !1528, !tbaa !1361
  %602 = icmp ult i8* %599, %601, !dbg !1528
  br i1 %602, label %605, label %603, !dbg !1528, !prof !1362

603:                                              ; preds = %596
  %604 = call i32 @__overflow(%struct._IO_FILE* nonnull %597, i32 92) #25, !dbg !1528
  br label %607, !dbg !1528

605:                                              ; preds = %596
  %606 = getelementptr inbounds i8, i8* %599, i64 1, !dbg !1528
  store i8* %606, i8** %598, align 8, !dbg !1528, !tbaa !1359
  store i8 92, i8* %599, align 1, !dbg !1528, !tbaa !1096
  br label %607, !dbg !1528

607:                                              ; preds = %574, %605, %603, %587, %595
  %608 = phi i1 [ %588, %587 ], [ false, %595 ], [ true, %603 ], [ true, %605 ], [ false, %574 ]
  call void @llvm.dbg.value(metadata i64 0, metadata !906, metadata !DIExpression()), !dbg !1529
  %609 = load i1, i1* @digest_hex_bytes, align 8, !dbg !1530
  br i1 %609, label %611, label %610, !dbg !1532

610:                                              ; preds = %611, %607
  br i1 %41, label %621, label %644, !dbg !1533

611:                                              ; preds = %607, %611
  %612 = phi i64 [ %617, %611 ], [ 0, %607 ]
  call void @llvm.dbg.value(metadata i64 %612, metadata !906, metadata !DIExpression()), !dbg !1529
  %613 = getelementptr inbounds [24 x i8], [24 x i8]* %7, i64 0, i64 %612, !dbg !1534
  %614 = load i8, i8* %613, align 1, !dbg !1534, !tbaa !1096
  %615 = zext i8 %614 to i32, !dbg !1534
  %616 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.34, i64 0, i64 0), i32 %615) #25, !dbg !1534
  %617 = add nuw nsw i64 %612, 1, !dbg !1535
  call void @llvm.dbg.value(metadata i64 %617, metadata !906, metadata !DIExpression()), !dbg !1529
  %618 = load i1, i1* @digest_hex_bytes, align 8, !dbg !1530
  %619 = select i1 %618, i64 20, i64 0, !dbg !1536
  %620 = icmp ult i64 %617, %619, !dbg !1537
  br i1 %620, label %611, label %610, !dbg !1532, !llvm.loop !1538

621:                                              ; preds = %610
  call void @llvm.dbg.value(metadata i32 32, metadata !1350, metadata !DIExpression()) #25, !dbg !1540
  %622 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1544, !tbaa !792
  %623 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %622, i64 0, i32 5, !dbg !1544
  %624 = load i8*, i8** %623, align 8, !dbg !1544, !tbaa !1359
  %625 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %622, i64 0, i32 6, !dbg !1544
  %626 = load i8*, i8** %625, align 8, !dbg !1544, !tbaa !1361
  %627 = icmp ult i8* %624, %626, !dbg !1544
  br i1 %627, label %630, label %628, !dbg !1544, !prof !1362

628:                                              ; preds = %621
  %629 = call i32 @__overflow(%struct._IO_FILE* nonnull %622, i32 32) #25, !dbg !1544
  br label %632, !dbg !1544

630:                                              ; preds = %621
  %631 = getelementptr inbounds i8, i8* %624, i64 1, !dbg !1544
  store i8* %631, i8** %623, align 8, !dbg !1544, !tbaa !1359
  store i8 32, i8* %624, align 1, !dbg !1544, !tbaa !1096
  br label %632, !dbg !1544

632:                                              ; preds = %628, %630
  call void @llvm.dbg.value(metadata i32 undef, metadata !899, metadata !DIExpression()), !dbg !1501
  call void @llvm.dbg.value(metadata i32 %109, metadata !1350, metadata !DIExpression()) #25, !dbg !1545
  %633 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1547, !tbaa !792
  %634 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %633, i64 0, i32 5, !dbg !1547
  %635 = load i8*, i8** %634, align 8, !dbg !1547, !tbaa !1359
  %636 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %633, i64 0, i32 6, !dbg !1547
  %637 = load i8*, i8** %636, align 8, !dbg !1547, !tbaa !1361
  %638 = icmp ult i8* %635, %637, !dbg !1547
  br i1 %638, label %641, label %639, !dbg !1547, !prof !1362

639:                                              ; preds = %632
  %640 = call i32 @__overflow(%struct._IO_FILE* nonnull %633, i32 %109) #25, !dbg !1547
  br label %643, !dbg !1547

641:                                              ; preds = %632
  %642 = getelementptr inbounds i8, i8* %635, i64 1, !dbg !1547
  store i8* %642, i8** %634, align 8, !dbg !1547, !tbaa !1359
  store i8 %110, i8* %635, align 1, !dbg !1547, !tbaa !1096
  br label %643, !dbg !1547

643:                                              ; preds = %639, %641
  call fastcc void @print_filename(i8* %117, i1 zeroext %608), !dbg !1548
  br label %644, !dbg !1549

644:                                              ; preds = %643, %610
  %645 = load i1, i1* @delim, align 1, !dbg !1550
  %646 = select i1 %645, i32 0, i32 10, !dbg !1550
  call void @llvm.dbg.value(metadata i32 %646, metadata !1350, metadata !DIExpression()) #25, !dbg !1551
  %647 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1553, !tbaa !792
  %648 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %647, i64 0, i32 5, !dbg !1553
  %649 = load i8*, i8** %648, align 8, !dbg !1553, !tbaa !1359
  %650 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %647, i64 0, i32 6, !dbg !1553
  %651 = load i8*, i8** %650, align 8, !dbg !1553, !tbaa !1361
  %652 = icmp ult i8* %649, %651, !dbg !1553
  br i1 %652, label %655, label %653, !dbg !1553, !prof !1362

653:                                              ; preds = %644
  %654 = call i32 @__overflow(%struct._IO_FILE* nonnull %647, i32 %646) #25, !dbg !1553
  br label %658, !dbg !1553

655:                                              ; preds = %644
  %656 = trunc i32 %646 to i8, !dbg !1553
  %657 = getelementptr inbounds i8, i8* %649, i64 1, !dbg !1553
  store i8* %657, i8** %648, align 8, !dbg !1553, !tbaa !1359
  store i8 %656, i8* %649, align 1, !dbg !1553, !tbaa !1096
  br label %658, !dbg !1553

658:                                              ; preds = %655, %653, %564
  %659 = phi i8 [ 0, %564 ], [ %116, %653 ], [ %116, %655 ], !dbg !908
  call void @llvm.dbg.value(metadata i8 %659, metadata !889, metadata !DIExpression()), !dbg !908
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %8) #25, !dbg !1554
  br label %660

660:                                              ; preds = %658, %560
  %661 = phi i8 [ %563, %560 ], [ %659, %658 ], !dbg !908
  call void @llvm.dbg.value(metadata i8 %661, metadata !889, metadata !DIExpression()), !dbg !908
  %662 = getelementptr inbounds i8*, i8** %115, i64 1, !dbg !1555
  call void @llvm.dbg.value(metadata i8** %662, metadata !894, metadata !DIExpression()), !dbg !1029
  %663 = icmp ult i8** %662, %101, !dbg !1030
  br i1 %663, label %114, label %111, !dbg !1031, !llvm.loop !1556

664:                                              ; preds = %111
  %665 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !1558, !tbaa !792
  %666 = call i32 @rpl_fclose(%struct._IO_FILE* %665) #25, !dbg !1559
  %667 = icmp eq i32 %666, -1, !dbg !1560
  br i1 %667, label %668, label %672, !dbg !1561

668:                                              ; preds = %664
  %669 = tail call i32* @__errno_location() #29, !dbg !1562
  %670 = load i32, i32* %669, align 4, !dbg !1562, !tbaa !1021
  %671 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.35, i64 0, i64 0), i32 5) #25, !dbg !1562
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %670, i8* %671) #25, !dbg !1562
  unreachable, !dbg !1562

672:                                              ; preds = %664, %111
  %673 = and i8 %112, 1, !dbg !1563
  %674 = xor i8 %673, 1, !dbg !1563
  %675 = zext i8 %674 to i32, !dbg !1563
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %9) #25, !dbg !1564
  ret i32 %675, !dbg !1564

676:                                              ; preds = %301
  call void @llvm.dbg.value(metadata i32 %293, metadata !1225, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)) #25, !dbg !1262
  call void @llvm.dbg.value(metadata i32 %293, metadata !1225, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)) #25, !dbg !1262
  %677 = getelementptr inbounds i8, i8* %294, i64 2, !dbg !1266
  call void @llvm.dbg.value(metadata i8* %677, metadata !1219, metadata !DIExpression()) #25, !dbg !1259
  call void @llvm.dbg.value(metadata i32 %293, metadata !1225, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_plus_uconst, 1, DW_OP_stack_value)) #25, !dbg !1262
  call void @llvm.dbg.value(metadata i32 %293, metadata !1225, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_plus_uconst, 1, DW_OP_stack_value)) #25, !dbg !1262
  call void @llvm.dbg.value(metadata i8* %677, metadata !1219, metadata !DIExpression()) #25, !dbg !1259
  %678 = load i8, i8* %677, align 1, !dbg !1264, !tbaa !1096
  %679 = zext i8 %678 to i64, !dbg !1264
  %680 = getelementptr inbounds i16, i16* %290, i64 %679, !dbg !1264
  %681 = load i16, i16* %680, align 2, !dbg !1264, !tbaa !1236
  %682 = and i16 %681, 4096, !dbg !1264
  %683 = icmp eq i16 %682, 0, !dbg !1264
  br i1 %683, label %374, label %684, !dbg !1265

684:                                              ; preds = %676
  call void @llvm.dbg.value(metadata i32 %293, metadata !1225, metadata !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value)) #25, !dbg !1262
  call void @llvm.dbg.value(metadata i32 %293, metadata !1225, metadata !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value)) #25, !dbg !1262
  %685 = getelementptr inbounds i8, i8* %294, i64 3, !dbg !1266
  call void @llvm.dbg.value(metadata i8* %685, metadata !1219, metadata !DIExpression()) #25, !dbg !1259
  call void @llvm.dbg.value(metadata i32 %293, metadata !1225, metadata !DIExpression(DW_OP_plus_uconst, 2, DW_OP_plus_uconst, 1, DW_OP_stack_value)) #25, !dbg !1262
  call void @llvm.dbg.value(metadata i32 %293, metadata !1225, metadata !DIExpression(DW_OP_plus_uconst, 2, DW_OP_plus_uconst, 1, DW_OP_stack_value)) #25, !dbg !1262
  call void @llvm.dbg.value(metadata i8* %685, metadata !1219, metadata !DIExpression()) #25, !dbg !1259
  %686 = load i8, i8* %685, align 1, !dbg !1264, !tbaa !1096
  %687 = zext i8 %686 to i64, !dbg !1264
  %688 = getelementptr inbounds i16, i16* %290, i64 %687, !dbg !1264
  %689 = load i16, i16* %688, align 2, !dbg !1264, !tbaa !1236
  %690 = and i16 %689, 4096, !dbg !1264
  %691 = icmp eq i16 %690, 0, !dbg !1264
  br i1 %691, label %374, label %692, !dbg !1265

692:                                              ; preds = %684
  call void @llvm.dbg.value(metadata i32 %293, metadata !1225, metadata !DIExpression(DW_OP_plus_uconst, 3, DW_OP_stack_value)) #25, !dbg !1262
  call void @llvm.dbg.value(metadata i32 %293, metadata !1225, metadata !DIExpression(DW_OP_plus_uconst, 3, DW_OP_stack_value)) #25, !dbg !1262
  %693 = getelementptr inbounds i8, i8* %294, i64 4, !dbg !1266
  call void @llvm.dbg.value(metadata i8* %693, metadata !1219, metadata !DIExpression()) #25, !dbg !1259
  %694 = add nuw nsw i32 %293, 4, !dbg !1565
  call void @llvm.dbg.value(metadata i32 %694, metadata !1225, metadata !DIExpression()) #25, !dbg !1262
  %695 = icmp eq i32 %694, 40, !dbg !1566
  br i1 %695, label %309, label %292, !dbg !1263, !llvm.loop !1567
}

; Function Attrs: nounwind
declare !dbg !1569 i8* @bindtextdomain(i8*, i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1572 i8* @textdomain(i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1575 i32 @atexit(void ()*) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare !dbg !1580 noundef i32 @setvbuf(%struct._IO_FILE* nocapture noundef, i8* noundef, i32 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare !dbg !1583 i32 @getopt_long(i32, i8**, i8*, %struct.option*, i32*) local_unnamed_addr #2

declare !dbg !1589 void @error(i32, i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: nounwind readnone willreturn
declare i32* @__errno_location() local_unnamed_addr #9

declare i64 @__getdelim(i8**, i64*, i32, %struct._IO_FILE*) local_unnamed_addr #3

; Function Attrs: nounwind readnone willreturn
declare i16** @__ctype_b_loc() local_unnamed_addr #9

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i8* @strchr(i8*, i32) local_unnamed_addr #6

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc zeroext i1 @digest_file(i8* %0, i8* %1, i8* nocapture %2) unnamed_addr #8 !dbg !1593 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1598, metadata !DIExpression()), !dbg !1605
  call void @llvm.dbg.value(metadata i32* undef, metadata !1599, metadata !DIExpression()), !dbg !1605
  call void @llvm.dbg.value(metadata i8* %1, metadata !1600, metadata !DIExpression()), !dbg !1605
  call void @llvm.dbg.value(metadata i8* %2, metadata !1601, metadata !DIExpression()), !dbg !1605
  %4 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %0, i8* nonnull dereferenceable(2) getelementptr inbounds ([2 x i8], [2 x i8]* @.str.31, i64 0, i64 0)) #26, !dbg !1606
  %5 = icmp eq i32 %4, 0, !dbg !1606
  call void @llvm.dbg.value(metadata i1 %5, metadata !1604, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1605
  store i8 0, i8* %2, align 1, !dbg !1607, !tbaa !1608
  br i1 %5, label %6, label %8, !dbg !1610

6:                                                ; preds = %3
  store i1 true, i1* @have_read_stdin, align 1, !dbg !1611
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !1614, !tbaa !792
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %7, metadata !1602, metadata !DIExpression()), !dbg !1605
  br label %21, !dbg !1615

8:                                                ; preds = %3
  %9 = tail call %struct._IO_FILE* @fopen_safer(i8* %0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.64, i64 0, i64 0)) #25, !dbg !1616
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %9, metadata !1602, metadata !DIExpression()), !dbg !1605
  %10 = icmp eq %struct._IO_FILE* %9, null, !dbg !1618
  br i1 %10, label %11, label %21, !dbg !1620

11:                                               ; preds = %8
  %12 = load i1, i1* @ignore_missing, align 1, !dbg !1621
  %13 = tail call i32* @__errno_location() #29, !dbg !1624
  br i1 %12, label %14, label %18, !dbg !1625

14:                                               ; preds = %11
  %15 = load i32, i32* %13, align 4, !dbg !1626, !tbaa !1021
  %16 = icmp eq i32 %15, 2, !dbg !1627
  br i1 %16, label %17, label %18, !dbg !1628

17:                                               ; preds = %14
  store i8 1, i8* %2, align 1, !dbg !1629, !tbaa !1608
  br label %41, !dbg !1631

18:                                               ; preds = %11, %14
  %19 = load i32, i32* %13, align 4, !dbg !1632, !tbaa !1021
  %20 = tail call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %0) #25, !dbg !1633
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %19, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.65, i64 0, i64 0), i8* %20) #25, !dbg !1634
  br label %41, !dbg !1635

21:                                               ; preds = %8, %6
  %22 = phi %struct._IO_FILE* [ %7, %6 ], [ %9, %8 ], !dbg !1636
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %22, metadata !1602, metadata !DIExpression()), !dbg !1605
  tail call void @fadvise(%struct._IO_FILE* %22, i32 2) #25, !dbg !1637
  %23 = tail call i32 @sha1_stream(%struct._IO_FILE* %22, i8* %1) #25, !dbg !1638
  call void @llvm.dbg.value(metadata i32 %23, metadata !1603, metadata !DIExpression()), !dbg !1605
  %24 = icmp eq i32 %23, 0, !dbg !1639
  br i1 %24, label %33, label %25, !dbg !1641

25:                                               ; preds = %21
  %26 = tail call i32* @__errno_location() #29, !dbg !1642
  %27 = load i32, i32* %26, align 4, !dbg !1642, !tbaa !1021
  %28 = tail call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %0) #25, !dbg !1644
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %27, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.65, i64 0, i64 0), i8* %28) #25, !dbg !1645
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !1646, !tbaa !792
  %30 = icmp eq %struct._IO_FILE* %22, %29, !dbg !1648
  br i1 %30, label %41, label %31, !dbg !1649

31:                                               ; preds = %25
  %32 = tail call i32 @rpl_fclose(%struct._IO_FILE* %22) #25, !dbg !1650
  br label %41, !dbg !1650

33:                                               ; preds = %21
  br i1 %5, label %41, label %34, !dbg !1651

34:                                               ; preds = %33
  %35 = tail call i32 @rpl_fclose(%struct._IO_FILE* %22) #25, !dbg !1653
  %36 = icmp eq i32 %35, 0, !dbg !1654
  br i1 %36, label %41, label %37, !dbg !1655

37:                                               ; preds = %34
  %38 = tail call i32* @__errno_location() #29, !dbg !1656
  %39 = load i32, i32* %38, align 4, !dbg !1656, !tbaa !1021
  %40 = tail call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %0) #25, !dbg !1658
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %39, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.65, i64 0, i64 0), i8* %40) #25, !dbg !1659
  br label %41, !dbg !1660

41:                                               ; preds = %33, %34, %25, %31, %37, %18, %17
  %42 = phi i1 [ false, %37 ], [ true, %17 ], [ false, %18 ], [ false, %31 ], [ false, %25 ], [ true, %34 ], [ true, %33 ], !dbg !1605
  ret i1 %42, !dbg !1661
}

declare i32 @__overflow(%struct._IO_FILE*, i32) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @print_filename(i8* nocapture readonly %0, i1 zeroext %1) unnamed_addr #8 !dbg !1662 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1666, metadata !DIExpression()), !dbg !1668
  call void @llvm.dbg.value(metadata i1 %1, metadata !1667, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1668
  br i1 %1, label %3, label %6, !dbg !1669

3:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i8* %0, metadata !1666, metadata !DIExpression()), !dbg !1668
  %4 = load i8, i8* %0, align 1, !dbg !1670, !tbaa !1096
  %5 = icmp eq i8 %4, 0, !dbg !1671
  br i1 %5, label %35, label %9, !dbg !1671

6:                                                ; preds = %2
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1672, !tbaa !792
  %8 = tail call i32 @fputs_unlocked(i8* %0, %struct._IO_FILE* %7), !dbg !1672
  br label %35, !dbg !1675

9:                                                ; preds = %3, %31
  %10 = phi i8 [ %33, %31 ], [ %4, %3 ]
  %11 = phi i8* [ %32, %31 ], [ %0, %3 ]
  call void @llvm.dbg.value(metadata i8* %11, metadata !1666, metadata !DIExpression()), !dbg !1668
  %12 = sext i8 %10 to i32, !dbg !1676
  switch i32 %12, label %19 [
    i32 10, label %13
    i32 92, label %16
  ], !dbg !1678

13:                                               ; preds = %9
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1679, !tbaa !792
  %15 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.81, i64 0, i64 0), %struct._IO_FILE* %14), !dbg !1679
  br label %31, !dbg !1681

16:                                               ; preds = %9
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1682, !tbaa !792
  %18 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.82, i64 0, i64 0), %struct._IO_FILE* %17), !dbg !1682
  br label %31, !dbg !1683

19:                                               ; preds = %9
  call void @llvm.dbg.value(metadata i32 %12, metadata !1350, metadata !DIExpression()) #25, !dbg !1684
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1686, !tbaa !792
  %21 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %20, i64 0, i32 5, !dbg !1686
  %22 = load i8*, i8** %21, align 8, !dbg !1686, !tbaa !1359
  %23 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %20, i64 0, i32 6, !dbg !1686
  %24 = load i8*, i8** %23, align 8, !dbg !1686, !tbaa !1361
  %25 = icmp ult i8* %22, %24, !dbg !1686
  br i1 %25, label %29, label %26, !dbg !1686, !prof !1362

26:                                               ; preds = %19
  %27 = and i32 %12, 255, !dbg !1686
  %28 = tail call i32 @__overflow(%struct._IO_FILE* nonnull %20, i32 %27) #25, !dbg !1686
  br label %31, !dbg !1686

29:                                               ; preds = %19
  %30 = getelementptr inbounds i8, i8* %22, i64 1, !dbg !1686
  store i8* %30, i8** %21, align 8, !dbg !1686, !tbaa !1359
  store i8 %10, i8* %22, align 1, !dbg !1686, !tbaa !1096
  br label %31, !dbg !1686

31:                                               ; preds = %29, %26, %16, %13
  %32 = getelementptr inbounds i8, i8* %11, i64 1, !dbg !1687
  call void @llvm.dbg.value(metadata i8* %32, metadata !1666, metadata !DIExpression()), !dbg !1668
  %33 = load i8, i8* %32, align 1, !dbg !1670, !tbaa !1096
  %34 = icmp eq i8 %33, 0, !dbg !1671
  br i1 %34, label %35, label %9, !dbg !1671, !llvm.loop !1688

35:                                               ; preds = %31, %3, %6
  ret void, !dbg !1690
}

; Function Attrs: nounwind readnone willreturn
declare i32** @__ctype_tolower_loc() local_unnamed_addr #9

; Function Attrs: inaccessiblemem_or_argmemonly nounwind willreturn
declare void @free(i8* nocapture noundef) local_unnamed_addr #10

; Function Attrs: nounwind
declare !dbg !1691 i8* @dcngettext(i8*, i8*, i8*, i64, i32) local_unnamed_addr #2

; Function Attrs: nofree norecurse nounwind sspstrong uwtable willreturn writeonly
define dso_local void @close_stdout_set_file_name(i8* %0) local_unnamed_addr #11 !dbg !1694 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1696, metadata !DIExpression()), !dbg !1697
  store i8* %0, i8** @file_name, align 8, !dbg !1698, !tbaa !792
  ret void, !dbg !1699
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable willreturn writeonly
define dso_local void @close_stdout_set_ignore_EPIPE(i1 zeroext %0) local_unnamed_addr #11 !dbg !1700 {
  %2 = zext i1 %0 to i8
  call void @llvm.dbg.value(metadata i8 %2, metadata !1704, metadata !DIExpression()), !dbg !1705
  store i8 %2, i8* @ignore_EPIPE, align 1, !dbg !1706, !tbaa !1608
  ret void, !dbg !1707
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @close_stdout() #8 !dbg !1708 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1713, !tbaa !792
  %2 = tail call i32 @close_stream(%struct._IO_FILE* %1) #25, !dbg !1714
  %3 = icmp eq i32 %2, 0, !dbg !1715
  br i1 %3, label %22, label %4, !dbg !1716

4:                                                ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 1, !dbg !1717, !tbaa !1608, !range !1718
  %6 = icmp eq i8 %5, 0, !dbg !1717
  br i1 %6, label %11, label %7, !dbg !1719

7:                                                ; preds = %4
  %8 = tail call i32* @__errno_location() #29, !dbg !1720
  %9 = load i32, i32* %8, align 4, !dbg !1720, !tbaa !1021
  %10 = icmp eq i32 %9, 32, !dbg !1721
  br i1 %10, label %22, label %11, !dbg !1722

11:                                               ; preds = %7, %4
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.86, i64 0, i64 0), i32 5) #25, !dbg !1723
  call void @llvm.dbg.value(metadata i8* %12, metadata !1710, metadata !DIExpression()), !dbg !1724
  %13 = load i8*, i8** @file_name, align 8, !dbg !1725, !tbaa !792
  %14 = icmp eq i8* %13, null, !dbg !1725
  %15 = tail call i32* @__errno_location() #29, !dbg !1727
  %16 = load i32, i32* %15, align 4, !dbg !1727, !tbaa !1021
  br i1 %14, label %19, label %17, !dbg !1728

17:                                               ; preds = %11
  %18 = tail call i8* @quotearg_colon(i8* nonnull %13) #25, !dbg !1729
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.87, i64 0, i64 0), i8* %18, i8* %12) #25, !dbg !1730
  br label %20, !dbg !1730

19:                                               ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.88, i64 0, i64 0), i8* %12) #25, !dbg !1731
  br label %20

20:                                               ; preds = %19, %17
  %21 = load volatile i32, i32* @exit_failure, align 4, !dbg !1732, !tbaa !1021
  tail call void @_exit(i32 %21) #27, !dbg !1733
  unreachable, !dbg !1733

22:                                               ; preds = %7, %0
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1734, !tbaa !792
  %24 = tail call i32 @close_stream(%struct._IO_FILE* %23) #25, !dbg !1736
  %25 = icmp eq i32 %24, 0, !dbg !1737
  br i1 %25, label %28, label %26, !dbg !1738

26:                                               ; preds = %22
  %27 = load volatile i32, i32* @exit_failure, align 4, !dbg !1739, !tbaa !1021
  tail call void @_exit(i32 %27) #27, !dbg !1740
  unreachable, !dbg !1740

28:                                               ; preds = %22
  ret void, !dbg !1741
}

; Function Attrs: noreturn
declare void @_exit(i32) local_unnamed_addr #12

; Function Attrs: nofree norecurse nounwind sspstrong uwtable willreturn writeonly
define dso_local void @sha1_init_ctx(%struct.sha1_ctx* nocapture %0) local_unnamed_addr #11 !dbg !1742 {
  call void @llvm.dbg.value(metadata %struct.sha1_ctx* %0, metadata !1764, metadata !DIExpression()), !dbg !1765
  %2 = bitcast %struct.sha1_ctx* %0 to <4 x i32>*, !dbg !1766
  store <4 x i32> <i32 1732584193, i32 -271733879, i32 -1732584194, i32 271733878>, <4 x i32>* %2, align 4, !dbg !1766, !tbaa !1021
  %3 = getelementptr inbounds %struct.sha1_ctx, %struct.sha1_ctx* %0, i64 0, i32 4, !dbg !1767
  %4 = bitcast i32* %3 to <4 x i32>*, !dbg !1768
  store <4 x i32> <i32 -1009589776, i32 0, i32 0, i32 0>, <4 x i32>* %4, align 4, !dbg !1768, !tbaa !1021
  ret void, !dbg !1769
}

; Function Attrs: nofree nounwind sspstrong uwtable
define dso_local i8* @sha1_read_ctx(%struct.sha1_ctx* nocapture readonly %0, i8* returned %1) local_unnamed_addr #13 !dbg !1770 {
  call void @llvm.dbg.value(metadata %struct.sha1_ctx* %0, metadata !1776, metadata !DIExpression()), !dbg !1779
  call void @llvm.dbg.value(metadata i8* %1, metadata !1777, metadata !DIExpression()), !dbg !1779
  call void @llvm.dbg.value(metadata i8* %1, metadata !1778, metadata !DIExpression()), !dbg !1779
  %3 = getelementptr inbounds %struct.sha1_ctx, %struct.sha1_ctx* %0, i64 0, i32 0, !dbg !1780
  %4 = load i32, i32* %3, align 4, !dbg !1780, !tbaa !1781
  call void @llvm.dbg.value(metadata i32 %4, metadata !1783, metadata !DIExpression()) #25, !dbg !1789
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #25, !dbg !1791
  call void @llvm.dbg.value(metadata i8* %1, metadata !1792, metadata !DIExpression()) #25, !dbg !1798
  call void @llvm.dbg.value(metadata i32 %5, metadata !1797, metadata !DIExpression()) #25, !dbg !1798
  call void @llvm.dbg.value(metadata i8* %1, metadata !1800, metadata !DIExpression()) #25, !dbg !1812
  call void @llvm.dbg.value(metadata i8* undef, metadata !1810, metadata !DIExpression()) #25, !dbg !1812
  call void @llvm.dbg.value(metadata i64 4, metadata !1811, metadata !DIExpression()) #25, !dbg !1812
  %6 = bitcast i8* %1 to i32*, !dbg !1814
  store i32 %5, i32* %6, align 1, !dbg !1814
  %7 = getelementptr inbounds i8, i8* %1, i64 4, !dbg !1815
  %8 = getelementptr inbounds %struct.sha1_ctx, %struct.sha1_ctx* %0, i64 0, i32 1, !dbg !1816
  %9 = load i32, i32* %8, align 4, !dbg !1816, !tbaa !1817
  call void @llvm.dbg.value(metadata i32 %9, metadata !1783, metadata !DIExpression()) #25, !dbg !1818
  %10 = call i32 @llvm.bswap.i32(i32 %9) #25, !dbg !1820
  call void @llvm.dbg.value(metadata i8* %7, metadata !1792, metadata !DIExpression()) #25, !dbg !1821
  call void @llvm.dbg.value(metadata i32 %10, metadata !1797, metadata !DIExpression()) #25, !dbg !1821
  call void @llvm.dbg.value(metadata i8* %7, metadata !1800, metadata !DIExpression()) #25, !dbg !1823
  call void @llvm.dbg.value(metadata i8* undef, metadata !1810, metadata !DIExpression()) #25, !dbg !1823
  call void @llvm.dbg.value(metadata i64 4, metadata !1811, metadata !DIExpression()) #25, !dbg !1823
  %11 = bitcast i8* %7 to i32*, !dbg !1825
  store i32 %10, i32* %11, align 1, !dbg !1825
  %12 = getelementptr inbounds i8, i8* %1, i64 8, !dbg !1826
  %13 = getelementptr inbounds %struct.sha1_ctx, %struct.sha1_ctx* %0, i64 0, i32 2, !dbg !1827
  %14 = load i32, i32* %13, align 4, !dbg !1827, !tbaa !1828
  call void @llvm.dbg.value(metadata i32 %14, metadata !1783, metadata !DIExpression()) #25, !dbg !1829
  %15 = call i32 @llvm.bswap.i32(i32 %14) #25, !dbg !1831
  call void @llvm.dbg.value(metadata i8* %12, metadata !1792, metadata !DIExpression()) #25, !dbg !1832
  call void @llvm.dbg.value(metadata i32 %15, metadata !1797, metadata !DIExpression()) #25, !dbg !1832
  call void @llvm.dbg.value(metadata i8* %12, metadata !1800, metadata !DIExpression()) #25, !dbg !1834
  call void @llvm.dbg.value(metadata i8* undef, metadata !1810, metadata !DIExpression()) #25, !dbg !1834
  call void @llvm.dbg.value(metadata i64 4, metadata !1811, metadata !DIExpression()) #25, !dbg !1834
  %16 = bitcast i8* %12 to i32*, !dbg !1836
  store i32 %15, i32* %16, align 1, !dbg !1836
  %17 = getelementptr inbounds i8, i8* %1, i64 12, !dbg !1837
  %18 = getelementptr inbounds %struct.sha1_ctx, %struct.sha1_ctx* %0, i64 0, i32 3, !dbg !1838
  %19 = load i32, i32* %18, align 4, !dbg !1838, !tbaa !1839
  call void @llvm.dbg.value(metadata i32 %19, metadata !1783, metadata !DIExpression()) #25, !dbg !1840
  %20 = call i32 @llvm.bswap.i32(i32 %19) #25, !dbg !1842
  call void @llvm.dbg.value(metadata i8* %17, metadata !1792, metadata !DIExpression()) #25, !dbg !1843
  call void @llvm.dbg.value(metadata i32 %20, metadata !1797, metadata !DIExpression()) #25, !dbg !1843
  call void @llvm.dbg.value(metadata i8* %17, metadata !1800, metadata !DIExpression()) #25, !dbg !1845
  call void @llvm.dbg.value(metadata i8* undef, metadata !1810, metadata !DIExpression()) #25, !dbg !1845
  call void @llvm.dbg.value(metadata i64 4, metadata !1811, metadata !DIExpression()) #25, !dbg !1845
  %21 = bitcast i8* %17 to i32*, !dbg !1847
  store i32 %20, i32* %21, align 1, !dbg !1847
  %22 = getelementptr inbounds i8, i8* %1, i64 16, !dbg !1848
  %23 = getelementptr inbounds %struct.sha1_ctx, %struct.sha1_ctx* %0, i64 0, i32 4, !dbg !1849
  %24 = load i32, i32* %23, align 4, !dbg !1849, !tbaa !1850
  call void @llvm.dbg.value(metadata i32 %24, metadata !1783, metadata !DIExpression()) #25, !dbg !1851
  %25 = call i32 @llvm.bswap.i32(i32 %24) #25, !dbg !1853
  call void @llvm.dbg.value(metadata i8* %22, metadata !1792, metadata !DIExpression()) #25, !dbg !1854
  call void @llvm.dbg.value(metadata i32 %25, metadata !1797, metadata !DIExpression()) #25, !dbg !1854
  call void @llvm.dbg.value(metadata i8* %22, metadata !1800, metadata !DIExpression()) #25, !dbg !1856
  call void @llvm.dbg.value(metadata i8* undef, metadata !1810, metadata !DIExpression()) #25, !dbg !1856
  call void @llvm.dbg.value(metadata i64 4, metadata !1811, metadata !DIExpression()) #25, !dbg !1856
  %26 = bitcast i8* %22 to i32*, !dbg !1858
  store i32 %25, i32* %26, align 1, !dbg !1858
  ret i8* %1, !dbg !1859
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #1

; Function Attrs: nofree nounwind sspstrong uwtable
define dso_local i8* @sha1_finish_ctx(%struct.sha1_ctx* %0, i8* returned %1) local_unnamed_addr #13 !dbg !1860 {
  call void @llvm.dbg.value(metadata %struct.sha1_ctx* %0, metadata !1864, metadata !DIExpression()), !dbg !1868
  call void @llvm.dbg.value(metadata i8* %1, metadata !1865, metadata !DIExpression()), !dbg !1868
  %3 = getelementptr inbounds %struct.sha1_ctx, %struct.sha1_ctx* %0, i64 0, i32 6, !dbg !1869
  %4 = load i32, i32* %3, align 4, !dbg !1869, !tbaa !1870
  call void @llvm.dbg.value(metadata i32 %4, metadata !1866, metadata !DIExpression()), !dbg !1868
  %5 = icmp ult i32 %4, 56, !dbg !1871
  %6 = select i1 %5, i64 16, i64 32, !dbg !1872
  call void @llvm.dbg.value(metadata i64 %6, metadata !1867, metadata !DIExpression()), !dbg !1868
  %7 = getelementptr inbounds %struct.sha1_ctx, %struct.sha1_ctx* %0, i64 0, i32 5, i64 0, !dbg !1873
  %8 = load i32, i32* %7, align 4, !dbg !1874, !tbaa !1021
  %9 = add i32 %8, %4, !dbg !1874
  store i32 %9, i32* %7, align 4, !dbg !1874, !tbaa !1021
  %10 = icmp ult i32 %9, %4, !dbg !1875
  %11 = getelementptr inbounds %struct.sha1_ctx, %struct.sha1_ctx* %0, i64 0, i32 5, i64 1
  %12 = load i32, i32* %11, align 4, !dbg !1868, !tbaa !1021
  br i1 %10, label %13, label %15, !dbg !1877

13:                                               ; preds = %2
  %14 = add i32 %12, 1, !dbg !1878
  store i32 %14, i32* %11, align 4, !dbg !1878, !tbaa !1021
  br label %15, !dbg !1878

15:                                               ; preds = %2, %13
  %16 = phi i32 [ %14, %13 ], [ %12, %2 ], !dbg !1879
  %17 = tail call i32 @llvm.fshl.i32(i32 %16, i32 %9, i32 3), !dbg !1879
  call void @llvm.dbg.value(metadata i32 %17, metadata !1783, metadata !DIExpression()) #25, !dbg !1880
  %18 = tail call i32 @llvm.bswap.i32(i32 %17) #25, !dbg !1882
  %19 = add nsw i64 %6, -2, !dbg !1883
  %20 = getelementptr inbounds %struct.sha1_ctx, %struct.sha1_ctx* %0, i64 0, i32 7, i64 %19, !dbg !1884
  store i32 %18, i32* %20, align 4, !dbg !1885, !tbaa !1021
  %21 = shl i32 %9, 3, !dbg !1886
  call void @llvm.dbg.value(metadata i32 %21, metadata !1783, metadata !DIExpression()) #25, !dbg !1887
  %22 = tail call i32 @llvm.bswap.i32(i32 %21) #25, !dbg !1889
  %23 = add nsw i64 %6, -1, !dbg !1890
  %24 = getelementptr inbounds %struct.sha1_ctx, %struct.sha1_ctx* %0, i64 0, i32 7, i64 %23, !dbg !1891
  store i32 %22, i32* %24, align 4, !dbg !1892, !tbaa !1021
  %25 = getelementptr inbounds %struct.sha1_ctx, %struct.sha1_ctx* %0, i64 0, i32 7, i64 0, !dbg !1893
  %26 = bitcast i32* %25 to i8*, !dbg !1893
  %27 = zext i32 %4 to i64, !dbg !1893
  %28 = getelementptr inbounds i8, i8* %26, i64 %27, !dbg !1893
  %29 = shl nuw nsw i64 %19, 2, !dbg !1894
  %30 = sub nsw i64 %29, %27, !dbg !1895
  call void @llvm.dbg.value(metadata i8* %28, metadata !1800, metadata !DIExpression()) #25, !dbg !1896
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds (<{ i8, [63 x i8] }>, <{ i8, [63 x i8] }>* @fillbuf, i64 0, i32 0), metadata !1810, metadata !DIExpression()) #25, !dbg !1896
  call void @llvm.dbg.value(metadata i64 %30, metadata !1811, metadata !DIExpression()) #25, !dbg !1896
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %28, i8* nonnull align 16 getelementptr inbounds (<{ i8, [63 x i8] }>, <{ i8, [63 x i8] }>* @fillbuf, i64 0, i32 0), i64 %30, i1 false) #25, !dbg !1898
  %31 = shl nuw nsw i64 %6, 2, !dbg !1899
  tail call void @sha1_process_block(i8* nonnull %26, i64 %31, %struct.sha1_ctx* nonnull %0), !dbg !1900
  call void @llvm.dbg.value(metadata %struct.sha1_ctx* %0, metadata !1776, metadata !DIExpression()) #25, !dbg !1901
  call void @llvm.dbg.value(metadata i8* %1, metadata !1777, metadata !DIExpression()) #25, !dbg !1901
  call void @llvm.dbg.value(metadata i8* %1, metadata !1778, metadata !DIExpression()) #25, !dbg !1901
  %32 = getelementptr inbounds %struct.sha1_ctx, %struct.sha1_ctx* %0, i64 0, i32 0, !dbg !1903
  %33 = load i32, i32* %32, align 4, !dbg !1903, !tbaa !1781
  call void @llvm.dbg.value(metadata i32 %33, metadata !1783, metadata !DIExpression()) #25, !dbg !1904
  %34 = tail call i32 @llvm.bswap.i32(i32 %33) #25, !dbg !1906
  call void @llvm.dbg.value(metadata i8* %1, metadata !1792, metadata !DIExpression()) #25, !dbg !1907
  call void @llvm.dbg.value(metadata i32 %34, metadata !1797, metadata !DIExpression()) #25, !dbg !1907
  call void @llvm.dbg.value(metadata i8* %1, metadata !1800, metadata !DIExpression()) #25, !dbg !1909
  call void @llvm.dbg.value(metadata i8* undef, metadata !1810, metadata !DIExpression()) #25, !dbg !1909
  call void @llvm.dbg.value(metadata i64 4, metadata !1811, metadata !DIExpression()) #25, !dbg !1909
  %35 = bitcast i8* %1 to i32*, !dbg !1911
  store i32 %34, i32* %35, align 1, !dbg !1911
  %36 = getelementptr inbounds i8, i8* %1, i64 4, !dbg !1912
  %37 = getelementptr inbounds %struct.sha1_ctx, %struct.sha1_ctx* %0, i64 0, i32 1, !dbg !1913
  %38 = load i32, i32* %37, align 4, !dbg !1913, !tbaa !1817
  call void @llvm.dbg.value(metadata i32 %38, metadata !1783, metadata !DIExpression()) #25, !dbg !1914
  %39 = call i32 @llvm.bswap.i32(i32 %38) #25, !dbg !1916
  call void @llvm.dbg.value(metadata i8* %36, metadata !1792, metadata !DIExpression()) #25, !dbg !1917
  call void @llvm.dbg.value(metadata i32 %39, metadata !1797, metadata !DIExpression()) #25, !dbg !1917
  call void @llvm.dbg.value(metadata i8* %36, metadata !1800, metadata !DIExpression()) #25, !dbg !1919
  call void @llvm.dbg.value(metadata i8* undef, metadata !1810, metadata !DIExpression()) #25, !dbg !1919
  call void @llvm.dbg.value(metadata i64 4, metadata !1811, metadata !DIExpression()) #25, !dbg !1919
  %40 = bitcast i8* %36 to i32*, !dbg !1921
  store i32 %39, i32* %40, align 1, !dbg !1921
  %41 = getelementptr inbounds i8, i8* %1, i64 8, !dbg !1922
  %42 = getelementptr inbounds %struct.sha1_ctx, %struct.sha1_ctx* %0, i64 0, i32 2, !dbg !1923
  %43 = load i32, i32* %42, align 4, !dbg !1923, !tbaa !1828
  call void @llvm.dbg.value(metadata i32 %43, metadata !1783, metadata !DIExpression()) #25, !dbg !1924
  %44 = call i32 @llvm.bswap.i32(i32 %43) #25, !dbg !1926
  call void @llvm.dbg.value(metadata i8* %41, metadata !1792, metadata !DIExpression()) #25, !dbg !1927
  call void @llvm.dbg.value(metadata i32 %44, metadata !1797, metadata !DIExpression()) #25, !dbg !1927
  call void @llvm.dbg.value(metadata i8* %41, metadata !1800, metadata !DIExpression()) #25, !dbg !1929
  call void @llvm.dbg.value(metadata i8* undef, metadata !1810, metadata !DIExpression()) #25, !dbg !1929
  call void @llvm.dbg.value(metadata i64 4, metadata !1811, metadata !DIExpression()) #25, !dbg !1929
  %45 = bitcast i8* %41 to i32*, !dbg !1931
  store i32 %44, i32* %45, align 1, !dbg !1931
  %46 = getelementptr inbounds i8, i8* %1, i64 12, !dbg !1932
  %47 = getelementptr inbounds %struct.sha1_ctx, %struct.sha1_ctx* %0, i64 0, i32 3, !dbg !1933
  %48 = load i32, i32* %47, align 4, !dbg !1933, !tbaa !1839
  call void @llvm.dbg.value(metadata i32 %48, metadata !1783, metadata !DIExpression()) #25, !dbg !1934
  %49 = call i32 @llvm.bswap.i32(i32 %48) #25, !dbg !1936
  call void @llvm.dbg.value(metadata i8* %46, metadata !1792, metadata !DIExpression()) #25, !dbg !1937
  call void @llvm.dbg.value(metadata i32 %49, metadata !1797, metadata !DIExpression()) #25, !dbg !1937
  call void @llvm.dbg.value(metadata i8* %46, metadata !1800, metadata !DIExpression()) #25, !dbg !1939
  call void @llvm.dbg.value(metadata i8* undef, metadata !1810, metadata !DIExpression()) #25, !dbg !1939
  call void @llvm.dbg.value(metadata i64 4, metadata !1811, metadata !DIExpression()) #25, !dbg !1939
  %50 = bitcast i8* %46 to i32*, !dbg !1941
  store i32 %49, i32* %50, align 1, !dbg !1941
  %51 = getelementptr inbounds i8, i8* %1, i64 16, !dbg !1942
  %52 = getelementptr inbounds %struct.sha1_ctx, %struct.sha1_ctx* %0, i64 0, i32 4, !dbg !1943
  %53 = load i32, i32* %52, align 4, !dbg !1943, !tbaa !1850
  call void @llvm.dbg.value(metadata i32 %53, metadata !1783, metadata !DIExpression()) #25, !dbg !1944
  %54 = call i32 @llvm.bswap.i32(i32 %53) #25, !dbg !1946
  call void @llvm.dbg.value(metadata i8* %51, metadata !1792, metadata !DIExpression()) #25, !dbg !1947
  call void @llvm.dbg.value(metadata i32 %54, metadata !1797, metadata !DIExpression()) #25, !dbg !1947
  call void @llvm.dbg.value(metadata i8* %51, metadata !1800, metadata !DIExpression()) #25, !dbg !1949
  call void @llvm.dbg.value(metadata i8* undef, metadata !1810, metadata !DIExpression()) #25, !dbg !1949
  call void @llvm.dbg.value(metadata i64 4, metadata !1811, metadata !DIExpression()) #25, !dbg !1949
  %55 = bitcast i8* %51 to i32*, !dbg !1951
  store i32 %54, i32* %55, align 1, !dbg !1951
  ret i8* %1, !dbg !1952
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #1

; Function Attrs: nofree nounwind sspstrong uwtable
define dso_local void @sha1_process_block(i8* readonly %0, i64 %1, %struct.sha1_ctx* nocapture %2) local_unnamed_addr #13 !dbg !1953 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1957, metadata !DIExpression()), !dbg !1976
  call void @llvm.dbg.value(metadata i64 %1, metadata !1958, metadata !DIExpression()), !dbg !1976
  call void @llvm.dbg.value(metadata %struct.sha1_ctx* %2, metadata !1959, metadata !DIExpression()), !dbg !1976
  %4 = bitcast i8* %0 to i32*, !dbg !1977
  call void @llvm.dbg.value(metadata i32* %4, metadata !1960, metadata !DIExpression()), !dbg !1976
  %5 = lshr i64 %1, 2, !dbg !1978
  call void @llvm.dbg.value(metadata i64 %5, metadata !1963, metadata !DIExpression()), !dbg !1976
  %6 = getelementptr inbounds i32, i32* %4, i64 %5, !dbg !1979
  call void @llvm.dbg.value(metadata i32* %6, metadata !1964, metadata !DIExpression()), !dbg !1976
  %7 = getelementptr inbounds %struct.sha1_ctx, %struct.sha1_ctx* %2, i64 0, i32 0, !dbg !1980
  %8 = load i32, i32* %7, align 4, !dbg !1980, !tbaa !1781
  call void @llvm.dbg.value(metadata i32 %8, metadata !1967, metadata !DIExpression()), !dbg !1976
  %9 = getelementptr inbounds %struct.sha1_ctx, %struct.sha1_ctx* %2, i64 0, i32 1, !dbg !1981
  %10 = load i32, i32* %9, align 4, !dbg !1981, !tbaa !1817
  call void @llvm.dbg.value(metadata i32 %10, metadata !1968, metadata !DIExpression()), !dbg !1976
  %11 = getelementptr inbounds %struct.sha1_ctx, %struct.sha1_ctx* %2, i64 0, i32 2, !dbg !1982
  %12 = load i32, i32* %11, align 4, !dbg !1982, !tbaa !1828
  call void @llvm.dbg.value(metadata i32 %12, metadata !1969, metadata !DIExpression()), !dbg !1976
  %13 = getelementptr inbounds %struct.sha1_ctx, %struct.sha1_ctx* %2, i64 0, i32 3, !dbg !1983
  %14 = load i32, i32* %13, align 4, !dbg !1983, !tbaa !1839
  call void @llvm.dbg.value(metadata i32 %14, metadata !1970, metadata !DIExpression()), !dbg !1976
  %15 = getelementptr inbounds %struct.sha1_ctx, %struct.sha1_ctx* %2, i64 0, i32 4, !dbg !1984
  %16 = load i32, i32* %15, align 4, !dbg !1984, !tbaa !1850
  call void @llvm.dbg.value(metadata i32 %16, metadata !1971, metadata !DIExpression()), !dbg !1976
  %17 = trunc i64 %1 to i32, !dbg !1985
  call void @llvm.dbg.value(metadata i32 %17, metadata !1972, metadata !DIExpression()), !dbg !1976
  %18 = getelementptr inbounds %struct.sha1_ctx, %struct.sha1_ctx* %2, i64 0, i32 5, i64 0, !dbg !1986
  %19 = load i32, i32* %18, align 4, !dbg !1987, !tbaa !1021
  %20 = add i32 %19, %17, !dbg !1987
  store i32 %20, i32* %18, align 4, !dbg !1987, !tbaa !1021
  %21 = lshr i64 %1, 32, !dbg !1988
  %22 = icmp ult i32 %20, %17, !dbg !1989
  %23 = zext i1 %22 to i64, !dbg !1990
  %24 = add nuw nsw i64 %21, %23, !dbg !1991
  %25 = getelementptr inbounds %struct.sha1_ctx, %struct.sha1_ctx* %2, i64 0, i32 5, i64 1, !dbg !1992
  %26 = load i32, i32* %25, align 4, !dbg !1993, !tbaa !1021
  %27 = trunc i64 %24 to i32, !dbg !1993
  %28 = add i32 %26, %27, !dbg !1993
  store i32 %28, i32* %25, align 4, !dbg !1993, !tbaa !1021
  call void @llvm.dbg.value(metadata i32* %4, metadata !1960, metadata !DIExpression()), !dbg !1976
  call void @llvm.dbg.value(metadata i32 %8, metadata !1967, metadata !DIExpression()), !dbg !1976
  call void @llvm.dbg.value(metadata i32 %16, metadata !1971, metadata !DIExpression()), !dbg !1976
  call void @llvm.dbg.value(metadata i32 %14, metadata !1970, metadata !DIExpression()), !dbg !1976
  call void @llvm.dbg.value(metadata i32 %12, metadata !1969, metadata !DIExpression()), !dbg !1976
  call void @llvm.dbg.value(metadata i32 %10, metadata !1968, metadata !DIExpression()), !dbg !1976
  %29 = icmp ugt i32* %6, %4, !dbg !1994
  br i1 %29, label %30, label %1052, !dbg !1995

30:                                               ; preds = %3, %30
  %31 = phi i32* [ %84, %30 ], [ %4, %3 ]
  %32 = phi i32 [ %1042, %30 ], [ %8, %3 ]
  %33 = phi i32 [ %1050, %30 ], [ %16, %3 ]
  %34 = phi i32 [ %1048, %30 ], [ %14, %3 ]
  %35 = phi i32 [ %1046, %30 ], [ %12, %3 ]
  %36 = phi i32 [ %1044, %30 ], [ %10, %3 ]
  call void @llvm.dbg.value(metadata i32* %31, metadata !1960, metadata !DIExpression()), !dbg !1976
  call void @llvm.dbg.value(metadata i32 %32, metadata !1967, metadata !DIExpression()), !dbg !1976
  call void @llvm.dbg.value(metadata i32 %33, metadata !1971, metadata !DIExpression()), !dbg !1976
  call void @llvm.dbg.value(metadata i32 %34, metadata !1970, metadata !DIExpression()), !dbg !1976
  call void @llvm.dbg.value(metadata i32 %35, metadata !1969, metadata !DIExpression()), !dbg !1976
  call void @llvm.dbg.value(metadata i32 %36, metadata !1968, metadata !DIExpression()), !dbg !1976
  call void @llvm.dbg.value(metadata i32 0, metadata !1975, metadata !DIExpression()), !dbg !1996
  call void @llvm.dbg.value(metadata i32* %31, metadata !1960, metadata !DIExpression()), !dbg !1976
  call void @llvm.dbg.value(metadata i64 0, metadata !1975, metadata !DIExpression()), !dbg !1996
  call void @llvm.dbg.value(metadata i32* %31, metadata !1960, metadata !DIExpression()), !dbg !1976
  %37 = load i32, i32* %31, align 4, !dbg !1997, !tbaa !1021
  call void @llvm.dbg.value(metadata i32 %37, metadata !1783, metadata !DIExpression()) #25, !dbg !2001
  %38 = tail call i32 @llvm.bswap.i32(i32 %37) #25, !dbg !2003
  call void @llvm.dbg.value(metadata i32 %38, metadata !1965, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !1976
  %39 = getelementptr inbounds i32, i32* %31, i64 1, !dbg !2004
  call void @llvm.dbg.value(metadata i32* %39, metadata !1960, metadata !DIExpression()), !dbg !1976
  call void @llvm.dbg.value(metadata i64 1, metadata !1975, metadata !DIExpression()), !dbg !1996
  call void @llvm.dbg.value(metadata i64 1, metadata !1975, metadata !DIExpression()), !dbg !1996
  call void @llvm.dbg.value(metadata i32* %39, metadata !1960, metadata !DIExpression()), !dbg !1976
  %40 = load i32, i32* %39, align 4, !dbg !1997, !tbaa !1021
  call void @llvm.dbg.value(metadata i32 %40, metadata !1783, metadata !DIExpression()) #25, !dbg !2001
  %41 = tail call i32 @llvm.bswap.i32(i32 %40) #25, !dbg !2003
  call void @llvm.dbg.value(metadata i32 %41, metadata !1965, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !1976
  %42 = getelementptr inbounds i32, i32* %31, i64 2, !dbg !2004
  call void @llvm.dbg.value(metadata i32* %42, metadata !1960, metadata !DIExpression()), !dbg !1976
  call void @llvm.dbg.value(metadata i64 2, metadata !1975, metadata !DIExpression()), !dbg !1996
  call void @llvm.dbg.value(metadata i64 2, metadata !1975, metadata !DIExpression()), !dbg !1996
  call void @llvm.dbg.value(metadata i32* %42, metadata !1960, metadata !DIExpression()), !dbg !1976
  %43 = load i32, i32* %42, align 4, !dbg !1997, !tbaa !1021
  call void @llvm.dbg.value(metadata i32 %43, metadata !1783, metadata !DIExpression()) #25, !dbg !2001
  %44 = tail call i32 @llvm.bswap.i32(i32 %43) #25, !dbg !2003
  call void @llvm.dbg.value(metadata i32 %44, metadata !1965, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 32)), !dbg !1976
  %45 = getelementptr inbounds i32, i32* %31, i64 3, !dbg !2004
  call void @llvm.dbg.value(metadata i32* %45, metadata !1960, metadata !DIExpression()), !dbg !1976
  call void @llvm.dbg.value(metadata i64 3, metadata !1975, metadata !DIExpression()), !dbg !1996
  call void @llvm.dbg.value(metadata i64 3, metadata !1975, metadata !DIExpression()), !dbg !1996
  call void @llvm.dbg.value(metadata i32* %45, metadata !1960, metadata !DIExpression()), !dbg !1976
  %46 = load i32, i32* %45, align 4, !dbg !1997, !tbaa !1021
  call void @llvm.dbg.value(metadata i32 %46, metadata !1783, metadata !DIExpression()) #25, !dbg !2001
  %47 = tail call i32 @llvm.bswap.i32(i32 %46) #25, !dbg !2003
  call void @llvm.dbg.value(metadata i32 %47, metadata !1965, metadata !DIExpression(DW_OP_LLVM_fragment, 96, 32)), !dbg !1976
  %48 = getelementptr inbounds i32, i32* %31, i64 4, !dbg !2004
  call void @llvm.dbg.value(metadata i32* %48, metadata !1960, metadata !DIExpression()), !dbg !1976
  call void @llvm.dbg.value(metadata i64 4, metadata !1975, metadata !DIExpression()), !dbg !1996
  call void @llvm.dbg.value(metadata i64 4, metadata !1975, metadata !DIExpression()), !dbg !1996
  call void @llvm.dbg.value(metadata i32* %48, metadata !1960, metadata !DIExpression()), !dbg !1976
  %49 = load i32, i32* %48, align 4, !dbg !1997, !tbaa !1021
  call void @llvm.dbg.value(metadata i32 %49, metadata !1783, metadata !DIExpression()) #25, !dbg !2001
  %50 = tail call i32 @llvm.bswap.i32(i32 %49) #25, !dbg !2003
  call void @llvm.dbg.value(metadata i32 %50, metadata !1965, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 32)), !dbg !1976
  %51 = getelementptr inbounds i32, i32* %31, i64 5, !dbg !2004
  call void @llvm.dbg.value(metadata i32* %51, metadata !1960, metadata !DIExpression()), !dbg !1976
  call void @llvm.dbg.value(metadata i64 5, metadata !1975, metadata !DIExpression()), !dbg !1996
  call void @llvm.dbg.value(metadata i64 5, metadata !1975, metadata !DIExpression()), !dbg !1996
  call void @llvm.dbg.value(metadata i32* %51, metadata !1960, metadata !DIExpression()), !dbg !1976
  %52 = load i32, i32* %51, align 4, !dbg !1997, !tbaa !1021
  call void @llvm.dbg.value(metadata i32 %52, metadata !1783, metadata !DIExpression()) #25, !dbg !2001
  %53 = tail call i32 @llvm.bswap.i32(i32 %52) #25, !dbg !2003
  call void @llvm.dbg.value(metadata i32 %53, metadata !1965, metadata !DIExpression(DW_OP_LLVM_fragment, 160, 32)), !dbg !1976
  %54 = getelementptr inbounds i32, i32* %31, i64 6, !dbg !2004
  call void @llvm.dbg.value(metadata i32* %54, metadata !1960, metadata !DIExpression()), !dbg !1976
  call void @llvm.dbg.value(metadata i64 6, metadata !1975, metadata !DIExpression()), !dbg !1996
  call void @llvm.dbg.value(metadata i64 6, metadata !1975, metadata !DIExpression()), !dbg !1996
  call void @llvm.dbg.value(metadata i32* %54, metadata !1960, metadata !DIExpression()), !dbg !1976
  %55 = load i32, i32* %54, align 4, !dbg !1997, !tbaa !1021
  call void @llvm.dbg.value(metadata i32 %55, metadata !1783, metadata !DIExpression()) #25, !dbg !2001
  %56 = tail call i32 @llvm.bswap.i32(i32 %55) #25, !dbg !2003
  call void @llvm.dbg.value(metadata i32 %56, metadata !1965, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 32)), !dbg !1976
  %57 = getelementptr inbounds i32, i32* %31, i64 7, !dbg !2004
  call void @llvm.dbg.value(metadata i32* %57, metadata !1960, metadata !DIExpression()), !dbg !1976
  call void @llvm.dbg.value(metadata i64 7, metadata !1975, metadata !DIExpression()), !dbg !1996
  call void @llvm.dbg.value(metadata i64 7, metadata !1975, metadata !DIExpression()), !dbg !1996
  call void @llvm.dbg.value(metadata i32* %57, metadata !1960, metadata !DIExpression()), !dbg !1976
  %58 = load i32, i32* %57, align 4, !dbg !1997, !tbaa !1021
  call void @llvm.dbg.value(metadata i32 %58, metadata !1783, metadata !DIExpression()) #25, !dbg !2001
  %59 = tail call i32 @llvm.bswap.i32(i32 %58) #25, !dbg !2003
  call void @llvm.dbg.value(metadata i32 %59, metadata !1965, metadata !DIExpression(DW_OP_LLVM_fragment, 224, 32)), !dbg !1976
  %60 = getelementptr inbounds i32, i32* %31, i64 8, !dbg !2004
  call void @llvm.dbg.value(metadata i32* %60, metadata !1960, metadata !DIExpression()), !dbg !1976
  call void @llvm.dbg.value(metadata i64 8, metadata !1975, metadata !DIExpression()), !dbg !1996
  call void @llvm.dbg.value(metadata i64 8, metadata !1975, metadata !DIExpression()), !dbg !1996
  call void @llvm.dbg.value(metadata i32* %60, metadata !1960, metadata !DIExpression()), !dbg !1976
  %61 = load i32, i32* %60, align 4, !dbg !1997, !tbaa !1021
  call void @llvm.dbg.value(metadata i32 %61, metadata !1783, metadata !DIExpression()) #25, !dbg !2001
  %62 = tail call i32 @llvm.bswap.i32(i32 %61) #25, !dbg !2003
  call void @llvm.dbg.value(metadata i32 %62, metadata !1965, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 32)), !dbg !1976
  %63 = getelementptr inbounds i32, i32* %31, i64 9, !dbg !2004
  call void @llvm.dbg.value(metadata i32* %63, metadata !1960, metadata !DIExpression()), !dbg !1976
  call void @llvm.dbg.value(metadata i64 9, metadata !1975, metadata !DIExpression()), !dbg !1996
  call void @llvm.dbg.value(metadata i64 9, metadata !1975, metadata !DIExpression()), !dbg !1996
  call void @llvm.dbg.value(metadata i32* %63, metadata !1960, metadata !DIExpression()), !dbg !1976
  %64 = load i32, i32* %63, align 4, !dbg !1997, !tbaa !1021
  call void @llvm.dbg.value(metadata i32 %64, metadata !1783, metadata !DIExpression()) #25, !dbg !2001
  %65 = tail call i32 @llvm.bswap.i32(i32 %64) #25, !dbg !2003
  call void @llvm.dbg.value(metadata i32 %65, metadata !1965, metadata !DIExpression(DW_OP_LLVM_fragment, 288, 32)), !dbg !1976
  %66 = getelementptr inbounds i32, i32* %31, i64 10, !dbg !2004
  call void @llvm.dbg.value(metadata i32* %66, metadata !1960, metadata !DIExpression()), !dbg !1976
  call void @llvm.dbg.value(metadata i64 10, metadata !1975, metadata !DIExpression()), !dbg !1996
  call void @llvm.dbg.value(metadata i64 10, metadata !1975, metadata !DIExpression()), !dbg !1996
  call void @llvm.dbg.value(metadata i32* %66, metadata !1960, metadata !DIExpression()), !dbg !1976
  %67 = load i32, i32* %66, align 4, !dbg !1997, !tbaa !1021
  call void @llvm.dbg.value(metadata i32 %67, metadata !1783, metadata !DIExpression()) #25, !dbg !2001
  %68 = tail call i32 @llvm.bswap.i32(i32 %67) #25, !dbg !2003
  call void @llvm.dbg.value(metadata i32 %68, metadata !1965, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 32)), !dbg !1976
  %69 = getelementptr inbounds i32, i32* %31, i64 11, !dbg !2004
  call void @llvm.dbg.value(metadata i32* %69, metadata !1960, metadata !DIExpression()), !dbg !1976
  call void @llvm.dbg.value(metadata i64 11, metadata !1975, metadata !DIExpression()), !dbg !1996
  call void @llvm.dbg.value(metadata i64 11, metadata !1975, metadata !DIExpression()), !dbg !1996
  call void @llvm.dbg.value(metadata i32* %69, metadata !1960, metadata !DIExpression()), !dbg !1976
  %70 = load i32, i32* %69, align 4, !dbg !1997, !tbaa !1021
  call void @llvm.dbg.value(metadata i32 %70, metadata !1783, metadata !DIExpression()) #25, !dbg !2001
  %71 = tail call i32 @llvm.bswap.i32(i32 %70) #25, !dbg !2003
  call void @llvm.dbg.value(metadata i32 %71, metadata !1965, metadata !DIExpression(DW_OP_LLVM_fragment, 352, 32)), !dbg !1976
  %72 = getelementptr inbounds i32, i32* %31, i64 12, !dbg !2004
  call void @llvm.dbg.value(metadata i32* %72, metadata !1960, metadata !DIExpression()), !dbg !1976
  call void @llvm.dbg.value(metadata i64 12, metadata !1975, metadata !DIExpression()), !dbg !1996
  call void @llvm.dbg.value(metadata i64 12, metadata !1975, metadata !DIExpression()), !dbg !1996
  call void @llvm.dbg.value(metadata i32* %72, metadata !1960, metadata !DIExpression()), !dbg !1976
  %73 = load i32, i32* %72, align 4, !dbg !1997, !tbaa !1021
  call void @llvm.dbg.value(metadata i32 %73, metadata !1783, metadata !DIExpression()) #25, !dbg !2001
  %74 = tail call i32 @llvm.bswap.i32(i32 %73) #25, !dbg !2003
  call void @llvm.dbg.value(metadata i32 %74, metadata !1965, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 32)), !dbg !1976
  %75 = getelementptr inbounds i32, i32* %31, i64 13, !dbg !2004
  call void @llvm.dbg.value(metadata i32* %75, metadata !1960, metadata !DIExpression()), !dbg !1976
  call void @llvm.dbg.value(metadata i64 13, metadata !1975, metadata !DIExpression()), !dbg !1996
  call void @llvm.dbg.value(metadata i64 13, metadata !1975, metadata !DIExpression()), !dbg !1996
  call void @llvm.dbg.value(metadata i32* %75, metadata !1960, metadata !DIExpression()), !dbg !1976
  %76 = load i32, i32* %75, align 4, !dbg !1997, !tbaa !1021
  call void @llvm.dbg.value(metadata i32 %76, metadata !1783, metadata !DIExpression()) #25, !dbg !2001
  %77 = tail call i32 @llvm.bswap.i32(i32 %76) #25, !dbg !2003
  call void @llvm.dbg.value(metadata i32 %77, metadata !1965, metadata !DIExpression(DW_OP_LLVM_fragment, 416, 32)), !dbg !1976
  %78 = getelementptr inbounds i32, i32* %31, i64 14, !dbg !2004
  call void @llvm.dbg.value(metadata i32* %78, metadata !1960, metadata !DIExpression()), !dbg !1976
  call void @llvm.dbg.value(metadata i64 14, metadata !1975, metadata !DIExpression()), !dbg !1996
  call void @llvm.dbg.value(metadata i64 14, metadata !1975, metadata !DIExpression()), !dbg !1996
  call void @llvm.dbg.value(metadata i32* %78, metadata !1960, metadata !DIExpression()), !dbg !1976
  %79 = load i32, i32* %78, align 4, !dbg !1997, !tbaa !1021
  call void @llvm.dbg.value(metadata i32 %79, metadata !1783, metadata !DIExpression()) #25, !dbg !2001
  %80 = tail call i32 @llvm.bswap.i32(i32 %79) #25, !dbg !2003
  call void @llvm.dbg.value(metadata i32 %80, metadata !1965, metadata !DIExpression(DW_OP_LLVM_fragment, 448, 32)), !dbg !1976
  %81 = getelementptr inbounds i32, i32* %31, i64 15, !dbg !2004
  call void @llvm.dbg.value(metadata i32* %81, metadata !1960, metadata !DIExpression()), !dbg !1976
  call void @llvm.dbg.value(metadata i64 15, metadata !1975, metadata !DIExpression()), !dbg !1996
  call void @llvm.dbg.value(metadata i64 15, metadata !1975, metadata !DIExpression()), !dbg !1996
  call void @llvm.dbg.value(metadata i32* %81, metadata !1960, metadata !DIExpression()), !dbg !1976
  %82 = load i32, i32* %81, align 4, !dbg !1997, !tbaa !1021
  call void @llvm.dbg.value(metadata i32 %82, metadata !1783, metadata !DIExpression()) #25, !dbg !2001
  %83 = tail call i32 @llvm.bswap.i32(i32 %82) #25, !dbg !2003
  call void @llvm.dbg.value(metadata i32 %83, metadata !1965, metadata !DIExpression(DW_OP_LLVM_fragment, 480, 32)), !dbg !1976
  %84 = getelementptr inbounds i32, i32* %31, i64 16, !dbg !2004
  call void @llvm.dbg.value(metadata i32* %84, metadata !1960, metadata !DIExpression()), !dbg !1976
  call void @llvm.dbg.value(metadata i64 16, metadata !1975, metadata !DIExpression()), !dbg !1996
  %85 = tail call i32 @llvm.fshl.i32(i32 %32, i32 %32, i32 5), !dbg !2005
  %86 = xor i32 %34, %35, !dbg !2005
  %87 = and i32 %86, %36, !dbg !2005
  %88 = xor i32 %87, %34, !dbg !2005
  %89 = add i32 %33, 1518500249, !dbg !2005
  %90 = add i32 %89, %88, !dbg !2005
  %91 = add i32 %90, %85, !dbg !2005
  %92 = add i32 %91, %38, !dbg !2005
  call void @llvm.dbg.value(metadata i32 %92, metadata !1971, metadata !DIExpression()), !dbg !1976
  %93 = tail call i32 @llvm.fshl.i32(i32 %36, i32 %36, i32 30), !dbg !2005
  call void @llvm.dbg.value(metadata i32 %93, metadata !1968, metadata !DIExpression()), !dbg !1976
  %94 = tail call i32 @llvm.fshl.i32(i32 %92, i32 %92, i32 5), !dbg !2007
  %95 = xor i32 %93, %35, !dbg !2007
  %96 = and i32 %32, %95, !dbg !2007
  %97 = xor i32 %96, %35, !dbg !2007
  %98 = add i32 %34, 1518500249, !dbg !2007
  %99 = add i32 %98, %97, !dbg !2007
  %100 = add i32 %99, %41, !dbg !2007
  %101 = add i32 %100, %94, !dbg !2007
  call void @llvm.dbg.value(metadata i32 %101, metadata !1970, metadata !DIExpression()), !dbg !1976
  %102 = tail call i32 @llvm.fshl.i32(i32 %32, i32 %32, i32 30), !dbg !2007
  call void @llvm.dbg.value(metadata i32 %102, metadata !1967, metadata !DIExpression()), !dbg !1976
  %103 = tail call i32 @llvm.fshl.i32(i32 %101, i32 %101, i32 5), !dbg !2009
  %104 = xor i32 %102, %93, !dbg !2009
  %105 = and i32 %92, %104, !dbg !2009
  %106 = xor i32 %105, %93, !dbg !2009
  %107 = add i32 %35, 1518500249, !dbg !2009
  %108 = add i32 %107, %44, !dbg !2009
  %109 = add i32 %108, %106, !dbg !2009
  %110 = add i32 %109, %103, !dbg !2009
  call void @llvm.dbg.value(metadata i32 %110, metadata !1969, metadata !DIExpression()), !dbg !1976
  %111 = tail call i32 @llvm.fshl.i32(i32 %92, i32 %92, i32 30), !dbg !2009
  call void @llvm.dbg.value(metadata i32 %111, metadata !1971, metadata !DIExpression()), !dbg !1976
  %112 = tail call i32 @llvm.fshl.i32(i32 %110, i32 %110, i32 5), !dbg !2011
  %113 = xor i32 %111, %102, !dbg !2011
  %114 = and i32 %101, %113, !dbg !2011
  %115 = xor i32 %114, %102, !dbg !2011
  %116 = add i32 %93, 1518500249, !dbg !2011
  %117 = add i32 %116, %47, !dbg !2011
  %118 = add i32 %117, %115, !dbg !2011
  %119 = add i32 %118, %112, !dbg !2011
  call void @llvm.dbg.value(metadata i32 %119, metadata !1968, metadata !DIExpression()), !dbg !1976
  %120 = tail call i32 @llvm.fshl.i32(i32 %101, i32 %101, i32 30), !dbg !2011
  call void @llvm.dbg.value(metadata i32 %120, metadata !1970, metadata !DIExpression()), !dbg !1976
  %121 = tail call i32 @llvm.fshl.i32(i32 %119, i32 %119, i32 5), !dbg !2013
  %122 = xor i32 %120, %111, !dbg !2013
  %123 = and i32 %110, %122, !dbg !2013
  %124 = xor i32 %123, %111, !dbg !2013
  %125 = add i32 %102, 1518500249, !dbg !2013
  %126 = add i32 %125, %50, !dbg !2013
  %127 = add i32 %126, %124, !dbg !2013
  %128 = add i32 %127, %121, !dbg !2013
  call void @llvm.dbg.value(metadata i32 %128, metadata !1967, metadata !DIExpression()), !dbg !1976
  %129 = tail call i32 @llvm.fshl.i32(i32 %110, i32 %110, i32 30), !dbg !2013
  call void @llvm.dbg.value(metadata i32 %129, metadata !1969, metadata !DIExpression()), !dbg !1976
  %130 = tail call i32 @llvm.fshl.i32(i32 %128, i32 %128, i32 5), !dbg !2015
  %131 = xor i32 %129, %120, !dbg !2015
  %132 = and i32 %119, %131, !dbg !2015
  %133 = xor i32 %132, %120, !dbg !2015
  %134 = add i32 %111, 1518500249, !dbg !2015
  %135 = add i32 %134, %53, !dbg !2015
  %136 = add i32 %135, %133, !dbg !2015
  %137 = add i32 %136, %130, !dbg !2015
  call void @llvm.dbg.value(metadata i32 %137, metadata !1971, metadata !DIExpression()), !dbg !1976
  %138 = tail call i32 @llvm.fshl.i32(i32 %119, i32 %119, i32 30), !dbg !2015
  call void @llvm.dbg.value(metadata i32 %138, metadata !1968, metadata !DIExpression()), !dbg !1976
  %139 = tail call i32 @llvm.fshl.i32(i32 %137, i32 %137, i32 5), !dbg !2017
  %140 = xor i32 %138, %129, !dbg !2017
  %141 = and i32 %128, %140, !dbg !2017
  %142 = xor i32 %141, %129, !dbg !2017
  %143 = add i32 %56, 1518500249, !dbg !2017
  %144 = add i32 %143, %120, !dbg !2017
  %145 = add i32 %144, %142, !dbg !2017
  %146 = add i32 %145, %139, !dbg !2017
  call void @llvm.dbg.value(metadata i32 %146, metadata !1970, metadata !DIExpression()), !dbg !1976
  %147 = tail call i32 @llvm.fshl.i32(i32 %128, i32 %128, i32 30), !dbg !2017
  call void @llvm.dbg.value(metadata i32 %147, metadata !1967, metadata !DIExpression()), !dbg !1976
  %148 = tail call i32 @llvm.fshl.i32(i32 %146, i32 %146, i32 5), !dbg !2019
  %149 = xor i32 %147, %138, !dbg !2019
  %150 = and i32 %137, %149, !dbg !2019
  %151 = xor i32 %150, %138, !dbg !2019
  %152 = add i32 %59, 1518500249, !dbg !2019
  %153 = add i32 %152, %129, !dbg !2019
  %154 = add i32 %153, %151, !dbg !2019
  %155 = add i32 %154, %148, !dbg !2019
  call void @llvm.dbg.value(metadata i32 %155, metadata !1969, metadata !DIExpression()), !dbg !1976
  %156 = tail call i32 @llvm.fshl.i32(i32 %137, i32 %137, i32 30), !dbg !2019
  call void @llvm.dbg.value(metadata i32 %156, metadata !1971, metadata !DIExpression()), !dbg !1976
  %157 = tail call i32 @llvm.fshl.i32(i32 %155, i32 %155, i32 5), !dbg !2021
  %158 = xor i32 %156, %147, !dbg !2021
  %159 = and i32 %146, %158, !dbg !2021
  %160 = xor i32 %159, %147, !dbg !2021
  %161 = add i32 %62, 1518500249, !dbg !2021
  %162 = add i32 %161, %138, !dbg !2021
  %163 = add i32 %162, %160, !dbg !2021
  %164 = add i32 %163, %157, !dbg !2021
  call void @llvm.dbg.value(metadata i32 %164, metadata !1968, metadata !DIExpression()), !dbg !1976
  %165 = tail call i32 @llvm.fshl.i32(i32 %146, i32 %146, i32 30), !dbg !2021
  call void @llvm.dbg.value(metadata i32 %165, metadata !1970, metadata !DIExpression()), !dbg !1976
  %166 = tail call i32 @llvm.fshl.i32(i32 %164, i32 %164, i32 5), !dbg !2023
  %167 = xor i32 %165, %156, !dbg !2023
  %168 = and i32 %155, %167, !dbg !2023
  %169 = xor i32 %168, %156, !dbg !2023
  %170 = add i32 %65, 1518500249, !dbg !2023
  %171 = add i32 %170, %147, !dbg !2023
  %172 = add i32 %171, %169, !dbg !2023
  %173 = add i32 %172, %166, !dbg !2023
  call void @llvm.dbg.value(metadata i32 %173, metadata !1967, metadata !DIExpression()), !dbg !1976
  %174 = tail call i32 @llvm.fshl.i32(i32 %155, i32 %155, i32 30), !dbg !2023
  call void @llvm.dbg.value(metadata i32 %174, metadata !1969, metadata !DIExpression()), !dbg !1976
  %175 = tail call i32 @llvm.fshl.i32(i32 %173, i32 %173, i32 5), !dbg !2025
  %176 = xor i32 %174, %165, !dbg !2025
  %177 = and i32 %164, %176, !dbg !2025
  %178 = xor i32 %177, %165, !dbg !2025
  %179 = add i32 %68, 1518500249, !dbg !2025
  %180 = add i32 %179, %156, !dbg !2025
  %181 = add i32 %180, %178, !dbg !2025
  %182 = add i32 %181, %175, !dbg !2025
  call void @llvm.dbg.value(metadata i32 %182, metadata !1971, metadata !DIExpression()), !dbg !1976
  %183 = tail call i32 @llvm.fshl.i32(i32 %164, i32 %164, i32 30), !dbg !2025
  call void @llvm.dbg.value(metadata i32 %183, metadata !1968, metadata !DIExpression()), !dbg !1976
  %184 = tail call i32 @llvm.fshl.i32(i32 %182, i32 %182, i32 5), !dbg !2027
  %185 = xor i32 %183, %174, !dbg !2027
  %186 = and i32 %173, %185, !dbg !2027
  %187 = xor i32 %186, %174, !dbg !2027
  %188 = add i32 %71, 1518500249, !dbg !2027
  %189 = add i32 %188, %165, !dbg !2027
  %190 = add i32 %189, %187, !dbg !2027
  %191 = add i32 %190, %184, !dbg !2027
  call void @llvm.dbg.value(metadata i32 %191, metadata !1970, metadata !DIExpression()), !dbg !1976
  %192 = tail call i32 @llvm.fshl.i32(i32 %173, i32 %173, i32 30), !dbg !2027
  call void @llvm.dbg.value(metadata i32 %192, metadata !1967, metadata !DIExpression()), !dbg !1976
  %193 = tail call i32 @llvm.fshl.i32(i32 %191, i32 %191, i32 5), !dbg !2029
  %194 = xor i32 %192, %183, !dbg !2029
  %195 = and i32 %182, %194, !dbg !2029
  %196 = xor i32 %195, %183, !dbg !2029
  %197 = add i32 %74, 1518500249, !dbg !2029
  %198 = add i32 %197, %174, !dbg !2029
  %199 = add i32 %198, %196, !dbg !2029
  %200 = add i32 %199, %193, !dbg !2029
  call void @llvm.dbg.value(metadata i32 %200, metadata !1969, metadata !DIExpression()), !dbg !1976
  %201 = tail call i32 @llvm.fshl.i32(i32 %182, i32 %182, i32 30), !dbg !2029
  call void @llvm.dbg.value(metadata i32 %201, metadata !1971, metadata !DIExpression()), !dbg !1976
  %202 = tail call i32 @llvm.fshl.i32(i32 %200, i32 %200, i32 5), !dbg !2031
  %203 = xor i32 %201, %192, !dbg !2031
  %204 = and i32 %191, %203, !dbg !2031
  %205 = xor i32 %204, %192, !dbg !2031
  %206 = add i32 %77, 1518500249, !dbg !2031
  %207 = add i32 %206, %183, !dbg !2031
  %208 = add i32 %207, %205, !dbg !2031
  %209 = add i32 %208, %202, !dbg !2031
  call void @llvm.dbg.value(metadata i32 %209, metadata !1968, metadata !DIExpression()), !dbg !1976
  %210 = tail call i32 @llvm.fshl.i32(i32 %191, i32 %191, i32 30), !dbg !2031
  call void @llvm.dbg.value(metadata i32 %210, metadata !1970, metadata !DIExpression()), !dbg !1976
  %211 = tail call i32 @llvm.fshl.i32(i32 %209, i32 %209, i32 5), !dbg !2033
  %212 = xor i32 %210, %201, !dbg !2033
  %213 = and i32 %200, %212, !dbg !2033
  %214 = xor i32 %213, %201, !dbg !2033
  %215 = add i32 %80, 1518500249, !dbg !2033
  %216 = add i32 %215, %192, !dbg !2033
  %217 = add i32 %216, %214, !dbg !2033
  %218 = add i32 %217, %211, !dbg !2033
  call void @llvm.dbg.value(metadata i32 %218, metadata !1967, metadata !DIExpression()), !dbg !1976
  %219 = tail call i32 @llvm.fshl.i32(i32 %200, i32 %200, i32 30), !dbg !2033
  call void @llvm.dbg.value(metadata i32 %219, metadata !1969, metadata !DIExpression()), !dbg !1976
  %220 = tail call i32 @llvm.fshl.i32(i32 %218, i32 %218, i32 5), !dbg !2035
  %221 = xor i32 %219, %210, !dbg !2035
  %222 = and i32 %209, %221, !dbg !2035
  %223 = xor i32 %222, %210, !dbg !2035
  %224 = add i32 %83, 1518500249, !dbg !2035
  %225 = add i32 %224, %201, !dbg !2035
  %226 = add i32 %225, %223, !dbg !2035
  %227 = add i32 %226, %220, !dbg !2035
  call void @llvm.dbg.value(metadata i32 %227, metadata !1971, metadata !DIExpression()), !dbg !1976
  %228 = tail call i32 @llvm.fshl.i32(i32 %209, i32 %209, i32 30), !dbg !2035
  call void @llvm.dbg.value(metadata i32 %228, metadata !1968, metadata !DIExpression()), !dbg !1976
  %229 = tail call i32 @llvm.fshl.i32(i32 %227, i32 %227, i32 5), !dbg !2037
  %230 = xor i32 %228, %219, !dbg !2037
  %231 = and i32 %218, %230, !dbg !2037
  %232 = xor i32 %231, %219, !dbg !2037
  %233 = xor i32 %44, %38, !dbg !2037
  %234 = xor i32 %233, %62, !dbg !2037
  %235 = xor i32 %234, %77, !dbg !2037
  call void @llvm.dbg.value(metadata i32 %235, metadata !1973, metadata !DIExpression()), !dbg !1996
  %236 = tail call i32 @llvm.fshl.i32(i32 %235, i32 %235, i32 1), !dbg !2037
  call void @llvm.dbg.value(metadata i32 %236, metadata !1965, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !1976
  %237 = add i32 %236, 1518500249, !dbg !2037
  %238 = add i32 %237, %210, !dbg !2037
  %239 = add i32 %238, %232, !dbg !2037
  %240 = add i32 %239, %229, !dbg !2037
  call void @llvm.dbg.value(metadata i32 %240, metadata !1970, metadata !DIExpression()), !dbg !1976
  %241 = tail call i32 @llvm.fshl.i32(i32 %218, i32 %218, i32 30), !dbg !2037
  call void @llvm.dbg.value(metadata i32 %241, metadata !1967, metadata !DIExpression()), !dbg !1976
  %242 = tail call i32 @llvm.fshl.i32(i32 %240, i32 %240, i32 5), !dbg !2039
  %243 = xor i32 %241, %228, !dbg !2039
  %244 = and i32 %227, %243, !dbg !2039
  %245 = xor i32 %244, %228, !dbg !2039
  %246 = xor i32 %47, %41, !dbg !2039
  %247 = xor i32 %246, %65, !dbg !2039
  %248 = xor i32 %247, %80, !dbg !2039
  call void @llvm.dbg.value(metadata i32 %248, metadata !1973, metadata !DIExpression()), !dbg !1996
  %249 = tail call i32 @llvm.fshl.i32(i32 %248, i32 %248, i32 1), !dbg !2039
  call void @llvm.dbg.value(metadata i32 %249, metadata !1965, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !1976
  %250 = add i32 %249, 1518500249, !dbg !2039
  %251 = add i32 %250, %219, !dbg !2039
  %252 = add i32 %251, %245, !dbg !2039
  %253 = add i32 %252, %242, !dbg !2039
  call void @llvm.dbg.value(metadata i32 %253, metadata !1969, metadata !DIExpression()), !dbg !1976
  %254 = tail call i32 @llvm.fshl.i32(i32 %227, i32 %227, i32 30), !dbg !2039
  call void @llvm.dbg.value(metadata i32 %254, metadata !1971, metadata !DIExpression()), !dbg !1976
  %255 = tail call i32 @llvm.fshl.i32(i32 %253, i32 %253, i32 5), !dbg !2041
  %256 = xor i32 %254, %241, !dbg !2041
  %257 = and i32 %240, %256, !dbg !2041
  %258 = xor i32 %257, %241, !dbg !2041
  %259 = xor i32 %50, %44, !dbg !2041
  %260 = xor i32 %259, %68, !dbg !2041
  %261 = xor i32 %260, %83, !dbg !2041
  call void @llvm.dbg.value(metadata i32 %261, metadata !1973, metadata !DIExpression()), !dbg !1996
  %262 = tail call i32 @llvm.fshl.i32(i32 %261, i32 %261, i32 1), !dbg !2041
  call void @llvm.dbg.value(metadata i32 %262, metadata !1965, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 32)), !dbg !1976
  %263 = add i32 %262, 1518500249, !dbg !2041
  %264 = add i32 %263, %228, !dbg !2041
  %265 = add i32 %264, %258, !dbg !2041
  %266 = add i32 %265, %255, !dbg !2041
  call void @llvm.dbg.value(metadata i32 %266, metadata !1968, metadata !DIExpression()), !dbg !1976
  %267 = tail call i32 @llvm.fshl.i32(i32 %240, i32 %240, i32 30), !dbg !2041
  call void @llvm.dbg.value(metadata i32 %267, metadata !1970, metadata !DIExpression()), !dbg !1976
  %268 = tail call i32 @llvm.fshl.i32(i32 %266, i32 %266, i32 5), !dbg !2043
  %269 = xor i32 %267, %254, !dbg !2043
  %270 = and i32 %253, %269, !dbg !2043
  %271 = xor i32 %270, %254, !dbg !2043
  %272 = xor i32 %53, %47, !dbg !2043
  %273 = xor i32 %272, %71, !dbg !2043
  %274 = xor i32 %273, %236, !dbg !2043
  call void @llvm.dbg.value(metadata i32 %274, metadata !1973, metadata !DIExpression()), !dbg !1996
  %275 = tail call i32 @llvm.fshl.i32(i32 %274, i32 %274, i32 1), !dbg !2043
  call void @llvm.dbg.value(metadata i32 %275, metadata !1965, metadata !DIExpression(DW_OP_LLVM_fragment, 96, 32)), !dbg !1976
  %276 = add i32 %275, 1518500249, !dbg !2043
  %277 = add i32 %276, %241, !dbg !2043
  %278 = add i32 %277, %271, !dbg !2043
  %279 = add i32 %278, %268, !dbg !2043
  call void @llvm.dbg.value(metadata i32 %279, metadata !1967, metadata !DIExpression()), !dbg !1976
  %280 = tail call i32 @llvm.fshl.i32(i32 %253, i32 %253, i32 30), !dbg !2043
  call void @llvm.dbg.value(metadata i32 %280, metadata !1969, metadata !DIExpression()), !dbg !1976
  %281 = tail call i32 @llvm.fshl.i32(i32 %279, i32 %279, i32 5), !dbg !2045
  %282 = xor i32 %280, %267, !dbg !2045
  %283 = xor i32 %282, %266, !dbg !2045
  %284 = xor i32 %56, %50, !dbg !2045
  %285 = xor i32 %284, %74, !dbg !2045
  %286 = xor i32 %285, %249, !dbg !2045
  call void @llvm.dbg.value(metadata i32 %286, metadata !1973, metadata !DIExpression()), !dbg !1996
  %287 = tail call i32 @llvm.fshl.i32(i32 %286, i32 %286, i32 1), !dbg !2045
  call void @llvm.dbg.value(metadata i32 %287, metadata !1965, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 32)), !dbg !1976
  %288 = add i32 %287, 1859775393, !dbg !2045
  %289 = add i32 %288, %254, !dbg !2045
  %290 = add i32 %289, %283, !dbg !2045
  %291 = add i32 %290, %281, !dbg !2045
  call void @llvm.dbg.value(metadata i32 %291, metadata !1971, metadata !DIExpression()), !dbg !1976
  %292 = tail call i32 @llvm.fshl.i32(i32 %266, i32 %266, i32 30), !dbg !2045
  call void @llvm.dbg.value(metadata i32 %292, metadata !1968, metadata !DIExpression()), !dbg !1976
  %293 = tail call i32 @llvm.fshl.i32(i32 %291, i32 %291, i32 5), !dbg !2047
  %294 = xor i32 %292, %280, !dbg !2047
  %295 = xor i32 %294, %279, !dbg !2047
  %296 = xor i32 %59, %53, !dbg !2047
  %297 = xor i32 %296, %77, !dbg !2047
  %298 = xor i32 %297, %262, !dbg !2047
  call void @llvm.dbg.value(metadata i32 %298, metadata !1973, metadata !DIExpression()), !dbg !1996
  %299 = tail call i32 @llvm.fshl.i32(i32 %298, i32 %298, i32 1), !dbg !2047
  call void @llvm.dbg.value(metadata i32 %299, metadata !1965, metadata !DIExpression(DW_OP_LLVM_fragment, 160, 32)), !dbg !1976
  %300 = add i32 %299, 1859775393, !dbg !2047
  %301 = add i32 %300, %267, !dbg !2047
  %302 = add i32 %301, %295, !dbg !2047
  %303 = add i32 %302, %293, !dbg !2047
  call void @llvm.dbg.value(metadata i32 %303, metadata !1970, metadata !DIExpression()), !dbg !1976
  %304 = tail call i32 @llvm.fshl.i32(i32 %279, i32 %279, i32 30), !dbg !2047
  call void @llvm.dbg.value(metadata i32 %304, metadata !1967, metadata !DIExpression()), !dbg !1976
  %305 = tail call i32 @llvm.fshl.i32(i32 %303, i32 %303, i32 5), !dbg !2049
  %306 = xor i32 %304, %292, !dbg !2049
  %307 = xor i32 %306, %291, !dbg !2049
  %308 = xor i32 %62, %56, !dbg !2049
  %309 = xor i32 %308, %80, !dbg !2049
  %310 = xor i32 %309, %275, !dbg !2049
  call void @llvm.dbg.value(metadata i32 %310, metadata !1973, metadata !DIExpression()), !dbg !1996
  %311 = tail call i32 @llvm.fshl.i32(i32 %310, i32 %310, i32 1), !dbg !2049
  call void @llvm.dbg.value(metadata i32 %311, metadata !1965, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 32)), !dbg !1976
  %312 = add i32 %311, 1859775393, !dbg !2049
  %313 = add i32 %312, %280, !dbg !2049
  %314 = add i32 %313, %307, !dbg !2049
  %315 = add i32 %314, %305, !dbg !2049
  call void @llvm.dbg.value(metadata i32 %315, metadata !1969, metadata !DIExpression()), !dbg !1976
  %316 = tail call i32 @llvm.fshl.i32(i32 %291, i32 %291, i32 30), !dbg !2049
  call void @llvm.dbg.value(metadata i32 %316, metadata !1971, metadata !DIExpression()), !dbg !1976
  %317 = tail call i32 @llvm.fshl.i32(i32 %315, i32 %315, i32 5), !dbg !2051
  %318 = xor i32 %316, %304, !dbg !2051
  %319 = xor i32 %318, %303, !dbg !2051
  %320 = xor i32 %65, %59, !dbg !2051
  %321 = xor i32 %320, %83, !dbg !2051
  %322 = xor i32 %321, %287, !dbg !2051
  call void @llvm.dbg.value(metadata i32 %322, metadata !1973, metadata !DIExpression()), !dbg !1996
  %323 = tail call i32 @llvm.fshl.i32(i32 %322, i32 %322, i32 1), !dbg !2051
  call void @llvm.dbg.value(metadata i32 %323, metadata !1965, metadata !DIExpression(DW_OP_LLVM_fragment, 224, 32)), !dbg !1976
  %324 = add i32 %323, 1859775393, !dbg !2051
  %325 = add i32 %324, %292, !dbg !2051
  %326 = add i32 %325, %319, !dbg !2051
  %327 = add i32 %326, %317, !dbg !2051
  call void @llvm.dbg.value(metadata i32 %327, metadata !1968, metadata !DIExpression()), !dbg !1976
  %328 = tail call i32 @llvm.fshl.i32(i32 %303, i32 %303, i32 30), !dbg !2051
  call void @llvm.dbg.value(metadata i32 %328, metadata !1970, metadata !DIExpression()), !dbg !1976
  %329 = tail call i32 @llvm.fshl.i32(i32 %327, i32 %327, i32 5), !dbg !2053
  %330 = xor i32 %328, %316, !dbg !2053
  %331 = xor i32 %330, %315, !dbg !2053
  %332 = xor i32 %68, %62, !dbg !2053
  %333 = xor i32 %332, %236, !dbg !2053
  %334 = xor i32 %333, %299, !dbg !2053
  call void @llvm.dbg.value(metadata i32 %334, metadata !1973, metadata !DIExpression()), !dbg !1996
  %335 = tail call i32 @llvm.fshl.i32(i32 %334, i32 %334, i32 1), !dbg !2053
  call void @llvm.dbg.value(metadata i32 %335, metadata !1965, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 32)), !dbg !1976
  %336 = add i32 %335, 1859775393, !dbg !2053
  %337 = add i32 %336, %304, !dbg !2053
  %338 = add i32 %337, %331, !dbg !2053
  %339 = add i32 %338, %329, !dbg !2053
  call void @llvm.dbg.value(metadata i32 %339, metadata !1967, metadata !DIExpression()), !dbg !1976
  %340 = tail call i32 @llvm.fshl.i32(i32 %315, i32 %315, i32 30), !dbg !2053
  call void @llvm.dbg.value(metadata i32 %340, metadata !1969, metadata !DIExpression()), !dbg !1976
  %341 = tail call i32 @llvm.fshl.i32(i32 %339, i32 %339, i32 5), !dbg !2055
  %342 = xor i32 %340, %328, !dbg !2055
  %343 = xor i32 %342, %327, !dbg !2055
  %344 = xor i32 %71, %65, !dbg !2055
  %345 = xor i32 %344, %249, !dbg !2055
  %346 = xor i32 %345, %311, !dbg !2055
  call void @llvm.dbg.value(metadata i32 %346, metadata !1973, metadata !DIExpression()), !dbg !1996
  %347 = tail call i32 @llvm.fshl.i32(i32 %346, i32 %346, i32 1), !dbg !2055
  call void @llvm.dbg.value(metadata i32 %347, metadata !1965, metadata !DIExpression(DW_OP_LLVM_fragment, 288, 32)), !dbg !1976
  %348 = add i32 %347, 1859775393, !dbg !2055
  %349 = add i32 %348, %316, !dbg !2055
  %350 = add i32 %349, %343, !dbg !2055
  %351 = add i32 %350, %341, !dbg !2055
  call void @llvm.dbg.value(metadata i32 %351, metadata !1971, metadata !DIExpression()), !dbg !1976
  %352 = tail call i32 @llvm.fshl.i32(i32 %327, i32 %327, i32 30), !dbg !2055
  call void @llvm.dbg.value(metadata i32 %352, metadata !1968, metadata !DIExpression()), !dbg !1976
  %353 = tail call i32 @llvm.fshl.i32(i32 %351, i32 %351, i32 5), !dbg !2057
  %354 = xor i32 %352, %340, !dbg !2057
  %355 = xor i32 %354, %339, !dbg !2057
  %356 = xor i32 %74, %68, !dbg !2057
  %357 = xor i32 %356, %262, !dbg !2057
  %358 = xor i32 %357, %323, !dbg !2057
  call void @llvm.dbg.value(metadata i32 %358, metadata !1973, metadata !DIExpression()), !dbg !1996
  %359 = tail call i32 @llvm.fshl.i32(i32 %358, i32 %358, i32 1), !dbg !2057
  call void @llvm.dbg.value(metadata i32 %359, metadata !1965, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 32)), !dbg !1976
  %360 = add i32 %359, 1859775393, !dbg !2057
  %361 = add i32 %360, %328, !dbg !2057
  %362 = add i32 %361, %355, !dbg !2057
  %363 = add i32 %362, %353, !dbg !2057
  call void @llvm.dbg.value(metadata i32 %363, metadata !1970, metadata !DIExpression()), !dbg !1976
  %364 = tail call i32 @llvm.fshl.i32(i32 %339, i32 %339, i32 30), !dbg !2057
  call void @llvm.dbg.value(metadata i32 %364, metadata !1967, metadata !DIExpression()), !dbg !1976
  %365 = tail call i32 @llvm.fshl.i32(i32 %363, i32 %363, i32 5), !dbg !2059
  %366 = xor i32 %364, %352, !dbg !2059
  %367 = xor i32 %366, %351, !dbg !2059
  %368 = xor i32 %77, %71, !dbg !2059
  %369 = xor i32 %368, %275, !dbg !2059
  %370 = xor i32 %369, %335, !dbg !2059
  call void @llvm.dbg.value(metadata i32 %370, metadata !1973, metadata !DIExpression()), !dbg !1996
  %371 = tail call i32 @llvm.fshl.i32(i32 %370, i32 %370, i32 1), !dbg !2059
  call void @llvm.dbg.value(metadata i32 %371, metadata !1965, metadata !DIExpression(DW_OP_LLVM_fragment, 352, 32)), !dbg !1976
  %372 = add i32 %371, 1859775393, !dbg !2059
  %373 = add i32 %372, %340, !dbg !2059
  %374 = add i32 %373, %367, !dbg !2059
  %375 = add i32 %374, %365, !dbg !2059
  call void @llvm.dbg.value(metadata i32 %375, metadata !1969, metadata !DIExpression()), !dbg !1976
  %376 = tail call i32 @llvm.fshl.i32(i32 %351, i32 %351, i32 30), !dbg !2059
  call void @llvm.dbg.value(metadata i32 %376, metadata !1971, metadata !DIExpression()), !dbg !1976
  %377 = tail call i32 @llvm.fshl.i32(i32 %375, i32 %375, i32 5), !dbg !2061
  %378 = xor i32 %376, %364, !dbg !2061
  %379 = xor i32 %378, %363, !dbg !2061
  %380 = xor i32 %80, %74, !dbg !2061
  %381 = xor i32 %380, %287, !dbg !2061
  %382 = xor i32 %381, %347, !dbg !2061
  call void @llvm.dbg.value(metadata i32 %382, metadata !1973, metadata !DIExpression()), !dbg !1996
  %383 = tail call i32 @llvm.fshl.i32(i32 %382, i32 %382, i32 1), !dbg !2061
  call void @llvm.dbg.value(metadata i32 %383, metadata !1965, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 32)), !dbg !1976
  %384 = add i32 %383, 1859775393, !dbg !2061
  %385 = add i32 %384, %352, !dbg !2061
  %386 = add i32 %385, %379, !dbg !2061
  %387 = add i32 %386, %377, !dbg !2061
  call void @llvm.dbg.value(metadata i32 %387, metadata !1968, metadata !DIExpression()), !dbg !1976
  %388 = tail call i32 @llvm.fshl.i32(i32 %363, i32 %363, i32 30), !dbg !2061
  call void @llvm.dbg.value(metadata i32 %388, metadata !1970, metadata !DIExpression()), !dbg !1976
  %389 = tail call i32 @llvm.fshl.i32(i32 %387, i32 %387, i32 5), !dbg !2063
  %390 = xor i32 %388, %376, !dbg !2063
  %391 = xor i32 %390, %375, !dbg !2063
  %392 = xor i32 %83, %77, !dbg !2063
  %393 = xor i32 %392, %299, !dbg !2063
  %394 = xor i32 %393, %359, !dbg !2063
  call void @llvm.dbg.value(metadata i32 %394, metadata !1973, metadata !DIExpression()), !dbg !1996
  %395 = tail call i32 @llvm.fshl.i32(i32 %394, i32 %394, i32 1), !dbg !2063
  call void @llvm.dbg.value(metadata i32 %395, metadata !1965, metadata !DIExpression(DW_OP_LLVM_fragment, 416, 32)), !dbg !1976
  %396 = add i32 %395, 1859775393, !dbg !2063
  %397 = add i32 %396, %364, !dbg !2063
  %398 = add i32 %397, %391, !dbg !2063
  %399 = add i32 %398, %389, !dbg !2063
  call void @llvm.dbg.value(metadata i32 %399, metadata !1967, metadata !DIExpression()), !dbg !1976
  %400 = tail call i32 @llvm.fshl.i32(i32 %375, i32 %375, i32 30), !dbg !2063
  call void @llvm.dbg.value(metadata i32 %400, metadata !1969, metadata !DIExpression()), !dbg !1976
  %401 = tail call i32 @llvm.fshl.i32(i32 %399, i32 %399, i32 5), !dbg !2065
  %402 = xor i32 %400, %388, !dbg !2065
  %403 = xor i32 %402, %387, !dbg !2065
  %404 = xor i32 %236, %80, !dbg !2065
  %405 = xor i32 %404, %311, !dbg !2065
  %406 = xor i32 %405, %371, !dbg !2065
  call void @llvm.dbg.value(metadata i32 %406, metadata !1973, metadata !DIExpression()), !dbg !1996
  %407 = tail call i32 @llvm.fshl.i32(i32 %406, i32 %406, i32 1), !dbg !2065
  call void @llvm.dbg.value(metadata i32 %407, metadata !1965, metadata !DIExpression(DW_OP_LLVM_fragment, 448, 32)), !dbg !1976
  %408 = add i32 %407, 1859775393, !dbg !2065
  %409 = add i32 %408, %376, !dbg !2065
  %410 = add i32 %409, %403, !dbg !2065
  %411 = add i32 %410, %401, !dbg !2065
  call void @llvm.dbg.value(metadata i32 %411, metadata !1971, metadata !DIExpression()), !dbg !1976
  %412 = tail call i32 @llvm.fshl.i32(i32 %387, i32 %387, i32 30), !dbg !2065
  call void @llvm.dbg.value(metadata i32 %412, metadata !1968, metadata !DIExpression()), !dbg !1976
  %413 = tail call i32 @llvm.fshl.i32(i32 %411, i32 %411, i32 5), !dbg !2067
  %414 = xor i32 %412, %400, !dbg !2067
  %415 = xor i32 %414, %399, !dbg !2067
  %416 = xor i32 %249, %83, !dbg !2067
  %417 = xor i32 %416, %323, !dbg !2067
  %418 = xor i32 %417, %383, !dbg !2067
  call void @llvm.dbg.value(metadata i32 %418, metadata !1973, metadata !DIExpression()), !dbg !1996
  %419 = tail call i32 @llvm.fshl.i32(i32 %418, i32 %418, i32 1), !dbg !2067
  call void @llvm.dbg.value(metadata i32 %419, metadata !1965, metadata !DIExpression(DW_OP_LLVM_fragment, 480, 32)), !dbg !1976
  %420 = add i32 %419, 1859775393, !dbg !2067
  %421 = add i32 %420, %388, !dbg !2067
  %422 = add i32 %421, %415, !dbg !2067
  %423 = add i32 %422, %413, !dbg !2067
  call void @llvm.dbg.value(metadata i32 %423, metadata !1970, metadata !DIExpression()), !dbg !1976
  %424 = tail call i32 @llvm.fshl.i32(i32 %399, i32 %399, i32 30), !dbg !2067
  call void @llvm.dbg.value(metadata i32 %424, metadata !1967, metadata !DIExpression()), !dbg !1976
  %425 = tail call i32 @llvm.fshl.i32(i32 %423, i32 %423, i32 5), !dbg !2069
  %426 = xor i32 %424, %412, !dbg !2069
  %427 = xor i32 %426, %411, !dbg !2069
  %428 = xor i32 %262, %236, !dbg !2069
  %429 = xor i32 %428, %335, !dbg !2069
  %430 = xor i32 %429, %395, !dbg !2069
  call void @llvm.dbg.value(metadata i32 %430, metadata !1973, metadata !DIExpression()), !dbg !1996
  %431 = tail call i32 @llvm.fshl.i32(i32 %430, i32 %430, i32 1), !dbg !2069
  call void @llvm.dbg.value(metadata i32 %431, metadata !1965, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !1976
  %432 = add i32 %431, 1859775393, !dbg !2069
  %433 = add i32 %432, %400, !dbg !2069
  %434 = add i32 %433, %427, !dbg !2069
  %435 = add i32 %434, %425, !dbg !2069
  call void @llvm.dbg.value(metadata i32 %435, metadata !1969, metadata !DIExpression()), !dbg !1976
  %436 = tail call i32 @llvm.fshl.i32(i32 %411, i32 %411, i32 30), !dbg !2069
  call void @llvm.dbg.value(metadata i32 %436, metadata !1971, metadata !DIExpression()), !dbg !1976
  %437 = tail call i32 @llvm.fshl.i32(i32 %435, i32 %435, i32 5), !dbg !2071
  %438 = xor i32 %436, %424, !dbg !2071
  %439 = xor i32 %438, %423, !dbg !2071
  %440 = xor i32 %275, %249, !dbg !2071
  %441 = xor i32 %440, %347, !dbg !2071
  %442 = xor i32 %441, %407, !dbg !2071
  call void @llvm.dbg.value(metadata i32 %442, metadata !1973, metadata !DIExpression()), !dbg !1996
  %443 = tail call i32 @llvm.fshl.i32(i32 %442, i32 %442, i32 1), !dbg !2071
  call void @llvm.dbg.value(metadata i32 %443, metadata !1965, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !1976
  %444 = add i32 %443, 1859775393, !dbg !2071
  %445 = add i32 %444, %412, !dbg !2071
  %446 = add i32 %445, %439, !dbg !2071
  %447 = add i32 %446, %437, !dbg !2071
  call void @llvm.dbg.value(metadata i32 %447, metadata !1968, metadata !DIExpression()), !dbg !1976
  %448 = tail call i32 @llvm.fshl.i32(i32 %423, i32 %423, i32 30), !dbg !2071
  call void @llvm.dbg.value(metadata i32 %448, metadata !1970, metadata !DIExpression()), !dbg !1976
  %449 = tail call i32 @llvm.fshl.i32(i32 %447, i32 %447, i32 5), !dbg !2073
  %450 = xor i32 %448, %436, !dbg !2073
  %451 = xor i32 %450, %435, !dbg !2073
  %452 = xor i32 %287, %262, !dbg !2073
  %453 = xor i32 %452, %359, !dbg !2073
  %454 = xor i32 %453, %419, !dbg !2073
  call void @llvm.dbg.value(metadata i32 %454, metadata !1973, metadata !DIExpression()), !dbg !1996
  %455 = tail call i32 @llvm.fshl.i32(i32 %454, i32 %454, i32 1), !dbg !2073
  call void @llvm.dbg.value(metadata i32 %455, metadata !1965, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 32)), !dbg !1976
  %456 = add i32 %455, 1859775393, !dbg !2073
  %457 = add i32 %456, %424, !dbg !2073
  %458 = add i32 %457, %451, !dbg !2073
  %459 = add i32 %458, %449, !dbg !2073
  call void @llvm.dbg.value(metadata i32 %459, metadata !1967, metadata !DIExpression()), !dbg !1976
  %460 = tail call i32 @llvm.fshl.i32(i32 %435, i32 %435, i32 30), !dbg !2073
  call void @llvm.dbg.value(metadata i32 %460, metadata !1969, metadata !DIExpression()), !dbg !1976
  %461 = tail call i32 @llvm.fshl.i32(i32 %459, i32 %459, i32 5), !dbg !2075
  %462 = xor i32 %460, %448, !dbg !2075
  %463 = xor i32 %462, %447, !dbg !2075
  %464 = xor i32 %299, %275, !dbg !2075
  %465 = xor i32 %464, %371, !dbg !2075
  %466 = xor i32 %465, %431, !dbg !2075
  call void @llvm.dbg.value(metadata i32 %466, metadata !1973, metadata !DIExpression()), !dbg !1996
  %467 = tail call i32 @llvm.fshl.i32(i32 %466, i32 %466, i32 1), !dbg !2075
  call void @llvm.dbg.value(metadata i32 %467, metadata !1965, metadata !DIExpression(DW_OP_LLVM_fragment, 96, 32)), !dbg !1976
  %468 = add i32 %467, 1859775393, !dbg !2075
  %469 = add i32 %468, %436, !dbg !2075
  %470 = add i32 %469, %463, !dbg !2075
  %471 = add i32 %470, %461, !dbg !2075
  call void @llvm.dbg.value(metadata i32 %471, metadata !1971, metadata !DIExpression()), !dbg !1976
  %472 = tail call i32 @llvm.fshl.i32(i32 %447, i32 %447, i32 30), !dbg !2075
  call void @llvm.dbg.value(metadata i32 %472, metadata !1968, metadata !DIExpression()), !dbg !1976
  %473 = tail call i32 @llvm.fshl.i32(i32 %471, i32 %471, i32 5), !dbg !2077
  %474 = xor i32 %472, %460, !dbg !2077
  %475 = xor i32 %474, %459, !dbg !2077
  %476 = xor i32 %311, %287, !dbg !2077
  %477 = xor i32 %476, %383, !dbg !2077
  %478 = xor i32 %477, %443, !dbg !2077
  call void @llvm.dbg.value(metadata i32 %478, metadata !1973, metadata !DIExpression()), !dbg !1996
  %479 = tail call i32 @llvm.fshl.i32(i32 %478, i32 %478, i32 1), !dbg !2077
  call void @llvm.dbg.value(metadata i32 %479, metadata !1965, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 32)), !dbg !1976
  %480 = add i32 %479, 1859775393, !dbg !2077
  %481 = add i32 %480, %448, !dbg !2077
  %482 = add i32 %481, %475, !dbg !2077
  %483 = add i32 %482, %473, !dbg !2077
  call void @llvm.dbg.value(metadata i32 %483, metadata !1970, metadata !DIExpression()), !dbg !1976
  %484 = tail call i32 @llvm.fshl.i32(i32 %459, i32 %459, i32 30), !dbg !2077
  call void @llvm.dbg.value(metadata i32 %484, metadata !1967, metadata !DIExpression()), !dbg !1976
  %485 = tail call i32 @llvm.fshl.i32(i32 %483, i32 %483, i32 5), !dbg !2079
  %486 = xor i32 %484, %472, !dbg !2079
  %487 = xor i32 %486, %471, !dbg !2079
  %488 = xor i32 %323, %299, !dbg !2079
  %489 = xor i32 %488, %395, !dbg !2079
  %490 = xor i32 %489, %455, !dbg !2079
  call void @llvm.dbg.value(metadata i32 %490, metadata !1973, metadata !DIExpression()), !dbg !1996
  %491 = tail call i32 @llvm.fshl.i32(i32 %490, i32 %490, i32 1), !dbg !2079
  call void @llvm.dbg.value(metadata i32 %491, metadata !1965, metadata !DIExpression(DW_OP_LLVM_fragment, 160, 32)), !dbg !1976
  %492 = add i32 %491, 1859775393, !dbg !2079
  %493 = add i32 %492, %460, !dbg !2079
  %494 = add i32 %493, %487, !dbg !2079
  %495 = add i32 %494, %485, !dbg !2079
  call void @llvm.dbg.value(metadata i32 %495, metadata !1969, metadata !DIExpression()), !dbg !1976
  %496 = tail call i32 @llvm.fshl.i32(i32 %471, i32 %471, i32 30), !dbg !2079
  call void @llvm.dbg.value(metadata i32 %496, metadata !1971, metadata !DIExpression()), !dbg !1976
  %497 = tail call i32 @llvm.fshl.i32(i32 %495, i32 %495, i32 5), !dbg !2081
  %498 = xor i32 %496, %484, !dbg !2081
  %499 = xor i32 %498, %483, !dbg !2081
  %500 = xor i32 %335, %311, !dbg !2081
  %501 = xor i32 %500, %407, !dbg !2081
  %502 = xor i32 %501, %467, !dbg !2081
  call void @llvm.dbg.value(metadata i32 %502, metadata !1973, metadata !DIExpression()), !dbg !1996
  %503 = tail call i32 @llvm.fshl.i32(i32 %502, i32 %502, i32 1), !dbg !2081
  call void @llvm.dbg.value(metadata i32 %503, metadata !1965, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 32)), !dbg !1976
  %504 = add i32 %503, 1859775393, !dbg !2081
  %505 = add i32 %504, %472, !dbg !2081
  %506 = add i32 %505, %499, !dbg !2081
  %507 = add i32 %506, %497, !dbg !2081
  call void @llvm.dbg.value(metadata i32 %507, metadata !1968, metadata !DIExpression()), !dbg !1976
  %508 = tail call i32 @llvm.fshl.i32(i32 %483, i32 %483, i32 30), !dbg !2081
  call void @llvm.dbg.value(metadata i32 %508, metadata !1970, metadata !DIExpression()), !dbg !1976
  %509 = tail call i32 @llvm.fshl.i32(i32 %507, i32 %507, i32 5), !dbg !2083
  %510 = xor i32 %508, %496, !dbg !2083
  %511 = xor i32 %510, %495, !dbg !2083
  %512 = xor i32 %347, %323, !dbg !2083
  %513 = xor i32 %512, %419, !dbg !2083
  %514 = xor i32 %513, %479, !dbg !2083
  call void @llvm.dbg.value(metadata i32 %514, metadata !1973, metadata !DIExpression()), !dbg !1996
  %515 = tail call i32 @llvm.fshl.i32(i32 %514, i32 %514, i32 1), !dbg !2083
  call void @llvm.dbg.value(metadata i32 %515, metadata !1965, metadata !DIExpression(DW_OP_LLVM_fragment, 224, 32)), !dbg !1976
  %516 = add i32 %515, 1859775393, !dbg !2083
  %517 = add i32 %516, %484, !dbg !2083
  %518 = add i32 %517, %511, !dbg !2083
  %519 = add i32 %518, %509, !dbg !2083
  call void @llvm.dbg.value(metadata i32 %519, metadata !1967, metadata !DIExpression()), !dbg !1976
  %520 = tail call i32 @llvm.fshl.i32(i32 %495, i32 %495, i32 30), !dbg !2083
  call void @llvm.dbg.value(metadata i32 %520, metadata !1969, metadata !DIExpression()), !dbg !1976
  %521 = tail call i32 @llvm.fshl.i32(i32 %519, i32 %519, i32 5), !dbg !2085
  %522 = and i32 %507, %520, !dbg !2085
  %523 = or i32 %507, %520, !dbg !2085
  %524 = and i32 %523, %508, !dbg !2085
  %525 = or i32 %524, %522, !dbg !2085
  %526 = xor i32 %359, %335, !dbg !2085
  %527 = xor i32 %526, %431, !dbg !2085
  %528 = xor i32 %527, %491, !dbg !2085
  call void @llvm.dbg.value(metadata i32 %528, metadata !1973, metadata !DIExpression()), !dbg !1996
  %529 = tail call i32 @llvm.fshl.i32(i32 %528, i32 %528, i32 1), !dbg !2085
  call void @llvm.dbg.value(metadata i32 %529, metadata !1965, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 32)), !dbg !1976
  %530 = add i32 %529, -1894007588, !dbg !2085
  %531 = add i32 %530, %496, !dbg !2085
  %532 = add i32 %531, %525, !dbg !2085
  %533 = add i32 %532, %521, !dbg !2085
  call void @llvm.dbg.value(metadata i32 %533, metadata !1971, metadata !DIExpression()), !dbg !1976
  %534 = tail call i32 @llvm.fshl.i32(i32 %507, i32 %507, i32 30), !dbg !2085
  call void @llvm.dbg.value(metadata i32 %534, metadata !1968, metadata !DIExpression()), !dbg !1976
  %535 = tail call i32 @llvm.fshl.i32(i32 %533, i32 %533, i32 5), !dbg !2087
  %536 = and i32 %519, %534, !dbg !2087
  %537 = or i32 %519, %534, !dbg !2087
  %538 = and i32 %537, %520, !dbg !2087
  %539 = or i32 %538, %536, !dbg !2087
  %540 = xor i32 %371, %347, !dbg !2087
  %541 = xor i32 %540, %443, !dbg !2087
  %542 = xor i32 %541, %503, !dbg !2087
  call void @llvm.dbg.value(metadata i32 %542, metadata !1973, metadata !DIExpression()), !dbg !1996
  %543 = tail call i32 @llvm.fshl.i32(i32 %542, i32 %542, i32 1), !dbg !2087
  call void @llvm.dbg.value(metadata i32 %543, metadata !1965, metadata !DIExpression(DW_OP_LLVM_fragment, 288, 32)), !dbg !1976
  %544 = add i32 %543, -1894007588, !dbg !2087
  %545 = add i32 %544, %508, !dbg !2087
  %546 = add i32 %545, %539, !dbg !2087
  %547 = add i32 %546, %535, !dbg !2087
  call void @llvm.dbg.value(metadata i32 %547, metadata !1970, metadata !DIExpression()), !dbg !1976
  %548 = tail call i32 @llvm.fshl.i32(i32 %519, i32 %519, i32 30), !dbg !2087
  call void @llvm.dbg.value(metadata i32 %548, metadata !1967, metadata !DIExpression()), !dbg !1976
  %549 = tail call i32 @llvm.fshl.i32(i32 %547, i32 %547, i32 5), !dbg !2089
  %550 = and i32 %533, %548, !dbg !2089
  %551 = or i32 %533, %548, !dbg !2089
  %552 = and i32 %551, %534, !dbg !2089
  %553 = or i32 %552, %550, !dbg !2089
  %554 = xor i32 %383, %359, !dbg !2089
  %555 = xor i32 %554, %455, !dbg !2089
  %556 = xor i32 %555, %515, !dbg !2089
  call void @llvm.dbg.value(metadata i32 %556, metadata !1973, metadata !DIExpression()), !dbg !1996
  %557 = tail call i32 @llvm.fshl.i32(i32 %556, i32 %556, i32 1), !dbg !2089
  call void @llvm.dbg.value(metadata i32 %557, metadata !1965, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 32)), !dbg !1976
  %558 = add i32 %557, -1894007588, !dbg !2089
  %559 = add i32 %558, %520, !dbg !2089
  %560 = add i32 %559, %553, !dbg !2089
  %561 = add i32 %560, %549, !dbg !2089
  call void @llvm.dbg.value(metadata i32 %561, metadata !1969, metadata !DIExpression()), !dbg !1976
  %562 = tail call i32 @llvm.fshl.i32(i32 %533, i32 %533, i32 30), !dbg !2089
  call void @llvm.dbg.value(metadata i32 %562, metadata !1971, metadata !DIExpression()), !dbg !1976
  %563 = tail call i32 @llvm.fshl.i32(i32 %561, i32 %561, i32 5), !dbg !2091
  %564 = and i32 %547, %562, !dbg !2091
  %565 = or i32 %547, %562, !dbg !2091
  %566 = and i32 %565, %548, !dbg !2091
  %567 = or i32 %566, %564, !dbg !2091
  %568 = xor i32 %395, %371, !dbg !2091
  %569 = xor i32 %568, %467, !dbg !2091
  %570 = xor i32 %569, %529, !dbg !2091
  call void @llvm.dbg.value(metadata i32 %570, metadata !1973, metadata !DIExpression()), !dbg !1996
  %571 = tail call i32 @llvm.fshl.i32(i32 %570, i32 %570, i32 1), !dbg !2091
  call void @llvm.dbg.value(metadata i32 %571, metadata !1965, metadata !DIExpression(DW_OP_LLVM_fragment, 352, 32)), !dbg !1976
  %572 = add i32 %571, -1894007588, !dbg !2091
  %573 = add i32 %572, %534, !dbg !2091
  %574 = add i32 %573, %567, !dbg !2091
  %575 = add i32 %574, %563, !dbg !2091
  call void @llvm.dbg.value(metadata i32 %575, metadata !1968, metadata !DIExpression()), !dbg !1976
  %576 = tail call i32 @llvm.fshl.i32(i32 %547, i32 %547, i32 30), !dbg !2091
  call void @llvm.dbg.value(metadata i32 %576, metadata !1970, metadata !DIExpression()), !dbg !1976
  %577 = tail call i32 @llvm.fshl.i32(i32 %575, i32 %575, i32 5), !dbg !2093
  %578 = and i32 %561, %576, !dbg !2093
  %579 = or i32 %561, %576, !dbg !2093
  %580 = and i32 %579, %562, !dbg !2093
  %581 = or i32 %580, %578, !dbg !2093
  %582 = xor i32 %407, %383, !dbg !2093
  %583 = xor i32 %582, %479, !dbg !2093
  %584 = xor i32 %583, %543, !dbg !2093
  call void @llvm.dbg.value(metadata i32 %584, metadata !1973, metadata !DIExpression()), !dbg !1996
  %585 = tail call i32 @llvm.fshl.i32(i32 %584, i32 %584, i32 1), !dbg !2093
  call void @llvm.dbg.value(metadata i32 %585, metadata !1965, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 32)), !dbg !1976
  %586 = add i32 %585, -1894007588, !dbg !2093
  %587 = add i32 %586, %548, !dbg !2093
  %588 = add i32 %587, %581, !dbg !2093
  %589 = add i32 %588, %577, !dbg !2093
  call void @llvm.dbg.value(metadata i32 %589, metadata !1967, metadata !DIExpression()), !dbg !1976
  %590 = tail call i32 @llvm.fshl.i32(i32 %561, i32 %561, i32 30), !dbg !2093
  call void @llvm.dbg.value(metadata i32 %590, metadata !1969, metadata !DIExpression()), !dbg !1976
  %591 = tail call i32 @llvm.fshl.i32(i32 %589, i32 %589, i32 5), !dbg !2095
  %592 = and i32 %575, %590, !dbg !2095
  %593 = or i32 %575, %590, !dbg !2095
  %594 = and i32 %593, %576, !dbg !2095
  %595 = or i32 %594, %592, !dbg !2095
  %596 = xor i32 %419, %395, !dbg !2095
  %597 = xor i32 %596, %491, !dbg !2095
  %598 = xor i32 %597, %557, !dbg !2095
  call void @llvm.dbg.value(metadata i32 %598, metadata !1973, metadata !DIExpression()), !dbg !1996
  %599 = tail call i32 @llvm.fshl.i32(i32 %598, i32 %598, i32 1), !dbg !2095
  call void @llvm.dbg.value(metadata i32 %599, metadata !1965, metadata !DIExpression(DW_OP_LLVM_fragment, 416, 32)), !dbg !1976
  %600 = add i32 %599, -1894007588, !dbg !2095
  %601 = add i32 %600, %562, !dbg !2095
  %602 = add i32 %601, %595, !dbg !2095
  %603 = add i32 %602, %591, !dbg !2095
  call void @llvm.dbg.value(metadata i32 %603, metadata !1971, metadata !DIExpression()), !dbg !1976
  %604 = tail call i32 @llvm.fshl.i32(i32 %575, i32 %575, i32 30), !dbg !2095
  call void @llvm.dbg.value(metadata i32 %604, metadata !1968, metadata !DIExpression()), !dbg !1976
  %605 = tail call i32 @llvm.fshl.i32(i32 %603, i32 %603, i32 5), !dbg !2097
  %606 = and i32 %589, %604, !dbg !2097
  %607 = or i32 %589, %604, !dbg !2097
  %608 = and i32 %607, %590, !dbg !2097
  %609 = or i32 %608, %606, !dbg !2097
  %610 = xor i32 %431, %407, !dbg !2097
  %611 = xor i32 %610, %503, !dbg !2097
  %612 = xor i32 %611, %571, !dbg !2097
  call void @llvm.dbg.value(metadata i32 %612, metadata !1973, metadata !DIExpression()), !dbg !1996
  %613 = tail call i32 @llvm.fshl.i32(i32 %612, i32 %612, i32 1), !dbg !2097
  call void @llvm.dbg.value(metadata i32 %613, metadata !1965, metadata !DIExpression(DW_OP_LLVM_fragment, 448, 32)), !dbg !1976
  %614 = add i32 %613, -1894007588, !dbg !2097
  %615 = add i32 %614, %576, !dbg !2097
  %616 = add i32 %615, %609, !dbg !2097
  %617 = add i32 %616, %605, !dbg !2097
  call void @llvm.dbg.value(metadata i32 %617, metadata !1970, metadata !DIExpression()), !dbg !1976
  %618 = tail call i32 @llvm.fshl.i32(i32 %589, i32 %589, i32 30), !dbg !2097
  call void @llvm.dbg.value(metadata i32 %618, metadata !1967, metadata !DIExpression()), !dbg !1976
  %619 = tail call i32 @llvm.fshl.i32(i32 %617, i32 %617, i32 5), !dbg !2099
  %620 = and i32 %603, %618, !dbg !2099
  %621 = or i32 %603, %618, !dbg !2099
  %622 = and i32 %621, %604, !dbg !2099
  %623 = or i32 %622, %620, !dbg !2099
  %624 = xor i32 %443, %419, !dbg !2099
  %625 = xor i32 %624, %515, !dbg !2099
  %626 = xor i32 %625, %585, !dbg !2099
  call void @llvm.dbg.value(metadata i32 %626, metadata !1973, metadata !DIExpression()), !dbg !1996
  %627 = tail call i32 @llvm.fshl.i32(i32 %626, i32 %626, i32 1), !dbg !2099
  call void @llvm.dbg.value(metadata i32 %627, metadata !1965, metadata !DIExpression(DW_OP_LLVM_fragment, 480, 32)), !dbg !1976
  %628 = add i32 %627, -1894007588, !dbg !2099
  %629 = add i32 %628, %590, !dbg !2099
  %630 = add i32 %629, %623, !dbg !2099
  %631 = add i32 %630, %619, !dbg !2099
  call void @llvm.dbg.value(metadata i32 %631, metadata !1969, metadata !DIExpression()), !dbg !1976
  %632 = tail call i32 @llvm.fshl.i32(i32 %603, i32 %603, i32 30), !dbg !2099
  call void @llvm.dbg.value(metadata i32 %632, metadata !1971, metadata !DIExpression()), !dbg !1976
  %633 = tail call i32 @llvm.fshl.i32(i32 %631, i32 %631, i32 5), !dbg !2101
  %634 = and i32 %617, %632, !dbg !2101
  %635 = or i32 %617, %632, !dbg !2101
  %636 = and i32 %635, %618, !dbg !2101
  %637 = or i32 %636, %634, !dbg !2101
  %638 = xor i32 %455, %431, !dbg !2101
  %639 = xor i32 %638, %529, !dbg !2101
  %640 = xor i32 %639, %599, !dbg !2101
  call void @llvm.dbg.value(metadata i32 %640, metadata !1973, metadata !DIExpression()), !dbg !1996
  %641 = tail call i32 @llvm.fshl.i32(i32 %640, i32 %640, i32 1), !dbg !2101
  call void @llvm.dbg.value(metadata i32 %641, metadata !1965, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !1976
  %642 = add i32 %641, -1894007588, !dbg !2101
  %643 = add i32 %642, %604, !dbg !2101
  %644 = add i32 %643, %637, !dbg !2101
  %645 = add i32 %644, %633, !dbg !2101
  call void @llvm.dbg.value(metadata i32 %645, metadata !1968, metadata !DIExpression()), !dbg !1976
  %646 = tail call i32 @llvm.fshl.i32(i32 %617, i32 %617, i32 30), !dbg !2101
  call void @llvm.dbg.value(metadata i32 %646, metadata !1970, metadata !DIExpression()), !dbg !1976
  %647 = tail call i32 @llvm.fshl.i32(i32 %645, i32 %645, i32 5), !dbg !2103
  %648 = and i32 %631, %646, !dbg !2103
  %649 = or i32 %631, %646, !dbg !2103
  %650 = and i32 %649, %632, !dbg !2103
  %651 = or i32 %650, %648, !dbg !2103
  %652 = xor i32 %467, %443, !dbg !2103
  %653 = xor i32 %652, %543, !dbg !2103
  %654 = xor i32 %653, %613, !dbg !2103
  call void @llvm.dbg.value(metadata i32 %654, metadata !1973, metadata !DIExpression()), !dbg !1996
  %655 = tail call i32 @llvm.fshl.i32(i32 %654, i32 %654, i32 1), !dbg !2103
  call void @llvm.dbg.value(metadata i32 %655, metadata !1965, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !1976
  %656 = add i32 %655, -1894007588, !dbg !2103
  %657 = add i32 %656, %618, !dbg !2103
  %658 = add i32 %657, %651, !dbg !2103
  %659 = add i32 %658, %647, !dbg !2103
  call void @llvm.dbg.value(metadata i32 %659, metadata !1967, metadata !DIExpression()), !dbg !1976
  %660 = tail call i32 @llvm.fshl.i32(i32 %631, i32 %631, i32 30), !dbg !2103
  call void @llvm.dbg.value(metadata i32 %660, metadata !1969, metadata !DIExpression()), !dbg !1976
  %661 = tail call i32 @llvm.fshl.i32(i32 %659, i32 %659, i32 5), !dbg !2105
  %662 = and i32 %645, %660, !dbg !2105
  %663 = or i32 %645, %660, !dbg !2105
  %664 = and i32 %663, %646, !dbg !2105
  %665 = or i32 %664, %662, !dbg !2105
  %666 = xor i32 %479, %455, !dbg !2105
  %667 = xor i32 %666, %557, !dbg !2105
  %668 = xor i32 %667, %627, !dbg !2105
  call void @llvm.dbg.value(metadata i32 %668, metadata !1973, metadata !DIExpression()), !dbg !1996
  %669 = tail call i32 @llvm.fshl.i32(i32 %668, i32 %668, i32 1), !dbg !2105
  call void @llvm.dbg.value(metadata i32 %669, metadata !1965, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 32)), !dbg !1976
  %670 = add i32 %669, -1894007588, !dbg !2105
  %671 = add i32 %670, %632, !dbg !2105
  %672 = add i32 %671, %665, !dbg !2105
  %673 = add i32 %672, %661, !dbg !2105
  call void @llvm.dbg.value(metadata i32 %673, metadata !1971, metadata !DIExpression()), !dbg !1976
  %674 = tail call i32 @llvm.fshl.i32(i32 %645, i32 %645, i32 30), !dbg !2105
  call void @llvm.dbg.value(metadata i32 %674, metadata !1968, metadata !DIExpression()), !dbg !1976
  %675 = tail call i32 @llvm.fshl.i32(i32 %673, i32 %673, i32 5), !dbg !2107
  %676 = and i32 %659, %674, !dbg !2107
  %677 = or i32 %659, %674, !dbg !2107
  %678 = and i32 %677, %660, !dbg !2107
  %679 = or i32 %678, %676, !dbg !2107
  %680 = xor i32 %491, %467, !dbg !2107
  %681 = xor i32 %680, %571, !dbg !2107
  %682 = xor i32 %681, %641, !dbg !2107
  call void @llvm.dbg.value(metadata i32 %682, metadata !1973, metadata !DIExpression()), !dbg !1996
  %683 = tail call i32 @llvm.fshl.i32(i32 %682, i32 %682, i32 1), !dbg !2107
  call void @llvm.dbg.value(metadata i32 %683, metadata !1965, metadata !DIExpression(DW_OP_LLVM_fragment, 96, 32)), !dbg !1976
  %684 = add i32 %683, -1894007588, !dbg !2107
  %685 = add i32 %684, %646, !dbg !2107
  %686 = add i32 %685, %679, !dbg !2107
  %687 = add i32 %686, %675, !dbg !2107
  call void @llvm.dbg.value(metadata i32 %687, metadata !1970, metadata !DIExpression()), !dbg !1976
  %688 = tail call i32 @llvm.fshl.i32(i32 %659, i32 %659, i32 30), !dbg !2107
  call void @llvm.dbg.value(metadata i32 %688, metadata !1967, metadata !DIExpression()), !dbg !1976
  %689 = tail call i32 @llvm.fshl.i32(i32 %687, i32 %687, i32 5), !dbg !2109
  %690 = and i32 %673, %688, !dbg !2109
  %691 = or i32 %673, %688, !dbg !2109
  %692 = and i32 %691, %674, !dbg !2109
  %693 = or i32 %692, %690, !dbg !2109
  %694 = xor i32 %503, %479, !dbg !2109
  %695 = xor i32 %694, %585, !dbg !2109
  %696 = xor i32 %695, %655, !dbg !2109
  call void @llvm.dbg.value(metadata i32 %696, metadata !1973, metadata !DIExpression()), !dbg !1996
  %697 = tail call i32 @llvm.fshl.i32(i32 %696, i32 %696, i32 1), !dbg !2109
  call void @llvm.dbg.value(metadata i32 %697, metadata !1965, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 32)), !dbg !1976
  %698 = add i32 %697, -1894007588, !dbg !2109
  %699 = add i32 %698, %660, !dbg !2109
  %700 = add i32 %699, %693, !dbg !2109
  %701 = add i32 %700, %689, !dbg !2109
  call void @llvm.dbg.value(metadata i32 %701, metadata !1969, metadata !DIExpression()), !dbg !1976
  %702 = tail call i32 @llvm.fshl.i32(i32 %673, i32 %673, i32 30), !dbg !2109
  call void @llvm.dbg.value(metadata i32 %702, metadata !1971, metadata !DIExpression()), !dbg !1976
  %703 = tail call i32 @llvm.fshl.i32(i32 %701, i32 %701, i32 5), !dbg !2111
  %704 = and i32 %687, %702, !dbg !2111
  %705 = or i32 %687, %702, !dbg !2111
  %706 = and i32 %705, %688, !dbg !2111
  %707 = or i32 %706, %704, !dbg !2111
  %708 = xor i32 %515, %491, !dbg !2111
  %709 = xor i32 %708, %599, !dbg !2111
  %710 = xor i32 %709, %669, !dbg !2111
  call void @llvm.dbg.value(metadata i32 %710, metadata !1973, metadata !DIExpression()), !dbg !1996
  %711 = tail call i32 @llvm.fshl.i32(i32 %710, i32 %710, i32 1), !dbg !2111
  call void @llvm.dbg.value(metadata i32 %711, metadata !1965, metadata !DIExpression(DW_OP_LLVM_fragment, 160, 32)), !dbg !1976
  %712 = add i32 %711, -1894007588, !dbg !2111
  %713 = add i32 %712, %674, !dbg !2111
  %714 = add i32 %713, %707, !dbg !2111
  %715 = add i32 %714, %703, !dbg !2111
  call void @llvm.dbg.value(metadata i32 %715, metadata !1968, metadata !DIExpression()), !dbg !1976
  %716 = tail call i32 @llvm.fshl.i32(i32 %687, i32 %687, i32 30), !dbg !2111
  call void @llvm.dbg.value(metadata i32 %716, metadata !1970, metadata !DIExpression()), !dbg !1976
  %717 = tail call i32 @llvm.fshl.i32(i32 %715, i32 %715, i32 5), !dbg !2113
  %718 = and i32 %701, %716, !dbg !2113
  %719 = or i32 %701, %716, !dbg !2113
  %720 = and i32 %719, %702, !dbg !2113
  %721 = or i32 %720, %718, !dbg !2113
  %722 = xor i32 %529, %503, !dbg !2113
  %723 = xor i32 %722, %613, !dbg !2113
  %724 = xor i32 %723, %683, !dbg !2113
  call void @llvm.dbg.value(metadata i32 %724, metadata !1973, metadata !DIExpression()), !dbg !1996
  %725 = tail call i32 @llvm.fshl.i32(i32 %724, i32 %724, i32 1), !dbg !2113
  call void @llvm.dbg.value(metadata i32 %725, metadata !1965, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 32)), !dbg !1976
  %726 = add i32 %725, -1894007588, !dbg !2113
  %727 = add i32 %726, %688, !dbg !2113
  %728 = add i32 %727, %721, !dbg !2113
  %729 = add i32 %728, %717, !dbg !2113
  call void @llvm.dbg.value(metadata i32 %729, metadata !1967, metadata !DIExpression()), !dbg !1976
  %730 = tail call i32 @llvm.fshl.i32(i32 %701, i32 %701, i32 30), !dbg !2113
  call void @llvm.dbg.value(metadata i32 %730, metadata !1969, metadata !DIExpression()), !dbg !1976
  %731 = tail call i32 @llvm.fshl.i32(i32 %729, i32 %729, i32 5), !dbg !2115
  %732 = and i32 %715, %730, !dbg !2115
  %733 = or i32 %715, %730, !dbg !2115
  %734 = and i32 %733, %716, !dbg !2115
  %735 = or i32 %734, %732, !dbg !2115
  %736 = xor i32 %543, %515, !dbg !2115
  %737 = xor i32 %736, %627, !dbg !2115
  %738 = xor i32 %737, %697, !dbg !2115
  call void @llvm.dbg.value(metadata i32 %738, metadata !1973, metadata !DIExpression()), !dbg !1996
  %739 = tail call i32 @llvm.fshl.i32(i32 %738, i32 %738, i32 1), !dbg !2115
  call void @llvm.dbg.value(metadata i32 %739, metadata !1965, metadata !DIExpression(DW_OP_LLVM_fragment, 224, 32)), !dbg !1976
  %740 = add i32 %739, -1894007588, !dbg !2115
  %741 = add i32 %740, %702, !dbg !2115
  %742 = add i32 %741, %735, !dbg !2115
  %743 = add i32 %742, %731, !dbg !2115
  call void @llvm.dbg.value(metadata i32 %743, metadata !1971, metadata !DIExpression()), !dbg !1976
  %744 = tail call i32 @llvm.fshl.i32(i32 %715, i32 %715, i32 30), !dbg !2115
  call void @llvm.dbg.value(metadata i32 %744, metadata !1968, metadata !DIExpression()), !dbg !1976
  %745 = tail call i32 @llvm.fshl.i32(i32 %743, i32 %743, i32 5), !dbg !2117
  %746 = and i32 %729, %744, !dbg !2117
  %747 = or i32 %729, %744, !dbg !2117
  %748 = and i32 %747, %730, !dbg !2117
  %749 = or i32 %748, %746, !dbg !2117
  %750 = xor i32 %557, %529, !dbg !2117
  %751 = xor i32 %750, %641, !dbg !2117
  %752 = xor i32 %751, %711, !dbg !2117
  call void @llvm.dbg.value(metadata i32 %752, metadata !1973, metadata !DIExpression()), !dbg !1996
  %753 = tail call i32 @llvm.fshl.i32(i32 %752, i32 %752, i32 1), !dbg !2117
  call void @llvm.dbg.value(metadata i32 %753, metadata !1965, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 32)), !dbg !1976
  %754 = add i32 %753, -1894007588, !dbg !2117
  %755 = add i32 %754, %716, !dbg !2117
  %756 = add i32 %755, %749, !dbg !2117
  %757 = add i32 %756, %745, !dbg !2117
  call void @llvm.dbg.value(metadata i32 %757, metadata !1970, metadata !DIExpression()), !dbg !1976
  %758 = tail call i32 @llvm.fshl.i32(i32 %729, i32 %729, i32 30), !dbg !2117
  call void @llvm.dbg.value(metadata i32 %758, metadata !1967, metadata !DIExpression()), !dbg !1976
  %759 = tail call i32 @llvm.fshl.i32(i32 %757, i32 %757, i32 5), !dbg !2119
  %760 = and i32 %743, %758, !dbg !2119
  %761 = or i32 %743, %758, !dbg !2119
  %762 = and i32 %761, %744, !dbg !2119
  %763 = or i32 %762, %760, !dbg !2119
  %764 = xor i32 %571, %543, !dbg !2119
  %765 = xor i32 %764, %655, !dbg !2119
  %766 = xor i32 %765, %725, !dbg !2119
  call void @llvm.dbg.value(metadata i32 %766, metadata !1973, metadata !DIExpression()), !dbg !1996
  %767 = tail call i32 @llvm.fshl.i32(i32 %766, i32 %766, i32 1), !dbg !2119
  call void @llvm.dbg.value(metadata i32 %767, metadata !1965, metadata !DIExpression(DW_OP_LLVM_fragment, 288, 32)), !dbg !1976
  %768 = add i32 %767, -1894007588, !dbg !2119
  %769 = add i32 %768, %730, !dbg !2119
  %770 = add i32 %769, %763, !dbg !2119
  %771 = add i32 %770, %759, !dbg !2119
  call void @llvm.dbg.value(metadata i32 %771, metadata !1969, metadata !DIExpression()), !dbg !1976
  %772 = tail call i32 @llvm.fshl.i32(i32 %743, i32 %743, i32 30), !dbg !2119
  call void @llvm.dbg.value(metadata i32 %772, metadata !1971, metadata !DIExpression()), !dbg !1976
  %773 = tail call i32 @llvm.fshl.i32(i32 %771, i32 %771, i32 5), !dbg !2121
  %774 = and i32 %757, %772, !dbg !2121
  %775 = or i32 %757, %772, !dbg !2121
  %776 = and i32 %775, %758, !dbg !2121
  %777 = or i32 %776, %774, !dbg !2121
  %778 = xor i32 %585, %557, !dbg !2121
  %779 = xor i32 %778, %669, !dbg !2121
  %780 = xor i32 %779, %739, !dbg !2121
  call void @llvm.dbg.value(metadata i32 %780, metadata !1973, metadata !DIExpression()), !dbg !1996
  %781 = tail call i32 @llvm.fshl.i32(i32 %780, i32 %780, i32 1), !dbg !2121
  call void @llvm.dbg.value(metadata i32 %781, metadata !1965, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 32)), !dbg !1976
  %782 = add i32 %781, -1894007588, !dbg !2121
  %783 = add i32 %782, %744, !dbg !2121
  %784 = add i32 %783, %777, !dbg !2121
  %785 = add i32 %784, %773, !dbg !2121
  call void @llvm.dbg.value(metadata i32 %785, metadata !1968, metadata !DIExpression()), !dbg !1976
  %786 = tail call i32 @llvm.fshl.i32(i32 %757, i32 %757, i32 30), !dbg !2121
  call void @llvm.dbg.value(metadata i32 %786, metadata !1970, metadata !DIExpression()), !dbg !1976
  %787 = tail call i32 @llvm.fshl.i32(i32 %785, i32 %785, i32 5), !dbg !2123
  %788 = and i32 %771, %786, !dbg !2123
  %789 = or i32 %771, %786, !dbg !2123
  %790 = and i32 %789, %772, !dbg !2123
  %791 = or i32 %790, %788, !dbg !2123
  %792 = xor i32 %599, %571, !dbg !2123
  %793 = xor i32 %792, %683, !dbg !2123
  %794 = xor i32 %793, %753, !dbg !2123
  call void @llvm.dbg.value(metadata i32 %794, metadata !1973, metadata !DIExpression()), !dbg !1996
  %795 = tail call i32 @llvm.fshl.i32(i32 %794, i32 %794, i32 1), !dbg !2123
  call void @llvm.dbg.value(metadata i32 %795, metadata !1965, metadata !DIExpression(DW_OP_LLVM_fragment, 352, 32)), !dbg !1976
  %796 = add i32 %795, -1894007588, !dbg !2123
  %797 = add i32 %796, %758, !dbg !2123
  %798 = add i32 %797, %791, !dbg !2123
  %799 = add i32 %798, %787, !dbg !2123
  call void @llvm.dbg.value(metadata i32 %799, metadata !1967, metadata !DIExpression()), !dbg !1976
  %800 = tail call i32 @llvm.fshl.i32(i32 %771, i32 %771, i32 30), !dbg !2123
  call void @llvm.dbg.value(metadata i32 %800, metadata !1969, metadata !DIExpression()), !dbg !1976
  %801 = tail call i32 @llvm.fshl.i32(i32 %799, i32 %799, i32 5), !dbg !2125
  %802 = xor i32 %800, %786, !dbg !2125
  %803 = xor i32 %802, %785, !dbg !2125
  %804 = xor i32 %613, %585, !dbg !2125
  %805 = xor i32 %804, %697, !dbg !2125
  %806 = xor i32 %805, %767, !dbg !2125
  call void @llvm.dbg.value(metadata i32 %806, metadata !1973, metadata !DIExpression()), !dbg !1996
  %807 = tail call i32 @llvm.fshl.i32(i32 %806, i32 %806, i32 1), !dbg !2125
  call void @llvm.dbg.value(metadata i32 %807, metadata !1965, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 32)), !dbg !1976
  %808 = add i32 %807, -899497514, !dbg !2125
  %809 = add i32 %808, %772, !dbg !2125
  %810 = add i32 %809, %803, !dbg !2125
  %811 = add i32 %810, %801, !dbg !2125
  call void @llvm.dbg.value(metadata i32 %811, metadata !1971, metadata !DIExpression()), !dbg !1976
  %812 = tail call i32 @llvm.fshl.i32(i32 %785, i32 %785, i32 30), !dbg !2125
  call void @llvm.dbg.value(metadata i32 %812, metadata !1968, metadata !DIExpression()), !dbg !1976
  %813 = tail call i32 @llvm.fshl.i32(i32 %811, i32 %811, i32 5), !dbg !2127
  %814 = xor i32 %812, %800, !dbg !2127
  %815 = xor i32 %814, %799, !dbg !2127
  %816 = xor i32 %627, %599, !dbg !2127
  %817 = xor i32 %816, %711, !dbg !2127
  %818 = xor i32 %817, %781, !dbg !2127
  call void @llvm.dbg.value(metadata i32 %818, metadata !1973, metadata !DIExpression()), !dbg !1996
  %819 = tail call i32 @llvm.fshl.i32(i32 %818, i32 %818, i32 1), !dbg !2127
  call void @llvm.dbg.value(metadata i32 %819, metadata !1965, metadata !DIExpression(DW_OP_LLVM_fragment, 416, 32)), !dbg !1976
  %820 = add i32 %819, -899497514, !dbg !2127
  %821 = add i32 %820, %786, !dbg !2127
  %822 = add i32 %821, %815, !dbg !2127
  %823 = add i32 %822, %813, !dbg !2127
  call void @llvm.dbg.value(metadata i32 %823, metadata !1970, metadata !DIExpression()), !dbg !1976
  %824 = tail call i32 @llvm.fshl.i32(i32 %799, i32 %799, i32 30), !dbg !2127
  call void @llvm.dbg.value(metadata i32 %824, metadata !1967, metadata !DIExpression()), !dbg !1976
  %825 = tail call i32 @llvm.fshl.i32(i32 %823, i32 %823, i32 5), !dbg !2129
  %826 = xor i32 %824, %812, !dbg !2129
  %827 = xor i32 %826, %811, !dbg !2129
  %828 = xor i32 %641, %613, !dbg !2129
  %829 = xor i32 %828, %725, !dbg !2129
  %830 = xor i32 %829, %795, !dbg !2129
  call void @llvm.dbg.value(metadata i32 %830, metadata !1973, metadata !DIExpression()), !dbg !1996
  %831 = tail call i32 @llvm.fshl.i32(i32 %830, i32 %830, i32 1), !dbg !2129
  call void @llvm.dbg.value(metadata i32 %831, metadata !1965, metadata !DIExpression(DW_OP_LLVM_fragment, 448, 32)), !dbg !1976
  %832 = add i32 %831, -899497514, !dbg !2129
  %833 = add i32 %832, %800, !dbg !2129
  %834 = add i32 %833, %827, !dbg !2129
  %835 = add i32 %834, %825, !dbg !2129
  call void @llvm.dbg.value(metadata i32 %835, metadata !1969, metadata !DIExpression()), !dbg !1976
  %836 = tail call i32 @llvm.fshl.i32(i32 %811, i32 %811, i32 30), !dbg !2129
  call void @llvm.dbg.value(metadata i32 %836, metadata !1971, metadata !DIExpression()), !dbg !1976
  %837 = tail call i32 @llvm.fshl.i32(i32 %835, i32 %835, i32 5), !dbg !2131
  %838 = xor i32 %836, %824, !dbg !2131
  %839 = xor i32 %838, %823, !dbg !2131
  %840 = xor i32 %655, %627, !dbg !2131
  %841 = xor i32 %840, %739, !dbg !2131
  %842 = xor i32 %841, %807, !dbg !2131
  call void @llvm.dbg.value(metadata i32 %842, metadata !1973, metadata !DIExpression()), !dbg !1996
  %843 = tail call i32 @llvm.fshl.i32(i32 %842, i32 %842, i32 1), !dbg !2131
  call void @llvm.dbg.value(metadata i32 %843, metadata !1965, metadata !DIExpression(DW_OP_LLVM_fragment, 480, 32)), !dbg !1976
  %844 = add i32 %843, -899497514, !dbg !2131
  %845 = add i32 %844, %812, !dbg !2131
  %846 = add i32 %845, %839, !dbg !2131
  %847 = add i32 %846, %837, !dbg !2131
  call void @llvm.dbg.value(metadata i32 %847, metadata !1968, metadata !DIExpression()), !dbg !1976
  %848 = tail call i32 @llvm.fshl.i32(i32 %823, i32 %823, i32 30), !dbg !2131
  call void @llvm.dbg.value(metadata i32 %848, metadata !1970, metadata !DIExpression()), !dbg !1976
  %849 = tail call i32 @llvm.fshl.i32(i32 %847, i32 %847, i32 5), !dbg !2133
  %850 = xor i32 %848, %836, !dbg !2133
  %851 = xor i32 %850, %835, !dbg !2133
  %852 = xor i32 %669, %641, !dbg !2133
  %853 = xor i32 %852, %753, !dbg !2133
  %854 = xor i32 %853, %819, !dbg !2133
  call void @llvm.dbg.value(metadata i32 %854, metadata !1973, metadata !DIExpression()), !dbg !1996
  %855 = tail call i32 @llvm.fshl.i32(i32 %854, i32 %854, i32 1), !dbg !2133
  call void @llvm.dbg.value(metadata i32 %855, metadata !1965, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !1976
  %856 = add i32 %855, -899497514, !dbg !2133
  %857 = add i32 %856, %824, !dbg !2133
  %858 = add i32 %857, %851, !dbg !2133
  %859 = add i32 %858, %849, !dbg !2133
  call void @llvm.dbg.value(metadata i32 %859, metadata !1967, metadata !DIExpression()), !dbg !1976
  %860 = tail call i32 @llvm.fshl.i32(i32 %835, i32 %835, i32 30), !dbg !2133
  call void @llvm.dbg.value(metadata i32 %860, metadata !1969, metadata !DIExpression()), !dbg !1976
  %861 = tail call i32 @llvm.fshl.i32(i32 %859, i32 %859, i32 5), !dbg !2135
  %862 = xor i32 %860, %848, !dbg !2135
  %863 = xor i32 %862, %847, !dbg !2135
  %864 = xor i32 %683, %655, !dbg !2135
  %865 = xor i32 %864, %767, !dbg !2135
  %866 = xor i32 %865, %831, !dbg !2135
  call void @llvm.dbg.value(metadata i32 %866, metadata !1973, metadata !DIExpression()), !dbg !1996
  %867 = tail call i32 @llvm.fshl.i32(i32 %866, i32 %866, i32 1), !dbg !2135
  call void @llvm.dbg.value(metadata i32 %867, metadata !1965, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !1976
  %868 = add i32 %867, -899497514, !dbg !2135
  %869 = add i32 %868, %836, !dbg !2135
  %870 = add i32 %869, %863, !dbg !2135
  %871 = add i32 %870, %861, !dbg !2135
  call void @llvm.dbg.value(metadata i32 %871, metadata !1971, metadata !DIExpression()), !dbg !1976
  %872 = tail call i32 @llvm.fshl.i32(i32 %847, i32 %847, i32 30), !dbg !2135
  call void @llvm.dbg.value(metadata i32 %872, metadata !1968, metadata !DIExpression()), !dbg !1976
  %873 = tail call i32 @llvm.fshl.i32(i32 %871, i32 %871, i32 5), !dbg !2137
  %874 = xor i32 %872, %860, !dbg !2137
  %875 = xor i32 %874, %859, !dbg !2137
  %876 = xor i32 %697, %669, !dbg !2137
  %877 = xor i32 %876, %781, !dbg !2137
  %878 = xor i32 %877, %843, !dbg !2137
  call void @llvm.dbg.value(metadata i32 %878, metadata !1973, metadata !DIExpression()), !dbg !1996
  %879 = tail call i32 @llvm.fshl.i32(i32 %878, i32 %878, i32 1), !dbg !2137
  call void @llvm.dbg.value(metadata i32 %879, metadata !1965, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 32)), !dbg !1976
  %880 = add i32 %879, -899497514, !dbg !2137
  %881 = add i32 %880, %848, !dbg !2137
  %882 = add i32 %881, %875, !dbg !2137
  %883 = add i32 %882, %873, !dbg !2137
  call void @llvm.dbg.value(metadata i32 %883, metadata !1970, metadata !DIExpression()), !dbg !1976
  %884 = tail call i32 @llvm.fshl.i32(i32 %859, i32 %859, i32 30), !dbg !2137
  call void @llvm.dbg.value(metadata i32 %884, metadata !1967, metadata !DIExpression()), !dbg !1976
  %885 = tail call i32 @llvm.fshl.i32(i32 %883, i32 %883, i32 5), !dbg !2139
  %886 = xor i32 %884, %872, !dbg !2139
  %887 = xor i32 %886, %871, !dbg !2139
  %888 = xor i32 %711, %683, !dbg !2139
  %889 = xor i32 %888, %795, !dbg !2139
  %890 = xor i32 %889, %855, !dbg !2139
  call void @llvm.dbg.value(metadata i32 %890, metadata !1973, metadata !DIExpression()), !dbg !1996
  %891 = tail call i32 @llvm.fshl.i32(i32 %890, i32 %890, i32 1), !dbg !2139
  call void @llvm.dbg.value(metadata i32 %891, metadata !1965, metadata !DIExpression(DW_OP_LLVM_fragment, 96, 32)), !dbg !1976
  %892 = add i32 %891, -899497514, !dbg !2139
  %893 = add i32 %892, %860, !dbg !2139
  %894 = add i32 %893, %887, !dbg !2139
  %895 = add i32 %894, %885, !dbg !2139
  call void @llvm.dbg.value(metadata i32 %895, metadata !1969, metadata !DIExpression()), !dbg !1976
  %896 = tail call i32 @llvm.fshl.i32(i32 %871, i32 %871, i32 30), !dbg !2139
  call void @llvm.dbg.value(metadata i32 %896, metadata !1971, metadata !DIExpression()), !dbg !1976
  %897 = tail call i32 @llvm.fshl.i32(i32 %895, i32 %895, i32 5), !dbg !2141
  %898 = xor i32 %896, %884, !dbg !2141
  %899 = xor i32 %898, %883, !dbg !2141
  %900 = xor i32 %725, %697, !dbg !2141
  %901 = xor i32 %900, %807, !dbg !2141
  %902 = xor i32 %901, %867, !dbg !2141
  call void @llvm.dbg.value(metadata i32 %902, metadata !1973, metadata !DIExpression()), !dbg !1996
  %903 = tail call i32 @llvm.fshl.i32(i32 %902, i32 %902, i32 1), !dbg !2141
  call void @llvm.dbg.value(metadata i32 %903, metadata !1965, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 32)), !dbg !1976
  %904 = add i32 %903, -899497514, !dbg !2141
  %905 = add i32 %904, %872, !dbg !2141
  %906 = add i32 %905, %899, !dbg !2141
  %907 = add i32 %906, %897, !dbg !2141
  call void @llvm.dbg.value(metadata i32 %907, metadata !1968, metadata !DIExpression()), !dbg !1976
  %908 = tail call i32 @llvm.fshl.i32(i32 %883, i32 %883, i32 30), !dbg !2141
  call void @llvm.dbg.value(metadata i32 %908, metadata !1970, metadata !DIExpression()), !dbg !1976
  %909 = tail call i32 @llvm.fshl.i32(i32 %907, i32 %907, i32 5), !dbg !2143
  %910 = xor i32 %908, %896, !dbg !2143
  %911 = xor i32 %910, %895, !dbg !2143
  %912 = xor i32 %739, %711, !dbg !2143
  %913 = xor i32 %912, %819, !dbg !2143
  %914 = xor i32 %913, %879, !dbg !2143
  call void @llvm.dbg.value(metadata i32 %914, metadata !1973, metadata !DIExpression()), !dbg !1996
  %915 = tail call i32 @llvm.fshl.i32(i32 %914, i32 %914, i32 1), !dbg !2143
  call void @llvm.dbg.value(metadata i32 %915, metadata !1965, metadata !DIExpression(DW_OP_LLVM_fragment, 160, 32)), !dbg !1976
  %916 = add i32 %915, -899497514, !dbg !2143
  %917 = add i32 %916, %884, !dbg !2143
  %918 = add i32 %917, %911, !dbg !2143
  %919 = add i32 %918, %909, !dbg !2143
  call void @llvm.dbg.value(metadata i32 %919, metadata !1967, metadata !DIExpression()), !dbg !1976
  %920 = tail call i32 @llvm.fshl.i32(i32 %895, i32 %895, i32 30), !dbg !2143
  call void @llvm.dbg.value(metadata i32 %920, metadata !1969, metadata !DIExpression()), !dbg !1976
  %921 = tail call i32 @llvm.fshl.i32(i32 %919, i32 %919, i32 5), !dbg !2145
  %922 = xor i32 %920, %908, !dbg !2145
  %923 = xor i32 %922, %907, !dbg !2145
  %924 = xor i32 %753, %725, !dbg !2145
  %925 = xor i32 %924, %831, !dbg !2145
  %926 = xor i32 %925, %891, !dbg !2145
  call void @llvm.dbg.value(metadata i32 %926, metadata !1973, metadata !DIExpression()), !dbg !1996
  %927 = tail call i32 @llvm.fshl.i32(i32 %926, i32 %926, i32 1), !dbg !2145
  call void @llvm.dbg.value(metadata i32 %927, metadata !1965, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 32)), !dbg !1976
  %928 = add i32 %927, -899497514, !dbg !2145
  %929 = add i32 %928, %896, !dbg !2145
  %930 = add i32 %929, %923, !dbg !2145
  %931 = add i32 %930, %921, !dbg !2145
  call void @llvm.dbg.value(metadata i32 %931, metadata !1971, metadata !DIExpression()), !dbg !1976
  %932 = tail call i32 @llvm.fshl.i32(i32 %907, i32 %907, i32 30), !dbg !2145
  call void @llvm.dbg.value(metadata i32 %932, metadata !1968, metadata !DIExpression()), !dbg !1976
  %933 = tail call i32 @llvm.fshl.i32(i32 %931, i32 %931, i32 5), !dbg !2147
  %934 = xor i32 %932, %920, !dbg !2147
  %935 = xor i32 %934, %919, !dbg !2147
  %936 = xor i32 %767, %739, !dbg !2147
  %937 = xor i32 %936, %843, !dbg !2147
  %938 = xor i32 %937, %903, !dbg !2147
  call void @llvm.dbg.value(metadata i32 %938, metadata !1973, metadata !DIExpression()), !dbg !1996
  %939 = tail call i32 @llvm.fshl.i32(i32 %938, i32 %938, i32 1), !dbg !2147
  call void @llvm.dbg.value(metadata i32 %939, metadata !1965, metadata !DIExpression(DW_OP_LLVM_fragment, 224, 32)), !dbg !1976
  %940 = add i32 %939, -899497514, !dbg !2147
  %941 = add i32 %940, %908, !dbg !2147
  %942 = add i32 %941, %935, !dbg !2147
  %943 = add i32 %942, %933, !dbg !2147
  call void @llvm.dbg.value(metadata i32 %943, metadata !1970, metadata !DIExpression()), !dbg !1976
  %944 = tail call i32 @llvm.fshl.i32(i32 %919, i32 %919, i32 30), !dbg !2147
  call void @llvm.dbg.value(metadata i32 %944, metadata !1967, metadata !DIExpression()), !dbg !1976
  %945 = tail call i32 @llvm.fshl.i32(i32 %943, i32 %943, i32 5), !dbg !2149
  %946 = xor i32 %944, %932, !dbg !2149
  %947 = xor i32 %946, %931, !dbg !2149
  %948 = xor i32 %781, %753, !dbg !2149
  %949 = xor i32 %948, %855, !dbg !2149
  %950 = xor i32 %949, %915, !dbg !2149
  call void @llvm.dbg.value(metadata i32 %950, metadata !1973, metadata !DIExpression()), !dbg !1996
  %951 = tail call i32 @llvm.fshl.i32(i32 %950, i32 %950, i32 1), !dbg !2149
  call void @llvm.dbg.value(metadata i32 %951, metadata !1965, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 32)), !dbg !1976
  %952 = add i32 %951, -899497514, !dbg !2149
  %953 = add i32 %952, %920, !dbg !2149
  %954 = add i32 %953, %947, !dbg !2149
  %955 = add i32 %954, %945, !dbg !2149
  call void @llvm.dbg.value(metadata i32 %955, metadata !1969, metadata !DIExpression()), !dbg !1976
  %956 = tail call i32 @llvm.fshl.i32(i32 %931, i32 %931, i32 30), !dbg !2149
  call void @llvm.dbg.value(metadata i32 %956, metadata !1971, metadata !DIExpression()), !dbg !1976
  %957 = tail call i32 @llvm.fshl.i32(i32 %955, i32 %955, i32 5), !dbg !2151
  %958 = xor i32 %956, %944, !dbg !2151
  %959 = xor i32 %958, %943, !dbg !2151
  %960 = xor i32 %795, %767, !dbg !2151
  %961 = xor i32 %960, %867, !dbg !2151
  %962 = xor i32 %961, %927, !dbg !2151
  call void @llvm.dbg.value(metadata i32 %962, metadata !1973, metadata !DIExpression()), !dbg !1996
  %963 = tail call i32 @llvm.fshl.i32(i32 %962, i32 %962, i32 1), !dbg !2151
  call void @llvm.dbg.value(metadata i32 %963, metadata !1965, metadata !DIExpression(DW_OP_LLVM_fragment, 288, 32)), !dbg !1976
  %964 = add i32 %963, -899497514, !dbg !2151
  %965 = add i32 %964, %932, !dbg !2151
  %966 = add i32 %965, %959, !dbg !2151
  %967 = add i32 %966, %957, !dbg !2151
  call void @llvm.dbg.value(metadata i32 %967, metadata !1968, metadata !DIExpression()), !dbg !1976
  %968 = tail call i32 @llvm.fshl.i32(i32 %943, i32 %943, i32 30), !dbg !2151
  call void @llvm.dbg.value(metadata i32 %968, metadata !1970, metadata !DIExpression()), !dbg !1976
  %969 = tail call i32 @llvm.fshl.i32(i32 %967, i32 %967, i32 5), !dbg !2153
  %970 = xor i32 %968, %956, !dbg !2153
  %971 = xor i32 %970, %955, !dbg !2153
  %972 = xor i32 %807, %781, !dbg !2153
  %973 = xor i32 %972, %879, !dbg !2153
  %974 = xor i32 %973, %939, !dbg !2153
  call void @llvm.dbg.value(metadata i32 %974, metadata !1973, metadata !DIExpression()), !dbg !1996
  %975 = tail call i32 @llvm.fshl.i32(i32 %974, i32 %974, i32 1), !dbg !2153
  call void @llvm.dbg.value(metadata i32 %975, metadata !1965, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 32)), !dbg !1976
  %976 = add i32 %975, -899497514, !dbg !2153
  %977 = add i32 %976, %944, !dbg !2153
  %978 = add i32 %977, %971, !dbg !2153
  %979 = add i32 %978, %969, !dbg !2153
  call void @llvm.dbg.value(metadata i32 %979, metadata !1967, metadata !DIExpression()), !dbg !1976
  %980 = tail call i32 @llvm.fshl.i32(i32 %955, i32 %955, i32 30), !dbg !2153
  call void @llvm.dbg.value(metadata i32 %980, metadata !1969, metadata !DIExpression()), !dbg !1976
  %981 = tail call i32 @llvm.fshl.i32(i32 %979, i32 %979, i32 5), !dbg !2155
  %982 = xor i32 %980, %968, !dbg !2155
  %983 = xor i32 %982, %967, !dbg !2155
  %984 = xor i32 %819, %795, !dbg !2155
  %985 = xor i32 %984, %891, !dbg !2155
  %986 = xor i32 %985, %951, !dbg !2155
  call void @llvm.dbg.value(metadata i32 %986, metadata !1973, metadata !DIExpression()), !dbg !1996
  %987 = tail call i32 @llvm.fshl.i32(i32 %986, i32 %986, i32 1), !dbg !2155
  call void @llvm.dbg.value(metadata i32 %987, metadata !1965, metadata !DIExpression(DW_OP_LLVM_fragment, 352, 32)), !dbg !1976
  %988 = add i32 %987, -899497514, !dbg !2155
  %989 = add i32 %988, %956, !dbg !2155
  %990 = add i32 %989, %983, !dbg !2155
  %991 = add i32 %990, %981, !dbg !2155
  call void @llvm.dbg.value(metadata i32 %991, metadata !1971, metadata !DIExpression()), !dbg !1976
  %992 = tail call i32 @llvm.fshl.i32(i32 %967, i32 %967, i32 30), !dbg !2155
  call void @llvm.dbg.value(metadata i32 %992, metadata !1968, metadata !DIExpression()), !dbg !1976
  %993 = tail call i32 @llvm.fshl.i32(i32 %991, i32 %991, i32 5), !dbg !2157
  %994 = xor i32 %992, %980, !dbg !2157
  %995 = xor i32 %994, %979, !dbg !2157
  %996 = xor i32 %831, %807, !dbg !2157
  %997 = xor i32 %996, %903, !dbg !2157
  %998 = xor i32 %997, %963, !dbg !2157
  call void @llvm.dbg.value(metadata i32 %998, metadata !1973, metadata !DIExpression()), !dbg !1996
  %999 = tail call i32 @llvm.fshl.i32(i32 %998, i32 %998, i32 1), !dbg !2157
  call void @llvm.dbg.value(metadata i32 %999, metadata !1965, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 32)), !dbg !1976
  %1000 = add i32 %999, -899497514, !dbg !2157
  %1001 = add i32 %1000, %968, !dbg !2157
  %1002 = add i32 %1001, %995, !dbg !2157
  %1003 = add i32 %1002, %993, !dbg !2157
  call void @llvm.dbg.value(metadata i32 %1003, metadata !1970, metadata !DIExpression()), !dbg !1976
  %1004 = tail call i32 @llvm.fshl.i32(i32 %979, i32 %979, i32 30), !dbg !2157
  call void @llvm.dbg.value(metadata i32 %1004, metadata !1967, metadata !DIExpression()), !dbg !1976
  %1005 = tail call i32 @llvm.fshl.i32(i32 %1003, i32 %1003, i32 5), !dbg !2159
  %1006 = xor i32 %1004, %992, !dbg !2159
  %1007 = xor i32 %1006, %991, !dbg !2159
  %1008 = xor i32 %843, %819, !dbg !2159
  %1009 = xor i32 %1008, %915, !dbg !2159
  %1010 = xor i32 %1009, %975, !dbg !2159
  call void @llvm.dbg.value(metadata i32 %1010, metadata !1973, metadata !DIExpression()), !dbg !1996
  %1011 = tail call i32 @llvm.fshl.i32(i32 %1010, i32 %1010, i32 1), !dbg !2159
  call void @llvm.dbg.value(metadata i32 %1011, metadata !1965, metadata !DIExpression(DW_OP_LLVM_fragment, 416, 32)), !dbg !1976
  %1012 = add i32 %1011, -899497514, !dbg !2159
  %1013 = add i32 %1012, %980, !dbg !2159
  %1014 = add i32 %1013, %1007, !dbg !2159
  %1015 = add i32 %1014, %1005, !dbg !2159
  call void @llvm.dbg.value(metadata i32 %1015, metadata !1969, metadata !DIExpression()), !dbg !1976
  %1016 = tail call i32 @llvm.fshl.i32(i32 %991, i32 %991, i32 30), !dbg !2159
  call void @llvm.dbg.value(metadata i32 %1016, metadata !1971, metadata !DIExpression()), !dbg !1976
  %1017 = tail call i32 @llvm.fshl.i32(i32 %1015, i32 %1015, i32 5), !dbg !2161
  %1018 = xor i32 %1016, %1004, !dbg !2161
  %1019 = xor i32 %1018, %1003, !dbg !2161
  %1020 = xor i32 %855, %831, !dbg !2161
  %1021 = xor i32 %1020, %927, !dbg !2161
  %1022 = xor i32 %1021, %987, !dbg !2161
  call void @llvm.dbg.value(metadata i32 %1022, metadata !1973, metadata !DIExpression()), !dbg !1996
  %1023 = tail call i32 @llvm.fshl.i32(i32 %1022, i32 %1022, i32 1), !dbg !2161
  call void @llvm.dbg.value(metadata i32 %1023, metadata !1965, metadata !DIExpression(DW_OP_LLVM_fragment, 448, 32)), !dbg !1976
  %1024 = add i32 %1023, -899497514, !dbg !2161
  %1025 = add i32 %1024, %992, !dbg !2161
  %1026 = add i32 %1025, %1019, !dbg !2161
  %1027 = add i32 %1026, %1017, !dbg !2161
  call void @llvm.dbg.value(metadata i32 %1027, metadata !1968, metadata !DIExpression()), !dbg !1976
  %1028 = tail call i32 @llvm.fshl.i32(i32 %1003, i32 %1003, i32 30), !dbg !2161
  call void @llvm.dbg.value(metadata i32 %1028, metadata !1970, metadata !DIExpression()), !dbg !1976
  %1029 = tail call i32 @llvm.fshl.i32(i32 %1027, i32 %1027, i32 5), !dbg !2163
  %1030 = xor i32 %1028, %1016, !dbg !2163
  %1031 = xor i32 %1030, %1015, !dbg !2163
  %1032 = xor i32 %867, %843, !dbg !2163
  %1033 = xor i32 %1032, %939, !dbg !2163
  %1034 = xor i32 %1033, %999, !dbg !2163
  call void @llvm.dbg.value(metadata i32 %1034, metadata !1973, metadata !DIExpression()), !dbg !1996
  %1035 = tail call i32 @llvm.fshl.i32(i32 %1034, i32 %1034, i32 1), !dbg !2163
  call void @llvm.dbg.value(metadata i32 %1035, metadata !1965, metadata !DIExpression(DW_OP_LLVM_fragment, 480, 32)), !dbg !1976
  call void @llvm.dbg.value(metadata i32 undef, metadata !1967, metadata !DIExpression()), !dbg !1976
  %1036 = tail call i32 @llvm.fshl.i32(i32 %1015, i32 %1015, i32 30), !dbg !2163
  call void @llvm.dbg.value(metadata i32 %1036, metadata !1969, metadata !DIExpression()), !dbg !1976
  %1037 = load i32, i32* %7, align 4, !dbg !2165, !tbaa !1781
  %1038 = add i32 %1035, -899497514, !dbg !2163
  %1039 = add i32 %1038, %1037, !dbg !2163
  %1040 = add i32 %1039, %1004, !dbg !2163
  %1041 = add i32 %1040, %1031, !dbg !2163
  %1042 = add i32 %1041, %1029, !dbg !2165
  store i32 %1042, i32* %7, align 4, !dbg !2165, !tbaa !1781
  call void @llvm.dbg.value(metadata i32 %1042, metadata !1967, metadata !DIExpression()), !dbg !1976
  %1043 = load i32, i32* %9, align 4, !dbg !2166, !tbaa !1817
  %1044 = add i32 %1027, %1043, !dbg !2166
  store i32 %1044, i32* %9, align 4, !dbg !2166, !tbaa !1817
  call void @llvm.dbg.value(metadata i32 %1044, metadata !1968, metadata !DIExpression()), !dbg !1976
  %1045 = load i32, i32* %11, align 4, !dbg !2167, !tbaa !1828
  %1046 = add i32 %1036, %1045, !dbg !2167
  store i32 %1046, i32* %11, align 4, !dbg !2167, !tbaa !1828
  call void @llvm.dbg.value(metadata i32 %1046, metadata !1969, metadata !DIExpression()), !dbg !1976
  %1047 = load i32, i32* %13, align 4, !dbg !2168, !tbaa !1839
  %1048 = add i32 %1028, %1047, !dbg !2168
  store i32 %1048, i32* %13, align 4, !dbg !2168, !tbaa !1839
  call void @llvm.dbg.value(metadata i32 %1048, metadata !1970, metadata !DIExpression()), !dbg !1976
  %1049 = load i32, i32* %15, align 4, !dbg !2169, !tbaa !1850
  %1050 = add i32 %1016, %1049, !dbg !2169
  store i32 %1050, i32* %15, align 4, !dbg !2169, !tbaa !1850
  call void @llvm.dbg.value(metadata i32* %84, metadata !1960, metadata !DIExpression()), !dbg !1976
  call void @llvm.dbg.value(metadata i32 %1050, metadata !1971, metadata !DIExpression()), !dbg !1976
  %1051 = icmp ult i32* %84, %6, !dbg !1994
  br i1 %1051, label %30, label %1052, !dbg !1995, !llvm.loop !2170

1052:                                             ; preds = %30, %3
  ret void, !dbg !2172
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @sha1_stream(%struct._IO_FILE* nocapture %0, i8* %1) local_unnamed_addr #8 !dbg !2173 {
  %3 = alloca %struct.sha1_ctx, align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2211, metadata !DIExpression()), !dbg !2219
  call void @llvm.dbg.value(metadata i8* %1, metadata !2212, metadata !DIExpression()), !dbg !2219
  %4 = tail call noalias dereferenceable_or_null(32840) i8* @malloc(i64 32840) #25, !dbg !2220
  call void @llvm.dbg.value(metadata i8* %4, metadata !2213, metadata !DIExpression()), !dbg !2219
  %5 = icmp eq i8* %4, null, !dbg !2221
  br i1 %5, label %41, label %6, !dbg !2223

6:                                                ; preds = %2
  %7 = bitcast %struct.sha1_ctx* %3 to i8*, !dbg !2224
  call void @llvm.lifetime.start.p0i8(i64 160, i8* nonnull %7) #25, !dbg !2224
  call void @llvm.dbg.declare(metadata %struct.sha1_ctx* %3, metadata !2214, metadata !DIExpression()), !dbg !2225
  call void @llvm.dbg.value(metadata %struct.sha1_ctx* %3, metadata !1764, metadata !DIExpression()), !dbg !2226
  %8 = bitcast %struct.sha1_ctx* %3 to <4 x i32>*, !dbg !2228
  store <4 x i32> <i32 1732584193, i32 -271733879, i32 -1732584194, i32 271733878>, <4 x i32>* %8, align 16, !dbg !2228, !tbaa !1021
  %9 = getelementptr inbounds %struct.sha1_ctx, %struct.sha1_ctx* %3, i64 0, i32 4, !dbg !2229
  %10 = bitcast i32* %9 to <4 x i32>*, !dbg !2230
  store <4 x i32> <i32 -1009589776, i32 0, i32 0, i32 0>, <4 x i32>* %10, align 16, !dbg !2230, !tbaa !1021
  %11 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0
  br label %12, !dbg !2231

12:                                               ; preds = %25, %6
  %13 = phi i64 [ 0, %6 ], [ %26, %25 ], !dbg !2232
  call void @llvm.dbg.value(metadata i64 %13, metadata !2215, metadata !DIExpression()), !dbg !2219
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2233, metadata !DIExpression()), !dbg !2238
  %14 = load i32, i32* %11, align 8, !dbg !2242, !tbaa !1427
  %15 = and i32 %14, 16, !dbg !2243
  %16 = icmp eq i32 %15, 0, !dbg !2243
  br i1 %16, label %17, label %33, !dbg !2244

17:                                               ; preds = %12
  %18 = getelementptr inbounds i8, i8* %4, i64 %13, !dbg !2245
  %19 = sub i64 32768, %13, !dbg !2245
  %20 = tail call i64 @fread_unlocked(i8* nonnull %18, i64 1, i64 %19, %struct._IO_FILE* nonnull %0), !dbg !2245
  call void @llvm.dbg.value(metadata i64 %20, metadata !2216, metadata !DIExpression()), !dbg !2232
  %21 = add i64 %20, %13, !dbg !2246
  call void @llvm.dbg.value(metadata i64 %21, metadata !2215, metadata !DIExpression()), !dbg !2219
  %22 = icmp eq i64 %21, 32768, !dbg !2247
  br i1 %22, label %32, label %23, !dbg !2249

23:                                               ; preds = %17
  %24 = icmp eq i64 %20, 0, !dbg !2250
  br i1 %24, label %27, label %25, !dbg !2252

25:                                               ; preds = %23, %32
  %26 = phi i64 [ %21, %23 ], [ 0, %32 ]
  br label %12, !dbg !2219, !llvm.loop !2253

27:                                               ; preds = %23
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2256, metadata !DIExpression()), !dbg !2259
  %28 = load i32, i32* %11, align 8, !dbg !2263, !tbaa !1427
  %29 = and i32 %28, 32, !dbg !2264
  %30 = icmp eq i32 %29, 0, !dbg !2264
  br i1 %30, label %33, label %31, !dbg !2265

31:                                               ; preds = %27
  tail call void @free(i8* %4) #25, !dbg !2266
  call void @llvm.dbg.value(metadata i64 32768, metadata !2215, metadata !DIExpression()), !dbg !2219
  br label %39

32:                                               ; preds = %17
  call void @sha1_process_block(i8* nonnull %4, i64 32768, %struct.sha1_ctx* nonnull %3), !dbg !2268
  call void @llvm.dbg.value(metadata i64 32768, metadata !2215, metadata !DIExpression()), !dbg !2219
  br label %25

33:                                               ; preds = %12, %27
  %34 = phi i64 [ %21, %27 ], [ %13, %12 ]
  call void @llvm.dbg.value(metadata i64 32768, metadata !2215, metadata !DIExpression()), !dbg !2219
  call void @llvm.dbg.label(metadata !2218), !dbg !2269
  %35 = icmp eq i64 %34, 0, !dbg !2270
  br i1 %35, label %37, label %36, !dbg !2272

36:                                               ; preds = %33
  call void @sha1_process_bytes(i8* nonnull %4, i64 %34, %struct.sha1_ctx* nonnull %3), !dbg !2273
  br label %37, !dbg !2273

37:                                               ; preds = %36, %33
  %38 = call i8* @sha1_finish_ctx(%struct.sha1_ctx* nonnull %3, i8* %1), !dbg !2274
  call void @free(i8* %4) #25, !dbg !2275
  br label %39, !dbg !2276

39:                                               ; preds = %31, %37
  %40 = phi i32 [ 0, %37 ], [ 1, %31 ]
  call void @llvm.lifetime.end.p0i8(i64 160, i8* nonnull %7) #25, !dbg !2277
  br label %41

41:                                               ; preds = %39, %2
  %42 = phi i32 [ %40, %39 ], [ 1, %2 ]
  ret i32 %42, !dbg !2277
}

; Function Attrs: inaccessiblememonly nofree nounwind willreturn
declare noalias noundef i8* @malloc(i64) local_unnamed_addr #14

; Function Attrs: nofree nounwind
declare noundef i64 @fread_unlocked(i8* nocapture noundef, i64 noundef, i64 noundef, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: nofree nounwind sspstrong uwtable
define dso_local void @sha1_process_bytes(i8* %0, i64 %1, %struct.sha1_ctx* %2) local_unnamed_addr #13 !dbg !2278 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2280, metadata !DIExpression()), !dbg !2290
  call void @llvm.dbg.value(metadata i64 %1, metadata !2281, metadata !DIExpression()), !dbg !2290
  call void @llvm.dbg.value(metadata %struct.sha1_ctx* %2, metadata !2282, metadata !DIExpression()), !dbg !2290
  %4 = getelementptr inbounds %struct.sha1_ctx, %struct.sha1_ctx* %2, i64 0, i32 6, !dbg !2291
  %5 = load i32, i32* %4, align 4, !dbg !2291, !tbaa !1870
  %6 = icmp eq i32 %5, 0, !dbg !2292
  br i1 %6, label %31, label %7, !dbg !2293

7:                                                ; preds = %3
  %8 = zext i32 %5 to i64, !dbg !2294
  call void @llvm.dbg.value(metadata i64 %8, metadata !2283, metadata !DIExpression()), !dbg !2295
  %9 = sub nsw i64 128, %8, !dbg !2296
  %10 = icmp ugt i64 %9, %1, !dbg !2297
  %11 = select i1 %10, i64 %1, i64 %9, !dbg !2298
  call void @llvm.dbg.value(metadata i64 %11, metadata !2286, metadata !DIExpression()), !dbg !2295
  %12 = getelementptr inbounds %struct.sha1_ctx, %struct.sha1_ctx* %2, i64 0, i32 7, i64 0, !dbg !2299
  %13 = bitcast i32* %12 to i8*, !dbg !2299
  %14 = getelementptr inbounds i8, i8* %13, i64 %8, !dbg !2299
  call void @llvm.dbg.value(metadata i8* %14, metadata !1800, metadata !DIExpression()) #25, !dbg !2300
  call void @llvm.dbg.value(metadata i8* %0, metadata !1810, metadata !DIExpression()) #25, !dbg !2300
  call void @llvm.dbg.value(metadata i64 %11, metadata !1811, metadata !DIExpression()) #25, !dbg !2300
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %14, i8* nonnull align 1 %0, i64 %11, i1 false) #25, !dbg !2302
  %15 = load i32, i32* %4, align 4, !dbg !2303, !tbaa !1870
  %16 = trunc i64 %11 to i32, !dbg !2303
  %17 = add i32 %15, %16, !dbg !2303
  store i32 %17, i32* %4, align 4, !dbg !2303, !tbaa !1870
  %18 = icmp ugt i32 %17, 64, !dbg !2304
  br i1 %18, label %19, label %28, !dbg !2306

19:                                               ; preds = %7
  %20 = and i32 %17, -64, !dbg !2307
  %21 = zext i32 %20 to i64, !dbg !2309
  tail call void @sha1_process_block(i8* nonnull %13, i64 %21, %struct.sha1_ctx* nonnull %2), !dbg !2310
  %22 = load i32, i32* %4, align 4, !dbg !2311, !tbaa !1870
  %23 = and i32 %22, 63, !dbg !2311
  store i32 %23, i32* %4, align 4, !dbg !2311, !tbaa !1870
  %24 = add i64 %11, %8, !dbg !2312
  %25 = and i64 %24, -64, !dbg !2313
  %26 = getelementptr inbounds i8, i8* %13, i64 %25, !dbg !2314
  %27 = zext i32 %23 to i64, !dbg !2315
  call void @llvm.dbg.value(metadata i8* %13, metadata !1800, metadata !DIExpression()) #25, !dbg !2316
  call void @llvm.dbg.value(metadata i8* %26, metadata !1810, metadata !DIExpression()) #25, !dbg !2316
  call void @llvm.dbg.value(metadata i64 %27, metadata !1811, metadata !DIExpression()) #25, !dbg !2316
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %13, i8* nonnull align 1 %26, i64 %27, i1 false) #25, !dbg !2318
  br label %28, !dbg !2319

28:                                               ; preds = %19, %7
  %29 = getelementptr inbounds i8, i8* %0, i64 %11, !dbg !2320
  call void @llvm.dbg.value(metadata i8* %29, metadata !2280, metadata !DIExpression()), !dbg !2290
  %30 = sub i64 %1, %11, !dbg !2321
  call void @llvm.dbg.value(metadata i64 %30, metadata !2281, metadata !DIExpression()), !dbg !2290
  br label %31, !dbg !2322

31:                                               ; preds = %28, %3
  %32 = phi i64 [ %30, %28 ], [ %1, %3 ]
  %33 = phi i8* [ %29, %28 ], [ %0, %3 ]
  call void @llvm.dbg.value(metadata i8* %33, metadata !2280, metadata !DIExpression()), !dbg !2290
  call void @llvm.dbg.value(metadata i64 %32, metadata !2281, metadata !DIExpression()), !dbg !2290
  %34 = icmp ugt i64 %32, 63, !dbg !2323
  br i1 %34, label %35, label %54, !dbg !2325

35:                                               ; preds = %31
  %36 = ptrtoint i8* %33 to i64, !dbg !2326
  %37 = and i64 %36, 3, !dbg !2326
  %38 = icmp eq i64 %37, 0, !dbg !2326
  br i1 %38, label %50, label %39, !dbg !2329

39:                                               ; preds = %35
  call void @llvm.dbg.value(metadata i8* %33, metadata !2280, metadata !DIExpression()), !dbg !2290
  call void @llvm.dbg.value(metadata i64 %32, metadata !2281, metadata !DIExpression()), !dbg !2290
  %40 = icmp ugt i64 %32, 64, !dbg !2330
  br i1 %40, label %41, label %58, !dbg !2331

41:                                               ; preds = %39
  %42 = getelementptr inbounds %struct.sha1_ctx, %struct.sha1_ctx* %2, i64 0, i32 7, i64 0
  %43 = bitcast i32* %42 to i8*
  br label %44, !dbg !2331

44:                                               ; preds = %41, %44
  %45 = phi i8* [ %33, %41 ], [ %47, %44 ]
  %46 = phi i64 [ %32, %41 ], [ %48, %44 ]
  call void @llvm.dbg.value(metadata i8* %45, metadata !2280, metadata !DIExpression()), !dbg !2290
  call void @llvm.dbg.value(metadata i64 %46, metadata !2281, metadata !DIExpression()), !dbg !2290
  call void @llvm.dbg.value(metadata i8* %43, metadata !1800, metadata !DIExpression()) #25, !dbg !2332
  call void @llvm.dbg.value(metadata i8* %45, metadata !1810, metadata !DIExpression()) #25, !dbg !2332
  call void @llvm.dbg.value(metadata i64 64, metadata !1811, metadata !DIExpression()) #25, !dbg !2332
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 dereferenceable(64) %43, i8* nonnull align 1 dereferenceable(64) %45, i64 64, i1 false) #25, !dbg !2335
  tail call void @sha1_process_block(i8* nonnull %43, i64 64, %struct.sha1_ctx* %2), !dbg !2336
  %47 = getelementptr inbounds i8, i8* %45, i64 64, !dbg !2337
  call void @llvm.dbg.value(metadata i8* %47, metadata !2280, metadata !DIExpression()), !dbg !2290
  %48 = add i64 %46, -64, !dbg !2338
  call void @llvm.dbg.value(metadata i64 %48, metadata !2281, metadata !DIExpression()), !dbg !2290
  %49 = icmp ugt i64 %48, 64, !dbg !2330
  br i1 %49, label %44, label %58, !dbg !2331, !llvm.loop !2339

50:                                               ; preds = %35
  %51 = and i64 %32, -64, !dbg !2341
  tail call void @sha1_process_block(i8* %33, i64 %51, %struct.sha1_ctx* nonnull %2), !dbg !2343
  %52 = getelementptr inbounds i8, i8* %33, i64 %51, !dbg !2344
  call void @llvm.dbg.value(metadata i8* %52, metadata !2280, metadata !DIExpression()), !dbg !2290
  %53 = and i64 %32, 63, !dbg !2345
  call void @llvm.dbg.value(metadata i64 %53, metadata !2281, metadata !DIExpression()), !dbg !2290
  br label %54

54:                                               ; preds = %50, %31
  %55 = phi i64 [ %53, %50 ], [ %32, %31 ], !dbg !2290
  %56 = phi i8* [ %52, %50 ], [ %33, %31 ], !dbg !2290
  call void @llvm.dbg.value(metadata i8* %56, metadata !2280, metadata !DIExpression()), !dbg !2290
  call void @llvm.dbg.value(metadata i64 %55, metadata !2281, metadata !DIExpression()), !dbg !2290
  %57 = icmp eq i64 %55, 0, !dbg !2346
  br i1 %57, label %75, label %58, !dbg !2347

58:                                               ; preds = %44, %39, %54
  %59 = phi i8* [ %56, %54 ], [ %33, %39 ], [ %47, %44 ]
  %60 = phi i64 [ %55, %54 ], [ 64, %39 ], [ %48, %44 ]
  %61 = load i32, i32* %4, align 4, !dbg !2348, !tbaa !1870
  %62 = zext i32 %61 to i64, !dbg !2349
  call void @llvm.dbg.value(metadata i64 %62, metadata !2287, metadata !DIExpression()), !dbg !2350
  %63 = getelementptr inbounds %struct.sha1_ctx, %struct.sha1_ctx* %2, i64 0, i32 7, !dbg !2351
  %64 = bitcast [32 x i32]* %63 to i8*, !dbg !2352
  %65 = getelementptr inbounds i8, i8* %64, i64 %62, !dbg !2352
  call void @llvm.dbg.value(metadata i8* %65, metadata !1800, metadata !DIExpression()) #25, !dbg !2353
  call void @llvm.dbg.value(metadata i8* %56, metadata !1810, metadata !DIExpression()) #25, !dbg !2353
  call void @llvm.dbg.value(metadata i64 %55, metadata !1811, metadata !DIExpression()) #25, !dbg !2353
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %65, i8* nonnull align 1 %59, i64 %60, i1 false) #25, !dbg !2355
  %66 = add nuw nsw i64 %60, %62, !dbg !2356
  call void @llvm.dbg.value(metadata i64 %66, metadata !2287, metadata !DIExpression()), !dbg !2350
  %67 = icmp ugt i64 %66, 63, !dbg !2357
  br i1 %67, label %68, label %72, !dbg !2359

68:                                               ; preds = %58
  tail call void @sha1_process_block(i8* nonnull %64, i64 64, %struct.sha1_ctx* nonnull %2), !dbg !2360
  %69 = add nsw i64 %66, -64, !dbg !2362
  call void @llvm.dbg.value(metadata i64 %69, metadata !2287, metadata !DIExpression()), !dbg !2350
  %70 = getelementptr inbounds %struct.sha1_ctx, %struct.sha1_ctx* %2, i64 0, i32 7, i64 16, !dbg !2363
  %71 = bitcast i32* %70 to i8*, !dbg !2364
  call void @llvm.dbg.value(metadata i8* %64, metadata !1800, metadata !DIExpression()) #25, !dbg !2365
  call void @llvm.dbg.value(metadata i8* %71, metadata !1810, metadata !DIExpression()) #25, !dbg !2365
  call void @llvm.dbg.value(metadata i64 %69, metadata !1811, metadata !DIExpression()) #25, !dbg !2365
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %64, i8* nonnull align 1 %71, i64 %69, i1 false) #25, !dbg !2367
  br label %72, !dbg !2368

72:                                               ; preds = %68, %58
  %73 = phi i64 [ %69, %68 ], [ %66, %58 ], !dbg !2350
  call void @llvm.dbg.value(metadata i64 %73, metadata !2287, metadata !DIExpression()), !dbg !2350
  %74 = trunc i64 %73 to i32, !dbg !2369
  store i32 %74, i32* %4, align 4, !dbg !2370, !tbaa !1870
  br label %75, !dbg !2371

75:                                               ; preds = %72, %54
  ret void, !dbg !2372
}

; Function Attrs: nofree nounwind sspstrong uwtable
define dso_local i8* @sha1_buffer(i8* %0, i64 %1, i8* returned %2) local_unnamed_addr #13 !dbg !2373 {
  %4 = alloca %struct.sha1_ctx, align 16
  call void @llvm.dbg.value(metadata i8* %0, metadata !2377, metadata !DIExpression()), !dbg !2381
  call void @llvm.dbg.value(metadata i64 %1, metadata !2378, metadata !DIExpression()), !dbg !2381
  call void @llvm.dbg.value(metadata i8* %2, metadata !2379, metadata !DIExpression()), !dbg !2381
  %5 = bitcast %struct.sha1_ctx* %4 to i8*, !dbg !2382
  call void @llvm.lifetime.start.p0i8(i64 160, i8* nonnull %5) #25, !dbg !2382
  call void @llvm.dbg.declare(metadata %struct.sha1_ctx* %4, metadata !2380, metadata !DIExpression()), !dbg !2383
  call void @llvm.dbg.value(metadata %struct.sha1_ctx* %4, metadata !1764, metadata !DIExpression()), !dbg !2384
  %6 = bitcast %struct.sha1_ctx* %4 to <4 x i32>*, !dbg !2386
  store <4 x i32> <i32 1732584193, i32 -271733879, i32 -1732584194, i32 271733878>, <4 x i32>* %6, align 16, !dbg !2386, !tbaa !1021
  %7 = getelementptr inbounds %struct.sha1_ctx, %struct.sha1_ctx* %4, i64 0, i32 4, !dbg !2387
  %8 = bitcast i32* %7 to <4 x i32>*, !dbg !2388
  store <4 x i32> <i32 -1009589776, i32 0, i32 0, i32 0>, <4 x i32>* %8, align 16, !dbg !2388, !tbaa !1021
  call void @sha1_process_bytes(i8* %0, i64 %1, %struct.sha1_ctx* nonnull %4), !dbg !2389
  %9 = call i8* @sha1_finish_ctx(%struct.sha1_ctx* nonnull %4, i8* %2), !dbg !2390
  call void @llvm.lifetime.end.p0i8(i64 160, i8* nonnull %5) #25, !dbg !2391
  ret i8* %2, !dbg !2392
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @fdadvise(i32 %0, i64 %1, i64 %2, i32 %3) local_unnamed_addr #8 !dbg !2393 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2399, metadata !DIExpression()), !dbg !2405
  call void @llvm.dbg.value(metadata i64 %1, metadata !2400, metadata !DIExpression()), !dbg !2405
  call void @llvm.dbg.value(metadata i64 %2, metadata !2401, metadata !DIExpression()), !dbg !2405
  call void @llvm.dbg.value(metadata i32 %3, metadata !2402, metadata !DIExpression()), !dbg !2405
  %5 = tail call i32 @posix_fadvise(i32 %0, i64 %1, i64 %2, i32 %3) #25, !dbg !2406
  call void @llvm.dbg.value(metadata i32 %5, metadata !2403, metadata !DIExpression()), !dbg !2407
  ret void, !dbg !2408
}

; Function Attrs: nounwind
declare !dbg !2409 i32 @posix_fadvise(i32, i64, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @fadvise(%struct._IO_FILE* %0, i32 %1) local_unnamed_addr #8 !dbg !2413 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2451, metadata !DIExpression()), !dbg !2453
  call void @llvm.dbg.value(metadata i32 %1, metadata !2452, metadata !DIExpression()), !dbg !2453
  %3 = icmp eq %struct._IO_FILE* %0, null, !dbg !2454
  br i1 %3, label %7, label %4, !dbg !2456

4:                                                ; preds = %2
  %5 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #25, !dbg !2457
  call void @llvm.dbg.value(metadata i32 %5, metadata !2399, metadata !DIExpression()) #25, !dbg !2458
  call void @llvm.dbg.value(metadata i64 0, metadata !2400, metadata !DIExpression()) #25, !dbg !2458
  call void @llvm.dbg.value(metadata i64 0, metadata !2401, metadata !DIExpression()) #25, !dbg !2458
  call void @llvm.dbg.value(metadata i32 %1, metadata !2402, metadata !DIExpression()) #25, !dbg !2458
  %6 = tail call i32 @posix_fadvise(i32 %5, i64 0, i64 0, i32 %1) #25, !dbg !2460
  call void @llvm.dbg.value(metadata i32 %6, metadata !2403, metadata !DIExpression()) #25, !dbg !2461
  br label %7, !dbg !2462

7:                                                ; preds = %4, %2
  ret void, !dbg !2463
}

; Function Attrs: nofree nounwind
declare !dbg !2464 noundef i32 @fileno(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local %struct._IO_FILE* @fopen_safer(i8* nocapture readonly %0, i8* nocapture readonly %1) local_unnamed_addr #8 !dbg !2467 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2505, metadata !DIExpression()), !dbg !2520
  call void @llvm.dbg.value(metadata i8* %1, metadata !2506, metadata !DIExpression()), !dbg !2520
  %3 = tail call %struct._IO_FILE* @fopen(i8* %0, i8* %1), !dbg !2521
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %3, metadata !2507, metadata !DIExpression()), !dbg !2520
  %4 = icmp eq %struct._IO_FILE* %3, null, !dbg !2522
  br i1 %4, label %25, label %5, !dbg !2523

5:                                                ; preds = %2
  %6 = tail call i32 @fileno(%struct._IO_FILE* nonnull %3) #25, !dbg !2524
  call void @llvm.dbg.value(metadata i32 %6, metadata !2508, metadata !DIExpression()), !dbg !2525
  %7 = icmp ult i32 %6, 3, !dbg !2526
  br i1 %7, label %8, label %25, !dbg !2526

8:                                                ; preds = %5
  %9 = tail call i32 @dup_safer(i32 %6) #25, !dbg !2527
  call void @llvm.dbg.value(metadata i32 %9, metadata !2511, metadata !DIExpression()), !dbg !2528
  %10 = icmp slt i32 %9, 0, !dbg !2529
  br i1 %10, label %11, label %15, !dbg !2530

11:                                               ; preds = %8
  %12 = tail call i32* @__errno_location() #29, !dbg !2531
  %13 = load i32, i32* %12, align 4, !dbg !2531, !tbaa !1021
  call void @llvm.dbg.value(metadata i32 %13, metadata !2514, metadata !DIExpression()), !dbg !2532
  %14 = tail call i32 @rpl_fclose(%struct._IO_FILE* nonnull %3) #25, !dbg !2533
  store i32 %13, i32* %12, align 4, !dbg !2534, !tbaa !1021
  br label %25

15:                                               ; preds = %8
  %16 = tail call i32 @rpl_fclose(%struct._IO_FILE* nonnull %3) #25, !dbg !2535
  %17 = icmp eq i32 %16, 0, !dbg !2536
  br i1 %17, label %18, label %21, !dbg !2537

18:                                               ; preds = %15
  %19 = tail call %struct._IO_FILE* @fdopen(i32 %9, i8* %1) #25, !dbg !2538
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %19, metadata !2507, metadata !DIExpression()), !dbg !2520
  %20 = icmp eq %struct._IO_FILE* %19, null, !dbg !2539
  br i1 %20, label %21, label %25, !dbg !2540

21:                                               ; preds = %18, %15
  call void @llvm.dbg.value(metadata %struct._IO_FILE* undef, metadata !2507, metadata !DIExpression()), !dbg !2520
  %22 = tail call i32* @__errno_location() #29, !dbg !2541
  %23 = load i32, i32* %22, align 4, !dbg !2541, !tbaa !1021
  call void @llvm.dbg.value(metadata i32 %23, metadata !2517, metadata !DIExpression()), !dbg !2542
  %24 = tail call i32 @close(i32 %9) #25, !dbg !2543
  store i32 %23, i32* %22, align 4, !dbg !2544, !tbaa !1021
  br label %25

25:                                               ; preds = %5, %18, %2, %21, %11
  %26 = phi %struct._IO_FILE* [ null, %11 ], [ null, %21 ], [ null, %2 ], [ %19, %18 ], [ %3, %5 ], !dbg !2520
  ret %struct._IO_FILE* %26, !dbg !2545
}

; Function Attrs: nofree nounwind
declare noalias noundef %struct._IO_FILE* @fopen(i8* nocapture noundef readonly, i8* nocapture noundef readonly) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare !dbg !2546 noalias noundef %struct._IO_FILE* @fdopen(i32 noundef, i8* nocapture noundef readonly) local_unnamed_addr #4

declare !dbg !2549 i32 @close(i32) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_program_name(i8* %0) local_unnamed_addr #8 !dbg !2551 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2553, metadata !DIExpression()), !dbg !2556
  %2 = icmp eq i8* %0, null, !dbg !2557
  br i1 %2, label %3, label %6, !dbg !2559

3:                                                ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2560, !tbaa !792
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.101, i64 0, i64 0), i64 55, i64 1, %struct._IO_FILE* %4) #30, !dbg !2562
  tail call void @abort() #27, !dbg !2563
  unreachable, !dbg !2563

6:                                                ; preds = %1
  %7 = tail call i8* @strrchr(i8* nonnull %0, i32 47) #26, !dbg !2564
  call void @llvm.dbg.value(metadata i8* %7, metadata !2554, metadata !DIExpression()), !dbg !2556
  %8 = icmp eq i8* %7, null, !dbg !2565
  %9 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !2566
  %10 = select i1 %8, i8* %0, i8* %9, !dbg !2566
  call void @llvm.dbg.value(metadata i8* %10, metadata !2555, metadata !DIExpression()), !dbg !2556
  %11 = ptrtoint i8* %10 to i64, !dbg !2567
  %12 = ptrtoint i8* %0 to i64, !dbg !2567
  %13 = sub i64 %11, %12, !dbg !2567
  %14 = icmp sgt i64 %13, 6, !dbg !2569
  br i1 %14, label %15, label %24, !dbg !2570

15:                                               ; preds = %6
  %16 = getelementptr inbounds i8, i8* %10, i64 -7, !dbg !2571
  %17 = tail call i32 @strncmp(i8* nonnull %16, i8* nonnull dereferenceable(8) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.102, i64 0, i64 0), i64 7) #26, !dbg !2572
  %18 = icmp eq i32 %17, 0, !dbg !2573
  br i1 %18, label %19, label %24, !dbg !2574

19:                                               ; preds = %15
  call void @llvm.dbg.value(metadata i8* %10, metadata !2553, metadata !DIExpression()), !dbg !2556
  %20 = tail call i32 @strncmp(i8* nonnull %10, i8* nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.103, i64 0, i64 0), i64 3) #26, !dbg !2575
  %21 = icmp eq i32 %20, 0, !dbg !2578
  br i1 %21, label %22, label %24, !dbg !2579

22:                                               ; preds = %19
  %23 = getelementptr inbounds i8, i8* %10, i64 3, !dbg !2580
  call void @llvm.dbg.value(metadata i8* %23, metadata !2553, metadata !DIExpression()), !dbg !2556
  store i8* %23, i8** @program_invocation_short_name, align 8, !dbg !2582, !tbaa !792
  br label %24, !dbg !2583

24:                                               ; preds = %19, %22, %15, %6
  %25 = phi i8* [ %23, %22 ], [ %10, %19 ], [ %0, %15 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i8* %25, metadata !2553, metadata !DIExpression()), !dbg !2556
  store i8* %25, i8** @program_name, align 8, !dbg !2584, !tbaa !792
  store i8* %25, i8** @program_invocation_name, align 8, !dbg !2585, !tbaa !792
  ret void, !dbg !2586
}

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(i8* nocapture noundef, i64 noundef, i64 noundef, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #15

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #7

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i8* @strrchr(i8*, i32) local_unnamed_addr #6

; Function Attrs: nounwind sspstrong uwtable
define dso_local %struct.quoting_options* @clone_quoting_options(%struct.quoting_options* %0) local_unnamed_addr #8 !dbg !2587 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2592, metadata !DIExpression()), !dbg !2595
  %2 = tail call i32* @__errno_location() #29, !dbg !2596
  %3 = load i32, i32* %2, align 4, !dbg !2596, !tbaa !1021
  call void @llvm.dbg.value(metadata i32 %3, metadata !2593, metadata !DIExpression()), !dbg !2595
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !2597
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2597
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2597
  %7 = tail call i8* @xmemdup(i8* %6, i64 56) #25, !dbg !2598
  %8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !2598
  call void @llvm.dbg.value(metadata %struct.quoting_options* %8, metadata !2594, metadata !DIExpression()), !dbg !2595
  store i32 %3, i32* %2, align 4, !dbg !2599, !tbaa !1021
  ret %struct.quoting_options* %8, !dbg !2600
}

; Function Attrs: norecurse nounwind readonly sspstrong uwtable willreturn
define dso_local i32 @get_quoting_style(%struct.quoting_options* readonly %0) local_unnamed_addr #16 !dbg !2601 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2607, metadata !DIExpression()), !dbg !2608
  %2 = icmp eq %struct.quoting_options* %0, null, !dbg !2609
  %3 = select i1 %2, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2609
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2610
  %5 = load i32, i32* %4, align 8, !dbg !2610, !tbaa !2611
  ret i32 %5, !dbg !2613
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable willreturn writeonly
define dso_local void @set_quoting_style(%struct.quoting_options* %0, i32 %1) local_unnamed_addr #11 !dbg !2614 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2618, metadata !DIExpression()), !dbg !2620
  call void @llvm.dbg.value(metadata i32 %1, metadata !2619, metadata !DIExpression()), !dbg !2620
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !2621
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2621
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2622
  store i32 %1, i32* %5, align 8, !dbg !2623, !tbaa !2611
  ret void, !dbg !2624
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable willreturn
define dso_local i32 @set_char_quoting(%struct.quoting_options* %0, i8 signext %1, i32 %2) local_unnamed_addr #17 !dbg !2625 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2629, metadata !DIExpression()), !dbg !2637
  call void @llvm.dbg.value(metadata i8 %1, metadata !2630, metadata !DIExpression()), !dbg !2637
  call void @llvm.dbg.value(metadata i32 %2, metadata !2631, metadata !DIExpression()), !dbg !2637
  call void @llvm.dbg.value(metadata i8 %1, metadata !2632, metadata !DIExpression()), !dbg !2637
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !2638
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2638
  %6 = lshr i8 %1, 5, !dbg !2639
  %7 = zext i8 %6 to i64, !dbg !2639
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !2640
  call void @llvm.dbg.value(metadata i32* %8, metadata !2633, metadata !DIExpression()), !dbg !2637
  %9 = and i8 %1, 31, !dbg !2641
  %10 = zext i8 %9 to i32, !dbg !2641
  call void @llvm.dbg.value(metadata i32 %10, metadata !2635, metadata !DIExpression()), !dbg !2637
  %11 = load i32, i32* %8, align 4, !dbg !2642, !tbaa !1021
  %12 = lshr i32 %11, %10, !dbg !2643
  %13 = and i32 %12, 1, !dbg !2644
  call void @llvm.dbg.value(metadata i32 %13, metadata !2636, metadata !DIExpression()), !dbg !2637
  %14 = and i32 %2, 1, !dbg !2645
  %15 = xor i32 %13, %14, !dbg !2646
  %16 = shl i32 %15, %10, !dbg !2647
  %17 = xor i32 %16, %11, !dbg !2648
  store i32 %17, i32* %8, align 4, !dbg !2648, !tbaa !1021
  ret i32 %13, !dbg !2649
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable willreturn
define dso_local i32 @set_quoting_flags(%struct.quoting_options* %0, i32 %1) local_unnamed_addr #17 !dbg !2650 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2654, metadata !DIExpression()), !dbg !2657
  call void @llvm.dbg.value(metadata i32 %1, metadata !2655, metadata !DIExpression()), !dbg !2657
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !2658
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2660
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2654, metadata !DIExpression()), !dbg !2657
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !2661
  %6 = load i32, i32* %5, align 4, !dbg !2661, !tbaa !2662
  call void @llvm.dbg.value(metadata i32 %6, metadata !2656, metadata !DIExpression()), !dbg !2657
  store i32 %1, i32* %5, align 4, !dbg !2663, !tbaa !2662
  ret i32 %6, !dbg !2664
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_custom_quoting(%struct.quoting_options* %0, i8* %1, i8* %2) local_unnamed_addr #8 !dbg !2665 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2669, metadata !DIExpression()), !dbg !2672
  call void @llvm.dbg.value(metadata i8* %1, metadata !2670, metadata !DIExpression()), !dbg !2672
  call void @llvm.dbg.value(metadata i8* %2, metadata !2671, metadata !DIExpression()), !dbg !2672
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !2673
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2675
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2669, metadata !DIExpression()), !dbg !2672
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2676
  store i32 10, i32* %6, align 8, !dbg !2677, !tbaa !2611
  %7 = icmp ne i8* %1, null, !dbg !2678
  %8 = icmp ne i8* %2, null
  %9 = and i1 %7, %8, !dbg !2680
  br i1 %9, label %11, label %10, !dbg !2680

10:                                               ; preds = %3
  tail call void @abort() #27, !dbg !2681
  unreachable, !dbg !2681

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2682
  store i8* %1, i8** %12, align 8, !dbg !2683, !tbaa !2684
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2685
  store i8* %2, i8** %13, align 8, !dbg !2686, !tbaa !2687
  ret void, !dbg !2688
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @quotearg_buffer(i8* %0, i64 %1, i8* %2, i64 %3, %struct.quoting_options* readonly %4) local_unnamed_addr #8 !dbg !2689 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2693, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i64 %1, metadata !2694, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i8* %2, metadata !2695, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i64 %3, metadata !2696, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2697, metadata !DIExpression()), !dbg !2701
  %6 = icmp eq %struct.quoting_options* %4, null, !dbg !2702
  %7 = select i1 %6, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %4, !dbg !2702
  call void @llvm.dbg.value(metadata %struct.quoting_options* %7, metadata !2698, metadata !DIExpression()), !dbg !2701
  %8 = tail call i32* @__errno_location() #29, !dbg !2703
  %9 = load i32, i32* %8, align 4, !dbg !2703, !tbaa !1021
  call void @llvm.dbg.value(metadata i32 %9, metadata !2699, metadata !DIExpression()), !dbg !2701
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !2704
  %11 = load i32, i32* %10, align 8, !dbg !2704, !tbaa !2611
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !2705
  %13 = load i32, i32* %12, align 4, !dbg !2705, !tbaa !2662
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !2706
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !2707
  %16 = load i8*, i8** %15, align 8, !dbg !2707, !tbaa !2684
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !2708
  %18 = load i8*, i8** %17, align 8, !dbg !2708, !tbaa !2687
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %11, i32 %13, i32* nonnull %14, i8* %16, i8* %18), !dbg !2709
  call void @llvm.dbg.value(metadata i64 %19, metadata !2700, metadata !DIExpression()), !dbg !2701
  store i32 %9, i32* %8, align 4, !dbg !2710, !tbaa !1021
  ret i64 %19, !dbg !2711
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %4, i32 %5, i32* readonly %6, i8* readonly %7, i8* readonly %8) unnamed_addr #8 !dbg !2712 {
  %10 = alloca i64, align 8
  %11 = bitcast i64* %10 to %struct.__mbstate_t*
  %12 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !2718, metadata !DIExpression()), !dbg !2788
  call void @llvm.dbg.value(metadata i64 %1, metadata !2719, metadata !DIExpression()), !dbg !2788
  call void @llvm.dbg.value(metadata i8* %2, metadata !2720, metadata !DIExpression()), !dbg !2788
  call void @llvm.dbg.value(metadata i64 %3, metadata !2721, metadata !DIExpression()), !dbg !2788
  call void @llvm.dbg.value(metadata i32 %4, metadata !2722, metadata !DIExpression()), !dbg !2788
  call void @llvm.dbg.value(metadata i32 %5, metadata !2723, metadata !DIExpression()), !dbg !2788
  call void @llvm.dbg.value(metadata i32* %6, metadata !2724, metadata !DIExpression()), !dbg !2788
  call void @llvm.dbg.value(metadata i8* %7, metadata !2725, metadata !DIExpression()), !dbg !2788
  call void @llvm.dbg.value(metadata i8* %8, metadata !2726, metadata !DIExpression()), !dbg !2788
  call void @llvm.dbg.value(metadata i64 0, metadata !2728, metadata !DIExpression()), !dbg !2788
  call void @llvm.dbg.value(metadata i64 0, metadata !2729, metadata !DIExpression()), !dbg !2788
  call void @llvm.dbg.value(metadata i8* null, metadata !2730, metadata !DIExpression()), !dbg !2788
  call void @llvm.dbg.value(metadata i64 0, metadata !2731, metadata !DIExpression()), !dbg !2788
  call void @llvm.dbg.value(metadata i8 0, metadata !2732, metadata !DIExpression()), !dbg !2788
  %13 = tail call i64 @__ctype_get_mb_cur_max() #25, !dbg !2789
  %14 = icmp eq i64 %13, 1, !dbg !2790
  call void @llvm.dbg.value(metadata i1 %14, metadata !2733, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2788
  %15 = lshr i32 %5, 1, !dbg !2791
  %16 = trunc i32 %15 to i8, !dbg !2791
  %17 = and i8 %16, 1, !dbg !2791
  call void @llvm.dbg.value(metadata i8 %17, metadata !2734, metadata !DIExpression()), !dbg !2788
  call void @llvm.dbg.value(metadata i8 0, metadata !2735, metadata !DIExpression()), !dbg !2788
  call void @llvm.dbg.value(metadata i8 0, metadata !2736, metadata !DIExpression()), !dbg !2788
  call void @llvm.dbg.value(metadata i8 1, metadata !2737, metadata !DIExpression()), !dbg !2788
  %18 = getelementptr inbounds i8, i8* %2, i64 1
  %19 = and i32 %5, 4
  %20 = icmp ne i32 %19, 0
  %21 = and i32 %5, 1
  %22 = icmp eq i32 %21, 0
  %23 = bitcast i64* %10 to i8*
  %24 = bitcast i32* %12 to i8*
  %25 = icmp eq i32* %6, null
  br label %26, !dbg !2792

26:                                               ; preds = %603, %9
  %27 = phi i32 [ %4, %9 ], [ 2, %603 ]
  %28 = phi i8* [ %7, %9 ], [ %94, %603 ]
  %29 = phi i8* [ %8, %9 ], [ %95, %603 ]
  %30 = phi i64 [ 0, %9 ], [ %124, %603 ], !dbg !2793
  %31 = phi i8* [ null, %9 ], [ %97, %603 ], !dbg !2794
  %32 = phi i64 [ 0, %9 ], [ %98, %603 ], !dbg !2795
  %33 = phi i8 [ 0, %9 ], [ %99, %603 ], !dbg !2796
  %34 = phi i64 [ %3, %9 ], [ %588, %603 ]
  %35 = phi i8 [ %17, %9 ], [ %100, %603 ], !dbg !2788
  %36 = phi i8 [ 0, %9 ], [ %126, %603 ], !dbg !2797
  %37 = phi i8 [ 0, %9 ], [ %127, %603 ], !dbg !2798
  %38 = phi i8 [ 1, %9 ], [ %128, %603 ], !dbg !2799
  %39 = phi i64 [ %1, %9 ], [ %124, %603 ]
  call void @llvm.dbg.value(metadata i64 %39, metadata !2719, metadata !DIExpression()), !dbg !2788
  call void @llvm.dbg.value(metadata i8 %38, metadata !2737, metadata !DIExpression()), !dbg !2788
  call void @llvm.dbg.value(metadata i8 %37, metadata !2736, metadata !DIExpression()), !dbg !2788
  call void @llvm.dbg.value(metadata i8 %36, metadata !2735, metadata !DIExpression()), !dbg !2788
  call void @llvm.dbg.value(metadata i8 %35, metadata !2734, metadata !DIExpression()), !dbg !2788
  call void @llvm.dbg.value(metadata i64 %34, metadata !2721, metadata !DIExpression()), !dbg !2788
  call void @llvm.dbg.value(metadata i8 %33, metadata !2732, metadata !DIExpression()), !dbg !2788
  call void @llvm.dbg.value(metadata i64 %32, metadata !2731, metadata !DIExpression()), !dbg !2788
  call void @llvm.dbg.value(metadata i8* %31, metadata !2730, metadata !DIExpression()), !dbg !2788
  call void @llvm.dbg.value(metadata i64 %30, metadata !2729, metadata !DIExpression()), !dbg !2788
  call void @llvm.dbg.value(metadata i64 0, metadata !2728, metadata !DIExpression()), !dbg !2788
  call void @llvm.dbg.value(metadata i8* %29, metadata !2726, metadata !DIExpression()), !dbg !2788
  call void @llvm.dbg.value(metadata i8* %28, metadata !2725, metadata !DIExpression()), !dbg !2788
  call void @llvm.dbg.value(metadata i32 %27, metadata !2722, metadata !DIExpression()), !dbg !2788
  call void @llvm.dbg.label(metadata !2782), !dbg !2800
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
  ], !dbg !2801

40:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 %35, metadata !2734, metadata !DIExpression()), !dbg !2788
  call void @llvm.dbg.value(metadata i32 5, metadata !2722, metadata !DIExpression()), !dbg !2788
  br label %92, !dbg !2802

41:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 %35, metadata !2734, metadata !DIExpression()), !dbg !2788
  call void @llvm.dbg.value(metadata i32 5, metadata !2722, metadata !DIExpression()), !dbg !2788
  %42 = and i8 %35, 1, !dbg !2804
  %43 = icmp eq i8 %42, 0, !dbg !2804
  br i1 %43, label %44, label %92, !dbg !2802

44:                                               ; preds = %41
  %45 = icmp eq i64 %39, 0, !dbg !2806
  br i1 %45, label %92, label %46, !dbg !2809

46:                                               ; preds = %44
  store i8 34, i8* %0, align 1, !dbg !2806, !tbaa !1096
  br label %92, !dbg !2806

47:                                               ; preds = %26, %26
  %48 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.114, i64 0, i64 0), i32 %27), !dbg !2810
  call void @llvm.dbg.value(metadata i8* %48, metadata !2725, metadata !DIExpression()), !dbg !2788
  %49 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.115, i64 0, i64 0), i32 %27), !dbg !2814
  call void @llvm.dbg.value(metadata i8* %49, metadata !2726, metadata !DIExpression()), !dbg !2788
  br label %50, !dbg !2815

50:                                               ; preds = %26, %47
  %51 = phi i8* [ %48, %47 ], [ %28, %26 ]
  %52 = phi i8* [ %49, %47 ], [ %29, %26 ]
  call void @llvm.dbg.value(metadata i8* %52, metadata !2726, metadata !DIExpression()), !dbg !2788
  call void @llvm.dbg.value(metadata i8* %51, metadata !2725, metadata !DIExpression()), !dbg !2788
  %53 = and i8 %35, 1, !dbg !2816
  %54 = icmp eq i8 %53, 0, !dbg !2816
  br i1 %54, label %55, label %70, !dbg !2818

55:                                               ; preds = %50
  call void @llvm.dbg.value(metadata i8* %51, metadata !2730, metadata !DIExpression()), !dbg !2788
  call void @llvm.dbg.value(metadata i64 0, metadata !2728, metadata !DIExpression()), !dbg !2788
  %56 = load i8, i8* %51, align 1, !dbg !2819, !tbaa !1096
  %57 = icmp eq i8 %56, 0, !dbg !2822
  br i1 %57, label %70, label %58, !dbg !2822

58:                                               ; preds = %55, %65
  %59 = phi i8 [ %68, %65 ], [ %56, %55 ]
  %60 = phi i8* [ %67, %65 ], [ %51, %55 ]
  %61 = phi i64 [ %66, %65 ], [ 0, %55 ]
  call void @llvm.dbg.value(metadata i8* %60, metadata !2730, metadata !DIExpression()), !dbg !2788
  call void @llvm.dbg.value(metadata i64 %61, metadata !2728, metadata !DIExpression()), !dbg !2788
  %62 = icmp ult i64 %61, %39, !dbg !2823
  br i1 %62, label %63, label %65, !dbg !2826

63:                                               ; preds = %58
  %64 = getelementptr inbounds i8, i8* %0, i64 %61, !dbg !2823
  store i8 %59, i8* %64, align 1, !dbg !2823, !tbaa !1096
  br label %65, !dbg !2823

65:                                               ; preds = %63, %58
  %66 = add i64 %61, 1, !dbg !2826
  call void @llvm.dbg.value(metadata i64 %66, metadata !2728, metadata !DIExpression()), !dbg !2788
  %67 = getelementptr inbounds i8, i8* %60, i64 1, !dbg !2827
  call void @llvm.dbg.value(metadata i8* %67, metadata !2730, metadata !DIExpression()), !dbg !2788
  %68 = load i8, i8* %67, align 1, !dbg !2819, !tbaa !1096
  %69 = icmp eq i8 %68, 0, !dbg !2822
  br i1 %69, label %70, label %58, !dbg !2822, !llvm.loop !2828

70:                                               ; preds = %65, %55, %50
  %71 = phi i64 [ 0, %50 ], [ 0, %55 ], [ %66, %65 ], !dbg !2830
  call void @llvm.dbg.value(metadata i64 %71, metadata !2728, metadata !DIExpression()), !dbg !2788
  call void @llvm.dbg.value(metadata i8 1, metadata !2732, metadata !DIExpression()), !dbg !2788
  call void @llvm.dbg.value(metadata i8* %52, metadata !2730, metadata !DIExpression()), !dbg !2788
  %72 = call i64 @strlen(i8* nonnull dereferenceable(1) %52) #26, !dbg !2831
  call void @llvm.dbg.value(metadata i64 %72, metadata !2731, metadata !DIExpression()), !dbg !2788
  br label %92, !dbg !2832

73:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 1, metadata !2732, metadata !DIExpression()), !dbg !2788
  br label %74, !dbg !2833

74:                                               ; preds = %26, %73
  %75 = phi i8 [ %33, %26 ], [ 1, %73 ], !dbg !2788
  call void @llvm.dbg.value(metadata i8 %75, metadata !2732, metadata !DIExpression()), !dbg !2788
  call void @llvm.dbg.value(metadata i8 1, metadata !2734, metadata !DIExpression()), !dbg !2788
  br label %76, !dbg !2834

76:                                               ; preds = %26, %74
  %77 = phi i8 [ %33, %26 ], [ %75, %74 ], !dbg !2796
  %78 = phi i8 [ %35, %26 ], [ 1, %74 ], !dbg !2788
  call void @llvm.dbg.value(metadata i8 %78, metadata !2734, metadata !DIExpression()), !dbg !2788
  call void @llvm.dbg.value(metadata i8 %77, metadata !2732, metadata !DIExpression()), !dbg !2788
  %79 = and i8 %78, 1, !dbg !2835
  %80 = icmp eq i8 %79, 0, !dbg !2835
  %81 = select i1 %80, i8 1, i8 %77, !dbg !2837
  br label %82, !dbg !2837

82:                                               ; preds = %76, %26
  %83 = phi i8 [ %33, %26 ], [ %81, %76 ], !dbg !2788
  %84 = phi i8 [ %35, %26 ], [ %78, %76 ], !dbg !2791
  call void @llvm.dbg.value(metadata i8 %84, metadata !2734, metadata !DIExpression()), !dbg !2788
  call void @llvm.dbg.value(metadata i8 %83, metadata !2732, metadata !DIExpression()), !dbg !2788
  call void @llvm.dbg.value(metadata i32 2, metadata !2722, metadata !DIExpression()), !dbg !2788
  %85 = and i8 %84, 1, !dbg !2838
  %86 = icmp eq i8 %85, 0, !dbg !2838
  br i1 %86, label %87, label %92, !dbg !2840

87:                                               ; preds = %82
  %88 = icmp eq i64 %39, 0, !dbg !2841
  br i1 %88, label %92, label %89, !dbg !2844

89:                                               ; preds = %87
  store i8 39, i8* %0, align 1, !dbg !2841, !tbaa !1096
  br label %92, !dbg !2841

90:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 0, metadata !2734, metadata !DIExpression()), !dbg !2788
  br label %92, !dbg !2845

91:                                               ; preds = %26
  call void @abort() #27, !dbg !2846
  unreachable, !dbg !2846

92:                                               ; preds = %40, %82, %89, %87, %26, %41, %46, %44, %90, %70
  %93 = phi i32 [ 0, %90 ], [ %27, %70 ], [ 5, %44 ], [ 5, %46 ], [ 5, %41 ], [ %27, %26 ], [ 2, %87 ], [ 2, %89 ], [ 2, %82 ], [ 5, %40 ]
  %94 = phi i8* [ %28, %90 ], [ %51, %70 ], [ %28, %44 ], [ %28, %46 ], [ %28, %41 ], [ %28, %26 ], [ %28, %87 ], [ %28, %89 ], [ %28, %82 ], [ %28, %40 ]
  %95 = phi i8* [ %29, %90 ], [ %52, %70 ], [ %29, %44 ], [ %29, %46 ], [ %29, %41 ], [ %29, %26 ], [ %29, %87 ], [ %29, %89 ], [ %29, %82 ], [ %29, %40 ]
  %96 = phi i64 [ 0, %90 ], [ %71, %70 ], [ 1, %44 ], [ 1, %46 ], [ 0, %41 ], [ 0, %26 ], [ 1, %87 ], [ 1, %89 ], [ 0, %82 ], [ 0, %40 ], !dbg !2830
  %97 = phi i8* [ %31, %90 ], [ %52, %70 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.116, i64 0, i64 0), %44 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.116, i64 0, i64 0), %46 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.116, i64 0, i64 0), %41 ], [ %31, %26 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.115, i64 0, i64 0), %87 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.115, i64 0, i64 0), %89 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.115, i64 0, i64 0), %82 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.116, i64 0, i64 0), %40 ], !dbg !2788
  %98 = phi i64 [ %32, %90 ], [ %72, %70 ], [ 1, %44 ], [ 1, %46 ], [ 1, %41 ], [ %32, %26 ], [ 1, %87 ], [ 1, %89 ], [ 1, %82 ], [ 1, %40 ], !dbg !2788
  %99 = phi i8 [ %33, %90 ], [ 1, %70 ], [ 1, %44 ], [ 1, %46 ], [ 1, %41 ], [ 1, %26 ], [ %83, %87 ], [ %83, %89 ], [ %83, %82 ], [ 1, %40 ], !dbg !2788
  %100 = phi i8 [ 0, %90 ], [ %35, %70 ], [ %35, %44 ], [ %35, %46 ], [ %35, %41 ], [ 0, %26 ], [ %84, %87 ], [ %84, %89 ], [ %84, %82 ], [ 1, %40 ], !dbg !2788
  call void @llvm.dbg.value(metadata i8 %100, metadata !2734, metadata !DIExpression()), !dbg !2788
  call void @llvm.dbg.value(metadata i8 %99, metadata !2732, metadata !DIExpression()), !dbg !2788
  call void @llvm.dbg.value(metadata i64 %98, metadata !2731, metadata !DIExpression()), !dbg !2788
  call void @llvm.dbg.value(metadata i8* %97, metadata !2730, metadata !DIExpression()), !dbg !2788
  call void @llvm.dbg.value(metadata i64 %96, metadata !2728, metadata !DIExpression()), !dbg !2788
  call void @llvm.dbg.value(metadata i8* %95, metadata !2726, metadata !DIExpression()), !dbg !2788
  call void @llvm.dbg.value(metadata i8* %94, metadata !2725, metadata !DIExpression()), !dbg !2788
  call void @llvm.dbg.value(metadata i32 %93, metadata !2722, metadata !DIExpression()), !dbg !2788
  call void @llvm.dbg.value(metadata i64 0, metadata !2727, metadata !DIExpression()), !dbg !2788
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
  br label %121, !dbg !2847

121:                                              ; preds = %577, %92
  %122 = phi i64 [ 0, %92 ], [ %586, %577 ], !dbg !2848
  %123 = phi i64 [ %96, %92 ], [ %579, %577 ], !dbg !2830
  %124 = phi i64 [ %30, %92 ], [ %580, %577 ], !dbg !2793
  %125 = phi i64 [ %34, %92 ], [ %581, %577 ]
  %126 = phi i8 [ %36, %92 ], [ %582, %577 ], !dbg !2797
  %127 = phi i8 [ %37, %92 ], [ %583, %577 ], !dbg !2798
  %128 = phi i8 [ %38, %92 ], [ %584, %577 ], !dbg !2799
  %129 = phi i64 [ %39, %92 ], [ %585, %577 ]
  call void @llvm.dbg.value(metadata i64 %129, metadata !2719, metadata !DIExpression()), !dbg !2788
  call void @llvm.dbg.value(metadata i8 %128, metadata !2737, metadata !DIExpression()), !dbg !2788
  call void @llvm.dbg.value(metadata i8 %127, metadata !2736, metadata !DIExpression()), !dbg !2788
  call void @llvm.dbg.value(metadata i8 %126, metadata !2735, metadata !DIExpression()), !dbg !2788
  call void @llvm.dbg.value(metadata i64 %125, metadata !2721, metadata !DIExpression()), !dbg !2788
  call void @llvm.dbg.value(metadata i64 %124, metadata !2729, metadata !DIExpression()), !dbg !2788
  call void @llvm.dbg.value(metadata i64 %123, metadata !2728, metadata !DIExpression()), !dbg !2788
  call void @llvm.dbg.value(metadata i64 %122, metadata !2727, metadata !DIExpression()), !dbg !2788
  %130 = icmp eq i64 %125, -1, !dbg !2849
  br i1 %130, label %131, label %135, !dbg !2850

131:                                              ; preds = %121
  %132 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !2851
  %133 = load i8, i8* %132, align 1, !dbg !2851, !tbaa !1096
  %134 = icmp eq i8 %133, 0, !dbg !2852
  br i1 %134, label %587, label %137, !dbg !2853

135:                                              ; preds = %121
  %136 = icmp eq i64 %122, %125, !dbg !2854
  br i1 %136, label %587, label %137, !dbg !2853

137:                                              ; preds = %131, %135
  call void @llvm.dbg.value(metadata i8 0, metadata !2743, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i8 0, metadata !2744, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i8 0, metadata !2745, metadata !DIExpression()), !dbg !2855
  br i1 %106, label %138, label %153, !dbg !2856

138:                                              ; preds = %137
  %139 = add i64 %122, %98, !dbg !2858
  %140 = and i1 %107, %130, !dbg !2859
  br i1 %140, label %141, label %143, !dbg !2859

141:                                              ; preds = %138
  %142 = call i64 @strlen(i8* nonnull dereferenceable(1) %2) #26, !dbg !2860
  call void @llvm.dbg.value(metadata i64 %142, metadata !2721, metadata !DIExpression()), !dbg !2788
  br label %143, !dbg !2861

143:                                              ; preds = %138, %141
  %144 = phi i64 [ %142, %141 ], [ %125, %138 ], !dbg !2861
  call void @llvm.dbg.value(metadata i64 %144, metadata !2721, metadata !DIExpression()), !dbg !2788
  %145 = icmp ugt i64 %139, %144, !dbg !2862
  br i1 %145, label %153, label %146, !dbg !2863

146:                                              ; preds = %143
  %147 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !2864
  %148 = call i32 @bcmp(i8* %147, i8* %97, i64 %98), !dbg !2865
  %149 = icmp ne i32 %148, 0, !dbg !2866
  %150 = or i1 %149, %109, !dbg !2867
  %151 = xor i1 %149, true, !dbg !2867
  %152 = zext i1 %151 to i8, !dbg !2867
  br i1 %150, label %153, label %646, !dbg !2867

153:                                              ; preds = %146, %143, %137
  %154 = phi i64 [ %144, %146 ], [ %144, %143 ], [ %125, %137 ]
  %155 = phi i1 [ %149, %146 ], [ true, %143 ], [ true, %137 ], !dbg !2855
  %156 = phi i8 [ %152, %146 ], [ 0, %143 ], [ 0, %137 ], !dbg !2855
  call void @llvm.dbg.value(metadata i8 %156, metadata !2743, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i64 %154, metadata !2721, metadata !DIExpression()), !dbg !2788
  %157 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !2868
  %158 = load i8, i8* %157, align 1, !dbg !2868, !tbaa !1096
  call void @llvm.dbg.value(metadata i8 %158, metadata !2738, metadata !DIExpression()), !dbg !2855
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
  ], !dbg !2869

159:                                              ; preds = %153
  br i1 %102, label %160, label %208, !dbg !2870

160:                                              ; preds = %159
  br i1 %109, label %161, label %635, !dbg !2871

161:                                              ; preds = %160
  call void @llvm.dbg.value(metadata i8 1, metadata !2744, metadata !DIExpression()), !dbg !2855
  %162 = and i8 %126, 1, !dbg !2875
  %163 = icmp eq i8 %162, 0, !dbg !2875
  %164 = and i1 %110, %163, !dbg !2875
  br i1 %164, label %165, label %181, !dbg !2875

165:                                              ; preds = %161
  %166 = icmp ult i64 %123, %129, !dbg !2877
  br i1 %166, label %167, label %169, !dbg !2881

167:                                              ; preds = %165
  %168 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !2877
  store i8 39, i8* %168, align 1, !dbg !2877, !tbaa !1096
  br label %169, !dbg !2877

169:                                              ; preds = %167, %165
  %170 = add i64 %123, 1, !dbg !2881
  call void @llvm.dbg.value(metadata i64 %170, metadata !2728, metadata !DIExpression()), !dbg !2788
  %171 = icmp ult i64 %170, %129, !dbg !2882
  br i1 %171, label %172, label %174, !dbg !2885

172:                                              ; preds = %169
  %173 = getelementptr inbounds i8, i8* %0, i64 %170, !dbg !2882
  store i8 36, i8* %173, align 1, !dbg !2882, !tbaa !1096
  br label %174, !dbg !2882

174:                                              ; preds = %172, %169
  %175 = add i64 %123, 2, !dbg !2885
  call void @llvm.dbg.value(metadata i64 %175, metadata !2728, metadata !DIExpression()), !dbg !2788
  %176 = icmp ult i64 %175, %129, !dbg !2886
  br i1 %176, label %177, label %179, !dbg !2889

177:                                              ; preds = %174
  %178 = getelementptr inbounds i8, i8* %0, i64 %175, !dbg !2886
  store i8 39, i8* %178, align 1, !dbg !2886, !tbaa !1096
  br label %179, !dbg !2886

179:                                              ; preds = %177, %174
  %180 = add i64 %123, 3, !dbg !2889
  call void @llvm.dbg.value(metadata i64 %180, metadata !2728, metadata !DIExpression()), !dbg !2788
  call void @llvm.dbg.value(metadata i8 1, metadata !2735, metadata !DIExpression()), !dbg !2788
  br label %181, !dbg !2890

181:                                              ; preds = %161, %179
  %182 = phi i64 [ %180, %179 ], [ %123, %161 ], !dbg !2788
  %183 = phi i8 [ 1, %179 ], [ %126, %161 ], !dbg !2788
  call void @llvm.dbg.value(metadata i8 %183, metadata !2735, metadata !DIExpression()), !dbg !2788
  call void @llvm.dbg.value(metadata i64 %182, metadata !2728, metadata !DIExpression()), !dbg !2788
  %184 = icmp ult i64 %182, %129, !dbg !2891
  br i1 %184, label %185, label %187, !dbg !2894

185:                                              ; preds = %181
  %186 = getelementptr inbounds i8, i8* %0, i64 %182, !dbg !2891
  store i8 92, i8* %186, align 1, !dbg !2891, !tbaa !1096
  br label %187, !dbg !2891

187:                                              ; preds = %185, %181
  %188 = add i64 %182, 1, !dbg !2894
  call void @llvm.dbg.value(metadata i64 %188, metadata !2728, metadata !DIExpression()), !dbg !2788
  %189 = add i64 %122, 1
  %190 = icmp ult i64 %189, %154
  %191 = and i1 %103, %190, !dbg !2895
  br i1 %191, label %192, label %473, !dbg !2895

192:                                              ; preds = %187
  %193 = getelementptr inbounds i8, i8* %2, i64 %189, !dbg !2897
  %194 = load i8, i8* %193, align 1, !dbg !2897, !tbaa !1096
  %195 = add i8 %194, -48, !dbg !2898
  %196 = icmp ult i8 %195, 10, !dbg !2898
  br i1 %196, label %197, label %473, !dbg !2898

197:                                              ; preds = %192
  %198 = icmp ult i64 %188, %129, !dbg !2899
  br i1 %198, label %199, label %201, !dbg !2903

199:                                              ; preds = %197
  %200 = getelementptr inbounds i8, i8* %0, i64 %188, !dbg !2899
  store i8 48, i8* %200, align 1, !dbg !2899, !tbaa !1096
  br label %201, !dbg !2899

201:                                              ; preds = %199, %197
  %202 = add i64 %182, 2, !dbg !2903
  call void @llvm.dbg.value(metadata i64 %202, metadata !2728, metadata !DIExpression()), !dbg !2788
  %203 = icmp ult i64 %202, %129, !dbg !2904
  br i1 %203, label %204, label %206, !dbg !2907

204:                                              ; preds = %201
  %205 = getelementptr inbounds i8, i8* %0, i64 %202, !dbg !2904
  store i8 48, i8* %205, align 1, !dbg !2904, !tbaa !1096
  br label %206, !dbg !2904

206:                                              ; preds = %204, %201
  %207 = add i64 %182, 3, !dbg !2907
  call void @llvm.dbg.value(metadata i64 %207, metadata !2728, metadata !DIExpression()), !dbg !2788
  br label %473, !dbg !2908

208:                                              ; preds = %159
  br i1 %22, label %473, label %577, !dbg !2909

209:                                              ; preds = %153
  switch i32 %93, label %473 [
    i32 2, label %210
    i32 5, label %211
  ], !dbg !2910

210:                                              ; preds = %209
  br i1 %109, label %473, label %631, !dbg !2911

211:                                              ; preds = %209
  %212 = add i64 %122, 2
  %213 = icmp ult i64 %212, %154
  %214 = and i1 %20, %213, !dbg !2913
  br i1 %214, label %215, label %473, !dbg !2913

215:                                              ; preds = %211
  %216 = add i64 %122, 1, !dbg !2915
  %217 = getelementptr inbounds i8, i8* %2, i64 %216, !dbg !2916
  %218 = load i8, i8* %217, align 1, !dbg !2916, !tbaa !1096
  %219 = icmp eq i8 %218, 63, !dbg !2917
  br i1 %219, label %220, label %473, !dbg !2918

220:                                              ; preds = %215
  %221 = getelementptr inbounds i8, i8* %2, i64 %212, !dbg !2919
  %222 = load i8, i8* %221, align 1, !dbg !2919, !tbaa !1096
  %223 = sext i8 %222 to i32, !dbg !2919
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
  ], !dbg !2920

224:                                              ; preds = %220, %220, %220, %220, %220, %220, %220, %220, %220
  br i1 %109, label %225, label %646, !dbg !2921

225:                                              ; preds = %224
  call void @llvm.dbg.value(metadata i8 %222, metadata !2738, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i64 undef, metadata !2727, metadata !DIExpression()), !dbg !2788
  %226 = icmp ult i64 %123, %129, !dbg !2923
  br i1 %226, label %227, label %229, !dbg !2926

227:                                              ; preds = %225
  %228 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !2923
  store i8 63, i8* %228, align 1, !dbg !2923, !tbaa !1096
  br label %229, !dbg !2923

229:                                              ; preds = %227, %225
  %230 = add i64 %123, 1, !dbg !2926
  call void @llvm.dbg.value(metadata i64 %230, metadata !2728, metadata !DIExpression()), !dbg !2788
  %231 = icmp ult i64 %230, %129, !dbg !2927
  br i1 %231, label %232, label %234, !dbg !2930

232:                                              ; preds = %229
  %233 = getelementptr inbounds i8, i8* %0, i64 %230, !dbg !2927
  store i8 34, i8* %233, align 1, !dbg !2927, !tbaa !1096
  br label %234, !dbg !2927

234:                                              ; preds = %232, %229
  %235 = add i64 %123, 2, !dbg !2930
  call void @llvm.dbg.value(metadata i64 %235, metadata !2728, metadata !DIExpression()), !dbg !2788
  %236 = icmp ult i64 %235, %129, !dbg !2931
  br i1 %236, label %237, label %239, !dbg !2934

237:                                              ; preds = %234
  %238 = getelementptr inbounds i8, i8* %0, i64 %235, !dbg !2931
  store i8 34, i8* %238, align 1, !dbg !2931, !tbaa !1096
  br label %239, !dbg !2931

239:                                              ; preds = %237, %234
  %240 = add i64 %123, 3, !dbg !2934
  call void @llvm.dbg.value(metadata i64 %240, metadata !2728, metadata !DIExpression()), !dbg !2788
  %241 = icmp ult i64 %240, %129, !dbg !2935
  br i1 %241, label %242, label %244, !dbg !2938

242:                                              ; preds = %239
  %243 = getelementptr inbounds i8, i8* %0, i64 %240, !dbg !2935
  store i8 63, i8* %243, align 1, !dbg !2935, !tbaa !1096
  br label %244, !dbg !2935

244:                                              ; preds = %242, %239
  %245 = add i64 %123, 4, !dbg !2938
  call void @llvm.dbg.value(metadata i64 %245, metadata !2728, metadata !DIExpression()), !dbg !2788
  br label %473, !dbg !2939

246:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 98, metadata !2742, metadata !DIExpression()), !dbg !2855
  br label %256, !dbg !2940

247:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 102, metadata !2742, metadata !DIExpression()), !dbg !2855
  br label %256, !dbg !2941

248:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 114, metadata !2742, metadata !DIExpression()), !dbg !2855
  br label %254, !dbg !2942

249:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 116, metadata !2742, metadata !DIExpression()), !dbg !2855
  br label %254, !dbg !2943

250:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 118, metadata !2742, metadata !DIExpression()), !dbg !2855
  br label %256, !dbg !2944

251:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 %158, metadata !2742, metadata !DIExpression()), !dbg !2855
  br i1 %110, label %252, label %253, !dbg !2945

252:                                              ; preds = %251
  br i1 %109, label %533, label %631, !dbg !2946

253:                                              ; preds = %251
  br i1 %120, label %533, label %254, !dbg !2949

254:                                              ; preds = %253, %153, %249, %248
  %255 = phi i8 [ 92, %253 ], [ 116, %249 ], [ 114, %248 ], [ 110, %153 ], !dbg !2951
  call void @llvm.dbg.value(metadata i8 %255, metadata !2742, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.label(metadata !2783), !dbg !2952
  br i1 %111, label %256, label %631, !dbg !2953

256:                                              ; preds = %153, %254, %250, %247, %246
  %257 = phi i8 [ %255, %254 ], [ 118, %250 ], [ 102, %247 ], [ 98, %246 ], [ 97, %153 ], !dbg !2951
  call void @llvm.dbg.value(metadata i8 %257, metadata !2742, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.label(metadata !2784), !dbg !2955
  br i1 %102, label %495, label %473, !dbg !2956

258:                                              ; preds = %153, %153
  switch i64 %154, label %473 [
    i64 -1, label %259
    i64 1, label %262
  ], !dbg !2957

259:                                              ; preds = %258
  %260 = load i8, i8* %18, align 1, !dbg !2958, !tbaa !1096
  %261 = icmp eq i8 %260, 0, !dbg !2960
  br i1 %261, label %262, label %473, !dbg !2961

262:                                              ; preds = %258, %259, %153, %153
  %263 = icmp eq i64 %122, 0, !dbg !2962
  br i1 %263, label %264, label %473, !dbg !2964

264:                                              ; preds = %262, %153
  call void @llvm.dbg.value(metadata i8 1, metadata !2745, metadata !DIExpression()), !dbg !2855
  br label %265, !dbg !2965

265:                                              ; preds = %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %264
  %266 = phi i8 [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 1, %264 ], !dbg !2855
  call void @llvm.dbg.value(metadata i8 %266, metadata !2745, metadata !DIExpression()), !dbg !2855
  br i1 %111, label %473, label %631, !dbg !2966

267:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 1, metadata !2736, metadata !DIExpression()), !dbg !2788
  call void @llvm.dbg.value(metadata i8 1, metadata !2745, metadata !DIExpression()), !dbg !2855
  br i1 %110, label %268, label %473, !dbg !2968

268:                                              ; preds = %267
  br i1 %109, label %269, label %631, !dbg !2969

269:                                              ; preds = %268
  %270 = icmp eq i64 %129, 0, !dbg !2972
  %271 = icmp ne i64 %124, 0
  %272 = or i1 %271, %270, !dbg !2974
  %273 = select i1 %272, i64 %124, i64 %129, !dbg !2974
  %274 = select i1 %272, i64 %129, i64 0, !dbg !2974
  call void @llvm.dbg.value(metadata i64 %274, metadata !2719, metadata !DIExpression()), !dbg !2788
  call void @llvm.dbg.value(metadata i64 %273, metadata !2729, metadata !DIExpression()), !dbg !2788
  %275 = icmp ult i64 %123, %274, !dbg !2975
  br i1 %275, label %276, label %278, !dbg !2978

276:                                              ; preds = %269
  %277 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !2975
  store i8 39, i8* %277, align 1, !dbg !2975, !tbaa !1096
  br label %278, !dbg !2975

278:                                              ; preds = %276, %269
  %279 = add i64 %123, 1, !dbg !2978
  call void @llvm.dbg.value(metadata i64 %279, metadata !2728, metadata !DIExpression()), !dbg !2788
  %280 = icmp ult i64 %279, %274, !dbg !2979
  br i1 %280, label %281, label %283, !dbg !2982

281:                                              ; preds = %278
  %282 = getelementptr inbounds i8, i8* %0, i64 %279, !dbg !2979
  store i8 92, i8* %282, align 1, !dbg !2979, !tbaa !1096
  br label %283, !dbg !2979

283:                                              ; preds = %281, %278
  %284 = add i64 %123, 2, !dbg !2982
  call void @llvm.dbg.value(metadata i64 %284, metadata !2728, metadata !DIExpression()), !dbg !2788
  %285 = icmp ult i64 %284, %274, !dbg !2983
  br i1 %285, label %286, label %288, !dbg !2986

286:                                              ; preds = %283
  %287 = getelementptr inbounds i8, i8* %0, i64 %284, !dbg !2983
  store i8 39, i8* %287, align 1, !dbg !2983, !tbaa !1096
  br label %288, !dbg !2983

288:                                              ; preds = %286, %283
  %289 = add i64 %123, 3, !dbg !2986
  call void @llvm.dbg.value(metadata i64 %289, metadata !2728, metadata !DIExpression()), !dbg !2788
  call void @llvm.dbg.value(metadata i8 0, metadata !2735, metadata !DIExpression()), !dbg !2788
  br label %473, !dbg !2987

290:                                              ; preds = %153
  br i1 %14, label %291, label %301, !dbg !2988

291:                                              ; preds = %290
  call void @llvm.dbg.value(metadata i64 1, metadata !2746, metadata !DIExpression()), !dbg !2989
  %292 = tail call i16** @__ctype_b_loc() #29, !dbg !2990
  %293 = load i16*, i16** %292, align 8, !dbg !2990, !tbaa !792
  %294 = zext i8 %158 to i64, !dbg !2990
  %295 = getelementptr inbounds i16, i16* %293, i64 %294, !dbg !2990
  %296 = load i16, i16* %295, align 2, !dbg !2990, !tbaa !1236
  %297 = lshr i16 %296, 14, !dbg !2992
  %298 = trunc i16 %297 to i8, !dbg !2992
  %299 = and i8 %298, 1, !dbg !2992
  call void @llvm.dbg.value(metadata i8 %354, metadata !2749, metadata !DIExpression()), !dbg !2989
  call void @llvm.dbg.value(metadata i64 %355, metadata !2746, metadata !DIExpression()), !dbg !2989
  call void @llvm.dbg.value(metadata i64 %306, metadata !2721, metadata !DIExpression()), !dbg !2788
  %300 = icmp eq i8 %299, 0, !dbg !2993
  call void @llvm.dbg.value(metadata i1 %357, metadata !2745, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2855
  br label %359, !dbg !2994

301:                                              ; preds = %290
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %23) #25, !dbg !2995
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %11, metadata !2750, metadata !DIExpression()), !dbg !2996
  call void @llvm.dbg.value(metadata i8* %23, metadata !2997, metadata !DIExpression()) #25, !dbg !3004
  call void @llvm.dbg.value(metadata i32 0, metadata !3002, metadata !DIExpression()) #25, !dbg !3004
  call void @llvm.dbg.value(metadata i64 8, metadata !3003, metadata !DIExpression()) #25, !dbg !3004
  store i64 0, i64* %10, align 8, !dbg !3006
  call void @llvm.dbg.value(metadata i64 0, metadata !2746, metadata !DIExpression()), !dbg !2989
  call void @llvm.dbg.value(metadata i8 1, metadata !2749, metadata !DIExpression()), !dbg !2989
  %302 = icmp eq i64 %154, -1, !dbg !3007
  br i1 %302, label %303, label %305, !dbg !3009

303:                                              ; preds = %301
  %304 = call i64 @strlen(i8* nonnull dereferenceable(1) %2) #26, !dbg !3010
  call void @llvm.dbg.value(metadata i64 %304, metadata !2721, metadata !DIExpression()), !dbg !2788
  br label %305, !dbg !3011

305:                                              ; preds = %303, %301
  %306 = phi i64 [ %304, %303 ], [ %154, %301 ], !dbg !2855
  call void @llvm.dbg.value(metadata i64 %306, metadata !2721, metadata !DIExpression()), !dbg !2788
  br label %307, !dbg !3012

307:                                              ; preds = %344, %305
  %308 = phi i64 [ 0, %305 ], [ %349, %344 ], !dbg !3013
  %309 = phi i8 [ 1, %305 ], [ %348, %344 ], !dbg !3014
  call void @llvm.dbg.value(metadata i8 %309, metadata !2749, metadata !DIExpression()), !dbg !2989
  call void @llvm.dbg.value(metadata i64 %308, metadata !2746, metadata !DIExpression()), !dbg !2989
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %24) #25, !dbg !3015
  %310 = add i64 %308, %122, !dbg !3016
  %311 = getelementptr inbounds i8, i8* %2, i64 %310, !dbg !3017
  %312 = sub i64 %306, %310, !dbg !3018
  call void @llvm.dbg.value(metadata i32* %12, metadata !2768, metadata !DIExpression(DW_OP_deref)), !dbg !3019
  %313 = call i64 @rpl_mbrtowc(i32* nonnull %12, i8* %311, i64 %312, %struct.__mbstate_t* nonnull %11) #25, !dbg !3020
  call void @llvm.dbg.value(metadata i64 %313, metadata !2771, metadata !DIExpression()), !dbg !3019
  switch i64 %313, label %328 [
    i64 0, label %340
    i64 -1, label %341
    i64 -2, label %314
  ], !dbg !3021

314:                                              ; preds = %307
  call void @llvm.dbg.value(metadata i64 %308, metadata !2746, metadata !DIExpression()), !dbg !2989
  %315 = icmp ugt i64 %306, %310, !dbg !3022
  br i1 %315, label %316, label %341, !dbg !3024

316:                                              ; preds = %314
  %317 = sub i64 %306, %122, !dbg !3025
  br label %318, !dbg !3025

318:                                              ; preds = %316, %324
  %319 = phi i64 [ %326, %324 ], [ %310, %316 ]
  %320 = phi i64 [ %325, %324 ], [ %308, %316 ]
  call void @llvm.dbg.value(metadata i64 %320, metadata !2746, metadata !DIExpression()), !dbg !2989
  %321 = getelementptr inbounds i8, i8* %2, i64 %319, !dbg !3026
  %322 = load i8, i8* %321, align 1, !dbg !3026, !tbaa !1096
  %323 = icmp eq i8 %322, 0, !dbg !3024
  br i1 %323, label %341, label %324, !dbg !3025

324:                                              ; preds = %318
  %325 = add i64 %320, 1, !dbg !3027
  call void @llvm.dbg.value(metadata i64 %325, metadata !2746, metadata !DIExpression()), !dbg !2989
  %326 = add i64 %325, %122, !dbg !3028
  %327 = icmp ult i64 %326, %306, !dbg !3022
  br i1 %327, label %318, label %341, !dbg !3024, !llvm.loop !3029

328:                                              ; preds = %307
  %329 = icmp ugt i64 %313, 1
  %330 = and i1 %113, %329, !dbg !3030
  call void @llvm.dbg.value(metadata i64 1, metadata !2772, metadata !DIExpression()), !dbg !3031
  br i1 %330, label %331, label %344, !dbg !3030

331:                                              ; preds = %328, %337
  %332 = phi i64 [ %338, %337 ], [ 1, %328 ]
  call void @llvm.dbg.value(metadata i64 %332, metadata !2772, metadata !DIExpression()), !dbg !3031
  %333 = add i64 %332, %310, !dbg !3032
  %334 = getelementptr inbounds i8, i8* %2, i64 %333, !dbg !3035
  %335 = load i8, i8* %334, align 1, !dbg !3035, !tbaa !1096
  %336 = sext i8 %335 to i32, !dbg !3035
  switch i32 %336, label %337 [
    i32 91, label %352
    i32 92, label %352
    i32 94, label %352
    i32 96, label %352
    i32 124, label %352
  ], !dbg !3036

337:                                              ; preds = %331
  %338 = add nuw i64 %332, 1, !dbg !3037
  call void @llvm.dbg.value(metadata i64 %338, metadata !2772, metadata !DIExpression()), !dbg !3031
  %339 = icmp eq i64 %338, %313, !dbg !3038
  br i1 %339, label %344, label %331, !dbg !3039, !llvm.loop !3040

340:                                              ; preds = %307
  br label %341, !dbg !3042

341:                                              ; preds = %318, %324, %307, %340, %314
  %342 = phi i64 [ %308, %314 ], [ %308, %340 ], [ %308, %307 ], [ %320, %318 ], [ %317, %324 ]
  %343 = phi i8 [ 0, %314 ], [ %309, %340 ], [ 0, %307 ], [ 0, %324 ], [ 0, %318 ]
  call void @llvm.dbg.value(metadata i8 undef, metadata !2749, metadata !DIExpression()), !dbg !2989
  call void @llvm.dbg.value(metadata i64 undef, metadata !2746, metadata !DIExpression()), !dbg !2989
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #25, !dbg !3042
  br label %353

344:                                              ; preds = %337, %328
  %345 = load i32, i32* %12, align 4, !dbg !3043, !tbaa !1021
  call void @llvm.dbg.value(metadata i32 %345, metadata !2768, metadata !DIExpression()), !dbg !3019
  %346 = call i32 @iswprint(i32 %345) #25, !dbg !3045
  %347 = icmp eq i32 %346, 0, !dbg !3045
  %348 = select i1 %347, i8 0, i8 %309, !dbg !3046
  call void @llvm.dbg.value(metadata i8 %348, metadata !2749, metadata !DIExpression()), !dbg !2989
  %349 = add i64 %313, %308, !dbg !3047
  call void @llvm.dbg.value(metadata i64 %349, metadata !2746, metadata !DIExpression()), !dbg !2989
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #25, !dbg !3042
  %350 = call i32 @mbsinit(%struct.__mbstate_t* nonnull %11) #26, !dbg !3048
  %351 = icmp eq i32 %350, 0, !dbg !3049
  br i1 %351, label %307, label %353, !dbg !3050, !llvm.loop !3051

352:                                              ; preds = %331, %331, %331, %331, %331
  call void @llvm.dbg.value(metadata i8 undef, metadata !2749, metadata !DIExpression()), !dbg !2989
  call void @llvm.dbg.value(metadata i64 undef, metadata !2746, metadata !DIExpression()), !dbg !2989
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #25, !dbg !3042
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %23) #25, !dbg !3053
  br label %631

353:                                              ; preds = %344, %341
  %354 = phi i8 [ %343, %341 ], [ %348, %344 ]
  %355 = phi i64 [ %342, %341 ], [ %349, %344 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %23) #25, !dbg !3053
  call void @llvm.dbg.value(metadata i8 %354, metadata !2749, metadata !DIExpression()), !dbg !2989
  call void @llvm.dbg.value(metadata i64 %355, metadata !2746, metadata !DIExpression()), !dbg !2989
  call void @llvm.dbg.value(metadata i64 %306, metadata !2721, metadata !DIExpression()), !dbg !2788
  %356 = and i8 %354, 1, !dbg !2993
  %357 = icmp eq i8 %356, 0, !dbg !2993
  call void @llvm.dbg.value(metadata i1 %357, metadata !2745, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2855
  %358 = icmp ugt i64 %355, 1, !dbg !3054
  br i1 %358, label %367, label %359, !dbg !2994

359:                                              ; preds = %291, %353
  %360 = phi i1 [ %300, %291 ], [ %357, %353 ]
  %361 = phi i8 [ %299, %291 ], [ %354, %353 ]
  %362 = phi i64 [ 1, %291 ], [ %355, %353 ]
  %363 = phi i64 [ %154, %291 ], [ %306, %353 ]
  %364 = and i1 %102, %360, !dbg !3055
  br i1 %364, label %367, label %365, !dbg !3055

365:                                              ; preds = %359
  %366 = and i8 %361, 1, !dbg !2855
  call void @llvm.dbg.value(metadata i8 %472, metadata !2745, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i8 %441, metadata !2744, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i8 %440, metadata !2743, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i8 %439, metadata !2738, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i8 %438, metadata !2735, metadata !DIExpression()), !dbg !2788
  call void @llvm.dbg.value(metadata i64 %371, metadata !2721, metadata !DIExpression()), !dbg !2788
  call void @llvm.dbg.value(metadata i64 %437, metadata !2728, metadata !DIExpression()), !dbg !2788
  call void @llvm.dbg.value(metadata i64 %375, metadata !2727, metadata !DIExpression()), !dbg !2788
  br label %473

367:                                              ; preds = %359, %353
  %368 = phi i1 [ true, %359 ], [ %357, %353 ]
  %369 = phi i8 [ %361, %359 ], [ %354, %353 ]
  %370 = phi i64 [ %362, %359 ], [ %355, %353 ]
  %371 = phi i64 [ %363, %359 ], [ %306, %353 ]
  %372 = add i64 %370, %122, !dbg !3056
  call void @llvm.dbg.value(metadata i64 %372, metadata !2779, metadata !DIExpression()), !dbg !3057
  %373 = and i1 %102, %368
  br label %374, !dbg !3058

374:                                              ; preds = %467, %367
  %375 = phi i64 [ %122, %367 ], [ %442, %467 ], !dbg !2848
  %376 = phi i64 [ %123, %367 ], [ %468, %467 ], !dbg !2788
  %377 = phi i8 [ %126, %367 ], [ %463, %467 ], !dbg !2797
  %378 = phi i8 [ %158, %367 ], [ %470, %467 ], !dbg !2855
  %379 = phi i8 [ %156, %367 ], [ %440, %467 ], !dbg !2855
  %380 = phi i8 [ 0, %367 ], [ %441, %467 ], !dbg !3059
  call void @llvm.dbg.value(metadata i8 %380, metadata !2744, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i8 %379, metadata !2743, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i8 %378, metadata !2738, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i8 %377, metadata !2735, metadata !DIExpression()), !dbg !2788
  call void @llvm.dbg.value(metadata i64 %376, metadata !2728, metadata !DIExpression()), !dbg !2788
  call void @llvm.dbg.value(metadata i64 %375, metadata !2727, metadata !DIExpression()), !dbg !2788
  br i1 %373, label %381, label %427, !dbg !3060

381:                                              ; preds = %374
  br i1 %109, label %382, label %635, !dbg !3065

382:                                              ; preds = %381
  call void @llvm.dbg.value(metadata i8 1, metadata !2744, metadata !DIExpression()), !dbg !2855
  %383 = and i8 %377, 1, !dbg !3068
  %384 = icmp eq i8 %383, 0, !dbg !3068
  %385 = and i1 %110, %384, !dbg !3068
  br i1 %385, label %386, label %402, !dbg !3068

386:                                              ; preds = %382
  %387 = icmp ult i64 %376, %129, !dbg !3070
  br i1 %387, label %388, label %390, !dbg !3074

388:                                              ; preds = %386
  %389 = getelementptr inbounds i8, i8* %0, i64 %376, !dbg !3070
  store i8 39, i8* %389, align 1, !dbg !3070, !tbaa !1096
  br label %390, !dbg !3070

390:                                              ; preds = %388, %386
  %391 = add i64 %376, 1, !dbg !3074
  call void @llvm.dbg.value(metadata i64 %391, metadata !2728, metadata !DIExpression()), !dbg !2788
  %392 = icmp ult i64 %391, %129, !dbg !3075
  br i1 %392, label %393, label %395, !dbg !3078

393:                                              ; preds = %390
  %394 = getelementptr inbounds i8, i8* %0, i64 %391, !dbg !3075
  store i8 36, i8* %394, align 1, !dbg !3075, !tbaa !1096
  br label %395, !dbg !3075

395:                                              ; preds = %393, %390
  %396 = add i64 %376, 2, !dbg !3078
  call void @llvm.dbg.value(metadata i64 %396, metadata !2728, metadata !DIExpression()), !dbg !2788
  %397 = icmp ult i64 %396, %129, !dbg !3079
  br i1 %397, label %398, label %400, !dbg !3082

398:                                              ; preds = %395
  %399 = getelementptr inbounds i8, i8* %0, i64 %396, !dbg !3079
  store i8 39, i8* %399, align 1, !dbg !3079, !tbaa !1096
  br label %400, !dbg !3079

400:                                              ; preds = %398, %395
  %401 = add i64 %376, 3, !dbg !3082
  call void @llvm.dbg.value(metadata i64 %401, metadata !2728, metadata !DIExpression()), !dbg !2788
  call void @llvm.dbg.value(metadata i8 1, metadata !2735, metadata !DIExpression()), !dbg !2788
  br label %402, !dbg !3083

402:                                              ; preds = %382, %400
  %403 = phi i64 [ %401, %400 ], [ %376, %382 ], !dbg !2788
  %404 = phi i8 [ 1, %400 ], [ %377, %382 ], !dbg !2788
  call void @llvm.dbg.value(metadata i8 %404, metadata !2735, metadata !DIExpression()), !dbg !2788
  call void @llvm.dbg.value(metadata i64 %403, metadata !2728, metadata !DIExpression()), !dbg !2788
  %405 = icmp ult i64 %403, %129, !dbg !3084
  br i1 %405, label %406, label %408, !dbg !3087

406:                                              ; preds = %402
  %407 = getelementptr inbounds i8, i8* %0, i64 %403, !dbg !3084
  store i8 92, i8* %407, align 1, !dbg !3084, !tbaa !1096
  br label %408, !dbg !3084

408:                                              ; preds = %406, %402
  %409 = add i64 %403, 1, !dbg !3087
  call void @llvm.dbg.value(metadata i64 %409, metadata !2728, metadata !DIExpression()), !dbg !2788
  %410 = icmp ult i64 %409, %129, !dbg !3088
  br i1 %410, label %411, label %415, !dbg !3091

411:                                              ; preds = %408
  %412 = lshr i8 %378, 6, !dbg !3088
  %413 = or i8 %412, 48, !dbg !3088
  %414 = getelementptr inbounds i8, i8* %0, i64 %409, !dbg !3088
  store i8 %413, i8* %414, align 1, !dbg !3088, !tbaa !1096
  br label %415, !dbg !3088

415:                                              ; preds = %411, %408
  %416 = add i64 %403, 2, !dbg !3091
  call void @llvm.dbg.value(metadata i64 %416, metadata !2728, metadata !DIExpression()), !dbg !2788
  %417 = icmp ult i64 %416, %129, !dbg !3092
  br i1 %417, label %418, label %423, !dbg !3095

418:                                              ; preds = %415
  %419 = lshr i8 %378, 3, !dbg !3092
  %420 = and i8 %419, 7, !dbg !3092
  %421 = or i8 %420, 48, !dbg !3092
  %422 = getelementptr inbounds i8, i8* %0, i64 %416, !dbg !3092
  store i8 %421, i8* %422, align 1, !dbg !3092, !tbaa !1096
  br label %423, !dbg !3092

423:                                              ; preds = %418, %415
  %424 = add i64 %403, 3, !dbg !3095
  call void @llvm.dbg.value(metadata i64 %424, metadata !2728, metadata !DIExpression()), !dbg !2788
  %425 = and i8 %378, 7, !dbg !3096
  %426 = or i8 %425, 48, !dbg !3097
  call void @llvm.dbg.value(metadata i8 %426, metadata !2738, metadata !DIExpression()), !dbg !2855
  br label %436, !dbg !3098

427:                                              ; preds = %374
  %428 = and i8 %379, 1, !dbg !3099
  %429 = icmp eq i8 %428, 0, !dbg !3099
  br i1 %429, label %436, label %430, !dbg !3101

430:                                              ; preds = %427
  %431 = icmp ult i64 %376, %129, !dbg !3102
  br i1 %431, label %432, label %434, !dbg !3106

432:                                              ; preds = %430
  %433 = getelementptr inbounds i8, i8* %0, i64 %376, !dbg !3102
  store i8 92, i8* %433, align 1, !dbg !3102, !tbaa !1096
  br label %434, !dbg !3102

434:                                              ; preds = %432, %430
  %435 = add i64 %376, 1, !dbg !3106
  call void @llvm.dbg.value(metadata i64 %435, metadata !2728, metadata !DIExpression()), !dbg !2788
  call void @llvm.dbg.value(metadata i8 0, metadata !2743, metadata !DIExpression()), !dbg !2855
  br label %436, !dbg !3107

436:                                              ; preds = %427, %434, %423
  %437 = phi i64 [ %435, %434 ], [ %376, %427 ], [ %424, %423 ], !dbg !2788
  %438 = phi i8 [ %377, %434 ], [ %377, %427 ], [ %404, %423 ], !dbg !2797
  %439 = phi i8 [ %378, %434 ], [ %378, %427 ], [ %426, %423 ], !dbg !2855
  %440 = phi i8 [ 0, %434 ], [ %379, %427 ], [ %379, %423 ], !dbg !2855
  %441 = phi i8 [ %380, %434 ], [ %380, %427 ], [ 1, %423 ], !dbg !2855
  call void @llvm.dbg.value(metadata i8 %441, metadata !2744, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i8 %440, metadata !2743, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i8 %439, metadata !2738, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i8 %438, metadata !2735, metadata !DIExpression()), !dbg !2788
  call void @llvm.dbg.value(metadata i64 %437, metadata !2728, metadata !DIExpression()), !dbg !2788
  %442 = add i64 %375, 1, !dbg !3108
  %443 = icmp ugt i64 %372, %442, !dbg !3110
  br i1 %443, label %444, label %471, !dbg !3111

444:                                              ; preds = %436
  %445 = and i8 %438, 1, !dbg !3112
  %446 = icmp ne i8 %445, 0, !dbg !3112
  %447 = and i8 %441, 1, !dbg !3112
  %448 = icmp eq i8 %447, 0, !dbg !3112
  %449 = and i1 %446, %448, !dbg !3112
  br i1 %449, label %450, label %461, !dbg !3112

450:                                              ; preds = %444
  %451 = icmp ult i64 %437, %129, !dbg !3115
  br i1 %451, label %452, label %454, !dbg !3119

452:                                              ; preds = %450
  %453 = getelementptr inbounds i8, i8* %0, i64 %437, !dbg !3115
  store i8 39, i8* %453, align 1, !dbg !3115, !tbaa !1096
  br label %454, !dbg !3115

454:                                              ; preds = %452, %450
  %455 = add i64 %437, 1, !dbg !3119
  call void @llvm.dbg.value(metadata i64 %455, metadata !2728, metadata !DIExpression()), !dbg !2788
  %456 = icmp ult i64 %455, %129, !dbg !3120
  br i1 %456, label %457, label %459, !dbg !3123

457:                                              ; preds = %454
  %458 = getelementptr inbounds i8, i8* %0, i64 %455, !dbg !3120
  store i8 39, i8* %458, align 1, !dbg !3120, !tbaa !1096
  br label %459, !dbg !3120

459:                                              ; preds = %457, %454
  %460 = add i64 %437, 2, !dbg !3123
  call void @llvm.dbg.value(metadata i64 %460, metadata !2728, metadata !DIExpression()), !dbg !2788
  call void @llvm.dbg.value(metadata i8 0, metadata !2735, metadata !DIExpression()), !dbg !2788
  br label %461, !dbg !3124

461:                                              ; preds = %444, %459
  %462 = phi i64 [ %460, %459 ], [ %437, %444 ], !dbg !3125
  %463 = phi i8 [ 0, %459 ], [ %438, %444 ], !dbg !2788
  call void @llvm.dbg.value(metadata i8 %463, metadata !2735, metadata !DIExpression()), !dbg !2788
  call void @llvm.dbg.value(metadata i64 %462, metadata !2728, metadata !DIExpression()), !dbg !2788
  %464 = icmp ult i64 %462, %129, !dbg !3126
  br i1 %464, label %465, label %467, !dbg !3129

465:                                              ; preds = %461
  %466 = getelementptr inbounds i8, i8* %0, i64 %462, !dbg !3126
  store i8 %439, i8* %466, align 1, !dbg !3126, !tbaa !1096
  br label %467, !dbg !3126

467:                                              ; preds = %465, %461
  %468 = add i64 %462, 1, !dbg !3129
  call void @llvm.dbg.value(metadata i64 %468, metadata !2728, metadata !DIExpression()), !dbg !2788
  call void @llvm.dbg.value(metadata i64 %442, metadata !2727, metadata !DIExpression()), !dbg !2788
  %469 = getelementptr inbounds i8, i8* %2, i64 %442, !dbg !3130
  %470 = load i8, i8* %469, align 1, !dbg !3130, !tbaa !1096
  call void @llvm.dbg.value(metadata i8 %470, metadata !2738, metadata !DIExpression()), !dbg !2855
  br label %374, !dbg !3131, !llvm.loop !3132

471:                                              ; preds = %436
  %472 = and i8 %369, 1, !dbg !2855
  call void @llvm.dbg.value(metadata i8 %472, metadata !2745, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i8 %441, metadata !2744, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i8 %440, metadata !2743, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i8 %439, metadata !2738, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i8 %438, metadata !2735, metadata !DIExpression()), !dbg !2788
  call void @llvm.dbg.value(metadata i64 %371, metadata !2721, metadata !DIExpression()), !dbg !2788
  call void @llvm.dbg.value(metadata i64 %437, metadata !2728, metadata !DIExpression()), !dbg !2788
  call void @llvm.dbg.value(metadata i64 %375, metadata !2727, metadata !DIExpression()), !dbg !2788
  br label %533

473:                                              ; preds = %365, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %258, %187, %192, %206, %267, %288, %265, %262, %259, %256, %210, %244, %220, %215, %211, %209, %208
  %474 = phi i64 [ %122, %288 ], [ %122, %267 ], [ %122, %265 ], [ %122, %262 ], [ %122, %259 ], [ %122, %256 ], [ %122, %209 ], [ %122, %220 ], [ %212, %244 ], [ %122, %215 ], [ %122, %211 ], [ %122, %210 ], [ %122, %208 ], [ %122, %206 ], [ %122, %192 ], [ %122, %187 ], [ %122, %258 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %365 ], !dbg !2848
  %475 = phi i64 [ %289, %288 ], [ %123, %267 ], [ %123, %265 ], [ %123, %262 ], [ %123, %259 ], [ %123, %256 ], [ %123, %209 ], [ %123, %220 ], [ %245, %244 ], [ %123, %215 ], [ %123, %211 ], [ %123, %210 ], [ %123, %208 ], [ %207, %206 ], [ %188, %192 ], [ %188, %187 ], [ %123, %258 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %365 ], !dbg !2788
  %476 = phi i64 [ %273, %288 ], [ %124, %267 ], [ %124, %265 ], [ %124, %262 ], [ %124, %259 ], [ %124, %256 ], [ %124, %209 ], [ %124, %220 ], [ %124, %244 ], [ %124, %215 ], [ %124, %211 ], [ %124, %210 ], [ %124, %208 ], [ %124, %206 ], [ %124, %192 ], [ %124, %187 ], [ %124, %258 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %365 ], !dbg !2793
  %477 = phi i64 [ %154, %288 ], [ %154, %267 ], [ %154, %265 ], [ %154, %262 ], [ -1, %259 ], [ %154, %256 ], [ %154, %209 ], [ %154, %220 ], [ %154, %244 ], [ %154, %215 ], [ %154, %211 ], [ %154, %210 ], [ %154, %208 ], [ %154, %206 ], [ %154, %192 ], [ %154, %187 ], [ %154, %258 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %363, %365 ], !dbg !3135
  %478 = phi i8 [ 0, %288 ], [ %126, %267 ], [ %126, %265 ], [ %126, %262 ], [ %126, %259 ], [ %126, %256 ], [ %126, %209 ], [ %126, %220 ], [ %126, %244 ], [ %126, %215 ], [ %126, %211 ], [ %126, %210 ], [ %126, %208 ], [ %183, %206 ], [ %183, %192 ], [ %183, %187 ], [ %126, %258 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %365 ], !dbg !2788
  %479 = phi i8 [ 1, %288 ], [ 1, %267 ], [ %127, %265 ], [ %127, %262 ], [ %127, %259 ], [ %127, %256 ], [ %127, %209 ], [ %127, %220 ], [ %127, %244 ], [ %127, %215 ], [ %127, %211 ], [ %127, %210 ], [ %127, %208 ], [ %127, %206 ], [ %127, %192 ], [ %127, %187 ], [ %127, %258 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %365 ], !dbg !2788
  %480 = phi i8 [ 39, %288 ], [ 39, %267 ], [ %158, %265 ], [ %158, %262 ], [ %158, %259 ], [ %158, %256 ], [ 63, %209 ], [ 63, %220 ], [ %222, %244 ], [ 63, %215 ], [ 63, %211 ], [ 63, %210 ], [ 0, %208 ], [ 48, %206 ], [ 48, %192 ], [ 48, %187 ], [ %158, %258 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %365 ], !dbg !2855
  %481 = phi i8 [ 0, %288 ], [ 0, %267 ], [ 0, %265 ], [ 0, %262 ], [ 0, %259 ], [ 0, %256 ], [ 0, %209 ], [ 0, %220 ], [ 0, %244 ], [ 0, %215 ], [ 0, %211 ], [ 0, %210 ], [ 0, %208 ], [ 1, %206 ], [ 1, %192 ], [ 1, %187 ], [ 0, %258 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %365 ], !dbg !2855
  %482 = phi i8 [ 1, %288 ], [ 1, %267 ], [ %266, %265 ], [ 0, %262 ], [ 0, %259 ], [ 0, %256 ], [ 0, %209 ], [ 0, %220 ], [ 0, %244 ], [ 0, %215 ], [ 0, %211 ], [ 0, %210 ], [ 0, %208 ], [ 0, %206 ], [ 0, %192 ], [ 0, %187 ], [ 0, %258 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ %366, %365 ], !dbg !2855
  %483 = phi i64 [ %274, %288 ], [ %129, %267 ], [ %129, %265 ], [ %129, %262 ], [ %129, %259 ], [ %129, %256 ], [ %129, %209 ], [ %129, %220 ], [ %129, %244 ], [ %129, %215 ], [ %129, %211 ], [ %129, %210 ], [ %129, %208 ], [ %129, %206 ], [ %129, %192 ], [ %129, %187 ], [ %129, %258 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %365 ]
  call void @llvm.dbg.value(metadata i64 %483, metadata !2719, metadata !DIExpression()), !dbg !2788
  call void @llvm.dbg.value(metadata i8 %482, metadata !2745, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i8 %481, metadata !2744, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i8 %156, metadata !2743, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i8 %480, metadata !2738, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i8 %479, metadata !2736, metadata !DIExpression()), !dbg !2788
  call void @llvm.dbg.value(metadata i8 %478, metadata !2735, metadata !DIExpression()), !dbg !2788
  call void @llvm.dbg.value(metadata i64 %477, metadata !2721, metadata !DIExpression()), !dbg !2788
  call void @llvm.dbg.value(metadata i64 %476, metadata !2729, metadata !DIExpression()), !dbg !2788
  call void @llvm.dbg.value(metadata i64 %475, metadata !2728, metadata !DIExpression()), !dbg !2788
  call void @llvm.dbg.value(metadata i64 %474, metadata !2727, metadata !DIExpression()), !dbg !2788
  br i1 %116, label %494, label %484, !dbg !3136

484:                                              ; preds = %473
  %485 = lshr i8 %480, 5, !dbg !3138
  %486 = zext i8 %485 to i64, !dbg !3138
  %487 = getelementptr inbounds i32, i32* %6, i64 %486, !dbg !3139
  %488 = load i32, i32* %487, align 4, !dbg !3139, !tbaa !1021
  %489 = and i8 %480, 31, !dbg !3140
  %490 = zext i8 %489 to i32, !dbg !3140
  %491 = shl nuw i32 1, %490, !dbg !3141
  %492 = and i32 %488, %491, !dbg !3141
  %493 = icmp eq i32 %492, 0, !dbg !3141
  br i1 %493, label %494, label %495, !dbg !3142

494:                                              ; preds = %473, %484
  br i1 %155, label %533, label %495, !dbg !3143

495:                                              ; preds = %256, %494, %484
  %496 = phi i64 [ %474, %484 ], [ %474, %494 ], [ %122, %256 ], !dbg !3144
  %497 = phi i64 [ %475, %484 ], [ %475, %494 ], [ %123, %256 ], !dbg !2788
  %498 = phi i64 [ %476, %484 ], [ %476, %494 ], [ %124, %256 ], !dbg !2793
  %499 = phi i64 [ %477, %484 ], [ %477, %494 ], [ %154, %256 ], !dbg !3135
  %500 = phi i8 [ %478, %484 ], [ %478, %494 ], [ %126, %256 ], !dbg !2797
  %501 = phi i8 [ %479, %484 ], [ %479, %494 ], [ %127, %256 ], !dbg !2798
  %502 = phi i8 [ %480, %484 ], [ %480, %494 ], [ %257, %256 ], !dbg !2855
  %503 = phi i8 [ %482, %484 ], [ %482, %494 ], [ 0, %256 ], !dbg !2855
  %504 = phi i64 [ %483, %484 ], [ %483, %494 ], [ %129, %256 ]
  call void @llvm.dbg.value(metadata i64 %504, metadata !2719, metadata !DIExpression()), !dbg !2788
  call void @llvm.dbg.value(metadata i8 %503, metadata !2745, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i8 %502, metadata !2738, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i8 %501, metadata !2736, metadata !DIExpression()), !dbg !2788
  call void @llvm.dbg.value(metadata i8 %500, metadata !2735, metadata !DIExpression()), !dbg !2788
  call void @llvm.dbg.value(metadata i64 %499, metadata !2721, metadata !DIExpression()), !dbg !2788
  call void @llvm.dbg.value(metadata i64 %498, metadata !2729, metadata !DIExpression()), !dbg !2788
  call void @llvm.dbg.value(metadata i64 %497, metadata !2728, metadata !DIExpression()), !dbg !2788
  call void @llvm.dbg.value(metadata i64 %496, metadata !2727, metadata !DIExpression()), !dbg !2788
  call void @llvm.dbg.label(metadata !2785), !dbg !3145
  br i1 %109, label %505, label %635, !dbg !3146

505:                                              ; preds = %495
  call void @llvm.dbg.value(metadata i8 1, metadata !2744, metadata !DIExpression()), !dbg !2855
  %506 = and i8 %500, 1, !dbg !3148
  %507 = icmp eq i8 %506, 0, !dbg !3148
  %508 = and i1 %110, %507, !dbg !3148
  br i1 %508, label %509, label %525, !dbg !3148

509:                                              ; preds = %505
  %510 = icmp ult i64 %497, %504, !dbg !3150
  br i1 %510, label %511, label %513, !dbg !3154

511:                                              ; preds = %509
  %512 = getelementptr inbounds i8, i8* %0, i64 %497, !dbg !3150
  store i8 39, i8* %512, align 1, !dbg !3150, !tbaa !1096
  br label %513, !dbg !3150

513:                                              ; preds = %511, %509
  %514 = add i64 %497, 1, !dbg !3154
  call void @llvm.dbg.value(metadata i64 %514, metadata !2728, metadata !DIExpression()), !dbg !2788
  %515 = icmp ult i64 %514, %504, !dbg !3155
  br i1 %515, label %516, label %518, !dbg !3158

516:                                              ; preds = %513
  %517 = getelementptr inbounds i8, i8* %0, i64 %514, !dbg !3155
  store i8 36, i8* %517, align 1, !dbg !3155, !tbaa !1096
  br label %518, !dbg !3155

518:                                              ; preds = %516, %513
  %519 = add i64 %497, 2, !dbg !3158
  call void @llvm.dbg.value(metadata i64 %519, metadata !2728, metadata !DIExpression()), !dbg !2788
  %520 = icmp ult i64 %519, %504, !dbg !3159
  br i1 %520, label %521, label %523, !dbg !3162

521:                                              ; preds = %518
  %522 = getelementptr inbounds i8, i8* %0, i64 %519, !dbg !3159
  store i8 39, i8* %522, align 1, !dbg !3159, !tbaa !1096
  br label %523, !dbg !3159

523:                                              ; preds = %521, %518
  %524 = add i64 %497, 3, !dbg !3162
  call void @llvm.dbg.value(metadata i64 %524, metadata !2728, metadata !DIExpression()), !dbg !2788
  call void @llvm.dbg.value(metadata i8 1, metadata !2735, metadata !DIExpression()), !dbg !2788
  br label %525, !dbg !3163

525:                                              ; preds = %505, %523
  %526 = phi i64 [ %524, %523 ], [ %497, %505 ], !dbg !2855
  %527 = phi i8 [ 1, %523 ], [ %500, %505 ], !dbg !2788
  call void @llvm.dbg.value(metadata i8 %527, metadata !2735, metadata !DIExpression()), !dbg !2788
  call void @llvm.dbg.value(metadata i64 %526, metadata !2728, metadata !DIExpression()), !dbg !2788
  %528 = icmp ult i64 %526, %504, !dbg !3164
  br i1 %528, label %529, label %531, !dbg !3167

529:                                              ; preds = %525
  %530 = getelementptr inbounds i8, i8* %0, i64 %526, !dbg !3164
  store i8 92, i8* %530, align 1, !dbg !3164, !tbaa !1096
  br label %531, !dbg !3164

531:                                              ; preds = %525, %529
  %532 = add i64 %526, 1, !dbg !3167
  call void @llvm.dbg.value(metadata i64 %543, metadata !2719, metadata !DIExpression()), !dbg !2788
  call void @llvm.dbg.value(metadata i8 %542, metadata !2745, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i8 %541, metadata !2744, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i8 %540, metadata !2738, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i8 %539, metadata !2736, metadata !DIExpression()), !dbg !2788
  call void @llvm.dbg.value(metadata i8 %538, metadata !2735, metadata !DIExpression()), !dbg !2788
  call void @llvm.dbg.value(metadata i64 %537, metadata !2721, metadata !DIExpression()), !dbg !2788
  call void @llvm.dbg.value(metadata i64 %536, metadata !2729, metadata !DIExpression()), !dbg !2788
  call void @llvm.dbg.value(metadata i64 %535, metadata !2728, metadata !DIExpression()), !dbg !2788
  call void @llvm.dbg.value(metadata i64 %534, metadata !2727, metadata !DIExpression()), !dbg !2788
  call void @llvm.dbg.label(metadata !2786), !dbg !3168
  br label %560, !dbg !3169

533:                                              ; preds = %253, %471, %252, %494
  %534 = phi i64 [ %375, %471 ], [ %474, %494 ], [ %122, %252 ], [ %122, %253 ], !dbg !3144
  %535 = phi i64 [ %437, %471 ], [ %475, %494 ], [ %123, %252 ], [ %123, %253 ], !dbg !2788
  %536 = phi i64 [ %124, %471 ], [ %476, %494 ], [ %124, %252 ], [ %124, %253 ], !dbg !2793
  %537 = phi i64 [ %371, %471 ], [ %477, %494 ], [ %154, %252 ], [ %154, %253 ], !dbg !3135
  %538 = phi i8 [ %438, %471 ], [ %478, %494 ], [ %126, %252 ], [ %126, %253 ], !dbg !2797
  %539 = phi i8 [ %127, %471 ], [ %479, %494 ], [ %127, %252 ], [ %127, %253 ], !dbg !2798
  %540 = phi i8 [ %439, %471 ], [ %480, %494 ], [ 92, %252 ], [ 92, %253 ], !dbg !3172
  %541 = phi i8 [ %441, %471 ], [ %481, %494 ], [ 0, %252 ], [ 0, %253 ], !dbg !2855
  %542 = phi i8 [ %472, %471 ], [ %482, %494 ], [ 0, %252 ], [ 0, %253 ], !dbg !2855
  %543 = phi i64 [ %129, %471 ], [ %483, %494 ], [ %129, %252 ], [ %129, %253 ]
  call void @llvm.dbg.value(metadata i64 %543, metadata !2719, metadata !DIExpression()), !dbg !2788
  call void @llvm.dbg.value(metadata i8 %542, metadata !2745, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i8 %541, metadata !2744, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i8 %540, metadata !2738, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i8 %539, metadata !2736, metadata !DIExpression()), !dbg !2788
  call void @llvm.dbg.value(metadata i8 %538, metadata !2735, metadata !DIExpression()), !dbg !2788
  call void @llvm.dbg.value(metadata i64 %537, metadata !2721, metadata !DIExpression()), !dbg !2788
  call void @llvm.dbg.value(metadata i64 %536, metadata !2729, metadata !DIExpression()), !dbg !2788
  call void @llvm.dbg.value(metadata i64 %535, metadata !2728, metadata !DIExpression()), !dbg !2788
  call void @llvm.dbg.value(metadata i64 %534, metadata !2727, metadata !DIExpression()), !dbg !2788
  call void @llvm.dbg.label(metadata !2786), !dbg !3168
  %544 = and i8 %538, 1, !dbg !3169
  %545 = icmp ne i8 %544, 0, !dbg !3169
  %546 = and i8 %541, 1, !dbg !3169
  %547 = icmp eq i8 %546, 0, !dbg !3169
  %548 = and i1 %545, %547, !dbg !3169
  br i1 %548, label %549, label %560, !dbg !3169

549:                                              ; preds = %533
  %550 = icmp ult i64 %535, %543, !dbg !3173
  br i1 %550, label %551, label %553, !dbg !3177

551:                                              ; preds = %549
  %552 = getelementptr inbounds i8, i8* %0, i64 %535, !dbg !3173
  store i8 39, i8* %552, align 1, !dbg !3173, !tbaa !1096
  br label %553, !dbg !3173

553:                                              ; preds = %551, %549
  %554 = add i64 %535, 1, !dbg !3177
  call void @llvm.dbg.value(metadata i64 %554, metadata !2728, metadata !DIExpression()), !dbg !2788
  %555 = icmp ult i64 %554, %543, !dbg !3178
  br i1 %555, label %556, label %558, !dbg !3181

556:                                              ; preds = %553
  %557 = getelementptr inbounds i8, i8* %0, i64 %554, !dbg !3178
  store i8 39, i8* %557, align 1, !dbg !3178, !tbaa !1096
  br label %558, !dbg !3178

558:                                              ; preds = %556, %553
  %559 = add i64 %535, 2, !dbg !3181
  call void @llvm.dbg.value(metadata i64 %559, metadata !2728, metadata !DIExpression()), !dbg !2788
  call void @llvm.dbg.value(metadata i8 0, metadata !2735, metadata !DIExpression()), !dbg !2788
  br label %560, !dbg !3182

560:                                              ; preds = %531, %533, %558
  %561 = phi i64 [ %543, %558 ], [ %543, %533 ], [ %504, %531 ]
  %562 = phi i8 [ %542, %558 ], [ %542, %533 ], [ %503, %531 ]
  %563 = phi i8 [ %540, %558 ], [ %540, %533 ], [ %502, %531 ]
  %564 = phi i8 [ %539, %558 ], [ %539, %533 ], [ %501, %531 ]
  %565 = phi i64 [ %537, %558 ], [ %537, %533 ], [ %499, %531 ]
  %566 = phi i64 [ %536, %558 ], [ %536, %533 ], [ %498, %531 ]
  %567 = phi i64 [ %534, %558 ], [ %534, %533 ], [ %496, %531 ]
  %568 = phi i64 [ %559, %558 ], [ %535, %533 ], [ %532, %531 ], !dbg !2855
  %569 = phi i8 [ 0, %558 ], [ %538, %533 ], [ %527, %531 ], !dbg !2788
  call void @llvm.dbg.value(metadata i8 %569, metadata !2735, metadata !DIExpression()), !dbg !2788
  call void @llvm.dbg.value(metadata i64 %568, metadata !2728, metadata !DIExpression()), !dbg !2788
  %570 = icmp ult i64 %568, %561, !dbg !3183
  br i1 %570, label %571, label %573, !dbg !3186

571:                                              ; preds = %560
  %572 = getelementptr inbounds i8, i8* %0, i64 %568, !dbg !3183
  store i8 %563, i8* %572, align 1, !dbg !3183, !tbaa !1096
  br label %573, !dbg !3183

573:                                              ; preds = %571, %560
  %574 = add i64 %568, 1, !dbg !3186
  call void @llvm.dbg.value(metadata i64 %574, metadata !2728, metadata !DIExpression()), !dbg !2788
  %575 = icmp eq i8 %562, 0, !dbg !3187
  %576 = select i1 %575, i8 0, i8 %128, !dbg !3189
  call void @llvm.dbg.value(metadata i8 %576, metadata !2737, metadata !DIExpression()), !dbg !2788
  br label %577, !dbg !3190

577:                                              ; preds = %573, %208
  %578 = phi i64 [ %567, %573 ], [ %122, %208 ], !dbg !3144
  %579 = phi i64 [ %574, %573 ], [ %123, %208 ], !dbg !2788
  %580 = phi i64 [ %566, %573 ], [ %124, %208 ], !dbg !2793
  %581 = phi i64 [ %565, %573 ], [ %154, %208 ], !dbg !3135
  %582 = phi i8 [ %569, %573 ], [ %126, %208 ], !dbg !2797
  %583 = phi i8 [ %564, %573 ], [ %127, %208 ], !dbg !2788
  %584 = phi i8 [ %576, %573 ], [ %128, %208 ], !dbg !2799
  %585 = phi i64 [ %561, %573 ], [ %129, %208 ]
  call void @llvm.dbg.value(metadata i64 %585, metadata !2719, metadata !DIExpression()), !dbg !2788
  call void @llvm.dbg.value(metadata i8 %584, metadata !2737, metadata !DIExpression()), !dbg !2788
  call void @llvm.dbg.value(metadata i8 %583, metadata !2736, metadata !DIExpression()), !dbg !2788
  call void @llvm.dbg.value(metadata i8 %582, metadata !2735, metadata !DIExpression()), !dbg !2788
  call void @llvm.dbg.value(metadata i64 %581, metadata !2721, metadata !DIExpression()), !dbg !2788
  call void @llvm.dbg.value(metadata i64 %580, metadata !2729, metadata !DIExpression()), !dbg !2788
  call void @llvm.dbg.value(metadata i64 %579, metadata !2728, metadata !DIExpression()), !dbg !2788
  call void @llvm.dbg.value(metadata i64 %578, metadata !2727, metadata !DIExpression()), !dbg !2788
  %586 = add i64 %578, 1, !dbg !3191
  call void @llvm.dbg.value(metadata i64 %586, metadata !2727, metadata !DIExpression()), !dbg !2788
  br label %121, !dbg !3192, !llvm.loop !3193

587:                                              ; preds = %131, %135
  %588 = phi i64 [ -1, %131 ], [ %122, %135 ]
  %589 = icmp eq i64 %123, 0, !dbg !3195
  %590 = and i1 %110, %589, !dbg !3197
  %591 = xor i1 %590, true, !dbg !3197
  %592 = or i1 %109, %591, !dbg !3197
  br i1 %592, label %593, label %635, !dbg !3197

593:                                              ; preds = %587
  %594 = and i1 %110, %109, !dbg !3198
  %595 = and i8 %127, 1
  %596 = icmp ne i8 %595, 0
  %597 = and i1 %594, %596, !dbg !3198
  br i1 %597, label %598, label %607, !dbg !3198

598:                                              ; preds = %593
  %599 = and i8 %128, 1, !dbg !3200
  %600 = icmp eq i8 %599, 0, !dbg !3200
  br i1 %600, label %603, label %601, !dbg !3203

601:                                              ; preds = %598
  %602 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %124, i8* %2, i64 %588, i32 5, i32 %5, i32* %6, i8* %94, i8* %95), !dbg !3204
  br label %652, !dbg !3205

603:                                              ; preds = %598
  %604 = icmp eq i64 %129, 0, !dbg !3206
  %605 = icmp ne i64 %124, 0
  %606 = and i1 %605, %604, !dbg !3208
  br i1 %606, label %26, label %607, !dbg !3208

607:                                              ; preds = %603, %593
  %608 = phi i1 [ true, %603 ], [ %109, %593 ]
  %609 = icmp ne i8* %97, null, !dbg !3209
  %610 = and i1 %609, %608, !dbg !3211
  br i1 %610, label %611, label %626, !dbg !3211

611:                                              ; preds = %607
  call void @llvm.dbg.value(metadata i8* %97, metadata !2730, metadata !DIExpression()), !dbg !2788
  call void @llvm.dbg.value(metadata i64 %123, metadata !2728, metadata !DIExpression()), !dbg !2788
  %612 = load i8, i8* %97, align 1, !dbg !3212, !tbaa !1096
  %613 = icmp eq i8 %612, 0, !dbg !3215
  br i1 %613, label %626, label %614, !dbg !3215

614:                                              ; preds = %611, %621
  %615 = phi i8 [ %624, %621 ], [ %612, %611 ]
  %616 = phi i8* [ %623, %621 ], [ %97, %611 ]
  %617 = phi i64 [ %622, %621 ], [ %123, %611 ]
  call void @llvm.dbg.value(metadata i8* %616, metadata !2730, metadata !DIExpression()), !dbg !2788
  call void @llvm.dbg.value(metadata i64 %617, metadata !2728, metadata !DIExpression()), !dbg !2788
  %618 = icmp ult i64 %617, %129, !dbg !3216
  br i1 %618, label %619, label %621, !dbg !3219

619:                                              ; preds = %614
  %620 = getelementptr inbounds i8, i8* %0, i64 %617, !dbg !3216
  store i8 %615, i8* %620, align 1, !dbg !3216, !tbaa !1096
  br label %621, !dbg !3216

621:                                              ; preds = %619, %614
  %622 = add i64 %617, 1, !dbg !3219
  call void @llvm.dbg.value(metadata i64 %622, metadata !2728, metadata !DIExpression()), !dbg !2788
  %623 = getelementptr inbounds i8, i8* %616, i64 1, !dbg !3220
  call void @llvm.dbg.value(metadata i8* %623, metadata !2730, metadata !DIExpression()), !dbg !2788
  %624 = load i8, i8* %623, align 1, !dbg !3212, !tbaa !1096
  %625 = icmp eq i8 %624, 0, !dbg !3215
  br i1 %625, label %626, label %614, !dbg !3215, !llvm.loop !3221

626:                                              ; preds = %621, %611, %607
  %627 = phi i64 [ %123, %607 ], [ %123, %611 ], [ %622, %621 ], !dbg !2830
  call void @llvm.dbg.value(metadata i64 %627, metadata !2728, metadata !DIExpression()), !dbg !2788
  %628 = icmp ult i64 %627, %129, !dbg !3223
  br i1 %628, label %629, label %652, !dbg !3225

629:                                              ; preds = %626
  %630 = getelementptr inbounds i8, i8* %0, i64 %627, !dbg !3226
  store i8 0, i8* %630, align 1, !dbg !3227, !tbaa !1096
  br label %652, !dbg !3226

631:                                              ; preds = %210, %252, %254, %265, %268, %352
  %632 = phi i64 [ %306, %352 ], [ %154, %268 ], [ %154, %265 ], [ %154, %254 ], [ %154, %252 ], [ %154, %210 ]
  call void @llvm.dbg.value(metadata i64 %638, metadata !2719, metadata !DIExpression()), !dbg !2788
  call void @llvm.dbg.value(metadata i64 %637, metadata !2721, metadata !DIExpression()), !dbg !2788
  call void @llvm.dbg.label(metadata !2787), !dbg !3228
  %633 = icmp eq i8 %101, 0, !dbg !3229
  %634 = select i1 %633, i32 2, i32 4, !dbg !3229
  br label %642, !dbg !3229

635:                                              ; preds = %587, %495, %160, %381
  %636 = phi i8 [ 1, %381 ], [ %101, %495 ], [ 1, %160 ], [ %101, %587 ]
  %637 = phi i64 [ %371, %381 ], [ %499, %495 ], [ %154, %160 ], [ %588, %587 ]
  %638 = phi i64 [ %129, %381 ], [ %504, %495 ], [ %129, %160 ], [ %129, %587 ]
  call void @llvm.dbg.value(metadata i64 %638, metadata !2719, metadata !DIExpression()), !dbg !2788
  call void @llvm.dbg.value(metadata i64 %637, metadata !2721, metadata !DIExpression()), !dbg !2788
  call void @llvm.dbg.label(metadata !2787), !dbg !3228
  %639 = icmp eq i32 %93, 2, !dbg !3231
  %640 = icmp eq i8 %636, 0, !dbg !3229
  %641 = select i1 %640, i32 2, i32 4, !dbg !3229
  br i1 %639, label %642, label %646, !dbg !3229

642:                                              ; preds = %631, %635
  %643 = phi i32 [ %634, %631 ], [ %641, %635 ]
  %644 = phi i64 [ %129, %631 ], [ %638, %635 ]
  %645 = phi i64 [ %632, %631 ], [ %637, %635 ]
  br label %646, !dbg !3229

646:                                              ; preds = %224, %146, %635, %642
  %647 = phi i64 [ %644, %642 ], [ %638, %635 ], [ %129, %146 ], [ %129, %224 ]
  %648 = phi i64 [ %645, %642 ], [ %637, %635 ], [ %154, %224 ], [ %144, %146 ]
  %649 = phi i32 [ %643, %642 ], [ %93, %635 ], [ 5, %224 ], [ %93, %146 ]
  call void @llvm.dbg.value(metadata i32 %649, metadata !2722, metadata !DIExpression()), !dbg !2788
  %650 = and i32 %5, -3, !dbg !3232
  %651 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %647, i8* %2, i64 %648, i32 %649, i32 %650, i32* null, i8* %94, i8* %95), !dbg !3233
  br label %652, !dbg !3234

652:                                              ; preds = %626, %629, %646, %601
  %653 = phi i64 [ %651, %646 ], [ %602, %601 ], [ %627, %629 ], [ %627, %626 ]
  ret i64 %653, !dbg !3235
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @gettext_quote(i8* %0, i32 %1) unnamed_addr #8 !dbg !3236 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3240, metadata !DIExpression()), !dbg !3244
  call void @llvm.dbg.value(metadata i32 %1, metadata !3241, metadata !DIExpression()), !dbg !3244
  %3 = tail call i8* @dcgettext(i8* null, i8* %0, i32 5) #25, !dbg !3245
  call void @llvm.dbg.value(metadata i8* %3, metadata !3242, metadata !DIExpression()), !dbg !3244
  %4 = icmp eq i8* %3, %0, !dbg !3246
  br i1 %4, label %5, label %72, !dbg !3248

5:                                                ; preds = %2
  %6 = tail call i8* @locale_charset() #25, !dbg !3249
  call void @llvm.dbg.value(metadata i8* %6, metadata !3243, metadata !DIExpression()), !dbg !3244
  call void @llvm.dbg.value(metadata i8* %6, metadata !3250, metadata !DIExpression()), !dbg !3266
  call void @llvm.dbg.value(metadata i8* undef, metadata !3256, metadata !DIExpression()), !dbg !3266
  call void @llvm.dbg.value(metadata i8 85, metadata !3257, metadata !DIExpression()), !dbg !3266
  call void @llvm.dbg.value(metadata i8 84, metadata !3258, metadata !DIExpression()), !dbg !3266
  call void @llvm.dbg.value(metadata i8 70, metadata !3259, metadata !DIExpression()), !dbg !3266
  call void @llvm.dbg.value(metadata i8 45, metadata !3260, metadata !DIExpression()), !dbg !3266
  call void @llvm.dbg.value(metadata i8 56, metadata !3261, metadata !DIExpression()), !dbg !3266
  call void @llvm.dbg.value(metadata i8 0, metadata !3262, metadata !DIExpression()), !dbg !3266
  call void @llvm.dbg.value(metadata i8 0, metadata !3263, metadata !DIExpression()), !dbg !3266
  call void @llvm.dbg.value(metadata i8 0, metadata !3264, metadata !DIExpression()), !dbg !3266
  call void @llvm.dbg.value(metadata i8 0, metadata !3265, metadata !DIExpression()), !dbg !3266
  %7 = load i8, i8* %6, align 1, !dbg !3269, !tbaa !1096
  %8 = and i8 %7, -33, !dbg !3269
  %9 = sext i8 %8 to i32, !dbg !3269
  switch i32 %9, label %69 [
    i32 85, label %10
    i32 71, label %36
  ], !dbg !3269

10:                                               ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !3271, metadata !DIExpression()), !dbg !3285
  call void @llvm.dbg.value(metadata i8* undef, metadata !3276, metadata !DIExpression()), !dbg !3285
  call void @llvm.dbg.value(metadata i8 84, metadata !3277, metadata !DIExpression()), !dbg !3285
  call void @llvm.dbg.value(metadata i8 70, metadata !3278, metadata !DIExpression()), !dbg !3285
  call void @llvm.dbg.value(metadata i8 45, metadata !3279, metadata !DIExpression()), !dbg !3285
  call void @llvm.dbg.value(metadata i8 56, metadata !3280, metadata !DIExpression()), !dbg !3285
  call void @llvm.dbg.value(metadata i8 0, metadata !3281, metadata !DIExpression()), !dbg !3285
  call void @llvm.dbg.value(metadata i8 0, metadata !3282, metadata !DIExpression()), !dbg !3285
  call void @llvm.dbg.value(metadata i8 0, metadata !3283, metadata !DIExpression()), !dbg !3285
  call void @llvm.dbg.value(metadata i8 0, metadata !3284, metadata !DIExpression()), !dbg !3285
  %11 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !3289
  %12 = load i8, i8* %11, align 1, !dbg !3289, !tbaa !1096
  %13 = and i8 %12, -33, !dbg !3289
  %14 = icmp eq i8 %13, 84, !dbg !3289
  br i1 %14, label %15, label %69, !dbg !3289

15:                                               ; preds = %10
  call void @llvm.dbg.value(metadata i8* %6, metadata !3291, metadata !DIExpression()), !dbg !3304
  call void @llvm.dbg.value(metadata i8* undef, metadata !3296, metadata !DIExpression()), !dbg !3304
  call void @llvm.dbg.value(metadata i8 70, metadata !3297, metadata !DIExpression()), !dbg !3304
  call void @llvm.dbg.value(metadata i8 45, metadata !3298, metadata !DIExpression()), !dbg !3304
  call void @llvm.dbg.value(metadata i8 56, metadata !3299, metadata !DIExpression()), !dbg !3304
  call void @llvm.dbg.value(metadata i8 0, metadata !3300, metadata !DIExpression()), !dbg !3304
  call void @llvm.dbg.value(metadata i8 0, metadata !3301, metadata !DIExpression()), !dbg !3304
  call void @llvm.dbg.value(metadata i8 0, metadata !3302, metadata !DIExpression()), !dbg !3304
  call void @llvm.dbg.value(metadata i8 0, metadata !3303, metadata !DIExpression()), !dbg !3304
  %16 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !3308
  %17 = load i8, i8* %16, align 1, !dbg !3308, !tbaa !1096
  %18 = and i8 %17, -33, !dbg !3308
  %19 = icmp eq i8 %18, 70, !dbg !3308
  br i1 %19, label %20, label %69, !dbg !3308

20:                                               ; preds = %15
  call void @llvm.dbg.value(metadata i8* %6, metadata !3310, metadata !DIExpression()), !dbg !3322
  call void @llvm.dbg.value(metadata i8* undef, metadata !3315, metadata !DIExpression()), !dbg !3322
  call void @llvm.dbg.value(metadata i8 45, metadata !3316, metadata !DIExpression()), !dbg !3322
  call void @llvm.dbg.value(metadata i8 56, metadata !3317, metadata !DIExpression()), !dbg !3322
  call void @llvm.dbg.value(metadata i8 0, metadata !3318, metadata !DIExpression()), !dbg !3322
  call void @llvm.dbg.value(metadata i8 0, metadata !3319, metadata !DIExpression()), !dbg !3322
  call void @llvm.dbg.value(metadata i8 0, metadata !3320, metadata !DIExpression()), !dbg !3322
  call void @llvm.dbg.value(metadata i8 0, metadata !3321, metadata !DIExpression()), !dbg !3322
  %21 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !3326
  %22 = load i8, i8* %21, align 1, !dbg !3326, !tbaa !1096
  %23 = icmp eq i8 %22, 45, !dbg !3326
  br i1 %23, label %24, label %69, !dbg !3328

24:                                               ; preds = %20
  call void @llvm.dbg.value(metadata i8* %6, metadata !3329, metadata !DIExpression()), !dbg !3340
  call void @llvm.dbg.value(metadata i8* undef, metadata !3334, metadata !DIExpression()), !dbg !3340
  call void @llvm.dbg.value(metadata i8 56, metadata !3335, metadata !DIExpression()), !dbg !3340
  call void @llvm.dbg.value(metadata i8 0, metadata !3336, metadata !DIExpression()), !dbg !3340
  call void @llvm.dbg.value(metadata i8 0, metadata !3337, metadata !DIExpression()), !dbg !3340
  call void @llvm.dbg.value(metadata i8 0, metadata !3338, metadata !DIExpression()), !dbg !3340
  call void @llvm.dbg.value(metadata i8 0, metadata !3339, metadata !DIExpression()), !dbg !3340
  %25 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !3344
  %26 = load i8, i8* %25, align 1, !dbg !3344, !tbaa !1096
  %27 = icmp eq i8 %26, 56, !dbg !3344
  br i1 %27, label %28, label %69, !dbg !3346

28:                                               ; preds = %24
  call void @llvm.dbg.value(metadata i8* %6, metadata !3347, metadata !DIExpression()), !dbg !3357
  call void @llvm.dbg.value(metadata i8* undef, metadata !3352, metadata !DIExpression()), !dbg !3357
  call void @llvm.dbg.value(metadata i8 0, metadata !3353, metadata !DIExpression()), !dbg !3357
  call void @llvm.dbg.value(metadata i8 0, metadata !3354, metadata !DIExpression()), !dbg !3357
  call void @llvm.dbg.value(metadata i8 0, metadata !3355, metadata !DIExpression()), !dbg !3357
  call void @llvm.dbg.value(metadata i8 0, metadata !3356, metadata !DIExpression()), !dbg !3357
  %29 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !3361
  %30 = load i8, i8* %29, align 1, !dbg !3361, !tbaa !1096
  %31 = icmp eq i8 %30, 0, !dbg !3361
  br i1 %31, label %32, label %69, !dbg !3363

32:                                               ; preds = %28
  %33 = load i8, i8* %0, align 1, !dbg !3364, !tbaa !1096
  %34 = icmp eq i8 %33, 96, !dbg !3365
  %35 = select i1 %34, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14.117, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15.118, i64 0, i64 0), !dbg !3364
  br label %72, !dbg !3366

36:                                               ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !3271, metadata !DIExpression()), !dbg !3367
  call void @llvm.dbg.value(metadata i8* undef, metadata !3276, metadata !DIExpression()), !dbg !3367
  call void @llvm.dbg.value(metadata i8 66, metadata !3277, metadata !DIExpression()), !dbg !3367
  call void @llvm.dbg.value(metadata i8 49, metadata !3278, metadata !DIExpression()), !dbg !3367
  call void @llvm.dbg.value(metadata i8 56, metadata !3279, metadata !DIExpression()), !dbg !3367
  call void @llvm.dbg.value(metadata i8 48, metadata !3280, metadata !DIExpression()), !dbg !3367
  call void @llvm.dbg.value(metadata i8 51, metadata !3281, metadata !DIExpression()), !dbg !3367
  call void @llvm.dbg.value(metadata i8 48, metadata !3282, metadata !DIExpression()), !dbg !3367
  call void @llvm.dbg.value(metadata i8 0, metadata !3283, metadata !DIExpression()), !dbg !3367
  call void @llvm.dbg.value(metadata i8 0, metadata !3284, metadata !DIExpression()), !dbg !3367
  %37 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !3371
  %38 = load i8, i8* %37, align 1, !dbg !3371, !tbaa !1096
  %39 = and i8 %38, -33, !dbg !3371
  %40 = icmp eq i8 %39, 66, !dbg !3371
  br i1 %40, label %41, label %69, !dbg !3371

41:                                               ; preds = %36
  call void @llvm.dbg.value(metadata i8* %6, metadata !3291, metadata !DIExpression()), !dbg !3372
  call void @llvm.dbg.value(metadata i8* undef, metadata !3296, metadata !DIExpression()), !dbg !3372
  call void @llvm.dbg.value(metadata i8 49, metadata !3297, metadata !DIExpression()), !dbg !3372
  call void @llvm.dbg.value(metadata i8 56, metadata !3298, metadata !DIExpression()), !dbg !3372
  call void @llvm.dbg.value(metadata i8 48, metadata !3299, metadata !DIExpression()), !dbg !3372
  call void @llvm.dbg.value(metadata i8 51, metadata !3300, metadata !DIExpression()), !dbg !3372
  call void @llvm.dbg.value(metadata i8 48, metadata !3301, metadata !DIExpression()), !dbg !3372
  call void @llvm.dbg.value(metadata i8 0, metadata !3302, metadata !DIExpression()), !dbg !3372
  call void @llvm.dbg.value(metadata i8 0, metadata !3303, metadata !DIExpression()), !dbg !3372
  %42 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !3374
  %43 = load i8, i8* %42, align 1, !dbg !3374, !tbaa !1096
  %44 = icmp eq i8 %43, 49, !dbg !3374
  br i1 %44, label %45, label %69, !dbg !3375

45:                                               ; preds = %41
  call void @llvm.dbg.value(metadata i8* %6, metadata !3310, metadata !DIExpression()), !dbg !3376
  call void @llvm.dbg.value(metadata i8* undef, metadata !3315, metadata !DIExpression()), !dbg !3376
  call void @llvm.dbg.value(metadata i8 56, metadata !3316, metadata !DIExpression()), !dbg !3376
  call void @llvm.dbg.value(metadata i8 48, metadata !3317, metadata !DIExpression()), !dbg !3376
  call void @llvm.dbg.value(metadata i8 51, metadata !3318, metadata !DIExpression()), !dbg !3376
  call void @llvm.dbg.value(metadata i8 48, metadata !3319, metadata !DIExpression()), !dbg !3376
  call void @llvm.dbg.value(metadata i8 0, metadata !3320, metadata !DIExpression()), !dbg !3376
  call void @llvm.dbg.value(metadata i8 0, metadata !3321, metadata !DIExpression()), !dbg !3376
  %46 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !3378
  %47 = load i8, i8* %46, align 1, !dbg !3378, !tbaa !1096
  %48 = icmp eq i8 %47, 56, !dbg !3378
  br i1 %48, label %49, label %69, !dbg !3379

49:                                               ; preds = %45
  call void @llvm.dbg.value(metadata i8* %6, metadata !3329, metadata !DIExpression()), !dbg !3380
  call void @llvm.dbg.value(metadata i8* undef, metadata !3334, metadata !DIExpression()), !dbg !3380
  call void @llvm.dbg.value(metadata i8 48, metadata !3335, metadata !DIExpression()), !dbg !3380
  call void @llvm.dbg.value(metadata i8 51, metadata !3336, metadata !DIExpression()), !dbg !3380
  call void @llvm.dbg.value(metadata i8 48, metadata !3337, metadata !DIExpression()), !dbg !3380
  call void @llvm.dbg.value(metadata i8 0, metadata !3338, metadata !DIExpression()), !dbg !3380
  call void @llvm.dbg.value(metadata i8 0, metadata !3339, metadata !DIExpression()), !dbg !3380
  %50 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !3382
  %51 = load i8, i8* %50, align 1, !dbg !3382, !tbaa !1096
  %52 = icmp eq i8 %51, 48, !dbg !3382
  br i1 %52, label %53, label %69, !dbg !3383

53:                                               ; preds = %49
  call void @llvm.dbg.value(metadata i8* %6, metadata !3347, metadata !DIExpression()), !dbg !3384
  call void @llvm.dbg.value(metadata i8* undef, metadata !3352, metadata !DIExpression()), !dbg !3384
  call void @llvm.dbg.value(metadata i8 51, metadata !3353, metadata !DIExpression()), !dbg !3384
  call void @llvm.dbg.value(metadata i8 48, metadata !3354, metadata !DIExpression()), !dbg !3384
  call void @llvm.dbg.value(metadata i8 0, metadata !3355, metadata !DIExpression()), !dbg !3384
  call void @llvm.dbg.value(metadata i8 0, metadata !3356, metadata !DIExpression()), !dbg !3384
  %54 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !3386
  %55 = load i8, i8* %54, align 1, !dbg !3386, !tbaa !1096
  %56 = icmp eq i8 %55, 51, !dbg !3386
  br i1 %56, label %57, label %69, !dbg !3387

57:                                               ; preds = %53
  call void @llvm.dbg.value(metadata i8* %6, metadata !3388, metadata !DIExpression()), !dbg !3397
  call void @llvm.dbg.value(metadata i8* undef, metadata !3393, metadata !DIExpression()), !dbg !3397
  call void @llvm.dbg.value(metadata i8 48, metadata !3394, metadata !DIExpression()), !dbg !3397
  call void @llvm.dbg.value(metadata i8 0, metadata !3395, metadata !DIExpression()), !dbg !3397
  call void @llvm.dbg.value(metadata i8 0, metadata !3396, metadata !DIExpression()), !dbg !3397
  %58 = getelementptr inbounds i8, i8* %6, i64 6, !dbg !3401
  %59 = load i8, i8* %58, align 1, !dbg !3401, !tbaa !1096
  %60 = icmp eq i8 %59, 48, !dbg !3401
  br i1 %60, label %61, label %69, !dbg !3403

61:                                               ; preds = %57
  call void @llvm.dbg.value(metadata i8* %6, metadata !3404, metadata !DIExpression()), !dbg !3412
  call void @llvm.dbg.value(metadata i8* undef, metadata !3409, metadata !DIExpression()), !dbg !3412
  call void @llvm.dbg.value(metadata i8 0, metadata !3410, metadata !DIExpression()), !dbg !3412
  call void @llvm.dbg.value(metadata i8 0, metadata !3411, metadata !DIExpression()), !dbg !3412
  %62 = getelementptr inbounds i8, i8* %6, i64 7, !dbg !3416
  %63 = load i8, i8* %62, align 1, !dbg !3416, !tbaa !1096
  %64 = icmp eq i8 %63, 0, !dbg !3416
  br i1 %64, label %65, label %69, !dbg !3418

65:                                               ; preds = %61
  %66 = load i8, i8* %0, align 1, !dbg !3419, !tbaa !1096
  %67 = icmp eq i8 %66, 96, !dbg !3420
  %68 = select i1 %67, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17.119, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18.120, i64 0, i64 0), !dbg !3419
  br label %72, !dbg !3421

69:                                               ; preds = %5, %28, %24, %20, %15, %10, %57, %53, %49, %45, %41, %36, %61
  %70 = icmp eq i32 %1, 9, !dbg !3422
  %71 = select i1 %70, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.116, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.115, i64 0, i64 0), !dbg !3423
  br label %72, !dbg !3424

72:                                               ; preds = %2, %69, %65, %32
  %73 = phi i8* [ %35, %32 ], [ %68, %65 ], [ %71, %69 ], [ %3, %2 ], !dbg !3244
  ret i8* %73, !dbg !3425
}

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i64 @strlen(i8* nocapture) local_unnamed_addr #6

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #18

; Function Attrs: nounwind
declare !dbg !3426 i32 @iswprint(i32) local_unnamed_addr #2

; Function Attrs: nounwind readonly willreturn
declare !dbg !3430 i32 @mbsinit(%struct.__mbstate_t*) local_unnamed_addr #19

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_alloc(i8* %0, i64 %1, %struct.quoting_options* %2) local_unnamed_addr #8 !dbg !3436 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3440, metadata !DIExpression()), !dbg !3443
  call void @llvm.dbg.value(metadata i64 %1, metadata !3441, metadata !DIExpression()), !dbg !3443
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !3442, metadata !DIExpression()), !dbg !3443
  call void @llvm.dbg.value(metadata i8* %0, metadata !3444, metadata !DIExpression()) #25, !dbg !3457
  call void @llvm.dbg.value(metadata i64 %1, metadata !3449, metadata !DIExpression()) #25, !dbg !3457
  call void @llvm.dbg.value(metadata i64* null, metadata !3450, metadata !DIExpression()) #25, !dbg !3457
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !3451, metadata !DIExpression()) #25, !dbg !3457
  %4 = icmp eq %struct.quoting_options* %2, null, !dbg !3459
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %2, !dbg !3459
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !3452, metadata !DIExpression()) #25, !dbg !3457
  %6 = tail call i32* @__errno_location() #29, !dbg !3460
  %7 = load i32, i32* %6, align 4, !dbg !3460, !tbaa !1021
  call void @llvm.dbg.value(metadata i32 %7, metadata !3453, metadata !DIExpression()) #25, !dbg !3457
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !3461
  %9 = load i32, i32* %8, align 4, !dbg !3461, !tbaa !2662
  %10 = or i32 %9, 1, !dbg !3462
  call void @llvm.dbg.value(metadata i32 %10, metadata !3454, metadata !DIExpression()) #25, !dbg !3457
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3463
  %12 = load i32, i32* %11, align 8, !dbg !3463, !tbaa !2611
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !3464
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3465
  %15 = load i8*, i8** %14, align 8, !dbg !3465, !tbaa !2684
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3466
  %17 = load i8*, i8** %16, align 8, !dbg !3466, !tbaa !2687
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %12, i32 %10, i32* nonnull %13, i8* %15, i8* %17) #25, !dbg !3467
  %19 = add i64 %18, 1, !dbg !3468
  call void @llvm.dbg.value(metadata i64 %19, metadata !3455, metadata !DIExpression()) #25, !dbg !3457
  call void @llvm.dbg.value(metadata i64 %19, metadata !3469, metadata !DIExpression()) #25, !dbg !3474
  %20 = tail call noalias i8* @xmalloc(i64 %19) #25, !dbg !3476
  call void @llvm.dbg.value(metadata i8* %20, metadata !3456, metadata !DIExpression()) #25, !dbg !3457
  %21 = load i32, i32* %11, align 8, !dbg !3477, !tbaa !2611
  %22 = load i8*, i8** %14, align 8, !dbg !3478, !tbaa !2684
  %23 = load i8*, i8** %16, align 8, !dbg !3479, !tbaa !2687
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %20, i64 %19, i8* %0, i64 %1, i32 %21, i32 %10, i32* nonnull %13, i8* %22, i8* %23) #25, !dbg !3480
  store i32 %7, i32* %6, align 4, !dbg !3481, !tbaa !1021
  ret i8* %20, !dbg !3482
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_alloc_mem(i8* %0, i64 %1, i64* %2, %struct.quoting_options* %3) local_unnamed_addr #8 !dbg !3445 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3444, metadata !DIExpression()), !dbg !3483
  call void @llvm.dbg.value(metadata i64 %1, metadata !3449, metadata !DIExpression()), !dbg !3483
  call void @llvm.dbg.value(metadata i64* %2, metadata !3450, metadata !DIExpression()), !dbg !3483
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !3451, metadata !DIExpression()), !dbg !3483
  %5 = icmp eq %struct.quoting_options* %3, null, !dbg !3484
  %6 = select i1 %5, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %3, !dbg !3484
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !3452, metadata !DIExpression()), !dbg !3483
  %7 = tail call i32* @__errno_location() #29, !dbg !3485
  %8 = load i32, i32* %7, align 4, !dbg !3485, !tbaa !1021
  call void @llvm.dbg.value(metadata i32 %8, metadata !3453, metadata !DIExpression()), !dbg !3483
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !3486
  %10 = load i32, i32* %9, align 4, !dbg !3486, !tbaa !2662
  %11 = icmp eq i64* %2, null, !dbg !3487
  %12 = zext i1 %11 to i32, !dbg !3487
  %13 = or i32 %10, %12, !dbg !3488
  call void @llvm.dbg.value(metadata i32 %13, metadata !3454, metadata !DIExpression()), !dbg !3483
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !3489
  %15 = load i32, i32* %14, align 8, !dbg !3489, !tbaa !2611
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !3490
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !3491
  %18 = load i8*, i8** %17, align 8, !dbg !3491, !tbaa !2684
  %19 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !3492
  %20 = load i8*, i8** %19, align 8, !dbg !3492, !tbaa !2687
  %21 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %15, i32 %13, i32* nonnull %16, i8* %18, i8* %20), !dbg !3493
  %22 = add i64 %21, 1, !dbg !3494
  call void @llvm.dbg.value(metadata i64 %22, metadata !3455, metadata !DIExpression()), !dbg !3483
  call void @llvm.dbg.value(metadata i64 %22, metadata !3469, metadata !DIExpression()) #25, !dbg !3495
  %23 = tail call noalias i8* @xmalloc(i64 %22) #25, !dbg !3497
  call void @llvm.dbg.value(metadata i8* %23, metadata !3456, metadata !DIExpression()), !dbg !3483
  %24 = load i32, i32* %14, align 8, !dbg !3498, !tbaa !2611
  %25 = load i8*, i8** %17, align 8, !dbg !3499, !tbaa !2684
  %26 = load i8*, i8** %19, align 8, !dbg !3500, !tbaa !2687
  %27 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %23, i64 %22, i8* %0, i64 %1, i32 %24, i32 %13, i32* nonnull %16, i8* %25, i8* %26), !dbg !3501
  store i32 %8, i32* %7, align 4, !dbg !3502, !tbaa !1021
  br i1 %11, label %29, label %28, !dbg !3503

28:                                               ; preds = %4
  store i64 %21, i64* %2, align 8, !dbg !3504, !tbaa !1065
  br label %29, !dbg !3506

29:                                               ; preds = %28, %4
  ret i8* %23, !dbg !3507
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @quotearg_free() local_unnamed_addr #8 !dbg !3508 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !3512, !tbaa !792
  call void @llvm.dbg.value(metadata %struct.slotvec* %1, metadata !3510, metadata !DIExpression()), !dbg !3513
  call void @llvm.dbg.value(metadata i32 1, metadata !3511, metadata !DIExpression()), !dbg !3513
  %2 = load i32, i32* @nslots, align 4, !dbg !3514, !tbaa !1021
  %3 = icmp sgt i32 %2, 1, !dbg !3517
  br i1 %3, label %4, label %12, !dbg !3518

4:                                                ; preds = %0
  %5 = zext i32 %2 to i64, !dbg !3517
  br label %6, !dbg !3518

6:                                                ; preds = %4, %6
  %7 = phi i64 [ 1, %4 ], [ %10, %6 ]
  call void @llvm.dbg.value(metadata i64 %7, metadata !3511, metadata !DIExpression()), !dbg !3513
  %8 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %7, i32 1, !dbg !3519
  %9 = load i8*, i8** %8, align 8, !dbg !3519, !tbaa !3520
  tail call void @free(i8* %9) #25, !dbg !3522
  %10 = add nuw nsw i64 %7, 1, !dbg !3523
  call void @llvm.dbg.value(metadata i64 %10, metadata !3511, metadata !DIExpression()), !dbg !3513
  %11 = icmp eq i64 %10, %5, !dbg !3517
  br i1 %11, label %12, label %6, !dbg !3518, !llvm.loop !3524

12:                                               ; preds = %6, %0
  %13 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1, !dbg !3526
  %14 = load i8*, i8** %13, align 8, !dbg !3526, !tbaa !3520
  %15 = icmp eq i8* %14, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !3528
  br i1 %15, label %17, label %16, !dbg !3529

16:                                               ; preds = %12
  tail call void @free(i8* %14) #25, !dbg !3530
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !dbg !3532, !tbaa !3533
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !dbg !3534, !tbaa !3520
  br label %17, !dbg !3535

17:                                               ; preds = %16, %12
  %18 = icmp eq %struct.slotvec* %1, @slotvec0, !dbg !3536
  br i1 %18, label %21, label %19, !dbg !3538

19:                                               ; preds = %17
  %20 = bitcast %struct.slotvec* %1 to i8*, !dbg !3539
  tail call void @free(i8* %20) #25, !dbg !3541
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !3542, !tbaa !792
  br label %21, !dbg !3543

21:                                               ; preds = %19, %17
  store i32 1, i32* @nslots, align 4, !dbg !3544, !tbaa !1021
  ret void, !dbg !3545
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n(i32 %0, i8* %1) local_unnamed_addr #8 !dbg !3546 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3548, metadata !DIExpression()), !dbg !3550
  call void @llvm.dbg.value(metadata i8* %1, metadata !3549, metadata !DIExpression()), !dbg !3550
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @default_quoting_options), !dbg !3551
  ret i8* %3, !dbg !3552
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* %3) unnamed_addr #8 !dbg !3553 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3557, metadata !DIExpression()), !dbg !3572
  call void @llvm.dbg.value(metadata i8* %1, metadata !3558, metadata !DIExpression()), !dbg !3572
  call void @llvm.dbg.value(metadata i64 %2, metadata !3559, metadata !DIExpression()), !dbg !3572
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !3560, metadata !DIExpression()), !dbg !3572
  %5 = tail call i32* @__errno_location() #29, !dbg !3573
  %6 = load i32, i32* %5, align 4, !dbg !3573, !tbaa !1021
  call void @llvm.dbg.value(metadata i32 %6, metadata !3561, metadata !DIExpression()), !dbg !3572
  %7 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !3574, !tbaa !792
  call void @llvm.dbg.value(metadata %struct.slotvec* %7, metadata !3562, metadata !DIExpression()), !dbg !3572
  %8 = icmp slt i32 %0, 0, !dbg !3575
  br i1 %8, label %9, label %10, !dbg !3577

9:                                                ; preds = %4
  tail call void @abort() #27, !dbg !3578
  unreachable, !dbg !3578

10:                                               ; preds = %4
  %11 = load i32, i32* @nslots, align 4, !dbg !3579, !tbaa !1021
  %12 = icmp sgt i32 %11, %0, !dbg !3580
  br i1 %12, label %34, label %13, !dbg !3581

13:                                               ; preds = %10
  %14 = icmp eq %struct.slotvec* %7, @slotvec0, !dbg !3582
  call void @llvm.dbg.value(metadata i1 %14, metadata !3563, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3583
  call void @llvm.dbg.value(metadata i32 2147483646, metadata !3566, metadata !DIExpression()), !dbg !3583
  %15 = icmp eq i32 %0, 2147483647, !dbg !3584
  br i1 %15, label %16, label %17, !dbg !3586

16:                                               ; preds = %13
  tail call void @xalloc_die() #27, !dbg !3587
  unreachable, !dbg !3587

17:                                               ; preds = %13
  %18 = select i1 %14, %struct.slotvec* null, %struct.slotvec* %7, !dbg !3588
  %19 = bitcast %struct.slotvec* %18 to i8*, !dbg !3588
  %20 = add nuw nsw i32 %0, 1, !dbg !3589
  %21 = zext i32 %20 to i64
  %22 = shl nuw nsw i64 %21, 4, !dbg !3590
  %23 = tail call i8* @xrealloc(i8* %19, i64 %22) #25, !dbg !3591
  %24 = bitcast i8* %23 to %struct.slotvec*, !dbg !3591
  call void @llvm.dbg.value(metadata %struct.slotvec* %24, metadata !3562, metadata !DIExpression()), !dbg !3572
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !dbg !3592, !tbaa !792
  br i1 %14, label %25, label %26, !dbg !3593

25:                                               ; preds = %17
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(16) %23, i8* nonnull align 8 dereferenceable(16) bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i1 false), !dbg !3594, !tbaa.struct !3596
  br label %26, !dbg !3597

26:                                               ; preds = %25, %17
  %27 = load i32, i32* @nslots, align 4, !dbg !3598, !tbaa !1021
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28, !dbg !3599
  %30 = bitcast %struct.slotvec* %29 to i8*, !dbg !3600
  %31 = sub nsw i32 %20, %27, !dbg !3601
  %32 = sext i32 %31 to i64, !dbg !3602
  %33 = shl nsw i64 %32, 4, !dbg !3603
  call void @llvm.dbg.value(metadata i8* %30, metadata !2997, metadata !DIExpression()) #25, !dbg !3604
  call void @llvm.dbg.value(metadata i32 0, metadata !3002, metadata !DIExpression()) #25, !dbg !3604
  call void @llvm.dbg.value(metadata i64 %33, metadata !3003, metadata !DIExpression()) #25, !dbg !3604
  call void @llvm.memset.p0i8.i64(i8* nonnull align 1 %30, i8 0, i64 %33, i1 false) #25, !dbg !3606
  store i32 %20, i32* @nslots, align 4, !dbg !3607, !tbaa !1021
  br label %34, !dbg !3608

34:                                               ; preds = %26, %10
  %35 = phi %struct.slotvec* [ %24, %26 ], [ %7, %10 ], !dbg !3572
  call void @llvm.dbg.value(metadata %struct.slotvec* %35, metadata !3562, metadata !DIExpression()), !dbg !3572
  %36 = zext i32 %0 to i64, !dbg !3609
  %37 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 0, !dbg !3610
  %38 = load i64, i64* %37, align 8, !dbg !3610, !tbaa !3533
  call void @llvm.dbg.value(metadata i64 %38, metadata !3567, metadata !DIExpression()), !dbg !3611
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 1, !dbg !3612
  %40 = load i8*, i8** %39, align 8, !dbg !3612, !tbaa !3520
  call void @llvm.dbg.value(metadata i8* %40, metadata !3569, metadata !DIExpression()), !dbg !3611
  %41 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !3613
  %42 = load i32, i32* %41, align 4, !dbg !3613, !tbaa !2662
  %43 = or i32 %42, 1, !dbg !3614
  call void @llvm.dbg.value(metadata i32 %43, metadata !3570, metadata !DIExpression()), !dbg !3611
  %44 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !3615
  %45 = load i32, i32* %44, align 8, !dbg !3615, !tbaa !2611
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !3616
  %47 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !3617
  %48 = load i8*, i8** %47, align 8, !dbg !3617, !tbaa !2684
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !3618
  %50 = load i8*, i8** %49, align 8, !dbg !3618, !tbaa !2687
  %51 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %40, i64 %38, i8* %1, i64 %2, i32 %45, i32 %43, i32* nonnull %46, i8* %48, i8* %50), !dbg !3619
  call void @llvm.dbg.value(metadata i64 %51, metadata !3571, metadata !DIExpression()), !dbg !3611
  %52 = icmp ugt i64 %38, %51, !dbg !3620
  br i1 %52, label %63, label %53, !dbg !3622

53:                                               ; preds = %34
  %54 = add i64 %51, 1, !dbg !3623
  call void @llvm.dbg.value(metadata i64 %54, metadata !3567, metadata !DIExpression()), !dbg !3611
  store i64 %54, i64* %37, align 8, !dbg !3625, !tbaa !3533
  %55 = icmp eq i8* %40, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !3626
  br i1 %55, label %57, label %56, !dbg !3628

56:                                               ; preds = %53
  tail call void @free(i8* %40) #25, !dbg !3629
  br label %57, !dbg !3629

57:                                               ; preds = %56, %53
  call void @llvm.dbg.value(metadata i64 %54, metadata !3469, metadata !DIExpression()) #25, !dbg !3630
  %58 = tail call noalias i8* @xmalloc(i64 %54) #25, !dbg !3632
  call void @llvm.dbg.value(metadata i8* %58, metadata !3569, metadata !DIExpression()), !dbg !3611
  store i8* %58, i8** %39, align 8, !dbg !3633, !tbaa !3520
  %59 = load i32, i32* %44, align 8, !dbg !3634, !tbaa !2611
  %60 = load i8*, i8** %47, align 8, !dbg !3635, !tbaa !2684
  %61 = load i8*, i8** %49, align 8, !dbg !3636, !tbaa !2687
  %62 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %58, i64 %54, i8* %1, i64 %2, i32 %59, i32 %43, i32* nonnull %46, i8* %60, i8* %61), !dbg !3637
  br label %63, !dbg !3638

63:                                               ; preds = %57, %34
  %64 = phi i8* [ %58, %57 ], [ %40, %34 ], !dbg !3611
  call void @llvm.dbg.value(metadata i8* %64, metadata !3569, metadata !DIExpression()), !dbg !3611
  store i32 %6, i32* %5, align 4, !dbg !3639, !tbaa !1021
  ret i8* %64, !dbg !3640
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #20

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_mem(i32 %0, i8* %1, i64 %2) local_unnamed_addr #8 !dbg !3641 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3645, metadata !DIExpression()), !dbg !3648
  call void @llvm.dbg.value(metadata i8* %1, metadata !3646, metadata !DIExpression()), !dbg !3648
  call void @llvm.dbg.value(metadata i64 %2, metadata !3647, metadata !DIExpression()), !dbg !3648
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @default_quoting_options), !dbg !3649
  ret i8* %4, !dbg !3650
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg(i8* %0) local_unnamed_addr #8 !dbg !3651 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3653, metadata !DIExpression()), !dbg !3654
  call void @llvm.dbg.value(metadata i32 0, metadata !3548, metadata !DIExpression()) #25, !dbg !3655
  call void @llvm.dbg.value(metadata i8* %0, metadata !3549, metadata !DIExpression()) #25, !dbg !3655
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @default_quoting_options) #25, !dbg !3657
  ret i8* %2, !dbg !3658
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_mem(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !3659 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3663, metadata !DIExpression()), !dbg !3665
  call void @llvm.dbg.value(metadata i64 %1, metadata !3664, metadata !DIExpression()), !dbg !3665
  call void @llvm.dbg.value(metadata i32 0, metadata !3645, metadata !DIExpression()) #25, !dbg !3666
  call void @llvm.dbg.value(metadata i8* %0, metadata !3646, metadata !DIExpression()) #25, !dbg !3666
  call void @llvm.dbg.value(metadata i64 %1, metadata !3647, metadata !DIExpression()) #25, !dbg !3666
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @default_quoting_options) #25, !dbg !3668
  ret i8* %3, !dbg !3669
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style(i32 %0, i32 %1, i8* %2) local_unnamed_addr #8 !dbg !3670 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3674, metadata !DIExpression()), !dbg !3678
  call void @llvm.dbg.value(metadata i32 %1, metadata !3675, metadata !DIExpression()), !dbg !3678
  call void @llvm.dbg.value(metadata i8* %2, metadata !3676, metadata !DIExpression()), !dbg !3678
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3679
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #25, !dbg !3679
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3677, metadata !DIExpression()), !dbg !3680
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3681), !dbg !3684
  call void @llvm.dbg.value(metadata i32 %1, metadata !3685, metadata !DIExpression()) #25, !dbg !3691
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3690, metadata !DIExpression()) #25, !dbg !3693
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false) #25, !dbg !3693, !alias.scope !3681
  %6 = icmp eq i32 %1, 10, !dbg !3694
  br i1 %6, label %7, label %8, !dbg !3696

7:                                                ; preds = %3
  tail call void @abort() #27, !dbg !3697, !noalias !3681
  unreachable, !dbg !3697

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3698
  store i32 %1, i32* %9, align 8, !dbg !3699, !tbaa !2611, !alias.scope !3681
  %10 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !3700
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #25, !dbg !3701
  ret i8* %10, !dbg !3702
}

; Function Attrs: inaccessiblememonly nofree nosync nounwind willreturn
declare void @llvm.experimental.noalias.scope.decl(metadata) #21

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_mem(i32 %0, i32 %1, i8* %2, i64 %3) local_unnamed_addr #8 !dbg !3703 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3707, metadata !DIExpression()), !dbg !3712
  call void @llvm.dbg.value(metadata i32 %1, metadata !3708, metadata !DIExpression()), !dbg !3712
  call void @llvm.dbg.value(metadata i8* %2, metadata !3709, metadata !DIExpression()), !dbg !3712
  call void @llvm.dbg.value(metadata i64 %3, metadata !3710, metadata !DIExpression()), !dbg !3712
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3713
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #25, !dbg !3713
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !3711, metadata !DIExpression()), !dbg !3714
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3715), !dbg !3718
  call void @llvm.dbg.value(metadata i32 %1, metadata !3685, metadata !DIExpression()) #25, !dbg !3719
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !3690, metadata !DIExpression()) #25, !dbg !3721
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %6, i8 0, i64 56, i1 false) #25, !dbg !3721, !alias.scope !3715
  %7 = icmp eq i32 %1, 10, !dbg !3722
  br i1 %7, label %8, label %9, !dbg !3723

8:                                                ; preds = %4
  tail call void @abort() #27, !dbg !3724, !noalias !3715
  unreachable, !dbg !3724

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3725
  store i32 %1, i32* %10, align 8, !dbg !3726, !tbaa !2611, !alias.scope !3715
  %11 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5), !dbg !3727
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #25, !dbg !3728
  ret i8* %11, !dbg !3729
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style(i32 %0, i8* %1) local_unnamed_addr #8 !dbg !3730 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3734, metadata !DIExpression()), !dbg !3736
  call void @llvm.dbg.value(metadata i8* %1, metadata !3735, metadata !DIExpression()), !dbg !3736
  call void @llvm.dbg.value(metadata i32 0, metadata !3674, metadata !DIExpression()) #25, !dbg !3737
  call void @llvm.dbg.value(metadata i32 %0, metadata !3675, metadata !DIExpression()) #25, !dbg !3737
  call void @llvm.dbg.value(metadata i8* %1, metadata !3676, metadata !DIExpression()) #25, !dbg !3737
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3739
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #25, !dbg !3739
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !3677, metadata !DIExpression()) #25, !dbg !3740
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3741) #25, !dbg !3744
  call void @llvm.dbg.value(metadata i32 %0, metadata !3685, metadata !DIExpression()) #25, !dbg !3745
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !3690, metadata !DIExpression()) #25, !dbg !3747
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false) #25, !dbg !3747, !alias.scope !3741
  %5 = icmp eq i32 %0, 10, !dbg !3748
  br i1 %5, label %6, label %7, !dbg !3749

6:                                                ; preds = %2
  tail call void @abort() #27, !dbg !3750, !noalias !3741
  unreachable, !dbg !3750

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !3751
  store i32 %0, i32* %8, align 8, !dbg !3752, !tbaa !2611, !alias.scope !3741
  %9 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 -1, %struct.quoting_options* nonnull %3) #25, !dbg !3753
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #25, !dbg !3754
  ret i8* %9, !dbg !3755
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style_mem(i32 %0, i8* %1, i64 %2) local_unnamed_addr #8 !dbg !3756 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3760, metadata !DIExpression()), !dbg !3763
  call void @llvm.dbg.value(metadata i8* %1, metadata !3761, metadata !DIExpression()), !dbg !3763
  call void @llvm.dbg.value(metadata i64 %2, metadata !3762, metadata !DIExpression()), !dbg !3763
  call void @llvm.dbg.value(metadata i32 0, metadata !3707, metadata !DIExpression()) #25, !dbg !3764
  call void @llvm.dbg.value(metadata i32 %0, metadata !3708, metadata !DIExpression()) #25, !dbg !3764
  call void @llvm.dbg.value(metadata i8* %1, metadata !3709, metadata !DIExpression()) #25, !dbg !3764
  call void @llvm.dbg.value(metadata i64 %2, metadata !3710, metadata !DIExpression()) #25, !dbg !3764
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3766
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #25, !dbg !3766
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3711, metadata !DIExpression()) #25, !dbg !3767
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3768) #25, !dbg !3771
  call void @llvm.dbg.value(metadata i32 %0, metadata !3685, metadata !DIExpression()) #25, !dbg !3772
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3690, metadata !DIExpression()) #25, !dbg !3774
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false) #25, !dbg !3774, !alias.scope !3768
  %6 = icmp eq i32 %0, 10, !dbg !3775
  br i1 %6, label %7, label %8, !dbg !3776

7:                                                ; preds = %3
  tail call void @abort() #27, !dbg !3777, !noalias !3768
  unreachable, !dbg !3777

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3778
  store i32 %0, i32* %9, align 8, !dbg !3779, !tbaa !2611, !alias.scope !3768
  %10 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 %2, %struct.quoting_options* nonnull %4) #25, !dbg !3780
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #25, !dbg !3781
  ret i8* %10, !dbg !3782
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char_mem(i8* %0, i64 %1, i8 signext %2) local_unnamed_addr #8 !dbg !3783 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3787, metadata !DIExpression()), !dbg !3791
  call void @llvm.dbg.value(metadata i64 %1, metadata !3788, metadata !DIExpression()), !dbg !3791
  call void @llvm.dbg.value(metadata i8 %2, metadata !3789, metadata !DIExpression()), !dbg !3791
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3792
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #25, !dbg !3792
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3790, metadata !DIExpression()), !dbg !3793
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !3794, !tbaa.struct !3795
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2629, metadata !DIExpression()), !dbg !3796
  call void @llvm.dbg.value(metadata i8 %2, metadata !2630, metadata !DIExpression()), !dbg !3796
  call void @llvm.dbg.value(metadata i32 1, metadata !2631, metadata !DIExpression()), !dbg !3796
  call void @llvm.dbg.value(metadata i8 %2, metadata !2632, metadata !DIExpression()), !dbg !3796
  %6 = lshr i8 %2, 5, !dbg !3798
  %7 = zext i8 %6 to i64, !dbg !3798
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !3799
  call void @llvm.dbg.value(metadata i32* %8, metadata !2633, metadata !DIExpression()), !dbg !3796
  %9 = and i8 %2, 31, !dbg !3800
  %10 = zext i8 %9 to i32, !dbg !3800
  call void @llvm.dbg.value(metadata i32 %10, metadata !2635, metadata !DIExpression()), !dbg !3796
  %11 = load i32, i32* %8, align 4, !dbg !3801, !tbaa !1021
  %12 = lshr i32 %11, %10, !dbg !3802
  %13 = and i32 %12, 1, !dbg !3803
  call void @llvm.dbg.value(metadata i32 %13, metadata !2636, metadata !DIExpression()), !dbg !3796
  %14 = xor i32 %13, 1, !dbg !3804
  %15 = shl i32 %14, %10, !dbg !3805
  %16 = xor i32 %15, %11, !dbg !3806
  store i32 %16, i32* %8, align 4, !dbg !3806, !tbaa !1021
  %17 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %4), !dbg !3807
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #25, !dbg !3808
  ret i8* %17, !dbg !3809
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char(i8* %0, i8 signext %1) local_unnamed_addr #8 !dbg !3810 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3814, metadata !DIExpression()), !dbg !3816
  call void @llvm.dbg.value(metadata i8 %1, metadata !3815, metadata !DIExpression()), !dbg !3816
  call void @llvm.dbg.value(metadata i8* %0, metadata !3787, metadata !DIExpression()) #25, !dbg !3817
  call void @llvm.dbg.value(metadata i64 -1, metadata !3788, metadata !DIExpression()) #25, !dbg !3817
  call void @llvm.dbg.value(metadata i8 %1, metadata !3789, metadata !DIExpression()) #25, !dbg !3817
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3819
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #25, !dbg !3819
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !3790, metadata !DIExpression()) #25, !dbg !3820
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %4, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #25, !dbg !3821, !tbaa.struct !3795
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2629, metadata !DIExpression()) #25, !dbg !3822
  call void @llvm.dbg.value(metadata i8 %1, metadata !2630, metadata !DIExpression()) #25, !dbg !3822
  call void @llvm.dbg.value(metadata i32 1, metadata !2631, metadata !DIExpression()) #25, !dbg !3822
  call void @llvm.dbg.value(metadata i8 %1, metadata !2632, metadata !DIExpression()) #25, !dbg !3822
  %5 = lshr i8 %1, 5, !dbg !3824
  %6 = zext i8 %5 to i64, !dbg !3824
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !3825
  call void @llvm.dbg.value(metadata i32* %7, metadata !2633, metadata !DIExpression()) #25, !dbg !3822
  %8 = and i8 %1, 31, !dbg !3826
  %9 = zext i8 %8 to i32, !dbg !3826
  call void @llvm.dbg.value(metadata i32 %9, metadata !2635, metadata !DIExpression()) #25, !dbg !3822
  %10 = load i32, i32* %7, align 4, !dbg !3827, !tbaa !1021
  %11 = lshr i32 %10, %9, !dbg !3828
  %12 = and i32 %11, 1, !dbg !3829
  call void @llvm.dbg.value(metadata i32 %12, metadata !2636, metadata !DIExpression()) #25, !dbg !3822
  %13 = xor i32 %12, 1, !dbg !3830
  %14 = shl i32 %13, %9, !dbg !3831
  %15 = xor i32 %14, %10, !dbg !3832
  store i32 %15, i32* %7, align 4, !dbg !3832, !tbaa !1021
  %16 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %3) #25, !dbg !3833
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #25, !dbg !3834
  ret i8* %16, !dbg !3835
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon(i8* %0) local_unnamed_addr #8 !dbg !3836 {
  %2 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3838, metadata !DIExpression()), !dbg !3839
  call void @llvm.dbg.value(metadata i8* %0, metadata !3814, metadata !DIExpression()) #25, !dbg !3840
  call void @llvm.dbg.value(metadata i8 58, metadata !3815, metadata !DIExpression()) #25, !dbg !3840
  call void @llvm.dbg.value(metadata i8* %0, metadata !3787, metadata !DIExpression()) #25, !dbg !3842
  call void @llvm.dbg.value(metadata i64 -1, metadata !3788, metadata !DIExpression()) #25, !dbg !3842
  call void @llvm.dbg.value(metadata i8 58, metadata !3789, metadata !DIExpression()) #25, !dbg !3842
  %3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !3844
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %3) #25, !dbg !3844
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %2, metadata !3790, metadata !DIExpression()) #25, !dbg !3845
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %3, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #25, !dbg !3846, !tbaa.struct !3795
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2629, metadata !DIExpression()) #25, !dbg !3847
  call void @llvm.dbg.value(metadata i8 58, metadata !2630, metadata !DIExpression()) #25, !dbg !3847
  call void @llvm.dbg.value(metadata i32 1, metadata !2631, metadata !DIExpression()) #25, !dbg !3847
  call void @llvm.dbg.value(metadata i8 58, metadata !2632, metadata !DIExpression()) #25, !dbg !3847
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !3849
  call void @llvm.dbg.value(metadata i32* %4, metadata !2633, metadata !DIExpression()) #25, !dbg !3847
  call void @llvm.dbg.value(metadata i32 26, metadata !2635, metadata !DIExpression()) #25, !dbg !3847
  %5 = load i32, i32* %4, align 4, !dbg !3850, !tbaa !1021
  call void @llvm.dbg.value(metadata i32 %5, metadata !2636, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)) #25, !dbg !3847
  %6 = or i32 %5, 67108864, !dbg !3851
  store i32 %6, i32* %4, align 4, !dbg !3851, !tbaa !1021
  %7 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %2) #25, !dbg !3852
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %3) #25, !dbg !3853
  ret i8* %7, !dbg !3854
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon_mem(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !3855 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3857, metadata !DIExpression()), !dbg !3859
  call void @llvm.dbg.value(metadata i64 %1, metadata !3858, metadata !DIExpression()), !dbg !3859
  call void @llvm.dbg.value(metadata i8* %0, metadata !3787, metadata !DIExpression()) #25, !dbg !3860
  call void @llvm.dbg.value(metadata i64 %1, metadata !3788, metadata !DIExpression()) #25, !dbg !3860
  call void @llvm.dbg.value(metadata i8 58, metadata !3789, metadata !DIExpression()) #25, !dbg !3860
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3862
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #25, !dbg !3862
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !3790, metadata !DIExpression()) #25, !dbg !3863
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %4, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #25, !dbg !3864, !tbaa.struct !3795
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2629, metadata !DIExpression()) #25, !dbg !3865
  call void @llvm.dbg.value(metadata i8 58, metadata !2630, metadata !DIExpression()) #25, !dbg !3865
  call void @llvm.dbg.value(metadata i32 1, metadata !2631, metadata !DIExpression()) #25, !dbg !3865
  call void @llvm.dbg.value(metadata i8 58, metadata !2632, metadata !DIExpression()) #25, !dbg !3865
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !3867
  call void @llvm.dbg.value(metadata i32* %5, metadata !2633, metadata !DIExpression()) #25, !dbg !3865
  call void @llvm.dbg.value(metadata i32 26, metadata !2635, metadata !DIExpression()) #25, !dbg !3865
  %6 = load i32, i32* %5, align 4, !dbg !3868, !tbaa !1021
  call void @llvm.dbg.value(metadata i32 %6, metadata !2636, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)) #25, !dbg !3865
  %7 = or i32 %6, 67108864, !dbg !3869
  store i32 %7, i32* %5, align 4, !dbg !3869, !tbaa !1021
  %8 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %3) #25, !dbg !3870
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #25, !dbg !3871
  ret i8* %8, !dbg !3872
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_colon(i32 %0, i32 %1, i8* %2) local_unnamed_addr #8 !dbg !3873 {
  %4 = alloca %struct.quoting_options, align 8
  %5 = alloca [52 x i8], align 4
  call void @llvm.dbg.declare(metadata [52 x i8]* %5, metadata !3690, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416)), !dbg !3879
  call void @llvm.dbg.value(metadata i32 %0, metadata !3875, metadata !DIExpression()), !dbg !3881
  call void @llvm.dbg.value(metadata i32 %1, metadata !3876, metadata !DIExpression()), !dbg !3881
  call void @llvm.dbg.value(metadata i8* %2, metadata !3877, metadata !DIExpression()), !dbg !3881
  %6 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3882
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #25, !dbg !3882
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3878, metadata !DIExpression()), !dbg !3883
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %5, i64 0, i64 0, !dbg !3884
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %7), !dbg !3884
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3885), !dbg !3884
  call void @llvm.dbg.value(metadata i32 %1, metadata !3685, metadata !DIExpression()) #25, !dbg !3888
  call void @llvm.dbg.value(metadata i32 0, metadata !3690, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3888
  call void @llvm.memset.p0i8.i64(i8* nonnull align 4 dereferenceable(52) %7, i8 0, i64 52, i1 false), !dbg !3879, !alias.scope !3885
  %8 = icmp eq i32 %1, 10, !dbg !3889
  br i1 %8, label %9, label %10, !dbg !3890

9:                                                ; preds = %3
  tail call void @abort() #27, !dbg !3891, !noalias !3885
  unreachable, !dbg !3891

10:                                               ; preds = %3
  call void @llvm.dbg.value(metadata i32 %1, metadata !3690, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3888
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3884
  store i32 %1, i32* %11, align 8, !dbg !3884, !tbaa.struct !3795
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !3884
  %13 = bitcast i32* %12 to i8*, !dbg !3884
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 4 dereferenceable(52) %13, i8* nonnull align 4 dereferenceable(52) %7, i64 52, i1 false), !dbg !3884, !tbaa.struct !3892
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %7), !dbg !3884
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2629, metadata !DIExpression()), !dbg !3893
  call void @llvm.dbg.value(metadata i8 58, metadata !2630, metadata !DIExpression()), !dbg !3893
  call void @llvm.dbg.value(metadata i32 1, metadata !2631, metadata !DIExpression()), !dbg !3893
  call void @llvm.dbg.value(metadata i8 58, metadata !2632, metadata !DIExpression()), !dbg !3893
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 1, !dbg !3895
  call void @llvm.dbg.value(metadata i32* %14, metadata !2633, metadata !DIExpression()), !dbg !3893
  call void @llvm.dbg.value(metadata i32 26, metadata !2635, metadata !DIExpression()), !dbg !3893
  %15 = load i32, i32* %14, align 4, !dbg !3896, !tbaa !1021
  call void @llvm.dbg.value(metadata i32 %15, metadata !2636, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)), !dbg !3893
  %16 = or i32 %15, 67108864, !dbg !3897
  store i32 %16, i32* %14, align 4, !dbg !3897, !tbaa !1021
  %17 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !3898
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #25, !dbg !3899
  ret i8* %17, !dbg !3900
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom(i32 %0, i8* %1, i8* %2, i8* %3) local_unnamed_addr #8 !dbg !3901 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3905, metadata !DIExpression()), !dbg !3909
  call void @llvm.dbg.value(metadata i8* %1, metadata !3906, metadata !DIExpression()), !dbg !3909
  call void @llvm.dbg.value(metadata i8* %2, metadata !3907, metadata !DIExpression()), !dbg !3909
  call void @llvm.dbg.value(metadata i8* %3, metadata !3908, metadata !DIExpression()), !dbg !3909
  call void @llvm.dbg.value(metadata i32 %0, metadata !3910, metadata !DIExpression()) #25, !dbg !3920
  call void @llvm.dbg.value(metadata i8* %1, metadata !3915, metadata !DIExpression()) #25, !dbg !3920
  call void @llvm.dbg.value(metadata i8* %2, metadata !3916, metadata !DIExpression()) #25, !dbg !3920
  call void @llvm.dbg.value(metadata i8* %3, metadata !3917, metadata !DIExpression()) #25, !dbg !3920
  call void @llvm.dbg.value(metadata i64 -1, metadata !3918, metadata !DIExpression()) #25, !dbg !3920
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3922
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #25, !dbg !3922
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !3919, metadata !DIExpression()) #25, !dbg !3923
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %6, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false) #25, !dbg !3924, !tbaa.struct !3795
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2669, metadata !DIExpression()) #25, !dbg !3925
  call void @llvm.dbg.value(metadata i8* %1, metadata !2670, metadata !DIExpression()) #25, !dbg !3925
  call void @llvm.dbg.value(metadata i8* %2, metadata !2671, metadata !DIExpression()) #25, !dbg !3925
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2669, metadata !DIExpression()) #25, !dbg !3925
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3927
  store i32 10, i32* %7, align 8, !dbg !3928, !tbaa !2611
  %8 = icmp ne i8* %1, null, !dbg !3929
  %9 = icmp ne i8* %2, null
  %10 = and i1 %8, %9, !dbg !3930
  br i1 %10, label %12, label %11, !dbg !3930

11:                                               ; preds = %4
  tail call void @abort() #27, !dbg !3931
  unreachable, !dbg !3931

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3932
  store i8* %1, i8** %13, align 8, !dbg !3933, !tbaa !2684
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3934
  store i8* %2, i8** %14, align 8, !dbg !3935, !tbaa !2687
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 -1, %struct.quoting_options* nonnull %5) #25, !dbg !3936
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #25, !dbg !3937
  ret i8* %15, !dbg !3938
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom_mem(i32 %0, i8* %1, i8* %2, i8* %3, i64 %4) local_unnamed_addr #8 !dbg !3911 {
  %6 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3910, metadata !DIExpression()), !dbg !3939
  call void @llvm.dbg.value(metadata i8* %1, metadata !3915, metadata !DIExpression()), !dbg !3939
  call void @llvm.dbg.value(metadata i8* %2, metadata !3916, metadata !DIExpression()), !dbg !3939
  call void @llvm.dbg.value(metadata i8* %3, metadata !3917, metadata !DIExpression()), !dbg !3939
  call void @llvm.dbg.value(metadata i64 %4, metadata !3918, metadata !DIExpression()), !dbg !3939
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !3940
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #25, !dbg !3940
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %6, metadata !3919, metadata !DIExpression()), !dbg !3941
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %7, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false), !dbg !3942, !tbaa.struct !3795
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !2669, metadata !DIExpression()) #25, !dbg !3943
  call void @llvm.dbg.value(metadata i8* %1, metadata !2670, metadata !DIExpression()) #25, !dbg !3943
  call void @llvm.dbg.value(metadata i8* %2, metadata !2671, metadata !DIExpression()) #25, !dbg !3943
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !2669, metadata !DIExpression()) #25, !dbg !3943
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !3945
  store i32 10, i32* %8, align 8, !dbg !3946, !tbaa !2611
  %9 = icmp ne i8* %1, null, !dbg !3947
  %10 = icmp ne i8* %2, null
  %11 = and i1 %9, %10, !dbg !3948
  br i1 %11, label %13, label %12, !dbg !3948

12:                                               ; preds = %5
  tail call void @abort() #27, !dbg !3949
  unreachable, !dbg !3949

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !3950
  store i8* %1, i8** %14, align 8, !dbg !3951, !tbaa !2684
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !3952
  store i8* %2, i8** %15, align 8, !dbg !3953, !tbaa !2687
  %16 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 %4, %struct.quoting_options* nonnull %6), !dbg !3954
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #25, !dbg !3955
  ret i8* %16, !dbg !3956
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom(i8* %0, i8* %1, i8* %2) local_unnamed_addr #8 !dbg !3957 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3961, metadata !DIExpression()), !dbg !3964
  call void @llvm.dbg.value(metadata i8* %1, metadata !3962, metadata !DIExpression()), !dbg !3964
  call void @llvm.dbg.value(metadata i8* %2, metadata !3963, metadata !DIExpression()), !dbg !3964
  call void @llvm.dbg.value(metadata i32 0, metadata !3905, metadata !DIExpression()) #25, !dbg !3965
  call void @llvm.dbg.value(metadata i8* %0, metadata !3906, metadata !DIExpression()) #25, !dbg !3965
  call void @llvm.dbg.value(metadata i8* %1, metadata !3907, metadata !DIExpression()) #25, !dbg !3965
  call void @llvm.dbg.value(metadata i8* %2, metadata !3908, metadata !DIExpression()) #25, !dbg !3965
  call void @llvm.dbg.value(metadata i32 0, metadata !3910, metadata !DIExpression()) #25, !dbg !3967
  call void @llvm.dbg.value(metadata i8* %0, metadata !3915, metadata !DIExpression()) #25, !dbg !3967
  call void @llvm.dbg.value(metadata i8* %1, metadata !3916, metadata !DIExpression()) #25, !dbg !3967
  call void @llvm.dbg.value(metadata i8* %2, metadata !3917, metadata !DIExpression()) #25, !dbg !3967
  call void @llvm.dbg.value(metadata i64 -1, metadata !3918, metadata !DIExpression()) #25, !dbg !3967
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3969
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #25, !dbg !3969
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3919, metadata !DIExpression()) #25, !dbg !3970
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false) #25, !dbg !3971, !tbaa.struct !3795
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2669, metadata !DIExpression()) #25, !dbg !3972
  call void @llvm.dbg.value(metadata i8* %0, metadata !2670, metadata !DIExpression()) #25, !dbg !3972
  call void @llvm.dbg.value(metadata i8* %1, metadata !2671, metadata !DIExpression()) #25, !dbg !3972
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2669, metadata !DIExpression()) #25, !dbg !3972
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3974
  store i32 10, i32* %6, align 8, !dbg !3975, !tbaa !2611
  %7 = icmp ne i8* %0, null, !dbg !3976
  %8 = icmp ne i8* %1, null
  %9 = and i1 %7, %8, !dbg !3977
  br i1 %9, label %11, label %10, !dbg !3977

10:                                               ; preds = %3
  tail call void @abort() #27, !dbg !3978
  unreachable, !dbg !3978

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !3979
  store i8* %0, i8** %12, align 8, !dbg !3980, !tbaa !2684
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !3981
  store i8* %1, i8** %13, align 8, !dbg !3982, !tbaa !2687
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4) #25, !dbg !3983
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #25, !dbg !3984
  ret i8* %14, !dbg !3985
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom_mem(i8* %0, i8* %1, i8* %2, i64 %3) local_unnamed_addr #8 !dbg !3986 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3990, metadata !DIExpression()), !dbg !3994
  call void @llvm.dbg.value(metadata i8* %1, metadata !3991, metadata !DIExpression()), !dbg !3994
  call void @llvm.dbg.value(metadata i8* %2, metadata !3992, metadata !DIExpression()), !dbg !3994
  call void @llvm.dbg.value(metadata i64 %3, metadata !3993, metadata !DIExpression()), !dbg !3994
  call void @llvm.dbg.value(metadata i32 0, metadata !3910, metadata !DIExpression()) #25, !dbg !3995
  call void @llvm.dbg.value(metadata i8* %0, metadata !3915, metadata !DIExpression()) #25, !dbg !3995
  call void @llvm.dbg.value(metadata i8* %1, metadata !3916, metadata !DIExpression()) #25, !dbg !3995
  call void @llvm.dbg.value(metadata i8* %2, metadata !3917, metadata !DIExpression()) #25, !dbg !3995
  call void @llvm.dbg.value(metadata i64 %3, metadata !3918, metadata !DIExpression()) #25, !dbg !3995
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3997
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #25, !dbg !3997
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !3919, metadata !DIExpression()) #25, !dbg !3998
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %6, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false) #25, !dbg !3999, !tbaa.struct !3795
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2669, metadata !DIExpression()) #25, !dbg !4000
  call void @llvm.dbg.value(metadata i8* %0, metadata !2670, metadata !DIExpression()) #25, !dbg !4000
  call void @llvm.dbg.value(metadata i8* %1, metadata !2671, metadata !DIExpression()) #25, !dbg !4000
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2669, metadata !DIExpression()) #25, !dbg !4000
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !4002
  store i32 10, i32* %7, align 8, !dbg !4003, !tbaa !2611
  %8 = icmp ne i8* %0, null, !dbg !4004
  %9 = icmp ne i8* %1, null
  %10 = and i1 %8, %9, !dbg !4005
  br i1 %10, label %12, label %11, !dbg !4005

11:                                               ; preds = %4
  tail call void @abort() #27, !dbg !4006
  unreachable, !dbg !4006

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !4007
  store i8* %0, i8** %13, align 8, !dbg !4008, !tbaa !2684
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !4009
  store i8* %1, i8** %14, align 8, !dbg !4010, !tbaa !2687
  %15 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5) #25, !dbg !4011
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #25, !dbg !4012
  ret i8* %15, !dbg !4013
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n_mem(i32 %0, i8* %1, i64 %2) local_unnamed_addr #8 !dbg !4014 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4018, metadata !DIExpression()), !dbg !4021
  call void @llvm.dbg.value(metadata i8* %1, metadata !4019, metadata !DIExpression()), !dbg !4021
  call void @llvm.dbg.value(metadata i64 %2, metadata !4020, metadata !DIExpression()), !dbg !4021
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @quote_quoting_options), !dbg !4022
  ret i8* %4, !dbg !4023
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_mem(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !4024 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4028, metadata !DIExpression()), !dbg !4030
  call void @llvm.dbg.value(metadata i64 %1, metadata !4029, metadata !DIExpression()), !dbg !4030
  call void @llvm.dbg.value(metadata i32 0, metadata !4018, metadata !DIExpression()) #25, !dbg !4031
  call void @llvm.dbg.value(metadata i8* %0, metadata !4019, metadata !DIExpression()) #25, !dbg !4031
  call void @llvm.dbg.value(metadata i64 %1, metadata !4020, metadata !DIExpression()) #25, !dbg !4031
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @quote_quoting_options) #25, !dbg !4033
  ret i8* %3, !dbg !4034
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n(i32 %0, i8* %1) local_unnamed_addr #8 !dbg !4035 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4039, metadata !DIExpression()), !dbg !4041
  call void @llvm.dbg.value(metadata i8* %1, metadata !4040, metadata !DIExpression()), !dbg !4041
  call void @llvm.dbg.value(metadata i32 %0, metadata !4018, metadata !DIExpression()) #25, !dbg !4042
  call void @llvm.dbg.value(metadata i8* %1, metadata !4019, metadata !DIExpression()) #25, !dbg !4042
  call void @llvm.dbg.value(metadata i64 -1, metadata !4020, metadata !DIExpression()) #25, !dbg !4042
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #25, !dbg !4044
  ret i8* %3, !dbg !4045
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote(i8* %0) local_unnamed_addr #8 !dbg !4046 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4050, metadata !DIExpression()), !dbg !4051
  call void @llvm.dbg.value(metadata i32 0, metadata !4039, metadata !DIExpression()) #25, !dbg !4052
  call void @llvm.dbg.value(metadata i8* %0, metadata !4040, metadata !DIExpression()) #25, !dbg !4052
  call void @llvm.dbg.value(metadata i32 0, metadata !4018, metadata !DIExpression()) #25, !dbg !4054
  call void @llvm.dbg.value(metadata i8* %0, metadata !4019, metadata !DIExpression()) #25, !dbg !4054
  call void @llvm.dbg.value(metadata i64 -1, metadata !4020, metadata !DIExpression()) #25, !dbg !4054
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #25, !dbg !4056
  ret i8* %2, !dbg !4057
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @dup_safer(i32 %0) local_unnamed_addr #8 !dbg !4058 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4060, metadata !DIExpression()), !dbg !4061
  %2 = tail call i32 (i32, i32, ...) @rpl_fcntl(i32 %0, i32 0, i32 3) #25, !dbg !4062
  ret i32 %2, !dbg !4063
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** readonly %4, i64 %5) local_unnamed_addr #8 !dbg !4064 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4103, metadata !DIExpression()), !dbg !4109
  call void @llvm.dbg.value(metadata i8* %1, metadata !4104, metadata !DIExpression()), !dbg !4109
  call void @llvm.dbg.value(metadata i8* %2, metadata !4105, metadata !DIExpression()), !dbg !4109
  call void @llvm.dbg.value(metadata i8* %3, metadata !4106, metadata !DIExpression()), !dbg !4109
  call void @llvm.dbg.value(metadata i8** %4, metadata !4107, metadata !DIExpression()), !dbg !4109
  call void @llvm.dbg.value(metadata i64 %5, metadata !4108, metadata !DIExpression()), !dbg !4109
  %7 = icmp eq i8* %1, null, !dbg !4110
  br i1 %7, label %10, label %8, !dbg !4112

8:                                                ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.127, i64 0, i64 0), i8* nonnull %1, i8* %2, i8* %3) #25, !dbg !4113
  br label %12, !dbg !4113

10:                                               ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.128, i64 0, i64 0), i8* %2, i8* %3) #25, !dbg !4114
  br label %12

12:                                               ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.129, i64 0, i64 0), i32 5) #25, !dbg !4115
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* %13, i32 2020) #25, !dbg !4115
  %15 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.130, i64 0, i64 0), %struct._IO_FILE* %0), !dbg !4116
  %16 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([171 x i8], [171 x i8]* @.str.4.131, i64 0, i64 0), i32 5) #25, !dbg !4117
  %17 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %16, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5.132, i64 0, i64 0)) #25, !dbg !4117
  %18 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.130, i64 0, i64 0), %struct._IO_FILE* %0), !dbg !4118
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
  ], !dbg !4119

19:                                               ; preds = %12
  %20 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6.133, i64 0, i64 0), i32 5) #25, !dbg !4120
  %21 = load i8*, i8** %4, align 8, !dbg !4120, !tbaa !792
  %22 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %20, i8* %21) #25, !dbg !4120
  br label %147, !dbg !4122

23:                                               ; preds = %12
  %24 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7.134, i64 0, i64 0), i32 5) #25, !dbg !4123
  %25 = load i8*, i8** %4, align 8, !dbg !4123, !tbaa !792
  %26 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4123
  %27 = load i8*, i8** %26, align 8, !dbg !4123, !tbaa !792
  %28 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %24, i8* %25, i8* %27) #25, !dbg !4123
  br label %147, !dbg !4124

29:                                               ; preds = %12
  %30 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8.135, i64 0, i64 0), i32 5) #25, !dbg !4125
  %31 = load i8*, i8** %4, align 8, !dbg !4125, !tbaa !792
  %32 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4125
  %33 = load i8*, i8** %32, align 8, !dbg !4125, !tbaa !792
  %34 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !4125
  %35 = load i8*, i8** %34, align 8, !dbg !4125, !tbaa !792
  %36 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %30, i8* %31, i8* %33, i8* %35) #25, !dbg !4125
  br label %147, !dbg !4126

37:                                               ; preds = %12
  %38 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9.136, i64 0, i64 0), i32 5) #25, !dbg !4127
  %39 = load i8*, i8** %4, align 8, !dbg !4127, !tbaa !792
  %40 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4127
  %41 = load i8*, i8** %40, align 8, !dbg !4127, !tbaa !792
  %42 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !4127
  %43 = load i8*, i8** %42, align 8, !dbg !4127, !tbaa !792
  %44 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !4127
  %45 = load i8*, i8** %44, align 8, !dbg !4127, !tbaa !792
  %46 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %38, i8* %39, i8* %41, i8* %43, i8* %45) #25, !dbg !4127
  br label %147, !dbg !4128

47:                                               ; preds = %12
  %48 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.10.137, i64 0, i64 0), i32 5) #25, !dbg !4129
  %49 = load i8*, i8** %4, align 8, !dbg !4129, !tbaa !792
  %50 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4129
  %51 = load i8*, i8** %50, align 8, !dbg !4129, !tbaa !792
  %52 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !4129
  %53 = load i8*, i8** %52, align 8, !dbg !4129, !tbaa !792
  %54 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !4129
  %55 = load i8*, i8** %54, align 8, !dbg !4129, !tbaa !792
  %56 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !4129
  %57 = load i8*, i8** %56, align 8, !dbg !4129, !tbaa !792
  %58 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %48, i8* %49, i8* %51, i8* %53, i8* %55, i8* %57) #25, !dbg !4129
  br label %147, !dbg !4130

59:                                               ; preds = %12
  %60 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.11.138, i64 0, i64 0), i32 5) #25, !dbg !4131
  %61 = load i8*, i8** %4, align 8, !dbg !4131, !tbaa !792
  %62 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4131
  %63 = load i8*, i8** %62, align 8, !dbg !4131, !tbaa !792
  %64 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !4131
  %65 = load i8*, i8** %64, align 8, !dbg !4131, !tbaa !792
  %66 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !4131
  %67 = load i8*, i8** %66, align 8, !dbg !4131, !tbaa !792
  %68 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !4131
  %69 = load i8*, i8** %68, align 8, !dbg !4131, !tbaa !792
  %70 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !4131
  %71 = load i8*, i8** %70, align 8, !dbg !4131, !tbaa !792
  %72 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %60, i8* %61, i8* %63, i8* %65, i8* %67, i8* %69, i8* %71) #25, !dbg !4131
  br label %147, !dbg !4132

73:                                               ; preds = %12
  %74 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.12.139, i64 0, i64 0), i32 5) #25, !dbg !4133
  %75 = load i8*, i8** %4, align 8, !dbg !4133, !tbaa !792
  %76 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4133
  %77 = load i8*, i8** %76, align 8, !dbg !4133, !tbaa !792
  %78 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !4133
  %79 = load i8*, i8** %78, align 8, !dbg !4133, !tbaa !792
  %80 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !4133
  %81 = load i8*, i8** %80, align 8, !dbg !4133, !tbaa !792
  %82 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !4133
  %83 = load i8*, i8** %82, align 8, !dbg !4133, !tbaa !792
  %84 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !4133
  %85 = load i8*, i8** %84, align 8, !dbg !4133, !tbaa !792
  %86 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !4133
  %87 = load i8*, i8** %86, align 8, !dbg !4133, !tbaa !792
  %88 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %74, i8* %75, i8* %77, i8* %79, i8* %81, i8* %83, i8* %85, i8* %87) #25, !dbg !4133
  br label %147, !dbg !4134

89:                                               ; preds = %12
  %90 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.13.140, i64 0, i64 0), i32 5) #25, !dbg !4135
  %91 = load i8*, i8** %4, align 8, !dbg !4135, !tbaa !792
  %92 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4135
  %93 = load i8*, i8** %92, align 8, !dbg !4135, !tbaa !792
  %94 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !4135
  %95 = load i8*, i8** %94, align 8, !dbg !4135, !tbaa !792
  %96 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !4135
  %97 = load i8*, i8** %96, align 8, !dbg !4135, !tbaa !792
  %98 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !4135
  %99 = load i8*, i8** %98, align 8, !dbg !4135, !tbaa !792
  %100 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !4135
  %101 = load i8*, i8** %100, align 8, !dbg !4135, !tbaa !792
  %102 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !4135
  %103 = load i8*, i8** %102, align 8, !dbg !4135, !tbaa !792
  %104 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !4135
  %105 = load i8*, i8** %104, align 8, !dbg !4135, !tbaa !792
  %106 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %90, i8* %91, i8* %93, i8* %95, i8* %97, i8* %99, i8* %101, i8* %103, i8* %105) #25, !dbg !4135
  br label %147, !dbg !4136

107:                                              ; preds = %12
  %108 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.14.141, i64 0, i64 0), i32 5) #25, !dbg !4137
  %109 = load i8*, i8** %4, align 8, !dbg !4137, !tbaa !792
  %110 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4137
  %111 = load i8*, i8** %110, align 8, !dbg !4137, !tbaa !792
  %112 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !4137
  %113 = load i8*, i8** %112, align 8, !dbg !4137, !tbaa !792
  %114 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !4137
  %115 = load i8*, i8** %114, align 8, !dbg !4137, !tbaa !792
  %116 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !4137
  %117 = load i8*, i8** %116, align 8, !dbg !4137, !tbaa !792
  %118 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !4137
  %119 = load i8*, i8** %118, align 8, !dbg !4137, !tbaa !792
  %120 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !4137
  %121 = load i8*, i8** %120, align 8, !dbg !4137, !tbaa !792
  %122 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !4137
  %123 = load i8*, i8** %122, align 8, !dbg !4137, !tbaa !792
  %124 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !4137
  %125 = load i8*, i8** %124, align 8, !dbg !4137, !tbaa !792
  %126 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %108, i8* %109, i8* %111, i8* %113, i8* %115, i8* %117, i8* %119, i8* %121, i8* %123, i8* %125) #25, !dbg !4137
  br label %147, !dbg !4138

127:                                              ; preds = %12
  %128 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.15.142, i64 0, i64 0), i32 5) #25, !dbg !4139
  %129 = load i8*, i8** %4, align 8, !dbg !4139, !tbaa !792
  %130 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4139
  %131 = load i8*, i8** %130, align 8, !dbg !4139, !tbaa !792
  %132 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !4139
  %133 = load i8*, i8** %132, align 8, !dbg !4139, !tbaa !792
  %134 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !4139
  %135 = load i8*, i8** %134, align 8, !dbg !4139, !tbaa !792
  %136 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !4139
  %137 = load i8*, i8** %136, align 8, !dbg !4139, !tbaa !792
  %138 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !4139
  %139 = load i8*, i8** %138, align 8, !dbg !4139, !tbaa !792
  %140 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !4139
  %141 = load i8*, i8** %140, align 8, !dbg !4139, !tbaa !792
  %142 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !4139
  %143 = load i8*, i8** %142, align 8, !dbg !4139, !tbaa !792
  %144 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !4139
  %145 = load i8*, i8** %144, align 8, !dbg !4139, !tbaa !792
  %146 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %128, i8* %129, i8* %131, i8* %133, i8* %135, i8* %137, i8* %139, i8* %141, i8* %143, i8* %145) #25, !dbg !4139
  br label %147, !dbg !4140

147:                                              ; preds = %127, %107, %89, %73, %59, %47, %37, %29, %23, %19, %12
  ret void, !dbg !4141
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_ar(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** readonly %4) local_unnamed_addr #8 !dbg !4142 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4146, metadata !DIExpression()), !dbg !4152
  call void @llvm.dbg.value(metadata i8* %1, metadata !4147, metadata !DIExpression()), !dbg !4152
  call void @llvm.dbg.value(metadata i8* %2, metadata !4148, metadata !DIExpression()), !dbg !4152
  call void @llvm.dbg.value(metadata i8* %3, metadata !4149, metadata !DIExpression()), !dbg !4152
  call void @llvm.dbg.value(metadata i8** %4, metadata !4150, metadata !DIExpression()), !dbg !4152
  call void @llvm.dbg.value(metadata i64 0, metadata !4151, metadata !DIExpression()), !dbg !4152
  br label %6, !dbg !4153

6:                                                ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !4155
  call void @llvm.dbg.value(metadata i64 %7, metadata !4151, metadata !DIExpression()), !dbg !4152
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7, !dbg !4156
  %9 = load i8*, i8** %8, align 8, !dbg !4156, !tbaa !792
  %10 = icmp eq i8* %9, null, !dbg !4158
  %11 = add i64 %7, 1, !dbg !4159
  call void @llvm.dbg.value(metadata i64 %11, metadata !4151, metadata !DIExpression()), !dbg !4152
  br i1 %10, label %12, label %6, !dbg !4158, !llvm.loop !4160

12:                                               ; preds = %6
  tail call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %4, i64 %7), !dbg !4162
  ret void, !dbg !4163
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nocapture %4) local_unnamed_addr #8 !dbg !4164 {
  %6 = alloca [10 x i8*], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4175, metadata !DIExpression()), !dbg !4183
  call void @llvm.dbg.value(metadata i8* %1, metadata !4176, metadata !DIExpression()), !dbg !4183
  call void @llvm.dbg.value(metadata i8* %2, metadata !4177, metadata !DIExpression()), !dbg !4183
  call void @llvm.dbg.value(metadata i8* %3, metadata !4178, metadata !DIExpression()), !dbg !4183
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %4, metadata !4179, metadata !DIExpression()), !dbg !4183
  %7 = bitcast [10 x i8*]* %6 to i8*, !dbg !4184
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %7) #25, !dbg !4184
  call void @llvm.dbg.declare(metadata [10 x i8*]* %6, metadata !4181, metadata !DIExpression()), !dbg !4185
  call void @llvm.dbg.value(metadata i64 0, metadata !4180, metadata !DIExpression()), !dbg !4183
  %8 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 0
  %9 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 2
  %10 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 3
  call void @llvm.dbg.value(metadata i64 0, metadata !4180, metadata !DIExpression()), !dbg !4183
  %11 = load i32, i32* %8, align 8, !dbg !4186
  %12 = icmp ult i32 %11, 41, !dbg !4186
  br i1 %12, label %13, label %18, !dbg !4186

13:                                               ; preds = %5
  %14 = load i8*, i8** %10, align 8, !dbg !4186
  %15 = zext i32 %11 to i64, !dbg !4186
  %16 = getelementptr i8, i8* %14, i64 %15, !dbg !4186
  %17 = add nuw nsw i32 %11, 8, !dbg !4186
  store i32 %17, i32* %8, align 8, !dbg !4186
  br label %21, !dbg !4186

18:                                               ; preds = %5
  %19 = load i8*, i8** %9, align 8, !dbg !4186
  %20 = getelementptr i8, i8* %19, i64 8, !dbg !4186
  store i8* %20, i8** %9, align 8, !dbg !4186
  br label %21, !dbg !4186

21:                                               ; preds = %18, %13
  %22 = phi i32 [ %17, %13 ], [ %11, %18 ]
  %23 = phi i8* [ %16, %13 ], [ %19, %18 ]
  %24 = bitcast i8* %23 to i8**, !dbg !4186
  %25 = load i8*, i8** %24, align 8, !dbg !4186
  %26 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !4189
  store i8* %25, i8** %26, align 16, !dbg !4190, !tbaa !792
  %27 = icmp eq i8* %25, null, !dbg !4191
  br i1 %27, label %30, label %28, !dbg !4192

28:                                               ; preds = %21
  call void @llvm.dbg.value(metadata i64 1, metadata !4180, metadata !DIExpression()), !dbg !4183
  call void @llvm.dbg.value(metadata i64 1, metadata !4180, metadata !DIExpression()), !dbg !4183
  %29 = icmp ult i32 %22, 41, !dbg !4186
  br i1 %29, label %35, label %32, !dbg !4186

30:                                               ; preds = %135, %128, %121, %114, %108, %91, %74, %57, %40, %21
  %31 = phi i64 [ 0, %21 ], [ 1, %40 ], [ 2, %57 ], [ 3, %74 ], [ 4, %91 ], [ 5, %108 ], [ 6, %114 ], [ 7, %121 ], [ 8, %128 ], [ %142, %135 ], !dbg !4193
  call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %26, i64 %31), !dbg !4194
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %7) #25, !dbg !4195
  ret void, !dbg !4195

32:                                               ; preds = %28
  %33 = load i8*, i8** %9, align 8, !dbg !4186
  %34 = getelementptr i8, i8* %33, i64 8, !dbg !4186
  store i8* %34, i8** %9, align 8, !dbg !4186
  br label %40, !dbg !4186

35:                                               ; preds = %28
  %36 = load i8*, i8** %10, align 8, !dbg !4186
  %37 = zext i32 %22 to i64, !dbg !4186
  %38 = getelementptr i8, i8* %36, i64 %37, !dbg !4186
  %39 = add nuw nsw i32 %22, 8, !dbg !4186
  store i32 %39, i32* %8, align 8, !dbg !4186
  br label %40, !dbg !4186

40:                                               ; preds = %35, %32
  %41 = phi i32 [ %39, %35 ], [ %22, %32 ]
  %42 = phi i8* [ %38, %35 ], [ %33, %32 ]
  %43 = bitcast i8* %42 to i8**, !dbg !4186
  %44 = load i8*, i8** %43, align 8, !dbg !4186
  %45 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !4189
  store i8* %44, i8** %45, align 8, !dbg !4190, !tbaa !792
  %46 = icmp eq i8* %44, null, !dbg !4191
  br i1 %46, label %30, label %47, !dbg !4192

47:                                               ; preds = %40
  call void @llvm.dbg.value(metadata i64 2, metadata !4180, metadata !DIExpression()), !dbg !4183
  call void @llvm.dbg.value(metadata i64 2, metadata !4180, metadata !DIExpression()), !dbg !4183
  %48 = icmp ult i32 %41, 41, !dbg !4186
  br i1 %48, label %52, label %49, !dbg !4186

49:                                               ; preds = %47
  %50 = load i8*, i8** %9, align 8, !dbg !4186
  %51 = getelementptr i8, i8* %50, i64 8, !dbg !4186
  store i8* %51, i8** %9, align 8, !dbg !4186
  br label %57, !dbg !4186

52:                                               ; preds = %47
  %53 = load i8*, i8** %10, align 8, !dbg !4186
  %54 = zext i32 %41 to i64, !dbg !4186
  %55 = getelementptr i8, i8* %53, i64 %54, !dbg !4186
  %56 = add nuw nsw i32 %41, 8, !dbg !4186
  store i32 %56, i32* %8, align 8, !dbg !4186
  br label %57, !dbg !4186

57:                                               ; preds = %52, %49
  %58 = phi i32 [ %56, %52 ], [ %41, %49 ]
  %59 = phi i8* [ %55, %52 ], [ %50, %49 ]
  %60 = bitcast i8* %59 to i8**, !dbg !4186
  %61 = load i8*, i8** %60, align 8, !dbg !4186
  %62 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !4189
  store i8* %61, i8** %62, align 16, !dbg !4190, !tbaa !792
  %63 = icmp eq i8* %61, null, !dbg !4191
  br i1 %63, label %30, label %64, !dbg !4192

64:                                               ; preds = %57
  call void @llvm.dbg.value(metadata i64 3, metadata !4180, metadata !DIExpression()), !dbg !4183
  call void @llvm.dbg.value(metadata i64 3, metadata !4180, metadata !DIExpression()), !dbg !4183
  %65 = icmp ult i32 %58, 41, !dbg !4186
  br i1 %65, label %69, label %66, !dbg !4186

66:                                               ; preds = %64
  %67 = load i8*, i8** %9, align 8, !dbg !4186
  %68 = getelementptr i8, i8* %67, i64 8, !dbg !4186
  store i8* %68, i8** %9, align 8, !dbg !4186
  br label %74, !dbg !4186

69:                                               ; preds = %64
  %70 = load i8*, i8** %10, align 8, !dbg !4186
  %71 = zext i32 %58 to i64, !dbg !4186
  %72 = getelementptr i8, i8* %70, i64 %71, !dbg !4186
  %73 = add nuw nsw i32 %58, 8, !dbg !4186
  store i32 %73, i32* %8, align 8, !dbg !4186
  br label %74, !dbg !4186

74:                                               ; preds = %69, %66
  %75 = phi i32 [ %73, %69 ], [ %58, %66 ]
  %76 = phi i8* [ %72, %69 ], [ %67, %66 ]
  %77 = bitcast i8* %76 to i8**, !dbg !4186
  %78 = load i8*, i8** %77, align 8, !dbg !4186
  %79 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !4189
  store i8* %78, i8** %79, align 8, !dbg !4190, !tbaa !792
  %80 = icmp eq i8* %78, null, !dbg !4191
  br i1 %80, label %30, label %81, !dbg !4192

81:                                               ; preds = %74
  call void @llvm.dbg.value(metadata i64 4, metadata !4180, metadata !DIExpression()), !dbg !4183
  call void @llvm.dbg.value(metadata i64 4, metadata !4180, metadata !DIExpression()), !dbg !4183
  %82 = icmp ult i32 %75, 41, !dbg !4186
  br i1 %82, label %86, label %83, !dbg !4186

83:                                               ; preds = %81
  %84 = load i8*, i8** %9, align 8, !dbg !4186
  %85 = getelementptr i8, i8* %84, i64 8, !dbg !4186
  store i8* %85, i8** %9, align 8, !dbg !4186
  br label %91, !dbg !4186

86:                                               ; preds = %81
  %87 = load i8*, i8** %10, align 8, !dbg !4186
  %88 = zext i32 %75 to i64, !dbg !4186
  %89 = getelementptr i8, i8* %87, i64 %88, !dbg !4186
  %90 = add nuw nsw i32 %75, 8, !dbg !4186
  store i32 %90, i32* %8, align 8, !dbg !4186
  br label %91, !dbg !4186

91:                                               ; preds = %86, %83
  %92 = phi i32 [ %90, %86 ], [ %75, %83 ]
  %93 = phi i8* [ %89, %86 ], [ %84, %83 ]
  %94 = bitcast i8* %93 to i8**, !dbg !4186
  %95 = load i8*, i8** %94, align 8, !dbg !4186
  %96 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !4189
  store i8* %95, i8** %96, align 16, !dbg !4190, !tbaa !792
  %97 = icmp eq i8* %95, null, !dbg !4191
  br i1 %97, label %30, label %98, !dbg !4192

98:                                               ; preds = %91
  call void @llvm.dbg.value(metadata i64 5, metadata !4180, metadata !DIExpression()), !dbg !4183
  call void @llvm.dbg.value(metadata i64 5, metadata !4180, metadata !DIExpression()), !dbg !4183
  %99 = icmp ult i32 %92, 41, !dbg !4186
  br i1 %99, label %103, label %100, !dbg !4186

100:                                              ; preds = %98
  %101 = load i8*, i8** %9, align 8, !dbg !4186
  %102 = getelementptr i8, i8* %101, i64 8, !dbg !4186
  store i8* %102, i8** %9, align 8, !dbg !4186
  br label %108, !dbg !4186

103:                                              ; preds = %98
  %104 = load i8*, i8** %10, align 8, !dbg !4186
  %105 = zext i32 %92 to i64, !dbg !4186
  %106 = getelementptr i8, i8* %104, i64 %105, !dbg !4186
  %107 = add nuw nsw i32 %92, 8, !dbg !4186
  store i32 %107, i32* %8, align 8, !dbg !4186
  br label %108, !dbg !4186

108:                                              ; preds = %103, %100
  %109 = phi i8* [ %106, %103 ], [ %101, %100 ]
  %110 = bitcast i8* %109 to i8**, !dbg !4186
  %111 = load i8*, i8** %110, align 8, !dbg !4186
  %112 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !4189
  store i8* %111, i8** %112, align 8, !dbg !4190, !tbaa !792
  %113 = icmp eq i8* %111, null, !dbg !4191
  br i1 %113, label %30, label %114, !dbg !4192

114:                                              ; preds = %108
  call void @llvm.dbg.value(metadata i64 6, metadata !4180, metadata !DIExpression()), !dbg !4183
  %115 = load i8*, i8** %9, align 8, !dbg !4186
  %116 = getelementptr i8, i8* %115, i64 8, !dbg !4186
  store i8* %116, i8** %9, align 8, !dbg !4186
  %117 = bitcast i8* %115 to i8**, !dbg !4186
  %118 = load i8*, i8** %117, align 8, !dbg !4186
  %119 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !4189
  store i8* %118, i8** %119, align 16, !dbg !4190, !tbaa !792
  %120 = icmp eq i8* %118, null, !dbg !4191
  br i1 %120, label %30, label %121, !dbg !4192

121:                                              ; preds = %114
  call void @llvm.dbg.value(metadata i64 7, metadata !4180, metadata !DIExpression()), !dbg !4183
  %122 = load i8*, i8** %9, align 8, !dbg !4186
  %123 = getelementptr i8, i8* %122, i64 8, !dbg !4186
  store i8* %123, i8** %9, align 8, !dbg !4186
  %124 = bitcast i8* %122 to i8**, !dbg !4186
  %125 = load i8*, i8** %124, align 8, !dbg !4186
  %126 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !4189
  store i8* %125, i8** %126, align 8, !dbg !4190, !tbaa !792
  %127 = icmp eq i8* %125, null, !dbg !4191
  br i1 %127, label %30, label %128, !dbg !4192

128:                                              ; preds = %121
  call void @llvm.dbg.value(metadata i64 8, metadata !4180, metadata !DIExpression()), !dbg !4183
  %129 = load i8*, i8** %9, align 8, !dbg !4186
  %130 = getelementptr i8, i8* %129, i64 8, !dbg !4186
  store i8* %130, i8** %9, align 8, !dbg !4186
  %131 = bitcast i8* %129 to i8**, !dbg !4186
  %132 = load i8*, i8** %131, align 8, !dbg !4186
  %133 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !4189
  store i8* %132, i8** %133, align 16, !dbg !4190, !tbaa !792
  %134 = icmp eq i8* %132, null, !dbg !4191
  br i1 %134, label %30, label %135, !dbg !4192

135:                                              ; preds = %128
  call void @llvm.dbg.value(metadata i64 9, metadata !4180, metadata !DIExpression()), !dbg !4183
  %136 = load i8*, i8** %9, align 8, !dbg !4186
  %137 = getelementptr i8, i8* %136, i64 8, !dbg !4186
  store i8* %137, i8** %9, align 8, !dbg !4186
  %138 = bitcast i8* %136 to i8**, !dbg !4186
  %139 = load i8*, i8** %138, align 8, !dbg !4186
  %140 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9, !dbg !4189
  store i8* %139, i8** %140, align 8, !dbg !4190, !tbaa !792
  %141 = icmp eq i8* %139, null, !dbg !4191
  %142 = select i1 %141, i64 9, i64 10, !dbg !4192
  br label %30, !dbg !4192
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, ...) local_unnamed_addr #8 !dbg !4196 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4200, metadata !DIExpression()), !dbg !4210
  call void @llvm.dbg.value(metadata i8* %1, metadata !4201, metadata !DIExpression()), !dbg !4210
  call void @llvm.dbg.value(metadata i8* %2, metadata !4202, metadata !DIExpression()), !dbg !4210
  call void @llvm.dbg.value(metadata i8* %3, metadata !4203, metadata !DIExpression()), !dbg !4210
  %6 = bitcast [1 x %struct.__va_list_tag]* %5 to i8*, !dbg !4211
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %6) #25, !dbg !4211
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %5, metadata !4204, metadata !DIExpression()), !dbg !4212
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0, !dbg !4213
  call void @llvm.va_start(i8* nonnull %6), !dbg !4213
  call void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nonnull %7), !dbg !4214
  call void @llvm.va_end(i8* nonnull %6), !dbg !4215
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %6) #25, !dbg !4216
  ret void, !dbg !4216
}

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #22

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #22

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #8 !dbg !4217 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !4218, !tbaa !792
  %2 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.130, i64 0, i64 0), %struct._IO_FILE* %1), !dbg !4218
  %3 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16.145, i64 0, i64 0), i32 5) #25, !dbg !4219
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %3, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.17.146, i64 0, i64 0)) #25, !dbg !4219
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.18.147, i64 0, i64 0), i32 5) #25, !dbg !4220
  %6 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %5, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.19.148, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.20.149, i64 0, i64 0)) #25, !dbg !4220
  %7 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.21.150, i64 0, i64 0), i32 5) #25, !dbg !4221
  %8 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %7, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.22.151, i64 0, i64 0)) #25, !dbg !4221
  ret void, !dbg !4222
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnmalloc(i64 %0, i64 %1) local_unnamed_addr #23 !dbg !4223 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4227, metadata !DIExpression()), !dbg !4229
  call void @llvm.dbg.value(metadata i64 %1, metadata !4228, metadata !DIExpression()), !dbg !4229
  %3 = udiv i64 9223372036854775807, %1, !dbg !4230
  %4 = icmp ult i64 %3, %0, !dbg !4230
  br i1 %4, label %5, label %6, !dbg !4232

5:                                                ; preds = %2
  tail call void @xalloc_die() #27, !dbg !4233
  unreachable, !dbg !4233

6:                                                ; preds = %2
  %7 = mul i64 %1, %0, !dbg !4234
  call void @llvm.dbg.value(metadata i64 %7, metadata !4235, metadata !DIExpression()) #25, !dbg !4241
  %8 = tail call noalias i8* @malloc(i64 %7) #25, !dbg !4243
  call void @llvm.dbg.value(metadata i8* %8, metadata !4240, metadata !DIExpression()) #25, !dbg !4241
  %9 = icmp eq i8* %8, null, !dbg !4244
  %10 = icmp ne i64 %7, 0
  %11 = and i1 %10, %9, !dbg !4246
  br i1 %11, label %12, label %13, !dbg !4246

12:                                               ; preds = %6
  tail call void @xalloc_die() #27, !dbg !4247
  unreachable, !dbg !4247

13:                                               ; preds = %6
  ret i8* %8, !dbg !4248
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xmalloc(i64 %0) local_unnamed_addr #8 !dbg !4236 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4235, metadata !DIExpression()), !dbg !4249
  %2 = tail call noalias i8* @malloc(i64 %0) #25, !dbg !4250
  call void @llvm.dbg.value(metadata i8* %2, metadata !4240, metadata !DIExpression()), !dbg !4249
  %3 = icmp eq i8* %2, null, !dbg !4251
  %4 = icmp ne i64 %0, 0
  %5 = and i1 %4, %3, !dbg !4252
  br i1 %5, label %6, label %7, !dbg !4252

6:                                                ; preds = %1
  tail call void @xalloc_die() #27, !dbg !4253
  unreachable, !dbg !4253

7:                                                ; preds = %1
  ret i8* %2, !dbg !4254
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnrealloc(i8* %0, i64 %1, i64 %2) local_unnamed_addr #23 !dbg !4255 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4259, metadata !DIExpression()), !dbg !4262
  call void @llvm.dbg.value(metadata i64 %1, metadata !4260, metadata !DIExpression()), !dbg !4262
  call void @llvm.dbg.value(metadata i64 %2, metadata !4261, metadata !DIExpression()), !dbg !4262
  %4 = udiv i64 9223372036854775807, %2, !dbg !4263
  %5 = icmp ult i64 %4, %1, !dbg !4263
  br i1 %5, label %6, label %7, !dbg !4265

6:                                                ; preds = %3
  tail call void @xalloc_die() #27, !dbg !4266
  unreachable, !dbg !4266

7:                                                ; preds = %3
  %8 = mul i64 %2, %1, !dbg !4267
  call void @llvm.dbg.value(metadata i8* %0, metadata !4268, metadata !DIExpression()) #25, !dbg !4274
  call void @llvm.dbg.value(metadata i64 %8, metadata !4273, metadata !DIExpression()) #25, !dbg !4274
  %9 = icmp eq i64 %8, 0, !dbg !4276
  %10 = icmp ne i8* %0, null
  %11 = and i1 %10, %9, !dbg !4278
  br i1 %11, label %12, label %13, !dbg !4278

12:                                               ; preds = %7
  tail call void @free(i8* nonnull %0) #25, !dbg !4279
  br label %19, !dbg !4281

13:                                               ; preds = %7
  %14 = tail call i8* @realloc(i8* %0, i64 %8) #25, !dbg !4282
  call void @llvm.dbg.value(metadata i8* %14, metadata !4268, metadata !DIExpression()) #25, !dbg !4274
  %15 = icmp eq i8* %14, null, !dbg !4283
  %16 = icmp ne i64 %8, 0
  %17 = and i1 %16, %15, !dbg !4285
  br i1 %17, label %18, label %19, !dbg !4285

18:                                               ; preds = %13
  tail call void @xalloc_die() #27, !dbg !4286
  unreachable, !dbg !4286

19:                                               ; preds = %12, %13
  %20 = phi i8* [ null, %12 ], [ %14, %13 ], !dbg !4274
  ret i8* %20, !dbg !4287
}

; Function Attrs: inaccessiblemem_or_argmemonly nounwind willreturn
declare noalias noundef i8* @realloc(i8* nocapture, i64) local_unnamed_addr #10

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xrealloc(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !4269 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4268, metadata !DIExpression()), !dbg !4288
  call void @llvm.dbg.value(metadata i64 %1, metadata !4273, metadata !DIExpression()), !dbg !4288
  %3 = icmp eq i64 %1, 0, !dbg !4289
  %4 = icmp ne i8* %0, null
  %5 = and i1 %4, %3, !dbg !4290
  br i1 %5, label %6, label %7, !dbg !4290

6:                                                ; preds = %2
  tail call void @free(i8* nonnull %0) #25, !dbg !4291
  br label %13, !dbg !4292

7:                                                ; preds = %2
  %8 = tail call i8* @realloc(i8* %0, i64 %1) #25, !dbg !4293
  call void @llvm.dbg.value(metadata i8* %8, metadata !4268, metadata !DIExpression()), !dbg !4288
  %9 = icmp eq i8* %8, null, !dbg !4294
  %10 = icmp ne i64 %1, 0
  %11 = and i1 %10, %9, !dbg !4295
  br i1 %11, label %12, label %13, !dbg !4295

12:                                               ; preds = %7
  tail call void @xalloc_die() #27, !dbg !4296
  unreachable, !dbg !4296

13:                                               ; preds = %7, %6
  %14 = phi i8* [ null, %6 ], [ %8, %7 ], !dbg !4288
  ret i8* %14, !dbg !4297
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @x2nrealloc(i8* %0, i64* nocapture %1, i64 %2) local_unnamed_addr #23 !dbg !355 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !360, metadata !DIExpression()), !dbg !4298
  call void @llvm.dbg.value(metadata i64* %1, metadata !361, metadata !DIExpression()), !dbg !4298
  call void @llvm.dbg.value(metadata i64 %2, metadata !362, metadata !DIExpression()), !dbg !4298
  %4 = load i64, i64* %1, align 8, !dbg !4299, !tbaa !1065
  call void @llvm.dbg.value(metadata i64 %4, metadata !363, metadata !DIExpression()), !dbg !4298
  %5 = icmp eq i8* %0, null, !dbg !4300
  br i1 %5, label %6, label %20, !dbg !4302

6:                                                ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !4303
  br i1 %7, label %8, label %13, !dbg !4306

8:                                                ; preds = %6
  %9 = udiv i64 128, %2, !dbg !4307
  call void @llvm.dbg.value(metadata i64 %9, metadata !363, metadata !DIExpression()), !dbg !4298
  %10 = icmp ugt i64 %2, 128, !dbg !4309
  %11 = zext i1 %10 to i64, !dbg !4309
  %12 = add nuw nsw i64 %9, %11, !dbg !4310
  call void @llvm.dbg.value(metadata i64 %12, metadata !363, metadata !DIExpression()), !dbg !4298
  br label %13, !dbg !4311

13:                                               ; preds = %8, %6
  %14 = phi i64 [ %4, %6 ], [ %12, %8 ], !dbg !4298
  call void @llvm.dbg.value(metadata i64 %14, metadata !363, metadata !DIExpression()), !dbg !4298
  %15 = udiv i64 9223372036854775807, %2, !dbg !4312
  %16 = icmp ult i64 %15, %14, !dbg !4312
  br i1 %16, label %19, label %17, !dbg !4314

17:                                               ; preds = %13
  call void @llvm.dbg.value(metadata i64 %27, metadata !363, metadata !DIExpression()), !dbg !4298
  store i64 %14, i64* %1, align 8, !dbg !4315, !tbaa !1065
  %18 = mul i64 %14, %2, !dbg !4316
  call void @llvm.dbg.value(metadata i8* %0, metadata !4268, metadata !DIExpression()) #25, !dbg !4317
  call void @llvm.dbg.value(metadata i64 %28, metadata !4273, metadata !DIExpression()) #25, !dbg !4317
  br label %31, !dbg !4319

19:                                               ; preds = %13
  tail call void @xalloc_die() #27, !dbg !4320
  unreachable, !dbg !4320

20:                                               ; preds = %3
  %21 = udiv i64 6148914691236517204, %2, !dbg !4321
  %22 = icmp ugt i64 %21, %4, !dbg !4324
  br i1 %22, label %24, label %23, !dbg !4325

23:                                               ; preds = %20
  tail call void @xalloc_die() #27, !dbg !4326
  unreachable, !dbg !4326

24:                                               ; preds = %20
  %25 = lshr i64 %4, 1, !dbg !4327
  %26 = add nuw i64 %4, 1, !dbg !4328
  %27 = add i64 %26, %25, !dbg !4329
  call void @llvm.dbg.value(metadata i64 %27, metadata !363, metadata !DIExpression()), !dbg !4298
  store i64 %27, i64* %1, align 8, !dbg !4315, !tbaa !1065
  %28 = mul i64 %27, %2, !dbg !4316
  call void @llvm.dbg.value(metadata i8* %0, metadata !4268, metadata !DIExpression()) #25, !dbg !4317
  call void @llvm.dbg.value(metadata i64 %28, metadata !4273, metadata !DIExpression()) #25, !dbg !4317
  %29 = icmp eq i64 %28, 0, !dbg !4330
  br i1 %29, label %30, label %31, !dbg !4319

30:                                               ; preds = %24
  tail call void @free(i8* nonnull %0) #25, !dbg !4331
  br label %38, !dbg !4332

31:                                               ; preds = %17, %24
  %32 = phi i64 [ %18, %17 ], [ %28, %24 ]
  %33 = tail call i8* @realloc(i8* %0, i64 %32) #25, !dbg !4333
  call void @llvm.dbg.value(metadata i8* %33, metadata !4268, metadata !DIExpression()) #25, !dbg !4317
  %34 = icmp eq i8* %33, null, !dbg !4334
  %35 = icmp ne i64 %32, 0
  %36 = and i1 %35, %34, !dbg !4335
  br i1 %36, label %37, label %38, !dbg !4335

37:                                               ; preds = %31
  tail call void @xalloc_die() #27, !dbg !4336
  unreachable, !dbg !4336

38:                                               ; preds = %30, %31
  %39 = phi i8* [ null, %30 ], [ %33, %31 ], !dbg !4317
  ret i8* %39, !dbg !4337
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xcharalloc(i64 %0) local_unnamed_addr #23 !dbg !4338 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4340, metadata !DIExpression()), !dbg !4341
  call void @llvm.dbg.value(metadata i64 %0, metadata !4235, metadata !DIExpression()) #25, !dbg !4342
  %2 = tail call noalias i8* @malloc(i64 %0) #25, !dbg !4344
  call void @llvm.dbg.value(metadata i8* %2, metadata !4240, metadata !DIExpression()) #25, !dbg !4342
  %3 = icmp eq i8* %2, null, !dbg !4345
  %4 = icmp ne i64 %0, 0
  %5 = and i1 %4, %3, !dbg !4346
  br i1 %5, label %6, label %7, !dbg !4346

6:                                                ; preds = %1
  tail call void @xalloc_die() #27, !dbg !4347
  unreachable, !dbg !4347

7:                                                ; preds = %1
  ret i8* %2, !dbg !4348
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @x2realloc(i8* %0, i64* nocapture %1) local_unnamed_addr #8 !dbg !4349 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4353, metadata !DIExpression()), !dbg !4355
  call void @llvm.dbg.value(metadata i64* %1, metadata !4354, metadata !DIExpression()), !dbg !4355
  call void @llvm.dbg.value(metadata i8* %0, metadata !360, metadata !DIExpression()) #25, !dbg !4356
  call void @llvm.dbg.value(metadata i64* %1, metadata !361, metadata !DIExpression()) #25, !dbg !4356
  call void @llvm.dbg.value(metadata i64 1, metadata !362, metadata !DIExpression()) #25, !dbg !4356
  %3 = load i64, i64* %1, align 8, !dbg !4358, !tbaa !1065
  call void @llvm.dbg.value(metadata i64 %3, metadata !363, metadata !DIExpression()) #25, !dbg !4356
  %4 = icmp eq i8* %0, null, !dbg !4359
  br i1 %4, label %5, label %10, !dbg !4360

5:                                                ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !4361
  br i1 %6, label %17, label %7, !dbg !4362

7:                                                ; preds = %5
  call void @llvm.dbg.value(metadata i64 %3, metadata !363, metadata !DIExpression()) #25, !dbg !4356
  %8 = icmp slt i64 %3, 0, !dbg !4363
  br i1 %8, label %9, label %17, !dbg !4364

9:                                                ; preds = %7
  tail call void @xalloc_die() #27, !dbg !4365
  unreachable, !dbg !4365

10:                                               ; preds = %2
  %11 = icmp ult i64 %3, 6148914691236517204, !dbg !4366
  br i1 %11, label %13, label %12, !dbg !4367

12:                                               ; preds = %10
  tail call void @xalloc_die() #27, !dbg !4368
  unreachable, !dbg !4368

13:                                               ; preds = %10
  %14 = lshr i64 %3, 1, !dbg !4369
  %15 = add nuw nsw i64 %3, 1, !dbg !4370
  %16 = add nuw nsw i64 %15, %14, !dbg !4371
  call void @llvm.dbg.value(metadata i64 %16, metadata !363, metadata !DIExpression()) #25, !dbg !4356
  call void @llvm.dbg.value(metadata i8* %0, metadata !4268, metadata !DIExpression()) #25, !dbg !4372
  call void @llvm.dbg.value(metadata i64 %16, metadata !4273, metadata !DIExpression()) #25, !dbg !4372
  br label %17, !dbg !4374

17:                                               ; preds = %7, %5, %13
  %18 = phi i64 [ %16, %13 ], [ %3, %7 ], [ 128, %5 ], !dbg !4375
  store i64 %18, i64* %1, align 8, !dbg !4375, !tbaa !1065
  %19 = tail call i8* @realloc(i8* %0, i64 %18) #25, !dbg !4376
  call void @llvm.dbg.value(metadata i8* %19, metadata !4268, metadata !DIExpression()) #25, !dbg !4372
  %20 = icmp eq i8* %19, null, !dbg !4377
  br i1 %20, label %21, label %22, !dbg !4378

21:                                               ; preds = %17
  tail call void @xalloc_die() #27, !dbg !4379
  unreachable, !dbg !4379

22:                                               ; preds = %17
  ret i8* %19, !dbg !4380
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xzalloc(i64 %0) local_unnamed_addr #8 !dbg !4381 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4383, metadata !DIExpression()), !dbg !4384
  call void @llvm.dbg.value(metadata i64 %0, metadata !4385, metadata !DIExpression()) #25, !dbg !4390
  call void @llvm.dbg.value(metadata i64 1, metadata !4388, metadata !DIExpression()) #25, !dbg !4390
  %2 = icmp slt i64 %0, 0, !dbg !4392
  br i1 %2, label %6, label %3, !dbg !4394

3:                                                ; preds = %1
  %4 = tail call i8* @rpl_calloc(i64 %0, i64 1) #25, !dbg !4395
  call void @llvm.dbg.value(metadata i8* %4, metadata !4389, metadata !DIExpression()) #25, !dbg !4390
  %5 = icmp eq i8* %4, null, !dbg !4396
  br i1 %5, label %6, label %7, !dbg !4397

6:                                                ; preds = %3, %1
  tail call void @xalloc_die() #27, !dbg !4398
  unreachable, !dbg !4398

7:                                                ; preds = %3
  ret i8* %4, !dbg !4399
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xcalloc(i64 %0, i64 %1) local_unnamed_addr #8 !dbg !4386 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4385, metadata !DIExpression()), !dbg !4400
  call void @llvm.dbg.value(metadata i64 %1, metadata !4388, metadata !DIExpression()), !dbg !4400
  %3 = udiv i64 9223372036854775807, %1, !dbg !4401
  %4 = icmp ult i64 %3, %0, !dbg !4401
  br i1 %4, label %8, label %5, !dbg !4402

5:                                                ; preds = %2
  %6 = tail call i8* @rpl_calloc(i64 %0, i64 %1) #25, !dbg !4403
  call void @llvm.dbg.value(metadata i8* %6, metadata !4389, metadata !DIExpression()), !dbg !4400
  %7 = icmp eq i8* %6, null, !dbg !4404
  br i1 %7, label %8, label %9, !dbg !4405

8:                                                ; preds = %5, %2
  tail call void @xalloc_die() #27, !dbg !4406
  unreachable, !dbg !4406

9:                                                ; preds = %5
  ret i8* %6, !dbg !4407
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @xmemdup(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !4408 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4412, metadata !DIExpression()), !dbg !4414
  call void @llvm.dbg.value(metadata i64 %1, metadata !4413, metadata !DIExpression()), !dbg !4414
  call void @llvm.dbg.value(metadata i64 %1, metadata !4235, metadata !DIExpression()) #25, !dbg !4415
  %3 = tail call noalias i8* @malloc(i64 %1) #25, !dbg !4417
  call void @llvm.dbg.value(metadata i8* %3, metadata !4240, metadata !DIExpression()) #25, !dbg !4415
  %4 = icmp eq i8* %3, null, !dbg !4418
  %5 = icmp ne i64 %1, 0
  %6 = and i1 %5, %4, !dbg !4419
  br i1 %6, label %7, label %8, !dbg !4419

7:                                                ; preds = %2
  tail call void @xalloc_die() #27, !dbg !4420
  unreachable, !dbg !4420

8:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i8* %3, metadata !4421, metadata !DIExpression()) #25, !dbg !4426
  call void @llvm.dbg.value(metadata i8* %0, metadata !4424, metadata !DIExpression()) #25, !dbg !4426
  call void @llvm.dbg.value(metadata i64 %1, metadata !4425, metadata !DIExpression()) #25, !dbg !4426
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %3, i8* nonnull align 1 %0, i64 %1, i1 false) #25, !dbg !4428
  ret i8* %3, !dbg !4429
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xstrdup(i8* %0) local_unnamed_addr #8 !dbg !4430 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4432, metadata !DIExpression()), !dbg !4433
  %2 = tail call i64 @strlen(i8* nonnull dereferenceable(1) %0) #26, !dbg !4434
  %3 = add i64 %2, 1, !dbg !4435
  call void @llvm.dbg.value(metadata i8* %0, metadata !4412, metadata !DIExpression()) #25, !dbg !4436
  call void @llvm.dbg.value(metadata i64 %3, metadata !4413, metadata !DIExpression()) #25, !dbg !4436
  call void @llvm.dbg.value(metadata i64 %3, metadata !4235, metadata !DIExpression()) #25, !dbg !4438
  %4 = tail call noalias i8* @malloc(i64 %3) #25, !dbg !4440
  call void @llvm.dbg.value(metadata i8* %4, metadata !4240, metadata !DIExpression()) #25, !dbg !4438
  %5 = icmp eq i8* %4, null, !dbg !4441
  %6 = icmp ne i64 %3, 0
  %7 = and i1 %6, %5, !dbg !4442
  br i1 %7, label %8, label %9, !dbg !4442

8:                                                ; preds = %1
  tail call void @xalloc_die() #27, !dbg !4443
  unreachable, !dbg !4443

9:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i8* %4, metadata !4421, metadata !DIExpression()) #25, !dbg !4444
  call void @llvm.dbg.value(metadata i8* %0, metadata !4424, metadata !DIExpression()) #25, !dbg !4444
  call void @llvm.dbg.value(metadata i64 %3, metadata !4425, metadata !DIExpression()) #25, !dbg !4444
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %4, i8* nonnull align 1 %0, i64 %3, i1 false) #25, !dbg !4446
  ret i8* %4, !dbg !4447
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !4448 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !4449, !tbaa !1021
  %2 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.162, i64 0, i64 0), i32 5) #25, !dbg !4450
  tail call void (i32, i32, i8*, ...) @error(i32 %1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.163, i64 0, i64 0), i8* %2) #25, !dbg !4451
  tail call void @abort() #27, !dbg !4452
  unreachable, !dbg !4452
}

; Function Attrs: nofree nounwind sspstrong uwtable willreturn
define dso_local noalias i8* @rpl_calloc(i64 %0, i64 %1) local_unnamed_addr #24 !dbg !4453 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4455, metadata !DIExpression()), !dbg !4461
  call void @llvm.dbg.value(metadata i64 %1, metadata !4456, metadata !DIExpression()), !dbg !4461
  %3 = icmp eq i64 %0, 0, !dbg !4462
  %4 = icmp eq i64 %1, 0
  %5 = or i1 %3, %4, !dbg !4463
  br i1 %5, label %11, label %6, !dbg !4463

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i64 undef, metadata !4458, metadata !DIExpression()), !dbg !4464
  %7 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %1, i64 %0), !dbg !4465
  %8 = extractvalue { i64, i1 } %7, 1, !dbg !4465
  br i1 %8, label %9, label %11, !dbg !4467

9:                                                ; preds = %6
  %10 = tail call i32* @__errno_location() #29, !dbg !4468
  store i32 12, i32* %10, align 4, !dbg !4470, !tbaa !1021
  br label %15

11:                                               ; preds = %6, %2
  %12 = phi i64 [ 1, %2 ], [ %1, %6 ]
  %13 = phi i64 [ 1, %2 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i64 %13, metadata !4455, metadata !DIExpression()), !dbg !4461
  call void @llvm.dbg.value(metadata i64 %12, metadata !4456, metadata !DIExpression()), !dbg !4461
  %14 = tail call noalias i8* @calloc(i64 %13, i64 %12) #25, !dbg !4471
  call void @llvm.dbg.value(metadata i8* %14, metadata !4457, metadata !DIExpression()), !dbg !4461
  br label %15, !dbg !4472

15:                                               ; preds = %9, %11
  %16 = phi i8* [ %14, %11 ], [ null, %9 ], !dbg !4461
  ret i8* %16, !dbg !4473
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: inaccessiblememonly nofree nounwind willreturn
declare noalias noundef i8* @calloc(i64, i64) local_unnamed_addr #14

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fclose(%struct._IO_FILE* nonnull %0) local_unnamed_addr #8 !dbg !4474 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4512, metadata !DIExpression()), !dbg !4516
  call void @llvm.dbg.value(metadata i32 0, metadata !4513, metadata !DIExpression()), !dbg !4516
  call void @llvm.dbg.value(metadata i32 0, metadata !4515, metadata !DIExpression()), !dbg !4516
  %2 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #25, !dbg !4517
  call void @llvm.dbg.value(metadata i32 %2, metadata !4514, metadata !DIExpression()), !dbg !4516
  %3 = icmp slt i32 %2, 0, !dbg !4518
  br i1 %3, label %4, label %6, !dbg !4520

4:                                                ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4521
  br label %24, !dbg !4522

6:                                                ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #25, !dbg !4523
  %8 = icmp eq i32 %7, 0, !dbg !4523
  br i1 %8, label %13, label %9, !dbg !4525

9:                                                ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #25, !dbg !4526
  %11 = tail call i64 @lseek(i32 %10, i64 0, i32 1) #25, !dbg !4527
  %12 = icmp eq i64 %11, -1, !dbg !4528
  br i1 %12, label %16, label %13, !dbg !4529

13:                                               ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* nonnull %0) #25, !dbg !4530
  %15 = icmp eq i32 %14, 0, !dbg !4530
  br i1 %15, label %16, label %18, !dbg !4531

16:                                               ; preds = %13, %9
  call void @llvm.dbg.value(metadata i32 %20, metadata !4513, metadata !DIExpression()), !dbg !4516
  %17 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4532
  call void @llvm.dbg.value(metadata i32 %21, metadata !4515, metadata !DIExpression()), !dbg !4516
  br label %24, !dbg !4533

18:                                               ; preds = %13
  %19 = tail call i32* @__errno_location() #29, !dbg !4534
  %20 = load i32, i32* %19, align 4, !dbg !4534, !tbaa !1021
  call void @llvm.dbg.value(metadata i32 %20, metadata !4513, metadata !DIExpression()), !dbg !4516
  %21 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4532
  call void @llvm.dbg.value(metadata i32 %21, metadata !4515, metadata !DIExpression()), !dbg !4516
  %22 = icmp eq i32 %20, 0, !dbg !4535
  br i1 %22, label %24, label %23, !dbg !4533

23:                                               ; preds = %18
  store i32 %20, i32* %19, align 4, !dbg !4537, !tbaa !1021
  call void @llvm.dbg.value(metadata i32 -1, metadata !4515, metadata !DIExpression()), !dbg !4516
  br label %24, !dbg !4539

24:                                               ; preds = %16, %18, %23, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !4516
  ret i32 %25, !dbg !4540
}

; Function Attrs: nofree nounwind
declare !dbg !4541 noundef i32 @fclose(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @__freading(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !4544 i64 @lseek(i32, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fcntl(i32 %0, i32 %1, ...) local_unnamed_addr #8 !dbg !4547 {
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !4551, metadata !DIExpression()), !dbg !4575
  call void @llvm.dbg.value(metadata i32 %1, metadata !4552, metadata !DIExpression()), !dbg !4575
  %4 = bitcast [1 x %struct.__va_list_tag]* %3 to i8*, !dbg !4576
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %4) #25, !dbg !4576
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %3, metadata !4553, metadata !DIExpression()), !dbg !4577
  call void @llvm.dbg.value(metadata i32 -1, metadata !4563, metadata !DIExpression()), !dbg !4575
  call void @llvm.va_start(i8* nonnull %4), !dbg !4578
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
  ], !dbg !4579

5:                                                ; preds = %2
  %6 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 0, !dbg !4580
  %7 = load i32, i32* %6, align 16, !dbg !4580
  %8 = icmp ult i32 %7, 41, !dbg !4580
  br i1 %8, label %9, label %15, !dbg !4580

9:                                                ; preds = %5
  %10 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 3, !dbg !4580
  %11 = load i8*, i8** %10, align 16, !dbg !4580
  %12 = zext i32 %7 to i64, !dbg !4580
  %13 = getelementptr i8, i8* %11, i64 %12, !dbg !4580
  %14 = add nuw nsw i32 %7, 8, !dbg !4580
  store i32 %14, i32* %6, align 16, !dbg !4580
  br label %19, !dbg !4580

15:                                               ; preds = %5
  %16 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 2, !dbg !4580
  %17 = load i8*, i8** %16, align 8, !dbg !4580
  %18 = getelementptr i8, i8* %17, i64 8, !dbg !4580
  store i8* %18, i8** %16, align 8, !dbg !4580
  br label %19, !dbg !4580

19:                                               ; preds = %15, %9
  %20 = phi i8* [ %13, %9 ], [ %17, %15 ]
  %21 = bitcast i8* %20 to i32*, !dbg !4580
  %22 = load i32, i32* %21, align 4, !dbg !4580
  call void @llvm.dbg.value(metadata i32 %22, metadata !4564, metadata !DIExpression()), !dbg !4581
  call void @llvm.dbg.value(metadata i32 %0, metadata !4582, metadata !DIExpression()) #25, !dbg !4587
  call void @llvm.dbg.value(metadata i32 %22, metadata !4585, metadata !DIExpression()) #25, !dbg !4587
  %23 = call i32 (i32, i32, ...) @fcntl(i32 %0, i32 0, i32 %22) #25, !dbg !4589
  call void @llvm.dbg.value(metadata i32 %23, metadata !4586, metadata !DIExpression()) #25, !dbg !4587
  call void @llvm.dbg.value(metadata i32 %23, metadata !4563, metadata !DIExpression()), !dbg !4575
  br label %116

24:                                               ; preds = %2
  %25 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 0, !dbg !4590
  %26 = load i32, i32* %25, align 16, !dbg !4590
  %27 = icmp ult i32 %26, 41, !dbg !4590
  br i1 %27, label %28, label %34, !dbg !4590

28:                                               ; preds = %24
  %29 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 3, !dbg !4590
  %30 = load i8*, i8** %29, align 16, !dbg !4590
  %31 = zext i32 %26 to i64, !dbg !4590
  %32 = getelementptr i8, i8* %30, i64 %31, !dbg !4590
  %33 = add nuw nsw i32 %26, 8, !dbg !4590
  store i32 %33, i32* %25, align 16, !dbg !4590
  br label %38, !dbg !4590

34:                                               ; preds = %24
  %35 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 2, !dbg !4590
  %36 = load i8*, i8** %35, align 8, !dbg !4590
  %37 = getelementptr i8, i8* %36, i64 8, !dbg !4590
  store i8* %37, i8** %35, align 8, !dbg !4590
  br label %38, !dbg !4590

38:                                               ; preds = %34, %28
  %39 = phi i8* [ %32, %28 ], [ %36, %34 ]
  %40 = bitcast i8* %39 to i32*, !dbg !4590
  %41 = load i32, i32* %40, align 4, !dbg !4590
  call void @llvm.dbg.value(metadata i32 %41, metadata !4567, metadata !DIExpression()), !dbg !4591
  call void @llvm.dbg.value(metadata i32 %0, metadata !327, metadata !DIExpression()) #25, !dbg !4592
  call void @llvm.dbg.value(metadata i32 %41, metadata !328, metadata !DIExpression()) #25, !dbg !4592
  %42 = load i32, i32* @rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec, align 4, !dbg !4594, !tbaa !1021
  %43 = icmp sgt i32 %42, -1, !dbg !4596
  br i1 %43, label %44, label %56, !dbg !4597

44:                                               ; preds = %38
  %45 = call i32 (i32, i32, ...) @fcntl(i32 %0, i32 1030, i32 %41) #25, !dbg !4598
  call void @llvm.dbg.value(metadata i32 %45, metadata !329, metadata !DIExpression()) #25, !dbg !4592
  %46 = icmp sgt i32 %45, -1, !dbg !4600
  br i1 %46, label %51, label %47, !dbg !4602

47:                                               ; preds = %44
  %48 = tail call i32* @__errno_location() #29, !dbg !4603
  %49 = load i32, i32* %48, align 4, !dbg !4603, !tbaa !1021
  %50 = icmp eq i32 %49, 22, !dbg !4604
  br i1 %50, label %52, label %51, !dbg !4605

51:                                               ; preds = %47, %44
  store i32 1, i32* @rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec, align 4, !dbg !4606, !tbaa !1021
  call void @llvm.dbg.value(metadata i32 %62, metadata !329, metadata !DIExpression()) #25, !dbg !4592
  br label %116, !dbg !4608

52:                                               ; preds = %47
  call void @llvm.dbg.value(metadata i32 %0, metadata !4582, metadata !DIExpression()) #25, !dbg !4609
  call void @llvm.dbg.value(metadata i32 %41, metadata !4585, metadata !DIExpression()) #25, !dbg !4609
  %53 = call i32 (i32, i32, ...) @fcntl(i32 %0, i32 0, i32 %41) #25, !dbg !4612
  call void @llvm.dbg.value(metadata i32 %53, metadata !4586, metadata !DIExpression()) #25, !dbg !4609
  call void @llvm.dbg.value(metadata i32 %53, metadata !329, metadata !DIExpression()) #25, !dbg !4592
  %54 = icmp sgt i32 %53, -1, !dbg !4613
  br i1 %54, label %55, label %116, !dbg !4615

55:                                               ; preds = %52
  store i32 -1, i32* @rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec, align 4, !dbg !4616, !tbaa !1021
  br label %60, !dbg !4617

56:                                               ; preds = %38
  call void @llvm.dbg.value(metadata i32 %0, metadata !4582, metadata !DIExpression()) #25, !dbg !4618
  call void @llvm.dbg.value(metadata i32 %41, metadata !4585, metadata !DIExpression()) #25, !dbg !4618
  %57 = call i32 (i32, i32, ...) @fcntl(i32 %0, i32 0, i32 %41) #25, !dbg !4620
  call void @llvm.dbg.value(metadata i32 %57, metadata !4586, metadata !DIExpression()) #25, !dbg !4618
  call void @llvm.dbg.value(metadata i32 %57, metadata !329, metadata !DIExpression()) #25, !dbg !4592
  %58 = load i32, i32* @rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec, align 4
  %59 = icmp eq i32 %58, -1
  br label %60

60:                                               ; preds = %56, %55
  %61 = phi i1 [ true, %55 ], [ %59, %56 ]
  %62 = phi i32 [ %53, %55 ], [ %57, %56 ], !dbg !4621
  call void @llvm.dbg.value(metadata i32 %62, metadata !329, metadata !DIExpression()) #25, !dbg !4592
  %63 = icmp sgt i32 %62, -1, !dbg !4622
  %64 = and i1 %61, %63, !dbg !4608
  br i1 %64, label %65, label %116, !dbg !4608

65:                                               ; preds = %60
  %66 = call i32 (i32, i32, ...) @fcntl(i32 %62, i32 1) #25, !dbg !4623
  call void @llvm.dbg.value(metadata i32 %66, metadata !330, metadata !DIExpression()) #25, !dbg !4624
  %67 = icmp slt i32 %66, 0, !dbg !4625
  br i1 %67, label %72, label %68, !dbg !4626

68:                                               ; preds = %65
  %69 = or i32 %66, 1, !dbg !4627
  %70 = call i32 (i32, i32, ...) @fcntl(i32 %62, i32 2, i32 %69) #25, !dbg !4628
  %71 = icmp eq i32 %70, -1, !dbg !4629
  br i1 %71, label %72, label %116, !dbg !4630

72:                                               ; preds = %68, %65
  %73 = tail call i32* @__errno_location() #29, !dbg !4631
  %74 = load i32, i32* %73, align 4, !dbg !4631, !tbaa !1021
  call void @llvm.dbg.value(metadata i32 %74, metadata !333, metadata !DIExpression()) #25, !dbg !4632
  %75 = call i32 @close(i32 %62) #25, !dbg !4633
  store i32 %74, i32* %73, align 4, !dbg !4634, !tbaa !1021
  call void @llvm.dbg.value(metadata i32 -1, metadata !329, metadata !DIExpression()) #25, !dbg !4592
  br label %116, !dbg !4635

76:                                               ; preds = %2, %2, %2, %2, %2, %2, %2
  %77 = call i32 (i32, i32, ...) @fcntl(i32 %0, i32 %1) #25, !dbg !4636
  call void @llvm.dbg.value(metadata i32 %77, metadata !4563, metadata !DIExpression()), !dbg !4575
  br label %116, !dbg !4637

78:                                               ; preds = %2, %2, %2, %2, %2, %2, %2, %2
  %79 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 0, !dbg !4638
  %80 = load i32, i32* %79, align 16, !dbg !4638
  %81 = icmp ult i32 %80, 41, !dbg !4638
  br i1 %81, label %82, label %88, !dbg !4638

82:                                               ; preds = %78
  %83 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 3, !dbg !4638
  %84 = load i8*, i8** %83, align 16, !dbg !4638
  %85 = zext i32 %80 to i64, !dbg !4638
  %86 = getelementptr i8, i8* %84, i64 %85, !dbg !4638
  %87 = add nuw nsw i32 %80, 8, !dbg !4638
  store i32 %87, i32* %79, align 16, !dbg !4638
  br label %92, !dbg !4638

88:                                               ; preds = %78
  %89 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 2, !dbg !4638
  %90 = load i8*, i8** %89, align 8, !dbg !4638
  %91 = getelementptr i8, i8* %90, i64 8, !dbg !4638
  store i8* %91, i8** %89, align 8, !dbg !4638
  br label %92, !dbg !4638

92:                                               ; preds = %88, %82
  %93 = phi i8* [ %86, %82 ], [ %90, %88 ]
  %94 = bitcast i8* %93 to i32*, !dbg !4638
  %95 = load i32, i32* %94, align 4, !dbg !4638
  call void @llvm.dbg.value(metadata i32 %95, metadata !4569, metadata !DIExpression()), !dbg !4639
  %96 = call i32 (i32, i32, ...) @fcntl(i32 %0, i32 %1, i32 %95) #25, !dbg !4640
  call void @llvm.dbg.value(metadata i32 %96, metadata !4563, metadata !DIExpression()), !dbg !4575
  br label %116, !dbg !4641

97:                                               ; preds = %2
  %98 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 0, !dbg !4642
  %99 = load i32, i32* %98, align 16, !dbg !4642
  %100 = icmp ult i32 %99, 41, !dbg !4642
  br i1 %100, label %101, label %107, !dbg !4642

101:                                              ; preds = %97
  %102 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 3, !dbg !4642
  %103 = load i8*, i8** %102, align 16, !dbg !4642
  %104 = zext i32 %99 to i64, !dbg !4642
  %105 = getelementptr i8, i8* %103, i64 %104, !dbg !4642
  %106 = add nuw nsw i32 %99, 8, !dbg !4642
  store i32 %106, i32* %98, align 16, !dbg !4642
  br label %111, !dbg !4642

107:                                              ; preds = %97
  %108 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 2, !dbg !4642
  %109 = load i8*, i8** %108, align 8, !dbg !4642
  %110 = getelementptr i8, i8* %109, i64 8, !dbg !4642
  store i8* %110, i8** %108, align 8, !dbg !4642
  br label %111, !dbg !4642

111:                                              ; preds = %107, %101
  %112 = phi i8* [ %105, %101 ], [ %109, %107 ]
  %113 = bitcast i8* %112 to i8**, !dbg !4642
  %114 = load i8*, i8** %113, align 8, !dbg !4642
  call void @llvm.dbg.value(metadata i8* %114, metadata !4573, metadata !DIExpression()), !dbg !4643
  %115 = call i32 (i32, i32, ...) @fcntl(i32 %0, i32 %1, i8* %114) #25, !dbg !4644
  call void @llvm.dbg.value(metadata i32 %115, metadata !4563, metadata !DIExpression()), !dbg !4575
  br label %116, !dbg !4645

116:                                              ; preds = %72, %68, %60, %52, %51, %76, %92, %111, %19
  %117 = phi i32 [ %115, %111 ], [ %96, %92 ], [ %77, %76 ], [ %23, %19 ], [ %62, %60 ], [ -1, %72 ], [ %62, %68 ], [ %53, %52 ], [ %45, %51 ], !dbg !4646
  call void @llvm.dbg.value(metadata i32 %117, metadata !4563, metadata !DIExpression()), !dbg !4575
  call void @llvm.va_end(i8* nonnull %4), !dbg !4647
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %4) #25, !dbg !4648
  ret i32 %117, !dbg !4649
}

declare !dbg !4650 i32 @fcntl(i32, i32, ...) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fflush(%struct._IO_FILE* %0) local_unnamed_addr #8 !dbg !4651 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4689, metadata !DIExpression()), !dbg !4690
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !4691
  br i1 %2, label %6, label %3, !dbg !4693

3:                                                ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #25, !dbg !4694
  %5 = icmp eq i32 %4, 0, !dbg !4694
  br i1 %5, label %6, label %8, !dbg !4695

6:                                                ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* %0), !dbg !4696
  br label %17, !dbg !4697

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4698, metadata !DIExpression()) #25, !dbg !4703
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4705
  %10 = load i32, i32* %9, align 8, !dbg !4705, !tbaa !1427
  %11 = and i32 %10, 256, !dbg !4707
  %12 = icmp eq i32 %11, 0, !dbg !4707
  br i1 %12, label %15, label %13, !dbg !4708

13:                                               ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* nonnull %0, i64 0, i32 1) #25, !dbg !4709
  br label %15, !dbg !4709

15:                                               ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* nonnull %0), !dbg !4710
  br label %17, !dbg !4711

17:                                               ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ], !dbg !4690
  ret i32 %18, !dbg !4712
}

; Function Attrs: nofree nounwind
declare !dbg !4713 noundef i32 @fflush(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fseeko(%struct._IO_FILE* nocapture nonnull %0, i64 %1, i32 %2) local_unnamed_addr #8 !dbg !4716 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4754, metadata !DIExpression()), !dbg !4760
  call void @llvm.dbg.value(metadata i64 %1, metadata !4755, metadata !DIExpression()), !dbg !4760
  call void @llvm.dbg.value(metadata i32 %2, metadata !4756, metadata !DIExpression()), !dbg !4760
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !4761
  %5 = load i8*, i8** %4, align 8, !dbg !4761, !tbaa !4762
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !4763
  %7 = load i8*, i8** %6, align 8, !dbg !4763, !tbaa !4764
  %8 = icmp eq i8* %5, %7, !dbg !4765
  br i1 %8, label %9, label %28, !dbg !4766

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !4767
  %11 = load i8*, i8** %10, align 8, !dbg !4767, !tbaa !1359
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !4768
  %13 = load i8*, i8** %12, align 8, !dbg !4768, !tbaa !4769
  %14 = icmp eq i8* %11, %13, !dbg !4770
  br i1 %14, label %15, label %28, !dbg !4771

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !4772
  %17 = load i8*, i8** %16, align 8, !dbg !4772, !tbaa !4773
  %18 = icmp eq i8* %17, null, !dbg !4774
  br i1 %18, label %19, label %28, !dbg !4775

19:                                               ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #25, !dbg !4776
  %21 = tail call i64 @lseek(i32 %20, i64 %1, i32 %2) #25, !dbg !4777
  call void @llvm.dbg.value(metadata i64 %21, metadata !4757, metadata !DIExpression()), !dbg !4778
  %22 = icmp eq i64 %21, -1, !dbg !4779
  br i1 %22, label %30, label %23, !dbg !4781

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4782
  %25 = load i32, i32* %24, align 8, !dbg !4783, !tbaa !1427
  %26 = and i32 %25, -17, !dbg !4783
  store i32 %26, i32* %24, align 8, !dbg !4783, !tbaa !1427
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !4784
  store i64 %21, i64* %27, align 8, !dbg !4785, !tbaa !4786
  br label %30, !dbg !4787

28:                                               ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* nonnull %0, i64 %1, i32 %2), !dbg !4788
  br label %30, !dbg !4789

30:                                               ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ], !dbg !4760
  ret i32 %31, !dbg !4790
}

; Function Attrs: nofree nounwind
declare !dbg !4791 noundef i32 @fseeko(%struct._IO_FILE* nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rpl_mbrtowc(i32* %0, i8* %1, i64 %2, %struct.__mbstate_t* %3) local_unnamed_addr #8 !dbg !4794 {
  %5 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32* %0, metadata !4810, metadata !DIExpression()), !dbg !4819
  call void @llvm.dbg.value(metadata i8* %1, metadata !4811, metadata !DIExpression()), !dbg !4819
  call void @llvm.dbg.value(metadata i64 %2, metadata !4812, metadata !DIExpression()), !dbg !4819
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %3, metadata !4813, metadata !DIExpression()), !dbg !4819
  %6 = bitcast i32* %5 to i8*, !dbg !4820
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #25, !dbg !4820
  %7 = icmp eq i32* %0, null, !dbg !4821
  %8 = select i1 %7, i32* %5, i32* %0, !dbg !4823
  call void @llvm.dbg.value(metadata i32* %8, metadata !4810, metadata !DIExpression()), !dbg !4819
  %9 = call i64 @mbrtowc(i32* %8, i8* %1, i64 %2, %struct.__mbstate_t* %3) #25, !dbg !4824
  call void @llvm.dbg.value(metadata i64 %9, metadata !4814, metadata !DIExpression()), !dbg !4819
  %10 = icmp ugt i64 %9, -3, !dbg !4825
  %11 = icmp ne i64 %2, 0
  %12 = and i1 %11, %10, !dbg !4826
  br i1 %12, label %13, label %18, !dbg !4826

13:                                               ; preds = %4
  %14 = call zeroext i1 @hard_locale(i32 0) #25, !dbg !4827
  br i1 %14, label %18, label %15, !dbg !4828

15:                                               ; preds = %13
  %16 = load i8, i8* %1, align 1, !dbg !4829, !tbaa !1096
  call void @llvm.dbg.value(metadata i8 %16, metadata !4816, metadata !DIExpression()), !dbg !4830
  %17 = zext i8 %16 to i32, !dbg !4831
  store i32 %17, i32* %8, align 4, !dbg !4832, !tbaa !1021
  br label %18

18:                                               ; preds = %4, %13, %15
  %19 = phi i64 [ 1, %15 ], [ %9, %13 ], [ %9, %4 ], !dbg !4819
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #25, !dbg !4833
  ret i64 %19, !dbg !4833
}

; Function Attrs: nounwind
declare !dbg !4834 i64 @mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @close_stream(%struct._IO_FILE* %0) local_unnamed_addr #8 !dbg !4838 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4876, metadata !DIExpression()), !dbg !4881
  %2 = tail call i64 @__fpending(%struct._IO_FILE* %0) #25, !dbg !4882
  call void @llvm.dbg.value(metadata i1 undef, metadata !4877, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4881
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4883, metadata !DIExpression()), !dbg !4886
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4888
  %4 = load i32, i32* %3, align 8, !dbg !4888, !tbaa !1427
  %5 = and i32 %4, 32, !dbg !4889
  %6 = icmp eq i32 %5, 0, !dbg !4889
  call void @llvm.dbg.value(metadata i1 %6, metadata !4879, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4881
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* %0) #25, !dbg !4890
  %8 = icmp eq i32 %7, 0, !dbg !4891
  call void @llvm.dbg.value(metadata i1 %8, metadata !4880, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4881
  br i1 %6, label %9, label %19, !dbg !4892

9:                                                ; preds = %1
  %10 = icmp ne i64 %2, 0, !dbg !4894
  call void @llvm.dbg.value(metadata i1 %10, metadata !4877, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4881
  %11 = or i1 %10, %8, !dbg !4895
  %12 = xor i1 %8, true, !dbg !4895
  %13 = sext i1 %12 to i32, !dbg !4895
  br i1 %11, label %22, label %14, !dbg !4895

14:                                               ; preds = %9
  %15 = tail call i32* @__errno_location() #29, !dbg !4896
  %16 = load i32, i32* %15, align 4, !dbg !4896, !tbaa !1021
  %17 = icmp ne i32 %16, 9, !dbg !4897
  %18 = sext i1 %17 to i32, !dbg !4898
  br label %22, !dbg !4898

19:                                               ; preds = %1
  br i1 %8, label %20, label %22, !dbg !4899

20:                                               ; preds = %19
  %21 = tail call i32* @__errno_location() #29, !dbg !4901
  store i32 0, i32* %21, align 4, !dbg !4903, !tbaa !1021
  br label %22, !dbg !4901

22:                                               ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ], !dbg !4881
  ret i32 %23, !dbg !4904
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local zeroext i1 @hard_locale(i32 %0) local_unnamed_addr #8 !dbg !4905 {
  %2 = alloca [257 x i8], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !4909, metadata !DIExpression()), !dbg !4914
  %3 = getelementptr inbounds [257 x i8], [257 x i8]* %2, i64 0, i64 0, !dbg !4915
  call void @llvm.lifetime.start.p0i8(i64 257, i8* nonnull %3) #25, !dbg !4915
  call void @llvm.dbg.declare(metadata [257 x i8]* %2, metadata !4910, metadata !DIExpression()), !dbg !4916
  %4 = call i32 @setlocale_null_r(i32 %0, i8* nonnull %3, i64 257) #25, !dbg !4917
  %5 = icmp eq i32 %4, 0, !dbg !4917
  br i1 %5, label %6, label %13, !dbg !4919

6:                                                ; preds = %1
  %7 = bitcast [257 x i8]* %2 to i16*, !dbg !4920
  %8 = load i16, i16* %7, align 16, !dbg !4920
  %9 = icmp eq i16 %8, 67, !dbg !4920
  br i1 %9, label %13, label %10, !dbg !4921

10:                                               ; preds = %6
  %11 = call i32 @bcmp(i8* nonnull dereferenceable(6) %3, i8* nonnull dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.180, i64 0, i64 0), i64 6), !dbg !4922
  %12 = icmp ne i32 %11, 0, !dbg !4923
  br label %13, !dbg !4921

13:                                               ; preds = %6, %10, %1
  %14 = phi i1 [ false, %1 ], [ false, %6 ], [ %12, %10 ], !dbg !4914
  call void @llvm.lifetime.end.p0i8(i64 257, i8* nonnull %3) #25, !dbg !4924
  ret i1 %14, !dbg !4924
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @locale_charset() local_unnamed_addr #8 !dbg !4925 {
  %1 = tail call i8* @nl_langinfo(i32 14) #25, !dbg !4930
  call void @llvm.dbg.value(metadata i8* %1, metadata !4929, metadata !DIExpression()), !dbg !4931
  %2 = icmp eq i8* %1, null, !dbg !4932
  %3 = select i1 %2, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.183, i64 0, i64 0), i8* %1, !dbg !4934
  call void @llvm.dbg.value(metadata i8* %3, metadata !4929, metadata !DIExpression()), !dbg !4931
  %4 = load i8, i8* %3, align 1, !dbg !4935, !tbaa !1096
  %5 = icmp eq i8 %4, 0, !dbg !4939
  %6 = select i1 %5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.184, i64 0, i64 0), i8* %3, !dbg !4940
  call void @llvm.dbg.value(metadata i8* %6, metadata !4929, metadata !DIExpression()), !dbg !4931
  ret i8* %6, !dbg !4941
}

; Function Attrs: nounwind
declare !dbg !4942 i8* @nl_langinfo(i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @setlocale_null_r(i32 %0, i8* nonnull %1, i64 %2) local_unnamed_addr #8 !dbg !4945 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4949, metadata !DIExpression()), !dbg !4952
  call void @llvm.dbg.value(metadata i8* %1, metadata !4950, metadata !DIExpression()), !dbg !4952
  call void @llvm.dbg.value(metadata i64 %2, metadata !4951, metadata !DIExpression()), !dbg !4952
  call void @llvm.dbg.value(metadata i32 %0, metadata !4953, metadata !DIExpression()) #25, !dbg !4962
  call void @llvm.dbg.value(metadata i8* %1, metadata !4956, metadata !DIExpression()) #25, !dbg !4962
  call void @llvm.dbg.value(metadata i64 %2, metadata !4957, metadata !DIExpression()) #25, !dbg !4962
  call void @llvm.dbg.value(metadata i32 %0, metadata !4964, metadata !DIExpression()) #25, !dbg !4970
  %4 = tail call i8* @setlocale(i32 %0, i8* null) #25, !dbg !4972
  call void @llvm.dbg.value(metadata i8* %4, metadata !4969, metadata !DIExpression()) #25, !dbg !4970
  call void @llvm.dbg.value(metadata i8* %4, metadata !4958, metadata !DIExpression()) #25, !dbg !4962
  %5 = icmp eq i8* %4, null, !dbg !4973
  br i1 %5, label %6, label %9, !dbg !4974

6:                                                ; preds = %3
  %7 = icmp eq i64 %2, 0, !dbg !4975
  br i1 %7, label %19, label %8, !dbg !4978

8:                                                ; preds = %6
  store i8 0, i8* %1, align 1, !dbg !4979, !tbaa !1096
  br label %19, !dbg !4980

9:                                                ; preds = %3
  %10 = tail call i64 @strlen(i8* nonnull %4) #26, !dbg !4981
  call void @llvm.dbg.value(metadata i64 %10, metadata !4959, metadata !DIExpression()) #25, !dbg !4982
  %11 = icmp ult i64 %10, %2, !dbg !4983
  br i1 %11, label %12, label %14, !dbg !4985

12:                                               ; preds = %9
  %13 = add nuw i64 %10, 1, !dbg !4986
  call void @llvm.dbg.value(metadata i8* %1, metadata !4988, metadata !DIExpression()) #25, !dbg !4993
  call void @llvm.dbg.value(metadata i8* %4, metadata !4991, metadata !DIExpression()) #25, !dbg !4993
  call void @llvm.dbg.value(metadata i64 %13, metadata !4992, metadata !DIExpression()) #25, !dbg !4993
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %1, i8* nonnull align 1 %4, i64 %13, i1 false) #25, !dbg !4995
  br label %19, !dbg !4996

14:                                               ; preds = %9
  %15 = icmp eq i64 %2, 0, !dbg !4997
  br i1 %15, label %19, label %16, !dbg !5000

16:                                               ; preds = %14
  %17 = add i64 %2, -1, !dbg !5001
  call void @llvm.dbg.value(metadata i8* %1, metadata !4988, metadata !DIExpression()) #25, !dbg !5003
  call void @llvm.dbg.value(metadata i8* %4, metadata !4991, metadata !DIExpression()) #25, !dbg !5003
  call void @llvm.dbg.value(metadata i64 %17, metadata !4992, metadata !DIExpression()) #25, !dbg !5003
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %1, i8* nonnull align 1 %4, i64 %17, i1 false) #25, !dbg !5005
  %18 = getelementptr inbounds i8, i8* %1, i64 %17, !dbg !5006
  store i8 0, i8* %18, align 1, !dbg !5007, !tbaa !1096
  br label %19, !dbg !5008

19:                                               ; preds = %6, %8, %12, %14, %16
  %20 = phi i32 [ 22, %8 ], [ 22, %6 ], [ 0, %12 ], [ 34, %16 ], [ 34, %14 ], !dbg !5009
  ret i32 %20, !dbg !5010
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @setlocale_null(i32 %0) local_unnamed_addr #8 !dbg !5011 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5013, metadata !DIExpression()), !dbg !5014
  call void @llvm.dbg.value(metadata i32 %0, metadata !4964, metadata !DIExpression()) #25, !dbg !5015
  %2 = tail call i8* @setlocale(i32 %0, i8* null) #25, !dbg !5017
  call void @llvm.dbg.value(metadata i8* %2, metadata !4969, metadata !DIExpression()) #25, !dbg !5015
  ret i8* %2, !dbg !5018
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
attributes #11 = { nofree norecurse nounwind sspstrong uwtable willreturn writeonly "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #12 = { noreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #13 = { nofree nounwind sspstrong uwtable "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #14 = { inaccessiblememonly nofree nounwind willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #15 = { nofree nounwind }
attributes #16 = { norecurse nounwind readonly sspstrong uwtable willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #17 = { nofree norecurse nounwind sspstrong uwtable willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #18 = { argmemonly nofree nounwind readonly willreturn }
attributes #19 = { nounwind readonly willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #20 = { argmemonly nofree nosync nounwind willreturn writeonly }
attributes #21 = { inaccessiblememonly nofree nosync nounwind willreturn }
attributes #22 = { nofree nosync nounwind willreturn }
attributes #23 = { inlinehint nounwind sspstrong uwtable "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #24 = { nofree nounwind sspstrong uwtable willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #25 = { nounwind }
attributes #26 = { nounwind readonly willreturn }
attributes #27 = { noreturn nounwind }
attributes #28 = { noreturn }
attributes #29 = { nounwind readnone willreturn }
attributes #30 = { cold }

!llvm.dbg.cu = !{!2, !221, !227, !234, !248, !336, !339, !254, !260, !341, !343, !312, !350, !367, !369, !371, !324, !373, !375, !377, !380, !382, !384, !773}
!llvm.ident = !{!775, !775, !775, !775, !775, !775, !775, !775, !775, !775, !775, !775, !775, !775, !775, !775, !775, !775, !775, !775, !775, !775, !775, !775}
!llvm.module.flags = !{!776, !777, !778, !779, !780}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "long_options", scope: !2, file: !3, line: 202, type: !198, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !58, globals: !68, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "src/md5sum.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!4 = !{!5, !20, !35, !49}
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
!36 = !DIFile(filename: "src/system.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
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
!50 = !DIFile(filename: "./lib/fadvise.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!51 = !{!52, !53, !54, !55, !56, !57}
!52 = !DIEnumerator(name: "FADVISE_NORMAL", value: 0, isUnsigned: true)
!53 = !DIEnumerator(name: "FADVISE_SEQUENTIAL", value: 2, isUnsigned: true)
!54 = !DIEnumerator(name: "FADVISE_NOREUSE", value: 5, isUnsigned: true)
!55 = !DIEnumerator(name: "FADVISE_DONTNEED", value: 4, isUnsigned: true)
!56 = !DIEnumerator(name: "FADVISE_WILLNEED", value: 3, isUnsigned: true)
!57 = !DIEnumerator(name: "FADVISE_RANDOM", value: 1, isUnsigned: true)
!58 = !{!59, !61, !62, !64, !65, !67, !66}
!59 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !60, size: 64)
!60 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!61 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!62 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !63, line: 46, baseType: !40)
!63 = !DIFile(filename: "/usr/lib/clang/12.0.1/include/stddef.h", directory: "")
!64 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!65 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !66, size: 64)
!66 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!67 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!68 = !{!69, !72, !74, !0, !76, !78, !80, !82, !84, !86, !88, !196}
!69 = !DIGlobalVariableExpression(var: !70, expr: !DIExpression())
!70 = distinct !DIGlobalVariable(name: "have_read_stdin", scope: !2, file: !3, line: 131, type: !71, isLocal: true, isDefinition: true)
!71 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!72 = !DIGlobalVariableExpression(var: !73, expr: !DIExpression())
!73 = distinct !DIGlobalVariable(name: "min_digest_line_length", scope: !2, file: !3, line: 134, type: !62, isLocal: true, isDefinition: true)
!74 = !DIGlobalVariableExpression(var: !75, expr: !DIExpression())
!75 = distinct !DIGlobalVariable(name: "digest_hex_bytes", scope: !2, file: !3, line: 137, type: !62, isLocal: true, isDefinition: true)
!76 = !DIGlobalVariableExpression(var: !77, expr: !DIExpression())
!77 = distinct !DIGlobalVariable(name: "status_only", scope: !2, file: !3, line: 141, type: !71, isLocal: true, isDefinition: true)
!78 = !DIGlobalVariableExpression(var: !79, expr: !DIExpression())
!79 = distinct !DIGlobalVariable(name: "warn", scope: !2, file: !3, line: 145, type: !71, isLocal: true, isDefinition: true)
!80 = !DIGlobalVariableExpression(var: !81, expr: !DIExpression())
!81 = distinct !DIGlobalVariable(name: "quiet", scope: !2, file: !3, line: 151, type: !71, isLocal: true, isDefinition: true)
!82 = !DIGlobalVariableExpression(var: !83, expr: !DIExpression())
!83 = distinct !DIGlobalVariable(name: "ignore_missing", scope: !2, file: !3, line: 148, type: !71, isLocal: true, isDefinition: true)
!84 = !DIGlobalVariableExpression(var: !85, expr: !DIExpression())
!85 = distinct !DIGlobalVariable(name: "strict", scope: !2, file: !3, line: 155, type: !71, isLocal: true, isDefinition: true)
!86 = !DIGlobalVariableExpression(var: !87, expr: !DIExpression())
!87 = distinct !DIGlobalVariable(name: "delim", scope: !2, file: !3, line: 161, type: !66, isLocal: true, isDefinition: true)
!88 = !DIGlobalVariableExpression(var: !89, expr: !DIExpression())
!89 = distinct !DIGlobalVariable(name: "bin2hex", scope: !90, file: !3, line: 730, type: !193, isLocal: true, isDefinition: true)
!90 = distinct !DISubprogram(name: "digest_check", scope: !3, file: !3, line: 652, type: !91, scopeLine: 653, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !95)
!91 = !DISubroutineType(types: !92)
!92 = !{!71, !93}
!93 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !94, size: 64)
!94 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !60)
!95 = !{!96, !97, !152, !153, !154, !155, !156, !157, !158, !162, !163, !164, !165, !166, !167, !169, !170, !171, !175, !178, !179, !180, !184, !185, !191}
!96 = !DILocalVariable(name: "checkfile_name", arg: 1, scope: !90, file: !3, line: 652, type: !93)
!97 = !DILocalVariable(name: "checkfile_stream", scope: !90, file: !3, line: 654, type: !98)
!98 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !99, size: 64)
!99 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !100, line: 7, baseType: !101)
!100 = !DIFile(filename: "/usr/include/bits/types/FILE.h", directory: "")
!101 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !102, line: 49, size: 1728, elements: !103)
!102 = !DIFile(filename: "/usr/include/bits/types/struct_FILE.h", directory: "")
!103 = !{!104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !119, !121, !122, !123, !126, !127, !129, !133, !136, !138, !141, !144, !145, !146, !147, !148}
!104 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !101, file: !102, line: 51, baseType: !64, size: 32)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !101, file: !102, line: 54, baseType: !59, size: 64, offset: 64)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !101, file: !102, line: 55, baseType: !59, size: 64, offset: 128)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !101, file: !102, line: 56, baseType: !59, size: 64, offset: 192)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !101, file: !102, line: 57, baseType: !59, size: 64, offset: 256)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !101, file: !102, line: 58, baseType: !59, size: 64, offset: 320)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !101, file: !102, line: 59, baseType: !59, size: 64, offset: 384)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !101, file: !102, line: 60, baseType: !59, size: 64, offset: 448)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !101, file: !102, line: 61, baseType: !59, size: 64, offset: 512)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !101, file: !102, line: 64, baseType: !59, size: 64, offset: 576)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !101, file: !102, line: 65, baseType: !59, size: 64, offset: 640)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !101, file: !102, line: 66, baseType: !59, size: 64, offset: 704)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !101, file: !102, line: 68, baseType: !117, size: 64, offset: 768)
!117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !118, size: 64)
!118 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !102, line: 36, flags: DIFlagFwdDecl)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !101, file: !102, line: 70, baseType: !120, size: 64, offset: 832)
!120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !101, size: 64)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !101, file: !102, line: 72, baseType: !64, size: 32, offset: 896)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !101, file: !102, line: 73, baseType: !64, size: 32, offset: 928)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !101, file: !102, line: 74, baseType: !124, size: 64, offset: 960)
!124 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !44, line: 152, baseType: !125)
!125 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !101, file: !102, line: 77, baseType: !67, size: 16, offset: 1024)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !101, file: !102, line: 78, baseType: !128, size: 8, offset: 1040)
!128 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !101, file: !102, line: 79, baseType: !130, size: 8, offset: 1048)
!130 = !DICompositeType(tag: DW_TAG_array_type, baseType: !60, size: 8, elements: !131)
!131 = !{!132}
!132 = !DISubrange(count: 1)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !101, file: !102, line: 81, baseType: !134, size: 64, offset: 1088)
!134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !135, size: 64)
!135 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !102, line: 43, baseType: null)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !101, file: !102, line: 89, baseType: !137, size: 64, offset: 1152)
!137 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !44, line: 153, baseType: !125)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !101, file: !102, line: 91, baseType: !139, size: 64, offset: 1216)
!139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !140, size: 64)
!140 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !102, line: 37, flags: DIFlagFwdDecl)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !101, file: !102, line: 92, baseType: !142, size: 64, offset: 1280)
!142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !143, size: 64)
!143 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !102, line: 38, flags: DIFlagFwdDecl)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !101, file: !102, line: 93, baseType: !120, size: 64, offset: 1344)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !101, file: !102, line: 94, baseType: !61, size: 64, offset: 1408)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !101, file: !102, line: 95, baseType: !62, size: 64, offset: 1472)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !101, file: !102, line: 96, baseType: !64, size: 32, offset: 1536)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !101, file: !102, line: 98, baseType: !149, size: 160, offset: 1568)
!149 = !DICompositeType(tag: DW_TAG_array_type, baseType: !60, size: 160, elements: !150)
!150 = !{!151}
!151 = !DISubrange(count: 20)
!152 = !DILocalVariable(name: "n_misformatted_lines", scope: !90, file: !3, line: 655, type: !41)
!153 = !DILocalVariable(name: "n_improperly_formatted_lines", scope: !90, file: !3, line: 656, type: !41)
!154 = !DILocalVariable(name: "n_mismatched_checksums", scope: !90, file: !3, line: 657, type: !41)
!155 = !DILocalVariable(name: "n_open_or_read_failures", scope: !90, file: !3, line: 658, type: !41)
!156 = !DILocalVariable(name: "properly_formatted_lines", scope: !90, file: !3, line: 659, type: !71)
!157 = !DILocalVariable(name: "matched_checksums", scope: !90, file: !3, line: 660, type: !71)
!158 = !DILocalVariable(name: "bin_buffer_unaligned", scope: !90, file: !3, line: 661, type: !159)
!159 = !DICompositeType(tag: DW_TAG_array_type, baseType: !66, size: 192, elements: !160)
!160 = !{!161}
!161 = !DISubrange(count: 24)
!162 = !DILocalVariable(name: "bin_buffer", scope: !90, file: !3, line: 663, type: !65)
!163 = !DILocalVariable(name: "line_number", scope: !90, file: !3, line: 664, type: !41)
!164 = !DILocalVariable(name: "line", scope: !90, file: !3, line: 665, type: !59)
!165 = !DILocalVariable(name: "line_chars_allocated", scope: !90, file: !3, line: 666, type: !62)
!166 = !DILocalVariable(name: "is_stdin", scope: !90, file: !3, line: 667, type: !71)
!167 = !DILocalVariable(name: "filename", scope: !168, file: !3, line: 690, type: !59)
!168 = distinct !DILexicalBlock(scope: !90, file: !3, line: 689, column: 5)
!169 = !DILocalVariable(name: "binary", scope: !168, file: !3, line: 691, type: !64)
!170 = !DILocalVariable(name: "hex_digest", scope: !168, file: !3, line: 692, type: !65)
!171 = !DILocalVariable(name: "line_length", scope: !168, file: !3, line: 693, type: !172)
!172 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !173, line: 108, baseType: !174)
!173 = !DIFile(filename: "/usr/include/sys/types.h", directory: "")
!174 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !44, line: 194, baseType: !125)
!175 = !DILocalVariable(name: "ok", scope: !176, file: !3, line: 734, type: !71)
!176 = distinct !DILexicalBlock(scope: !177, file: !3, line: 729, column: 9)
!177 = distinct !DILexicalBlock(scope: !168, file: !3, line: 712, column: 11)
!178 = !DILocalVariable(name: "missing", scope: !176, file: !3, line: 735, type: !71)
!179 = !DILocalVariable(name: "needs_escape", scope: !176, file: !3, line: 738, type: !71)
!180 = !DILocalVariable(name: "digest_bin_bytes", scope: !181, file: !3, line: 762, type: !62)
!181 = distinct !DILexicalBlock(scope: !182, file: !3, line: 761, column: 13)
!182 = distinct !DILexicalBlock(scope: !183, file: !3, line: 755, column: 20)
!183 = distinct !DILexicalBlock(scope: !176, file: !3, line: 744, column: 15)
!184 = !DILocalVariable(name: "cnt", scope: !181, file: !3, line: 763, type: !62)
!185 = !DILocalVariable(name: "__res", scope: !186, file: !3, line: 769, type: !64)
!186 = distinct !DILexicalBlock(scope: !187, file: !3, line: 769, column: 23)
!187 = distinct !DILexicalBlock(scope: !188, file: !3, line: 769, column: 23)
!188 = distinct !DILexicalBlock(scope: !189, file: !3, line: 768, column: 17)
!189 = distinct !DILexicalBlock(scope: !190, file: !3, line: 767, column: 15)
!190 = distinct !DILexicalBlock(scope: !181, file: !3, line: 767, column: 15)
!191 = !DILocalVariable(name: "__res", scope: !192, file: !3, line: 771, type: !64)
!192 = distinct !DILexicalBlock(scope: !187, file: !3, line: 771, column: 27)
!193 = !DICompositeType(tag: DW_TAG_array_type, baseType: !94, size: 128, elements: !194)
!194 = !{!195}
!195 = !DISubrange(count: 16)
!196 = !DIGlobalVariableExpression(var: !197, expr: !DIExpression())
!197 = distinct !DIGlobalVariable(name: "bsd_reversed", scope: !2, file: !3, line: 158, type: !64, isLocal: true, isDefinition: true)
!198 = !DICompositeType(tag: DW_TAG_array_type, baseType: !199, size: 3328, elements: !208)
!199 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !200)
!200 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !201, line: 50, size: 256, elements: !202)
!201 = !DIFile(filename: "/usr/include/bits/getopt_ext.h", directory: "")
!202 = !{!203, !204, !205, !207}
!203 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !200, file: !201, line: 52, baseType: !93, size: 64)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !200, file: !201, line: 55, baseType: !64, size: 32, offset: 64)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !200, file: !201, line: 56, baseType: !206, size: 64, offset: 128)
!206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !64, size: 64)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !200, file: !201, line: 57, baseType: !64, size: 32, offset: 192)
!208 = !{!209}
!209 = !DISubrange(count: 13)
!210 = !DIGlobalVariableExpression(var: !77, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!211 = !DIGlobalVariableExpression(var: !79, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!212 = !DIGlobalVariableExpression(var: !81, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!213 = !DIGlobalVariableExpression(var: !83, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!214 = !DIGlobalVariableExpression(var: !85, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!215 = !DIGlobalVariableExpression(var: !87, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 18446744073709551606, DW_OP_mul, DW_OP_constu, 10, DW_OP_plus, DW_OP_stack_value))
!216 = !DIGlobalVariableExpression(var: !73, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 42, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!217 = !DIGlobalVariableExpression(var: !75, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 40, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!218 = !DIGlobalVariableExpression(var: !70, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!219 = !DIGlobalVariableExpression(var: !220, expr: !DIExpression())
!220 = distinct !DIGlobalVariable(name: "Version", scope: !221, file: !222, line: 2, type: !93, isLocal: false, isDefinition: true)
!221 = distinct !DICompileUnit(language: DW_LANG_C99, file: !222, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !223, globals: !224, splitDebugInlining: false, nameTableKind: None)
!222 = !DIFile(filename: "src/version.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!223 = !{}
!224 = !{!219}
!225 = !DIGlobalVariableExpression(var: !226, expr: !DIExpression())
!226 = distinct !DIGlobalVariable(name: "file_name", scope: !227, file: !228, line: 46, type: !93, isLocal: true, isDefinition: true)
!227 = distinct !DICompileUnit(language: DW_LANG_C99, file: !228, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !223, globals: !229, splitDebugInlining: false, nameTableKind: None)
!228 = !DIFile(filename: "lib/closeout.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!229 = !{!225, !230}
!230 = !DIGlobalVariableExpression(var: !231, expr: !DIExpression())
!231 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !227, file: !228, line: 56, type: !71, isLocal: true, isDefinition: true)
!232 = !DIGlobalVariableExpression(var: !233, expr: !DIExpression())
!233 = distinct !DIGlobalVariable(name: "fillbuf", scope: !234, file: !235, line: 55, type: !242, isLocal: true, isDefinition: true)
!234 = distinct !DICompileUnit(language: DW_LANG_C99, file: !235, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !223, retainedTypes: !236, globals: !241, splitDebugInlining: false, nameTableKind: None)
!235 = !DIFile(filename: "lib/sha1.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!236 = !{!59, !93, !237, !238}
!237 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !42, line: 90, baseType: !40)
!238 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !239, line: 26, baseType: !240)
!239 = !DIFile(filename: "/usr/include/bits/stdint-uintn.h", directory: "")
!240 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !44, line: 42, baseType: !7)
!241 = !{!232}
!242 = !DICompositeType(tag: DW_TAG_array_type, baseType: !243, size: 512, elements: !244)
!243 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !66)
!244 = !{!245}
!245 = !DISubrange(count: 64)
!246 = !DIGlobalVariableExpression(var: !247, expr: !DIExpression())
!247 = distinct !DIGlobalVariable(name: "exit_failure", scope: !248, file: !249, line: 24, type: !251, isLocal: false, isDefinition: true)
!248 = distinct !DICompileUnit(language: DW_LANG_C99, file: !249, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !223, globals: !250, splitDebugInlining: false, nameTableKind: None)
!249 = !DIFile(filename: "lib/exitfail.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!250 = !{!246}
!251 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !64)
!252 = !DIGlobalVariableExpression(var: !253, expr: !DIExpression())
!253 = distinct !DIGlobalVariable(name: "program_name", scope: !254, file: !255, line: 33, type: !93, isLocal: false, isDefinition: true)
!254 = distinct !DICompileUnit(language: DW_LANG_C99, file: !255, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !223, retainedTypes: !256, globals: !257, splitDebugInlining: false, nameTableKind: None)
!255 = !DIFile(filename: "lib/progname.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!256 = !{!61, !59}
!257 = !{!252}
!258 = !DIGlobalVariableExpression(var: !259, expr: !DIExpression())
!259 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !260, file: !261, line: 85, type: !306, isLocal: false, isDefinition: true)
!260 = distinct !DICompileUnit(language: DW_LANG_C99, file: !261, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !262, retainedTypes: !268, globals: !269, splitDebugInlining: false, nameTableKind: None)
!261 = !DIFile(filename: "lib/quotearg.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!262 = !{!5, !263, !20}
!263 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !6, line: 242, baseType: !7, size: 32, elements: !264)
!264 = !{!265, !266, !267}
!265 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1, isUnsigned: true)
!266 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2, isUnsigned: true)
!267 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4, isUnsigned: true)
!268 = !{!64, !67, !62, !59}
!269 = !{!258, !270, !276, !288, !290, !295, !302, !304}
!270 = !DIGlobalVariableExpression(var: !271, expr: !DIExpression())
!271 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !260, file: !261, line: 101, type: !272, isLocal: false, isDefinition: true)
!272 = !DICompositeType(tag: DW_TAG_array_type, baseType: !273, size: 320, elements: !274)
!273 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5)
!274 = !{!275}
!275 = !DISubrange(count: 10)
!276 = !DIGlobalVariableExpression(var: !277, expr: !DIExpression())
!277 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !260, file: !261, line: 1052, type: !278, isLocal: false, isDefinition: true)
!278 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !261, line: 65, size: 448, elements: !279)
!279 = !{!280, !281, !282, !286, !287}
!280 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !278, file: !261, line: 68, baseType: !5, size: 32)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !278, file: !261, line: 71, baseType: !64, size: 32, offset: 32)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !278, file: !261, line: 75, baseType: !283, size: 256, offset: 64)
!283 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 256, elements: !284)
!284 = !{!285}
!285 = !DISubrange(count: 8)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !278, file: !261, line: 78, baseType: !93, size: 64, offset: 320)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !278, file: !261, line: 81, baseType: !93, size: 64, offset: 384)
!288 = !DIGlobalVariableExpression(var: !289, expr: !DIExpression())
!289 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !260, file: !261, line: 116, type: !278, isLocal: true, isDefinition: true)
!290 = !DIGlobalVariableExpression(var: !291, expr: !DIExpression())
!291 = distinct !DIGlobalVariable(name: "slot0", scope: !260, file: !261, line: 842, type: !292, isLocal: true, isDefinition: true)
!292 = !DICompositeType(tag: DW_TAG_array_type, baseType: !60, size: 2048, elements: !293)
!293 = !{!294}
!294 = !DISubrange(count: 256)
!295 = !DIGlobalVariableExpression(var: !296, expr: !DIExpression())
!296 = distinct !DIGlobalVariable(name: "slotvec", scope: !260, file: !261, line: 845, type: !297, isLocal: true, isDefinition: true)
!297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !298, size: 64)
!298 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !261, line: 834, size: 128, elements: !299)
!299 = !{!300, !301}
!300 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !298, file: !261, line: 836, baseType: !62, size: 64)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !298, file: !261, line: 837, baseType: !59, size: 64, offset: 64)
!302 = !DIGlobalVariableExpression(var: !303, expr: !DIExpression())
!303 = distinct !DIGlobalVariable(name: "nslots", scope: !260, file: !261, line: 843, type: !64, isLocal: true, isDefinition: true)
!304 = !DIGlobalVariableExpression(var: !305, expr: !DIExpression())
!305 = distinct !DIGlobalVariable(name: "slotvec0", scope: !260, file: !261, line: 844, type: !298, isLocal: true, isDefinition: true)
!306 = !DICompositeType(tag: DW_TAG_array_type, baseType: !307, size: 704, elements: !308)
!307 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !93)
!308 = !{!309}
!309 = !DISubrange(count: 11)
!310 = !DIGlobalVariableExpression(var: !311, expr: !DIExpression())
!311 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !312, file: !313, line: 26, type: !315, isLocal: false, isDefinition: true)
!312 = distinct !DICompileUnit(language: DW_LANG_C99, file: !313, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !223, globals: !314, splitDebugInlining: false, nameTableKind: None)
!313 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!314 = !{!310}
!315 = !DICompositeType(tag: DW_TAG_array_type, baseType: !94, size: 376, elements: !316)
!316 = !{!317}
!317 = !DISubrange(count: 47)
!318 = !DIGlobalVariableExpression(var: !319, expr: !DIExpression())
!319 = distinct !DIGlobalVariable(name: "have_dupfd_cloexec", scope: !320, file: !321, line: 507, type: !64, isLocal: true, isDefinition: true)
!320 = distinct !DISubprogram(name: "rpl_fcntl_DUPFD_CLOEXEC", scope: !321, file: !321, line: 488, type: !322, scopeLine: 489, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !324, retainedNodes: !326)
!321 = !DIFile(filename: "lib/fcntl.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!322 = !DISubroutineType(types: !323)
!323 = !{!64, !64, !64}
!324 = distinct !DICompileUnit(language: DW_LANG_C99, file: !321, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !223, globals: !325, splitDebugInlining: false, nameTableKind: None)
!325 = !{!318}
!326 = !{!327, !328, !329, !330, !333}
!327 = !DILocalVariable(name: "fd", arg: 1, scope: !320, file: !321, line: 488, type: !64)
!328 = !DILocalVariable(name: "target", arg: 2, scope: !320, file: !321, line: 488, type: !64)
!329 = !DILocalVariable(name: "result", scope: !320, file: !321, line: 490, type: !64)
!330 = !DILocalVariable(name: "flags", scope: !331, file: !321, line: 531, type: !64)
!331 = distinct !DILexicalBlock(scope: !332, file: !321, line: 530, column: 5)
!332 = distinct !DILexicalBlock(scope: !320, file: !321, line: 529, column: 7)
!333 = !DILocalVariable(name: "saved_errno", scope: !334, file: !321, line: 534, type: !64)
!334 = distinct !DILexicalBlock(scope: !335, file: !321, line: 533, column: 9)
!335 = distinct !DILexicalBlock(scope: !331, file: !321, line: 532, column: 11)
!336 = distinct !DICompileUnit(language: DW_LANG_C99, file: !337, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !338, splitDebugInlining: false, nameTableKind: None)
!337 = !DIFile(filename: "lib/fadvise.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!338 = !{!49}
!339 = distinct !DICompileUnit(language: DW_LANG_C99, file: !340, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !223, splitDebugInlining: false, nameTableKind: None)
!340 = !DIFile(filename: "lib/fopen-safer.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!341 = distinct !DICompileUnit(language: DW_LANG_C99, file: !342, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !223, splitDebugInlining: false, nameTableKind: None)
!342 = !DIFile(filename: "lib/dup-safer.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!343 = distinct !DICompileUnit(language: DW_LANG_C99, file: !344, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !345, retainedTypes: !349, splitDebugInlining: false, nameTableKind: None)
!344 = !DIFile(filename: "lib/version-etc.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!345 = !{!346}
!346 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !344, line: 40, baseType: !7, size: 32, elements: !347)
!347 = !{!348}
!348 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2020, isUnsigned: true)
!349 = !{!61}
!350 = distinct !DICompileUnit(language: DW_LANG_C99, file: !351, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !352, retainedTypes: !366, splitDebugInlining: false, nameTableKind: None)
!351 = !DIFile(filename: "lib/xmalloc.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!352 = !{!353}
!353 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !355, file: !354, line: 186, baseType: !7, size: 32, elements: !364)
!354 = !DIFile(filename: "./lib/xalloc.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!355 = distinct !DISubprogram(name: "x2nrealloc", scope: !354, file: !354, line: 174, type: !356, scopeLine: 175, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !350, retainedNodes: !359)
!356 = !DISubroutineType(types: !357)
!357 = !{!61, !61, !358, !62}
!358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !62, size: 64)
!359 = !{!360, !361, !362, !363}
!360 = !DILocalVariable(name: "p", arg: 1, scope: !355, file: !354, line: 174, type: !61)
!361 = !DILocalVariable(name: "pn", arg: 2, scope: !355, file: !354, line: 174, type: !358)
!362 = !DILocalVariable(name: "s", arg: 3, scope: !355, file: !354, line: 174, type: !62)
!363 = !DILocalVariable(name: "n", scope: !355, file: !354, line: 176, type: !62)
!364 = !{!365}
!365 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128, isUnsigned: true)
!366 = !{!62, !59, !61}
!367 = distinct !DICompileUnit(language: DW_LANG_C99, file: !368, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !223, splitDebugInlining: false, nameTableKind: None)
!368 = !DIFile(filename: "lib/xalloc-die.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!369 = distinct !DICompileUnit(language: DW_LANG_C99, file: !370, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !223, retainedTypes: !349, splitDebugInlining: false, nameTableKind: None)
!370 = !DIFile(filename: "lib/calloc.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!371 = distinct !DICompileUnit(language: DW_LANG_C99, file: !372, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !223, splitDebugInlining: false, nameTableKind: None)
!372 = !DIFile(filename: "lib/fclose.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!373 = distinct !DICompileUnit(language: DW_LANG_C99, file: !374, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !223, retainedTypes: !349, splitDebugInlining: false, nameTableKind: None)
!374 = !DIFile(filename: "lib/fflush.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!375 = distinct !DICompileUnit(language: DW_LANG_C99, file: !376, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !223, retainedTypes: !349, splitDebugInlining: false, nameTableKind: None)
!376 = !DIFile(filename: "lib/fseeko.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!377 = distinct !DICompileUnit(language: DW_LANG_C99, file: !378, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !223, retainedTypes: !379, splitDebugInlining: false, nameTableKind: None)
!378 = !DIFile(filename: "lib/mbrtowc.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!379 = !{!62}
!380 = distinct !DICompileUnit(language: DW_LANG_C99, file: !381, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !223, splitDebugInlining: false, nameTableKind: None)
!381 = !DIFile(filename: "lib/close-stream.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!382 = distinct !DICompileUnit(language: DW_LANG_C99, file: !383, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !223, splitDebugInlining: false, nameTableKind: None)
!383 = !DIFile(filename: "lib/hard-locale.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!384 = distinct !DICompileUnit(language: DW_LANG_C99, file: !385, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !386, retainedTypes: !349, splitDebugInlining: false, nameTableKind: None)
!385 = !DIFile(filename: "lib/localcharset.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!386 = !{!387}
!387 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !388, line: 41, baseType: !7, size: 32, elements: !389)
!388 = !DIFile(filename: "/usr/include/langinfo.h", directory: "")
!389 = !{!390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558, !559, !560, !561, !562, !563, !564, !565, !566, !567, !568, !569, !570, !571, !572, !573, !574, !575, !576, !577, !578, !579, !580, !581, !582, !583, !584, !585, !586, !587, !588, !589, !590, !591, !592, !593, !594, !595, !596, !597, !598, !599, !600, !601, !602, !603, !604, !605, !606, !607, !608, !609, !610, !611, !612, !613, !614, !615, !616, !617, !618, !619, !620, !621, !622, !623, !624, !625, !626, !627, !628, !629, !630, !631, !632, !633, !634, !635, !636, !637, !638, !639, !640, !641, !642, !643, !644, !645, !646, !647, !648, !649, !650, !651, !652, !653, !654, !655, !656, !657, !658, !659, !660, !661, !662, !663, !664, !665, !666, !667, !668, !669, !670, !671, !672, !673, !674, !675, !676, !677, !678, !679, !680, !681, !682, !683, !684, !685, !686, !687, !688, !689, !690, !691, !692, !693, !694, !695, !696, !697, !698, !699, !700, !701, !702, !703, !704, !705, !706, !707, !708, !709, !710, !711, !712, !713, !714, !715, !716, !717, !718, !719, !720, !721, !722, !723, !724, !725, !726, !727, !728, !729, !730, !731, !732, !733, !734, !735, !736, !737, !738, !739, !740, !741, !742, !743, !744, !745, !746, !747, !748, !749, !750, !751, !752, !753, !754, !755, !756, !757, !758, !759, !760, !761, !762, !763, !764, !765, !766, !767, !768, !769, !770, !771, !772}
!390 = !DIEnumerator(name: "ABDAY_1", value: 131072, isUnsigned: true)
!391 = !DIEnumerator(name: "ABDAY_2", value: 131073, isUnsigned: true)
!392 = !DIEnumerator(name: "ABDAY_3", value: 131074, isUnsigned: true)
!393 = !DIEnumerator(name: "ABDAY_4", value: 131075, isUnsigned: true)
!394 = !DIEnumerator(name: "ABDAY_5", value: 131076, isUnsigned: true)
!395 = !DIEnumerator(name: "ABDAY_6", value: 131077, isUnsigned: true)
!396 = !DIEnumerator(name: "ABDAY_7", value: 131078, isUnsigned: true)
!397 = !DIEnumerator(name: "DAY_1", value: 131079, isUnsigned: true)
!398 = !DIEnumerator(name: "DAY_2", value: 131080, isUnsigned: true)
!399 = !DIEnumerator(name: "DAY_3", value: 131081, isUnsigned: true)
!400 = !DIEnumerator(name: "DAY_4", value: 131082, isUnsigned: true)
!401 = !DIEnumerator(name: "DAY_5", value: 131083, isUnsigned: true)
!402 = !DIEnumerator(name: "DAY_6", value: 131084, isUnsigned: true)
!403 = !DIEnumerator(name: "DAY_7", value: 131085, isUnsigned: true)
!404 = !DIEnumerator(name: "ABMON_1", value: 131086, isUnsigned: true)
!405 = !DIEnumerator(name: "ABMON_2", value: 131087, isUnsigned: true)
!406 = !DIEnumerator(name: "ABMON_3", value: 131088, isUnsigned: true)
!407 = !DIEnumerator(name: "ABMON_4", value: 131089, isUnsigned: true)
!408 = !DIEnumerator(name: "ABMON_5", value: 131090, isUnsigned: true)
!409 = !DIEnumerator(name: "ABMON_6", value: 131091, isUnsigned: true)
!410 = !DIEnumerator(name: "ABMON_7", value: 131092, isUnsigned: true)
!411 = !DIEnumerator(name: "ABMON_8", value: 131093, isUnsigned: true)
!412 = !DIEnumerator(name: "ABMON_9", value: 131094, isUnsigned: true)
!413 = !DIEnumerator(name: "ABMON_10", value: 131095, isUnsigned: true)
!414 = !DIEnumerator(name: "ABMON_11", value: 131096, isUnsigned: true)
!415 = !DIEnumerator(name: "ABMON_12", value: 131097, isUnsigned: true)
!416 = !DIEnumerator(name: "MON_1", value: 131098, isUnsigned: true)
!417 = !DIEnumerator(name: "MON_2", value: 131099, isUnsigned: true)
!418 = !DIEnumerator(name: "MON_3", value: 131100, isUnsigned: true)
!419 = !DIEnumerator(name: "MON_4", value: 131101, isUnsigned: true)
!420 = !DIEnumerator(name: "MON_5", value: 131102, isUnsigned: true)
!421 = !DIEnumerator(name: "MON_6", value: 131103, isUnsigned: true)
!422 = !DIEnumerator(name: "MON_7", value: 131104, isUnsigned: true)
!423 = !DIEnumerator(name: "MON_8", value: 131105, isUnsigned: true)
!424 = !DIEnumerator(name: "MON_9", value: 131106, isUnsigned: true)
!425 = !DIEnumerator(name: "MON_10", value: 131107, isUnsigned: true)
!426 = !DIEnumerator(name: "MON_11", value: 131108, isUnsigned: true)
!427 = !DIEnumerator(name: "MON_12", value: 131109, isUnsigned: true)
!428 = !DIEnumerator(name: "AM_STR", value: 131110, isUnsigned: true)
!429 = !DIEnumerator(name: "PM_STR", value: 131111, isUnsigned: true)
!430 = !DIEnumerator(name: "D_T_FMT", value: 131112, isUnsigned: true)
!431 = !DIEnumerator(name: "D_FMT", value: 131113, isUnsigned: true)
!432 = !DIEnumerator(name: "T_FMT", value: 131114, isUnsigned: true)
!433 = !DIEnumerator(name: "T_FMT_AMPM", value: 131115, isUnsigned: true)
!434 = !DIEnumerator(name: "ERA", value: 131116, isUnsigned: true)
!435 = !DIEnumerator(name: "__ERA_YEAR", value: 131117, isUnsigned: true)
!436 = !DIEnumerator(name: "ERA_D_FMT", value: 131118, isUnsigned: true)
!437 = !DIEnumerator(name: "ALT_DIGITS", value: 131119, isUnsigned: true)
!438 = !DIEnumerator(name: "ERA_D_T_FMT", value: 131120, isUnsigned: true)
!439 = !DIEnumerator(name: "ERA_T_FMT", value: 131121, isUnsigned: true)
!440 = !DIEnumerator(name: "_NL_TIME_ERA_NUM_ENTRIES", value: 131122, isUnsigned: true)
!441 = !DIEnumerator(name: "_NL_TIME_ERA_ENTRIES", value: 131123, isUnsigned: true)
!442 = !DIEnumerator(name: "_NL_WABDAY_1", value: 131124, isUnsigned: true)
!443 = !DIEnumerator(name: "_NL_WABDAY_2", value: 131125, isUnsigned: true)
!444 = !DIEnumerator(name: "_NL_WABDAY_3", value: 131126, isUnsigned: true)
!445 = !DIEnumerator(name: "_NL_WABDAY_4", value: 131127, isUnsigned: true)
!446 = !DIEnumerator(name: "_NL_WABDAY_5", value: 131128, isUnsigned: true)
!447 = !DIEnumerator(name: "_NL_WABDAY_6", value: 131129, isUnsigned: true)
!448 = !DIEnumerator(name: "_NL_WABDAY_7", value: 131130, isUnsigned: true)
!449 = !DIEnumerator(name: "_NL_WDAY_1", value: 131131, isUnsigned: true)
!450 = !DIEnumerator(name: "_NL_WDAY_2", value: 131132, isUnsigned: true)
!451 = !DIEnumerator(name: "_NL_WDAY_3", value: 131133, isUnsigned: true)
!452 = !DIEnumerator(name: "_NL_WDAY_4", value: 131134, isUnsigned: true)
!453 = !DIEnumerator(name: "_NL_WDAY_5", value: 131135, isUnsigned: true)
!454 = !DIEnumerator(name: "_NL_WDAY_6", value: 131136, isUnsigned: true)
!455 = !DIEnumerator(name: "_NL_WDAY_7", value: 131137, isUnsigned: true)
!456 = !DIEnumerator(name: "_NL_WABMON_1", value: 131138, isUnsigned: true)
!457 = !DIEnumerator(name: "_NL_WABMON_2", value: 131139, isUnsigned: true)
!458 = !DIEnumerator(name: "_NL_WABMON_3", value: 131140, isUnsigned: true)
!459 = !DIEnumerator(name: "_NL_WABMON_4", value: 131141, isUnsigned: true)
!460 = !DIEnumerator(name: "_NL_WABMON_5", value: 131142, isUnsigned: true)
!461 = !DIEnumerator(name: "_NL_WABMON_6", value: 131143, isUnsigned: true)
!462 = !DIEnumerator(name: "_NL_WABMON_7", value: 131144, isUnsigned: true)
!463 = !DIEnumerator(name: "_NL_WABMON_8", value: 131145, isUnsigned: true)
!464 = !DIEnumerator(name: "_NL_WABMON_9", value: 131146, isUnsigned: true)
!465 = !DIEnumerator(name: "_NL_WABMON_10", value: 131147, isUnsigned: true)
!466 = !DIEnumerator(name: "_NL_WABMON_11", value: 131148, isUnsigned: true)
!467 = !DIEnumerator(name: "_NL_WABMON_12", value: 131149, isUnsigned: true)
!468 = !DIEnumerator(name: "_NL_WMON_1", value: 131150, isUnsigned: true)
!469 = !DIEnumerator(name: "_NL_WMON_2", value: 131151, isUnsigned: true)
!470 = !DIEnumerator(name: "_NL_WMON_3", value: 131152, isUnsigned: true)
!471 = !DIEnumerator(name: "_NL_WMON_4", value: 131153, isUnsigned: true)
!472 = !DIEnumerator(name: "_NL_WMON_5", value: 131154, isUnsigned: true)
!473 = !DIEnumerator(name: "_NL_WMON_6", value: 131155, isUnsigned: true)
!474 = !DIEnumerator(name: "_NL_WMON_7", value: 131156, isUnsigned: true)
!475 = !DIEnumerator(name: "_NL_WMON_8", value: 131157, isUnsigned: true)
!476 = !DIEnumerator(name: "_NL_WMON_9", value: 131158, isUnsigned: true)
!477 = !DIEnumerator(name: "_NL_WMON_10", value: 131159, isUnsigned: true)
!478 = !DIEnumerator(name: "_NL_WMON_11", value: 131160, isUnsigned: true)
!479 = !DIEnumerator(name: "_NL_WMON_12", value: 131161, isUnsigned: true)
!480 = !DIEnumerator(name: "_NL_WAM_STR", value: 131162, isUnsigned: true)
!481 = !DIEnumerator(name: "_NL_WPM_STR", value: 131163, isUnsigned: true)
!482 = !DIEnumerator(name: "_NL_WD_T_FMT", value: 131164, isUnsigned: true)
!483 = !DIEnumerator(name: "_NL_WD_FMT", value: 131165, isUnsigned: true)
!484 = !DIEnumerator(name: "_NL_WT_FMT", value: 131166, isUnsigned: true)
!485 = !DIEnumerator(name: "_NL_WT_FMT_AMPM", value: 131167, isUnsigned: true)
!486 = !DIEnumerator(name: "_NL_WERA_YEAR", value: 131168, isUnsigned: true)
!487 = !DIEnumerator(name: "_NL_WERA_D_FMT", value: 131169, isUnsigned: true)
!488 = !DIEnumerator(name: "_NL_WALT_DIGITS", value: 131170, isUnsigned: true)
!489 = !DIEnumerator(name: "_NL_WERA_D_T_FMT", value: 131171, isUnsigned: true)
!490 = !DIEnumerator(name: "_NL_WERA_T_FMT", value: 131172, isUnsigned: true)
!491 = !DIEnumerator(name: "_NL_TIME_WEEK_NDAYS", value: 131173, isUnsigned: true)
!492 = !DIEnumerator(name: "_NL_TIME_WEEK_1STDAY", value: 131174, isUnsigned: true)
!493 = !DIEnumerator(name: "_NL_TIME_WEEK_1STWEEK", value: 131175, isUnsigned: true)
!494 = !DIEnumerator(name: "_NL_TIME_FIRST_WEEKDAY", value: 131176, isUnsigned: true)
!495 = !DIEnumerator(name: "_NL_TIME_FIRST_WORKDAY", value: 131177, isUnsigned: true)
!496 = !DIEnumerator(name: "_NL_TIME_CAL_DIRECTION", value: 131178, isUnsigned: true)
!497 = !DIEnumerator(name: "_NL_TIME_TIMEZONE", value: 131179, isUnsigned: true)
!498 = !DIEnumerator(name: "_DATE_FMT", value: 131180, isUnsigned: true)
!499 = !DIEnumerator(name: "_NL_W_DATE_FMT", value: 131181, isUnsigned: true)
!500 = !DIEnumerator(name: "_NL_TIME_CODESET", value: 131182, isUnsigned: true)
!501 = !DIEnumerator(name: "__ALTMON_1", value: 131183, isUnsigned: true)
!502 = !DIEnumerator(name: "__ALTMON_2", value: 131184, isUnsigned: true)
!503 = !DIEnumerator(name: "__ALTMON_3", value: 131185, isUnsigned: true)
!504 = !DIEnumerator(name: "__ALTMON_4", value: 131186, isUnsigned: true)
!505 = !DIEnumerator(name: "__ALTMON_5", value: 131187, isUnsigned: true)
!506 = !DIEnumerator(name: "__ALTMON_6", value: 131188, isUnsigned: true)
!507 = !DIEnumerator(name: "__ALTMON_7", value: 131189, isUnsigned: true)
!508 = !DIEnumerator(name: "__ALTMON_8", value: 131190, isUnsigned: true)
!509 = !DIEnumerator(name: "__ALTMON_9", value: 131191, isUnsigned: true)
!510 = !DIEnumerator(name: "__ALTMON_10", value: 131192, isUnsigned: true)
!511 = !DIEnumerator(name: "__ALTMON_11", value: 131193, isUnsigned: true)
!512 = !DIEnumerator(name: "__ALTMON_12", value: 131194, isUnsigned: true)
!513 = !DIEnumerator(name: "_NL_WALTMON_1", value: 131195, isUnsigned: true)
!514 = !DIEnumerator(name: "_NL_WALTMON_2", value: 131196, isUnsigned: true)
!515 = !DIEnumerator(name: "_NL_WALTMON_3", value: 131197, isUnsigned: true)
!516 = !DIEnumerator(name: "_NL_WALTMON_4", value: 131198, isUnsigned: true)
!517 = !DIEnumerator(name: "_NL_WALTMON_5", value: 131199, isUnsigned: true)
!518 = !DIEnumerator(name: "_NL_WALTMON_6", value: 131200, isUnsigned: true)
!519 = !DIEnumerator(name: "_NL_WALTMON_7", value: 131201, isUnsigned: true)
!520 = !DIEnumerator(name: "_NL_WALTMON_8", value: 131202, isUnsigned: true)
!521 = !DIEnumerator(name: "_NL_WALTMON_9", value: 131203, isUnsigned: true)
!522 = !DIEnumerator(name: "_NL_WALTMON_10", value: 131204, isUnsigned: true)
!523 = !DIEnumerator(name: "_NL_WALTMON_11", value: 131205, isUnsigned: true)
!524 = !DIEnumerator(name: "_NL_WALTMON_12", value: 131206, isUnsigned: true)
!525 = !DIEnumerator(name: "_NL_ABALTMON_1", value: 131207, isUnsigned: true)
!526 = !DIEnumerator(name: "_NL_ABALTMON_2", value: 131208, isUnsigned: true)
!527 = !DIEnumerator(name: "_NL_ABALTMON_3", value: 131209, isUnsigned: true)
!528 = !DIEnumerator(name: "_NL_ABALTMON_4", value: 131210, isUnsigned: true)
!529 = !DIEnumerator(name: "_NL_ABALTMON_5", value: 131211, isUnsigned: true)
!530 = !DIEnumerator(name: "_NL_ABALTMON_6", value: 131212, isUnsigned: true)
!531 = !DIEnumerator(name: "_NL_ABALTMON_7", value: 131213, isUnsigned: true)
!532 = !DIEnumerator(name: "_NL_ABALTMON_8", value: 131214, isUnsigned: true)
!533 = !DIEnumerator(name: "_NL_ABALTMON_9", value: 131215, isUnsigned: true)
!534 = !DIEnumerator(name: "_NL_ABALTMON_10", value: 131216, isUnsigned: true)
!535 = !DIEnumerator(name: "_NL_ABALTMON_11", value: 131217, isUnsigned: true)
!536 = !DIEnumerator(name: "_NL_ABALTMON_12", value: 131218, isUnsigned: true)
!537 = !DIEnumerator(name: "_NL_WABALTMON_1", value: 131219, isUnsigned: true)
!538 = !DIEnumerator(name: "_NL_WABALTMON_2", value: 131220, isUnsigned: true)
!539 = !DIEnumerator(name: "_NL_WABALTMON_3", value: 131221, isUnsigned: true)
!540 = !DIEnumerator(name: "_NL_WABALTMON_4", value: 131222, isUnsigned: true)
!541 = !DIEnumerator(name: "_NL_WABALTMON_5", value: 131223, isUnsigned: true)
!542 = !DIEnumerator(name: "_NL_WABALTMON_6", value: 131224, isUnsigned: true)
!543 = !DIEnumerator(name: "_NL_WABALTMON_7", value: 131225, isUnsigned: true)
!544 = !DIEnumerator(name: "_NL_WABALTMON_8", value: 131226, isUnsigned: true)
!545 = !DIEnumerator(name: "_NL_WABALTMON_9", value: 131227, isUnsigned: true)
!546 = !DIEnumerator(name: "_NL_WABALTMON_10", value: 131228, isUnsigned: true)
!547 = !DIEnumerator(name: "_NL_WABALTMON_11", value: 131229, isUnsigned: true)
!548 = !DIEnumerator(name: "_NL_WABALTMON_12", value: 131230, isUnsigned: true)
!549 = !DIEnumerator(name: "_NL_NUM_LC_TIME", value: 131231, isUnsigned: true)
!550 = !DIEnumerator(name: "_NL_COLLATE_NRULES", value: 196608, isUnsigned: true)
!551 = !DIEnumerator(name: "_NL_COLLATE_RULESETS", value: 196609, isUnsigned: true)
!552 = !DIEnumerator(name: "_NL_COLLATE_TABLEMB", value: 196610, isUnsigned: true)
!553 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTMB", value: 196611, isUnsigned: true)
!554 = !DIEnumerator(name: "_NL_COLLATE_EXTRAMB", value: 196612, isUnsigned: true)
!555 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTMB", value: 196613, isUnsigned: true)
!556 = !DIEnumerator(name: "_NL_COLLATE_GAP1", value: 196614, isUnsigned: true)
!557 = !DIEnumerator(name: "_NL_COLLATE_GAP2", value: 196615, isUnsigned: true)
!558 = !DIEnumerator(name: "_NL_COLLATE_GAP3", value: 196616, isUnsigned: true)
!559 = !DIEnumerator(name: "_NL_COLLATE_TABLEWC", value: 196617, isUnsigned: true)
!560 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTWC", value: 196618, isUnsigned: true)
!561 = !DIEnumerator(name: "_NL_COLLATE_EXTRAWC", value: 196619, isUnsigned: true)
!562 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTWC", value: 196620, isUnsigned: true)
!563 = !DIEnumerator(name: "_NL_COLLATE_SYMB_HASH_SIZEMB", value: 196621, isUnsigned: true)
!564 = !DIEnumerator(name: "_NL_COLLATE_SYMB_TABLEMB", value: 196622, isUnsigned: true)
!565 = !DIEnumerator(name: "_NL_COLLATE_SYMB_EXTRAMB", value: 196623, isUnsigned: true)
!566 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQMB", value: 196624, isUnsigned: true)
!567 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQWC", value: 196625, isUnsigned: true)
!568 = !DIEnumerator(name: "_NL_COLLATE_CODESET", value: 196626, isUnsigned: true)
!569 = !DIEnumerator(name: "_NL_NUM_LC_COLLATE", value: 196627, isUnsigned: true)
!570 = !DIEnumerator(name: "_NL_CTYPE_CLASS", value: 0, isUnsigned: true)
!571 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER", value: 1, isUnsigned: true)
!572 = !DIEnumerator(name: "_NL_CTYPE_GAP1", value: 2, isUnsigned: true)
!573 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER", value: 3, isUnsigned: true)
!574 = !DIEnumerator(name: "_NL_CTYPE_GAP2", value: 4, isUnsigned: true)
!575 = !DIEnumerator(name: "_NL_CTYPE_CLASS32", value: 5, isUnsigned: true)
!576 = !DIEnumerator(name: "_NL_CTYPE_GAP3", value: 6, isUnsigned: true)
!577 = !DIEnumerator(name: "_NL_CTYPE_GAP4", value: 7, isUnsigned: true)
!578 = !DIEnumerator(name: "_NL_CTYPE_GAP5", value: 8, isUnsigned: true)
!579 = !DIEnumerator(name: "_NL_CTYPE_GAP6", value: 9, isUnsigned: true)
!580 = !DIEnumerator(name: "_NL_CTYPE_CLASS_NAMES", value: 10, isUnsigned: true)
!581 = !DIEnumerator(name: "_NL_CTYPE_MAP_NAMES", value: 11, isUnsigned: true)
!582 = !DIEnumerator(name: "_NL_CTYPE_WIDTH", value: 12, isUnsigned: true)
!583 = !DIEnumerator(name: "_NL_CTYPE_MB_CUR_MAX", value: 13, isUnsigned: true)
!584 = !DIEnumerator(name: "_NL_CTYPE_CODESET_NAME", value: 14, isUnsigned: true)
!585 = !DIEnumerator(name: "CODESET", value: 14, isUnsigned: true)
!586 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER32", value: 15, isUnsigned: true)
!587 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER32", value: 16, isUnsigned: true)
!588 = !DIEnumerator(name: "_NL_CTYPE_CLASS_OFFSET", value: 17, isUnsigned: true)
!589 = !DIEnumerator(name: "_NL_CTYPE_MAP_OFFSET", value: 18, isUnsigned: true)
!590 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_MB_LEN", value: 19, isUnsigned: true)
!591 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_MB", value: 20, isUnsigned: true)
!592 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_MB", value: 21, isUnsigned: true)
!593 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_MB", value: 22, isUnsigned: true)
!594 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_MB", value: 23, isUnsigned: true)
!595 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_MB", value: 24, isUnsigned: true)
!596 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_MB", value: 25, isUnsigned: true)
!597 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_MB", value: 26, isUnsigned: true)
!598 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_MB", value: 27, isUnsigned: true)
!599 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_MB", value: 28, isUnsigned: true)
!600 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_MB", value: 29, isUnsigned: true)
!601 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_WC_LEN", value: 30, isUnsigned: true)
!602 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_WC", value: 31, isUnsigned: true)
!603 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_WC", value: 32, isUnsigned: true)
!604 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_WC", value: 33, isUnsigned: true)
!605 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_WC", value: 34, isUnsigned: true)
!606 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_WC", value: 35, isUnsigned: true)
!607 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_WC", value: 36, isUnsigned: true)
!608 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_WC", value: 37, isUnsigned: true)
!609 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_WC", value: 38, isUnsigned: true)
!610 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_WC", value: 39, isUnsigned: true)
!611 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_WC", value: 40, isUnsigned: true)
!612 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_MB", value: 41, isUnsigned: true)
!613 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_MB", value: 42, isUnsigned: true)
!614 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_MB", value: 43, isUnsigned: true)
!615 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_MB", value: 44, isUnsigned: true)
!616 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_MB", value: 45, isUnsigned: true)
!617 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_MB", value: 46, isUnsigned: true)
!618 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_MB", value: 47, isUnsigned: true)
!619 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_MB", value: 48, isUnsigned: true)
!620 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_MB", value: 49, isUnsigned: true)
!621 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_MB", value: 50, isUnsigned: true)
!622 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_WC", value: 51, isUnsigned: true)
!623 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_WC", value: 52, isUnsigned: true)
!624 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_WC", value: 53, isUnsigned: true)
!625 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_WC", value: 54, isUnsigned: true)
!626 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_WC", value: 55, isUnsigned: true)
!627 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_WC", value: 56, isUnsigned: true)
!628 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_WC", value: 57, isUnsigned: true)
!629 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_WC", value: 58, isUnsigned: true)
!630 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_WC", value: 59, isUnsigned: true)
!631 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_WC", value: 60, isUnsigned: true)
!632 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TAB_SIZE", value: 61, isUnsigned: true)
!633 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_IDX", value: 62, isUnsigned: true)
!634 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_TBL", value: 63, isUnsigned: true)
!635 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_IDX", value: 64, isUnsigned: true)
!636 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_TBL", value: 65, isUnsigned: true)
!637 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING_LEN", value: 66, isUnsigned: true)
!638 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING", value: 67, isUnsigned: true)
!639 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE_LEN", value: 68, isUnsigned: true)
!640 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE", value: 69, isUnsigned: true)
!641 = !DIEnumerator(name: "_NL_CTYPE_MAP_TO_NONASCII", value: 70, isUnsigned: true)
!642 = !DIEnumerator(name: "_NL_CTYPE_NONASCII_CASE", value: 71, isUnsigned: true)
!643 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_1", value: 72, isUnsigned: true)
!644 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_2", value: 73, isUnsigned: true)
!645 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_3", value: 74, isUnsigned: true)
!646 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_4", value: 75, isUnsigned: true)
!647 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_5", value: 76, isUnsigned: true)
!648 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_6", value: 77, isUnsigned: true)
!649 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_7", value: 78, isUnsigned: true)
!650 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_8", value: 79, isUnsigned: true)
!651 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_9", value: 80, isUnsigned: true)
!652 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_10", value: 81, isUnsigned: true)
!653 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_11", value: 82, isUnsigned: true)
!654 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_12", value: 83, isUnsigned: true)
!655 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_13", value: 84, isUnsigned: true)
!656 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_14", value: 85, isUnsigned: true)
!657 = !DIEnumerator(name: "_NL_NUM_LC_CTYPE", value: 86, isUnsigned: true)
!658 = !DIEnumerator(name: "__INT_CURR_SYMBOL", value: 262144, isUnsigned: true)
!659 = !DIEnumerator(name: "__CURRENCY_SYMBOL", value: 262145, isUnsigned: true)
!660 = !DIEnumerator(name: "__MON_DECIMAL_POINT", value: 262146, isUnsigned: true)
!661 = !DIEnumerator(name: "__MON_THOUSANDS_SEP", value: 262147, isUnsigned: true)
!662 = !DIEnumerator(name: "__MON_GROUPING", value: 262148, isUnsigned: true)
!663 = !DIEnumerator(name: "__POSITIVE_SIGN", value: 262149, isUnsigned: true)
!664 = !DIEnumerator(name: "__NEGATIVE_SIGN", value: 262150, isUnsigned: true)
!665 = !DIEnumerator(name: "__INT_FRAC_DIGITS", value: 262151, isUnsigned: true)
!666 = !DIEnumerator(name: "__FRAC_DIGITS", value: 262152, isUnsigned: true)
!667 = !DIEnumerator(name: "__P_CS_PRECEDES", value: 262153, isUnsigned: true)
!668 = !DIEnumerator(name: "__P_SEP_BY_SPACE", value: 262154, isUnsigned: true)
!669 = !DIEnumerator(name: "__N_CS_PRECEDES", value: 262155, isUnsigned: true)
!670 = !DIEnumerator(name: "__N_SEP_BY_SPACE", value: 262156, isUnsigned: true)
!671 = !DIEnumerator(name: "__P_SIGN_POSN", value: 262157, isUnsigned: true)
!672 = !DIEnumerator(name: "__N_SIGN_POSN", value: 262158, isUnsigned: true)
!673 = !DIEnumerator(name: "_NL_MONETARY_CRNCYSTR", value: 262159, isUnsigned: true)
!674 = !DIEnumerator(name: "__INT_P_CS_PRECEDES", value: 262160, isUnsigned: true)
!675 = !DIEnumerator(name: "__INT_P_SEP_BY_SPACE", value: 262161, isUnsigned: true)
!676 = !DIEnumerator(name: "__INT_N_CS_PRECEDES", value: 262162, isUnsigned: true)
!677 = !DIEnumerator(name: "__INT_N_SEP_BY_SPACE", value: 262163, isUnsigned: true)
!678 = !DIEnumerator(name: "__INT_P_SIGN_POSN", value: 262164, isUnsigned: true)
!679 = !DIEnumerator(name: "__INT_N_SIGN_POSN", value: 262165, isUnsigned: true)
!680 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_CURR_SYMBOL", value: 262166, isUnsigned: true)
!681 = !DIEnumerator(name: "_NL_MONETARY_DUO_CURRENCY_SYMBOL", value: 262167, isUnsigned: true)
!682 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_FRAC_DIGITS", value: 262168, isUnsigned: true)
!683 = !DIEnumerator(name: "_NL_MONETARY_DUO_FRAC_DIGITS", value: 262169, isUnsigned: true)
!684 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_CS_PRECEDES", value: 262170, isUnsigned: true)
!685 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SEP_BY_SPACE", value: 262171, isUnsigned: true)
!686 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_CS_PRECEDES", value: 262172, isUnsigned: true)
!687 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SEP_BY_SPACE", value: 262173, isUnsigned: true)
!688 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_CS_PRECEDES", value: 262174, isUnsigned: true)
!689 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SEP_BY_SPACE", value: 262175, isUnsigned: true)
!690 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_CS_PRECEDES", value: 262176, isUnsigned: true)
!691 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SEP_BY_SPACE", value: 262177, isUnsigned: true)
!692 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SIGN_POSN", value: 262178, isUnsigned: true)
!693 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SIGN_POSN", value: 262179, isUnsigned: true)
!694 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SIGN_POSN", value: 262180, isUnsigned: true)
!695 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SIGN_POSN", value: 262181, isUnsigned: true)
!696 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_FROM", value: 262182, isUnsigned: true)
!697 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_TO", value: 262183, isUnsigned: true)
!698 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_FROM", value: 262184, isUnsigned: true)
!699 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_TO", value: 262185, isUnsigned: true)
!700 = !DIEnumerator(name: "_NL_MONETARY_CONVERSION_RATE", value: 262186, isUnsigned: true)
!701 = !DIEnumerator(name: "_NL_MONETARY_DECIMAL_POINT_WC", value: 262187, isUnsigned: true)
!702 = !DIEnumerator(name: "_NL_MONETARY_THOUSANDS_SEP_WC", value: 262188, isUnsigned: true)
!703 = !DIEnumerator(name: "_NL_MONETARY_CODESET", value: 262189, isUnsigned: true)
!704 = !DIEnumerator(name: "_NL_NUM_LC_MONETARY", value: 262190, isUnsigned: true)
!705 = !DIEnumerator(name: "__DECIMAL_POINT", value: 65536, isUnsigned: true)
!706 = !DIEnumerator(name: "RADIXCHAR", value: 65536, isUnsigned: true)
!707 = !DIEnumerator(name: "__THOUSANDS_SEP", value: 65537, isUnsigned: true)
!708 = !DIEnumerator(name: "THOUSEP", value: 65537, isUnsigned: true)
!709 = !DIEnumerator(name: "__GROUPING", value: 65538, isUnsigned: true)
!710 = !DIEnumerator(name: "_NL_NUMERIC_DECIMAL_POINT_WC", value: 65539, isUnsigned: true)
!711 = !DIEnumerator(name: "_NL_NUMERIC_THOUSANDS_SEP_WC", value: 65540, isUnsigned: true)
!712 = !DIEnumerator(name: "_NL_NUMERIC_CODESET", value: 65541, isUnsigned: true)
!713 = !DIEnumerator(name: "_NL_NUM_LC_NUMERIC", value: 65542, isUnsigned: true)
!714 = !DIEnumerator(name: "__YESEXPR", value: 327680, isUnsigned: true)
!715 = !DIEnumerator(name: "__NOEXPR", value: 327681, isUnsigned: true)
!716 = !DIEnumerator(name: "__YESSTR", value: 327682, isUnsigned: true)
!717 = !DIEnumerator(name: "__NOSTR", value: 327683, isUnsigned: true)
!718 = !DIEnumerator(name: "_NL_MESSAGES_CODESET", value: 327684, isUnsigned: true)
!719 = !DIEnumerator(name: "_NL_NUM_LC_MESSAGES", value: 327685, isUnsigned: true)
!720 = !DIEnumerator(name: "_NL_PAPER_HEIGHT", value: 458752, isUnsigned: true)
!721 = !DIEnumerator(name: "_NL_PAPER_WIDTH", value: 458753, isUnsigned: true)
!722 = !DIEnumerator(name: "_NL_PAPER_CODESET", value: 458754, isUnsigned: true)
!723 = !DIEnumerator(name: "_NL_NUM_LC_PAPER", value: 458755, isUnsigned: true)
!724 = !DIEnumerator(name: "_NL_NAME_NAME_FMT", value: 524288, isUnsigned: true)
!725 = !DIEnumerator(name: "_NL_NAME_NAME_GEN", value: 524289, isUnsigned: true)
!726 = !DIEnumerator(name: "_NL_NAME_NAME_MR", value: 524290, isUnsigned: true)
!727 = !DIEnumerator(name: "_NL_NAME_NAME_MRS", value: 524291, isUnsigned: true)
!728 = !DIEnumerator(name: "_NL_NAME_NAME_MISS", value: 524292, isUnsigned: true)
!729 = !DIEnumerator(name: "_NL_NAME_NAME_MS", value: 524293, isUnsigned: true)
!730 = !DIEnumerator(name: "_NL_NAME_CODESET", value: 524294, isUnsigned: true)
!731 = !DIEnumerator(name: "_NL_NUM_LC_NAME", value: 524295, isUnsigned: true)
!732 = !DIEnumerator(name: "_NL_ADDRESS_POSTAL_FMT", value: 589824, isUnsigned: true)
!733 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NAME", value: 589825, isUnsigned: true)
!734 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_POST", value: 589826, isUnsigned: true)
!735 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB2", value: 589827, isUnsigned: true)
!736 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB3", value: 589828, isUnsigned: true)
!737 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_CAR", value: 589829, isUnsigned: true)
!738 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NUM", value: 589830, isUnsigned: true)
!739 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_ISBN", value: 589831, isUnsigned: true)
!740 = !DIEnumerator(name: "_NL_ADDRESS_LANG_NAME", value: 589832, isUnsigned: true)
!741 = !DIEnumerator(name: "_NL_ADDRESS_LANG_AB", value: 589833, isUnsigned: true)
!742 = !DIEnumerator(name: "_NL_ADDRESS_LANG_TERM", value: 589834, isUnsigned: true)
!743 = !DIEnumerator(name: "_NL_ADDRESS_LANG_LIB", value: 589835, isUnsigned: true)
!744 = !DIEnumerator(name: "_NL_ADDRESS_CODESET", value: 589836, isUnsigned: true)
!745 = !DIEnumerator(name: "_NL_NUM_LC_ADDRESS", value: 589837, isUnsigned: true)
!746 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_INT_FMT", value: 655360, isUnsigned: true)
!747 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_DOM_FMT", value: 655361, isUnsigned: true)
!748 = !DIEnumerator(name: "_NL_TELEPHONE_INT_SELECT", value: 655362, isUnsigned: true)
!749 = !DIEnumerator(name: "_NL_TELEPHONE_INT_PREFIX", value: 655363, isUnsigned: true)
!750 = !DIEnumerator(name: "_NL_TELEPHONE_CODESET", value: 655364, isUnsigned: true)
!751 = !DIEnumerator(name: "_NL_NUM_LC_TELEPHONE", value: 655365, isUnsigned: true)
!752 = !DIEnumerator(name: "_NL_MEASUREMENT_MEASUREMENT", value: 720896, isUnsigned: true)
!753 = !DIEnumerator(name: "_NL_MEASUREMENT_CODESET", value: 720897, isUnsigned: true)
!754 = !DIEnumerator(name: "_NL_NUM_LC_MEASUREMENT", value: 720898, isUnsigned: true)
!755 = !DIEnumerator(name: "_NL_IDENTIFICATION_TITLE", value: 786432, isUnsigned: true)
!756 = !DIEnumerator(name: "_NL_IDENTIFICATION_SOURCE", value: 786433, isUnsigned: true)
!757 = !DIEnumerator(name: "_NL_IDENTIFICATION_ADDRESS", value: 786434, isUnsigned: true)
!758 = !DIEnumerator(name: "_NL_IDENTIFICATION_CONTACT", value: 786435, isUnsigned: true)
!759 = !DIEnumerator(name: "_NL_IDENTIFICATION_EMAIL", value: 786436, isUnsigned: true)
!760 = !DIEnumerator(name: "_NL_IDENTIFICATION_TEL", value: 786437, isUnsigned: true)
!761 = !DIEnumerator(name: "_NL_IDENTIFICATION_FAX", value: 786438, isUnsigned: true)
!762 = !DIEnumerator(name: "_NL_IDENTIFICATION_LANGUAGE", value: 786439, isUnsigned: true)
!763 = !DIEnumerator(name: "_NL_IDENTIFICATION_TERRITORY", value: 786440, isUnsigned: true)
!764 = !DIEnumerator(name: "_NL_IDENTIFICATION_AUDIENCE", value: 786441, isUnsigned: true)
!765 = !DIEnumerator(name: "_NL_IDENTIFICATION_APPLICATION", value: 786442, isUnsigned: true)
!766 = !DIEnumerator(name: "_NL_IDENTIFICATION_ABBREVIATION", value: 786443, isUnsigned: true)
!767 = !DIEnumerator(name: "_NL_IDENTIFICATION_REVISION", value: 786444, isUnsigned: true)
!768 = !DIEnumerator(name: "_NL_IDENTIFICATION_DATE", value: 786445, isUnsigned: true)
!769 = !DIEnumerator(name: "_NL_IDENTIFICATION_CATEGORY", value: 786446, isUnsigned: true)
!770 = !DIEnumerator(name: "_NL_IDENTIFICATION_CODESET", value: 786447, isUnsigned: true)
!771 = !DIEnumerator(name: "_NL_NUM_LC_IDENTIFICATION", value: 786448, isUnsigned: true)
!772 = !DIEnumerator(name: "_NL_NUM", value: 786449, isUnsigned: true)
!773 = distinct !DICompileUnit(language: DW_LANG_C99, file: !774, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !223, retainedTypes: !349, splitDebugInlining: false, nameTableKind: None)
!774 = !DIFile(filename: "lib/setlocale_null.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!775 = !{!"clang version 12.0.1"}
!776 = !{i32 7, !"Dwarf Version", i32 4}
!777 = !{i32 2, !"Debug Info Version", i32 3}
!778 = !{i32 1, !"wchar_size", i32 4}
!779 = !{i32 7, !"PIC Level", i32 2}
!780 = !{i32 7, !"PIE Level", i32 2}
!781 = distinct !DISubprogram(name: "usage", scope: !3, file: !3, line: 223, type: !782, scopeLine: 224, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !784)
!782 = !DISubroutineType(types: !783)
!783 = !{null, !64}
!784 = !{!785}
!785 = !DILocalVariable(name: "status", arg: 1, scope: !781, file: !3, line: 223, type: !64)
!786 = !DILocation(line: 0, scope: !781)
!787 = !DILocation(line: 225, column: 14, scope: !788)
!788 = distinct !DILexicalBlock(scope: !781, file: !3, line: 225, column: 7)
!789 = !DILocation(line: 225, column: 7, scope: !781)
!790 = !DILocation(line: 226, column: 5, scope: !791)
!791 = distinct !DILexicalBlock(scope: !788, file: !3, line: 226, column: 5)
!792 = !{!793, !793, i64 0}
!793 = !{!"any pointer", !794, i64 0}
!794 = !{!"omnipotent char", !795, i64 0}
!795 = !{!"Simple C/C++ TBAA"}
!796 = !DILocation(line: 229, column: 7, scope: !797)
!797 = distinct !DILexicalBlock(scope: !788, file: !3, line: 228, column: 5)
!798 = !DILocation(line: 583, column: 3, scope: !799, inlinedAt: !802)
!799 = distinct !DISubprogram(name: "emit_stdin_note", scope: !36, file: !36, line: 581, type: !800, scopeLine: 582, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !223)
!800 = !DISubroutineType(types: !801)
!801 = !{null}
!802 = distinct !DILocation(line: 237, column: 7, scope: !797)
!803 = !DILocation(line: 244, column: 9, scope: !804)
!804 = distinct !DILexicalBlock(scope: !797, file: !3, line: 238, column: 11)
!805 = !DILocation(line: 249, column: 7, scope: !797)
!806 = !DILocation(line: 258, column: 7, scope: !797)
!807 = !DILocation(line: 266, column: 9, scope: !808)
!808 = distinct !DILexicalBlock(scope: !797, file: !3, line: 261, column: 11)
!809 = !DILocation(line: 269, column: 7, scope: !797)
!810 = !DILocation(line: 273, column: 7, scope: !797)
!811 = !DILocation(line: 283, column: 7, scope: !797)
!812 = !DILocation(line: 284, column: 7, scope: !797)
!813 = !DILocation(line: 285, column: 7, scope: !797)
!814 = !DILocalVariable(name: "program", arg: 1, scope: !815, file: !36, line: 634, type: !93)
!815 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !36, file: !36, line: 634, type: !816, scopeLine: 635, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !818)
!816 = !DISubroutineType(types: !817)
!817 = !{null, !93}
!818 = !{!814, !819, !828, !829, !831}
!819 = !DILocalVariable(name: "infomap", scope: !815, file: !36, line: 636, type: !820)
!820 = !DICompositeType(tag: DW_TAG_array_type, baseType: !821, size: 896, elements: !826)
!821 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !822)
!822 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !815, file: !36, line: 636, size: 128, elements: !823)
!823 = !{!824, !825}
!824 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !822, file: !36, line: 636, baseType: !93, size: 64)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !822, file: !36, line: 636, baseType: !93, size: 64, offset: 64)
!826 = !{!827}
!827 = !DISubrange(count: 7)
!828 = !DILocalVariable(name: "node", scope: !815, file: !36, line: 646, type: !93)
!829 = !DILocalVariable(name: "map_prog", scope: !815, file: !36, line: 647, type: !830)
!830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !821, size: 64)
!831 = !DILocalVariable(name: "lc_messages", scope: !815, file: !36, line: 659, type: !93)
!832 = !DILocation(line: 0, scope: !815, inlinedAt: !833)
!833 = distinct !DILocation(line: 295, column: 7, scope: !797)
!834 = !DILocation(line: 636, column: 3, scope: !815, inlinedAt: !833)
!835 = !DILocation(line: 636, column: 67, scope: !815, inlinedAt: !833)
!836 = !DILocation(line: 647, column: 36, scope: !815, inlinedAt: !833)
!837 = !DILocation(line: 649, column: 3, scope: !815, inlinedAt: !833)
!838 = !DILocation(line: 649, column: 33, scope: !815, inlinedAt: !833)
!839 = !DILocation(line: 650, column: 13, scope: !815, inlinedAt: !833)
!840 = !DILocation(line: 649, column: 20, scope: !815, inlinedAt: !833)
!841 = !{!842, !793, i64 0}
!842 = !{!"infomap", !793, i64 0, !793, i64 8}
!843 = !DILocation(line: 649, column: 10, scope: !815, inlinedAt: !833)
!844 = !DILocation(line: 649, column: 28, scope: !815, inlinedAt: !833)
!845 = distinct !{!845, !837, !839, !846}
!846 = !{!"llvm.loop.mustprogress"}
!847 = !DILocation(line: 652, column: 17, scope: !848, inlinedAt: !833)
!848 = distinct !DILexicalBlock(scope: !815, file: !36, line: 652, column: 7)
!849 = !{!842, !793, i64 8}
!850 = !DILocation(line: 652, column: 7, scope: !848, inlinedAt: !833)
!851 = !DILocation(line: 652, column: 7, scope: !815, inlinedAt: !833)
!852 = !DILocation(line: 655, column: 3, scope: !815, inlinedAt: !833)
!853 = !DILocation(line: 659, column: 29, scope: !815, inlinedAt: !833)
!854 = !DILocation(line: 660, column: 7, scope: !855, inlinedAt: !833)
!855 = distinct !DILexicalBlock(scope: !815, file: !36, line: 660, column: 7)
!856 = !DILocation(line: 660, column: 19, scope: !855, inlinedAt: !833)
!857 = !DILocation(line: 660, column: 22, scope: !855, inlinedAt: !833)
!858 = !DILocation(line: 660, column: 7, scope: !815, inlinedAt: !833)
!859 = !DILocation(line: 666, column: 7, scope: !860, inlinedAt: !833)
!860 = distinct !DILexicalBlock(scope: !855, file: !36, line: 661, column: 5)
!861 = !DILocation(line: 668, column: 5, scope: !860, inlinedAt: !833)
!862 = !DILocation(line: 669, column: 3, scope: !815, inlinedAt: !833)
!863 = !DILocation(line: 671, column: 3, scope: !815, inlinedAt: !833)
!864 = !DILocation(line: 673, column: 1, scope: !815, inlinedAt: !833)
!865 = !DILocation(line: 298, column: 3, scope: !781)
!866 = !DISubprogram(name: "dcgettext", scope: !867, file: !867, line: 51, type: !868, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !223)
!867 = !DIFile(filename: "/usr/include/libintl.h", directory: "")
!868 = !DISubroutineType(types: !869)
!869 = !{!59, !93, !93, !64}
!870 = !DISubprogram(name: "fputs_unlocked", scope: !871, file: !871, line: 667, type: !872, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !223)
!871 = !DIFile(filename: "/usr/include/stdio.h", directory: "")
!872 = !DISubroutineType(types: !873)
!873 = !{!64, !93, !120}
!874 = !DISubprogram(name: "setlocale", scope: !875, file: !875, line: 122, type: !876, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !223)
!875 = !DIFile(filename: "/usr/include/locale.h", directory: "")
!876 = !DISubroutineType(types: !877)
!877 = !{!59, !64, !93}
!878 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 861, type: !879, scopeLine: 862, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !882)
!879 = !DISubroutineType(types: !880)
!880 = !{!64, !64, !881}
!881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64)
!882 = !{!883, !884, !885, !886, !887, !888, !889, !890, !891, !892, !893, !894, !896, !899, !902, !903, !906}
!883 = !DILocalVariable(name: "argc", arg: 1, scope: !878, file: !3, line: 861, type: !64)
!884 = !DILocalVariable(name: "argv", arg: 2, scope: !878, file: !3, line: 861, type: !881)
!885 = !DILocalVariable(name: "bin_buffer_unaligned", scope: !878, file: !3, line: 863, type: !159)
!886 = !DILocalVariable(name: "bin_buffer", scope: !878, file: !3, line: 865, type: !65)
!887 = !DILocalVariable(name: "do_check", scope: !878, file: !3, line: 866, type: !71)
!888 = !DILocalVariable(name: "opt", scope: !878, file: !3, line: 867, type: !64)
!889 = !DILocalVariable(name: "ok", scope: !878, file: !3, line: 868, type: !71)
!890 = !DILocalVariable(name: "binary", scope: !878, file: !3, line: 869, type: !64)
!891 = !DILocalVariable(name: "prefix_tag", scope: !878, file: !3, line: 870, type: !71)
!892 = !DILocalVariable(name: "short_opts", scope: !878, file: !3, line: 889, type: !93)
!893 = !DILocalVariable(name: "operand_lim", scope: !878, file: !3, line: 1038, type: !881)
!894 = !DILocalVariable(name: "operandp", scope: !895, file: !3, line: 1042, type: !881)
!895 = distinct !DILexicalBlock(scope: !878, file: !3, line: 1042, column: 3)
!896 = !DILocalVariable(name: "file", scope: !897, file: !3, line: 1044, type: !59)
!897 = distinct !DILexicalBlock(scope: !898, file: !3, line: 1043, column: 5)
!898 = distinct !DILexicalBlock(scope: !895, file: !3, line: 1042, column: 3)
!899 = !DILocalVariable(name: "file_is_binary", scope: !900, file: !3, line: 1050, type: !64)
!900 = distinct !DILexicalBlock(scope: !901, file: !3, line: 1049, column: 9)
!901 = distinct !DILexicalBlock(scope: !897, file: !3, line: 1046, column: 11)
!902 = !DILocalVariable(name: "missing", scope: !900, file: !3, line: 1051, type: !71)
!903 = !DILocalVariable(name: "needs_escape", scope: !904, file: !3, line: 1064, type: !71)
!904 = distinct !DILexicalBlock(scope: !905, file: !3, line: 1056, column: 13)
!905 = distinct !DILexicalBlock(scope: !900, file: !3, line: 1053, column: 15)
!906 = !DILocalVariable(name: "i", scope: !907, file: !3, line: 1089, type: !62)
!907 = distinct !DILexicalBlock(scope: !904, file: !3, line: 1089, column: 15)
!908 = !DILocation(line: 0, scope: !878)
!909 = !DILocation(line: 863, column: 3, scope: !878)
!910 = !DILocation(line: 863, column: 17, scope: !878)
!911 = !DILocation(line: 874, column: 21, scope: !878)
!912 = !DILocation(line: 874, column: 3, scope: !878)
!913 = !DILocation(line: 875, column: 3, scope: !878)
!914 = !DILocation(line: 876, column: 3, scope: !878)
!915 = !DILocation(line: 877, column: 3, scope: !878)
!916 = !DILocation(line: 879, column: 3, scope: !878)
!917 = !DILocation(line: 883, column: 12, scope: !878)
!918 = !DILocation(line: 883, column: 3, scope: !878)
!919 = !DILocation(line: 892, column: 3, scope: !878)
!920 = !DILocation(line: 869, column: 7, scope: !878)
!921 = !DILocation(line: 870, column: 8, scope: !878)
!922 = !DILocation(line: 866, column: 8, scope: !878)
!923 = !DILocation(line: 892, column: 17, scope: !878)
!924 = distinct !{!924, !919, !925, !846}
!925 = !DILocation(line: 948, column: 7, scope: !878)
!926 = !DILocation(line: 912, column: 9, scope: !927)
!927 = distinct !DILexicalBlock(scope: !878, file: !3, line: 894, column: 7)
!928 = !DILocation(line: 914, column: 21, scope: !927)
!929 = !DILocation(line: 915, column: 14, scope: !927)
!930 = !DILocation(line: 916, column: 15, scope: !927)
!931 = !DILocation(line: 917, column: 9, scope: !927)
!932 = !DILocation(line: 920, column: 9, scope: !927)
!933 = !DILocation(line: 922, column: 21, scope: !927)
!934 = !DILocation(line: 923, column: 14, scope: !927)
!935 = !DILocation(line: 924, column: 15, scope: !927)
!936 = !DILocation(line: 925, column: 9, scope: !927)
!937 = !DILocation(line: 927, column: 24, scope: !927)
!938 = !DILocation(line: 928, column: 9, scope: !927)
!939 = !DILocation(line: 930, column: 21, scope: !927)
!940 = !DILocation(line: 931, column: 14, scope: !927)
!941 = !DILocation(line: 932, column: 15, scope: !927)
!942 = !DILocation(line: 933, column: 9, scope: !927)
!943 = !DILocation(line: 935, column: 16, scope: !927)
!944 = !DILocation(line: 936, column: 9, scope: !927)
!945 = !DILocation(line: 940, column: 9, scope: !927)
!946 = !DILocation(line: 942, column: 15, scope: !927)
!947 = !DILocation(line: 943, column: 9, scope: !927)
!948 = !DILocation(line: 944, column: 7, scope: !927)
!949 = !DILocation(line: 945, column: 7, scope: !927)
!950 = !DILocation(line: 947, column: 9, scope: !927)
!951 = !DILocation(line: 950, column: 26, scope: !878)
!952 = !DILocation(line: 964, column: 20, scope: !878)
!953 = !DILocation(line: 967, column: 7, scope: !954)
!954 = distinct !DILexicalBlock(scope: !878, file: !3, line: 967, column: 7)
!955 = !DILocation(line: 967, column: 18, scope: !954)
!956 = !DILocation(line: 974, column: 19, scope: !957)
!957 = distinct !DILexicalBlock(scope: !954, file: !3, line: 968, column: 4)
!958 = !DILocation(line: 974, column: 6, scope: !957)
!959 = !DILocation(line: 975, column: 6, scope: !957)
!960 = !DILocation(line: 978, column: 7, scope: !961)
!961 = distinct !DILexicalBlock(scope: !878, file: !3, line: 978, column: 7)
!962 = !DILocation(line: 978, column: 21, scope: !961)
!963 = !DILocation(line: 980, column: 20, scope: !964)
!964 = distinct !DILexicalBlock(scope: !961, file: !3, line: 979, column: 5)
!965 = !DILocation(line: 980, column: 7, scope: !964)
!966 = !DILocation(line: 982, column: 7, scope: !964)
!967 = !DILocation(line: 985, column: 18, scope: !968)
!968 = distinct !DILexicalBlock(scope: !878, file: !3, line: 985, column: 7)
!969 = !DILocation(line: 987, column: 20, scope: !970)
!970 = distinct !DILexicalBlock(scope: !968, file: !3, line: 986, column: 5)
!971 = !DILocation(line: 987, column: 7, scope: !970)
!972 = !DILocation(line: 989, column: 7, scope: !970)
!973 = !DILocation(line: 992, column: 9, scope: !974)
!974 = distinct !DILexicalBlock(scope: !878, file: !3, line: 992, column: 7)
!975 = !DILocation(line: 992, column: 19, scope: !974)
!976 = !DILocation(line: 994, column: 20, scope: !977)
!977 = distinct !DILexicalBlock(scope: !974, file: !3, line: 993, column: 5)
!978 = !DILocation(line: 994, column: 7, scope: !977)
!979 = !DILocation(line: 996, column: 7, scope: !977)
!980 = !DILocation(line: 999, column: 7, scope: !981)
!981 = distinct !DILexicalBlock(scope: !878, file: !3, line: 999, column: 7)
!982 = !DILocation(line: 999, column: 22, scope: !981)
!983 = !DILocation(line: 1002, column: 14, scope: !984)
!984 = distinct !DILexicalBlock(scope: !981, file: !3, line: 1000, column: 5)
!985 = !DILocation(line: 1001, column: 7, scope: !984)
!986 = !DILocation(line: 1004, column: 7, scope: !984)
!987 = !DILocation(line: 1007, column: 7, scope: !988)
!988 = distinct !DILexicalBlock(scope: !878, file: !3, line: 1007, column: 7)
!989 = !DILocation(line: 1007, column: 19, scope: !988)
!990 = !DILocation(line: 1010, column: 8, scope: !991)
!991 = distinct !DILexicalBlock(scope: !988, file: !3, line: 1008, column: 5)
!992 = !DILocation(line: 1009, column: 7, scope: !991)
!993 = !DILocation(line: 1011, column: 7, scope: !991)
!994 = !DILocation(line: 1014, column: 7, scope: !995)
!995 = distinct !DILexicalBlock(scope: !878, file: !3, line: 1014, column: 7)
!996 = !DILocation(line: 1014, column: 12, scope: !995)
!997 = !DILocation(line: 1017, column: 8, scope: !998)
!998 = distinct !DILexicalBlock(scope: !995, file: !3, line: 1015, column: 5)
!999 = !DILocation(line: 1016, column: 7, scope: !998)
!1000 = !DILocation(line: 1018, column: 7, scope: !998)
!1001 = !DILocation(line: 1021, column: 7, scope: !1002)
!1002 = distinct !DILexicalBlock(scope: !878, file: !3, line: 1021, column: 7)
!1003 = !DILocation(line: 1021, column: 13, scope: !1002)
!1004 = !DILocation(line: 1024, column: 8, scope: !1005)
!1005 = distinct !DILexicalBlock(scope: !1002, file: !3, line: 1022, column: 5)
!1006 = !DILocation(line: 1023, column: 7, scope: !1005)
!1007 = !DILocation(line: 1025, column: 7, scope: !1005)
!1008 = !DILocation(line: 1028, column: 7, scope: !1009)
!1009 = distinct !DILexicalBlock(scope: !878, file: !3, line: 1028, column: 7)
!1010 = !DILocation(line: 1028, column: 16, scope: !1009)
!1011 = !DILocation(line: 1028, column: 14, scope: !1009)
!1012 = !DILocation(line: 1028, column: 7, scope: !878)
!1013 = !DILocation(line: 1031, column: 9, scope: !1014)
!1014 = distinct !DILexicalBlock(scope: !1009, file: !3, line: 1029, column: 4)
!1015 = !DILocation(line: 1030, column: 6, scope: !1014)
!1016 = !DILocation(line: 1032, column: 6, scope: !1014)
!1017 = !DILocation(line: 1035, column: 7, scope: !878)
!1018 = !DILocation(line: 1038, column: 29, scope: !878)
!1019 = !DILocation(line: 1039, column: 7, scope: !1020)
!1020 = distinct !DILexicalBlock(scope: !878, file: !3, line: 1039, column: 7)
!1021 = !{!1022, !1022, i64 0}
!1022 = !{!"int", !794, i64 0}
!1023 = !DILocation(line: 1039, column: 14, scope: !1020)
!1024 = !DILocation(line: 1039, column: 7, scope: !878)
!1025 = !DILocation(line: 1040, column: 17, scope: !1020)
!1026 = !DILocation(line: 1040, column: 20, scope: !1020)
!1027 = !DILocation(line: 1040, column: 5, scope: !1020)
!1028 = !DILocation(line: 1042, column: 31, scope: !895)
!1029 = !DILocation(line: 0, scope: !895)
!1030 = !DILocation(line: 1042, column: 50, scope: !898)
!1031 = !DILocation(line: 1042, column: 3, scope: !895)
!1032 = !DILocation(line: 1106, column: 7, scope: !1033)
!1033 = distinct !DILexicalBlock(scope: !878, file: !3, line: 1106, column: 7)
!1034 = !DILocation(line: 1106, column: 23, scope: !1033)
!1035 = !DILocation(line: 1044, column: 20, scope: !897)
!1036 = !DILocation(line: 0, scope: !897)
!1037 = !DILocation(line: 1046, column: 11, scope: !897)
!1038 = !DILocation(line: 0, scope: !90, inlinedAt: !1039)
!1039 = distinct !DILocation(line: 1047, column: 15, scope: !901)
!1040 = !DILocation(line: 661, column: 3, scope: !90, inlinedAt: !1039)
!1041 = !DILocation(line: 661, column: 17, scope: !90, inlinedAt: !1039)
!1042 = !DILocation(line: 665, column: 3, scope: !90, inlinedAt: !1039)
!1043 = !DILocation(line: 666, column: 3, scope: !90, inlinedAt: !1039)
!1044 = !DILocation(line: 667, column: 19, scope: !90, inlinedAt: !1039)
!1045 = !DILocation(line: 669, column: 7, scope: !90, inlinedAt: !1039)
!1046 = !DILocation(line: 671, column: 23, scope: !1047, inlinedAt: !1039)
!1047 = distinct !DILexicalBlock(scope: !1048, file: !3, line: 670, column: 5)
!1048 = distinct !DILexicalBlock(scope: !90, file: !3, line: 669, column: 7)
!1049 = !DILocation(line: 672, column: 24, scope: !1047, inlinedAt: !1039)
!1050 = !DILocation(line: 673, column: 26, scope: !1047, inlinedAt: !1039)
!1051 = !DILocation(line: 674, column: 5, scope: !1047, inlinedAt: !1039)
!1052 = !DILocation(line: 677, column: 26, scope: !1053, inlinedAt: !1039)
!1053 = distinct !DILexicalBlock(scope: !1048, file: !3, line: 676, column: 5)
!1054 = !DILocation(line: 678, column: 28, scope: !1055, inlinedAt: !1039)
!1055 = distinct !DILexicalBlock(scope: !1053, file: !3, line: 678, column: 11)
!1056 = !DILocation(line: 678, column: 11, scope: !1053, inlinedAt: !1039)
!1057 = !DILocation(line: 680, column: 21, scope: !1058, inlinedAt: !1039)
!1058 = distinct !DILexicalBlock(scope: !1055, file: !3, line: 679, column: 9)
!1059 = !DILocation(line: 680, column: 34, scope: !1058, inlinedAt: !1039)
!1060 = !DILocation(line: 680, column: 11, scope: !1058, inlinedAt: !1039)
!1061 = !DILocation(line: 681, column: 11, scope: !1058, inlinedAt: !1039)
!1062 = !DILocation(line: 0, scope: !1048, inlinedAt: !1039)
!1063 = !DILocation(line: 686, column: 8, scope: !90, inlinedAt: !1039)
!1064 = !DILocation(line: 687, column: 24, scope: !90, inlinedAt: !1039)
!1065 = !{!1066, !1066, i64 0}
!1066 = !{!"long", !794, i64 0}
!1067 = !DILocation(line: 688, column: 3, scope: !90, inlinedAt: !1039)
!1068 = !DILocation(line: 660, column: 8, scope: !90, inlinedAt: !1039)
!1069 = !DILocation(line: 659, column: 8, scope: !90, inlinedAt: !1039)
!1070 = !DILocation(line: 658, column: 13, scope: !90, inlinedAt: !1039)
!1071 = !DILocation(line: 657, column: 13, scope: !90, inlinedAt: !1039)
!1072 = !DILocation(line: 656, column: 13, scope: !90, inlinedAt: !1039)
!1073 = !DILocation(line: 655, column: 13, scope: !90, inlinedAt: !1039)
!1074 = !DILocation(line: 695, column: 7, scope: !168, inlinedAt: !1039)
!1075 = !DILocation(line: 696, column: 23, scope: !1076, inlinedAt: !1039)
!1076 = distinct !DILexicalBlock(scope: !168, file: !3, line: 696, column: 11)
!1077 = !DILocation(line: 696, column: 11, scope: !168, inlinedAt: !1039)
!1078 = !DILocation(line: 697, column: 9, scope: !1076, inlinedAt: !1039)
!1079 = !DILocalVariable(name: "__lineptr", arg: 1, scope: !1080, file: !1081, line: 118, type: !881)
!1080 = distinct !DISubprogram(name: "getline", scope: !1081, file: !1081, line: 118, type: !1082, scopeLine: 119, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1084)
!1081 = !DIFile(filename: "/usr/include/bits/stdio.h", directory: "")
!1082 = !DISubroutineType(types: !1083)
!1083 = !{!174, !881, !358, !98}
!1084 = !{!1079, !1085, !1086}
!1085 = !DILocalVariable(name: "__n", arg: 2, scope: !1080, file: !1081, line: 118, type: !358)
!1086 = !DILocalVariable(name: "__stream", arg: 3, scope: !1080, file: !1081, line: 118, type: !98)
!1087 = !DILocation(line: 0, scope: !1080, inlinedAt: !1088)
!1088 = distinct !DILocation(line: 700, column: 21, scope: !168, inlinedAt: !1039)
!1089 = !DILocation(line: 120, column: 10, scope: !1080, inlinedAt: !1088)
!1090 = !DILocation(line: 0, scope: !168, inlinedAt: !1039)
!1091 = !DILocation(line: 701, column: 23, scope: !1092, inlinedAt: !1039)
!1092 = distinct !DILexicalBlock(scope: !168, file: !3, line: 701, column: 11)
!1093 = !DILocation(line: 701, column: 11, scope: !168, inlinedAt: !1039)
!1094 = !DILocation(line: 705, column: 11, scope: !1095, inlinedAt: !1039)
!1095 = distinct !DILexicalBlock(scope: !168, file: !3, line: 705, column: 11)
!1096 = !{!794, !794, i64 0}
!1097 = !DILocation(line: 705, column: 19, scope: !1095, inlinedAt: !1039)
!1098 = !DILocation(line: 705, column: 11, scope: !168, inlinedAt: !1039)
!1099 = !DILocation(line: 709, column: 28, scope: !1100, inlinedAt: !1039)
!1100 = distinct !DILexicalBlock(scope: !168, file: !3, line: 709, column: 11)
!1101 = !DILocation(line: 709, column: 11, scope: !1100, inlinedAt: !1039)
!1102 = !DILocation(line: 709, column: 33, scope: !1100, inlinedAt: !1039)
!1103 = !DILocation(line: 709, column: 11, scope: !168, inlinedAt: !1039)
!1104 = !DILocation(line: 710, column: 29, scope: !1100, inlinedAt: !1039)
!1105 = !DILocation(line: 712, column: 23, scope: !177, inlinedAt: !1039)
!1106 = !DILocation(line: 710, column: 9, scope: !1100, inlinedAt: !1039)
!1107 = !DILocalVariable(name: "s", arg: 1, scope: !1108, file: !3, line: 419, type: !59)
!1108 = distinct !DISubprogram(name: "split_3", scope: !3, file: !3, line: 419, type: !1109, scopeLine: 421, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1112)
!1109 = !DISubroutineType(types: !1110)
!1110 = !{!71, !59, !62, !1111, !206, !881}
!1111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !65, size: 64)
!1112 = !{!1107, !1113, !1114, !1115, !1116, !1117, !1118, !1119}
!1113 = !DILocalVariable(name: "s_len", arg: 2, scope: !1108, file: !3, line: 419, type: !62)
!1114 = !DILocalVariable(name: "hex_digest", arg: 3, scope: !1108, file: !3, line: 420, type: !1111)
!1115 = !DILocalVariable(name: "binary", arg: 4, scope: !1108, file: !3, line: 420, type: !206)
!1116 = !DILocalVariable(name: "file_name", arg: 5, scope: !1108, file: !3, line: 420, type: !881)
!1117 = !DILocalVariable(name: "escaped_filename", scope: !1108, file: !3, line: 422, type: !71)
!1118 = !DILocalVariable(name: "algo_name_len", scope: !1108, file: !3, line: 423, type: !62)
!1119 = !DILocalVariable(name: "i", scope: !1108, file: !3, line: 425, type: !62)
!1120 = !DILocation(line: 0, scope: !1108, inlinedAt: !1121)
!1121 = distinct !DILocation(line: 712, column: 14, scope: !177, inlinedAt: !1039)
!1122 = !DILocation(line: 426, column: 3, scope: !1108, inlinedAt: !1121)
!1123 = !DILocation(line: 426, column: 10, scope: !1108, inlinedAt: !1121)
!1124 = !DILocation(line: 427, column: 5, scope: !1108, inlinedAt: !1121)
!1125 = distinct !{!1125, !1122, !1126, !846}
!1126 = !DILocation(line: 427, column: 7, scope: !1108, inlinedAt: !1121)
!1127 = !DILocation(line: 429, column: 12, scope: !1128, inlinedAt: !1121)
!1128 = distinct !DILexicalBlock(scope: !1108, file: !3, line: 429, column: 7)
!1129 = !DILocation(line: 429, column: 7, scope: !1108, inlinedAt: !1121)
!1130 = !DILocation(line: 438, column: 7, scope: !1131, inlinedAt: !1121)
!1131 = distinct !DILexicalBlock(scope: !1108, file: !3, line: 438, column: 7)
!1132 = !DILocation(line: 438, column: 7, scope: !1108, inlinedAt: !1121)
!1133 = !DILocation(line: 440, column: 9, scope: !1134, inlinedAt: !1121)
!1134 = distinct !DILexicalBlock(scope: !1131, file: !3, line: 439, column: 5)
!1135 = !DILocation(line: 473, column: 11, scope: !1136, inlinedAt: !1121)
!1136 = distinct !DILexicalBlock(scope: !1134, file: !3, line: 473, column: 11)
!1137 = !DILocation(line: 473, column: 16, scope: !1136, inlinedAt: !1121)
!1138 = !DILocation(line: 473, column: 11, scope: !1134, inlinedAt: !1121)
!1139 = !DILocation(line: 475, column: 11, scope: !1140, inlinedAt: !1121)
!1140 = distinct !DILexicalBlock(scope: !1134, file: !3, line: 475, column: 11)
!1141 = !DILocation(line: 475, column: 16, scope: !1140, inlinedAt: !1121)
!1142 = !DILocation(line: 475, column: 11, scope: !1134, inlinedAt: !1121)
!1143 = !DILocation(line: 477, column: 11, scope: !1144, inlinedAt: !1121)
!1144 = distinct !DILexicalBlock(scope: !1140, file: !3, line: 476, column: 9)
!1145 = !DILocation(line: 479, column: 33, scope: !1144, inlinedAt: !1121)
!1146 = !DILocation(line: 479, column: 44, scope: !1144, inlinedAt: !1121)
!1147 = !DILocalVariable(name: "s", arg: 1, scope: !1148, file: !3, line: 375, type: !59)
!1148 = distinct !DISubprogram(name: "bsd_split_3", scope: !3, file: !3, line: 375, type: !1149, scopeLine: 377, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1151)
!1149 = !DISubroutineType(types: !1150)
!1150 = !{!71, !59, !62, !1111, !881, !71}
!1151 = !{!1147, !1152, !1153, !1154, !1155, !1156}
!1152 = !DILocalVariable(name: "s_len", arg: 2, scope: !1148, file: !3, line: 375, type: !62)
!1153 = !DILocalVariable(name: "hex_digest", arg: 3, scope: !1148, file: !3, line: 375, type: !1111)
!1154 = !DILocalVariable(name: "file_name", arg: 4, scope: !1148, file: !3, line: 376, type: !881)
!1155 = !DILocalVariable(name: "escaped_filename", arg: 5, scope: !1148, file: !3, line: 376, type: !71)
!1156 = !DILocalVariable(name: "i", scope: !1148, file: !3, line: 378, type: !62)
!1157 = !DILocation(line: 0, scope: !1148, inlinedAt: !1158)
!1158 = distinct !DILocation(line: 479, column: 18, scope: !1144, inlinedAt: !1121)
!1159 = !DILocation(line: 380, column: 13, scope: !1160, inlinedAt: !1158)
!1160 = distinct !DILexicalBlock(scope: !1148, file: !3, line: 380, column: 7)
!1161 = !DILocation(line: 380, column: 7, scope: !1148, inlinedAt: !1158)
!1162 = !DILocation(line: 385, column: 10, scope: !1148, inlinedAt: !1158)
!1163 = !DILocation(line: 385, column: 12, scope: !1148, inlinedAt: !1158)
!1164 = !DILocation(line: 385, column: 15, scope: !1148, inlinedAt: !1158)
!1165 = !DILocation(line: 385, column: 20, scope: !1148, inlinedAt: !1158)
!1166 = !DILocation(line: 385, column: 3, scope: !1148, inlinedAt: !1158)
!1167 = distinct !{!1167, !1166, !1168, !846}
!1168 = !DILocation(line: 386, column: 6, scope: !1148, inlinedAt: !1158)
!1169 = !DILocation(line: 388, column: 7, scope: !1170, inlinedAt: !1158)
!1170 = distinct !DILexicalBlock(scope: !1148, file: !3, line: 388, column: 7)
!1171 = !DILocation(line: 388, column: 7, scope: !1148, inlinedAt: !1158)
!1172 = !DILocation(line: 393, column: 24, scope: !1173, inlinedAt: !1158)
!1173 = distinct !DILexicalBlock(scope: !1148, file: !3, line: 393, column: 7)
!1174 = !DILocalVariable(name: "s", arg: 1, scope: !1175, file: !3, line: 312, type: !59)
!1175 = distinct !DISubprogram(name: "filename_unescape", scope: !3, file: !3, line: 312, type: !1176, scopeLine: 313, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1178)
!1176 = !DISubroutineType(types: !1177)
!1177 = !{!59, !59, !62}
!1178 = !{!1174, !1179, !1180, !1181}
!1179 = !DILocalVariable(name: "s_len", arg: 2, scope: !1175, file: !3, line: 312, type: !62)
!1180 = !DILocalVariable(name: "dst", scope: !1175, file: !3, line: 314, type: !59)
!1181 = !DILocalVariable(name: "i", scope: !1182, file: !3, line: 316, type: !62)
!1182 = distinct !DILexicalBlock(scope: !1175, file: !3, line: 316, column: 3)
!1183 = !DILocation(line: 0, scope: !1175, inlinedAt: !1184)
!1184 = distinct !DILocation(line: 393, column: 27, scope: !1173, inlinedAt: !1158)
!1185 = !DILocation(line: 0, scope: !1182, inlinedAt: !1184)
!1186 = !DILocation(line: 316, column: 3, scope: !1182, inlinedAt: !1184)
!1187 = !DILocation(line: 318, column: 15, scope: !1188, inlinedAt: !1184)
!1188 = distinct !DILexicalBlock(scope: !1189, file: !3, line: 317, column: 5)
!1189 = distinct !DILexicalBlock(scope: !1182, file: !3, line: 316, column: 3)
!1190 = !DILocation(line: 318, column: 7, scope: !1188, inlinedAt: !1184)
!1191 = !DILocation(line: 321, column: 17, scope: !1192, inlinedAt: !1184)
!1192 = distinct !DILexicalBlock(scope: !1193, file: !3, line: 321, column: 15)
!1193 = distinct !DILexicalBlock(scope: !1188, file: !3, line: 319, column: 9)
!1194 = !DILocation(line: 321, column: 15, scope: !1193, inlinedAt: !1184)
!1195 = !DILocation(line: 326, column: 11, scope: !1193, inlinedAt: !1184)
!1196 = !DILocation(line: 327, column: 19, scope: !1193, inlinedAt: !1184)
!1197 = !DILocation(line: 327, column: 11, scope: !1193, inlinedAt: !1184)
!1198 = !DILocation(line: 334, column: 15, scope: !1199, inlinedAt: !1184)
!1199 = distinct !DILexicalBlock(scope: !1193, file: !3, line: 328, column: 13)
!1200 = !DILocation(line: 0, scope: !1193, inlinedAt: !1184)
!1201 = !DILocation(line: 316, column: 34, scope: !1189, inlinedAt: !1184)
!1202 = !DILocation(line: 316, column: 24, scope: !1189, inlinedAt: !1184)
!1203 = distinct !{!1203, !1186, !1204, !846}
!1204 = !DILocation(line: 349, column: 5, scope: !1182, inlinedAt: !1184)
!1205 = !DILocation(line: 350, column: 11, scope: !1206, inlinedAt: !1184)
!1206 = distinct !DILexicalBlock(scope: !1175, file: !3, line: 350, column: 7)
!1207 = !DILocation(line: 350, column: 7, scope: !1175, inlinedAt: !1184)
!1208 = !DILocation(line: 351, column: 10, scope: !1206, inlinedAt: !1184)
!1209 = !DILocation(line: 351, column: 5, scope: !1206, inlinedAt: !1184)
!1210 = !DILocation(line: 396, column: 10, scope: !1148, inlinedAt: !1158)
!1211 = !DILocation(line: 398, column: 3, scope: !1148, inlinedAt: !1158)
!1212 = !DILocation(line: 398, column: 10, scope: !1148, inlinedAt: !1158)
!1213 = !DILocation(line: 399, column: 6, scope: !1148, inlinedAt: !1158)
!1214 = distinct !{!1214, !1211, !1213, !846}
!1215 = !DILocation(line: 406, column: 10, scope: !1148, inlinedAt: !1158)
!1216 = distinct !{!1216, !1217, !1218, !846}
!1217 = !DILocation(line: 406, column: 3, scope: !1148, inlinedAt: !1158)
!1218 = !DILocation(line: 407, column: 6, scope: !1148, inlinedAt: !1158)
!1219 = !DILocalVariable(name: "s", arg: 1, scope: !1220, file: !3, line: 359, type: !1223)
!1220 = distinct !DISubprogram(name: "hex_digits", scope: !3, file: !3, line: 359, type: !1221, scopeLine: 360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1224)
!1221 = !DISubroutineType(types: !1222)
!1222 = !{!71, !1223}
!1223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !243, size: 64)
!1224 = !{!1219, !1225}
!1225 = !DILocalVariable(name: "i", scope: !1226, file: !3, line: 361, type: !7)
!1226 = distinct !DILexicalBlock(scope: !1220, file: !3, line: 361, column: 3)
!1227 = !DILocation(line: 0, scope: !1220, inlinedAt: !1228)
!1228 = distinct !DILocation(line: 411, column: 10, scope: !1148, inlinedAt: !1158)
!1229 = !DILocation(line: 0, scope: !1226, inlinedAt: !1228)
!1230 = !DILocation(line: 361, column: 32, scope: !1231, inlinedAt: !1228)
!1231 = distinct !DILexicalBlock(scope: !1226, file: !3, line: 361, column: 3)
!1232 = !DILocation(line: 361, column: 3, scope: !1226, inlinedAt: !1228)
!1233 = !DILocation(line: 363, column: 12, scope: !1234, inlinedAt: !1228)
!1234 = distinct !DILexicalBlock(scope: !1235, file: !3, line: 363, column: 11)
!1235 = distinct !DILexicalBlock(scope: !1231, file: !3, line: 362, column: 5)
!1236 = !{!1237, !1237, i64 0}
!1237 = !{!"short", !794, i64 0}
!1238 = !DILocation(line: 363, column: 11, scope: !1235, inlinedAt: !1228)
!1239 = !DILocation(line: 365, column: 7, scope: !1235, inlinedAt: !1228)
!1240 = !DILocation(line: 361, column: 51, scope: !1231, inlinedAt: !1228)
!1241 = !DILocation(line: 361, column: 30, scope: !1231, inlinedAt: !1228)
!1242 = distinct !{!1242, !1232, !1243, !846}
!1243 = !DILocation(line: 366, column: 5, scope: !1226, inlinedAt: !1228)
!1244 = !DILocation(line: 489, column: 13, scope: !1245, inlinedAt: !1121)
!1245 = distinct !DILexicalBlock(scope: !1108, file: !3, line: 489, column: 7)
!1246 = !DILocation(line: 489, column: 19, scope: !1245, inlinedAt: !1121)
!1247 = !DILocation(line: 489, column: 45, scope: !1245, inlinedAt: !1121)
!1248 = !DILocation(line: 489, column: 50, scope: !1245, inlinedAt: !1121)
!1249 = !DILocation(line: 489, column: 44, scope: !1245, inlinedAt: !1121)
!1250 = !DILocation(line: 489, column: 42, scope: !1245, inlinedAt: !1121)
!1251 = !DILocation(line: 489, column: 17, scope: !1245, inlinedAt: !1121)
!1252 = !DILocation(line: 489, column: 7, scope: !1108, inlinedAt: !1121)
!1253 = !DILocation(line: 509, column: 8, scope: !1108, inlinedAt: !1121)
!1254 = !DILocation(line: 509, column: 5, scope: !1108, inlinedAt: !1121)
!1255 = !DILocation(line: 510, column: 8, scope: !1256, inlinedAt: !1121)
!1256 = distinct !DILexicalBlock(scope: !1108, file: !3, line: 510, column: 7)
!1257 = !DILocation(line: 513, column: 6, scope: !1108, inlinedAt: !1121)
!1258 = !DILocation(line: 513, column: 10, scope: !1108, inlinedAt: !1121)
!1259 = !DILocation(line: 0, scope: !1220, inlinedAt: !1260)
!1260 = distinct !DILocation(line: 515, column: 9, scope: !1261, inlinedAt: !1121)
!1261 = distinct !DILexicalBlock(scope: !1108, file: !3, line: 515, column: 7)
!1262 = !DILocation(line: 0, scope: !1226, inlinedAt: !1260)
!1263 = !DILocation(line: 361, column: 3, scope: !1226, inlinedAt: !1260)
!1264 = !DILocation(line: 363, column: 12, scope: !1234, inlinedAt: !1260)
!1265 = !DILocation(line: 363, column: 11, scope: !1235, inlinedAt: !1260)
!1266 = !DILocation(line: 365, column: 7, scope: !1235, inlinedAt: !1260)
!1267 = !DILocation(line: 367, column: 10, scope: !1220, inlinedAt: !1260)
!1268 = !DILocation(line: 367, column: 13, scope: !1220, inlinedAt: !1260)
!1269 = !DILocation(line: 515, column: 7, scope: !1108, inlinedAt: !1121)
!1270 = !DILocation(line: 519, column: 14, scope: !1271, inlinedAt: !1121)
!1271 = distinct !DILexicalBlock(scope: !1108, file: !3, line: 519, column: 7)
!1272 = !DILocation(line: 519, column: 18, scope: !1271, inlinedAt: !1121)
!1273 = !DILocation(line: 519, column: 24, scope: !1271, inlinedAt: !1121)
!1274 = !DILocation(line: 519, column: 28, scope: !1271, inlinedAt: !1121)
!1275 = !DILocation(line: 519, column: 40, scope: !1271, inlinedAt: !1121)
!1276 = !DILocation(line: 527, column: 11, scope: !1277, inlinedAt: !1121)
!1277 = distinct !DILexicalBlock(scope: !1278, file: !3, line: 527, column: 11)
!1278 = distinct !DILexicalBlock(scope: !1271, file: !3, line: 520, column: 5)
!1279 = !DILocation(line: 527, column: 24, scope: !1277, inlinedAt: !1121)
!1280 = !DILocation(line: 527, column: 11, scope: !1278, inlinedAt: !1121)
!1281 = !DILocation(line: 529, column: 20, scope: !1278, inlinedAt: !1121)
!1282 = !DILocation(line: 530, column: 5, scope: !1278, inlinedAt: !1121)
!1283 = !DILocation(line: 531, column: 12, scope: !1284, inlinedAt: !1121)
!1284 = distinct !DILexicalBlock(scope: !1271, file: !3, line: 531, column: 12)
!1285 = !DILocation(line: 531, column: 25, scope: !1284, inlinedAt: !1121)
!1286 = !DILocation(line: 531, column: 12, scope: !1271, inlinedAt: !1121)
!1287 = !DILocation(line: 533, column: 20, scope: !1288, inlinedAt: !1121)
!1288 = distinct !DILexicalBlock(scope: !1284, file: !3, line: 532, column: 5)
!1289 = !DILocation(line: 534, column: 21, scope: !1288, inlinedAt: !1121)
!1290 = !DILocation(line: 535, column: 5, scope: !1288, inlinedAt: !1121)
!1291 = !DILocation(line: 539, column: 17, scope: !1108, inlinedAt: !1121)
!1292 = !DILocation(line: 541, column: 7, scope: !1108, inlinedAt: !1121)
!1293 = !DILocation(line: 542, column: 44, scope: !1294, inlinedAt: !1121)
!1294 = distinct !DILexicalBlock(scope: !1108, file: !3, line: 541, column: 7)
!1295 = !DILocation(line: 0, scope: !1175, inlinedAt: !1296)
!1296 = distinct !DILocation(line: 542, column: 12, scope: !1294, inlinedAt: !1121)
!1297 = !DILocation(line: 0, scope: !1182, inlinedAt: !1296)
!1298 = !DILocation(line: 316, column: 24, scope: !1189, inlinedAt: !1296)
!1299 = !DILocation(line: 316, column: 3, scope: !1182, inlinedAt: !1296)
!1300 = !DILocation(line: 318, column: 15, scope: !1188, inlinedAt: !1296)
!1301 = !DILocation(line: 318, column: 7, scope: !1188, inlinedAt: !1296)
!1302 = !DILocation(line: 321, column: 17, scope: !1192, inlinedAt: !1296)
!1303 = !DILocation(line: 321, column: 15, scope: !1193, inlinedAt: !1296)
!1304 = !DILocation(line: 326, column: 11, scope: !1193, inlinedAt: !1296)
!1305 = !DILocation(line: 327, column: 19, scope: !1193, inlinedAt: !1296)
!1306 = !DILocation(line: 327, column: 11, scope: !1193, inlinedAt: !1296)
!1307 = !DILocation(line: 334, column: 15, scope: !1199, inlinedAt: !1296)
!1308 = !DILocation(line: 0, scope: !1193, inlinedAt: !1296)
!1309 = !DILocation(line: 316, column: 34, scope: !1189, inlinedAt: !1296)
!1310 = distinct !{!1310, !1299, !1311, !846}
!1311 = !DILocation(line: 349, column: 5, scope: !1182, inlinedAt: !1296)
!1312 = !DILocation(line: 350, column: 15, scope: !1206, inlinedAt: !1296)
!1313 = !DILocation(line: 350, column: 11, scope: !1206, inlinedAt: !1296)
!1314 = !DILocation(line: 350, column: 7, scope: !1175, inlinedAt: !1296)
!1315 = !DILocation(line: 351, column: 10, scope: !1206, inlinedAt: !1296)
!1316 = !DILocation(line: 351, column: 5, scope: !1206, inlinedAt: !1296)
!1317 = !DILocation(line: 542, column: 49, scope: !1294, inlinedAt: !1121)
!1318 = !DILocation(line: 713, column: 14, scope: !177, inlinedAt: !1039)
!1319 = !DILocation(line: 367, column: 10, scope: !1220, inlinedAt: !1228)
!1320 = !DILocation(line: 367, column: 13, scope: !1220, inlinedAt: !1228)
!1321 = !DILocation(line: 713, column: 29, scope: !177, inlinedAt: !1039)
!1322 = !DILocation(line: 713, column: 32, scope: !177, inlinedAt: !1039)
!1323 = !DILocation(line: 712, column: 11, scope: !168, inlinedAt: !1039)
!1324 = !DILocation(line: 715, column: 11, scope: !1325, inlinedAt: !1039)
!1325 = distinct !DILexicalBlock(scope: !177, file: !3, line: 714, column: 9)
!1326 = !DILocation(line: 717, column: 15, scope: !1327, inlinedAt: !1039)
!1327 = distinct !DILexicalBlock(scope: !1325, file: !3, line: 717, column: 15)
!1328 = !DILocation(line: 717, column: 15, scope: !1325, inlinedAt: !1039)
!1329 = !DILocation(line: 720, column: 22, scope: !1330, inlinedAt: !1039)
!1330 = distinct !DILexicalBlock(scope: !1327, file: !3, line: 718, column: 13)
!1331 = !DILocation(line: 722, column: 22, scope: !1330, inlinedAt: !1039)
!1332 = !DILocation(line: 719, column: 15, scope: !1330, inlinedAt: !1039)
!1333 = !DILocation(line: 724, column: 13, scope: !1330, inlinedAt: !1039)
!1334 = !DILocation(line: 726, column: 11, scope: !1325, inlinedAt: !1039)
!1335 = !DILocation(line: 727, column: 9, scope: !1325, inlinedAt: !1039)
!1336 = !DILocation(line: 735, column: 11, scope: !176, inlinedAt: !1039)
!1337 = !DILocation(line: 738, column: 33, scope: !176, inlinedAt: !1039)
!1338 = !DILocation(line: 738, column: 45, scope: !176, inlinedAt: !1039)
!1339 = !DILocation(line: 738, column: 48, scope: !176, inlinedAt: !1039)
!1340 = !DILocation(line: 0, scope: !176, inlinedAt: !1039)
!1341 = !DILocation(line: 742, column: 16, scope: !176, inlinedAt: !1039)
!1342 = !DILocation(line: 744, column: 15, scope: !176, inlinedAt: !1039)
!1343 = !DILocation(line: 746, column: 15, scope: !1344, inlinedAt: !1039)
!1344 = distinct !DILexicalBlock(scope: !183, file: !3, line: 745, column: 13)
!1345 = !DILocation(line: 747, column: 20, scope: !1346, inlinedAt: !1039)
!1346 = distinct !DILexicalBlock(scope: !1344, file: !3, line: 747, column: 19)
!1347 = !DILocation(line: 747, column: 19, scope: !1344, inlinedAt: !1039)
!1348 = !DILocation(line: 749, column: 23, scope: !1349, inlinedAt: !1039)
!1349 = distinct !DILexicalBlock(scope: !1346, file: !3, line: 748, column: 17)
!1350 = !DILocalVariable(name: "__c", arg: 1, scope: !1351, file: !1081, line: 108, type: !64)
!1351 = distinct !DISubprogram(name: "putchar_unlocked", scope: !1081, file: !1081, line: 108, type: !1352, scopeLine: 109, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1354)
!1352 = !DISubroutineType(types: !1353)
!1353 = !{!64, !64}
!1354 = !{!1350}
!1355 = !DILocation(line: 0, scope: !1351, inlinedAt: !1356)
!1356 = distinct !DILocation(line: 750, column: 21, scope: !1357, inlinedAt: !1039)
!1357 = distinct !DILexicalBlock(scope: !1349, file: !3, line: 749, column: 23)
!1358 = !DILocation(line: 110, column: 10, scope: !1351, inlinedAt: !1356)
!1359 = !{!1360, !793, i64 40}
!1360 = !{!"_IO_FILE", !1022, i64 0, !793, i64 8, !793, i64 16, !793, i64 24, !793, i64 32, !793, i64 40, !793, i64 48, !793, i64 56, !793, i64 64, !793, i64 72, !793, i64 80, !793, i64 88, !793, i64 96, !793, i64 104, !1022, i64 112, !1022, i64 116, !1066, i64 120, !1237, i64 128, !794, i64 130, !794, i64 131, !793, i64 136, !1066, i64 144, !793, i64 152, !793, i64 160, !793, i64 168, !793, i64 176, !1066, i64 184, !1022, i64 192, !794, i64 196}
!1361 = !{!1360, !793, i64 48}
!1362 = !{!"branch_weights", i32 2000, i32 1}
!1363 = !DILocation(line: 751, column: 19, scope: !1349, inlinedAt: !1039)
!1364 = !DILocation(line: 752, column: 19, scope: !1349, inlinedAt: !1039)
!1365 = !DILocation(line: 753, column: 17, scope: !1349, inlinedAt: !1039)
!1366 = !DILocation(line: 755, column: 20, scope: !182, inlinedAt: !1039)
!1367 = !DILocation(line: 755, column: 35, scope: !182, inlinedAt: !1039)
!1368 = !DILocation(line: 762, column: 41, scope: !181, inlinedAt: !1039)
!1369 = !DILocation(line: 762, column: 58, scope: !181, inlinedAt: !1039)
!1370 = !DILocation(line: 0, scope: !181, inlinedAt: !1039)
!1371 = !DILocation(line: 767, column: 15, scope: !190, inlinedAt: !1039)
!1372 = !DILocation(line: 769, column: 23, scope: !1373, inlinedAt: !1039)
!1373 = distinct !DILexicalBlock(scope: !186, file: !3, line: 769, column: 23)
!1374 = !DILocation(line: 0, scope: !186, inlinedAt: !1039)
!1375 = !DILocation(line: 770, column: 34, scope: !187, inlinedAt: !1039)
!1376 = !DILocation(line: 770, column: 50, scope: !187, inlinedAt: !1039)
!1377 = !DILocation(line: 770, column: 26, scope: !187, inlinedAt: !1039)
!1378 = !DILocation(line: 770, column: 23, scope: !187, inlinedAt: !1039)
!1379 = !DILocation(line: 771, column: 23, scope: !187, inlinedAt: !1039)
!1380 = !DILocation(line: 771, column: 27, scope: !1381, inlinedAt: !1039)
!1381 = distinct !DILexicalBlock(scope: !192, file: !3, line: 771, column: 27)
!1382 = !DILocation(line: 0, scope: !192, inlinedAt: !1039)
!1383 = !DILocation(line: 772, column: 55, scope: !187, inlinedAt: !1039)
!1384 = !DILocation(line: 772, column: 31, scope: !187, inlinedAt: !1039)
!1385 = !DILocation(line: 772, column: 30, scope: !187, inlinedAt: !1039)
!1386 = !DILocation(line: 772, column: 27, scope: !187, inlinedAt: !1039)
!1387 = !DILocation(line: 769, column: 23, scope: !188, inlinedAt: !1039)
!1388 = !DILocation(line: 767, column: 53, scope: !189, inlinedAt: !1039)
!1389 = !DILocation(line: 767, column: 33, scope: !189, inlinedAt: !1039)
!1390 = distinct !{!1390, !1371, !1391, !846}
!1391 = !DILocation(line: 774, column: 17, scope: !190, inlinedAt: !1039)
!1392 = !DILocation(line: 0, scope: !190, inlinedAt: !1039)
!1393 = !DILocation(line: 775, column: 23, scope: !1394, inlinedAt: !1039)
!1394 = distinct !DILexicalBlock(scope: !181, file: !3, line: 775, column: 19)
!1395 = !DILocation(line: 775, column: 19, scope: !181, inlinedAt: !1039)
!1396 = !DILocation(line: 780, column: 20, scope: !1397, inlinedAt: !1039)
!1397 = distinct !DILexicalBlock(scope: !181, file: !3, line: 780, column: 19)
!1398 = !DILocation(line: 780, column: 19, scope: !181, inlinedAt: !1039)
!1399 = !DILocation(line: 782, column: 47, scope: !1400, inlinedAt: !1039)
!1400 = distinct !DILexicalBlock(scope: !1401, file: !3, line: 782, column: 23)
!1401 = distinct !DILexicalBlock(scope: !1397, file: !3, line: 781, column: 17)
!1402 = !DILocation(line: 782, column: 52, scope: !1400, inlinedAt: !1039)
!1403 = !DILocation(line: 782, column: 23, scope: !1401, inlinedAt: !1039)
!1404 = !DILocation(line: 784, column: 27, scope: !1405, inlinedAt: !1039)
!1405 = distinct !DILexicalBlock(scope: !1400, file: !3, line: 783, column: 21)
!1406 = !DILocation(line: 0, scope: !1351, inlinedAt: !1407)
!1407 = distinct !DILocation(line: 785, column: 25, scope: !1408, inlinedAt: !1039)
!1408 = distinct !DILexicalBlock(scope: !1405, file: !3, line: 784, column: 27)
!1409 = !DILocation(line: 110, column: 10, scope: !1351, inlinedAt: !1407)
!1410 = !DILocation(line: 786, column: 23, scope: !1405, inlinedAt: !1039)
!1411 = !DILocation(line: 789, column: 23, scope: !1401, inlinedAt: !1039)
!1412 = !DILocation(line: 790, column: 21, scope: !1413, inlinedAt: !1039)
!1413 = distinct !DILexicalBlock(scope: !1401, file: !3, line: 789, column: 23)
!1414 = !DILocation(line: 791, column: 29, scope: !1415, inlinedAt: !1039)
!1415 = distinct !DILexicalBlock(scope: !1413, file: !3, line: 791, column: 28)
!1416 = !DILocation(line: 791, column: 28, scope: !1413, inlinedAt: !1039)
!1417 = !DILocation(line: 792, column: 21, scope: !1415, inlinedAt: !1039)
!1418 = !DILocation(line: 795, column: 9, scope: !177, inlinedAt: !1039)
!1419 = !DILocalVariable(name: "__stream", arg: 1, scope: !1420, file: !1081, line: 128, type: !98)
!1420 = distinct !DISubprogram(name: "feof_unlocked", scope: !1081, file: !1081, line: 128, type: !1421, scopeLine: 129, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1423)
!1421 = !DISubroutineType(types: !1422)
!1422 = !{!64, !98}
!1423 = !{!1419}
!1424 = !DILocation(line: 0, scope: !1420, inlinedAt: !1425)
!1425 = distinct !DILocation(line: 797, column: 11, scope: !90, inlinedAt: !1039)
!1426 = !DILocation(line: 130, column: 10, scope: !1420, inlinedAt: !1425)
!1427 = !{!1360, !1022, i64 0}
!1428 = !DILocation(line: 797, column: 35, scope: !90, inlinedAt: !1039)
!1429 = !DILocalVariable(name: "__stream", arg: 1, scope: !1430, file: !1081, line: 135, type: !98)
!1430 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1081, file: !1081, line: 135, type: !1421, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1431)
!1431 = !{!1429}
!1432 = !DILocation(line: 0, scope: !1430, inlinedAt: !1433)
!1433 = distinct !DILocation(line: 797, column: 39, scope: !90, inlinedAt: !1039)
!1434 = distinct !{!1434, !1067, !1435, !846}
!1435 = !DILocation(line: 797, column: 64, scope: !90, inlinedAt: !1039)
!1436 = !DILocation(line: 799, column: 9, scope: !90, inlinedAt: !1039)
!1437 = !DILocation(line: 799, column: 3, scope: !90, inlinedAt: !1039)
!1438 = !DILocation(line: 0, scope: !1430, inlinedAt: !1439)
!1439 = distinct !DILocation(line: 801, column: 7, scope: !1440, inlinedAt: !1039)
!1440 = distinct !DILexicalBlock(scope: !90, file: !3, line: 801, column: 7)
!1441 = !DILocation(line: 137, column: 10, scope: !1430, inlinedAt: !1439)
!1442 = !DILocation(line: 801, column: 7, scope: !1440, inlinedAt: !1039)
!1443 = !DILocation(line: 801, column: 7, scope: !90, inlinedAt: !1039)
!1444 = !DILocation(line: 803, column: 20, scope: !1445, inlinedAt: !1039)
!1445 = distinct !DILexicalBlock(scope: !1440, file: !3, line: 802, column: 5)
!1446 = !DILocation(line: 803, column: 41, scope: !1445, inlinedAt: !1039)
!1447 = !DILocation(line: 803, column: 7, scope: !1445, inlinedAt: !1039)
!1448 = !DILocation(line: 804, column: 7, scope: !1445, inlinedAt: !1039)
!1449 = !DILocation(line: 807, column: 17, scope: !1450, inlinedAt: !1039)
!1450 = distinct !DILexicalBlock(scope: !90, file: !3, line: 807, column: 7)
!1451 = !DILocation(line: 807, column: 20, scope: !1450, inlinedAt: !1039)
!1452 = !DILocation(line: 807, column: 46, scope: !1450, inlinedAt: !1039)
!1453 = !DILocation(line: 807, column: 7, scope: !90, inlinedAt: !1039)
!1454 = !DILocation(line: 809, column: 17, scope: !1455, inlinedAt: !1039)
!1455 = distinct !DILexicalBlock(scope: !1450, file: !3, line: 808, column: 5)
!1456 = !DILocation(line: 809, column: 30, scope: !1455, inlinedAt: !1039)
!1457 = !DILocation(line: 809, column: 7, scope: !1455, inlinedAt: !1039)
!1458 = !DILocation(line: 810, column: 7, scope: !1455, inlinedAt: !1039)
!1459 = !DILocation(line: 813, column: 9, scope: !1460, inlinedAt: !1039)
!1460 = distinct !DILexicalBlock(scope: !90, file: !3, line: 813, column: 7)
!1461 = !DILocation(line: 813, column: 7, scope: !90, inlinedAt: !1039)
!1462 = !DILocation(line: 821, column: 12, scope: !1463, inlinedAt: !1039)
!1463 = distinct !DILexicalBlock(scope: !1464, file: !3, line: 821, column: 11)
!1464 = distinct !DILexicalBlock(scope: !1460, file: !3, line: 820, column: 5)
!1465 = !DILocation(line: 821, column: 11, scope: !1464, inlinedAt: !1039)
!1466 = !DILocation(line: 854, column: 14, scope: !90, inlinedAt: !1039)
!1467 = !DILocation(line: 823, column: 36, scope: !1468, inlinedAt: !1039)
!1468 = distinct !DILexicalBlock(scope: !1469, file: !3, line: 823, column: 15)
!1469 = distinct !DILexicalBlock(scope: !1463, file: !3, line: 822, column: 9)
!1470 = !DILocation(line: 823, column: 15, scope: !1469, inlinedAt: !1039)
!1471 = !DILocation(line: 825, column: 21, scope: !1468, inlinedAt: !1039)
!1472 = !DILocation(line: 824, column: 13, scope: !1468, inlinedAt: !1039)
!1473 = !DILocation(line: 831, column: 39, scope: !1474, inlinedAt: !1039)
!1474 = distinct !DILexicalBlock(scope: !1469, file: !3, line: 831, column: 15)
!1475 = !DILocation(line: 831, column: 15, scope: !1469, inlinedAt: !1039)
!1476 = !DILocation(line: 833, column: 21, scope: !1474, inlinedAt: !1039)
!1477 = !DILocation(line: 832, column: 13, scope: !1474, inlinedAt: !1039)
!1478 = !DILocation(line: 839, column: 38, scope: !1479, inlinedAt: !1039)
!1479 = distinct !DILexicalBlock(scope: !1469, file: !3, line: 839, column: 15)
!1480 = !DILocation(line: 839, column: 15, scope: !1469, inlinedAt: !1039)
!1481 = !DILocation(line: 841, column: 21, scope: !1479, inlinedAt: !1039)
!1482 = !DILocation(line: 840, column: 13, scope: !1479, inlinedAt: !1039)
!1483 = !DILocation(line: 847, column: 15, scope: !1484, inlinedAt: !1039)
!1484 = distinct !DILexicalBlock(scope: !1469, file: !3, line: 847, column: 15)
!1485 = !DILocation(line: 847, column: 30, scope: !1484, inlinedAt: !1039)
!1486 = !DILocation(line: 848, column: 26, scope: !1484, inlinedAt: !1039)
!1487 = !DILocation(line: 849, column: 20, scope: !1484, inlinedAt: !1039)
!1488 = !DILocation(line: 848, column: 13, scope: !1484, inlinedAt: !1039)
!1489 = !DILocation(line: 855, column: 11, scope: !90, inlinedAt: !1039)
!1490 = !DILocation(line: 816, column: 20, scope: !1491, inlinedAt: !1039)
!1491 = distinct !DILexicalBlock(scope: !1460, file: !3, line: 814, column: 5)
!1492 = !DILocation(line: 817, column: 14, scope: !1491, inlinedAt: !1039)
!1493 = !DILocation(line: 816, column: 7, scope: !1491, inlinedAt: !1039)
!1494 = !DILocation(line: 854, column: 11, scope: !90, inlinedAt: !1039)
!1495 = !DILocation(line: 857, column: 16, scope: !90, inlinedAt: !1039)
!1496 = !DILocation(line: 857, column: 23, scope: !90, inlinedAt: !1039)
!1497 = !DILocation(line: 858, column: 1, scope: !90, inlinedAt: !1039)
!1498 = !DILocation(line: 1047, column: 15, scope: !901)
!1499 = !DILocation(line: 1047, column: 12, scope: !901)
!1500 = !DILocation(line: 1047, column: 9, scope: !901)
!1501 = !DILocation(line: 0, scope: !900)
!1502 = !DILocation(line: 1051, column: 11, scope: !900)
!1503 = !DILocation(line: 1053, column: 17, scope: !905)
!1504 = !DILocation(line: 1053, column: 15, scope: !900)
!1505 = !DILocation(line: 1064, column: 36, scope: !904)
!1506 = !DILocation(line: 1064, column: 56, scope: !904)
!1507 = !DILocation(line: 1064, column: 59, scope: !904)
!1508 = !DILocation(line: 1065, column: 35, scope: !904)
!1509 = !DILocation(line: 1065, column: 38, scope: !904)
!1510 = !DILocation(line: 0, scope: !904)
!1511 = !DILocation(line: 1067, column: 19, scope: !904)
!1512 = !DILocation(line: 1069, column: 23, scope: !1513)
!1513 = distinct !DILexicalBlock(scope: !1514, file: !3, line: 1068, column: 17)
!1514 = distinct !DILexicalBlock(scope: !904, file: !3, line: 1067, column: 19)
!1515 = !DILocation(line: 0, scope: !1351, inlinedAt: !1516)
!1516 = distinct !DILocation(line: 1070, column: 21, scope: !1517)
!1517 = distinct !DILexicalBlock(scope: !1513, file: !3, line: 1069, column: 23)
!1518 = !DILocation(line: 110, column: 10, scope: !1351, inlinedAt: !1516)
!1519 = !DILocation(line: 1077, column: 19, scope: !1513)
!1520 = !DILocation(line: 1079, column: 19, scope: !1513)
!1521 = !DILocation(line: 1080, column: 19, scope: !1513)
!1522 = !DILocation(line: 1081, column: 19, scope: !1513)
!1523 = !DILocation(line: 1086, column: 31, scope: !1524)
!1524 = distinct !DILexicalBlock(scope: !904, file: !3, line: 1086, column: 19)
!1525 = !DILocation(line: 1086, column: 19, scope: !904)
!1526 = !DILocation(line: 0, scope: !1351, inlinedAt: !1527)
!1527 = distinct !DILocation(line: 1087, column: 17, scope: !1524)
!1528 = !DILocation(line: 110, column: 10, scope: !1351, inlinedAt: !1527)
!1529 = !DILocation(line: 0, scope: !907)
!1530 = !DILocation(line: 1089, column: 39, scope: !1531)
!1531 = distinct !DILexicalBlock(scope: !907, file: !3, line: 1089, column: 15)
!1532 = !DILocation(line: 1089, column: 15, scope: !907)
!1533 = !DILocation(line: 1092, column: 19, scope: !904)
!1534 = !DILocation(line: 1090, column: 17, scope: !1531)
!1535 = !DILocation(line: 1089, column: 62, scope: !1531)
!1536 = !DILocation(line: 1089, column: 56, scope: !1531)
!1537 = !DILocation(line: 1089, column: 36, scope: !1531)
!1538 = distinct !{!1538, !1532, !1539, !846}
!1539 = !DILocation(line: 1090, column: 17, scope: !907)
!1540 = !DILocation(line: 0, scope: !1351, inlinedAt: !1541)
!1541 = distinct !DILocation(line: 1094, column: 19, scope: !1542)
!1542 = distinct !DILexicalBlock(scope: !1543, file: !3, line: 1093, column: 17)
!1543 = distinct !DILexicalBlock(scope: !904, file: !3, line: 1092, column: 19)
!1544 = !DILocation(line: 110, column: 10, scope: !1351, inlinedAt: !1541)
!1545 = !DILocation(line: 0, scope: !1351, inlinedAt: !1546)
!1546 = distinct !DILocation(line: 1096, column: 19, scope: !1542)
!1547 = !DILocation(line: 110, column: 10, scope: !1351, inlinedAt: !1546)
!1548 = !DILocation(line: 1098, column: 19, scope: !1542)
!1549 = !DILocation(line: 1099, column: 17, scope: !1542)
!1550 = !DILocation(line: 1101, column: 15, scope: !904)
!1551 = !DILocation(line: 0, scope: !1351, inlinedAt: !1552)
!1552 = distinct !DILocation(line: 1101, column: 15, scope: !904)
!1553 = !DILocation(line: 110, column: 10, scope: !1351, inlinedAt: !1552)
!1554 = !DILocation(line: 1103, column: 9, scope: !901)
!1555 = !DILocation(line: 1042, column: 73, scope: !898)
!1556 = distinct !{!1556, !1031, !1557, !846}
!1557 = !DILocation(line: 1104, column: 5, scope: !895)
!1558 = !DILocation(line: 1106, column: 34, scope: !1033)
!1559 = !DILocation(line: 1106, column: 26, scope: !1033)
!1560 = !DILocation(line: 1106, column: 41, scope: !1033)
!1561 = !DILocation(line: 1106, column: 7, scope: !878)
!1562 = !DILocation(line: 1107, column: 5, scope: !1033)
!1563 = !DILocation(line: 1109, column: 10, scope: !878)
!1564 = !DILocation(line: 1110, column: 1, scope: !878)
!1565 = !DILocation(line: 361, column: 51, scope: !1231, inlinedAt: !1260)
!1566 = !DILocation(line: 361, column: 30, scope: !1231, inlinedAt: !1260)
!1567 = distinct !{!1567, !1263, !1568, !846}
!1568 = !DILocation(line: 366, column: 5, scope: !1226, inlinedAt: !1260)
!1569 = !DISubprogram(name: "bindtextdomain", scope: !867, file: !867, line: 86, type: !1570, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !223)
!1570 = !DISubroutineType(types: !1571)
!1571 = !{!59, !93, !93}
!1572 = !DISubprogram(name: "textdomain", scope: !867, file: !867, line: 82, type: !1573, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !223)
!1573 = !DISubroutineType(types: !1574)
!1574 = !{!59, !93}
!1575 = !DISubprogram(name: "atexit", scope: !1576, file: !1576, line: 595, type: !1577, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !223)
!1576 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!1577 = !DISubroutineType(types: !1578)
!1578 = !{!64, !1579}
!1579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !800, size: 64)
!1580 = !DISubprogram(name: "setvbuf", scope: !871, file: !871, line: 308, type: !1581, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !223)
!1581 = !DISubroutineType(types: !1582)
!1582 = !{!64, !120, !59, !64, !40}
!1583 = !DISubprogram(name: "getopt_long", scope: !201, file: !201, line: 66, type: !1584, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !223)
!1584 = !DISubroutineType(types: !1585)
!1585 = !{!64, !64, !1586, !93, !1588, !206}
!1586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1587, size: 64)
!1587 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !59)
!1588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !199, size: 64)
!1589 = !DISubprogram(name: "error", scope: !1590, file: !1590, line: 52, type: !1591, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !223)
!1590 = !DIFile(filename: "./lib/error.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!1591 = !DISubroutineType(types: !1592)
!1592 = !{null, !64, !64, !93, null}
!1593 = distinct !DISubprogram(name: "digest_file", scope: !3, file: !3, line: 591, type: !1594, scopeLine: 593, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1597)
!1594 = !DISubroutineType(types: !1595)
!1595 = !{!71, !93, !206, !65, !1596}
!1596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !71, size: 64)
!1597 = !{!1598, !1599, !1600, !1601, !1602, !1603, !1604}
!1598 = !DILocalVariable(name: "filename", arg: 1, scope: !1593, file: !3, line: 591, type: !93)
!1599 = !DILocalVariable(name: "binary", arg: 2, scope: !1593, file: !3, line: 591, type: !206)
!1600 = !DILocalVariable(name: "bin_result", arg: 3, scope: !1593, file: !3, line: 591, type: !65)
!1601 = !DILocalVariable(name: "missing", arg: 4, scope: !1593, file: !3, line: 592, type: !1596)
!1602 = !DILocalVariable(name: "fp", scope: !1593, file: !3, line: 594, type: !98)
!1603 = !DILocalVariable(name: "err", scope: !1593, file: !3, line: 595, type: !64)
!1604 = !DILocalVariable(name: "is_stdin", scope: !1593, file: !3, line: 596, type: !71)
!1605 = !DILocation(line: 0, scope: !1593)
!1606 = !DILocation(line: 596, column: 19, scope: !1593)
!1607 = !DILocation(line: 598, column: 12, scope: !1593)
!1608 = !{!1609, !1609, i64 0}
!1609 = !{!"_Bool", !794, i64 0}
!1610 = !DILocation(line: 600, column: 7, scope: !1593)
!1611 = !DILocation(line: 602, column: 23, scope: !1612)
!1612 = distinct !DILexicalBlock(scope: !1613, file: !3, line: 601, column: 5)
!1613 = distinct !DILexicalBlock(scope: !1593, file: !3, line: 600, column: 7)
!1614 = !DILocation(line: 603, column: 12, scope: !1612)
!1615 = !DILocation(line: 611, column: 5, scope: !1612)
!1616 = !DILocation(line: 614, column: 12, scope: !1617)
!1617 = distinct !DILexicalBlock(scope: !1613, file: !3, line: 613, column: 5)
!1618 = !DILocation(line: 615, column: 14, scope: !1619)
!1619 = distinct !DILexicalBlock(scope: !1617, file: !3, line: 615, column: 11)
!1620 = !DILocation(line: 615, column: 11, scope: !1617)
!1621 = !DILocation(line: 617, column: 15, scope: !1622)
!1622 = distinct !DILexicalBlock(scope: !1623, file: !3, line: 617, column: 15)
!1623 = distinct !DILexicalBlock(scope: !1619, file: !3, line: 616, column: 9)
!1624 = !DILocation(line: 0, scope: !1623)
!1625 = !DILocation(line: 617, column: 30, scope: !1622)
!1626 = !DILocation(line: 617, column: 33, scope: !1622)
!1627 = !DILocation(line: 617, column: 39, scope: !1622)
!1628 = !DILocation(line: 617, column: 15, scope: !1623)
!1629 = !DILocation(line: 619, column: 24, scope: !1630)
!1630 = distinct !DILexicalBlock(scope: !1622, file: !3, line: 618, column: 13)
!1631 = !DILocation(line: 620, column: 15, scope: !1630)
!1632 = !DILocation(line: 622, column: 21, scope: !1623)
!1633 = !DILocation(line: 622, column: 34, scope: !1623)
!1634 = !DILocation(line: 622, column: 11, scope: !1623)
!1635 = !DILocation(line: 623, column: 11, scope: !1623)
!1636 = !DILocation(line: 0, scope: !1613)
!1637 = !DILocation(line: 627, column: 3, scope: !1593)
!1638 = !DILocation(line: 632, column: 9, scope: !1593)
!1639 = !DILocation(line: 634, column: 7, scope: !1640)
!1640 = distinct !DILexicalBlock(scope: !1593, file: !3, line: 634, column: 7)
!1641 = !DILocation(line: 634, column: 7, scope: !1593)
!1642 = !DILocation(line: 636, column: 17, scope: !1643)
!1643 = distinct !DILexicalBlock(scope: !1640, file: !3, line: 635, column: 5)
!1644 = !DILocation(line: 636, column: 30, scope: !1643)
!1645 = !DILocation(line: 636, column: 7, scope: !1643)
!1646 = !DILocation(line: 637, column: 17, scope: !1647)
!1647 = distinct !DILexicalBlock(scope: !1643, file: !3, line: 637, column: 11)
!1648 = !DILocation(line: 637, column: 14, scope: !1647)
!1649 = !DILocation(line: 637, column: 11, scope: !1643)
!1650 = !DILocation(line: 638, column: 9, scope: !1647)
!1651 = !DILocation(line: 642, column: 17, scope: !1652)
!1652 = distinct !DILexicalBlock(scope: !1593, file: !3, line: 642, column: 7)
!1653 = !DILocation(line: 642, column: 20, scope: !1652)
!1654 = !DILocation(line: 642, column: 32, scope: !1652)
!1655 = !DILocation(line: 642, column: 7, scope: !1593)
!1656 = !DILocation(line: 644, column: 17, scope: !1657)
!1657 = distinct !DILexicalBlock(scope: !1652, file: !3, line: 643, column: 5)
!1658 = !DILocation(line: 644, column: 30, scope: !1657)
!1659 = !DILocation(line: 644, column: 7, scope: !1657)
!1660 = !DILocation(line: 645, column: 7, scope: !1657)
!1661 = !DILocation(line: 649, column: 1, scope: !1593)
!1662 = distinct !DISubprogram(name: "print_filename", scope: !3, file: !3, line: 550, type: !1663, scopeLine: 551, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1665)
!1663 = !DISubroutineType(types: !1664)
!1664 = !{null, !93, !71}
!1665 = !{!1666, !1667}
!1666 = !DILocalVariable(name: "file", arg: 1, scope: !1662, file: !3, line: 550, type: !93)
!1667 = !DILocalVariable(name: "escape", arg: 2, scope: !1662, file: !3, line: 550, type: !71)
!1668 = !DILocation(line: 0, scope: !1662)
!1669 = !DILocation(line: 552, column: 7, scope: !1662)
!1670 = !DILocation(line: 558, column: 10, scope: !1662)
!1671 = !DILocation(line: 558, column: 3, scope: !1662)
!1672 = !DILocation(line: 554, column: 7, scope: !1673)
!1673 = distinct !DILexicalBlock(scope: !1674, file: !3, line: 553, column: 5)
!1674 = distinct !DILexicalBlock(scope: !1662, file: !3, line: 552, column: 7)
!1675 = !DILocation(line: 555, column: 7, scope: !1673)
!1676 = !DILocation(line: 560, column: 15, scope: !1677)
!1677 = distinct !DILexicalBlock(scope: !1662, file: !3, line: 559, column: 5)
!1678 = !DILocation(line: 560, column: 7, scope: !1677)
!1679 = !DILocation(line: 563, column: 11, scope: !1680)
!1680 = distinct !DILexicalBlock(scope: !1677, file: !3, line: 561, column: 9)
!1681 = !DILocation(line: 564, column: 11, scope: !1680)
!1682 = !DILocation(line: 567, column: 11, scope: !1680)
!1683 = !DILocation(line: 568, column: 11, scope: !1680)
!1684 = !DILocation(line: 0, scope: !1351, inlinedAt: !1685)
!1685 = distinct !DILocation(line: 571, column: 11, scope: !1680)
!1686 = !DILocation(line: 110, column: 10, scope: !1351, inlinedAt: !1685)
!1687 = !DILocation(line: 574, column: 11, scope: !1677)
!1688 = distinct !{!1688, !1671, !1689, !846}
!1689 = !DILocation(line: 575, column: 5, scope: !1662)
!1690 = !DILocation(line: 576, column: 1, scope: !1662)
!1691 = !DISubprogram(name: "dcngettext", scope: !867, file: !867, line: 73, type: !1692, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !223)
!1692 = !DISubroutineType(types: !1693)
!1693 = !{!59, !93, !93, !93, !40, !64}
!1694 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !228, file: !228, line: 51, type: !816, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !227, retainedNodes: !1695)
!1695 = !{!1696}
!1696 = !DILocalVariable(name: "file", arg: 1, scope: !1694, file: !228, line: 51, type: !93)
!1697 = !DILocation(line: 0, scope: !1694)
!1698 = !DILocation(line: 53, column: 13, scope: !1694)
!1699 = !DILocation(line: 54, column: 1, scope: !1694)
!1700 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !228, file: !228, line: 88, type: !1701, scopeLine: 89, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !227, retainedNodes: !1703)
!1701 = !DISubroutineType(types: !1702)
!1702 = !{null, !71}
!1703 = !{!1704}
!1704 = !DILocalVariable(name: "ignore", arg: 1, scope: !1700, file: !228, line: 88, type: !71)
!1705 = !DILocation(line: 0, scope: !1700)
!1706 = !DILocation(line: 90, column: 16, scope: !1700)
!1707 = !DILocation(line: 91, column: 1, scope: !1700)
!1708 = distinct !DISubprogram(name: "close_stdout", scope: !228, file: !228, line: 117, type: !800, scopeLine: 118, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !227, retainedNodes: !1709)
!1709 = !{!1710}
!1710 = !DILocalVariable(name: "write_error", scope: !1711, file: !228, line: 122, type: !93)
!1711 = distinct !DILexicalBlock(scope: !1712, file: !228, line: 121, column: 5)
!1712 = distinct !DILexicalBlock(scope: !1708, file: !228, line: 119, column: 7)
!1713 = !DILocation(line: 119, column: 21, scope: !1712)
!1714 = !DILocation(line: 119, column: 7, scope: !1712)
!1715 = !DILocation(line: 119, column: 29, scope: !1712)
!1716 = !DILocation(line: 120, column: 7, scope: !1712)
!1717 = !DILocation(line: 120, column: 12, scope: !1712)
!1718 = !{i8 0, i8 2}
!1719 = !DILocation(line: 120, column: 25, scope: !1712)
!1720 = !DILocation(line: 120, column: 28, scope: !1712)
!1721 = !DILocation(line: 120, column: 34, scope: !1712)
!1722 = !DILocation(line: 119, column: 7, scope: !1708)
!1723 = !DILocation(line: 122, column: 33, scope: !1711)
!1724 = !DILocation(line: 0, scope: !1711)
!1725 = !DILocation(line: 123, column: 11, scope: !1726)
!1726 = distinct !DILexicalBlock(scope: !1711, file: !228, line: 123, column: 11)
!1727 = !DILocation(line: 0, scope: !1726)
!1728 = !DILocation(line: 123, column: 11, scope: !1711)
!1729 = !DILocation(line: 124, column: 36, scope: !1726)
!1730 = !DILocation(line: 124, column: 9, scope: !1726)
!1731 = !DILocation(line: 127, column: 9, scope: !1726)
!1732 = !DILocation(line: 129, column: 14, scope: !1711)
!1733 = !DILocation(line: 129, column: 7, scope: !1711)
!1734 = !DILocation(line: 134, column: 42, scope: !1735)
!1735 = distinct !DILexicalBlock(scope: !1708, file: !228, line: 134, column: 7)
!1736 = !DILocation(line: 134, column: 28, scope: !1735)
!1737 = !DILocation(line: 134, column: 50, scope: !1735)
!1738 = !DILocation(line: 134, column: 7, scope: !1708)
!1739 = !DILocation(line: 135, column: 12, scope: !1735)
!1740 = !DILocation(line: 135, column: 5, scope: !1735)
!1741 = !DILocation(line: 136, column: 1, scope: !1708)
!1742 = distinct !DISubprogram(name: "sha1_init_ctx", scope: !235, file: !235, line: 62, type: !1743, scopeLine: 63, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !234, retainedNodes: !1763)
!1743 = !DISubroutineType(types: !1744)
!1744 = !{null, !1745}
!1745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1746, size: 64)
!1746 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sha1_ctx", file: !1747, line: 40, size: 1280, elements: !1748)
!1747 = !DIFile(filename: "./lib/sha1.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!1748 = !{!1749, !1750, !1751, !1752, !1753, !1754, !1758, !1759}
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "A", scope: !1746, file: !1747, line: 42, baseType: !238, size: 32)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "B", scope: !1746, file: !1747, line: 43, baseType: !238, size: 32, offset: 32)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "C", scope: !1746, file: !1747, line: 44, baseType: !238, size: 32, offset: 64)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "D", scope: !1746, file: !1747, line: 45, baseType: !238, size: 32, offset: 96)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "E", scope: !1746, file: !1747, line: 46, baseType: !238, size: 32, offset: 128)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "total", scope: !1746, file: !1747, line: 48, baseType: !1755, size: 64, offset: 160)
!1755 = !DICompositeType(tag: DW_TAG_array_type, baseType: !238, size: 64, elements: !1756)
!1756 = !{!1757}
!1757 = !DISubrange(count: 2)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !1746, file: !1747, line: 49, baseType: !238, size: 32, offset: 224)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !1746, file: !1747, line: 50, baseType: !1760, size: 1024, offset: 256)
!1760 = !DICompositeType(tag: DW_TAG_array_type, baseType: !238, size: 1024, elements: !1761)
!1761 = !{!1762}
!1762 = !DISubrange(count: 32)
!1763 = !{!1764}
!1764 = !DILocalVariable(name: "ctx", arg: 1, scope: !1742, file: !235, line: 62, type: !1745)
!1765 = !DILocation(line: 0, scope: !1742)
!1766 = !DILocation(line: 64, column: 10, scope: !1742)
!1767 = !DILocation(line: 68, column: 8, scope: !1742)
!1768 = !DILocation(line: 68, column: 10, scope: !1742)
!1769 = !DILocation(line: 72, column: 1, scope: !1742)
!1770 = distinct !DISubprogram(name: "sha1_read_ctx", scope: !235, file: !235, line: 86, type: !1771, scopeLine: 87, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !234, retainedNodes: !1775)
!1771 = !DISubroutineType(types: !1772)
!1772 = !{!61, !1773, !61}
!1773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1774, size: 64)
!1774 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1746)
!1775 = !{!1776, !1777, !1778}
!1776 = !DILocalVariable(name: "ctx", arg: 1, scope: !1770, file: !235, line: 86, type: !1773)
!1777 = !DILocalVariable(name: "resbuf", arg: 2, scope: !1770, file: !235, line: 86, type: !61)
!1778 = !DILocalVariable(name: "r", scope: !1770, file: !235, line: 88, type: !59)
!1779 = !DILocation(line: 0, scope: !1770)
!1780 = !DILocation(line: 89, column: 38, scope: !1770)
!1781 = !{!1782, !1022, i64 0}
!1782 = !{!"sha1_ctx", !1022, i64 0, !1022, i64 4, !1022, i64 8, !1022, i64 12, !1022, i64 16, !794, i64 20, !1022, i64 28, !794, i64 32}
!1783 = !DILocalVariable(name: "__bsx", arg: 1, scope: !1784, file: !1785, line: 49, type: !240)
!1784 = distinct !DISubprogram(name: "__bswap_32", scope: !1785, file: !1785, line: 49, type: !1786, scopeLine: 50, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !234, retainedNodes: !1788)
!1785 = !DIFile(filename: "/usr/include/bits/byteswap.h", directory: "")
!1786 = !DISubroutineType(types: !1787)
!1787 = !{!240, !240}
!1788 = !{!1783}
!1789 = !DILocation(line: 0, scope: !1784, inlinedAt: !1790)
!1790 = distinct !DILocation(line: 89, column: 38, scope: !1770)
!1791 = !DILocation(line: 54, column: 10, scope: !1784, inlinedAt: !1790)
!1792 = !DILocalVariable(name: "cp", arg: 1, scope: !1793, file: !235, line: 78, type: !59)
!1793 = distinct !DISubprogram(name: "set_uint32", scope: !235, file: !235, line: 78, type: !1794, scopeLine: 79, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !234, retainedNodes: !1796)
!1794 = !DISubroutineType(types: !1795)
!1795 = !{null, !59, !238}
!1796 = !{!1792, !1797}
!1797 = !DILocalVariable(name: "v", arg: 2, scope: !1793, file: !235, line: 78, type: !238)
!1798 = !DILocation(line: 0, scope: !1793, inlinedAt: !1799)
!1799 = distinct !DILocation(line: 89, column: 3, scope: !1770)
!1800 = !DILocalVariable(name: "__dest", arg: 1, scope: !1801, file: !1802, line: 26, type: !1805)
!1801 = distinct !DISubprogram(name: "memcpy", scope: !1802, file: !1802, line: 26, type: !1803, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !234, retainedNodes: !1809)
!1802 = !DIFile(filename: "/usr/include/bits/string_fortified.h", directory: "")
!1803 = !DISubroutineType(types: !1804)
!1804 = !{!61, !1805, !1806, !62}
!1805 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !61)
!1806 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1807)
!1807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1808, size: 64)
!1808 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1809 = !{!1800, !1810, !1811}
!1810 = !DILocalVariable(name: "__src", arg: 2, scope: !1801, file: !1802, line: 26, type: !1806)
!1811 = !DILocalVariable(name: "__len", arg: 3, scope: !1801, file: !1802, line: 26, type: !62)
!1812 = !DILocation(line: 0, scope: !1801, inlinedAt: !1813)
!1813 = distinct !DILocation(line: 80, column: 3, scope: !1793, inlinedAt: !1799)
!1814 = !DILocation(line: 29, column: 10, scope: !1801, inlinedAt: !1813)
!1815 = !DILocation(line: 90, column: 17, scope: !1770)
!1816 = !DILocation(line: 90, column: 38, scope: !1770)
!1817 = !{!1782, !1022, i64 4}
!1818 = !DILocation(line: 0, scope: !1784, inlinedAt: !1819)
!1819 = distinct !DILocation(line: 90, column: 38, scope: !1770)
!1820 = !DILocation(line: 54, column: 10, scope: !1784, inlinedAt: !1819)
!1821 = !DILocation(line: 0, scope: !1793, inlinedAt: !1822)
!1822 = distinct !DILocation(line: 90, column: 3, scope: !1770)
!1823 = !DILocation(line: 0, scope: !1801, inlinedAt: !1824)
!1824 = distinct !DILocation(line: 80, column: 3, scope: !1793, inlinedAt: !1822)
!1825 = !DILocation(line: 29, column: 10, scope: !1801, inlinedAt: !1824)
!1826 = !DILocation(line: 91, column: 17, scope: !1770)
!1827 = !DILocation(line: 91, column: 38, scope: !1770)
!1828 = !{!1782, !1022, i64 8}
!1829 = !DILocation(line: 0, scope: !1784, inlinedAt: !1830)
!1830 = distinct !DILocation(line: 91, column: 38, scope: !1770)
!1831 = !DILocation(line: 54, column: 10, scope: !1784, inlinedAt: !1830)
!1832 = !DILocation(line: 0, scope: !1793, inlinedAt: !1833)
!1833 = distinct !DILocation(line: 91, column: 3, scope: !1770)
!1834 = !DILocation(line: 0, scope: !1801, inlinedAt: !1835)
!1835 = distinct !DILocation(line: 80, column: 3, scope: !1793, inlinedAt: !1833)
!1836 = !DILocation(line: 29, column: 10, scope: !1801, inlinedAt: !1835)
!1837 = !DILocation(line: 92, column: 17, scope: !1770)
!1838 = !DILocation(line: 92, column: 38, scope: !1770)
!1839 = !{!1782, !1022, i64 12}
!1840 = !DILocation(line: 0, scope: !1784, inlinedAt: !1841)
!1841 = distinct !DILocation(line: 92, column: 38, scope: !1770)
!1842 = !DILocation(line: 54, column: 10, scope: !1784, inlinedAt: !1841)
!1843 = !DILocation(line: 0, scope: !1793, inlinedAt: !1844)
!1844 = distinct !DILocation(line: 92, column: 3, scope: !1770)
!1845 = !DILocation(line: 0, scope: !1801, inlinedAt: !1846)
!1846 = distinct !DILocation(line: 80, column: 3, scope: !1793, inlinedAt: !1844)
!1847 = !DILocation(line: 29, column: 10, scope: !1801, inlinedAt: !1846)
!1848 = !DILocation(line: 93, column: 17, scope: !1770)
!1849 = !DILocation(line: 93, column: 38, scope: !1770)
!1850 = !{!1782, !1022, i64 16}
!1851 = !DILocation(line: 0, scope: !1784, inlinedAt: !1852)
!1852 = distinct !DILocation(line: 93, column: 38, scope: !1770)
!1853 = !DILocation(line: 54, column: 10, scope: !1784, inlinedAt: !1852)
!1854 = !DILocation(line: 0, scope: !1793, inlinedAt: !1855)
!1855 = distinct !DILocation(line: 93, column: 3, scope: !1770)
!1856 = !DILocation(line: 0, scope: !1801, inlinedAt: !1857)
!1857 = distinct !DILocation(line: 80, column: 3, scope: !1793, inlinedAt: !1855)
!1858 = !DILocation(line: 29, column: 10, scope: !1801, inlinedAt: !1857)
!1859 = !DILocation(line: 95, column: 3, scope: !1770)
!1860 = distinct !DISubprogram(name: "sha1_finish_ctx", scope: !235, file: !235, line: 101, type: !1861, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !234, retainedNodes: !1863)
!1861 = !DISubroutineType(types: !1862)
!1862 = !{!61, !1745, !61}
!1863 = !{!1864, !1865, !1866, !1867}
!1864 = !DILocalVariable(name: "ctx", arg: 1, scope: !1860, file: !235, line: 101, type: !1745)
!1865 = !DILocalVariable(name: "resbuf", arg: 2, scope: !1860, file: !235, line: 101, type: !61)
!1866 = !DILocalVariable(name: "bytes", scope: !1860, file: !235, line: 104, type: !238)
!1867 = !DILocalVariable(name: "size", scope: !1860, file: !235, line: 105, type: !62)
!1868 = !DILocation(line: 0, scope: !1860)
!1869 = !DILocation(line: 104, column: 25, scope: !1860)
!1870 = !{!1782, !1022, i64 28}
!1871 = !DILocation(line: 105, column: 24, scope: !1860)
!1872 = !DILocation(line: 105, column: 17, scope: !1860)
!1873 = !DILocation(line: 108, column: 3, scope: !1860)
!1874 = !DILocation(line: 108, column: 17, scope: !1860)
!1875 = !DILocation(line: 109, column: 21, scope: !1876)
!1876 = distinct !DILexicalBlock(scope: !1860, file: !235, line: 109, column: 7)
!1877 = !DILocation(line: 109, column: 7, scope: !1860)
!1878 = !DILocation(line: 110, column: 5, scope: !1876)
!1879 = !DILocation(line: 113, column: 27, scope: !1860)
!1880 = !DILocation(line: 0, scope: !1784, inlinedAt: !1881)
!1881 = distinct !DILocation(line: 113, column: 27, scope: !1860)
!1882 = !DILocation(line: 54, column: 10, scope: !1784, inlinedAt: !1881)
!1883 = !DILocation(line: 113, column: 20, scope: !1860)
!1884 = !DILocation(line: 113, column: 3, scope: !1860)
!1885 = !DILocation(line: 113, column: 25, scope: !1860)
!1886 = !DILocation(line: 114, column: 27, scope: !1860)
!1887 = !DILocation(line: 0, scope: !1784, inlinedAt: !1888)
!1888 = distinct !DILocation(line: 114, column: 27, scope: !1860)
!1889 = !DILocation(line: 54, column: 10, scope: !1784, inlinedAt: !1888)
!1890 = !DILocation(line: 114, column: 20, scope: !1860)
!1891 = !DILocation(line: 114, column: 3, scope: !1860)
!1892 = !DILocation(line: 114, column: 25, scope: !1860)
!1893 = !DILocation(line: 116, column: 12, scope: !1860)
!1894 = !DILocation(line: 116, column: 63, scope: !1860)
!1895 = !DILocation(line: 116, column: 67, scope: !1860)
!1896 = !DILocation(line: 0, scope: !1801, inlinedAt: !1897)
!1897 = distinct !DILocation(line: 116, column: 3, scope: !1860)
!1898 = !DILocation(line: 29, column: 10, scope: !1801, inlinedAt: !1897)
!1899 = !DILocation(line: 119, column: 41, scope: !1860)
!1900 = !DILocation(line: 119, column: 3, scope: !1860)
!1901 = !DILocation(line: 0, scope: !1770, inlinedAt: !1902)
!1902 = distinct !DILocation(line: 121, column: 10, scope: !1860)
!1903 = !DILocation(line: 89, column: 38, scope: !1770, inlinedAt: !1902)
!1904 = !DILocation(line: 0, scope: !1784, inlinedAt: !1905)
!1905 = distinct !DILocation(line: 89, column: 38, scope: !1770, inlinedAt: !1902)
!1906 = !DILocation(line: 54, column: 10, scope: !1784, inlinedAt: !1905)
!1907 = !DILocation(line: 0, scope: !1793, inlinedAt: !1908)
!1908 = distinct !DILocation(line: 89, column: 3, scope: !1770, inlinedAt: !1902)
!1909 = !DILocation(line: 0, scope: !1801, inlinedAt: !1910)
!1910 = distinct !DILocation(line: 80, column: 3, scope: !1793, inlinedAt: !1908)
!1911 = !DILocation(line: 29, column: 10, scope: !1801, inlinedAt: !1910)
!1912 = !DILocation(line: 90, column: 17, scope: !1770, inlinedAt: !1902)
!1913 = !DILocation(line: 90, column: 38, scope: !1770, inlinedAt: !1902)
!1914 = !DILocation(line: 0, scope: !1784, inlinedAt: !1915)
!1915 = distinct !DILocation(line: 90, column: 38, scope: !1770, inlinedAt: !1902)
!1916 = !DILocation(line: 54, column: 10, scope: !1784, inlinedAt: !1915)
!1917 = !DILocation(line: 0, scope: !1793, inlinedAt: !1918)
!1918 = distinct !DILocation(line: 90, column: 3, scope: !1770, inlinedAt: !1902)
!1919 = !DILocation(line: 0, scope: !1801, inlinedAt: !1920)
!1920 = distinct !DILocation(line: 80, column: 3, scope: !1793, inlinedAt: !1918)
!1921 = !DILocation(line: 29, column: 10, scope: !1801, inlinedAt: !1920)
!1922 = !DILocation(line: 91, column: 17, scope: !1770, inlinedAt: !1902)
!1923 = !DILocation(line: 91, column: 38, scope: !1770, inlinedAt: !1902)
!1924 = !DILocation(line: 0, scope: !1784, inlinedAt: !1925)
!1925 = distinct !DILocation(line: 91, column: 38, scope: !1770, inlinedAt: !1902)
!1926 = !DILocation(line: 54, column: 10, scope: !1784, inlinedAt: !1925)
!1927 = !DILocation(line: 0, scope: !1793, inlinedAt: !1928)
!1928 = distinct !DILocation(line: 91, column: 3, scope: !1770, inlinedAt: !1902)
!1929 = !DILocation(line: 0, scope: !1801, inlinedAt: !1930)
!1930 = distinct !DILocation(line: 80, column: 3, scope: !1793, inlinedAt: !1928)
!1931 = !DILocation(line: 29, column: 10, scope: !1801, inlinedAt: !1930)
!1932 = !DILocation(line: 92, column: 17, scope: !1770, inlinedAt: !1902)
!1933 = !DILocation(line: 92, column: 38, scope: !1770, inlinedAt: !1902)
!1934 = !DILocation(line: 0, scope: !1784, inlinedAt: !1935)
!1935 = distinct !DILocation(line: 92, column: 38, scope: !1770, inlinedAt: !1902)
!1936 = !DILocation(line: 54, column: 10, scope: !1784, inlinedAt: !1935)
!1937 = !DILocation(line: 0, scope: !1793, inlinedAt: !1938)
!1938 = distinct !DILocation(line: 92, column: 3, scope: !1770, inlinedAt: !1902)
!1939 = !DILocation(line: 0, scope: !1801, inlinedAt: !1940)
!1940 = distinct !DILocation(line: 80, column: 3, scope: !1793, inlinedAt: !1938)
!1941 = !DILocation(line: 29, column: 10, scope: !1801, inlinedAt: !1940)
!1942 = !DILocation(line: 93, column: 17, scope: !1770, inlinedAt: !1902)
!1943 = !DILocation(line: 93, column: 38, scope: !1770, inlinedAt: !1902)
!1944 = !DILocation(line: 0, scope: !1784, inlinedAt: !1945)
!1945 = distinct !DILocation(line: 93, column: 38, scope: !1770, inlinedAt: !1902)
!1946 = !DILocation(line: 54, column: 10, scope: !1784, inlinedAt: !1945)
!1947 = !DILocation(line: 0, scope: !1793, inlinedAt: !1948)
!1948 = distinct !DILocation(line: 93, column: 3, scope: !1770, inlinedAt: !1902)
!1949 = !DILocation(line: 0, scope: !1801, inlinedAt: !1950)
!1950 = distinct !DILocation(line: 80, column: 3, scope: !1793, inlinedAt: !1948)
!1951 = !DILocation(line: 29, column: 10, scope: !1801, inlinedAt: !1950)
!1952 = !DILocation(line: 121, column: 3, scope: !1860)
!1953 = distinct !DISubprogram(name: "sha1_process_block", scope: !235, file: !235, line: 317, type: !1954, scopeLine: 318, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !234, retainedNodes: !1956)
!1954 = !DISubroutineType(types: !1955)
!1955 = !{null, !1807, !62, !1745}
!1956 = !{!1957, !1958, !1959, !1960, !1963, !1964, !1965, !1967, !1968, !1969, !1970, !1971, !1972, !1973, !1975}
!1957 = !DILocalVariable(name: "buffer", arg: 1, scope: !1953, file: !235, line: 317, type: !1807)
!1958 = !DILocalVariable(name: "len", arg: 2, scope: !1953, file: !235, line: 317, type: !62)
!1959 = !DILocalVariable(name: "ctx", arg: 3, scope: !1953, file: !235, line: 317, type: !1745)
!1960 = !DILocalVariable(name: "words", scope: !1953, file: !235, line: 319, type: !1961)
!1961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1962, size: 64)
!1962 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !238)
!1963 = !DILocalVariable(name: "nwords", scope: !1953, file: !235, line: 320, type: !62)
!1964 = !DILocalVariable(name: "endp", scope: !1953, file: !235, line: 321, type: !1961)
!1965 = !DILocalVariable(name: "x", scope: !1953, file: !235, line: 322, type: !1966)
!1966 = !DICompositeType(tag: DW_TAG_array_type, baseType: !238, size: 512, elements: !194)
!1967 = !DILocalVariable(name: "a", scope: !1953, file: !235, line: 323, type: !238)
!1968 = !DILocalVariable(name: "b", scope: !1953, file: !235, line: 324, type: !238)
!1969 = !DILocalVariable(name: "c", scope: !1953, file: !235, line: 325, type: !238)
!1970 = !DILocalVariable(name: "d", scope: !1953, file: !235, line: 326, type: !238)
!1971 = !DILocalVariable(name: "e", scope: !1953, file: !235, line: 327, type: !238)
!1972 = !DILocalVariable(name: "lolen", scope: !1953, file: !235, line: 328, type: !238)
!1973 = !DILocalVariable(name: "tm", scope: !1974, file: !235, line: 351, type: !238)
!1974 = distinct !DILexicalBlock(scope: !1953, file: !235, line: 350, column: 5)
!1975 = !DILocalVariable(name: "t", scope: !1974, file: !235, line: 352, type: !64)
!1976 = !DILocation(line: 0, scope: !1953)
!1977 = !DILocation(line: 319, column: 27, scope: !1953)
!1978 = !DILocation(line: 320, column: 23, scope: !1953)
!1979 = !DILocation(line: 321, column: 32, scope: !1953)
!1980 = !DILocation(line: 323, column: 21, scope: !1953)
!1981 = !DILocation(line: 324, column: 21, scope: !1953)
!1982 = !DILocation(line: 325, column: 21, scope: !1953)
!1983 = !DILocation(line: 326, column: 21, scope: !1953)
!1984 = !DILocation(line: 327, column: 21, scope: !1953)
!1985 = !DILocation(line: 328, column: 20, scope: !1953)
!1986 = !DILocation(line: 333, column: 3, scope: !1953)
!1987 = !DILocation(line: 333, column: 17, scope: !1953)
!1988 = !DILocation(line: 334, column: 25, scope: !1953)
!1989 = !DILocation(line: 334, column: 54, scope: !1953)
!1990 = !DILocation(line: 334, column: 39, scope: !1953)
!1991 = !DILocation(line: 334, column: 37, scope: !1953)
!1992 = !DILocation(line: 334, column: 3, scope: !1953)
!1993 = !DILocation(line: 334, column: 17, scope: !1953)
!1994 = !DILocation(line: 349, column: 16, scope: !1953)
!1995 = !DILocation(line: 349, column: 3, scope: !1953)
!1996 = !DILocation(line: 0, scope: !1974)
!1997 = !DILocation(line: 355, column: 18, scope: !1998)
!1998 = distinct !DILexicalBlock(scope: !1999, file: !235, line: 354, column: 9)
!1999 = distinct !DILexicalBlock(scope: !2000, file: !235, line: 353, column: 7)
!2000 = distinct !DILexicalBlock(scope: !1974, file: !235, line: 353, column: 7)
!2001 = !DILocation(line: 0, scope: !1784, inlinedAt: !2002)
!2002 = distinct !DILocation(line: 355, column: 18, scope: !1998)
!2003 = !DILocation(line: 54, column: 10, scope: !1784, inlinedAt: !2002)
!2004 = !DILocation(line: 356, column: 16, scope: !1998)
!2005 = !DILocation(line: 359, column: 7, scope: !2006)
!2006 = distinct !DILexicalBlock(scope: !1974, file: !235, line: 359, column: 7)
!2007 = !DILocation(line: 360, column: 7, scope: !2008)
!2008 = distinct !DILexicalBlock(scope: !1974, file: !235, line: 360, column: 7)
!2009 = !DILocation(line: 361, column: 7, scope: !2010)
!2010 = distinct !DILexicalBlock(scope: !1974, file: !235, line: 361, column: 7)
!2011 = !DILocation(line: 362, column: 7, scope: !2012)
!2012 = distinct !DILexicalBlock(scope: !1974, file: !235, line: 362, column: 7)
!2013 = !DILocation(line: 363, column: 7, scope: !2014)
!2014 = distinct !DILexicalBlock(scope: !1974, file: !235, line: 363, column: 7)
!2015 = !DILocation(line: 364, column: 7, scope: !2016)
!2016 = distinct !DILexicalBlock(scope: !1974, file: !235, line: 364, column: 7)
!2017 = !DILocation(line: 365, column: 7, scope: !2018)
!2018 = distinct !DILexicalBlock(scope: !1974, file: !235, line: 365, column: 7)
!2019 = !DILocation(line: 366, column: 7, scope: !2020)
!2020 = distinct !DILexicalBlock(scope: !1974, file: !235, line: 366, column: 7)
!2021 = !DILocation(line: 367, column: 7, scope: !2022)
!2022 = distinct !DILexicalBlock(scope: !1974, file: !235, line: 367, column: 7)
!2023 = !DILocation(line: 368, column: 7, scope: !2024)
!2024 = distinct !DILexicalBlock(scope: !1974, file: !235, line: 368, column: 7)
!2025 = !DILocation(line: 369, column: 7, scope: !2026)
!2026 = distinct !DILexicalBlock(scope: !1974, file: !235, line: 369, column: 7)
!2027 = !DILocation(line: 370, column: 7, scope: !2028)
!2028 = distinct !DILexicalBlock(scope: !1974, file: !235, line: 370, column: 7)
!2029 = !DILocation(line: 371, column: 7, scope: !2030)
!2030 = distinct !DILexicalBlock(scope: !1974, file: !235, line: 371, column: 7)
!2031 = !DILocation(line: 372, column: 7, scope: !2032)
!2032 = distinct !DILexicalBlock(scope: !1974, file: !235, line: 372, column: 7)
!2033 = !DILocation(line: 373, column: 7, scope: !2034)
!2034 = distinct !DILexicalBlock(scope: !1974, file: !235, line: 373, column: 7)
!2035 = !DILocation(line: 374, column: 7, scope: !2036)
!2036 = distinct !DILexicalBlock(scope: !1974, file: !235, line: 374, column: 7)
!2037 = !DILocation(line: 375, column: 7, scope: !2038)
!2038 = distinct !DILexicalBlock(scope: !1974, file: !235, line: 375, column: 7)
!2039 = !DILocation(line: 376, column: 7, scope: !2040)
!2040 = distinct !DILexicalBlock(scope: !1974, file: !235, line: 376, column: 7)
!2041 = !DILocation(line: 377, column: 7, scope: !2042)
!2042 = distinct !DILexicalBlock(scope: !1974, file: !235, line: 377, column: 7)
!2043 = !DILocation(line: 378, column: 7, scope: !2044)
!2044 = distinct !DILexicalBlock(scope: !1974, file: !235, line: 378, column: 7)
!2045 = !DILocation(line: 379, column: 7, scope: !2046)
!2046 = distinct !DILexicalBlock(scope: !1974, file: !235, line: 379, column: 7)
!2047 = !DILocation(line: 380, column: 7, scope: !2048)
!2048 = distinct !DILexicalBlock(scope: !1974, file: !235, line: 380, column: 7)
!2049 = !DILocation(line: 381, column: 7, scope: !2050)
!2050 = distinct !DILexicalBlock(scope: !1974, file: !235, line: 381, column: 7)
!2051 = !DILocation(line: 382, column: 7, scope: !2052)
!2052 = distinct !DILexicalBlock(scope: !1974, file: !235, line: 382, column: 7)
!2053 = !DILocation(line: 383, column: 7, scope: !2054)
!2054 = distinct !DILexicalBlock(scope: !1974, file: !235, line: 383, column: 7)
!2055 = !DILocation(line: 384, column: 7, scope: !2056)
!2056 = distinct !DILexicalBlock(scope: !1974, file: !235, line: 384, column: 7)
!2057 = !DILocation(line: 385, column: 7, scope: !2058)
!2058 = distinct !DILexicalBlock(scope: !1974, file: !235, line: 385, column: 7)
!2059 = !DILocation(line: 386, column: 7, scope: !2060)
!2060 = distinct !DILexicalBlock(scope: !1974, file: !235, line: 386, column: 7)
!2061 = !DILocation(line: 387, column: 7, scope: !2062)
!2062 = distinct !DILexicalBlock(scope: !1974, file: !235, line: 387, column: 7)
!2063 = !DILocation(line: 388, column: 7, scope: !2064)
!2064 = distinct !DILexicalBlock(scope: !1974, file: !235, line: 388, column: 7)
!2065 = !DILocation(line: 389, column: 7, scope: !2066)
!2066 = distinct !DILexicalBlock(scope: !1974, file: !235, line: 389, column: 7)
!2067 = !DILocation(line: 390, column: 7, scope: !2068)
!2068 = distinct !DILexicalBlock(scope: !1974, file: !235, line: 390, column: 7)
!2069 = !DILocation(line: 391, column: 7, scope: !2070)
!2070 = distinct !DILexicalBlock(scope: !1974, file: !235, line: 391, column: 7)
!2071 = !DILocation(line: 392, column: 7, scope: !2072)
!2072 = distinct !DILexicalBlock(scope: !1974, file: !235, line: 392, column: 7)
!2073 = !DILocation(line: 393, column: 7, scope: !2074)
!2074 = distinct !DILexicalBlock(scope: !1974, file: !235, line: 393, column: 7)
!2075 = !DILocation(line: 394, column: 7, scope: !2076)
!2076 = distinct !DILexicalBlock(scope: !1974, file: !235, line: 394, column: 7)
!2077 = !DILocation(line: 395, column: 7, scope: !2078)
!2078 = distinct !DILexicalBlock(scope: !1974, file: !235, line: 395, column: 7)
!2079 = !DILocation(line: 396, column: 7, scope: !2080)
!2080 = distinct !DILexicalBlock(scope: !1974, file: !235, line: 396, column: 7)
!2081 = !DILocation(line: 397, column: 7, scope: !2082)
!2082 = distinct !DILexicalBlock(scope: !1974, file: !235, line: 397, column: 7)
!2083 = !DILocation(line: 398, column: 7, scope: !2084)
!2084 = distinct !DILexicalBlock(scope: !1974, file: !235, line: 398, column: 7)
!2085 = !DILocation(line: 399, column: 7, scope: !2086)
!2086 = distinct !DILexicalBlock(scope: !1974, file: !235, line: 399, column: 7)
!2087 = !DILocation(line: 400, column: 7, scope: !2088)
!2088 = distinct !DILexicalBlock(scope: !1974, file: !235, line: 400, column: 7)
!2089 = !DILocation(line: 401, column: 7, scope: !2090)
!2090 = distinct !DILexicalBlock(scope: !1974, file: !235, line: 401, column: 7)
!2091 = !DILocation(line: 402, column: 7, scope: !2092)
!2092 = distinct !DILexicalBlock(scope: !1974, file: !235, line: 402, column: 7)
!2093 = !DILocation(line: 403, column: 7, scope: !2094)
!2094 = distinct !DILexicalBlock(scope: !1974, file: !235, line: 403, column: 7)
!2095 = !DILocation(line: 404, column: 7, scope: !2096)
!2096 = distinct !DILexicalBlock(scope: !1974, file: !235, line: 404, column: 7)
!2097 = !DILocation(line: 405, column: 7, scope: !2098)
!2098 = distinct !DILexicalBlock(scope: !1974, file: !235, line: 405, column: 7)
!2099 = !DILocation(line: 406, column: 7, scope: !2100)
!2100 = distinct !DILexicalBlock(scope: !1974, file: !235, line: 406, column: 7)
!2101 = !DILocation(line: 407, column: 7, scope: !2102)
!2102 = distinct !DILexicalBlock(scope: !1974, file: !235, line: 407, column: 7)
!2103 = !DILocation(line: 408, column: 7, scope: !2104)
!2104 = distinct !DILexicalBlock(scope: !1974, file: !235, line: 408, column: 7)
!2105 = !DILocation(line: 409, column: 7, scope: !2106)
!2106 = distinct !DILexicalBlock(scope: !1974, file: !235, line: 409, column: 7)
!2107 = !DILocation(line: 410, column: 7, scope: !2108)
!2108 = distinct !DILexicalBlock(scope: !1974, file: !235, line: 410, column: 7)
!2109 = !DILocation(line: 411, column: 7, scope: !2110)
!2110 = distinct !DILexicalBlock(scope: !1974, file: !235, line: 411, column: 7)
!2111 = !DILocation(line: 412, column: 7, scope: !2112)
!2112 = distinct !DILexicalBlock(scope: !1974, file: !235, line: 412, column: 7)
!2113 = !DILocation(line: 413, column: 7, scope: !2114)
!2114 = distinct !DILexicalBlock(scope: !1974, file: !235, line: 413, column: 7)
!2115 = !DILocation(line: 414, column: 7, scope: !2116)
!2116 = distinct !DILexicalBlock(scope: !1974, file: !235, line: 414, column: 7)
!2117 = !DILocation(line: 415, column: 7, scope: !2118)
!2118 = distinct !DILexicalBlock(scope: !1974, file: !235, line: 415, column: 7)
!2119 = !DILocation(line: 416, column: 7, scope: !2120)
!2120 = distinct !DILexicalBlock(scope: !1974, file: !235, line: 416, column: 7)
!2121 = !DILocation(line: 417, column: 7, scope: !2122)
!2122 = distinct !DILexicalBlock(scope: !1974, file: !235, line: 417, column: 7)
!2123 = !DILocation(line: 418, column: 7, scope: !2124)
!2124 = distinct !DILexicalBlock(scope: !1974, file: !235, line: 418, column: 7)
!2125 = !DILocation(line: 419, column: 7, scope: !2126)
!2126 = distinct !DILexicalBlock(scope: !1974, file: !235, line: 419, column: 7)
!2127 = !DILocation(line: 420, column: 7, scope: !2128)
!2128 = distinct !DILexicalBlock(scope: !1974, file: !235, line: 420, column: 7)
!2129 = !DILocation(line: 421, column: 7, scope: !2130)
!2130 = distinct !DILexicalBlock(scope: !1974, file: !235, line: 421, column: 7)
!2131 = !DILocation(line: 422, column: 7, scope: !2132)
!2132 = distinct !DILexicalBlock(scope: !1974, file: !235, line: 422, column: 7)
!2133 = !DILocation(line: 423, column: 7, scope: !2134)
!2134 = distinct !DILexicalBlock(scope: !1974, file: !235, line: 423, column: 7)
!2135 = !DILocation(line: 424, column: 7, scope: !2136)
!2136 = distinct !DILexicalBlock(scope: !1974, file: !235, line: 424, column: 7)
!2137 = !DILocation(line: 425, column: 7, scope: !2138)
!2138 = distinct !DILexicalBlock(scope: !1974, file: !235, line: 425, column: 7)
!2139 = !DILocation(line: 426, column: 7, scope: !2140)
!2140 = distinct !DILexicalBlock(scope: !1974, file: !235, line: 426, column: 7)
!2141 = !DILocation(line: 427, column: 7, scope: !2142)
!2142 = distinct !DILexicalBlock(scope: !1974, file: !235, line: 427, column: 7)
!2143 = !DILocation(line: 428, column: 7, scope: !2144)
!2144 = distinct !DILexicalBlock(scope: !1974, file: !235, line: 428, column: 7)
!2145 = !DILocation(line: 429, column: 7, scope: !2146)
!2146 = distinct !DILexicalBlock(scope: !1974, file: !235, line: 429, column: 7)
!2147 = !DILocation(line: 430, column: 7, scope: !2148)
!2148 = distinct !DILexicalBlock(scope: !1974, file: !235, line: 430, column: 7)
!2149 = !DILocation(line: 431, column: 7, scope: !2150)
!2150 = distinct !DILexicalBlock(scope: !1974, file: !235, line: 431, column: 7)
!2151 = !DILocation(line: 432, column: 7, scope: !2152)
!2152 = distinct !DILexicalBlock(scope: !1974, file: !235, line: 432, column: 7)
!2153 = !DILocation(line: 433, column: 7, scope: !2154)
!2154 = distinct !DILexicalBlock(scope: !1974, file: !235, line: 433, column: 7)
!2155 = !DILocation(line: 434, column: 7, scope: !2156)
!2156 = distinct !DILexicalBlock(scope: !1974, file: !235, line: 434, column: 7)
!2157 = !DILocation(line: 435, column: 7, scope: !2158)
!2158 = distinct !DILexicalBlock(scope: !1974, file: !235, line: 435, column: 7)
!2159 = !DILocation(line: 436, column: 7, scope: !2160)
!2160 = distinct !DILexicalBlock(scope: !1974, file: !235, line: 436, column: 7)
!2161 = !DILocation(line: 437, column: 7, scope: !2162)
!2162 = distinct !DILexicalBlock(scope: !1974, file: !235, line: 437, column: 7)
!2163 = !DILocation(line: 438, column: 7, scope: !2164)
!2164 = distinct !DILexicalBlock(scope: !1974, file: !235, line: 438, column: 7)
!2165 = !DILocation(line: 440, column: 18, scope: !1974)
!2166 = !DILocation(line: 441, column: 18, scope: !1974)
!2167 = !DILocation(line: 442, column: 18, scope: !1974)
!2168 = !DILocation(line: 443, column: 18, scope: !1974)
!2169 = !DILocation(line: 444, column: 18, scope: !1974)
!2170 = distinct !{!2170, !1995, !2171, !846}
!2171 = !DILocation(line: 445, column: 5, scope: !1953)
!2172 = !DILocation(line: 446, column: 1, scope: !1953)
!2173 = distinct !DISubprogram(name: "sha1_stream", scope: !235, file: !235, line: 133, type: !2174, scopeLine: 134, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !234, retainedNodes: !2210)
!2174 = !DISubroutineType(types: !2175)
!2175 = !{!64, !2176, !61}
!2176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2177, size: 64)
!2177 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !100, line: 7, baseType: !2178)
!2178 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !102, line: 49, size: 1728, elements: !2179)
!2179 = !{!2180, !2181, !2182, !2183, !2184, !2185, !2186, !2187, !2188, !2189, !2190, !2191, !2192, !2193, !2195, !2196, !2197, !2198, !2199, !2200, !2201, !2202, !2203, !2204, !2205, !2206, !2207, !2208, !2209}
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2178, file: !102, line: 51, baseType: !64, size: 32)
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2178, file: !102, line: 54, baseType: !59, size: 64, offset: 64)
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2178, file: !102, line: 55, baseType: !59, size: 64, offset: 128)
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2178, file: !102, line: 56, baseType: !59, size: 64, offset: 192)
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2178, file: !102, line: 57, baseType: !59, size: 64, offset: 256)
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2178, file: !102, line: 58, baseType: !59, size: 64, offset: 320)
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2178, file: !102, line: 59, baseType: !59, size: 64, offset: 384)
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2178, file: !102, line: 60, baseType: !59, size: 64, offset: 448)
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2178, file: !102, line: 61, baseType: !59, size: 64, offset: 512)
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2178, file: !102, line: 64, baseType: !59, size: 64, offset: 576)
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2178, file: !102, line: 65, baseType: !59, size: 64, offset: 640)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2178, file: !102, line: 66, baseType: !59, size: 64, offset: 704)
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2178, file: !102, line: 68, baseType: !117, size: 64, offset: 768)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2178, file: !102, line: 70, baseType: !2194, size: 64, offset: 832)
!2194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2178, size: 64)
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2178, file: !102, line: 72, baseType: !64, size: 32, offset: 896)
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2178, file: !102, line: 73, baseType: !64, size: 32, offset: 928)
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2178, file: !102, line: 74, baseType: !124, size: 64, offset: 960)
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2178, file: !102, line: 77, baseType: !67, size: 16, offset: 1024)
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2178, file: !102, line: 78, baseType: !128, size: 8, offset: 1040)
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2178, file: !102, line: 79, baseType: !130, size: 8, offset: 1048)
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2178, file: !102, line: 81, baseType: !134, size: 64, offset: 1088)
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2178, file: !102, line: 89, baseType: !137, size: 64, offset: 1152)
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2178, file: !102, line: 91, baseType: !139, size: 64, offset: 1216)
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2178, file: !102, line: 92, baseType: !142, size: 64, offset: 1280)
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2178, file: !102, line: 93, baseType: !2194, size: 64, offset: 1344)
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2178, file: !102, line: 94, baseType: !61, size: 64, offset: 1408)
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2178, file: !102, line: 95, baseType: !62, size: 64, offset: 1472)
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2178, file: !102, line: 96, baseType: !64, size: 32, offset: 1536)
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2178, file: !102, line: 98, baseType: !149, size: 160, offset: 1568)
!2210 = !{!2211, !2212, !2213, !2214, !2215, !2216, !2218}
!2211 = !DILocalVariable(name: "stream", arg: 1, scope: !2173, file: !235, line: 133, type: !2176)
!2212 = !DILocalVariable(name: "resblock", arg: 2, scope: !2173, file: !235, line: 133, type: !61)
!2213 = !DILocalVariable(name: "buffer", scope: !2173, file: !235, line: 141, type: !59)
!2214 = !DILocalVariable(name: "ctx", scope: !2173, file: !235, line: 145, type: !1746)
!2215 = !DILocalVariable(name: "sum", scope: !2173, file: !235, line: 147, type: !62)
!2216 = !DILocalVariable(name: "n", scope: !2217, file: !235, line: 155, type: !62)
!2217 = distinct !DILexicalBlock(scope: !2173, file: !235, line: 151, column: 5)
!2218 = !DILabel(scope: !2173, name: "process_partial_block", file: !235, line: 196)
!2219 = !DILocation(line: 0, scope: !2173)
!2220 = !DILocation(line: 141, column: 18, scope: !2173)
!2221 = !DILocation(line: 142, column: 8, scope: !2222)
!2222 = distinct !DILexicalBlock(scope: !2173, file: !235, line: 142, column: 7)
!2223 = !DILocation(line: 142, column: 7, scope: !2173)
!2224 = !DILocation(line: 145, column: 3, scope: !2173)
!2225 = !DILocation(line: 145, column: 19, scope: !2173)
!2226 = !DILocation(line: 0, scope: !1742, inlinedAt: !2227)
!2227 = distinct !DILocation(line: 146, column: 3, scope: !2173)
!2228 = !DILocation(line: 64, column: 10, scope: !1742, inlinedAt: !2227)
!2229 = !DILocation(line: 68, column: 8, scope: !1742, inlinedAt: !2227)
!2230 = !DILocation(line: 68, column: 10, scope: !1742, inlinedAt: !2227)
!2231 = !DILocation(line: 150, column: 3, scope: !2173)
!2232 = !DILocation(line: 0, scope: !2217)
!2233 = !DILocalVariable(name: "__stream", arg: 1, scope: !2234, file: !1081, line: 128, type: !2176)
!2234 = distinct !DISubprogram(name: "feof_unlocked", scope: !1081, file: !1081, line: 128, type: !2235, scopeLine: 129, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !234, retainedNodes: !2237)
!2235 = !DISubroutineType(types: !2236)
!2236 = !{!64, !2176}
!2237 = !{!2233}
!2238 = !DILocation(line: 0, scope: !2234, inlinedAt: !2239)
!2239 = distinct !DILocation(line: 166, column: 15, scope: !2240)
!2240 = distinct !DILexicalBlock(scope: !2241, file: !235, line: 166, column: 15)
!2241 = distinct !DILexicalBlock(scope: !2217, file: !235, line: 160, column: 9)
!2242 = !DILocation(line: 130, column: 10, scope: !2234, inlinedAt: !2239)
!2243 = !DILocation(line: 166, column: 15, scope: !2240)
!2244 = !DILocation(line: 166, column: 15, scope: !2241)
!2245 = !DILocation(line: 169, column: 15, scope: !2241)
!2246 = !DILocation(line: 171, column: 15, scope: !2241)
!2247 = !DILocation(line: 173, column: 19, scope: !2248)
!2248 = distinct !DILexicalBlock(scope: !2241, file: !235, line: 173, column: 15)
!2249 = !DILocation(line: 173, column: 15, scope: !2241)
!2250 = !DILocation(line: 176, column: 17, scope: !2251)
!2251 = distinct !DILexicalBlock(scope: !2241, file: !235, line: 176, column: 15)
!2252 = !DILocation(line: 176, column: 15, scope: !2241)
!2253 = distinct !{!2253, !2254, !2255}
!2254 = !DILocation(line: 159, column: 7, scope: !2217)
!2255 = !DILocation(line: 188, column: 9, scope: !2217)
!2256 = !DILocalVariable(name: "__stream", arg: 1, scope: !2257, file: !1081, line: 135, type: !2176)
!2257 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1081, file: !1081, line: 135, type: !2235, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !234, retainedNodes: !2258)
!2258 = !{!2256}
!2259 = !DILocation(line: 0, scope: !2257, inlinedAt: !2260)
!2260 = distinct !DILocation(line: 181, column: 19, scope: !2261)
!2261 = distinct !DILexicalBlock(scope: !2262, file: !235, line: 181, column: 19)
!2262 = distinct !DILexicalBlock(scope: !2251, file: !235, line: 177, column: 13)
!2263 = !DILocation(line: 137, column: 10, scope: !2257, inlinedAt: !2260)
!2264 = !DILocation(line: 181, column: 19, scope: !2261)
!2265 = !DILocation(line: 181, column: 19, scope: !2262)
!2266 = !DILocation(line: 183, column: 19, scope: !2267)
!2267 = distinct !DILexicalBlock(scope: !2261, file: !235, line: 182, column: 17)
!2268 = !DILocation(line: 193, column: 7, scope: !2217)
!2269 = !DILocation(line: 196, column: 2, scope: !2173)
!2270 = !DILocation(line: 199, column: 11, scope: !2271)
!2271 = distinct !DILexicalBlock(scope: !2173, file: !235, line: 199, column: 7)
!2272 = !DILocation(line: 199, column: 7, scope: !2173)
!2273 = !DILocation(line: 200, column: 5, scope: !2271)
!2274 = !DILocation(line: 203, column: 3, scope: !2173)
!2275 = !DILocation(line: 204, column: 3, scope: !2173)
!2276 = !DILocation(line: 205, column: 3, scope: !2173)
!2277 = !DILocation(line: 206, column: 1, scope: !2173)
!2278 = distinct !DISubprogram(name: "sha1_process_bytes", scope: !235, file: !235, line: 230, type: !1954, scopeLine: 231, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !234, retainedNodes: !2279)
!2279 = !{!2280, !2281, !2282, !2283, !2286, !2287}
!2280 = !DILocalVariable(name: "buffer", arg: 1, scope: !2278, file: !235, line: 230, type: !1807)
!2281 = !DILocalVariable(name: "len", arg: 2, scope: !2278, file: !235, line: 230, type: !62)
!2282 = !DILocalVariable(name: "ctx", arg: 3, scope: !2278, file: !235, line: 230, type: !1745)
!2283 = !DILocalVariable(name: "left_over", scope: !2284, file: !235, line: 236, type: !62)
!2284 = distinct !DILexicalBlock(scope: !2285, file: !235, line: 235, column: 5)
!2285 = distinct !DILexicalBlock(scope: !2278, file: !235, line: 234, column: 7)
!2286 = !DILocalVariable(name: "add", scope: !2284, file: !235, line: 237, type: !62)
!2287 = !DILocalVariable(name: "left_over", scope: !2288, file: !235, line: 282, type: !62)
!2288 = distinct !DILexicalBlock(scope: !2289, file: !235, line: 281, column: 5)
!2289 = distinct !DILexicalBlock(scope: !2278, file: !235, line: 280, column: 7)
!2290 = !DILocation(line: 0, scope: !2278)
!2291 = !DILocation(line: 234, column: 12, scope: !2285)
!2292 = !DILocation(line: 234, column: 19, scope: !2285)
!2293 = !DILocation(line: 234, column: 7, scope: !2278)
!2294 = !DILocation(line: 236, column: 26, scope: !2284)
!2295 = !DILocation(line: 0, scope: !2284)
!2296 = !DILocation(line: 237, column: 24, scope: !2284)
!2297 = !DILocation(line: 237, column: 36, scope: !2284)
!2298 = !DILocation(line: 237, column: 20, scope: !2284)
!2299 = !DILocation(line: 239, column: 16, scope: !2284)
!2300 = !DILocation(line: 0, scope: !1801, inlinedAt: !2301)
!2301 = distinct !DILocation(line: 239, column: 7, scope: !2284)
!2302 = !DILocation(line: 29, column: 10, scope: !1801, inlinedAt: !2301)
!2303 = !DILocation(line: 240, column: 19, scope: !2284)
!2304 = !DILocation(line: 242, column: 23, scope: !2305)
!2305 = distinct !DILexicalBlock(scope: !2284, file: !235, line: 242, column: 11)
!2306 = !DILocation(line: 242, column: 11, scope: !2284)
!2307 = !DILocation(line: 244, column: 56, scope: !2308)
!2308 = distinct !DILexicalBlock(scope: !2305, file: !235, line: 243, column: 9)
!2309 = !DILocation(line: 244, column: 44, scope: !2308)
!2310 = !DILocation(line: 244, column: 11, scope: !2308)
!2311 = !DILocation(line: 246, column: 23, scope: !2308)
!2312 = !DILocation(line: 250, column: 54, scope: !2308)
!2313 = !DILocation(line: 250, column: 61, scope: !2308)
!2314 = !DILocation(line: 250, column: 20, scope: !2308)
!2315 = !DILocation(line: 251, column: 19, scope: !2308)
!2316 = !DILocation(line: 0, scope: !1801, inlinedAt: !2317)
!2317 = distinct !DILocation(line: 249, column: 11, scope: !2308)
!2318 = !DILocation(line: 29, column: 10, scope: !1801, inlinedAt: !2317)
!2319 = !DILocation(line: 252, column: 9, scope: !2308)
!2320 = !DILocation(line: 254, column: 38, scope: !2284)
!2321 = !DILocation(line: 255, column: 11, scope: !2284)
!2322 = !DILocation(line: 256, column: 5, scope: !2284)
!2323 = !DILocation(line: 259, column: 11, scope: !2324)
!2324 = distinct !DILexicalBlock(scope: !2278, file: !235, line: 259, column: 7)
!2325 = !DILocation(line: 259, column: 7, scope: !2278)
!2326 = !DILocation(line: 263, column: 11, scope: !2327)
!2327 = distinct !DILexicalBlock(scope: !2328, file: !235, line: 263, column: 11)
!2328 = distinct !DILexicalBlock(scope: !2324, file: !235, line: 260, column: 5)
!2329 = !DILocation(line: 263, column: 11, scope: !2328)
!2330 = !DILocation(line: 264, column: 20, scope: !2327)
!2331 = !DILocation(line: 264, column: 9, scope: !2327)
!2332 = !DILocation(line: 0, scope: !1801, inlinedAt: !2333)
!2333 = distinct !DILocation(line: 266, column: 33, scope: !2334)
!2334 = distinct !DILexicalBlock(scope: !2327, file: !235, line: 265, column: 11)
!2335 = !DILocation(line: 29, column: 10, scope: !1801, inlinedAt: !2333)
!2336 = !DILocation(line: 266, column: 13, scope: !2334)
!2337 = !DILocation(line: 267, column: 44, scope: !2334)
!2338 = !DILocation(line: 268, column: 17, scope: !2334)
!2339 = distinct !{!2339, !2331, !2340, !846}
!2340 = !DILocation(line: 269, column: 11, scope: !2327)
!2341 = !DILocation(line: 273, column: 43, scope: !2342)
!2342 = distinct !DILexicalBlock(scope: !2327, file: !235, line: 272, column: 9)
!2343 = !DILocation(line: 273, column: 11, scope: !2342)
!2344 = !DILocation(line: 274, column: 42, scope: !2342)
!2345 = !DILocation(line: 275, column: 15, scope: !2342)
!2346 = !DILocation(line: 280, column: 11, scope: !2289)
!2347 = !DILocation(line: 280, column: 7, scope: !2278)
!2348 = !DILocation(line: 282, column: 31, scope: !2288)
!2349 = !DILocation(line: 282, column: 26, scope: !2288)
!2350 = !DILocation(line: 0, scope: !2288)
!2351 = !DILocation(line: 284, column: 31, scope: !2288)
!2352 = !DILocation(line: 284, column: 16, scope: !2288)
!2353 = !DILocation(line: 0, scope: !1801, inlinedAt: !2354)
!2354 = distinct !DILocation(line: 284, column: 7, scope: !2288)
!2355 = !DILocation(line: 29, column: 10, scope: !1801, inlinedAt: !2354)
!2356 = !DILocation(line: 285, column: 17, scope: !2288)
!2357 = !DILocation(line: 286, column: 21, scope: !2358)
!2358 = distinct !DILexicalBlock(scope: !2288, file: !235, line: 286, column: 11)
!2359 = !DILocation(line: 286, column: 11, scope: !2288)
!2360 = !DILocation(line: 288, column: 11, scope: !2361)
!2361 = distinct !DILexicalBlock(scope: !2358, file: !235, line: 287, column: 9)
!2362 = !DILocation(line: 289, column: 21, scope: !2361)
!2363 = !DILocation(line: 292, column: 33, scope: !2361)
!2364 = !DILocation(line: 292, column: 32, scope: !2361)
!2365 = !DILocation(line: 0, scope: !1801, inlinedAt: !2366)
!2366 = distinct !DILocation(line: 292, column: 11, scope: !2361)
!2367 = !DILocation(line: 29, column: 10, scope: !1801, inlinedAt: !2366)
!2368 = !DILocation(line: 293, column: 9, scope: !2361)
!2369 = !DILocation(line: 294, column: 21, scope: !2288)
!2370 = !DILocation(line: 294, column: 19, scope: !2288)
!2371 = !DILocation(line: 295, column: 5, scope: !2288)
!2372 = !DILocation(line: 296, column: 1, scope: !2278)
!2373 = distinct !DISubprogram(name: "sha1_buffer", scope: !235, file: !235, line: 215, type: !2374, scopeLine: 216, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !234, retainedNodes: !2376)
!2374 = !DISubroutineType(types: !2375)
!2375 = !{!61, !93, !62, !61}
!2376 = !{!2377, !2378, !2379, !2380}
!2377 = !DILocalVariable(name: "buffer", arg: 1, scope: !2373, file: !235, line: 215, type: !93)
!2378 = !DILocalVariable(name: "len", arg: 2, scope: !2373, file: !235, line: 215, type: !62)
!2379 = !DILocalVariable(name: "resblock", arg: 3, scope: !2373, file: !235, line: 215, type: !61)
!2380 = !DILocalVariable(name: "ctx", scope: !2373, file: !235, line: 217, type: !1746)
!2381 = !DILocation(line: 0, scope: !2373)
!2382 = !DILocation(line: 217, column: 3, scope: !2373)
!2383 = !DILocation(line: 217, column: 19, scope: !2373)
!2384 = !DILocation(line: 0, scope: !1742, inlinedAt: !2385)
!2385 = distinct !DILocation(line: 220, column: 3, scope: !2373)
!2386 = !DILocation(line: 64, column: 10, scope: !1742, inlinedAt: !2385)
!2387 = !DILocation(line: 68, column: 8, scope: !1742, inlinedAt: !2385)
!2388 = !DILocation(line: 68, column: 10, scope: !1742, inlinedAt: !2385)
!2389 = !DILocation(line: 223, column: 3, scope: !2373)
!2390 = !DILocation(line: 226, column: 10, scope: !2373)
!2391 = !DILocation(line: 227, column: 1, scope: !2373)
!2392 = !DILocation(line: 226, column: 3, scope: !2373)
!2393 = distinct !DISubprogram(name: "fdadvise", scope: !337, file: !337, line: 31, type: !2394, scopeLine: 32, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !336, retainedNodes: !2398)
!2394 = !DISubroutineType(types: !2395)
!2395 = !{null, !64, !2396, !2396, !2397}
!2396 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !871, line: 63, baseType: !124)
!2397 = !DIDerivedType(tag: DW_TAG_typedef, name: "fadvice_t", file: !50, line: 52, baseType: !49)
!2398 = !{!2399, !2400, !2401, !2402, !2403}
!2399 = !DILocalVariable(name: "fd", arg: 1, scope: !2393, file: !337, line: 31, type: !64)
!2400 = !DILocalVariable(name: "offset", arg: 2, scope: !2393, file: !337, line: 31, type: !2396)
!2401 = !DILocalVariable(name: "len", arg: 3, scope: !2393, file: !337, line: 31, type: !2396)
!2402 = !DILocalVariable(name: "advice", arg: 4, scope: !2393, file: !337, line: 31, type: !2397)
!2403 = !DILocalVariable(name: "__x", scope: !2404, file: !337, line: 34, type: !64)
!2404 = distinct !DILexicalBlock(scope: !2393, file: !337, line: 34, column: 3)
!2405 = !DILocation(line: 0, scope: !2393)
!2406 = !DILocation(line: 34, column: 3, scope: !2404)
!2407 = !DILocation(line: 0, scope: !2404)
!2408 = !DILocation(line: 36, column: 1, scope: !2393)
!2409 = !DISubprogram(name: "posix_fadvise", scope: !2410, file: !2410, line: 288, type: !2411, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !223)
!2410 = !DIFile(filename: "/usr/include/fcntl.h", directory: "")
!2411 = !DISubroutineType(types: !2412)
!2412 = !{!64, !64, !125, !125, !64}
!2413 = distinct !DISubprogram(name: "fadvise", scope: !337, file: !337, line: 39, type: !2414, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !336, retainedNodes: !2450)
!2414 = !DISubroutineType(types: !2415)
!2415 = !{null, !2416, !2397}
!2416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2417, size: 64)
!2417 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !100, line: 7, baseType: !2418)
!2418 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !102, line: 49, size: 1728, elements: !2419)
!2419 = !{!2420, !2421, !2422, !2423, !2424, !2425, !2426, !2427, !2428, !2429, !2430, !2431, !2432, !2433, !2435, !2436, !2437, !2438, !2439, !2440, !2441, !2442, !2443, !2444, !2445, !2446, !2447, !2448, !2449}
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2418, file: !102, line: 51, baseType: !64, size: 32)
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2418, file: !102, line: 54, baseType: !59, size: 64, offset: 64)
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2418, file: !102, line: 55, baseType: !59, size: 64, offset: 128)
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2418, file: !102, line: 56, baseType: !59, size: 64, offset: 192)
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2418, file: !102, line: 57, baseType: !59, size: 64, offset: 256)
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2418, file: !102, line: 58, baseType: !59, size: 64, offset: 320)
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2418, file: !102, line: 59, baseType: !59, size: 64, offset: 384)
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2418, file: !102, line: 60, baseType: !59, size: 64, offset: 448)
!2428 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2418, file: !102, line: 61, baseType: !59, size: 64, offset: 512)
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2418, file: !102, line: 64, baseType: !59, size: 64, offset: 576)
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2418, file: !102, line: 65, baseType: !59, size: 64, offset: 640)
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2418, file: !102, line: 66, baseType: !59, size: 64, offset: 704)
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2418, file: !102, line: 68, baseType: !117, size: 64, offset: 768)
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2418, file: !102, line: 70, baseType: !2434, size: 64, offset: 832)
!2434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2418, size: 64)
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2418, file: !102, line: 72, baseType: !64, size: 32, offset: 896)
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2418, file: !102, line: 73, baseType: !64, size: 32, offset: 928)
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2418, file: !102, line: 74, baseType: !124, size: 64, offset: 960)
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2418, file: !102, line: 77, baseType: !67, size: 16, offset: 1024)
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2418, file: !102, line: 78, baseType: !128, size: 8, offset: 1040)
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2418, file: !102, line: 79, baseType: !130, size: 8, offset: 1048)
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2418, file: !102, line: 81, baseType: !134, size: 64, offset: 1088)
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2418, file: !102, line: 89, baseType: !137, size: 64, offset: 1152)
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2418, file: !102, line: 91, baseType: !139, size: 64, offset: 1216)
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2418, file: !102, line: 92, baseType: !142, size: 64, offset: 1280)
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2418, file: !102, line: 93, baseType: !2434, size: 64, offset: 1344)
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2418, file: !102, line: 94, baseType: !61, size: 64, offset: 1408)
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2418, file: !102, line: 95, baseType: !62, size: 64, offset: 1472)
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2418, file: !102, line: 96, baseType: !64, size: 32, offset: 1536)
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2418, file: !102, line: 98, baseType: !149, size: 160, offset: 1568)
!2450 = !{!2451, !2452}
!2451 = !DILocalVariable(name: "fp", arg: 1, scope: !2413, file: !337, line: 39, type: !2416)
!2452 = !DILocalVariable(name: "advice", arg: 2, scope: !2413, file: !337, line: 39, type: !2397)
!2453 = !DILocation(line: 0, scope: !2413)
!2454 = !DILocation(line: 41, column: 7, scope: !2455)
!2455 = distinct !DILexicalBlock(scope: !2413, file: !337, line: 41, column: 7)
!2456 = !DILocation(line: 41, column: 7, scope: !2413)
!2457 = !DILocation(line: 42, column: 15, scope: !2455)
!2458 = !DILocation(line: 0, scope: !2393, inlinedAt: !2459)
!2459 = distinct !DILocation(line: 42, column: 5, scope: !2455)
!2460 = !DILocation(line: 34, column: 3, scope: !2404, inlinedAt: !2459)
!2461 = !DILocation(line: 0, scope: !2404, inlinedAt: !2459)
!2462 = !DILocation(line: 42, column: 5, scope: !2455)
!2463 = !DILocation(line: 43, column: 1, scope: !2413)
!2464 = !DISubprogram(name: "fileno", scope: !871, file: !871, line: 785, type: !2465, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !223)
!2465 = !DISubroutineType(types: !2466)
!2466 = !{!64, !2434}
!2467 = distinct !DISubprogram(name: "fopen_safer", scope: !340, file: !340, line: 31, type: !2468, scopeLine: 32, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !339, retainedNodes: !2504)
!2468 = !DISubroutineType(types: !2469)
!2469 = !{!2470, !93, !93}
!2470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2471, size: 64)
!2471 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !100, line: 7, baseType: !2472)
!2472 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !102, line: 49, size: 1728, elements: !2473)
!2473 = !{!2474, !2475, !2476, !2477, !2478, !2479, !2480, !2481, !2482, !2483, !2484, !2485, !2486, !2487, !2489, !2490, !2491, !2492, !2493, !2494, !2495, !2496, !2497, !2498, !2499, !2500, !2501, !2502, !2503}
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2472, file: !102, line: 51, baseType: !64, size: 32)
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2472, file: !102, line: 54, baseType: !59, size: 64, offset: 64)
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2472, file: !102, line: 55, baseType: !59, size: 64, offset: 128)
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2472, file: !102, line: 56, baseType: !59, size: 64, offset: 192)
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2472, file: !102, line: 57, baseType: !59, size: 64, offset: 256)
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2472, file: !102, line: 58, baseType: !59, size: 64, offset: 320)
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2472, file: !102, line: 59, baseType: !59, size: 64, offset: 384)
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2472, file: !102, line: 60, baseType: !59, size: 64, offset: 448)
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2472, file: !102, line: 61, baseType: !59, size: 64, offset: 512)
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2472, file: !102, line: 64, baseType: !59, size: 64, offset: 576)
!2484 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2472, file: !102, line: 65, baseType: !59, size: 64, offset: 640)
!2485 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2472, file: !102, line: 66, baseType: !59, size: 64, offset: 704)
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2472, file: !102, line: 68, baseType: !117, size: 64, offset: 768)
!2487 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2472, file: !102, line: 70, baseType: !2488, size: 64, offset: 832)
!2488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2472, size: 64)
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2472, file: !102, line: 72, baseType: !64, size: 32, offset: 896)
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2472, file: !102, line: 73, baseType: !64, size: 32, offset: 928)
!2491 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2472, file: !102, line: 74, baseType: !124, size: 64, offset: 960)
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2472, file: !102, line: 77, baseType: !67, size: 16, offset: 1024)
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2472, file: !102, line: 78, baseType: !128, size: 8, offset: 1040)
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2472, file: !102, line: 79, baseType: !130, size: 8, offset: 1048)
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2472, file: !102, line: 81, baseType: !134, size: 64, offset: 1088)
!2496 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2472, file: !102, line: 89, baseType: !137, size: 64, offset: 1152)
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2472, file: !102, line: 91, baseType: !139, size: 64, offset: 1216)
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2472, file: !102, line: 92, baseType: !142, size: 64, offset: 1280)
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2472, file: !102, line: 93, baseType: !2488, size: 64, offset: 1344)
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2472, file: !102, line: 94, baseType: !61, size: 64, offset: 1408)
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2472, file: !102, line: 95, baseType: !62, size: 64, offset: 1472)
!2502 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2472, file: !102, line: 96, baseType: !64, size: 32, offset: 1536)
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2472, file: !102, line: 98, baseType: !149, size: 160, offset: 1568)
!2504 = !{!2505, !2506, !2507, !2508, !2511, !2514, !2517}
!2505 = !DILocalVariable(name: "file", arg: 1, scope: !2467, file: !340, line: 31, type: !93)
!2506 = !DILocalVariable(name: "mode", arg: 2, scope: !2467, file: !340, line: 31, type: !93)
!2507 = !DILocalVariable(name: "fp", scope: !2467, file: !340, line: 33, type: !2470)
!2508 = !DILocalVariable(name: "fd", scope: !2509, file: !340, line: 37, type: !64)
!2509 = distinct !DILexicalBlock(scope: !2510, file: !340, line: 36, column: 5)
!2510 = distinct !DILexicalBlock(scope: !2467, file: !340, line: 35, column: 7)
!2511 = !DILocalVariable(name: "f", scope: !2512, file: !340, line: 41, type: !64)
!2512 = distinct !DILexicalBlock(scope: !2513, file: !340, line: 40, column: 9)
!2513 = distinct !DILexicalBlock(scope: !2509, file: !340, line: 39, column: 11)
!2514 = !DILocalVariable(name: "e", scope: !2515, file: !340, line: 45, type: !64)
!2515 = distinct !DILexicalBlock(scope: !2516, file: !340, line: 44, column: 13)
!2516 = distinct !DILexicalBlock(scope: !2512, file: !340, line: 43, column: 15)
!2517 = !DILocalVariable(name: "e", scope: !2518, file: !340, line: 54, type: !64)
!2518 = distinct !DILexicalBlock(scope: !2519, file: !340, line: 53, column: 13)
!2519 = distinct !DILexicalBlock(scope: !2512, file: !340, line: 51, column: 15)
!2520 = !DILocation(line: 0, scope: !2467)
!2521 = !DILocation(line: 33, column: 14, scope: !2467)
!2522 = !DILocation(line: 35, column: 7, scope: !2510)
!2523 = !DILocation(line: 35, column: 7, scope: !2467)
!2524 = !DILocation(line: 37, column: 16, scope: !2509)
!2525 = !DILocation(line: 0, scope: !2509)
!2526 = !DILocation(line: 39, column: 19, scope: !2513)
!2527 = !DILocation(line: 41, column: 19, scope: !2512)
!2528 = !DILocation(line: 0, scope: !2512)
!2529 = !DILocation(line: 43, column: 17, scope: !2516)
!2530 = !DILocation(line: 43, column: 15, scope: !2512)
!2531 = !DILocation(line: 45, column: 23, scope: !2515)
!2532 = !DILocation(line: 0, scope: !2515)
!2533 = !DILocation(line: 46, column: 15, scope: !2515)
!2534 = !DILocation(line: 47, column: 21, scope: !2515)
!2535 = !DILocation(line: 51, column: 15, scope: !2519)
!2536 = !DILocation(line: 51, column: 27, scope: !2519)
!2537 = !DILocation(line: 52, column: 15, scope: !2519)
!2538 = !DILocation(line: 52, column: 26, scope: !2519)
!2539 = !DILocation(line: 52, column: 24, scope: !2519)
!2540 = !DILocation(line: 51, column: 15, scope: !2512)
!2541 = !DILocation(line: 54, column: 23, scope: !2518)
!2542 = !DILocation(line: 0, scope: !2518)
!2543 = !DILocation(line: 55, column: 15, scope: !2518)
!2544 = !DILocation(line: 56, column: 21, scope: !2518)
!2545 = !DILocation(line: 63, column: 1, scope: !2467)
!2546 = !DISubprogram(name: "fdopen", scope: !871, file: !871, line: 279, type: !2547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !223)
!2547 = !DISubroutineType(types: !2548)
!2548 = !{!2488, !64, !93}
!2549 = !DISubprogram(name: "close", scope: !2550, file: !2550, line: 353, type: !1352, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !223)
!2550 = !DIFile(filename: "/usr/include/unistd.h", directory: "")
!2551 = distinct !DISubprogram(name: "set_program_name", scope: !255, file: !255, line: 39, type: !816, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !254, retainedNodes: !2552)
!2552 = !{!2553, !2554, !2555}
!2553 = !DILocalVariable(name: "argv0", arg: 1, scope: !2551, file: !255, line: 39, type: !93)
!2554 = !DILocalVariable(name: "slash", scope: !2551, file: !255, line: 46, type: !93)
!2555 = !DILocalVariable(name: "base", scope: !2551, file: !255, line: 47, type: !93)
!2556 = !DILocation(line: 0, scope: !2551)
!2557 = !DILocation(line: 51, column: 13, scope: !2558)
!2558 = distinct !DILexicalBlock(scope: !2551, file: !255, line: 51, column: 7)
!2559 = !DILocation(line: 51, column: 7, scope: !2551)
!2560 = !DILocation(line: 55, column: 14, scope: !2561)
!2561 = distinct !DILexicalBlock(scope: !2558, file: !255, line: 52, column: 5)
!2562 = !DILocation(line: 54, column: 7, scope: !2561)
!2563 = !DILocation(line: 56, column: 7, scope: !2561)
!2564 = !DILocation(line: 59, column: 11, scope: !2551)
!2565 = !DILocation(line: 60, column: 17, scope: !2551)
!2566 = !DILocation(line: 60, column: 11, scope: !2551)
!2567 = !DILocation(line: 61, column: 12, scope: !2568)
!2568 = distinct !DILexicalBlock(scope: !2551, file: !255, line: 61, column: 7)
!2569 = !DILocation(line: 61, column: 20, scope: !2568)
!2570 = !DILocation(line: 61, column: 25, scope: !2568)
!2571 = !DILocation(line: 61, column: 42, scope: !2568)
!2572 = !DILocation(line: 61, column: 28, scope: !2568)
!2573 = !DILocation(line: 61, column: 61, scope: !2568)
!2574 = !DILocation(line: 61, column: 7, scope: !2551)
!2575 = !DILocation(line: 64, column: 11, scope: !2576)
!2576 = distinct !DILexicalBlock(scope: !2577, file: !255, line: 64, column: 11)
!2577 = distinct !DILexicalBlock(scope: !2568, file: !255, line: 62, column: 5)
!2578 = !DILocation(line: 64, column: 36, scope: !2576)
!2579 = !DILocation(line: 64, column: 11, scope: !2577)
!2580 = !DILocation(line: 66, column: 24, scope: !2581)
!2581 = distinct !DILexicalBlock(scope: !2576, file: !255, line: 65, column: 9)
!2582 = !DILocation(line: 70, column: 41, scope: !2581)
!2583 = !DILocation(line: 72, column: 9, scope: !2581)
!2584 = !DILocation(line: 84, column: 16, scope: !2551)
!2585 = !DILocation(line: 90, column: 27, scope: !2551)
!2586 = !DILocation(line: 92, column: 1, scope: !2551)
!2587 = distinct !DISubprogram(name: "clone_quoting_options", scope: !261, file: !261, line: 122, type: !2588, scopeLine: 123, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !260, retainedNodes: !2591)
!2588 = !DISubroutineType(types: !2589)
!2589 = !{!2590, !2590}
!2590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !278, size: 64)
!2591 = !{!2592, !2593, !2594}
!2592 = !DILocalVariable(name: "o", arg: 1, scope: !2587, file: !261, line: 122, type: !2590)
!2593 = !DILocalVariable(name: "e", scope: !2587, file: !261, line: 124, type: !64)
!2594 = !DILocalVariable(name: "p", scope: !2587, file: !261, line: 125, type: !2590)
!2595 = !DILocation(line: 0, scope: !2587)
!2596 = !DILocation(line: 124, column: 11, scope: !2587)
!2597 = !DILocation(line: 125, column: 40, scope: !2587)
!2598 = !DILocation(line: 125, column: 31, scope: !2587)
!2599 = !DILocation(line: 127, column: 9, scope: !2587)
!2600 = !DILocation(line: 128, column: 3, scope: !2587)
!2601 = distinct !DISubprogram(name: "get_quoting_style", scope: !261, file: !261, line: 133, type: !2602, scopeLine: 134, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !260, retainedNodes: !2606)
!2602 = !DISubroutineType(types: !2603)
!2603 = !{!5, !2604}
!2604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2605, size: 64)
!2605 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !278)
!2606 = !{!2607}
!2607 = !DILocalVariable(name: "o", arg: 1, scope: !2601, file: !261, line: 133, type: !2604)
!2608 = !DILocation(line: 0, scope: !2601)
!2609 = !DILocation(line: 135, column: 11, scope: !2601)
!2610 = !DILocation(line: 135, column: 46, scope: !2601)
!2611 = !{!2612, !794, i64 0}
!2612 = !{!"quoting_options", !794, i64 0, !1022, i64 4, !794, i64 8, !793, i64 40, !793, i64 48}
!2613 = !DILocation(line: 135, column: 3, scope: !2601)
!2614 = distinct !DISubprogram(name: "set_quoting_style", scope: !261, file: !261, line: 141, type: !2615, scopeLine: 142, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !260, retainedNodes: !2617)
!2615 = !DISubroutineType(types: !2616)
!2616 = !{null, !2590, !5}
!2617 = !{!2618, !2619}
!2618 = !DILocalVariable(name: "o", arg: 1, scope: !2614, file: !261, line: 141, type: !2590)
!2619 = !DILocalVariable(name: "s", arg: 2, scope: !2614, file: !261, line: 141, type: !5)
!2620 = !DILocation(line: 0, scope: !2614)
!2621 = !DILocation(line: 143, column: 4, scope: !2614)
!2622 = !DILocation(line: 143, column: 39, scope: !2614)
!2623 = !DILocation(line: 143, column: 45, scope: !2614)
!2624 = !DILocation(line: 144, column: 1, scope: !2614)
!2625 = distinct !DISubprogram(name: "set_char_quoting", scope: !261, file: !261, line: 152, type: !2626, scopeLine: 153, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !260, retainedNodes: !2628)
!2626 = !DISubroutineType(types: !2627)
!2627 = !{!64, !2590, !60, !64}
!2628 = !{!2629, !2630, !2631, !2632, !2633, !2635, !2636}
!2629 = !DILocalVariable(name: "o", arg: 1, scope: !2625, file: !261, line: 152, type: !2590)
!2630 = !DILocalVariable(name: "c", arg: 2, scope: !2625, file: !261, line: 152, type: !60)
!2631 = !DILocalVariable(name: "i", arg: 3, scope: !2625, file: !261, line: 152, type: !64)
!2632 = !DILocalVariable(name: "uc", scope: !2625, file: !261, line: 154, type: !66)
!2633 = !DILocalVariable(name: "p", scope: !2625, file: !261, line: 155, type: !2634)
!2634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!2635 = !DILocalVariable(name: "shift", scope: !2625, file: !261, line: 157, type: !64)
!2636 = !DILocalVariable(name: "r", scope: !2625, file: !261, line: 158, type: !64)
!2637 = !DILocation(line: 0, scope: !2625)
!2638 = !DILocation(line: 156, column: 6, scope: !2625)
!2639 = !DILocation(line: 156, column: 62, scope: !2625)
!2640 = !DILocation(line: 156, column: 57, scope: !2625)
!2641 = !DILocation(line: 157, column: 15, scope: !2625)
!2642 = !DILocation(line: 158, column: 12, scope: !2625)
!2643 = !DILocation(line: 158, column: 15, scope: !2625)
!2644 = !DILocation(line: 158, column: 25, scope: !2625)
!2645 = !DILocation(line: 159, column: 13, scope: !2625)
!2646 = !DILocation(line: 159, column: 18, scope: !2625)
!2647 = !DILocation(line: 159, column: 23, scope: !2625)
!2648 = !DILocation(line: 159, column: 6, scope: !2625)
!2649 = !DILocation(line: 160, column: 3, scope: !2625)
!2650 = distinct !DISubprogram(name: "set_quoting_flags", scope: !261, file: !261, line: 168, type: !2651, scopeLine: 169, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !260, retainedNodes: !2653)
!2651 = !DISubroutineType(types: !2652)
!2652 = !{!64, !2590, !64}
!2653 = !{!2654, !2655, !2656}
!2654 = !DILocalVariable(name: "o", arg: 1, scope: !2650, file: !261, line: 168, type: !2590)
!2655 = !DILocalVariable(name: "i", arg: 2, scope: !2650, file: !261, line: 168, type: !64)
!2656 = !DILocalVariable(name: "r", scope: !2650, file: !261, line: 170, type: !64)
!2657 = !DILocation(line: 0, scope: !2650)
!2658 = !DILocation(line: 171, column: 8, scope: !2659)
!2659 = distinct !DILexicalBlock(scope: !2650, file: !261, line: 171, column: 7)
!2660 = !DILocation(line: 171, column: 7, scope: !2650)
!2661 = !DILocation(line: 173, column: 10, scope: !2650)
!2662 = !{!2612, !1022, i64 4}
!2663 = !DILocation(line: 174, column: 12, scope: !2650)
!2664 = !DILocation(line: 175, column: 3, scope: !2650)
!2665 = distinct !DISubprogram(name: "set_custom_quoting", scope: !261, file: !261, line: 179, type: !2666, scopeLine: 181, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !260, retainedNodes: !2668)
!2666 = !DISubroutineType(types: !2667)
!2667 = !{null, !2590, !93, !93}
!2668 = !{!2669, !2670, !2671}
!2669 = !DILocalVariable(name: "o", arg: 1, scope: !2665, file: !261, line: 179, type: !2590)
!2670 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2665, file: !261, line: 180, type: !93)
!2671 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2665, file: !261, line: 180, type: !93)
!2672 = !DILocation(line: 0, scope: !2665)
!2673 = !DILocation(line: 182, column: 8, scope: !2674)
!2674 = distinct !DILexicalBlock(scope: !2665, file: !261, line: 182, column: 7)
!2675 = !DILocation(line: 182, column: 7, scope: !2665)
!2676 = !DILocation(line: 184, column: 6, scope: !2665)
!2677 = !DILocation(line: 184, column: 12, scope: !2665)
!2678 = !DILocation(line: 185, column: 8, scope: !2679)
!2679 = distinct !DILexicalBlock(scope: !2665, file: !261, line: 185, column: 7)
!2680 = !DILocation(line: 185, column: 19, scope: !2679)
!2681 = !DILocation(line: 186, column: 5, scope: !2679)
!2682 = !DILocation(line: 187, column: 6, scope: !2665)
!2683 = !DILocation(line: 187, column: 17, scope: !2665)
!2684 = !{!2612, !793, i64 40}
!2685 = !DILocation(line: 188, column: 6, scope: !2665)
!2686 = !DILocation(line: 188, column: 18, scope: !2665)
!2687 = !{!2612, !793, i64 48}
!2688 = !DILocation(line: 189, column: 1, scope: !2665)
!2689 = distinct !DISubprogram(name: "quotearg_buffer", scope: !261, file: !261, line: 784, type: !2690, scopeLine: 787, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !260, retainedNodes: !2692)
!2690 = !DISubroutineType(types: !2691)
!2691 = !{!62, !59, !62, !93, !62, !2604}
!2692 = !{!2693, !2694, !2695, !2696, !2697, !2698, !2699, !2700}
!2693 = !DILocalVariable(name: "buffer", arg: 1, scope: !2689, file: !261, line: 784, type: !59)
!2694 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2689, file: !261, line: 784, type: !62)
!2695 = !DILocalVariable(name: "arg", arg: 3, scope: !2689, file: !261, line: 785, type: !93)
!2696 = !DILocalVariable(name: "argsize", arg: 4, scope: !2689, file: !261, line: 785, type: !62)
!2697 = !DILocalVariable(name: "o", arg: 5, scope: !2689, file: !261, line: 786, type: !2604)
!2698 = !DILocalVariable(name: "p", scope: !2689, file: !261, line: 788, type: !2604)
!2699 = !DILocalVariable(name: "e", scope: !2689, file: !261, line: 789, type: !64)
!2700 = !DILocalVariable(name: "r", scope: !2689, file: !261, line: 790, type: !62)
!2701 = !DILocation(line: 0, scope: !2689)
!2702 = !DILocation(line: 788, column: 37, scope: !2689)
!2703 = !DILocation(line: 789, column: 11, scope: !2689)
!2704 = !DILocation(line: 791, column: 43, scope: !2689)
!2705 = !DILocation(line: 791, column: 53, scope: !2689)
!2706 = !DILocation(line: 791, column: 60, scope: !2689)
!2707 = !DILocation(line: 792, column: 43, scope: !2689)
!2708 = !DILocation(line: 792, column: 58, scope: !2689)
!2709 = !DILocation(line: 790, column: 14, scope: !2689)
!2710 = !DILocation(line: 793, column: 9, scope: !2689)
!2711 = !DILocation(line: 794, column: 3, scope: !2689)
!2712 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !261, file: !261, line: 256, type: !2713, scopeLine: 262, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !260, retainedNodes: !2717)
!2713 = !DISubroutineType(types: !2714)
!2714 = !{!62, !59, !62, !93, !62, !5, !64, !2715, !93, !93}
!2715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2716, size: 64)
!2716 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!2717 = !{!2718, !2719, !2720, !2721, !2722, !2723, !2724, !2725, !2726, !2727, !2728, !2729, !2730, !2731, !2732, !2733, !2734, !2735, !2736, !2737, !2738, !2742, !2743, !2744, !2745, !2746, !2749, !2750, !2768, !2771, !2772, !2779, !2782, !2783, !2784, !2785, !2786, !2787}
!2718 = !DILocalVariable(name: "buffer", arg: 1, scope: !2712, file: !261, line: 256, type: !59)
!2719 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2712, file: !261, line: 256, type: !62)
!2720 = !DILocalVariable(name: "arg", arg: 3, scope: !2712, file: !261, line: 257, type: !93)
!2721 = !DILocalVariable(name: "argsize", arg: 4, scope: !2712, file: !261, line: 257, type: !62)
!2722 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !2712, file: !261, line: 258, type: !5)
!2723 = !DILocalVariable(name: "flags", arg: 6, scope: !2712, file: !261, line: 258, type: !64)
!2724 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !2712, file: !261, line: 259, type: !2715)
!2725 = !DILocalVariable(name: "left_quote", arg: 8, scope: !2712, file: !261, line: 260, type: !93)
!2726 = !DILocalVariable(name: "right_quote", arg: 9, scope: !2712, file: !261, line: 261, type: !93)
!2727 = !DILocalVariable(name: "i", scope: !2712, file: !261, line: 263, type: !62)
!2728 = !DILocalVariable(name: "len", scope: !2712, file: !261, line: 264, type: !62)
!2729 = !DILocalVariable(name: "orig_buffersize", scope: !2712, file: !261, line: 265, type: !62)
!2730 = !DILocalVariable(name: "quote_string", scope: !2712, file: !261, line: 266, type: !93)
!2731 = !DILocalVariable(name: "quote_string_len", scope: !2712, file: !261, line: 267, type: !62)
!2732 = !DILocalVariable(name: "backslash_escapes", scope: !2712, file: !261, line: 268, type: !71)
!2733 = !DILocalVariable(name: "unibyte_locale", scope: !2712, file: !261, line: 269, type: !71)
!2734 = !DILocalVariable(name: "elide_outer_quotes", scope: !2712, file: !261, line: 270, type: !71)
!2735 = !DILocalVariable(name: "pending_shell_escape_end", scope: !2712, file: !261, line: 271, type: !71)
!2736 = !DILocalVariable(name: "encountered_single_quote", scope: !2712, file: !261, line: 272, type: !71)
!2737 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !2712, file: !261, line: 273, type: !71)
!2738 = !DILocalVariable(name: "c", scope: !2739, file: !261, line: 402, type: !66)
!2739 = distinct !DILexicalBlock(scope: !2740, file: !261, line: 401, column: 5)
!2740 = distinct !DILexicalBlock(scope: !2741, file: !261, line: 400, column: 3)
!2741 = distinct !DILexicalBlock(scope: !2712, file: !261, line: 400, column: 3)
!2742 = !DILocalVariable(name: "esc", scope: !2739, file: !261, line: 403, type: !66)
!2743 = !DILocalVariable(name: "is_right_quote", scope: !2739, file: !261, line: 404, type: !71)
!2744 = !DILocalVariable(name: "escaping", scope: !2739, file: !261, line: 405, type: !71)
!2745 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !2739, file: !261, line: 406, type: !71)
!2746 = !DILocalVariable(name: "m", scope: !2747, file: !261, line: 610, type: !62)
!2747 = distinct !DILexicalBlock(scope: !2748, file: !261, line: 608, column: 11)
!2748 = distinct !DILexicalBlock(scope: !2739, file: !261, line: 426, column: 9)
!2749 = !DILocalVariable(name: "printable", scope: !2747, file: !261, line: 612, type: !71)
!2750 = !DILocalVariable(name: "mbstate", scope: !2751, file: !261, line: 621, type: !2753)
!2751 = distinct !DILexicalBlock(scope: !2752, file: !261, line: 620, column: 15)
!2752 = distinct !DILexicalBlock(scope: !2747, file: !261, line: 614, column: 17)
!2753 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !2754, line: 6, baseType: !2755)
!2754 = !DIFile(filename: "/usr/include/bits/types/mbstate_t.h", directory: "")
!2755 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !2756, line: 21, baseType: !2757)
!2756 = !DIFile(filename: "/usr/include/bits/types/__mbstate_t.h", directory: "")
!2757 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2756, line: 13, size: 64, elements: !2758)
!2758 = !{!2759, !2760}
!2759 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !2757, file: !2756, line: 15, baseType: !64, size: 32)
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !2757, file: !2756, line: 20, baseType: !2761, size: 32, offset: 32)
!2761 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2757, file: !2756, line: 16, size: 32, elements: !2762)
!2762 = !{!2763, !2764}
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !2761, file: !2756, line: 18, baseType: !7, size: 32)
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !2761, file: !2756, line: 19, baseType: !2765, size: 32)
!2765 = !DICompositeType(tag: DW_TAG_array_type, baseType: !60, size: 32, elements: !2766)
!2766 = !{!2767}
!2767 = !DISubrange(count: 4)
!2768 = !DILocalVariable(name: "w", scope: !2769, file: !261, line: 631, type: !2770)
!2769 = distinct !DILexicalBlock(scope: !2751, file: !261, line: 630, column: 19)
!2770 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !63, line: 74, baseType: !64)
!2771 = !DILocalVariable(name: "bytes", scope: !2769, file: !261, line: 632, type: !62)
!2772 = !DILocalVariable(name: "j", scope: !2773, file: !261, line: 657, type: !62)
!2773 = distinct !DILexicalBlock(scope: !2774, file: !261, line: 656, column: 27)
!2774 = distinct !DILexicalBlock(scope: !2775, file: !261, line: 654, column: 29)
!2775 = distinct !DILexicalBlock(scope: !2776, file: !261, line: 649, column: 23)
!2776 = distinct !DILexicalBlock(scope: !2777, file: !261, line: 641, column: 30)
!2777 = distinct !DILexicalBlock(scope: !2778, file: !261, line: 636, column: 30)
!2778 = distinct !DILexicalBlock(scope: !2769, file: !261, line: 634, column: 25)
!2779 = !DILocalVariable(name: "ilim", scope: !2780, file: !261, line: 684, type: !62)
!2780 = distinct !DILexicalBlock(scope: !2781, file: !261, line: 681, column: 15)
!2781 = distinct !DILexicalBlock(scope: !2747, file: !261, line: 680, column: 17)
!2782 = !DILabel(scope: !2712, name: "process_input", file: !261, line: 314)
!2783 = !DILabel(scope: !2748, name: "c_and_shell_escape", file: !261, line: 512)
!2784 = !DILabel(scope: !2748, name: "c_escape", file: !261, line: 517)
!2785 = !DILabel(scope: !2739, name: "store_escape", file: !261, line: 719)
!2786 = !DILabel(scope: !2739, name: "store_c", file: !261, line: 722)
!2787 = !DILabel(scope: !2712, name: "force_outer_quoting_style", file: !261, line: 763)
!2788 = !DILocation(line: 0, scope: !2712)
!2789 = !DILocation(line: 269, column: 25, scope: !2712)
!2790 = !DILocation(line: 269, column: 36, scope: !2712)
!2791 = !DILocation(line: 270, column: 8, scope: !2712)
!2792 = !DILocation(line: 273, column: 3, scope: !2712)
!2793 = !DILocation(line: 265, column: 10, scope: !2712)
!2794 = !DILocation(line: 266, column: 15, scope: !2712)
!2795 = !DILocation(line: 267, column: 10, scope: !2712)
!2796 = !DILocation(line: 268, column: 8, scope: !2712)
!2797 = !DILocation(line: 271, column: 8, scope: !2712)
!2798 = !DILocation(line: 272, column: 8, scope: !2712)
!2799 = !DILocation(line: 273, column: 8, scope: !2712)
!2800 = !DILocation(line: 314, column: 2, scope: !2712)
!2801 = !DILocation(line: 316, column: 3, scope: !2712)
!2802 = !DILocation(line: 323, column: 11, scope: !2803)
!2803 = distinct !DILexicalBlock(scope: !2712, file: !261, line: 317, column: 5)
!2804 = !DILocation(line: 323, column: 12, scope: !2805)
!2805 = distinct !DILexicalBlock(scope: !2803, file: !261, line: 323, column: 11)
!2806 = !DILocation(line: 324, column: 9, scope: !2807)
!2807 = distinct !DILexicalBlock(scope: !2808, file: !261, line: 324, column: 9)
!2808 = distinct !DILexicalBlock(scope: !2805, file: !261, line: 324, column: 9)
!2809 = !DILocation(line: 324, column: 9, scope: !2808)
!2810 = !DILocation(line: 362, column: 26, scope: !2811)
!2811 = distinct !DILexicalBlock(scope: !2812, file: !261, line: 340, column: 11)
!2812 = distinct !DILexicalBlock(scope: !2813, file: !261, line: 339, column: 13)
!2813 = distinct !DILexicalBlock(scope: !2803, file: !261, line: 338, column: 7)
!2814 = !DILocation(line: 363, column: 27, scope: !2811)
!2815 = !DILocation(line: 364, column: 11, scope: !2811)
!2816 = !DILocation(line: 365, column: 14, scope: !2817)
!2817 = distinct !DILexicalBlock(scope: !2813, file: !261, line: 365, column: 13)
!2818 = !DILocation(line: 365, column: 13, scope: !2813)
!2819 = !DILocation(line: 366, column: 43, scope: !2820)
!2820 = distinct !DILexicalBlock(scope: !2821, file: !261, line: 366, column: 11)
!2821 = distinct !DILexicalBlock(scope: !2817, file: !261, line: 366, column: 11)
!2822 = !DILocation(line: 366, column: 11, scope: !2821)
!2823 = !DILocation(line: 367, column: 13, scope: !2824)
!2824 = distinct !DILexicalBlock(scope: !2825, file: !261, line: 367, column: 13)
!2825 = distinct !DILexicalBlock(scope: !2820, file: !261, line: 367, column: 13)
!2826 = !DILocation(line: 367, column: 13, scope: !2825)
!2827 = !DILocation(line: 366, column: 70, scope: !2820)
!2828 = distinct !{!2828, !2822, !2829, !846}
!2829 = !DILocation(line: 367, column: 13, scope: !2821)
!2830 = !DILocation(line: 264, column: 10, scope: !2712)
!2831 = !DILocation(line: 370, column: 28, scope: !2813)
!2832 = !DILocation(line: 372, column: 7, scope: !2803)
!2833 = !DILocation(line: 376, column: 7, scope: !2803)
!2834 = !DILocation(line: 379, column: 7, scope: !2803)
!2835 = !DILocation(line: 381, column: 12, scope: !2836)
!2836 = distinct !DILexicalBlock(scope: !2803, file: !261, line: 381, column: 11)
!2837 = !DILocation(line: 381, column: 11, scope: !2803)
!2838 = !DILocation(line: 386, column: 12, scope: !2839)
!2839 = distinct !DILexicalBlock(scope: !2803, file: !261, line: 386, column: 11)
!2840 = !DILocation(line: 386, column: 11, scope: !2803)
!2841 = !DILocation(line: 387, column: 9, scope: !2842)
!2842 = distinct !DILexicalBlock(scope: !2843, file: !261, line: 387, column: 9)
!2843 = distinct !DILexicalBlock(scope: !2839, file: !261, line: 387, column: 9)
!2844 = !DILocation(line: 387, column: 9, scope: !2843)
!2845 = !DILocation(line: 394, column: 7, scope: !2803)
!2846 = !DILocation(line: 397, column: 7, scope: !2803)
!2847 = !DILocation(line: 400, column: 8, scope: !2741)
!2848 = !DILocation(line: 0, scope: !2741)
!2849 = !DILocation(line: 400, column: 27, scope: !2740)
!2850 = !DILocation(line: 400, column: 19, scope: !2740)
!2851 = !DILocation(line: 400, column: 41, scope: !2740)
!2852 = !DILocation(line: 400, column: 48, scope: !2740)
!2853 = !DILocation(line: 400, column: 3, scope: !2741)
!2854 = !DILocation(line: 400, column: 60, scope: !2740)
!2855 = !DILocation(line: 0, scope: !2739)
!2856 = !DILocation(line: 409, column: 11, scope: !2857)
!2857 = distinct !DILexicalBlock(scope: !2739, file: !261, line: 408, column: 11)
!2858 = !DILocation(line: 411, column: 17, scope: !2857)
!2859 = !DILocation(line: 412, column: 39, scope: !2857)
!2860 = !DILocation(line: 416, column: 32, scope: !2857)
!2861 = !DILocation(line: 412, column: 19, scope: !2857)
!2862 = !DILocation(line: 412, column: 15, scope: !2857)
!2863 = !DILocation(line: 417, column: 11, scope: !2857)
!2864 = !DILocation(line: 417, column: 26, scope: !2857)
!2865 = !DILocation(line: 417, column: 14, scope: !2857)
!2866 = !DILocation(line: 417, column: 63, scope: !2857)
!2867 = !DILocation(line: 408, column: 11, scope: !2739)
!2868 = !DILocation(line: 424, column: 11, scope: !2739)
!2869 = !DILocation(line: 425, column: 7, scope: !2739)
!2870 = !DILocation(line: 428, column: 15, scope: !2748)
!2871 = !DILocation(line: 430, column: 15, scope: !2872)
!2872 = distinct !DILexicalBlock(scope: !2873, file: !261, line: 430, column: 15)
!2873 = distinct !DILexicalBlock(scope: !2874, file: !261, line: 429, column: 13)
!2874 = distinct !DILexicalBlock(scope: !2748, file: !261, line: 428, column: 15)
!2875 = !DILocation(line: 430, column: 15, scope: !2876)
!2876 = distinct !DILexicalBlock(scope: !2872, file: !261, line: 430, column: 15)
!2877 = !DILocation(line: 430, column: 15, scope: !2878)
!2878 = distinct !DILexicalBlock(scope: !2879, file: !261, line: 430, column: 15)
!2879 = distinct !DILexicalBlock(scope: !2880, file: !261, line: 430, column: 15)
!2880 = distinct !DILexicalBlock(scope: !2876, file: !261, line: 430, column: 15)
!2881 = !DILocation(line: 430, column: 15, scope: !2879)
!2882 = !DILocation(line: 430, column: 15, scope: !2883)
!2883 = distinct !DILexicalBlock(scope: !2884, file: !261, line: 430, column: 15)
!2884 = distinct !DILexicalBlock(scope: !2880, file: !261, line: 430, column: 15)
!2885 = !DILocation(line: 430, column: 15, scope: !2884)
!2886 = !DILocation(line: 430, column: 15, scope: !2887)
!2887 = distinct !DILexicalBlock(scope: !2888, file: !261, line: 430, column: 15)
!2888 = distinct !DILexicalBlock(scope: !2880, file: !261, line: 430, column: 15)
!2889 = !DILocation(line: 430, column: 15, scope: !2888)
!2890 = !DILocation(line: 430, column: 15, scope: !2880)
!2891 = !DILocation(line: 430, column: 15, scope: !2892)
!2892 = distinct !DILexicalBlock(scope: !2893, file: !261, line: 430, column: 15)
!2893 = distinct !DILexicalBlock(scope: !2872, file: !261, line: 430, column: 15)
!2894 = !DILocation(line: 430, column: 15, scope: !2893)
!2895 = !DILocation(line: 438, column: 19, scope: !2896)
!2896 = distinct !DILexicalBlock(scope: !2873, file: !261, line: 437, column: 19)
!2897 = !DILocation(line: 438, column: 48, scope: !2896)
!2898 = !DILocation(line: 438, column: 59, scope: !2896)
!2899 = !DILocation(line: 440, column: 19, scope: !2900)
!2900 = distinct !DILexicalBlock(scope: !2901, file: !261, line: 440, column: 19)
!2901 = distinct !DILexicalBlock(scope: !2902, file: !261, line: 440, column: 19)
!2902 = distinct !DILexicalBlock(scope: !2896, file: !261, line: 439, column: 17)
!2903 = !DILocation(line: 440, column: 19, scope: !2901)
!2904 = !DILocation(line: 441, column: 19, scope: !2905)
!2905 = distinct !DILexicalBlock(scope: !2906, file: !261, line: 441, column: 19)
!2906 = distinct !DILexicalBlock(scope: !2902, file: !261, line: 441, column: 19)
!2907 = !DILocation(line: 441, column: 19, scope: !2906)
!2908 = !DILocation(line: 442, column: 17, scope: !2902)
!2909 = !DILocation(line: 449, column: 20, scope: !2874)
!2910 = !DILocation(line: 454, column: 11, scope: !2748)
!2911 = !DILocation(line: 457, column: 19, scope: !2912)
!2912 = distinct !DILexicalBlock(scope: !2748, file: !261, line: 455, column: 13)
!2913 = !DILocation(line: 463, column: 19, scope: !2914)
!2914 = distinct !DILexicalBlock(scope: !2912, file: !261, line: 462, column: 19)
!2915 = !DILocation(line: 463, column: 47, scope: !2914)
!2916 = !DILocation(line: 463, column: 41, scope: !2914)
!2917 = !DILocation(line: 463, column: 52, scope: !2914)
!2918 = !DILocation(line: 462, column: 19, scope: !2912)
!2919 = !DILocation(line: 464, column: 25, scope: !2914)
!2920 = !DILocation(line: 464, column: 17, scope: !2914)
!2921 = !DILocation(line: 471, column: 25, scope: !2922)
!2922 = distinct !DILexicalBlock(scope: !2914, file: !261, line: 465, column: 19)
!2923 = !DILocation(line: 475, column: 21, scope: !2924)
!2924 = distinct !DILexicalBlock(scope: !2925, file: !261, line: 475, column: 21)
!2925 = distinct !DILexicalBlock(scope: !2922, file: !261, line: 475, column: 21)
!2926 = !DILocation(line: 475, column: 21, scope: !2925)
!2927 = !DILocation(line: 476, column: 21, scope: !2928)
!2928 = distinct !DILexicalBlock(scope: !2929, file: !261, line: 476, column: 21)
!2929 = distinct !DILexicalBlock(scope: !2922, file: !261, line: 476, column: 21)
!2930 = !DILocation(line: 476, column: 21, scope: !2929)
!2931 = !DILocation(line: 477, column: 21, scope: !2932)
!2932 = distinct !DILexicalBlock(scope: !2933, file: !261, line: 477, column: 21)
!2933 = distinct !DILexicalBlock(scope: !2922, file: !261, line: 477, column: 21)
!2934 = !DILocation(line: 477, column: 21, scope: !2933)
!2935 = !DILocation(line: 478, column: 21, scope: !2936)
!2936 = distinct !DILexicalBlock(scope: !2937, file: !261, line: 478, column: 21)
!2937 = distinct !DILexicalBlock(scope: !2922, file: !261, line: 478, column: 21)
!2938 = !DILocation(line: 478, column: 21, scope: !2937)
!2939 = !DILocation(line: 479, column: 21, scope: !2922)
!2940 = !DILocation(line: 492, column: 31, scope: !2748)
!2941 = !DILocation(line: 493, column: 31, scope: !2748)
!2942 = !DILocation(line: 495, column: 31, scope: !2748)
!2943 = !DILocation(line: 496, column: 31, scope: !2748)
!2944 = !DILocation(line: 497, column: 31, scope: !2748)
!2945 = !DILocation(line: 500, column: 15, scope: !2748)
!2946 = !DILocation(line: 502, column: 19, scope: !2947)
!2947 = distinct !DILexicalBlock(scope: !2948, file: !261, line: 501, column: 13)
!2948 = distinct !DILexicalBlock(scope: !2748, file: !261, line: 500, column: 15)
!2949 = !DILocation(line: 509, column: 33, scope: !2950)
!2950 = distinct !DILexicalBlock(scope: !2748, file: !261, line: 509, column: 15)
!2951 = !DILocation(line: 0, scope: !2748)
!2952 = !DILocation(line: 512, column: 9, scope: !2748)
!2953 = !DILocation(line: 514, column: 15, scope: !2954)
!2954 = distinct !DILexicalBlock(scope: !2748, file: !261, line: 513, column: 15)
!2955 = !DILocation(line: 517, column: 9, scope: !2748)
!2956 = !DILocation(line: 518, column: 15, scope: !2748)
!2957 = !DILocation(line: 526, column: 15, scope: !2748)
!2958 = !DILocation(line: 526, column: 40, scope: !2959)
!2959 = distinct !DILexicalBlock(scope: !2748, file: !261, line: 526, column: 15)
!2960 = !DILocation(line: 526, column: 47, scope: !2959)
!2961 = !DILocation(line: 526, column: 18, scope: !2959)
!2962 = !DILocation(line: 530, column: 17, scope: !2963)
!2963 = distinct !DILexicalBlock(scope: !2748, file: !261, line: 530, column: 15)
!2964 = !DILocation(line: 530, column: 15, scope: !2748)
!2965 = !DILocation(line: 535, column: 11, scope: !2748)
!2966 = !DILocation(line: 549, column: 15, scope: !2967)
!2967 = distinct !DILexicalBlock(scope: !2748, file: !261, line: 548, column: 15)
!2968 = !DILocation(line: 556, column: 15, scope: !2748)
!2969 = !DILocation(line: 558, column: 19, scope: !2970)
!2970 = distinct !DILexicalBlock(scope: !2971, file: !261, line: 557, column: 13)
!2971 = distinct !DILexicalBlock(scope: !2748, file: !261, line: 556, column: 15)
!2972 = !DILocation(line: 561, column: 19, scope: !2973)
!2973 = distinct !DILexicalBlock(scope: !2970, file: !261, line: 561, column: 19)
!2974 = !DILocation(line: 561, column: 30, scope: !2973)
!2975 = !DILocation(line: 570, column: 15, scope: !2976)
!2976 = distinct !DILexicalBlock(scope: !2977, file: !261, line: 570, column: 15)
!2977 = distinct !DILexicalBlock(scope: !2970, file: !261, line: 570, column: 15)
!2978 = !DILocation(line: 570, column: 15, scope: !2977)
!2979 = !DILocation(line: 571, column: 15, scope: !2980)
!2980 = distinct !DILexicalBlock(scope: !2981, file: !261, line: 571, column: 15)
!2981 = distinct !DILexicalBlock(scope: !2970, file: !261, line: 571, column: 15)
!2982 = !DILocation(line: 571, column: 15, scope: !2981)
!2983 = !DILocation(line: 572, column: 15, scope: !2984)
!2984 = distinct !DILexicalBlock(scope: !2985, file: !261, line: 572, column: 15)
!2985 = distinct !DILexicalBlock(scope: !2970, file: !261, line: 572, column: 15)
!2986 = !DILocation(line: 572, column: 15, scope: !2985)
!2987 = !DILocation(line: 574, column: 13, scope: !2970)
!2988 = !DILocation(line: 614, column: 17, scope: !2747)
!2989 = !DILocation(line: 0, scope: !2747)
!2990 = !DILocation(line: 617, column: 29, scope: !2991)
!2991 = distinct !DILexicalBlock(scope: !2752, file: !261, line: 615, column: 15)
!2992 = !DILocation(line: 617, column: 27, scope: !2991)
!2993 = !DILocation(line: 678, column: 40, scope: !2747)
!2994 = !DILocation(line: 680, column: 23, scope: !2781)
!2995 = !DILocation(line: 621, column: 17, scope: !2751)
!2996 = !DILocation(line: 621, column: 27, scope: !2751)
!2997 = !DILocalVariable(name: "__dest", arg: 1, scope: !2998, file: !1802, line: 57, type: !61)
!2998 = distinct !DISubprogram(name: "memset", scope: !1802, file: !1802, line: 57, type: !2999, scopeLine: 58, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !260, retainedNodes: !3001)
!2999 = !DISubroutineType(types: !3000)
!3000 = !{!61, !61, !64, !62}
!3001 = !{!2997, !3002, !3003}
!3002 = !DILocalVariable(name: "__ch", arg: 2, scope: !2998, file: !1802, line: 57, type: !64)
!3003 = !DILocalVariable(name: "__len", arg: 3, scope: !2998, file: !1802, line: 57, type: !62)
!3004 = !DILocation(line: 0, scope: !2998, inlinedAt: !3005)
!3005 = distinct !DILocation(line: 622, column: 17, scope: !2751)
!3006 = !DILocation(line: 59, column: 10, scope: !2998, inlinedAt: !3005)
!3007 = !DILocation(line: 626, column: 29, scope: !3008)
!3008 = distinct !DILexicalBlock(scope: !2751, file: !261, line: 626, column: 21)
!3009 = !DILocation(line: 626, column: 21, scope: !2751)
!3010 = !DILocation(line: 627, column: 29, scope: !3008)
!3011 = !DILocation(line: 627, column: 19, scope: !3008)
!3012 = !DILocation(line: 629, column: 17, scope: !2751)
!3013 = !DILocation(line: 624, column: 19, scope: !2751)
!3014 = !DILocation(line: 625, column: 27, scope: !2751)
!3015 = !DILocation(line: 631, column: 21, scope: !2769)
!3016 = !DILocation(line: 632, column: 56, scope: !2769)
!3017 = !DILocation(line: 632, column: 50, scope: !2769)
!3018 = !DILocation(line: 633, column: 53, scope: !2769)
!3019 = !DILocation(line: 0, scope: !2769)
!3020 = !DILocation(line: 632, column: 36, scope: !2769)
!3021 = !DILocation(line: 634, column: 25, scope: !2769)
!3022 = !DILocation(line: 644, column: 38, scope: !3023)
!3023 = distinct !DILexicalBlock(scope: !2776, file: !261, line: 642, column: 23)
!3024 = !DILocation(line: 644, column: 48, scope: !3023)
!3025 = !DILocation(line: 644, column: 25, scope: !3023)
!3026 = !DILocation(line: 644, column: 51, scope: !3023)
!3027 = !DILocation(line: 645, column: 28, scope: !3023)
!3028 = !DILocation(line: 644, column: 34, scope: !3023)
!3029 = distinct !{!3029, !3025, !3027, !846}
!3030 = !DILocation(line: 655, column: 29, scope: !2774)
!3031 = !DILocation(line: 0, scope: !2773)
!3032 = !DILocation(line: 659, column: 49, scope: !3033)
!3033 = distinct !DILexicalBlock(scope: !3034, file: !261, line: 658, column: 29)
!3034 = distinct !DILexicalBlock(scope: !2773, file: !261, line: 658, column: 29)
!3035 = !DILocation(line: 659, column: 39, scope: !3033)
!3036 = !DILocation(line: 659, column: 31, scope: !3033)
!3037 = !DILocation(line: 658, column: 53, scope: !3033)
!3038 = !DILocation(line: 658, column: 43, scope: !3033)
!3039 = !DILocation(line: 658, column: 29, scope: !3034)
!3040 = distinct !{!3040, !3039, !3041, !846}
!3041 = !DILocation(line: 667, column: 33, scope: !3034)
!3042 = !DILocation(line: 674, column: 19, scope: !2751)
!3043 = !DILocation(line: 670, column: 41, scope: !3044)
!3044 = distinct !DILexicalBlock(scope: !2775, file: !261, line: 670, column: 29)
!3045 = !DILocation(line: 670, column: 31, scope: !3044)
!3046 = !DILocation(line: 670, column: 29, scope: !2775)
!3047 = !DILocation(line: 672, column: 27, scope: !2775)
!3048 = !DILocation(line: 675, column: 26, scope: !2751)
!3049 = !DILocation(line: 675, column: 24, scope: !2751)
!3050 = !DILocation(line: 674, column: 19, scope: !2769)
!3051 = distinct !{!3051, !3012, !3052, !846}
!3052 = !DILocation(line: 675, column: 44, scope: !2751)
!3053 = !DILocation(line: 676, column: 15, scope: !2752)
!3054 = !DILocation(line: 680, column: 19, scope: !2781)
!3055 = !DILocation(line: 680, column: 45, scope: !2781)
!3056 = !DILocation(line: 684, column: 33, scope: !2780)
!3057 = !DILocation(line: 0, scope: !2780)
!3058 = !DILocation(line: 686, column: 17, scope: !2780)
!3059 = !DILocation(line: 405, column: 12, scope: !2739)
!3060 = !DILocation(line: 688, column: 43, scope: !3061)
!3061 = distinct !DILexicalBlock(scope: !3062, file: !261, line: 688, column: 25)
!3062 = distinct !DILexicalBlock(scope: !3063, file: !261, line: 687, column: 19)
!3063 = distinct !DILexicalBlock(scope: !3064, file: !261, line: 686, column: 17)
!3064 = distinct !DILexicalBlock(scope: !2780, file: !261, line: 686, column: 17)
!3065 = !DILocation(line: 690, column: 25, scope: !3066)
!3066 = distinct !DILexicalBlock(scope: !3067, file: !261, line: 690, column: 25)
!3067 = distinct !DILexicalBlock(scope: !3061, file: !261, line: 689, column: 23)
!3068 = !DILocation(line: 690, column: 25, scope: !3069)
!3069 = distinct !DILexicalBlock(scope: !3066, file: !261, line: 690, column: 25)
!3070 = !DILocation(line: 690, column: 25, scope: !3071)
!3071 = distinct !DILexicalBlock(scope: !3072, file: !261, line: 690, column: 25)
!3072 = distinct !DILexicalBlock(scope: !3073, file: !261, line: 690, column: 25)
!3073 = distinct !DILexicalBlock(scope: !3069, file: !261, line: 690, column: 25)
!3074 = !DILocation(line: 690, column: 25, scope: !3072)
!3075 = !DILocation(line: 690, column: 25, scope: !3076)
!3076 = distinct !DILexicalBlock(scope: !3077, file: !261, line: 690, column: 25)
!3077 = distinct !DILexicalBlock(scope: !3073, file: !261, line: 690, column: 25)
!3078 = !DILocation(line: 690, column: 25, scope: !3077)
!3079 = !DILocation(line: 690, column: 25, scope: !3080)
!3080 = distinct !DILexicalBlock(scope: !3081, file: !261, line: 690, column: 25)
!3081 = distinct !DILexicalBlock(scope: !3073, file: !261, line: 690, column: 25)
!3082 = !DILocation(line: 690, column: 25, scope: !3081)
!3083 = !DILocation(line: 690, column: 25, scope: !3073)
!3084 = !DILocation(line: 690, column: 25, scope: !3085)
!3085 = distinct !DILexicalBlock(scope: !3086, file: !261, line: 690, column: 25)
!3086 = distinct !DILexicalBlock(scope: !3066, file: !261, line: 690, column: 25)
!3087 = !DILocation(line: 690, column: 25, scope: !3086)
!3088 = !DILocation(line: 691, column: 25, scope: !3089)
!3089 = distinct !DILexicalBlock(scope: !3090, file: !261, line: 691, column: 25)
!3090 = distinct !DILexicalBlock(scope: !3067, file: !261, line: 691, column: 25)
!3091 = !DILocation(line: 691, column: 25, scope: !3090)
!3092 = !DILocation(line: 692, column: 25, scope: !3093)
!3093 = distinct !DILexicalBlock(scope: !3094, file: !261, line: 692, column: 25)
!3094 = distinct !DILexicalBlock(scope: !3067, file: !261, line: 692, column: 25)
!3095 = !DILocation(line: 692, column: 25, scope: !3094)
!3096 = !DILocation(line: 693, column: 38, scope: !3067)
!3097 = !DILocation(line: 693, column: 33, scope: !3067)
!3098 = !DILocation(line: 694, column: 23, scope: !3067)
!3099 = !DILocation(line: 695, column: 30, scope: !3100)
!3100 = distinct !DILexicalBlock(scope: !3061, file: !261, line: 695, column: 30)
!3101 = !DILocation(line: 695, column: 30, scope: !3061)
!3102 = !DILocation(line: 697, column: 25, scope: !3103)
!3103 = distinct !DILexicalBlock(scope: !3104, file: !261, line: 697, column: 25)
!3104 = distinct !DILexicalBlock(scope: !3105, file: !261, line: 697, column: 25)
!3105 = distinct !DILexicalBlock(scope: !3100, file: !261, line: 696, column: 23)
!3106 = !DILocation(line: 697, column: 25, scope: !3104)
!3107 = !DILocation(line: 699, column: 23, scope: !3105)
!3108 = !DILocation(line: 700, column: 35, scope: !3109)
!3109 = distinct !DILexicalBlock(scope: !3062, file: !261, line: 700, column: 25)
!3110 = !DILocation(line: 700, column: 30, scope: !3109)
!3111 = !DILocation(line: 700, column: 25, scope: !3062)
!3112 = !DILocation(line: 702, column: 21, scope: !3113)
!3113 = distinct !DILexicalBlock(scope: !3114, file: !261, line: 702, column: 21)
!3114 = distinct !DILexicalBlock(scope: !3062, file: !261, line: 702, column: 21)
!3115 = !DILocation(line: 702, column: 21, scope: !3116)
!3116 = distinct !DILexicalBlock(scope: !3117, file: !261, line: 702, column: 21)
!3117 = distinct !DILexicalBlock(scope: !3118, file: !261, line: 702, column: 21)
!3118 = distinct !DILexicalBlock(scope: !3113, file: !261, line: 702, column: 21)
!3119 = !DILocation(line: 702, column: 21, scope: !3117)
!3120 = !DILocation(line: 702, column: 21, scope: !3121)
!3121 = distinct !DILexicalBlock(scope: !3122, file: !261, line: 702, column: 21)
!3122 = distinct !DILexicalBlock(scope: !3118, file: !261, line: 702, column: 21)
!3123 = !DILocation(line: 702, column: 21, scope: !3122)
!3124 = !DILocation(line: 702, column: 21, scope: !3118)
!3125 = !DILocation(line: 0, scope: !3062)
!3126 = !DILocation(line: 703, column: 21, scope: !3127)
!3127 = distinct !DILexicalBlock(scope: !3128, file: !261, line: 703, column: 21)
!3128 = distinct !DILexicalBlock(scope: !3062, file: !261, line: 703, column: 21)
!3129 = !DILocation(line: 703, column: 21, scope: !3128)
!3130 = !DILocation(line: 704, column: 25, scope: !3062)
!3131 = !DILocation(line: 686, column: 17, scope: !3063)
!3132 = distinct !{!3132, !3133, !3134}
!3133 = !DILocation(line: 686, column: 17, scope: !3064)
!3134 = !DILocation(line: 705, column: 19, scope: !3064)
!3135 = !DILocation(line: 416, column: 30, scope: !2857)
!3136 = !DILocation(line: 712, column: 34, scope: !3137)
!3137 = distinct !DILexicalBlock(scope: !2739, file: !261, line: 712, column: 11)
!3138 = !DILocation(line: 715, column: 35, scope: !3137)
!3139 = !DILocation(line: 715, column: 17, scope: !3137)
!3140 = !DILocation(line: 715, column: 47, scope: !3137)
!3141 = !DILocation(line: 715, column: 65, scope: !3137)
!3142 = !DILocation(line: 716, column: 11, scope: !3137)
!3143 = !DILocation(line: 712, column: 11, scope: !2739)
!3144 = !DILocation(line: 400, column: 10, scope: !2741)
!3145 = !DILocation(line: 719, column: 5, scope: !2739)
!3146 = !DILocation(line: 720, column: 7, scope: !3147)
!3147 = distinct !DILexicalBlock(scope: !2739, file: !261, line: 720, column: 7)
!3148 = !DILocation(line: 720, column: 7, scope: !3149)
!3149 = distinct !DILexicalBlock(scope: !3147, file: !261, line: 720, column: 7)
!3150 = !DILocation(line: 720, column: 7, scope: !3151)
!3151 = distinct !DILexicalBlock(scope: !3152, file: !261, line: 720, column: 7)
!3152 = distinct !DILexicalBlock(scope: !3153, file: !261, line: 720, column: 7)
!3153 = distinct !DILexicalBlock(scope: !3149, file: !261, line: 720, column: 7)
!3154 = !DILocation(line: 720, column: 7, scope: !3152)
!3155 = !DILocation(line: 720, column: 7, scope: !3156)
!3156 = distinct !DILexicalBlock(scope: !3157, file: !261, line: 720, column: 7)
!3157 = distinct !DILexicalBlock(scope: !3153, file: !261, line: 720, column: 7)
!3158 = !DILocation(line: 720, column: 7, scope: !3157)
!3159 = !DILocation(line: 720, column: 7, scope: !3160)
!3160 = distinct !DILexicalBlock(scope: !3161, file: !261, line: 720, column: 7)
!3161 = distinct !DILexicalBlock(scope: !3153, file: !261, line: 720, column: 7)
!3162 = !DILocation(line: 720, column: 7, scope: !3161)
!3163 = !DILocation(line: 720, column: 7, scope: !3153)
!3164 = !DILocation(line: 720, column: 7, scope: !3165)
!3165 = distinct !DILexicalBlock(scope: !3166, file: !261, line: 720, column: 7)
!3166 = distinct !DILexicalBlock(scope: !3147, file: !261, line: 720, column: 7)
!3167 = !DILocation(line: 720, column: 7, scope: !3166)
!3168 = !DILocation(line: 722, column: 5, scope: !2739)
!3169 = !DILocation(line: 723, column: 7, scope: !3170)
!3170 = distinct !DILexicalBlock(scope: !3171, file: !261, line: 723, column: 7)
!3171 = distinct !DILexicalBlock(scope: !2739, file: !261, line: 723, column: 7)
!3172 = !DILocation(line: 424, column: 9, scope: !2739)
!3173 = !DILocation(line: 723, column: 7, scope: !3174)
!3174 = distinct !DILexicalBlock(scope: !3175, file: !261, line: 723, column: 7)
!3175 = distinct !DILexicalBlock(scope: !3176, file: !261, line: 723, column: 7)
!3176 = distinct !DILexicalBlock(scope: !3170, file: !261, line: 723, column: 7)
!3177 = !DILocation(line: 723, column: 7, scope: !3175)
!3178 = !DILocation(line: 723, column: 7, scope: !3179)
!3179 = distinct !DILexicalBlock(scope: !3180, file: !261, line: 723, column: 7)
!3180 = distinct !DILexicalBlock(scope: !3176, file: !261, line: 723, column: 7)
!3181 = !DILocation(line: 723, column: 7, scope: !3180)
!3182 = !DILocation(line: 723, column: 7, scope: !3176)
!3183 = !DILocation(line: 724, column: 7, scope: !3184)
!3184 = distinct !DILexicalBlock(scope: !3185, file: !261, line: 724, column: 7)
!3185 = distinct !DILexicalBlock(scope: !2739, file: !261, line: 724, column: 7)
!3186 = !DILocation(line: 724, column: 7, scope: !3185)
!3187 = !DILocation(line: 726, column: 13, scope: !3188)
!3188 = distinct !DILexicalBlock(scope: !2739, file: !261, line: 726, column: 11)
!3189 = !DILocation(line: 726, column: 11, scope: !2739)
!3190 = !DILocation(line: 728, column: 5, scope: !2740)
!3191 = !DILocation(line: 400, column: 75, scope: !2740)
!3192 = !DILocation(line: 400, column: 3, scope: !2740)
!3193 = distinct !{!3193, !2853, !3194, !846}
!3194 = !DILocation(line: 728, column: 5, scope: !2741)
!3195 = !DILocation(line: 730, column: 11, scope: !3196)
!3196 = distinct !DILexicalBlock(scope: !2712, file: !261, line: 730, column: 7)
!3197 = !DILocation(line: 730, column: 16, scope: !3196)
!3198 = !DILocation(line: 738, column: 51, scope: !3199)
!3199 = distinct !DILexicalBlock(scope: !2712, file: !261, line: 738, column: 7)
!3200 = !DILocation(line: 741, column: 11, scope: !3201)
!3201 = distinct !DILexicalBlock(scope: !3202, file: !261, line: 741, column: 11)
!3202 = distinct !DILexicalBlock(scope: !3199, file: !261, line: 740, column: 5)
!3203 = !DILocation(line: 741, column: 11, scope: !3202)
!3204 = !DILocation(line: 742, column: 16, scope: !3201)
!3205 = !DILocation(line: 742, column: 9, scope: !3201)
!3206 = !DILocation(line: 746, column: 18, scope: !3207)
!3207 = distinct !DILexicalBlock(scope: !3201, file: !261, line: 746, column: 16)
!3208 = !DILocation(line: 746, column: 29, scope: !3207)
!3209 = !DILocation(line: 755, column: 7, scope: !3210)
!3210 = distinct !DILexicalBlock(scope: !2712, file: !261, line: 755, column: 7)
!3211 = !DILocation(line: 755, column: 20, scope: !3210)
!3212 = !DILocation(line: 756, column: 12, scope: !3213)
!3213 = distinct !DILexicalBlock(scope: !3214, file: !261, line: 756, column: 5)
!3214 = distinct !DILexicalBlock(scope: !3210, file: !261, line: 756, column: 5)
!3215 = !DILocation(line: 756, column: 5, scope: !3214)
!3216 = !DILocation(line: 757, column: 7, scope: !3217)
!3217 = distinct !DILexicalBlock(scope: !3218, file: !261, line: 757, column: 7)
!3218 = distinct !DILexicalBlock(scope: !3213, file: !261, line: 757, column: 7)
!3219 = !DILocation(line: 757, column: 7, scope: !3218)
!3220 = !DILocation(line: 756, column: 39, scope: !3213)
!3221 = distinct !{!3221, !3215, !3222, !846}
!3222 = !DILocation(line: 757, column: 7, scope: !3214)
!3223 = !DILocation(line: 759, column: 11, scope: !3224)
!3224 = distinct !DILexicalBlock(scope: !2712, file: !261, line: 759, column: 7)
!3225 = !DILocation(line: 759, column: 7, scope: !2712)
!3226 = !DILocation(line: 760, column: 5, scope: !3224)
!3227 = !DILocation(line: 760, column: 17, scope: !3224)
!3228 = !DILocation(line: 763, column: 2, scope: !2712)
!3229 = !DILocation(line: 766, column: 51, scope: !3230)
!3230 = distinct !DILexicalBlock(scope: !2712, file: !261, line: 766, column: 7)
!3231 = !DILocation(line: 766, column: 21, scope: !3230)
!3232 = !DILocation(line: 770, column: 42, scope: !2712)
!3233 = !DILocation(line: 768, column: 10, scope: !2712)
!3234 = !DILocation(line: 768, column: 3, scope: !2712)
!3235 = !DILocation(line: 772, column: 1, scope: !2712)
!3236 = distinct !DISubprogram(name: "gettext_quote", scope: !261, file: !261, line: 207, type: !3237, scopeLine: 208, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !260, retainedNodes: !3239)
!3237 = !DISubroutineType(types: !3238)
!3238 = !{!93, !93, !5}
!3239 = !{!3240, !3241, !3242, !3243}
!3240 = !DILocalVariable(name: "msgid", arg: 1, scope: !3236, file: !261, line: 207, type: !93)
!3241 = !DILocalVariable(name: "s", arg: 2, scope: !3236, file: !261, line: 207, type: !5)
!3242 = !DILocalVariable(name: "translation", scope: !3236, file: !261, line: 209, type: !93)
!3243 = !DILocalVariable(name: "locale_code", scope: !3236, file: !261, line: 210, type: !93)
!3244 = !DILocation(line: 0, scope: !3236)
!3245 = !DILocation(line: 209, column: 29, scope: !3236)
!3246 = !DILocation(line: 212, column: 19, scope: !3247)
!3247 = distinct !DILexicalBlock(scope: !3236, file: !261, line: 212, column: 7)
!3248 = !DILocation(line: 212, column: 7, scope: !3236)
!3249 = !DILocation(line: 233, column: 17, scope: !3236)
!3250 = !DILocalVariable(name: "s1", arg: 1, scope: !3251, file: !3252, line: 160, type: !93)
!3251 = distinct !DISubprogram(name: "strcaseeq0", scope: !3252, file: !3252, line: 160, type: !3253, scopeLine: 161, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !260, retainedNodes: !3255)
!3252 = !DIFile(filename: "./lib/c-strcaseeq.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!3253 = !DISubroutineType(types: !3254)
!3254 = !{!64, !93, !93, !60, !60, !60, !60, !60, !60, !60, !60, !60}
!3255 = !{!3250, !3256, !3257, !3258, !3259, !3260, !3261, !3262, !3263, !3264, !3265}
!3256 = !DILocalVariable(name: "s2", arg: 2, scope: !3251, file: !3252, line: 160, type: !93)
!3257 = !DILocalVariable(name: "s20", arg: 3, scope: !3251, file: !3252, line: 160, type: !60)
!3258 = !DILocalVariable(name: "s21", arg: 4, scope: !3251, file: !3252, line: 160, type: !60)
!3259 = !DILocalVariable(name: "s22", arg: 5, scope: !3251, file: !3252, line: 160, type: !60)
!3260 = !DILocalVariable(name: "s23", arg: 6, scope: !3251, file: !3252, line: 160, type: !60)
!3261 = !DILocalVariable(name: "s24", arg: 7, scope: !3251, file: !3252, line: 160, type: !60)
!3262 = !DILocalVariable(name: "s25", arg: 8, scope: !3251, file: !3252, line: 160, type: !60)
!3263 = !DILocalVariable(name: "s26", arg: 9, scope: !3251, file: !3252, line: 160, type: !60)
!3264 = !DILocalVariable(name: "s27", arg: 10, scope: !3251, file: !3252, line: 160, type: !60)
!3265 = !DILocalVariable(name: "s28", arg: 11, scope: !3251, file: !3252, line: 160, type: !60)
!3266 = !DILocation(line: 0, scope: !3251, inlinedAt: !3267)
!3267 = distinct !DILocation(line: 234, column: 7, scope: !3268)
!3268 = distinct !DILexicalBlock(scope: !3236, file: !261, line: 234, column: 7)
!3269 = !DILocation(line: 162, column: 7, scope: !3270, inlinedAt: !3267)
!3270 = distinct !DILexicalBlock(scope: !3251, file: !3252, line: 162, column: 7)
!3271 = !DILocalVariable(name: "s1", arg: 1, scope: !3272, file: !3252, line: 146, type: !93)
!3272 = distinct !DISubprogram(name: "strcaseeq1", scope: !3252, file: !3252, line: 146, type: !3273, scopeLine: 147, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !260, retainedNodes: !3275)
!3273 = !DISubroutineType(types: !3274)
!3274 = !{!64, !93, !93, !60, !60, !60, !60, !60, !60, !60, !60}
!3275 = !{!3271, !3276, !3277, !3278, !3279, !3280, !3281, !3282, !3283, !3284}
!3276 = !DILocalVariable(name: "s2", arg: 2, scope: !3272, file: !3252, line: 146, type: !93)
!3277 = !DILocalVariable(name: "s21", arg: 3, scope: !3272, file: !3252, line: 146, type: !60)
!3278 = !DILocalVariable(name: "s22", arg: 4, scope: !3272, file: !3252, line: 146, type: !60)
!3279 = !DILocalVariable(name: "s23", arg: 5, scope: !3272, file: !3252, line: 146, type: !60)
!3280 = !DILocalVariable(name: "s24", arg: 6, scope: !3272, file: !3252, line: 146, type: !60)
!3281 = !DILocalVariable(name: "s25", arg: 7, scope: !3272, file: !3252, line: 146, type: !60)
!3282 = !DILocalVariable(name: "s26", arg: 8, scope: !3272, file: !3252, line: 146, type: !60)
!3283 = !DILocalVariable(name: "s27", arg: 9, scope: !3272, file: !3252, line: 146, type: !60)
!3284 = !DILocalVariable(name: "s28", arg: 10, scope: !3272, file: !3252, line: 146, type: !60)
!3285 = !DILocation(line: 0, scope: !3272, inlinedAt: !3286)
!3286 = distinct !DILocation(line: 167, column: 16, scope: !3287, inlinedAt: !3267)
!3287 = distinct !DILexicalBlock(scope: !3288, file: !3252, line: 164, column: 11)
!3288 = distinct !DILexicalBlock(scope: !3270, file: !3252, line: 163, column: 5)
!3289 = !DILocation(line: 148, column: 7, scope: !3290, inlinedAt: !3286)
!3290 = distinct !DILexicalBlock(scope: !3272, file: !3252, line: 148, column: 7)
!3291 = !DILocalVariable(name: "s1", arg: 1, scope: !3292, file: !3252, line: 132, type: !93)
!3292 = distinct !DISubprogram(name: "strcaseeq2", scope: !3252, file: !3252, line: 132, type: !3293, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !260, retainedNodes: !3295)
!3293 = !DISubroutineType(types: !3294)
!3294 = !{!64, !93, !93, !60, !60, !60, !60, !60, !60, !60}
!3295 = !{!3291, !3296, !3297, !3298, !3299, !3300, !3301, !3302, !3303}
!3296 = !DILocalVariable(name: "s2", arg: 2, scope: !3292, file: !3252, line: 132, type: !93)
!3297 = !DILocalVariable(name: "s22", arg: 3, scope: !3292, file: !3252, line: 132, type: !60)
!3298 = !DILocalVariable(name: "s23", arg: 4, scope: !3292, file: !3252, line: 132, type: !60)
!3299 = !DILocalVariable(name: "s24", arg: 5, scope: !3292, file: !3252, line: 132, type: !60)
!3300 = !DILocalVariable(name: "s25", arg: 6, scope: !3292, file: !3252, line: 132, type: !60)
!3301 = !DILocalVariable(name: "s26", arg: 7, scope: !3292, file: !3252, line: 132, type: !60)
!3302 = !DILocalVariable(name: "s27", arg: 8, scope: !3292, file: !3252, line: 132, type: !60)
!3303 = !DILocalVariable(name: "s28", arg: 9, scope: !3292, file: !3252, line: 132, type: !60)
!3304 = !DILocation(line: 0, scope: !3292, inlinedAt: !3305)
!3305 = distinct !DILocation(line: 153, column: 16, scope: !3306, inlinedAt: !3286)
!3306 = distinct !DILexicalBlock(scope: !3307, file: !3252, line: 150, column: 11)
!3307 = distinct !DILexicalBlock(scope: !3290, file: !3252, line: 149, column: 5)
!3308 = !DILocation(line: 134, column: 7, scope: !3309, inlinedAt: !3305)
!3309 = distinct !DILexicalBlock(scope: !3292, file: !3252, line: 134, column: 7)
!3310 = !DILocalVariable(name: "s1", arg: 1, scope: !3311, file: !3252, line: 118, type: !93)
!3311 = distinct !DISubprogram(name: "strcaseeq3", scope: !3252, file: !3252, line: 118, type: !3312, scopeLine: 119, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !260, retainedNodes: !3314)
!3312 = !DISubroutineType(types: !3313)
!3313 = !{!64, !93, !93, !60, !60, !60, !60, !60, !60}
!3314 = !{!3310, !3315, !3316, !3317, !3318, !3319, !3320, !3321}
!3315 = !DILocalVariable(name: "s2", arg: 2, scope: !3311, file: !3252, line: 118, type: !93)
!3316 = !DILocalVariable(name: "s23", arg: 3, scope: !3311, file: !3252, line: 118, type: !60)
!3317 = !DILocalVariable(name: "s24", arg: 4, scope: !3311, file: !3252, line: 118, type: !60)
!3318 = !DILocalVariable(name: "s25", arg: 5, scope: !3311, file: !3252, line: 118, type: !60)
!3319 = !DILocalVariable(name: "s26", arg: 6, scope: !3311, file: !3252, line: 118, type: !60)
!3320 = !DILocalVariable(name: "s27", arg: 7, scope: !3311, file: !3252, line: 118, type: !60)
!3321 = !DILocalVariable(name: "s28", arg: 8, scope: !3311, file: !3252, line: 118, type: !60)
!3322 = !DILocation(line: 0, scope: !3311, inlinedAt: !3323)
!3323 = distinct !DILocation(line: 139, column: 16, scope: !3324, inlinedAt: !3305)
!3324 = distinct !DILexicalBlock(scope: !3325, file: !3252, line: 136, column: 11)
!3325 = distinct !DILexicalBlock(scope: !3309, file: !3252, line: 135, column: 5)
!3326 = !DILocation(line: 120, column: 7, scope: !3327, inlinedAt: !3323)
!3327 = distinct !DILexicalBlock(scope: !3311, file: !3252, line: 120, column: 7)
!3328 = !DILocation(line: 120, column: 7, scope: !3311, inlinedAt: !3323)
!3329 = !DILocalVariable(name: "s1", arg: 1, scope: !3330, file: !3252, line: 104, type: !93)
!3330 = distinct !DISubprogram(name: "strcaseeq4", scope: !3252, file: !3252, line: 104, type: !3331, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !260, retainedNodes: !3333)
!3331 = !DISubroutineType(types: !3332)
!3332 = !{!64, !93, !93, !60, !60, !60, !60, !60}
!3333 = !{!3329, !3334, !3335, !3336, !3337, !3338, !3339}
!3334 = !DILocalVariable(name: "s2", arg: 2, scope: !3330, file: !3252, line: 104, type: !93)
!3335 = !DILocalVariable(name: "s24", arg: 3, scope: !3330, file: !3252, line: 104, type: !60)
!3336 = !DILocalVariable(name: "s25", arg: 4, scope: !3330, file: !3252, line: 104, type: !60)
!3337 = !DILocalVariable(name: "s26", arg: 5, scope: !3330, file: !3252, line: 104, type: !60)
!3338 = !DILocalVariable(name: "s27", arg: 6, scope: !3330, file: !3252, line: 104, type: !60)
!3339 = !DILocalVariable(name: "s28", arg: 7, scope: !3330, file: !3252, line: 104, type: !60)
!3340 = !DILocation(line: 0, scope: !3330, inlinedAt: !3341)
!3341 = distinct !DILocation(line: 125, column: 16, scope: !3342, inlinedAt: !3323)
!3342 = distinct !DILexicalBlock(scope: !3343, file: !3252, line: 122, column: 11)
!3343 = distinct !DILexicalBlock(scope: !3327, file: !3252, line: 121, column: 5)
!3344 = !DILocation(line: 106, column: 7, scope: !3345, inlinedAt: !3341)
!3345 = distinct !DILexicalBlock(scope: !3330, file: !3252, line: 106, column: 7)
!3346 = !DILocation(line: 106, column: 7, scope: !3330, inlinedAt: !3341)
!3347 = !DILocalVariable(name: "s1", arg: 1, scope: !3348, file: !3252, line: 90, type: !93)
!3348 = distinct !DISubprogram(name: "strcaseeq5", scope: !3252, file: !3252, line: 90, type: !3349, scopeLine: 91, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !260, retainedNodes: !3351)
!3349 = !DISubroutineType(types: !3350)
!3350 = !{!64, !93, !93, !60, !60, !60, !60}
!3351 = !{!3347, !3352, !3353, !3354, !3355, !3356}
!3352 = !DILocalVariable(name: "s2", arg: 2, scope: !3348, file: !3252, line: 90, type: !93)
!3353 = !DILocalVariable(name: "s25", arg: 3, scope: !3348, file: !3252, line: 90, type: !60)
!3354 = !DILocalVariable(name: "s26", arg: 4, scope: !3348, file: !3252, line: 90, type: !60)
!3355 = !DILocalVariable(name: "s27", arg: 5, scope: !3348, file: !3252, line: 90, type: !60)
!3356 = !DILocalVariable(name: "s28", arg: 6, scope: !3348, file: !3252, line: 90, type: !60)
!3357 = !DILocation(line: 0, scope: !3348, inlinedAt: !3358)
!3358 = distinct !DILocation(line: 111, column: 16, scope: !3359, inlinedAt: !3341)
!3359 = distinct !DILexicalBlock(scope: !3360, file: !3252, line: 108, column: 11)
!3360 = distinct !DILexicalBlock(scope: !3345, file: !3252, line: 107, column: 5)
!3361 = !DILocation(line: 92, column: 7, scope: !3362, inlinedAt: !3358)
!3362 = distinct !DILexicalBlock(scope: !3348, file: !3252, line: 92, column: 7)
!3363 = !DILocation(line: 92, column: 7, scope: !3348, inlinedAt: !3358)
!3364 = !DILocation(line: 235, column: 12, scope: !3268)
!3365 = !DILocation(line: 235, column: 21, scope: !3268)
!3366 = !DILocation(line: 235, column: 5, scope: !3268)
!3367 = !DILocation(line: 0, scope: !3272, inlinedAt: !3368)
!3368 = distinct !DILocation(line: 167, column: 16, scope: !3287, inlinedAt: !3369)
!3369 = distinct !DILocation(line: 236, column: 7, scope: !3370)
!3370 = distinct !DILexicalBlock(scope: !3236, file: !261, line: 236, column: 7)
!3371 = !DILocation(line: 148, column: 7, scope: !3290, inlinedAt: !3368)
!3372 = !DILocation(line: 0, scope: !3292, inlinedAt: !3373)
!3373 = distinct !DILocation(line: 153, column: 16, scope: !3306, inlinedAt: !3368)
!3374 = !DILocation(line: 134, column: 7, scope: !3309, inlinedAt: !3373)
!3375 = !DILocation(line: 134, column: 7, scope: !3292, inlinedAt: !3373)
!3376 = !DILocation(line: 0, scope: !3311, inlinedAt: !3377)
!3377 = distinct !DILocation(line: 139, column: 16, scope: !3324, inlinedAt: !3373)
!3378 = !DILocation(line: 120, column: 7, scope: !3327, inlinedAt: !3377)
!3379 = !DILocation(line: 120, column: 7, scope: !3311, inlinedAt: !3377)
!3380 = !DILocation(line: 0, scope: !3330, inlinedAt: !3381)
!3381 = distinct !DILocation(line: 125, column: 16, scope: !3342, inlinedAt: !3377)
!3382 = !DILocation(line: 106, column: 7, scope: !3345, inlinedAt: !3381)
!3383 = !DILocation(line: 106, column: 7, scope: !3330, inlinedAt: !3381)
!3384 = !DILocation(line: 0, scope: !3348, inlinedAt: !3385)
!3385 = distinct !DILocation(line: 111, column: 16, scope: !3359, inlinedAt: !3381)
!3386 = !DILocation(line: 92, column: 7, scope: !3362, inlinedAt: !3385)
!3387 = !DILocation(line: 92, column: 7, scope: !3348, inlinedAt: !3385)
!3388 = !DILocalVariable(name: "s1", arg: 1, scope: !3389, file: !3252, line: 76, type: !93)
!3389 = distinct !DISubprogram(name: "strcaseeq6", scope: !3252, file: !3252, line: 76, type: !3390, scopeLine: 77, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !260, retainedNodes: !3392)
!3390 = !DISubroutineType(types: !3391)
!3391 = !{!64, !93, !93, !60, !60, !60}
!3392 = !{!3388, !3393, !3394, !3395, !3396}
!3393 = !DILocalVariable(name: "s2", arg: 2, scope: !3389, file: !3252, line: 76, type: !93)
!3394 = !DILocalVariable(name: "s26", arg: 3, scope: !3389, file: !3252, line: 76, type: !60)
!3395 = !DILocalVariable(name: "s27", arg: 4, scope: !3389, file: !3252, line: 76, type: !60)
!3396 = !DILocalVariable(name: "s28", arg: 5, scope: !3389, file: !3252, line: 76, type: !60)
!3397 = !DILocation(line: 0, scope: !3389, inlinedAt: !3398)
!3398 = distinct !DILocation(line: 97, column: 16, scope: !3399, inlinedAt: !3385)
!3399 = distinct !DILexicalBlock(scope: !3400, file: !3252, line: 94, column: 11)
!3400 = distinct !DILexicalBlock(scope: !3362, file: !3252, line: 93, column: 5)
!3401 = !DILocation(line: 78, column: 7, scope: !3402, inlinedAt: !3398)
!3402 = distinct !DILexicalBlock(scope: !3389, file: !3252, line: 78, column: 7)
!3403 = !DILocation(line: 78, column: 7, scope: !3389, inlinedAt: !3398)
!3404 = !DILocalVariable(name: "s1", arg: 1, scope: !3405, file: !3252, line: 62, type: !93)
!3405 = distinct !DISubprogram(name: "strcaseeq7", scope: !3252, file: !3252, line: 62, type: !3406, scopeLine: 63, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !260, retainedNodes: !3408)
!3406 = !DISubroutineType(types: !3407)
!3407 = !{!64, !93, !93, !60, !60}
!3408 = !{!3404, !3409, !3410, !3411}
!3409 = !DILocalVariable(name: "s2", arg: 2, scope: !3405, file: !3252, line: 62, type: !93)
!3410 = !DILocalVariable(name: "s27", arg: 3, scope: !3405, file: !3252, line: 62, type: !60)
!3411 = !DILocalVariable(name: "s28", arg: 4, scope: !3405, file: !3252, line: 62, type: !60)
!3412 = !DILocation(line: 0, scope: !3405, inlinedAt: !3413)
!3413 = distinct !DILocation(line: 83, column: 16, scope: !3414, inlinedAt: !3398)
!3414 = distinct !DILexicalBlock(scope: !3415, file: !3252, line: 80, column: 11)
!3415 = distinct !DILexicalBlock(scope: !3402, file: !3252, line: 79, column: 5)
!3416 = !DILocation(line: 64, column: 7, scope: !3417, inlinedAt: !3413)
!3417 = distinct !DILexicalBlock(scope: !3405, file: !3252, line: 64, column: 7)
!3418 = !DILocation(line: 236, column: 7, scope: !3236)
!3419 = !DILocation(line: 237, column: 12, scope: !3370)
!3420 = !DILocation(line: 237, column: 21, scope: !3370)
!3421 = !DILocation(line: 237, column: 5, scope: !3370)
!3422 = !DILocation(line: 239, column: 13, scope: !3236)
!3423 = !DILocation(line: 239, column: 11, scope: !3236)
!3424 = !DILocation(line: 239, column: 3, scope: !3236)
!3425 = !DILocation(line: 240, column: 1, scope: !3236)
!3426 = !DISubprogram(name: "iswprint", scope: !3427, file: !3427, line: 120, type: !3428, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !223)
!3427 = !DIFile(filename: "/usr/include/bits/wctype-wchar.h", directory: "")
!3428 = !DISubroutineType(types: !3429)
!3429 = !{!64, !7}
!3430 = !DISubprogram(name: "mbsinit", scope: !3431, file: !3431, line: 292, type: !3432, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !223)
!3431 = !DIFile(filename: "/usr/include/wchar.h", directory: "")
!3432 = !DISubroutineType(types: !3433)
!3433 = !{!64, !3434}
!3434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3435, size: 64)
!3435 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2757)
!3436 = distinct !DISubprogram(name: "quotearg_alloc", scope: !261, file: !261, line: 799, type: !3437, scopeLine: 801, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !260, retainedNodes: !3439)
!3437 = !DISubroutineType(types: !3438)
!3438 = !{!59, !93, !62, !2604}
!3439 = !{!3440, !3441, !3442}
!3440 = !DILocalVariable(name: "arg", arg: 1, scope: !3436, file: !261, line: 799, type: !93)
!3441 = !DILocalVariable(name: "argsize", arg: 2, scope: !3436, file: !261, line: 799, type: !62)
!3442 = !DILocalVariable(name: "o", arg: 3, scope: !3436, file: !261, line: 800, type: !2604)
!3443 = !DILocation(line: 0, scope: !3436)
!3444 = !DILocalVariable(name: "arg", arg: 1, scope: !3445, file: !261, line: 812, type: !93)
!3445 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !261, file: !261, line: 812, type: !3446, scopeLine: 814, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !260, retainedNodes: !3448)
!3446 = !DISubroutineType(types: !3447)
!3447 = !{!59, !93, !62, !358, !2604}
!3448 = !{!3444, !3449, !3450, !3451, !3452, !3453, !3454, !3455, !3456}
!3449 = !DILocalVariable(name: "argsize", arg: 2, scope: !3445, file: !261, line: 812, type: !62)
!3450 = !DILocalVariable(name: "size", arg: 3, scope: !3445, file: !261, line: 812, type: !358)
!3451 = !DILocalVariable(name: "o", arg: 4, scope: !3445, file: !261, line: 813, type: !2604)
!3452 = !DILocalVariable(name: "p", scope: !3445, file: !261, line: 815, type: !2604)
!3453 = !DILocalVariable(name: "e", scope: !3445, file: !261, line: 816, type: !64)
!3454 = !DILocalVariable(name: "flags", scope: !3445, file: !261, line: 818, type: !64)
!3455 = !DILocalVariable(name: "bufsize", scope: !3445, file: !261, line: 819, type: !62)
!3456 = !DILocalVariable(name: "buf", scope: !3445, file: !261, line: 823, type: !59)
!3457 = !DILocation(line: 0, scope: !3445, inlinedAt: !3458)
!3458 = distinct !DILocation(line: 802, column: 10, scope: !3436)
!3459 = !DILocation(line: 815, column: 37, scope: !3445, inlinedAt: !3458)
!3460 = !DILocation(line: 816, column: 11, scope: !3445, inlinedAt: !3458)
!3461 = !DILocation(line: 818, column: 18, scope: !3445, inlinedAt: !3458)
!3462 = !DILocation(line: 818, column: 24, scope: !3445, inlinedAt: !3458)
!3463 = !DILocation(line: 819, column: 69, scope: !3445, inlinedAt: !3458)
!3464 = !DILocation(line: 820, column: 53, scope: !3445, inlinedAt: !3458)
!3465 = !DILocation(line: 821, column: 49, scope: !3445, inlinedAt: !3458)
!3466 = !DILocation(line: 822, column: 49, scope: !3445, inlinedAt: !3458)
!3467 = !DILocation(line: 819, column: 20, scope: !3445, inlinedAt: !3458)
!3468 = !DILocation(line: 822, column: 62, scope: !3445, inlinedAt: !3458)
!3469 = !DILocalVariable(name: "n", arg: 1, scope: !3470, file: !354, line: 216, type: !62)
!3470 = distinct !DISubprogram(name: "xcharalloc", scope: !354, file: !354, line: 216, type: !3471, scopeLine: 217, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !260, retainedNodes: !3473)
!3471 = !DISubroutineType(types: !3472)
!3472 = !{!59, !62}
!3473 = !{!3469}
!3474 = !DILocation(line: 0, scope: !3470, inlinedAt: !3475)
!3475 = distinct !DILocation(line: 823, column: 15, scope: !3445, inlinedAt: !3458)
!3476 = !DILocation(line: 218, column: 10, scope: !3470, inlinedAt: !3475)
!3477 = !DILocation(line: 824, column: 60, scope: !3445, inlinedAt: !3458)
!3478 = !DILocation(line: 826, column: 32, scope: !3445, inlinedAt: !3458)
!3479 = !DILocation(line: 826, column: 47, scope: !3445, inlinedAt: !3458)
!3480 = !DILocation(line: 824, column: 3, scope: !3445, inlinedAt: !3458)
!3481 = !DILocation(line: 827, column: 9, scope: !3445, inlinedAt: !3458)
!3482 = !DILocation(line: 802, column: 3, scope: !3436)
!3483 = !DILocation(line: 0, scope: !3445)
!3484 = !DILocation(line: 815, column: 37, scope: !3445)
!3485 = !DILocation(line: 816, column: 11, scope: !3445)
!3486 = !DILocation(line: 818, column: 18, scope: !3445)
!3487 = !DILocation(line: 818, column: 27, scope: !3445)
!3488 = !DILocation(line: 818, column: 24, scope: !3445)
!3489 = !DILocation(line: 819, column: 69, scope: !3445)
!3490 = !DILocation(line: 820, column: 53, scope: !3445)
!3491 = !DILocation(line: 821, column: 49, scope: !3445)
!3492 = !DILocation(line: 822, column: 49, scope: !3445)
!3493 = !DILocation(line: 819, column: 20, scope: !3445)
!3494 = !DILocation(line: 822, column: 62, scope: !3445)
!3495 = !DILocation(line: 0, scope: !3470, inlinedAt: !3496)
!3496 = distinct !DILocation(line: 823, column: 15, scope: !3445)
!3497 = !DILocation(line: 218, column: 10, scope: !3470, inlinedAt: !3496)
!3498 = !DILocation(line: 824, column: 60, scope: !3445)
!3499 = !DILocation(line: 826, column: 32, scope: !3445)
!3500 = !DILocation(line: 826, column: 47, scope: !3445)
!3501 = !DILocation(line: 824, column: 3, scope: !3445)
!3502 = !DILocation(line: 827, column: 9, scope: !3445)
!3503 = !DILocation(line: 828, column: 7, scope: !3445)
!3504 = !DILocation(line: 829, column: 11, scope: !3505)
!3505 = distinct !DILexicalBlock(scope: !3445, file: !261, line: 828, column: 7)
!3506 = !DILocation(line: 829, column: 5, scope: !3505)
!3507 = !DILocation(line: 830, column: 3, scope: !3445)
!3508 = distinct !DISubprogram(name: "quotearg_free", scope: !261, file: !261, line: 848, type: !800, scopeLine: 849, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !260, retainedNodes: !3509)
!3509 = !{!3510, !3511}
!3510 = !DILocalVariable(name: "sv", scope: !3508, file: !261, line: 850, type: !297)
!3511 = !DILocalVariable(name: "i", scope: !3508, file: !261, line: 851, type: !64)
!3512 = !DILocation(line: 850, column: 24, scope: !3508)
!3513 = !DILocation(line: 0, scope: !3508)
!3514 = !DILocation(line: 852, column: 19, scope: !3515)
!3515 = distinct !DILexicalBlock(scope: !3516, file: !261, line: 852, column: 3)
!3516 = distinct !DILexicalBlock(scope: !3508, file: !261, line: 852, column: 3)
!3517 = !DILocation(line: 852, column: 17, scope: !3515)
!3518 = !DILocation(line: 852, column: 3, scope: !3516)
!3519 = !DILocation(line: 853, column: 17, scope: !3515)
!3520 = !{!3521, !793, i64 8}
!3521 = !{!"slotvec", !1066, i64 0, !793, i64 8}
!3522 = !DILocation(line: 853, column: 5, scope: !3515)
!3523 = !DILocation(line: 852, column: 28, scope: !3515)
!3524 = distinct !{!3524, !3518, !3525, !846}
!3525 = !DILocation(line: 853, column: 20, scope: !3516)
!3526 = !DILocation(line: 854, column: 13, scope: !3527)
!3527 = distinct !DILexicalBlock(scope: !3508, file: !261, line: 854, column: 7)
!3528 = !DILocation(line: 854, column: 17, scope: !3527)
!3529 = !DILocation(line: 854, column: 7, scope: !3508)
!3530 = !DILocation(line: 856, column: 7, scope: !3531)
!3531 = distinct !DILexicalBlock(scope: !3527, file: !261, line: 855, column: 5)
!3532 = !DILocation(line: 857, column: 21, scope: !3531)
!3533 = !{!3521, !1066, i64 0}
!3534 = !DILocation(line: 858, column: 20, scope: !3531)
!3535 = !DILocation(line: 859, column: 5, scope: !3531)
!3536 = !DILocation(line: 860, column: 10, scope: !3537)
!3537 = distinct !DILexicalBlock(scope: !3508, file: !261, line: 860, column: 7)
!3538 = !DILocation(line: 860, column: 7, scope: !3508)
!3539 = !DILocation(line: 862, column: 13, scope: !3540)
!3540 = distinct !DILexicalBlock(scope: !3537, file: !261, line: 861, column: 5)
!3541 = !DILocation(line: 862, column: 7, scope: !3540)
!3542 = !DILocation(line: 863, column: 15, scope: !3540)
!3543 = !DILocation(line: 864, column: 5, scope: !3540)
!3544 = !DILocation(line: 865, column: 10, scope: !3508)
!3545 = !DILocation(line: 866, column: 1, scope: !3508)
!3546 = distinct !DISubprogram(name: "quotearg_n", scope: !261, file: !261, line: 931, type: !876, scopeLine: 932, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !260, retainedNodes: !3547)
!3547 = !{!3548, !3549}
!3548 = !DILocalVariable(name: "n", arg: 1, scope: !3546, file: !261, line: 931, type: !64)
!3549 = !DILocalVariable(name: "arg", arg: 2, scope: !3546, file: !261, line: 931, type: !93)
!3550 = !DILocation(line: 0, scope: !3546)
!3551 = !DILocation(line: 933, column: 10, scope: !3546)
!3552 = !DILocation(line: 933, column: 3, scope: !3546)
!3553 = distinct !DISubprogram(name: "quotearg_n_options", scope: !261, file: !261, line: 877, type: !3554, scopeLine: 879, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !260, retainedNodes: !3556)
!3554 = !DISubroutineType(types: !3555)
!3555 = !{!59, !64, !93, !62, !2604}
!3556 = !{!3557, !3558, !3559, !3560, !3561, !3562, !3563, !3566, !3567, !3569, !3570, !3571}
!3557 = !DILocalVariable(name: "n", arg: 1, scope: !3553, file: !261, line: 877, type: !64)
!3558 = !DILocalVariable(name: "arg", arg: 2, scope: !3553, file: !261, line: 877, type: !93)
!3559 = !DILocalVariable(name: "argsize", arg: 3, scope: !3553, file: !261, line: 877, type: !62)
!3560 = !DILocalVariable(name: "options", arg: 4, scope: !3553, file: !261, line: 878, type: !2604)
!3561 = !DILocalVariable(name: "e", scope: !3553, file: !261, line: 880, type: !64)
!3562 = !DILocalVariable(name: "sv", scope: !3553, file: !261, line: 882, type: !297)
!3563 = !DILocalVariable(name: "preallocated", scope: !3564, file: !261, line: 889, type: !71)
!3564 = distinct !DILexicalBlock(scope: !3565, file: !261, line: 888, column: 5)
!3565 = distinct !DILexicalBlock(scope: !3553, file: !261, line: 887, column: 7)
!3566 = !DILocalVariable(name: "nmax", scope: !3564, file: !261, line: 890, type: !64)
!3567 = !DILocalVariable(name: "size", scope: !3568, file: !261, line: 903, type: !62)
!3568 = distinct !DILexicalBlock(scope: !3553, file: !261, line: 902, column: 3)
!3569 = !DILocalVariable(name: "val", scope: !3568, file: !261, line: 904, type: !59)
!3570 = !DILocalVariable(name: "flags", scope: !3568, file: !261, line: 906, type: !64)
!3571 = !DILocalVariable(name: "qsize", scope: !3568, file: !261, line: 907, type: !62)
!3572 = !DILocation(line: 0, scope: !3553)
!3573 = !DILocation(line: 880, column: 11, scope: !3553)
!3574 = !DILocation(line: 882, column: 24, scope: !3553)
!3575 = !DILocation(line: 884, column: 9, scope: !3576)
!3576 = distinct !DILexicalBlock(scope: !3553, file: !261, line: 884, column: 7)
!3577 = !DILocation(line: 884, column: 7, scope: !3553)
!3578 = !DILocation(line: 885, column: 5, scope: !3576)
!3579 = !DILocation(line: 887, column: 7, scope: !3565)
!3580 = !DILocation(line: 887, column: 14, scope: !3565)
!3581 = !DILocation(line: 887, column: 7, scope: !3553)
!3582 = !DILocation(line: 889, column: 31, scope: !3564)
!3583 = !DILocation(line: 0, scope: !3564)
!3584 = !DILocation(line: 892, column: 16, scope: !3585)
!3585 = distinct !DILexicalBlock(scope: !3564, file: !261, line: 892, column: 11)
!3586 = !DILocation(line: 892, column: 11, scope: !3564)
!3587 = !DILocation(line: 893, column: 9, scope: !3585)
!3588 = !DILocation(line: 895, column: 32, scope: !3564)
!3589 = !DILocation(line: 895, column: 61, scope: !3564)
!3590 = !DILocation(line: 895, column: 66, scope: !3564)
!3591 = !DILocation(line: 895, column: 22, scope: !3564)
!3592 = !DILocation(line: 895, column: 15, scope: !3564)
!3593 = !DILocation(line: 896, column: 11, scope: !3564)
!3594 = !DILocation(line: 897, column: 15, scope: !3595)
!3595 = distinct !DILexicalBlock(scope: !3564, file: !261, line: 896, column: 11)
!3596 = !{i64 0, i64 8, !1065, i64 8, i64 8, !792}
!3597 = !DILocation(line: 897, column: 9, scope: !3595)
!3598 = !DILocation(line: 898, column: 20, scope: !3564)
!3599 = !DILocation(line: 898, column: 18, scope: !3564)
!3600 = !DILocation(line: 898, column: 15, scope: !3564)
!3601 = !DILocation(line: 898, column: 38, scope: !3564)
!3602 = !DILocation(line: 898, column: 31, scope: !3564)
!3603 = !DILocation(line: 898, column: 48, scope: !3564)
!3604 = !DILocation(line: 0, scope: !2998, inlinedAt: !3605)
!3605 = distinct !DILocation(line: 898, column: 7, scope: !3564)
!3606 = !DILocation(line: 59, column: 10, scope: !2998, inlinedAt: !3605)
!3607 = !DILocation(line: 899, column: 14, scope: !3564)
!3608 = !DILocation(line: 900, column: 5, scope: !3564)
!3609 = !DILocation(line: 903, column: 19, scope: !3568)
!3610 = !DILocation(line: 903, column: 25, scope: !3568)
!3611 = !DILocation(line: 0, scope: !3568)
!3612 = !DILocation(line: 904, column: 23, scope: !3568)
!3613 = !DILocation(line: 906, column: 26, scope: !3568)
!3614 = !DILocation(line: 906, column: 32, scope: !3568)
!3615 = !DILocation(line: 908, column: 55, scope: !3568)
!3616 = !DILocation(line: 909, column: 46, scope: !3568)
!3617 = !DILocation(line: 910, column: 55, scope: !3568)
!3618 = !DILocation(line: 911, column: 55, scope: !3568)
!3619 = !DILocation(line: 907, column: 20, scope: !3568)
!3620 = !DILocation(line: 913, column: 14, scope: !3621)
!3621 = distinct !DILexicalBlock(scope: !3568, file: !261, line: 913, column: 9)
!3622 = !DILocation(line: 913, column: 9, scope: !3568)
!3623 = !DILocation(line: 915, column: 35, scope: !3624)
!3624 = distinct !DILexicalBlock(scope: !3621, file: !261, line: 914, column: 7)
!3625 = !DILocation(line: 915, column: 20, scope: !3624)
!3626 = !DILocation(line: 916, column: 17, scope: !3627)
!3627 = distinct !DILexicalBlock(scope: !3624, file: !261, line: 916, column: 13)
!3628 = !DILocation(line: 916, column: 13, scope: !3624)
!3629 = !DILocation(line: 917, column: 11, scope: !3627)
!3630 = !DILocation(line: 0, scope: !3470, inlinedAt: !3631)
!3631 = distinct !DILocation(line: 918, column: 27, scope: !3624)
!3632 = !DILocation(line: 218, column: 10, scope: !3470, inlinedAt: !3631)
!3633 = !DILocation(line: 918, column: 19, scope: !3624)
!3634 = !DILocation(line: 919, column: 69, scope: !3624)
!3635 = !DILocation(line: 921, column: 44, scope: !3624)
!3636 = !DILocation(line: 922, column: 44, scope: !3624)
!3637 = !DILocation(line: 919, column: 9, scope: !3624)
!3638 = !DILocation(line: 923, column: 7, scope: !3624)
!3639 = !DILocation(line: 925, column: 11, scope: !3568)
!3640 = !DILocation(line: 926, column: 5, scope: !3568)
!3641 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !261, file: !261, line: 937, type: !3642, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !260, retainedNodes: !3644)
!3642 = !DISubroutineType(types: !3643)
!3643 = !{!59, !64, !93, !62}
!3644 = !{!3645, !3646, !3647}
!3645 = !DILocalVariable(name: "n", arg: 1, scope: !3641, file: !261, line: 937, type: !64)
!3646 = !DILocalVariable(name: "arg", arg: 2, scope: !3641, file: !261, line: 937, type: !93)
!3647 = !DILocalVariable(name: "argsize", arg: 3, scope: !3641, file: !261, line: 937, type: !62)
!3648 = !DILocation(line: 0, scope: !3641)
!3649 = !DILocation(line: 939, column: 10, scope: !3641)
!3650 = !DILocation(line: 939, column: 3, scope: !3641)
!3651 = distinct !DISubprogram(name: "quotearg", scope: !261, file: !261, line: 943, type: !1573, scopeLine: 944, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !260, retainedNodes: !3652)
!3652 = !{!3653}
!3653 = !DILocalVariable(name: "arg", arg: 1, scope: !3651, file: !261, line: 943, type: !93)
!3654 = !DILocation(line: 0, scope: !3651)
!3655 = !DILocation(line: 0, scope: !3546, inlinedAt: !3656)
!3656 = distinct !DILocation(line: 945, column: 10, scope: !3651)
!3657 = !DILocation(line: 933, column: 10, scope: !3546, inlinedAt: !3656)
!3658 = !DILocation(line: 945, column: 3, scope: !3651)
!3659 = distinct !DISubprogram(name: "quotearg_mem", scope: !261, file: !261, line: 949, type: !3660, scopeLine: 950, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !260, retainedNodes: !3662)
!3660 = !DISubroutineType(types: !3661)
!3661 = !{!59, !93, !62}
!3662 = !{!3663, !3664}
!3663 = !DILocalVariable(name: "arg", arg: 1, scope: !3659, file: !261, line: 949, type: !93)
!3664 = !DILocalVariable(name: "argsize", arg: 2, scope: !3659, file: !261, line: 949, type: !62)
!3665 = !DILocation(line: 0, scope: !3659)
!3666 = !DILocation(line: 0, scope: !3641, inlinedAt: !3667)
!3667 = distinct !DILocation(line: 951, column: 10, scope: !3659)
!3668 = !DILocation(line: 939, column: 10, scope: !3641, inlinedAt: !3667)
!3669 = !DILocation(line: 951, column: 3, scope: !3659)
!3670 = distinct !DISubprogram(name: "quotearg_n_style", scope: !261, file: !261, line: 955, type: !3671, scopeLine: 956, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !260, retainedNodes: !3673)
!3671 = !DISubroutineType(types: !3672)
!3672 = !{!59, !64, !5, !93}
!3673 = !{!3674, !3675, !3676, !3677}
!3674 = !DILocalVariable(name: "n", arg: 1, scope: !3670, file: !261, line: 955, type: !64)
!3675 = !DILocalVariable(name: "s", arg: 2, scope: !3670, file: !261, line: 955, type: !5)
!3676 = !DILocalVariable(name: "arg", arg: 3, scope: !3670, file: !261, line: 955, type: !93)
!3677 = !DILocalVariable(name: "o", scope: !3670, file: !261, line: 957, type: !2605)
!3678 = !DILocation(line: 0, scope: !3670)
!3679 = !DILocation(line: 957, column: 3, scope: !3670)
!3680 = !DILocation(line: 957, column: 32, scope: !3670)
!3681 = !{!3682}
!3682 = distinct !{!3682, !3683, !"quoting_options_from_style: argument 0"}
!3683 = distinct !{!3683, !"quoting_options_from_style"}
!3684 = !DILocation(line: 957, column: 36, scope: !3670)
!3685 = !DILocalVariable(name: "style", arg: 1, scope: !3686, file: !261, line: 193, type: !5)
!3686 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !261, file: !261, line: 193, type: !3687, scopeLine: 194, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !260, retainedNodes: !3689)
!3687 = !DISubroutineType(types: !3688)
!3688 = !{!278, !5}
!3689 = !{!3685, !3690}
!3690 = !DILocalVariable(name: "o", scope: !3686, file: !261, line: 195, type: !278)
!3691 = !DILocation(line: 0, scope: !3686, inlinedAt: !3692)
!3692 = distinct !DILocation(line: 957, column: 36, scope: !3670)
!3693 = !DILocation(line: 195, column: 26, scope: !3686, inlinedAt: !3692)
!3694 = !DILocation(line: 196, column: 13, scope: !3695, inlinedAt: !3692)
!3695 = distinct !DILexicalBlock(scope: !3686, file: !261, line: 196, column: 7)
!3696 = !DILocation(line: 196, column: 7, scope: !3686, inlinedAt: !3692)
!3697 = !DILocation(line: 197, column: 5, scope: !3695, inlinedAt: !3692)
!3698 = !DILocation(line: 198, column: 5, scope: !3686, inlinedAt: !3692)
!3699 = !DILocation(line: 198, column: 11, scope: !3686, inlinedAt: !3692)
!3700 = !DILocation(line: 958, column: 10, scope: !3670)
!3701 = !DILocation(line: 959, column: 1, scope: !3670)
!3702 = !DILocation(line: 958, column: 3, scope: !3670)
!3703 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !261, file: !261, line: 962, type: !3704, scopeLine: 964, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !260, retainedNodes: !3706)
!3704 = !DISubroutineType(types: !3705)
!3705 = !{!59, !64, !5, !93, !62}
!3706 = !{!3707, !3708, !3709, !3710, !3711}
!3707 = !DILocalVariable(name: "n", arg: 1, scope: !3703, file: !261, line: 962, type: !64)
!3708 = !DILocalVariable(name: "s", arg: 2, scope: !3703, file: !261, line: 962, type: !5)
!3709 = !DILocalVariable(name: "arg", arg: 3, scope: !3703, file: !261, line: 963, type: !93)
!3710 = !DILocalVariable(name: "argsize", arg: 4, scope: !3703, file: !261, line: 963, type: !62)
!3711 = !DILocalVariable(name: "o", scope: !3703, file: !261, line: 965, type: !2605)
!3712 = !DILocation(line: 0, scope: !3703)
!3713 = !DILocation(line: 965, column: 3, scope: !3703)
!3714 = !DILocation(line: 965, column: 32, scope: !3703)
!3715 = !{!3716}
!3716 = distinct !{!3716, !3717, !"quoting_options_from_style: argument 0"}
!3717 = distinct !{!3717, !"quoting_options_from_style"}
!3718 = !DILocation(line: 965, column: 36, scope: !3703)
!3719 = !DILocation(line: 0, scope: !3686, inlinedAt: !3720)
!3720 = distinct !DILocation(line: 965, column: 36, scope: !3703)
!3721 = !DILocation(line: 195, column: 26, scope: !3686, inlinedAt: !3720)
!3722 = !DILocation(line: 196, column: 13, scope: !3695, inlinedAt: !3720)
!3723 = !DILocation(line: 196, column: 7, scope: !3686, inlinedAt: !3720)
!3724 = !DILocation(line: 197, column: 5, scope: !3695, inlinedAt: !3720)
!3725 = !DILocation(line: 198, column: 5, scope: !3686, inlinedAt: !3720)
!3726 = !DILocation(line: 198, column: 11, scope: !3686, inlinedAt: !3720)
!3727 = !DILocation(line: 966, column: 10, scope: !3703)
!3728 = !DILocation(line: 967, column: 1, scope: !3703)
!3729 = !DILocation(line: 966, column: 3, scope: !3703)
!3730 = distinct !DISubprogram(name: "quotearg_style", scope: !261, file: !261, line: 970, type: !3731, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !260, retainedNodes: !3733)
!3731 = !DISubroutineType(types: !3732)
!3732 = !{!59, !5, !93}
!3733 = !{!3734, !3735}
!3734 = !DILocalVariable(name: "s", arg: 1, scope: !3730, file: !261, line: 970, type: !5)
!3735 = !DILocalVariable(name: "arg", arg: 2, scope: !3730, file: !261, line: 970, type: !93)
!3736 = !DILocation(line: 0, scope: !3730)
!3737 = !DILocation(line: 0, scope: !3670, inlinedAt: !3738)
!3738 = distinct !DILocation(line: 972, column: 10, scope: !3730)
!3739 = !DILocation(line: 957, column: 3, scope: !3670, inlinedAt: !3738)
!3740 = !DILocation(line: 957, column: 32, scope: !3670, inlinedAt: !3738)
!3741 = !{!3742}
!3742 = distinct !{!3742, !3743, !"quoting_options_from_style: argument 0"}
!3743 = distinct !{!3743, !"quoting_options_from_style"}
!3744 = !DILocation(line: 957, column: 36, scope: !3670, inlinedAt: !3738)
!3745 = !DILocation(line: 0, scope: !3686, inlinedAt: !3746)
!3746 = distinct !DILocation(line: 957, column: 36, scope: !3670, inlinedAt: !3738)
!3747 = !DILocation(line: 195, column: 26, scope: !3686, inlinedAt: !3746)
!3748 = !DILocation(line: 196, column: 13, scope: !3695, inlinedAt: !3746)
!3749 = !DILocation(line: 196, column: 7, scope: !3686, inlinedAt: !3746)
!3750 = !DILocation(line: 197, column: 5, scope: !3695, inlinedAt: !3746)
!3751 = !DILocation(line: 198, column: 5, scope: !3686, inlinedAt: !3746)
!3752 = !DILocation(line: 198, column: 11, scope: !3686, inlinedAt: !3746)
!3753 = !DILocation(line: 958, column: 10, scope: !3670, inlinedAt: !3738)
!3754 = !DILocation(line: 959, column: 1, scope: !3670, inlinedAt: !3738)
!3755 = !DILocation(line: 972, column: 3, scope: !3730)
!3756 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !261, file: !261, line: 976, type: !3757, scopeLine: 977, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !260, retainedNodes: !3759)
!3757 = !DISubroutineType(types: !3758)
!3758 = !{!59, !5, !93, !62}
!3759 = !{!3760, !3761, !3762}
!3760 = !DILocalVariable(name: "s", arg: 1, scope: !3756, file: !261, line: 976, type: !5)
!3761 = !DILocalVariable(name: "arg", arg: 2, scope: !3756, file: !261, line: 976, type: !93)
!3762 = !DILocalVariable(name: "argsize", arg: 3, scope: !3756, file: !261, line: 976, type: !62)
!3763 = !DILocation(line: 0, scope: !3756)
!3764 = !DILocation(line: 0, scope: !3703, inlinedAt: !3765)
!3765 = distinct !DILocation(line: 978, column: 10, scope: !3756)
!3766 = !DILocation(line: 965, column: 3, scope: !3703, inlinedAt: !3765)
!3767 = !DILocation(line: 965, column: 32, scope: !3703, inlinedAt: !3765)
!3768 = !{!3769}
!3769 = distinct !{!3769, !3770, !"quoting_options_from_style: argument 0"}
!3770 = distinct !{!3770, !"quoting_options_from_style"}
!3771 = !DILocation(line: 965, column: 36, scope: !3703, inlinedAt: !3765)
!3772 = !DILocation(line: 0, scope: !3686, inlinedAt: !3773)
!3773 = distinct !DILocation(line: 965, column: 36, scope: !3703, inlinedAt: !3765)
!3774 = !DILocation(line: 195, column: 26, scope: !3686, inlinedAt: !3773)
!3775 = !DILocation(line: 196, column: 13, scope: !3695, inlinedAt: !3773)
!3776 = !DILocation(line: 196, column: 7, scope: !3686, inlinedAt: !3773)
!3777 = !DILocation(line: 197, column: 5, scope: !3695, inlinedAt: !3773)
!3778 = !DILocation(line: 198, column: 5, scope: !3686, inlinedAt: !3773)
!3779 = !DILocation(line: 198, column: 11, scope: !3686, inlinedAt: !3773)
!3780 = !DILocation(line: 966, column: 10, scope: !3703, inlinedAt: !3765)
!3781 = !DILocation(line: 967, column: 1, scope: !3703, inlinedAt: !3765)
!3782 = !DILocation(line: 978, column: 3, scope: !3756)
!3783 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !261, file: !261, line: 982, type: !3784, scopeLine: 983, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !260, retainedNodes: !3786)
!3784 = !DISubroutineType(types: !3785)
!3785 = !{!59, !93, !62, !60}
!3786 = !{!3787, !3788, !3789, !3790}
!3787 = !DILocalVariable(name: "arg", arg: 1, scope: !3783, file: !261, line: 982, type: !93)
!3788 = !DILocalVariable(name: "argsize", arg: 2, scope: !3783, file: !261, line: 982, type: !62)
!3789 = !DILocalVariable(name: "ch", arg: 3, scope: !3783, file: !261, line: 982, type: !60)
!3790 = !DILocalVariable(name: "options", scope: !3783, file: !261, line: 984, type: !278)
!3791 = !DILocation(line: 0, scope: !3783)
!3792 = !DILocation(line: 984, column: 3, scope: !3783)
!3793 = !DILocation(line: 984, column: 26, scope: !3783)
!3794 = !DILocation(line: 985, column: 13, scope: !3783)
!3795 = !{i64 0, i64 4, !1096, i64 4, i64 4, !1021, i64 8, i64 32, !1096, i64 40, i64 8, !792, i64 48, i64 8, !792}
!3796 = !DILocation(line: 0, scope: !2625, inlinedAt: !3797)
!3797 = distinct !DILocation(line: 986, column: 3, scope: !3783)
!3798 = !DILocation(line: 156, column: 62, scope: !2625, inlinedAt: !3797)
!3799 = !DILocation(line: 156, column: 57, scope: !2625, inlinedAt: !3797)
!3800 = !DILocation(line: 157, column: 15, scope: !2625, inlinedAt: !3797)
!3801 = !DILocation(line: 158, column: 12, scope: !2625, inlinedAt: !3797)
!3802 = !DILocation(line: 158, column: 15, scope: !2625, inlinedAt: !3797)
!3803 = !DILocation(line: 158, column: 25, scope: !2625, inlinedAt: !3797)
!3804 = !DILocation(line: 159, column: 18, scope: !2625, inlinedAt: !3797)
!3805 = !DILocation(line: 159, column: 23, scope: !2625, inlinedAt: !3797)
!3806 = !DILocation(line: 159, column: 6, scope: !2625, inlinedAt: !3797)
!3807 = !DILocation(line: 987, column: 10, scope: !3783)
!3808 = !DILocation(line: 988, column: 1, scope: !3783)
!3809 = !DILocation(line: 987, column: 3, scope: !3783)
!3810 = distinct !DISubprogram(name: "quotearg_char", scope: !261, file: !261, line: 991, type: !3811, scopeLine: 992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !260, retainedNodes: !3813)
!3811 = !DISubroutineType(types: !3812)
!3812 = !{!59, !93, !60}
!3813 = !{!3814, !3815}
!3814 = !DILocalVariable(name: "arg", arg: 1, scope: !3810, file: !261, line: 991, type: !93)
!3815 = !DILocalVariable(name: "ch", arg: 2, scope: !3810, file: !261, line: 991, type: !60)
!3816 = !DILocation(line: 0, scope: !3810)
!3817 = !DILocation(line: 0, scope: !3783, inlinedAt: !3818)
!3818 = distinct !DILocation(line: 993, column: 10, scope: !3810)
!3819 = !DILocation(line: 984, column: 3, scope: !3783, inlinedAt: !3818)
!3820 = !DILocation(line: 984, column: 26, scope: !3783, inlinedAt: !3818)
!3821 = !DILocation(line: 985, column: 13, scope: !3783, inlinedAt: !3818)
!3822 = !DILocation(line: 0, scope: !2625, inlinedAt: !3823)
!3823 = distinct !DILocation(line: 986, column: 3, scope: !3783, inlinedAt: !3818)
!3824 = !DILocation(line: 156, column: 62, scope: !2625, inlinedAt: !3823)
!3825 = !DILocation(line: 156, column: 57, scope: !2625, inlinedAt: !3823)
!3826 = !DILocation(line: 157, column: 15, scope: !2625, inlinedAt: !3823)
!3827 = !DILocation(line: 158, column: 12, scope: !2625, inlinedAt: !3823)
!3828 = !DILocation(line: 158, column: 15, scope: !2625, inlinedAt: !3823)
!3829 = !DILocation(line: 158, column: 25, scope: !2625, inlinedAt: !3823)
!3830 = !DILocation(line: 159, column: 18, scope: !2625, inlinedAt: !3823)
!3831 = !DILocation(line: 159, column: 23, scope: !2625, inlinedAt: !3823)
!3832 = !DILocation(line: 159, column: 6, scope: !2625, inlinedAt: !3823)
!3833 = !DILocation(line: 987, column: 10, scope: !3783, inlinedAt: !3818)
!3834 = !DILocation(line: 988, column: 1, scope: !3783, inlinedAt: !3818)
!3835 = !DILocation(line: 993, column: 3, scope: !3810)
!3836 = distinct !DISubprogram(name: "quotearg_colon", scope: !261, file: !261, line: 997, type: !1573, scopeLine: 998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !260, retainedNodes: !3837)
!3837 = !{!3838}
!3838 = !DILocalVariable(name: "arg", arg: 1, scope: !3836, file: !261, line: 997, type: !93)
!3839 = !DILocation(line: 0, scope: !3836)
!3840 = !DILocation(line: 0, scope: !3810, inlinedAt: !3841)
!3841 = distinct !DILocation(line: 999, column: 10, scope: !3836)
!3842 = !DILocation(line: 0, scope: !3783, inlinedAt: !3843)
!3843 = distinct !DILocation(line: 993, column: 10, scope: !3810, inlinedAt: !3841)
!3844 = !DILocation(line: 984, column: 3, scope: !3783, inlinedAt: !3843)
!3845 = !DILocation(line: 984, column: 26, scope: !3783, inlinedAt: !3843)
!3846 = !DILocation(line: 985, column: 13, scope: !3783, inlinedAt: !3843)
!3847 = !DILocation(line: 0, scope: !2625, inlinedAt: !3848)
!3848 = distinct !DILocation(line: 986, column: 3, scope: !3783, inlinedAt: !3843)
!3849 = !DILocation(line: 156, column: 57, scope: !2625, inlinedAt: !3848)
!3850 = !DILocation(line: 158, column: 12, scope: !2625, inlinedAt: !3848)
!3851 = !DILocation(line: 159, column: 6, scope: !2625, inlinedAt: !3848)
!3852 = !DILocation(line: 987, column: 10, scope: !3783, inlinedAt: !3843)
!3853 = !DILocation(line: 988, column: 1, scope: !3783, inlinedAt: !3843)
!3854 = !DILocation(line: 999, column: 3, scope: !3836)
!3855 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !261, file: !261, line: 1003, type: !3660, scopeLine: 1004, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !260, retainedNodes: !3856)
!3856 = !{!3857, !3858}
!3857 = !DILocalVariable(name: "arg", arg: 1, scope: !3855, file: !261, line: 1003, type: !93)
!3858 = !DILocalVariable(name: "argsize", arg: 2, scope: !3855, file: !261, line: 1003, type: !62)
!3859 = !DILocation(line: 0, scope: !3855)
!3860 = !DILocation(line: 0, scope: !3783, inlinedAt: !3861)
!3861 = distinct !DILocation(line: 1005, column: 10, scope: !3855)
!3862 = !DILocation(line: 984, column: 3, scope: !3783, inlinedAt: !3861)
!3863 = !DILocation(line: 984, column: 26, scope: !3783, inlinedAt: !3861)
!3864 = !DILocation(line: 985, column: 13, scope: !3783, inlinedAt: !3861)
!3865 = !DILocation(line: 0, scope: !2625, inlinedAt: !3866)
!3866 = distinct !DILocation(line: 986, column: 3, scope: !3783, inlinedAt: !3861)
!3867 = !DILocation(line: 156, column: 57, scope: !2625, inlinedAt: !3866)
!3868 = !DILocation(line: 158, column: 12, scope: !2625, inlinedAt: !3866)
!3869 = !DILocation(line: 159, column: 6, scope: !2625, inlinedAt: !3866)
!3870 = !DILocation(line: 987, column: 10, scope: !3783, inlinedAt: !3861)
!3871 = !DILocation(line: 988, column: 1, scope: !3783, inlinedAt: !3861)
!3872 = !DILocation(line: 1005, column: 3, scope: !3855)
!3873 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !261, file: !261, line: 1009, type: !3671, scopeLine: 1010, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !260, retainedNodes: !3874)
!3874 = !{!3875, !3876, !3877, !3878}
!3875 = !DILocalVariable(name: "n", arg: 1, scope: !3873, file: !261, line: 1009, type: !64)
!3876 = !DILocalVariable(name: "s", arg: 2, scope: !3873, file: !261, line: 1009, type: !5)
!3877 = !DILocalVariable(name: "arg", arg: 3, scope: !3873, file: !261, line: 1009, type: !93)
!3878 = !DILocalVariable(name: "options", scope: !3873, file: !261, line: 1011, type: !278)
!3879 = !DILocation(line: 195, column: 26, scope: !3686, inlinedAt: !3880)
!3880 = distinct !DILocation(line: 1012, column: 13, scope: !3873)
!3881 = !DILocation(line: 0, scope: !3873)
!3882 = !DILocation(line: 1011, column: 3, scope: !3873)
!3883 = !DILocation(line: 1011, column: 26, scope: !3873)
!3884 = !DILocation(line: 1012, column: 13, scope: !3873)
!3885 = !{!3886}
!3886 = distinct !{!3886, !3887, !"quoting_options_from_style: argument 0"}
!3887 = distinct !{!3887, !"quoting_options_from_style"}
!3888 = !DILocation(line: 0, scope: !3686, inlinedAt: !3880)
!3889 = !DILocation(line: 196, column: 13, scope: !3695, inlinedAt: !3880)
!3890 = !DILocation(line: 196, column: 7, scope: !3686, inlinedAt: !3880)
!3891 = !DILocation(line: 197, column: 5, scope: !3695, inlinedAt: !3880)
!3892 = !{i64 0, i64 4, !1021, i64 4, i64 32, !1096, i64 36, i64 8, !792, i64 44, i64 8, !792}
!3893 = !DILocation(line: 0, scope: !2625, inlinedAt: !3894)
!3894 = distinct !DILocation(line: 1013, column: 3, scope: !3873)
!3895 = !DILocation(line: 156, column: 57, scope: !2625, inlinedAt: !3894)
!3896 = !DILocation(line: 158, column: 12, scope: !2625, inlinedAt: !3894)
!3897 = !DILocation(line: 159, column: 6, scope: !2625, inlinedAt: !3894)
!3898 = !DILocation(line: 1014, column: 10, scope: !3873)
!3899 = !DILocation(line: 1015, column: 1, scope: !3873)
!3900 = !DILocation(line: 1014, column: 3, scope: !3873)
!3901 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !261, file: !261, line: 1018, type: !3902, scopeLine: 1020, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !260, retainedNodes: !3904)
!3902 = !DISubroutineType(types: !3903)
!3903 = !{!59, !64, !93, !93, !93}
!3904 = !{!3905, !3906, !3907, !3908}
!3905 = !DILocalVariable(name: "n", arg: 1, scope: !3901, file: !261, line: 1018, type: !64)
!3906 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3901, file: !261, line: 1018, type: !93)
!3907 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3901, file: !261, line: 1019, type: !93)
!3908 = !DILocalVariable(name: "arg", arg: 4, scope: !3901, file: !261, line: 1019, type: !93)
!3909 = !DILocation(line: 0, scope: !3901)
!3910 = !DILocalVariable(name: "n", arg: 1, scope: !3911, file: !261, line: 1026, type: !64)
!3911 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !261, file: !261, line: 1026, type: !3912, scopeLine: 1029, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !260, retainedNodes: !3914)
!3912 = !DISubroutineType(types: !3913)
!3913 = !{!59, !64, !93, !93, !93, !62}
!3914 = !{!3910, !3915, !3916, !3917, !3918, !3919}
!3915 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3911, file: !261, line: 1026, type: !93)
!3916 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3911, file: !261, line: 1027, type: !93)
!3917 = !DILocalVariable(name: "arg", arg: 4, scope: !3911, file: !261, line: 1028, type: !93)
!3918 = !DILocalVariable(name: "argsize", arg: 5, scope: !3911, file: !261, line: 1028, type: !62)
!3919 = !DILocalVariable(name: "o", scope: !3911, file: !261, line: 1030, type: !278)
!3920 = !DILocation(line: 0, scope: !3911, inlinedAt: !3921)
!3921 = distinct !DILocation(line: 1021, column: 10, scope: !3901)
!3922 = !DILocation(line: 1030, column: 3, scope: !3911, inlinedAt: !3921)
!3923 = !DILocation(line: 1030, column: 26, scope: !3911, inlinedAt: !3921)
!3924 = !DILocation(line: 1030, column: 30, scope: !3911, inlinedAt: !3921)
!3925 = !DILocation(line: 0, scope: !2665, inlinedAt: !3926)
!3926 = distinct !DILocation(line: 1031, column: 3, scope: !3911, inlinedAt: !3921)
!3927 = !DILocation(line: 184, column: 6, scope: !2665, inlinedAt: !3926)
!3928 = !DILocation(line: 184, column: 12, scope: !2665, inlinedAt: !3926)
!3929 = !DILocation(line: 185, column: 8, scope: !2679, inlinedAt: !3926)
!3930 = !DILocation(line: 185, column: 19, scope: !2679, inlinedAt: !3926)
!3931 = !DILocation(line: 186, column: 5, scope: !2679, inlinedAt: !3926)
!3932 = !DILocation(line: 187, column: 6, scope: !2665, inlinedAt: !3926)
!3933 = !DILocation(line: 187, column: 17, scope: !2665, inlinedAt: !3926)
!3934 = !DILocation(line: 188, column: 6, scope: !2665, inlinedAt: !3926)
!3935 = !DILocation(line: 188, column: 18, scope: !2665, inlinedAt: !3926)
!3936 = !DILocation(line: 1032, column: 10, scope: !3911, inlinedAt: !3921)
!3937 = !DILocation(line: 1033, column: 1, scope: !3911, inlinedAt: !3921)
!3938 = !DILocation(line: 1021, column: 3, scope: !3901)
!3939 = !DILocation(line: 0, scope: !3911)
!3940 = !DILocation(line: 1030, column: 3, scope: !3911)
!3941 = !DILocation(line: 1030, column: 26, scope: !3911)
!3942 = !DILocation(line: 1030, column: 30, scope: !3911)
!3943 = !DILocation(line: 0, scope: !2665, inlinedAt: !3944)
!3944 = distinct !DILocation(line: 1031, column: 3, scope: !3911)
!3945 = !DILocation(line: 184, column: 6, scope: !2665, inlinedAt: !3944)
!3946 = !DILocation(line: 184, column: 12, scope: !2665, inlinedAt: !3944)
!3947 = !DILocation(line: 185, column: 8, scope: !2679, inlinedAt: !3944)
!3948 = !DILocation(line: 185, column: 19, scope: !2679, inlinedAt: !3944)
!3949 = !DILocation(line: 186, column: 5, scope: !2679, inlinedAt: !3944)
!3950 = !DILocation(line: 187, column: 6, scope: !2665, inlinedAt: !3944)
!3951 = !DILocation(line: 187, column: 17, scope: !2665, inlinedAt: !3944)
!3952 = !DILocation(line: 188, column: 6, scope: !2665, inlinedAt: !3944)
!3953 = !DILocation(line: 188, column: 18, scope: !2665, inlinedAt: !3944)
!3954 = !DILocation(line: 1032, column: 10, scope: !3911)
!3955 = !DILocation(line: 1033, column: 1, scope: !3911)
!3956 = !DILocation(line: 1032, column: 3, scope: !3911)
!3957 = distinct !DISubprogram(name: "quotearg_custom", scope: !261, file: !261, line: 1036, type: !3958, scopeLine: 1038, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !260, retainedNodes: !3960)
!3958 = !DISubroutineType(types: !3959)
!3959 = !{!59, !93, !93, !93}
!3960 = !{!3961, !3962, !3963}
!3961 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3957, file: !261, line: 1036, type: !93)
!3962 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3957, file: !261, line: 1036, type: !93)
!3963 = !DILocalVariable(name: "arg", arg: 3, scope: !3957, file: !261, line: 1037, type: !93)
!3964 = !DILocation(line: 0, scope: !3957)
!3965 = !DILocation(line: 0, scope: !3901, inlinedAt: !3966)
!3966 = distinct !DILocation(line: 1039, column: 10, scope: !3957)
!3967 = !DILocation(line: 0, scope: !3911, inlinedAt: !3968)
!3968 = distinct !DILocation(line: 1021, column: 10, scope: !3901, inlinedAt: !3966)
!3969 = !DILocation(line: 1030, column: 3, scope: !3911, inlinedAt: !3968)
!3970 = !DILocation(line: 1030, column: 26, scope: !3911, inlinedAt: !3968)
!3971 = !DILocation(line: 1030, column: 30, scope: !3911, inlinedAt: !3968)
!3972 = !DILocation(line: 0, scope: !2665, inlinedAt: !3973)
!3973 = distinct !DILocation(line: 1031, column: 3, scope: !3911, inlinedAt: !3968)
!3974 = !DILocation(line: 184, column: 6, scope: !2665, inlinedAt: !3973)
!3975 = !DILocation(line: 184, column: 12, scope: !2665, inlinedAt: !3973)
!3976 = !DILocation(line: 185, column: 8, scope: !2679, inlinedAt: !3973)
!3977 = !DILocation(line: 185, column: 19, scope: !2679, inlinedAt: !3973)
!3978 = !DILocation(line: 186, column: 5, scope: !2679, inlinedAt: !3973)
!3979 = !DILocation(line: 187, column: 6, scope: !2665, inlinedAt: !3973)
!3980 = !DILocation(line: 187, column: 17, scope: !2665, inlinedAt: !3973)
!3981 = !DILocation(line: 188, column: 6, scope: !2665, inlinedAt: !3973)
!3982 = !DILocation(line: 188, column: 18, scope: !2665, inlinedAt: !3973)
!3983 = !DILocation(line: 1032, column: 10, scope: !3911, inlinedAt: !3968)
!3984 = !DILocation(line: 1033, column: 1, scope: !3911, inlinedAt: !3968)
!3985 = !DILocation(line: 1039, column: 3, scope: !3957)
!3986 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !261, file: !261, line: 1043, type: !3987, scopeLine: 1045, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !260, retainedNodes: !3989)
!3987 = !DISubroutineType(types: !3988)
!3988 = !{!59, !93, !93, !93, !62}
!3989 = !{!3990, !3991, !3992, !3993}
!3990 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3986, file: !261, line: 1043, type: !93)
!3991 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3986, file: !261, line: 1043, type: !93)
!3992 = !DILocalVariable(name: "arg", arg: 3, scope: !3986, file: !261, line: 1044, type: !93)
!3993 = !DILocalVariable(name: "argsize", arg: 4, scope: !3986, file: !261, line: 1044, type: !62)
!3994 = !DILocation(line: 0, scope: !3986)
!3995 = !DILocation(line: 0, scope: !3911, inlinedAt: !3996)
!3996 = distinct !DILocation(line: 1046, column: 10, scope: !3986)
!3997 = !DILocation(line: 1030, column: 3, scope: !3911, inlinedAt: !3996)
!3998 = !DILocation(line: 1030, column: 26, scope: !3911, inlinedAt: !3996)
!3999 = !DILocation(line: 1030, column: 30, scope: !3911, inlinedAt: !3996)
!4000 = !DILocation(line: 0, scope: !2665, inlinedAt: !4001)
!4001 = distinct !DILocation(line: 1031, column: 3, scope: !3911, inlinedAt: !3996)
!4002 = !DILocation(line: 184, column: 6, scope: !2665, inlinedAt: !4001)
!4003 = !DILocation(line: 184, column: 12, scope: !2665, inlinedAt: !4001)
!4004 = !DILocation(line: 185, column: 8, scope: !2679, inlinedAt: !4001)
!4005 = !DILocation(line: 185, column: 19, scope: !2679, inlinedAt: !4001)
!4006 = !DILocation(line: 186, column: 5, scope: !2679, inlinedAt: !4001)
!4007 = !DILocation(line: 187, column: 6, scope: !2665, inlinedAt: !4001)
!4008 = !DILocation(line: 187, column: 17, scope: !2665, inlinedAt: !4001)
!4009 = !DILocation(line: 188, column: 6, scope: !2665, inlinedAt: !4001)
!4010 = !DILocation(line: 188, column: 18, scope: !2665, inlinedAt: !4001)
!4011 = !DILocation(line: 1032, column: 10, scope: !3911, inlinedAt: !3996)
!4012 = !DILocation(line: 1033, column: 1, scope: !3911, inlinedAt: !3996)
!4013 = !DILocation(line: 1046, column: 3, scope: !3986)
!4014 = distinct !DISubprogram(name: "quote_n_mem", scope: !261, file: !261, line: 1061, type: !4015, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !260, retainedNodes: !4017)
!4015 = !DISubroutineType(types: !4016)
!4016 = !{!93, !64, !93, !62}
!4017 = !{!4018, !4019, !4020}
!4018 = !DILocalVariable(name: "n", arg: 1, scope: !4014, file: !261, line: 1061, type: !64)
!4019 = !DILocalVariable(name: "arg", arg: 2, scope: !4014, file: !261, line: 1061, type: !93)
!4020 = !DILocalVariable(name: "argsize", arg: 3, scope: !4014, file: !261, line: 1061, type: !62)
!4021 = !DILocation(line: 0, scope: !4014)
!4022 = !DILocation(line: 1063, column: 10, scope: !4014)
!4023 = !DILocation(line: 1063, column: 3, scope: !4014)
!4024 = distinct !DISubprogram(name: "quote_mem", scope: !261, file: !261, line: 1067, type: !4025, scopeLine: 1068, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !260, retainedNodes: !4027)
!4025 = !DISubroutineType(types: !4026)
!4026 = !{!93, !93, !62}
!4027 = !{!4028, !4029}
!4028 = !DILocalVariable(name: "arg", arg: 1, scope: !4024, file: !261, line: 1067, type: !93)
!4029 = !DILocalVariable(name: "argsize", arg: 2, scope: !4024, file: !261, line: 1067, type: !62)
!4030 = !DILocation(line: 0, scope: !4024)
!4031 = !DILocation(line: 0, scope: !4014, inlinedAt: !4032)
!4032 = distinct !DILocation(line: 1069, column: 10, scope: !4024)
!4033 = !DILocation(line: 1063, column: 10, scope: !4014, inlinedAt: !4032)
!4034 = !DILocation(line: 1069, column: 3, scope: !4024)
!4035 = distinct !DISubprogram(name: "quote_n", scope: !261, file: !261, line: 1073, type: !4036, scopeLine: 1074, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !260, retainedNodes: !4038)
!4036 = !DISubroutineType(types: !4037)
!4037 = !{!93, !64, !93}
!4038 = !{!4039, !4040}
!4039 = !DILocalVariable(name: "n", arg: 1, scope: !4035, file: !261, line: 1073, type: !64)
!4040 = !DILocalVariable(name: "arg", arg: 2, scope: !4035, file: !261, line: 1073, type: !93)
!4041 = !DILocation(line: 0, scope: !4035)
!4042 = !DILocation(line: 0, scope: !4014, inlinedAt: !4043)
!4043 = distinct !DILocation(line: 1075, column: 10, scope: !4035)
!4044 = !DILocation(line: 1063, column: 10, scope: !4014, inlinedAt: !4043)
!4045 = !DILocation(line: 1075, column: 3, scope: !4035)
!4046 = distinct !DISubprogram(name: "quote", scope: !261, file: !261, line: 1079, type: !4047, scopeLine: 1080, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !260, retainedNodes: !4049)
!4047 = !DISubroutineType(types: !4048)
!4048 = !{!93, !93}
!4049 = !{!4050}
!4050 = !DILocalVariable(name: "arg", arg: 1, scope: !4046, file: !261, line: 1079, type: !93)
!4051 = !DILocation(line: 0, scope: !4046)
!4052 = !DILocation(line: 0, scope: !4035, inlinedAt: !4053)
!4053 = distinct !DILocation(line: 1081, column: 10, scope: !4046)
!4054 = !DILocation(line: 0, scope: !4014, inlinedAt: !4055)
!4055 = distinct !DILocation(line: 1075, column: 10, scope: !4035, inlinedAt: !4053)
!4056 = !DILocation(line: 1063, column: 10, scope: !4014, inlinedAt: !4055)
!4057 = !DILocation(line: 1081, column: 3, scope: !4046)
!4058 = distinct !DISubprogram(name: "dup_safer", scope: !342, file: !342, line: 31, type: !1352, scopeLine: 32, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !341, retainedNodes: !4059)
!4059 = !{!4060}
!4060 = !DILocalVariable(name: "fd", arg: 1, scope: !4058, file: !342, line: 31, type: !64)
!4061 = !DILocation(line: 0, scope: !4058)
!4062 = !DILocation(line: 33, column: 10, scope: !4058)
!4063 = !DILocation(line: 33, column: 3, scope: !4058)
!4064 = distinct !DISubprogram(name: "version_etc_arn", scope: !344, file: !344, line: 61, type: !4065, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !343, retainedNodes: !4102)
!4065 = !DISubroutineType(types: !4066)
!4066 = !{null, !4067, !93, !93, !93, !4101, !62}
!4067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4068, size: 64)
!4068 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !100, line: 7, baseType: !4069)
!4069 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !102, line: 49, size: 1728, elements: !4070)
!4070 = !{!4071, !4072, !4073, !4074, !4075, !4076, !4077, !4078, !4079, !4080, !4081, !4082, !4083, !4084, !4086, !4087, !4088, !4089, !4090, !4091, !4092, !4093, !4094, !4095, !4096, !4097, !4098, !4099, !4100}
!4071 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4069, file: !102, line: 51, baseType: !64, size: 32)
!4072 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4069, file: !102, line: 54, baseType: !59, size: 64, offset: 64)
!4073 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4069, file: !102, line: 55, baseType: !59, size: 64, offset: 128)
!4074 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4069, file: !102, line: 56, baseType: !59, size: 64, offset: 192)
!4075 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4069, file: !102, line: 57, baseType: !59, size: 64, offset: 256)
!4076 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4069, file: !102, line: 58, baseType: !59, size: 64, offset: 320)
!4077 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4069, file: !102, line: 59, baseType: !59, size: 64, offset: 384)
!4078 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4069, file: !102, line: 60, baseType: !59, size: 64, offset: 448)
!4079 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4069, file: !102, line: 61, baseType: !59, size: 64, offset: 512)
!4080 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4069, file: !102, line: 64, baseType: !59, size: 64, offset: 576)
!4081 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4069, file: !102, line: 65, baseType: !59, size: 64, offset: 640)
!4082 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4069, file: !102, line: 66, baseType: !59, size: 64, offset: 704)
!4083 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4069, file: !102, line: 68, baseType: !117, size: 64, offset: 768)
!4084 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4069, file: !102, line: 70, baseType: !4085, size: 64, offset: 832)
!4085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4069, size: 64)
!4086 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4069, file: !102, line: 72, baseType: !64, size: 32, offset: 896)
!4087 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4069, file: !102, line: 73, baseType: !64, size: 32, offset: 928)
!4088 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4069, file: !102, line: 74, baseType: !124, size: 64, offset: 960)
!4089 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4069, file: !102, line: 77, baseType: !67, size: 16, offset: 1024)
!4090 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4069, file: !102, line: 78, baseType: !128, size: 8, offset: 1040)
!4091 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4069, file: !102, line: 79, baseType: !130, size: 8, offset: 1048)
!4092 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4069, file: !102, line: 81, baseType: !134, size: 64, offset: 1088)
!4093 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4069, file: !102, line: 89, baseType: !137, size: 64, offset: 1152)
!4094 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4069, file: !102, line: 91, baseType: !139, size: 64, offset: 1216)
!4095 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4069, file: !102, line: 92, baseType: !142, size: 64, offset: 1280)
!4096 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4069, file: !102, line: 93, baseType: !4085, size: 64, offset: 1344)
!4097 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4069, file: !102, line: 94, baseType: !61, size: 64, offset: 1408)
!4098 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4069, file: !102, line: 95, baseType: !62, size: 64, offset: 1472)
!4099 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4069, file: !102, line: 96, baseType: !64, size: 32, offset: 1536)
!4100 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4069, file: !102, line: 98, baseType: !149, size: 160, offset: 1568)
!4101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !307, size: 64)
!4102 = !{!4103, !4104, !4105, !4106, !4107, !4108}
!4103 = !DILocalVariable(name: "stream", arg: 1, scope: !4064, file: !344, line: 61, type: !4067)
!4104 = !DILocalVariable(name: "command_name", arg: 2, scope: !4064, file: !344, line: 62, type: !93)
!4105 = !DILocalVariable(name: "package", arg: 3, scope: !4064, file: !344, line: 62, type: !93)
!4106 = !DILocalVariable(name: "version", arg: 4, scope: !4064, file: !344, line: 63, type: !93)
!4107 = !DILocalVariable(name: "authors", arg: 5, scope: !4064, file: !344, line: 64, type: !4101)
!4108 = !DILocalVariable(name: "n_authors", arg: 6, scope: !4064, file: !344, line: 64, type: !62)
!4109 = !DILocation(line: 0, scope: !4064)
!4110 = !DILocation(line: 66, column: 7, scope: !4111)
!4111 = distinct !DILexicalBlock(scope: !4064, file: !344, line: 66, column: 7)
!4112 = !DILocation(line: 66, column: 7, scope: !4064)
!4113 = !DILocation(line: 67, column: 5, scope: !4111)
!4114 = !DILocation(line: 69, column: 5, scope: !4111)
!4115 = !DILocation(line: 83, column: 3, scope: !4064)
!4116 = !DILocation(line: 85, column: 3, scope: !4064)
!4117 = !DILocation(line: 88, column: 3, scope: !4064)
!4118 = !DILocation(line: 95, column: 3, scope: !4064)
!4119 = !DILocation(line: 97, column: 3, scope: !4064)
!4120 = !DILocation(line: 105, column: 7, scope: !4121)
!4121 = distinct !DILexicalBlock(scope: !4064, file: !344, line: 98, column: 5)
!4122 = !DILocation(line: 106, column: 7, scope: !4121)
!4123 = !DILocation(line: 109, column: 7, scope: !4121)
!4124 = !DILocation(line: 110, column: 7, scope: !4121)
!4125 = !DILocation(line: 113, column: 7, scope: !4121)
!4126 = !DILocation(line: 115, column: 7, scope: !4121)
!4127 = !DILocation(line: 120, column: 7, scope: !4121)
!4128 = !DILocation(line: 122, column: 7, scope: !4121)
!4129 = !DILocation(line: 127, column: 7, scope: !4121)
!4130 = !DILocation(line: 129, column: 7, scope: !4121)
!4131 = !DILocation(line: 134, column: 7, scope: !4121)
!4132 = !DILocation(line: 137, column: 7, scope: !4121)
!4133 = !DILocation(line: 142, column: 7, scope: !4121)
!4134 = !DILocation(line: 145, column: 7, scope: !4121)
!4135 = !DILocation(line: 150, column: 7, scope: !4121)
!4136 = !DILocation(line: 154, column: 7, scope: !4121)
!4137 = !DILocation(line: 159, column: 7, scope: !4121)
!4138 = !DILocation(line: 163, column: 7, scope: !4121)
!4139 = !DILocation(line: 170, column: 7, scope: !4121)
!4140 = !DILocation(line: 174, column: 7, scope: !4121)
!4141 = !DILocation(line: 176, column: 1, scope: !4064)
!4142 = distinct !DISubprogram(name: "version_etc_ar", scope: !344, file: !344, line: 183, type: !4143, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !343, retainedNodes: !4145)
!4143 = !DISubroutineType(types: !4144)
!4144 = !{null, !4067, !93, !93, !93, !4101}
!4145 = !{!4146, !4147, !4148, !4149, !4150, !4151}
!4146 = !DILocalVariable(name: "stream", arg: 1, scope: !4142, file: !344, line: 183, type: !4067)
!4147 = !DILocalVariable(name: "command_name", arg: 2, scope: !4142, file: !344, line: 184, type: !93)
!4148 = !DILocalVariable(name: "package", arg: 3, scope: !4142, file: !344, line: 184, type: !93)
!4149 = !DILocalVariable(name: "version", arg: 4, scope: !4142, file: !344, line: 185, type: !93)
!4150 = !DILocalVariable(name: "authors", arg: 5, scope: !4142, file: !344, line: 185, type: !4101)
!4151 = !DILocalVariable(name: "n_authors", scope: !4142, file: !344, line: 187, type: !62)
!4152 = !DILocation(line: 0, scope: !4142)
!4153 = !DILocation(line: 189, column: 8, scope: !4154)
!4154 = distinct !DILexicalBlock(scope: !4142, file: !344, line: 189, column: 3)
!4155 = !DILocation(line: 0, scope: !4154)
!4156 = !DILocation(line: 189, column: 23, scope: !4157)
!4157 = distinct !DILexicalBlock(scope: !4154, file: !344, line: 189, column: 3)
!4158 = !DILocation(line: 189, column: 3, scope: !4154)
!4159 = !DILocation(line: 189, column: 52, scope: !4157)
!4160 = distinct !{!4160, !4158, !4161, !846}
!4161 = !DILocation(line: 190, column: 5, scope: !4154)
!4162 = !DILocation(line: 191, column: 3, scope: !4142)
!4163 = !DILocation(line: 192, column: 1, scope: !4142)
!4164 = distinct !DISubprogram(name: "version_etc_va", scope: !344, file: !344, line: 199, type: !4165, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !343, retainedNodes: !4174)
!4165 = !DISubroutineType(types: !4166)
!4166 = !{null, !4067, !93, !93, !93, !4167}
!4167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4168, size: 64)
!4168 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !4169)
!4169 = !{!4170, !4171, !4172, !4173}
!4170 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !4168, file: !344, line: 192, baseType: !7, size: 32)
!4171 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !4168, file: !344, line: 192, baseType: !7, size: 32, offset: 32)
!4172 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !4168, file: !344, line: 192, baseType: !61, size: 64, offset: 64)
!4173 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !4168, file: !344, line: 192, baseType: !61, size: 64, offset: 128)
!4174 = !{!4175, !4176, !4177, !4178, !4179, !4180, !4181}
!4175 = !DILocalVariable(name: "stream", arg: 1, scope: !4164, file: !344, line: 199, type: !4067)
!4176 = !DILocalVariable(name: "command_name", arg: 2, scope: !4164, file: !344, line: 200, type: !93)
!4177 = !DILocalVariable(name: "package", arg: 3, scope: !4164, file: !344, line: 200, type: !93)
!4178 = !DILocalVariable(name: "version", arg: 4, scope: !4164, file: !344, line: 201, type: !93)
!4179 = !DILocalVariable(name: "authors", arg: 5, scope: !4164, file: !344, line: 201, type: !4167)
!4180 = !DILocalVariable(name: "n_authors", scope: !4164, file: !344, line: 203, type: !62)
!4181 = !DILocalVariable(name: "authtab", scope: !4164, file: !344, line: 204, type: !4182)
!4182 = !DICompositeType(tag: DW_TAG_array_type, baseType: !93, size: 640, elements: !274)
!4183 = !DILocation(line: 0, scope: !4164)
!4184 = !DILocation(line: 204, column: 3, scope: !4164)
!4185 = !DILocation(line: 204, column: 15, scope: !4164)
!4186 = !DILocation(line: 208, column: 35, scope: !4187)
!4187 = distinct !DILexicalBlock(scope: !4188, file: !344, line: 206, column: 3)
!4188 = distinct !DILexicalBlock(scope: !4164, file: !344, line: 206, column: 3)
!4189 = !DILocation(line: 208, column: 14, scope: !4187)
!4190 = !DILocation(line: 208, column: 33, scope: !4187)
!4191 = !DILocation(line: 208, column: 67, scope: !4187)
!4192 = !DILocation(line: 206, column: 3, scope: !4188)
!4193 = !DILocation(line: 0, scope: !4188)
!4194 = !DILocation(line: 211, column: 3, scope: !4164)
!4195 = !DILocation(line: 213, column: 1, scope: !4164)
!4196 = distinct !DISubprogram(name: "version_etc", scope: !344, file: !344, line: 230, type: !4197, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !343, retainedNodes: !4199)
!4197 = !DISubroutineType(types: !4198)
!4198 = !{null, !4067, !93, !93, !93, null}
!4199 = !{!4200, !4201, !4202, !4203, !4204}
!4200 = !DILocalVariable(name: "stream", arg: 1, scope: !4196, file: !344, line: 230, type: !4067)
!4201 = !DILocalVariable(name: "command_name", arg: 2, scope: !4196, file: !344, line: 231, type: !93)
!4202 = !DILocalVariable(name: "package", arg: 3, scope: !4196, file: !344, line: 231, type: !93)
!4203 = !DILocalVariable(name: "version", arg: 4, scope: !4196, file: !344, line: 232, type: !93)
!4204 = !DILocalVariable(name: "authors", scope: !4196, file: !344, line: 234, type: !4205)
!4205 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !871, line: 52, baseType: !4206)
!4206 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !4207, line: 32, baseType: !4208)
!4207 = !DIFile(filename: "/usr/lib/clang/12.0.1/include/stdarg.h", directory: "")
!4208 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !344, baseType: !4209)
!4209 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4168, size: 192, elements: !131)
!4210 = !DILocation(line: 0, scope: !4196)
!4211 = !DILocation(line: 234, column: 3, scope: !4196)
!4212 = !DILocation(line: 234, column: 11, scope: !4196)
!4213 = !DILocation(line: 236, column: 3, scope: !4196)
!4214 = !DILocation(line: 237, column: 3, scope: !4196)
!4215 = !DILocation(line: 238, column: 3, scope: !4196)
!4216 = !DILocation(line: 239, column: 1, scope: !4196)
!4217 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !344, file: !344, line: 242, type: !800, scopeLine: 243, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !343, retainedNodes: !223)
!4218 = !DILocation(line: 244, column: 3, scope: !4217)
!4219 = !DILocation(line: 249, column: 3, scope: !4217)
!4220 = !DILocation(line: 255, column: 3, scope: !4217)
!4221 = !DILocation(line: 260, column: 3, scope: !4217)
!4222 = !DILocation(line: 262, column: 1, scope: !4217)
!4223 = distinct !DISubprogram(name: "xnmalloc", scope: !354, file: !354, line: 99, type: !4224, scopeLine: 100, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !350, retainedNodes: !4226)
!4224 = !DISubroutineType(types: !4225)
!4225 = !{!61, !62, !62}
!4226 = !{!4227, !4228}
!4227 = !DILocalVariable(name: "n", arg: 1, scope: !4223, file: !354, line: 99, type: !62)
!4228 = !DILocalVariable(name: "s", arg: 2, scope: !4223, file: !354, line: 99, type: !62)
!4229 = !DILocation(line: 0, scope: !4223)
!4230 = !DILocation(line: 101, column: 7, scope: !4231)
!4231 = distinct !DILexicalBlock(scope: !4223, file: !354, line: 101, column: 7)
!4232 = !DILocation(line: 101, column: 7, scope: !4223)
!4233 = !DILocation(line: 102, column: 5, scope: !4231)
!4234 = !DILocation(line: 103, column: 21, scope: !4223)
!4235 = !DILocalVariable(name: "n", arg: 1, scope: !4236, file: !351, line: 39, type: !62)
!4236 = distinct !DISubprogram(name: "xmalloc", scope: !351, file: !351, line: 39, type: !4237, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !350, retainedNodes: !4239)
!4237 = !DISubroutineType(types: !4238)
!4238 = !{!61, !62}
!4239 = !{!4235, !4240}
!4240 = !DILocalVariable(name: "p", scope: !4236, file: !351, line: 41, type: !61)
!4241 = !DILocation(line: 0, scope: !4236, inlinedAt: !4242)
!4242 = distinct !DILocation(line: 103, column: 10, scope: !4223)
!4243 = !DILocation(line: 41, column: 13, scope: !4236, inlinedAt: !4242)
!4244 = !DILocation(line: 42, column: 8, scope: !4245, inlinedAt: !4242)
!4245 = distinct !DILexicalBlock(scope: !4236, file: !351, line: 42, column: 7)
!4246 = !DILocation(line: 42, column: 10, scope: !4245, inlinedAt: !4242)
!4247 = !DILocation(line: 43, column: 5, scope: !4245, inlinedAt: !4242)
!4248 = !DILocation(line: 103, column: 3, scope: !4223)
!4249 = !DILocation(line: 0, scope: !4236)
!4250 = !DILocation(line: 41, column: 13, scope: !4236)
!4251 = !DILocation(line: 42, column: 8, scope: !4245)
!4252 = !DILocation(line: 42, column: 10, scope: !4245)
!4253 = !DILocation(line: 43, column: 5, scope: !4245)
!4254 = !DILocation(line: 44, column: 3, scope: !4236)
!4255 = distinct !DISubprogram(name: "xnrealloc", scope: !354, file: !354, line: 112, type: !4256, scopeLine: 113, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !350, retainedNodes: !4258)
!4256 = !DISubroutineType(types: !4257)
!4257 = !{!61, !61, !62, !62}
!4258 = !{!4259, !4260, !4261}
!4259 = !DILocalVariable(name: "p", arg: 1, scope: !4255, file: !354, line: 112, type: !61)
!4260 = !DILocalVariable(name: "n", arg: 2, scope: !4255, file: !354, line: 112, type: !62)
!4261 = !DILocalVariable(name: "s", arg: 3, scope: !4255, file: !354, line: 112, type: !62)
!4262 = !DILocation(line: 0, scope: !4255)
!4263 = !DILocation(line: 114, column: 7, scope: !4264)
!4264 = distinct !DILexicalBlock(scope: !4255, file: !354, line: 114, column: 7)
!4265 = !DILocation(line: 114, column: 7, scope: !4255)
!4266 = !DILocation(line: 115, column: 5, scope: !4264)
!4267 = !DILocation(line: 116, column: 25, scope: !4255)
!4268 = !DILocalVariable(name: "p", arg: 1, scope: !4269, file: !351, line: 51, type: !61)
!4269 = distinct !DISubprogram(name: "xrealloc", scope: !351, file: !351, line: 51, type: !4270, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !350, retainedNodes: !4272)
!4270 = !DISubroutineType(types: !4271)
!4271 = !{!61, !61, !62}
!4272 = !{!4268, !4273}
!4273 = !DILocalVariable(name: "n", arg: 2, scope: !4269, file: !351, line: 51, type: !62)
!4274 = !DILocation(line: 0, scope: !4269, inlinedAt: !4275)
!4275 = distinct !DILocation(line: 116, column: 10, scope: !4255)
!4276 = !DILocation(line: 53, column: 8, scope: !4277, inlinedAt: !4275)
!4277 = distinct !DILexicalBlock(scope: !4269, file: !351, line: 53, column: 7)
!4278 = !DILocation(line: 53, column: 10, scope: !4277, inlinedAt: !4275)
!4279 = !DILocation(line: 57, column: 7, scope: !4280, inlinedAt: !4275)
!4280 = distinct !DILexicalBlock(scope: !4277, file: !351, line: 54, column: 5)
!4281 = !DILocation(line: 58, column: 7, scope: !4280, inlinedAt: !4275)
!4282 = !DILocation(line: 61, column: 7, scope: !4269, inlinedAt: !4275)
!4283 = !DILocation(line: 62, column: 8, scope: !4284, inlinedAt: !4275)
!4284 = distinct !DILexicalBlock(scope: !4269, file: !351, line: 62, column: 7)
!4285 = !DILocation(line: 62, column: 10, scope: !4284, inlinedAt: !4275)
!4286 = !DILocation(line: 63, column: 5, scope: !4284, inlinedAt: !4275)
!4287 = !DILocation(line: 116, column: 3, scope: !4255)
!4288 = !DILocation(line: 0, scope: !4269)
!4289 = !DILocation(line: 53, column: 8, scope: !4277)
!4290 = !DILocation(line: 53, column: 10, scope: !4277)
!4291 = !DILocation(line: 57, column: 7, scope: !4280)
!4292 = !DILocation(line: 58, column: 7, scope: !4280)
!4293 = !DILocation(line: 61, column: 7, scope: !4269)
!4294 = !DILocation(line: 62, column: 8, scope: !4284)
!4295 = !DILocation(line: 62, column: 10, scope: !4284)
!4296 = !DILocation(line: 63, column: 5, scope: !4284)
!4297 = !DILocation(line: 65, column: 1, scope: !4269)
!4298 = !DILocation(line: 0, scope: !355)
!4299 = !DILocation(line: 176, column: 14, scope: !355)
!4300 = !DILocation(line: 178, column: 9, scope: !4301)
!4301 = distinct !DILexicalBlock(scope: !355, file: !354, line: 178, column: 7)
!4302 = !DILocation(line: 178, column: 7, scope: !355)
!4303 = !DILocation(line: 180, column: 13, scope: !4304)
!4304 = distinct !DILexicalBlock(scope: !4305, file: !354, line: 180, column: 11)
!4305 = distinct !DILexicalBlock(scope: !4301, file: !354, line: 179, column: 5)
!4306 = !DILocation(line: 180, column: 11, scope: !4305)
!4307 = !DILocation(line: 188, column: 30, scope: !4308)
!4308 = distinct !DILexicalBlock(scope: !4304, file: !354, line: 181, column: 9)
!4309 = !DILocation(line: 189, column: 16, scope: !4308)
!4310 = !DILocation(line: 189, column: 13, scope: !4308)
!4311 = !DILocation(line: 190, column: 9, scope: !4308)
!4312 = !DILocation(line: 191, column: 11, scope: !4313)
!4313 = distinct !DILexicalBlock(scope: !4305, file: !354, line: 191, column: 11)
!4314 = !DILocation(line: 191, column: 11, scope: !4305)
!4315 = !DILocation(line: 206, column: 7, scope: !355)
!4316 = !DILocation(line: 207, column: 25, scope: !355)
!4317 = !DILocation(line: 0, scope: !4269, inlinedAt: !4318)
!4318 = distinct !DILocation(line: 207, column: 10, scope: !355)
!4319 = !DILocation(line: 53, column: 10, scope: !4277, inlinedAt: !4318)
!4320 = !DILocation(line: 192, column: 9, scope: !4313)
!4321 = !DILocation(line: 200, column: 69, scope: !4322)
!4322 = distinct !DILexicalBlock(scope: !4323, file: !354, line: 200, column: 11)
!4323 = distinct !DILexicalBlock(scope: !4301, file: !354, line: 195, column: 5)
!4324 = !DILocation(line: 201, column: 11, scope: !4322)
!4325 = !DILocation(line: 200, column: 11, scope: !4323)
!4326 = !DILocation(line: 202, column: 9, scope: !4322)
!4327 = !DILocation(line: 203, column: 14, scope: !4323)
!4328 = !DILocation(line: 203, column: 18, scope: !4323)
!4329 = !DILocation(line: 203, column: 9, scope: !4323)
!4330 = !DILocation(line: 53, column: 8, scope: !4277, inlinedAt: !4318)
!4331 = !DILocation(line: 57, column: 7, scope: !4280, inlinedAt: !4318)
!4332 = !DILocation(line: 58, column: 7, scope: !4280, inlinedAt: !4318)
!4333 = !DILocation(line: 61, column: 7, scope: !4269, inlinedAt: !4318)
!4334 = !DILocation(line: 62, column: 8, scope: !4284, inlinedAt: !4318)
!4335 = !DILocation(line: 62, column: 10, scope: !4284, inlinedAt: !4318)
!4336 = !DILocation(line: 63, column: 5, scope: !4284, inlinedAt: !4318)
!4337 = !DILocation(line: 207, column: 3, scope: !355)
!4338 = distinct !DISubprogram(name: "xcharalloc", scope: !354, file: !354, line: 216, type: !3471, scopeLine: 217, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !350, retainedNodes: !4339)
!4339 = !{!4340}
!4340 = !DILocalVariable(name: "n", arg: 1, scope: !4338, file: !354, line: 216, type: !62)
!4341 = !DILocation(line: 0, scope: !4338)
!4342 = !DILocation(line: 0, scope: !4236, inlinedAt: !4343)
!4343 = distinct !DILocation(line: 218, column: 10, scope: !4338)
!4344 = !DILocation(line: 41, column: 13, scope: !4236, inlinedAt: !4343)
!4345 = !DILocation(line: 42, column: 8, scope: !4245, inlinedAt: !4343)
!4346 = !DILocation(line: 42, column: 10, scope: !4245, inlinedAt: !4343)
!4347 = !DILocation(line: 43, column: 5, scope: !4245, inlinedAt: !4343)
!4348 = !DILocation(line: 218, column: 3, scope: !4338)
!4349 = distinct !DISubprogram(name: "x2realloc", scope: !351, file: !351, line: 74, type: !4350, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !350, retainedNodes: !4352)
!4350 = !DISubroutineType(types: !4351)
!4351 = !{!61, !61, !358}
!4352 = !{!4353, !4354}
!4353 = !DILocalVariable(name: "p", arg: 1, scope: !4349, file: !351, line: 74, type: !61)
!4354 = !DILocalVariable(name: "pn", arg: 2, scope: !4349, file: !351, line: 74, type: !358)
!4355 = !DILocation(line: 0, scope: !4349)
!4356 = !DILocation(line: 0, scope: !355, inlinedAt: !4357)
!4357 = distinct !DILocation(line: 76, column: 10, scope: !4349)
!4358 = !DILocation(line: 176, column: 14, scope: !355, inlinedAt: !4357)
!4359 = !DILocation(line: 178, column: 9, scope: !4301, inlinedAt: !4357)
!4360 = !DILocation(line: 178, column: 7, scope: !355, inlinedAt: !4357)
!4361 = !DILocation(line: 180, column: 13, scope: !4304, inlinedAt: !4357)
!4362 = !DILocation(line: 180, column: 11, scope: !4305, inlinedAt: !4357)
!4363 = !DILocation(line: 191, column: 11, scope: !4313, inlinedAt: !4357)
!4364 = !DILocation(line: 191, column: 11, scope: !4305, inlinedAt: !4357)
!4365 = !DILocation(line: 192, column: 9, scope: !4313, inlinedAt: !4357)
!4366 = !DILocation(line: 201, column: 11, scope: !4322, inlinedAt: !4357)
!4367 = !DILocation(line: 200, column: 11, scope: !4323, inlinedAt: !4357)
!4368 = !DILocation(line: 202, column: 9, scope: !4322, inlinedAt: !4357)
!4369 = !DILocation(line: 203, column: 14, scope: !4323, inlinedAt: !4357)
!4370 = !DILocation(line: 203, column: 18, scope: !4323, inlinedAt: !4357)
!4371 = !DILocation(line: 203, column: 9, scope: !4323, inlinedAt: !4357)
!4372 = !DILocation(line: 0, scope: !4269, inlinedAt: !4373)
!4373 = distinct !DILocation(line: 207, column: 10, scope: !355, inlinedAt: !4357)
!4374 = !DILocation(line: 53, column: 10, scope: !4277, inlinedAt: !4373)
!4375 = !DILocation(line: 206, column: 7, scope: !355, inlinedAt: !4357)
!4376 = !DILocation(line: 61, column: 7, scope: !4269, inlinedAt: !4373)
!4377 = !DILocation(line: 62, column: 8, scope: !4284, inlinedAt: !4373)
!4378 = !DILocation(line: 62, column: 10, scope: !4284, inlinedAt: !4373)
!4379 = !DILocation(line: 63, column: 5, scope: !4284, inlinedAt: !4373)
!4380 = !DILocation(line: 76, column: 3, scope: !4349)
!4381 = distinct !DISubprogram(name: "xzalloc", scope: !351, file: !351, line: 84, type: !4237, scopeLine: 85, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !350, retainedNodes: !4382)
!4382 = !{!4383}
!4383 = !DILocalVariable(name: "n", arg: 1, scope: !4381, file: !351, line: 84, type: !62)
!4384 = !DILocation(line: 0, scope: !4381)
!4385 = !DILocalVariable(name: "n", arg: 1, scope: !4386, file: !351, line: 93, type: !62)
!4386 = distinct !DISubprogram(name: "xcalloc", scope: !351, file: !351, line: 93, type: !4224, scopeLine: 94, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !350, retainedNodes: !4387)
!4387 = !{!4385, !4388, !4389}
!4388 = !DILocalVariable(name: "s", arg: 2, scope: !4386, file: !351, line: 93, type: !62)
!4389 = !DILocalVariable(name: "p", scope: !4386, file: !351, line: 95, type: !61)
!4390 = !DILocation(line: 0, scope: !4386, inlinedAt: !4391)
!4391 = distinct !DILocation(line: 86, column: 10, scope: !4381)
!4392 = !DILocation(line: 100, column: 7, scope: !4393, inlinedAt: !4391)
!4393 = distinct !DILexicalBlock(scope: !4386, file: !351, line: 100, column: 7)
!4394 = !DILocation(line: 101, column: 7, scope: !4393, inlinedAt: !4391)
!4395 = !DILocation(line: 101, column: 18, scope: !4393, inlinedAt: !4391)
!4396 = !DILocation(line: 101, column: 16, scope: !4393, inlinedAt: !4391)
!4397 = !DILocation(line: 100, column: 7, scope: !4386, inlinedAt: !4391)
!4398 = !DILocation(line: 102, column: 5, scope: !4393, inlinedAt: !4391)
!4399 = !DILocation(line: 86, column: 3, scope: !4381)
!4400 = !DILocation(line: 0, scope: !4386)
!4401 = !DILocation(line: 100, column: 7, scope: !4393)
!4402 = !DILocation(line: 101, column: 7, scope: !4393)
!4403 = !DILocation(line: 101, column: 18, scope: !4393)
!4404 = !DILocation(line: 101, column: 16, scope: !4393)
!4405 = !DILocation(line: 100, column: 7, scope: !4386)
!4406 = !DILocation(line: 102, column: 5, scope: !4393)
!4407 = !DILocation(line: 103, column: 3, scope: !4386)
!4408 = distinct !DISubprogram(name: "xmemdup", scope: !351, file: !351, line: 111, type: !4409, scopeLine: 112, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !350, retainedNodes: !4411)
!4409 = !DISubroutineType(types: !4410)
!4410 = !{!61, !1807, !62}
!4411 = !{!4412, !4413}
!4412 = !DILocalVariable(name: "p", arg: 1, scope: !4408, file: !351, line: 111, type: !1807)
!4413 = !DILocalVariable(name: "s", arg: 2, scope: !4408, file: !351, line: 111, type: !62)
!4414 = !DILocation(line: 0, scope: !4408)
!4415 = !DILocation(line: 0, scope: !4236, inlinedAt: !4416)
!4416 = distinct !DILocation(line: 113, column: 18, scope: !4408)
!4417 = !DILocation(line: 41, column: 13, scope: !4236, inlinedAt: !4416)
!4418 = !DILocation(line: 42, column: 8, scope: !4245, inlinedAt: !4416)
!4419 = !DILocation(line: 42, column: 10, scope: !4245, inlinedAt: !4416)
!4420 = !DILocation(line: 43, column: 5, scope: !4245, inlinedAt: !4416)
!4421 = !DILocalVariable(name: "__dest", arg: 1, scope: !4422, file: !1802, line: 26, type: !1805)
!4422 = distinct !DISubprogram(name: "memcpy", scope: !1802, file: !1802, line: 26, type: !1803, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !350, retainedNodes: !4423)
!4423 = !{!4421, !4424, !4425}
!4424 = !DILocalVariable(name: "__src", arg: 2, scope: !4422, file: !1802, line: 26, type: !1806)
!4425 = !DILocalVariable(name: "__len", arg: 3, scope: !4422, file: !1802, line: 26, type: !62)
!4426 = !DILocation(line: 0, scope: !4422, inlinedAt: !4427)
!4427 = distinct !DILocation(line: 113, column: 10, scope: !4408)
!4428 = !DILocation(line: 29, column: 10, scope: !4422, inlinedAt: !4427)
!4429 = !DILocation(line: 113, column: 3, scope: !4408)
!4430 = distinct !DISubprogram(name: "xstrdup", scope: !351, file: !351, line: 119, type: !1573, scopeLine: 120, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !350, retainedNodes: !4431)
!4431 = !{!4432}
!4432 = !DILocalVariable(name: "string", arg: 1, scope: !4430, file: !351, line: 119, type: !93)
!4433 = !DILocation(line: 0, scope: !4430)
!4434 = !DILocation(line: 121, column: 27, scope: !4430)
!4435 = !DILocation(line: 121, column: 43, scope: !4430)
!4436 = !DILocation(line: 0, scope: !4408, inlinedAt: !4437)
!4437 = distinct !DILocation(line: 121, column: 10, scope: !4430)
!4438 = !DILocation(line: 0, scope: !4236, inlinedAt: !4439)
!4439 = distinct !DILocation(line: 113, column: 18, scope: !4408, inlinedAt: !4437)
!4440 = !DILocation(line: 41, column: 13, scope: !4236, inlinedAt: !4439)
!4441 = !DILocation(line: 42, column: 8, scope: !4245, inlinedAt: !4439)
!4442 = !DILocation(line: 42, column: 10, scope: !4245, inlinedAt: !4439)
!4443 = !DILocation(line: 43, column: 5, scope: !4245, inlinedAt: !4439)
!4444 = !DILocation(line: 0, scope: !4422, inlinedAt: !4445)
!4445 = distinct !DILocation(line: 113, column: 10, scope: !4408, inlinedAt: !4437)
!4446 = !DILocation(line: 29, column: 10, scope: !4422, inlinedAt: !4445)
!4447 = !DILocation(line: 121, column: 3, scope: !4430)
!4448 = distinct !DISubprogram(name: "xalloc_die", scope: !368, file: !368, line: 32, type: !800, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !367, retainedNodes: !223)
!4449 = !DILocation(line: 34, column: 10, scope: !4448)
!4450 = !DILocation(line: 34, column: 33, scope: !4448)
!4451 = !DILocation(line: 34, column: 3, scope: !4448)
!4452 = !DILocation(line: 40, column: 3, scope: !4448)
!4453 = distinct !DISubprogram(name: "rpl_calloc", scope: !370, file: !370, line: 42, type: !4224, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !369, retainedNodes: !4454)
!4454 = !{!4455, !4456, !4457, !4458}
!4455 = !DILocalVariable(name: "n", arg: 1, scope: !4453, file: !370, line: 42, type: !62)
!4456 = !DILocalVariable(name: "s", arg: 2, scope: !4453, file: !370, line: 42, type: !62)
!4457 = !DILocalVariable(name: "result", scope: !4453, file: !370, line: 44, type: !61)
!4458 = !DILocalVariable(name: "bytes", scope: !4459, file: !370, line: 56, type: !62)
!4459 = distinct !DILexicalBlock(scope: !4460, file: !370, line: 53, column: 5)
!4460 = distinct !DILexicalBlock(scope: !4453, file: !370, line: 47, column: 7)
!4461 = !DILocation(line: 0, scope: !4453)
!4462 = !DILocation(line: 47, column: 9, scope: !4460)
!4463 = !DILocation(line: 47, column: 14, scope: !4460)
!4464 = !DILocation(line: 0, scope: !4459)
!4465 = !DILocation(line: 57, column: 21, scope: !4466)
!4466 = distinct !DILexicalBlock(scope: !4459, file: !370, line: 57, column: 11)
!4467 = !DILocation(line: 57, column: 11, scope: !4459)
!4468 = !DILocation(line: 59, column: 11, scope: !4469)
!4469 = distinct !DILexicalBlock(scope: !4466, file: !370, line: 58, column: 9)
!4470 = !DILocation(line: 59, column: 17, scope: !4469)
!4471 = !DILocation(line: 65, column: 12, scope: !4453)
!4472 = !DILocation(line: 72, column: 3, scope: !4453)
!4473 = !DILocation(line: 73, column: 1, scope: !4453)
!4474 = distinct !DISubprogram(name: "rpl_fclose", scope: !372, file: !372, line: 58, type: !4475, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !371, retainedNodes: !4511)
!4475 = !DISubroutineType(types: !4476)
!4476 = !{!64, !4477}
!4477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4478, size: 64)
!4478 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !100, line: 7, baseType: !4479)
!4479 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !102, line: 49, size: 1728, elements: !4480)
!4480 = !{!4481, !4482, !4483, !4484, !4485, !4486, !4487, !4488, !4489, !4490, !4491, !4492, !4493, !4494, !4496, !4497, !4498, !4499, !4500, !4501, !4502, !4503, !4504, !4505, !4506, !4507, !4508, !4509, !4510}
!4481 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4479, file: !102, line: 51, baseType: !64, size: 32)
!4482 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4479, file: !102, line: 54, baseType: !59, size: 64, offset: 64)
!4483 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4479, file: !102, line: 55, baseType: !59, size: 64, offset: 128)
!4484 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4479, file: !102, line: 56, baseType: !59, size: 64, offset: 192)
!4485 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4479, file: !102, line: 57, baseType: !59, size: 64, offset: 256)
!4486 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4479, file: !102, line: 58, baseType: !59, size: 64, offset: 320)
!4487 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4479, file: !102, line: 59, baseType: !59, size: 64, offset: 384)
!4488 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4479, file: !102, line: 60, baseType: !59, size: 64, offset: 448)
!4489 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4479, file: !102, line: 61, baseType: !59, size: 64, offset: 512)
!4490 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4479, file: !102, line: 64, baseType: !59, size: 64, offset: 576)
!4491 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4479, file: !102, line: 65, baseType: !59, size: 64, offset: 640)
!4492 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4479, file: !102, line: 66, baseType: !59, size: 64, offset: 704)
!4493 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4479, file: !102, line: 68, baseType: !117, size: 64, offset: 768)
!4494 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4479, file: !102, line: 70, baseType: !4495, size: 64, offset: 832)
!4495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4479, size: 64)
!4496 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4479, file: !102, line: 72, baseType: !64, size: 32, offset: 896)
!4497 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4479, file: !102, line: 73, baseType: !64, size: 32, offset: 928)
!4498 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4479, file: !102, line: 74, baseType: !124, size: 64, offset: 960)
!4499 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4479, file: !102, line: 77, baseType: !67, size: 16, offset: 1024)
!4500 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4479, file: !102, line: 78, baseType: !128, size: 8, offset: 1040)
!4501 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4479, file: !102, line: 79, baseType: !130, size: 8, offset: 1048)
!4502 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4479, file: !102, line: 81, baseType: !134, size: 64, offset: 1088)
!4503 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4479, file: !102, line: 89, baseType: !137, size: 64, offset: 1152)
!4504 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4479, file: !102, line: 91, baseType: !139, size: 64, offset: 1216)
!4505 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4479, file: !102, line: 92, baseType: !142, size: 64, offset: 1280)
!4506 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4479, file: !102, line: 93, baseType: !4495, size: 64, offset: 1344)
!4507 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4479, file: !102, line: 94, baseType: !61, size: 64, offset: 1408)
!4508 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4479, file: !102, line: 95, baseType: !62, size: 64, offset: 1472)
!4509 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4479, file: !102, line: 96, baseType: !64, size: 32, offset: 1536)
!4510 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4479, file: !102, line: 98, baseType: !149, size: 160, offset: 1568)
!4511 = !{!4512, !4513, !4514, !4515}
!4512 = !DILocalVariable(name: "fp", arg: 1, scope: !4474, file: !372, line: 58, type: !4477)
!4513 = !DILocalVariable(name: "saved_errno", scope: !4474, file: !372, line: 60, type: !64)
!4514 = !DILocalVariable(name: "fd", scope: !4474, file: !372, line: 61, type: !64)
!4515 = !DILocalVariable(name: "result", scope: !4474, file: !372, line: 62, type: !64)
!4516 = !DILocation(line: 0, scope: !4474)
!4517 = !DILocation(line: 65, column: 8, scope: !4474)
!4518 = !DILocation(line: 66, column: 10, scope: !4519)
!4519 = distinct !DILexicalBlock(scope: !4474, file: !372, line: 66, column: 7)
!4520 = !DILocation(line: 66, column: 7, scope: !4474)
!4521 = !DILocation(line: 67, column: 12, scope: !4519)
!4522 = !DILocation(line: 67, column: 5, scope: !4519)
!4523 = !DILocation(line: 72, column: 9, scope: !4524)
!4524 = distinct !DILexicalBlock(scope: !4474, file: !372, line: 72, column: 7)
!4525 = !DILocation(line: 72, column: 23, scope: !4524)
!4526 = !DILocation(line: 72, column: 33, scope: !4524)
!4527 = !DILocation(line: 72, column: 26, scope: !4524)
!4528 = !DILocation(line: 72, column: 59, scope: !4524)
!4529 = !DILocation(line: 73, column: 7, scope: !4524)
!4530 = !DILocation(line: 73, column: 10, scope: !4524)
!4531 = !DILocation(line: 72, column: 7, scope: !4474)
!4532 = !DILocation(line: 100, column: 12, scope: !4474)
!4533 = !DILocation(line: 105, column: 7, scope: !4474)
!4534 = !DILocation(line: 74, column: 19, scope: !4524)
!4535 = !DILocation(line: 105, column: 19, scope: !4536)
!4536 = distinct !DILexicalBlock(scope: !4474, file: !372, line: 105, column: 7)
!4537 = !DILocation(line: 107, column: 13, scope: !4538)
!4538 = distinct !DILexicalBlock(scope: !4536, file: !372, line: 106, column: 5)
!4539 = !DILocation(line: 109, column: 5, scope: !4538)
!4540 = !DILocation(line: 112, column: 1, scope: !4474)
!4541 = !DISubprogram(name: "fclose", scope: !871, file: !871, line: 213, type: !4542, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !223)
!4542 = !DISubroutineType(types: !4543)
!4543 = !{!64, !4495}
!4544 = !DISubprogram(name: "lseek", scope: !2550, file: !2550, line: 334, type: !4545, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !223)
!4545 = !DISubroutineType(types: !4546)
!4546 = !{!125, !64, !125, !64}
!4547 = distinct !DISubprogram(name: "rpl_fcntl", scope: !321, file: !321, line: 202, type: !4548, scopeLine: 207, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !324, retainedNodes: !4550)
!4548 = !DISubroutineType(types: !4549)
!4549 = !{!64, !64, !64, null}
!4550 = !{!4551, !4552, !4553, !4563, !4564, !4567, !4569, !4573}
!4551 = !DILocalVariable(name: "fd", arg: 1, scope: !4547, file: !321, line: 202, type: !64)
!4552 = !DILocalVariable(name: "action", arg: 2, scope: !4547, file: !321, line: 202, type: !64)
!4553 = !DILocalVariable(name: "arg", scope: !4547, file: !321, line: 208, type: !4554)
!4554 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !4207, line: 14, baseType: !4555)
!4555 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !321, baseType: !4556)
!4556 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4557, size: 192, elements: !131)
!4557 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !4558)
!4558 = !{!4559, !4560, !4561, !4562}
!4559 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !4557, file: !321, line: 208, baseType: !7, size: 32)
!4560 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !4557, file: !321, line: 208, baseType: !7, size: 32, offset: 32)
!4561 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !4557, file: !321, line: 208, baseType: !61, size: 64, offset: 64)
!4562 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !4557, file: !321, line: 208, baseType: !61, size: 64, offset: 128)
!4563 = !DILocalVariable(name: "result", scope: !4547, file: !321, line: 209, type: !64)
!4564 = !DILocalVariable(name: "target", scope: !4565, file: !321, line: 215, type: !64)
!4565 = distinct !DILexicalBlock(scope: !4566, file: !321, line: 214, column: 7)
!4566 = distinct !DILexicalBlock(scope: !4547, file: !321, line: 212, column: 5)
!4567 = !DILocalVariable(name: "target", scope: !4568, file: !321, line: 222, type: !64)
!4568 = distinct !DILexicalBlock(scope: !4566, file: !321, line: 221, column: 7)
!4569 = !DILocalVariable(name: "x", scope: !4570, file: !321, line: 423, type: !64)
!4570 = distinct !DILexicalBlock(scope: !4571, file: !321, line: 422, column: 13)
!4571 = distinct !DILexicalBlock(scope: !4572, file: !321, line: 260, column: 11)
!4572 = distinct !DILexicalBlock(scope: !4566, file: !321, line: 257, column: 7)
!4573 = !DILocalVariable(name: "p", scope: !4574, file: !321, line: 431, type: !61)
!4574 = distinct !DILexicalBlock(scope: !4571, file: !321, line: 430, column: 13)
!4575 = !DILocation(line: 0, scope: !4547)
!4576 = !DILocation(line: 208, column: 3, scope: !4547)
!4577 = !DILocation(line: 208, column: 11, scope: !4547)
!4578 = !DILocation(line: 210, column: 3, scope: !4547)
!4579 = !DILocation(line: 211, column: 3, scope: !4547)
!4580 = !DILocation(line: 215, column: 22, scope: !4565)
!4581 = !DILocation(line: 0, scope: !4565)
!4582 = !DILocalVariable(name: "fd", arg: 1, scope: !4583, file: !321, line: 447, type: !64)
!4583 = distinct !DISubprogram(name: "rpl_fcntl_DUPFD", scope: !321, file: !321, line: 447, type: !322, scopeLine: 448, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !324, retainedNodes: !4584)
!4584 = !{!4582, !4585, !4586}
!4585 = !DILocalVariable(name: "target", arg: 2, scope: !4583, file: !321, line: 447, type: !64)
!4586 = !DILocalVariable(name: "result", scope: !4583, file: !321, line: 449, type: !64)
!4587 = !DILocation(line: 0, scope: !4583, inlinedAt: !4588)
!4588 = distinct !DILocation(line: 216, column: 18, scope: !4565)
!4589 = !DILocation(line: 482, column: 12, scope: !4583, inlinedAt: !4588)
!4590 = !DILocation(line: 222, column: 22, scope: !4568)
!4591 = !DILocation(line: 0, scope: !4568)
!4592 = !DILocation(line: 0, scope: !320, inlinedAt: !4593)
!4593 = distinct !DILocation(line: 223, column: 18, scope: !4568)
!4594 = !DILocation(line: 508, column: 12, scope: !4595, inlinedAt: !4593)
!4595 = distinct !DILexicalBlock(scope: !320, file: !321, line: 508, column: 7)
!4596 = !DILocation(line: 508, column: 9, scope: !4595, inlinedAt: !4593)
!4597 = !DILocation(line: 508, column: 7, scope: !320, inlinedAt: !4593)
!4598 = !DILocation(line: 510, column: 16, scope: !4599, inlinedAt: !4593)
!4599 = distinct !DILexicalBlock(scope: !4595, file: !321, line: 509, column: 5)
!4600 = !DILocation(line: 511, column: 13, scope: !4601, inlinedAt: !4593)
!4601 = distinct !DILexicalBlock(scope: !4599, file: !321, line: 511, column: 11)
!4602 = !DILocation(line: 511, column: 23, scope: !4601, inlinedAt: !4593)
!4603 = !DILocation(line: 511, column: 26, scope: !4601, inlinedAt: !4593)
!4604 = !DILocation(line: 511, column: 32, scope: !4601, inlinedAt: !4593)
!4605 = !DILocation(line: 511, column: 11, scope: !4599, inlinedAt: !4593)
!4606 = !DILocation(line: 513, column: 30, scope: !4607, inlinedAt: !4593)
!4607 = distinct !DILexicalBlock(scope: !4601, file: !321, line: 512, column: 9)
!4608 = !DILocation(line: 529, column: 19, scope: !332, inlinedAt: !4593)
!4609 = !DILocation(line: 0, scope: !4583, inlinedAt: !4610)
!4610 = distinct !DILocation(line: 521, column: 20, scope: !4611, inlinedAt: !4593)
!4611 = distinct !DILexicalBlock(scope: !4601, file: !321, line: 520, column: 9)
!4612 = !DILocation(line: 482, column: 12, scope: !4583, inlinedAt: !4610)
!4613 = !DILocation(line: 522, column: 22, scope: !4614, inlinedAt: !4593)
!4614 = distinct !DILexicalBlock(scope: !4611, file: !321, line: 522, column: 15)
!4615 = !DILocation(line: 522, column: 15, scope: !4611, inlinedAt: !4593)
!4616 = !DILocation(line: 523, column: 32, scope: !4614, inlinedAt: !4593)
!4617 = !DILocation(line: 523, column: 13, scope: !4614, inlinedAt: !4593)
!4618 = !DILocation(line: 0, scope: !4583, inlinedAt: !4619)
!4619 = distinct !DILocation(line: 528, column: 14, scope: !4595, inlinedAt: !4593)
!4620 = !DILocation(line: 482, column: 12, scope: !4583, inlinedAt: !4619)
!4621 = !DILocation(line: 0, scope: !4595, inlinedAt: !4593)
!4622 = !DILocation(line: 529, column: 9, scope: !332, inlinedAt: !4593)
!4623 = !DILocation(line: 531, column: 19, scope: !331, inlinedAt: !4593)
!4624 = !DILocation(line: 0, scope: !331, inlinedAt: !4593)
!4625 = !DILocation(line: 532, column: 17, scope: !335, inlinedAt: !4593)
!4626 = !DILocation(line: 532, column: 21, scope: !335, inlinedAt: !4593)
!4627 = !DILocation(line: 532, column: 54, scope: !335, inlinedAt: !4593)
!4628 = !DILocation(line: 532, column: 24, scope: !335, inlinedAt: !4593)
!4629 = !DILocation(line: 532, column: 68, scope: !335, inlinedAt: !4593)
!4630 = !DILocation(line: 532, column: 11, scope: !331, inlinedAt: !4593)
!4631 = !DILocation(line: 534, column: 29, scope: !334, inlinedAt: !4593)
!4632 = !DILocation(line: 0, scope: !334, inlinedAt: !4593)
!4633 = !DILocation(line: 535, column: 11, scope: !334, inlinedAt: !4593)
!4634 = !DILocation(line: 536, column: 17, scope: !334, inlinedAt: !4593)
!4635 = !DILocation(line: 538, column: 9, scope: !334, inlinedAt: !4593)
!4636 = !DILocation(line: 328, column: 22, scope: !4571)
!4637 = !DILocation(line: 329, column: 13, scope: !4571)
!4638 = !DILocation(line: 423, column: 23, scope: !4570)
!4639 = !DILocation(line: 0, scope: !4570)
!4640 = !DILocation(line: 424, column: 24, scope: !4570)
!4641 = !DILocation(line: 426, column: 13, scope: !4571)
!4642 = !DILocation(line: 431, column: 25, scope: !4574)
!4643 = !DILocation(line: 0, scope: !4574)
!4644 = !DILocation(line: 432, column: 24, scope: !4574)
!4645 = !DILocation(line: 434, column: 13, scope: !4571)
!4646 = !DILocation(line: 0, scope: !4566)
!4647 = !DILocation(line: 442, column: 3, scope: !4547)
!4648 = !DILocation(line: 444, column: 1, scope: !4547)
!4649 = !DILocation(line: 443, column: 3, scope: !4547)
!4650 = !DISubprogram(name: "fcntl", scope: !2410, file: !2410, line: 176, type: !4548, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !223)
!4651 = distinct !DISubprogram(name: "rpl_fflush", scope: !374, file: !374, line: 129, type: !4652, scopeLine: 130, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !373, retainedNodes: !4688)
!4652 = !DISubroutineType(types: !4653)
!4653 = !{!64, !4654}
!4654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4655, size: 64)
!4655 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !100, line: 7, baseType: !4656)
!4656 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !102, line: 49, size: 1728, elements: !4657)
!4657 = !{!4658, !4659, !4660, !4661, !4662, !4663, !4664, !4665, !4666, !4667, !4668, !4669, !4670, !4671, !4673, !4674, !4675, !4676, !4677, !4678, !4679, !4680, !4681, !4682, !4683, !4684, !4685, !4686, !4687}
!4658 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4656, file: !102, line: 51, baseType: !64, size: 32)
!4659 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4656, file: !102, line: 54, baseType: !59, size: 64, offset: 64)
!4660 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4656, file: !102, line: 55, baseType: !59, size: 64, offset: 128)
!4661 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4656, file: !102, line: 56, baseType: !59, size: 64, offset: 192)
!4662 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4656, file: !102, line: 57, baseType: !59, size: 64, offset: 256)
!4663 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4656, file: !102, line: 58, baseType: !59, size: 64, offset: 320)
!4664 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4656, file: !102, line: 59, baseType: !59, size: 64, offset: 384)
!4665 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4656, file: !102, line: 60, baseType: !59, size: 64, offset: 448)
!4666 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4656, file: !102, line: 61, baseType: !59, size: 64, offset: 512)
!4667 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4656, file: !102, line: 64, baseType: !59, size: 64, offset: 576)
!4668 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4656, file: !102, line: 65, baseType: !59, size: 64, offset: 640)
!4669 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4656, file: !102, line: 66, baseType: !59, size: 64, offset: 704)
!4670 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4656, file: !102, line: 68, baseType: !117, size: 64, offset: 768)
!4671 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4656, file: !102, line: 70, baseType: !4672, size: 64, offset: 832)
!4672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4656, size: 64)
!4673 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4656, file: !102, line: 72, baseType: !64, size: 32, offset: 896)
!4674 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4656, file: !102, line: 73, baseType: !64, size: 32, offset: 928)
!4675 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4656, file: !102, line: 74, baseType: !124, size: 64, offset: 960)
!4676 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4656, file: !102, line: 77, baseType: !67, size: 16, offset: 1024)
!4677 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4656, file: !102, line: 78, baseType: !128, size: 8, offset: 1040)
!4678 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4656, file: !102, line: 79, baseType: !130, size: 8, offset: 1048)
!4679 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4656, file: !102, line: 81, baseType: !134, size: 64, offset: 1088)
!4680 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4656, file: !102, line: 89, baseType: !137, size: 64, offset: 1152)
!4681 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4656, file: !102, line: 91, baseType: !139, size: 64, offset: 1216)
!4682 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4656, file: !102, line: 92, baseType: !142, size: 64, offset: 1280)
!4683 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4656, file: !102, line: 93, baseType: !4672, size: 64, offset: 1344)
!4684 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4656, file: !102, line: 94, baseType: !61, size: 64, offset: 1408)
!4685 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4656, file: !102, line: 95, baseType: !62, size: 64, offset: 1472)
!4686 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4656, file: !102, line: 96, baseType: !64, size: 32, offset: 1536)
!4687 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4656, file: !102, line: 98, baseType: !149, size: 160, offset: 1568)
!4688 = !{!4689}
!4689 = !DILocalVariable(name: "stream", arg: 1, scope: !4651, file: !374, line: 129, type: !4654)
!4690 = !DILocation(line: 0, scope: !4651)
!4691 = !DILocation(line: 150, column: 14, scope: !4692)
!4692 = distinct !DILexicalBlock(scope: !4651, file: !374, line: 150, column: 7)
!4693 = !DILocation(line: 150, column: 22, scope: !4692)
!4694 = !DILocation(line: 150, column: 27, scope: !4692)
!4695 = !DILocation(line: 150, column: 7, scope: !4651)
!4696 = !DILocation(line: 151, column: 12, scope: !4692)
!4697 = !DILocation(line: 151, column: 5, scope: !4692)
!4698 = !DILocalVariable(name: "fp", arg: 1, scope: !4699, file: !374, line: 41, type: !4654)
!4699 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !374, file: !374, line: 41, type: !4700, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !373, retainedNodes: !4702)
!4700 = !DISubroutineType(types: !4701)
!4701 = !{null, !4654}
!4702 = !{!4698}
!4703 = !DILocation(line: 0, scope: !4699, inlinedAt: !4704)
!4704 = distinct !DILocation(line: 156, column: 3, scope: !4651)
!4705 = !DILocation(line: 43, column: 11, scope: !4706, inlinedAt: !4704)
!4706 = distinct !DILexicalBlock(scope: !4699, file: !374, line: 43, column: 7)
!4707 = !DILocation(line: 43, column: 18, scope: !4706, inlinedAt: !4704)
!4708 = !DILocation(line: 43, column: 7, scope: !4699, inlinedAt: !4704)
!4709 = !DILocation(line: 45, column: 5, scope: !4706, inlinedAt: !4704)
!4710 = !DILocation(line: 158, column: 10, scope: !4651)
!4711 = !DILocation(line: 158, column: 3, scope: !4651)
!4712 = !DILocation(line: 235, column: 1, scope: !4651)
!4713 = !DISubprogram(name: "fflush", scope: !871, file: !871, line: 218, type: !4714, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !223)
!4714 = !DISubroutineType(types: !4715)
!4715 = !{!64, !4672}
!4716 = distinct !DISubprogram(name: "rpl_fseeko", scope: !376, file: !376, line: 28, type: !4717, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !375, retainedNodes: !4753)
!4717 = !DISubroutineType(types: !4718)
!4718 = !{!64, !4719, !2396, !64}
!4719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4720, size: 64)
!4720 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !100, line: 7, baseType: !4721)
!4721 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !102, line: 49, size: 1728, elements: !4722)
!4722 = !{!4723, !4724, !4725, !4726, !4727, !4728, !4729, !4730, !4731, !4732, !4733, !4734, !4735, !4736, !4738, !4739, !4740, !4741, !4742, !4743, !4744, !4745, !4746, !4747, !4748, !4749, !4750, !4751, !4752}
!4723 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4721, file: !102, line: 51, baseType: !64, size: 32)
!4724 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4721, file: !102, line: 54, baseType: !59, size: 64, offset: 64)
!4725 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4721, file: !102, line: 55, baseType: !59, size: 64, offset: 128)
!4726 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4721, file: !102, line: 56, baseType: !59, size: 64, offset: 192)
!4727 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4721, file: !102, line: 57, baseType: !59, size: 64, offset: 256)
!4728 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4721, file: !102, line: 58, baseType: !59, size: 64, offset: 320)
!4729 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4721, file: !102, line: 59, baseType: !59, size: 64, offset: 384)
!4730 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4721, file: !102, line: 60, baseType: !59, size: 64, offset: 448)
!4731 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4721, file: !102, line: 61, baseType: !59, size: 64, offset: 512)
!4732 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4721, file: !102, line: 64, baseType: !59, size: 64, offset: 576)
!4733 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4721, file: !102, line: 65, baseType: !59, size: 64, offset: 640)
!4734 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4721, file: !102, line: 66, baseType: !59, size: 64, offset: 704)
!4735 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4721, file: !102, line: 68, baseType: !117, size: 64, offset: 768)
!4736 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4721, file: !102, line: 70, baseType: !4737, size: 64, offset: 832)
!4737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4721, size: 64)
!4738 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4721, file: !102, line: 72, baseType: !64, size: 32, offset: 896)
!4739 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4721, file: !102, line: 73, baseType: !64, size: 32, offset: 928)
!4740 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4721, file: !102, line: 74, baseType: !124, size: 64, offset: 960)
!4741 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4721, file: !102, line: 77, baseType: !67, size: 16, offset: 1024)
!4742 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4721, file: !102, line: 78, baseType: !128, size: 8, offset: 1040)
!4743 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4721, file: !102, line: 79, baseType: !130, size: 8, offset: 1048)
!4744 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4721, file: !102, line: 81, baseType: !134, size: 64, offset: 1088)
!4745 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4721, file: !102, line: 89, baseType: !137, size: 64, offset: 1152)
!4746 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4721, file: !102, line: 91, baseType: !139, size: 64, offset: 1216)
!4747 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4721, file: !102, line: 92, baseType: !142, size: 64, offset: 1280)
!4748 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4721, file: !102, line: 93, baseType: !4737, size: 64, offset: 1344)
!4749 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4721, file: !102, line: 94, baseType: !61, size: 64, offset: 1408)
!4750 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4721, file: !102, line: 95, baseType: !62, size: 64, offset: 1472)
!4751 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4721, file: !102, line: 96, baseType: !64, size: 32, offset: 1536)
!4752 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4721, file: !102, line: 98, baseType: !149, size: 160, offset: 1568)
!4753 = !{!4754, !4755, !4756, !4757}
!4754 = !DILocalVariable(name: "fp", arg: 1, scope: !4716, file: !376, line: 28, type: !4719)
!4755 = !DILocalVariable(name: "offset", arg: 2, scope: !4716, file: !376, line: 28, type: !2396)
!4756 = !DILocalVariable(name: "whence", arg: 3, scope: !4716, file: !376, line: 28, type: !64)
!4757 = !DILocalVariable(name: "pos", scope: !4758, file: !376, line: 117, type: !2396)
!4758 = distinct !DILexicalBlock(scope: !4759, file: !376, line: 113, column: 5)
!4759 = distinct !DILexicalBlock(scope: !4716, file: !376, line: 52, column: 7)
!4760 = !DILocation(line: 0, scope: !4716)
!4761 = !DILocation(line: 52, column: 11, scope: !4759)
!4762 = !{!1360, !793, i64 16}
!4763 = !DILocation(line: 52, column: 31, scope: !4759)
!4764 = !{!1360, !793, i64 8}
!4765 = !DILocation(line: 52, column: 24, scope: !4759)
!4766 = !DILocation(line: 53, column: 7, scope: !4759)
!4767 = !DILocation(line: 53, column: 14, scope: !4759)
!4768 = !DILocation(line: 53, column: 35, scope: !4759)
!4769 = !{!1360, !793, i64 32}
!4770 = !DILocation(line: 53, column: 28, scope: !4759)
!4771 = !DILocation(line: 54, column: 7, scope: !4759)
!4772 = !DILocation(line: 54, column: 14, scope: !4759)
!4773 = !{!1360, !793, i64 72}
!4774 = !DILocation(line: 54, column: 28, scope: !4759)
!4775 = !DILocation(line: 52, column: 7, scope: !4716)
!4776 = !DILocation(line: 117, column: 26, scope: !4758)
!4777 = !DILocation(line: 117, column: 19, scope: !4758)
!4778 = !DILocation(line: 0, scope: !4758)
!4779 = !DILocation(line: 118, column: 15, scope: !4780)
!4780 = distinct !DILexicalBlock(scope: !4758, file: !376, line: 118, column: 11)
!4781 = !DILocation(line: 118, column: 11, scope: !4758)
!4782 = !DILocation(line: 129, column: 11, scope: !4758)
!4783 = !DILocation(line: 129, column: 18, scope: !4758)
!4784 = !DILocation(line: 130, column: 11, scope: !4758)
!4785 = !DILocation(line: 130, column: 19, scope: !4758)
!4786 = !{!1360, !1066, i64 144}
!4787 = !DILocation(line: 161, column: 7, scope: !4758)
!4788 = !DILocation(line: 163, column: 10, scope: !4716)
!4789 = !DILocation(line: 163, column: 3, scope: !4716)
!4790 = !DILocation(line: 164, column: 1, scope: !4716)
!4791 = !DISubprogram(name: "fseeko", scope: !871, file: !871, line: 712, type: !4792, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !223)
!4792 = !DISubroutineType(types: !4793)
!4793 = !{!64, !4737, !125, !64}
!4794 = distinct !DISubprogram(name: "rpl_mbrtowc", scope: !378, file: !378, line: 86, type: !4795, scopeLine: 87, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !377, retainedNodes: !4809)
!4795 = !DISubroutineType(types: !4796)
!4796 = !{!62, !4797, !93, !62, !4798}
!4797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2770, size: 64)
!4798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4799, size: 64)
!4799 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !2754, line: 6, baseType: !4800)
!4800 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !2756, line: 21, baseType: !4801)
!4801 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2756, line: 13, size: 64, elements: !4802)
!4802 = !{!4803, !4804}
!4803 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !4801, file: !2756, line: 15, baseType: !64, size: 32)
!4804 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !4801, file: !2756, line: 20, baseType: !4805, size: 32, offset: 32)
!4805 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4801, file: !2756, line: 16, size: 32, elements: !4806)
!4806 = !{!4807, !4808}
!4807 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !4805, file: !2756, line: 18, baseType: !7, size: 32)
!4808 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !4805, file: !2756, line: 19, baseType: !2765, size: 32)
!4809 = !{!4810, !4811, !4812, !4813, !4814, !4815, !4816}
!4810 = !DILocalVariable(name: "pwc", arg: 1, scope: !4794, file: !378, line: 86, type: !4797)
!4811 = !DILocalVariable(name: "s", arg: 2, scope: !4794, file: !378, line: 86, type: !93)
!4812 = !DILocalVariable(name: "n", arg: 3, scope: !4794, file: !378, line: 86, type: !62)
!4813 = !DILocalVariable(name: "ps", arg: 4, scope: !4794, file: !378, line: 86, type: !4798)
!4814 = !DILocalVariable(name: "ret", scope: !4794, file: !378, line: 88, type: !62)
!4815 = !DILocalVariable(name: "wc", scope: !4794, file: !378, line: 89, type: !2770)
!4816 = !DILocalVariable(name: "uc", scope: !4817, file: !378, line: 156, type: !66)
!4817 = distinct !DILexicalBlock(scope: !4818, file: !378, line: 155, column: 5)
!4818 = distinct !DILexicalBlock(scope: !4794, file: !378, line: 154, column: 7)
!4819 = !DILocation(line: 0, scope: !4794)
!4820 = !DILocation(line: 89, column: 3, scope: !4794)
!4821 = !DILocation(line: 105, column: 9, scope: !4822)
!4822 = distinct !DILexicalBlock(scope: !4794, file: !378, line: 105, column: 7)
!4823 = !DILocation(line: 105, column: 7, scope: !4794)
!4824 = !DILocation(line: 145, column: 9, scope: !4794)
!4825 = !DILocation(line: 154, column: 19, scope: !4818)
!4826 = !DILocation(line: 154, column: 26, scope: !4818)
!4827 = !DILocation(line: 154, column: 41, scope: !4818)
!4828 = !DILocation(line: 154, column: 7, scope: !4794)
!4829 = !DILocation(line: 156, column: 26, scope: !4817)
!4830 = !DILocation(line: 0, scope: !4817)
!4831 = !DILocation(line: 157, column: 14, scope: !4817)
!4832 = !DILocation(line: 157, column: 12, scope: !4817)
!4833 = !DILocation(line: 163, column: 1, scope: !4794)
!4834 = !DISubprogram(name: "mbrtowc", scope: !3431, file: !3431, line: 296, type: !4835, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !223)
!4835 = !DISubroutineType(types: !4836)
!4836 = !{!40, !206, !93, !40, !4837}
!4837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4801, size: 64)
!4838 = distinct !DISubprogram(name: "close_stream", scope: !381, file: !381, line: 56, type: !4839, scopeLine: 57, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !380, retainedNodes: !4875)
!4839 = !DISubroutineType(types: !4840)
!4840 = !{!64, !4841}
!4841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4842, size: 64)
!4842 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !100, line: 7, baseType: !4843)
!4843 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !102, line: 49, size: 1728, elements: !4844)
!4844 = !{!4845, !4846, !4847, !4848, !4849, !4850, !4851, !4852, !4853, !4854, !4855, !4856, !4857, !4858, !4860, !4861, !4862, !4863, !4864, !4865, !4866, !4867, !4868, !4869, !4870, !4871, !4872, !4873, !4874}
!4845 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4843, file: !102, line: 51, baseType: !64, size: 32)
!4846 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4843, file: !102, line: 54, baseType: !59, size: 64, offset: 64)
!4847 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4843, file: !102, line: 55, baseType: !59, size: 64, offset: 128)
!4848 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4843, file: !102, line: 56, baseType: !59, size: 64, offset: 192)
!4849 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4843, file: !102, line: 57, baseType: !59, size: 64, offset: 256)
!4850 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4843, file: !102, line: 58, baseType: !59, size: 64, offset: 320)
!4851 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4843, file: !102, line: 59, baseType: !59, size: 64, offset: 384)
!4852 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4843, file: !102, line: 60, baseType: !59, size: 64, offset: 448)
!4853 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4843, file: !102, line: 61, baseType: !59, size: 64, offset: 512)
!4854 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4843, file: !102, line: 64, baseType: !59, size: 64, offset: 576)
!4855 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4843, file: !102, line: 65, baseType: !59, size: 64, offset: 640)
!4856 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4843, file: !102, line: 66, baseType: !59, size: 64, offset: 704)
!4857 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4843, file: !102, line: 68, baseType: !117, size: 64, offset: 768)
!4858 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4843, file: !102, line: 70, baseType: !4859, size: 64, offset: 832)
!4859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4843, size: 64)
!4860 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4843, file: !102, line: 72, baseType: !64, size: 32, offset: 896)
!4861 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4843, file: !102, line: 73, baseType: !64, size: 32, offset: 928)
!4862 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4843, file: !102, line: 74, baseType: !124, size: 64, offset: 960)
!4863 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4843, file: !102, line: 77, baseType: !67, size: 16, offset: 1024)
!4864 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4843, file: !102, line: 78, baseType: !128, size: 8, offset: 1040)
!4865 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4843, file: !102, line: 79, baseType: !130, size: 8, offset: 1048)
!4866 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4843, file: !102, line: 81, baseType: !134, size: 64, offset: 1088)
!4867 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4843, file: !102, line: 89, baseType: !137, size: 64, offset: 1152)
!4868 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4843, file: !102, line: 91, baseType: !139, size: 64, offset: 1216)
!4869 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4843, file: !102, line: 92, baseType: !142, size: 64, offset: 1280)
!4870 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4843, file: !102, line: 93, baseType: !4859, size: 64, offset: 1344)
!4871 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4843, file: !102, line: 94, baseType: !61, size: 64, offset: 1408)
!4872 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4843, file: !102, line: 95, baseType: !62, size: 64, offset: 1472)
!4873 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4843, file: !102, line: 96, baseType: !64, size: 32, offset: 1536)
!4874 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4843, file: !102, line: 98, baseType: !149, size: 160, offset: 1568)
!4875 = !{!4876, !4877, !4879, !4880}
!4876 = !DILocalVariable(name: "stream", arg: 1, scope: !4838, file: !381, line: 56, type: !4841)
!4877 = !DILocalVariable(name: "some_pending", scope: !4838, file: !381, line: 58, type: !4878)
!4878 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !71)
!4879 = !DILocalVariable(name: "prev_fail", scope: !4838, file: !381, line: 59, type: !4878)
!4880 = !DILocalVariable(name: "fclose_fail", scope: !4838, file: !381, line: 60, type: !4878)
!4881 = !DILocation(line: 0, scope: !4838)
!4882 = !DILocation(line: 58, column: 30, scope: !4838)
!4883 = !DILocalVariable(name: "__stream", arg: 1, scope: !4884, file: !1081, line: 135, type: !4841)
!4884 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1081, file: !1081, line: 135, type: !4839, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !380, retainedNodes: !4885)
!4885 = !{!4883}
!4886 = !DILocation(line: 0, scope: !4884, inlinedAt: !4887)
!4887 = distinct !DILocation(line: 59, column: 27, scope: !4838)
!4888 = !DILocation(line: 137, column: 10, scope: !4884, inlinedAt: !4887)
!4889 = !DILocation(line: 59, column: 43, scope: !4838)
!4890 = !DILocation(line: 60, column: 29, scope: !4838)
!4891 = !DILocation(line: 60, column: 45, scope: !4838)
!4892 = !DILocation(line: 70, column: 17, scope: !4893)
!4893 = distinct !DILexicalBlock(scope: !4838, file: !381, line: 70, column: 7)
!4894 = !DILocation(line: 58, column: 50, scope: !4838)
!4895 = !DILocation(line: 70, column: 33, scope: !4893)
!4896 = !DILocation(line: 70, column: 53, scope: !4893)
!4897 = !DILocation(line: 70, column: 59, scope: !4893)
!4898 = !DILocation(line: 70, column: 7, scope: !4838)
!4899 = !DILocation(line: 72, column: 11, scope: !4900)
!4900 = distinct !DILexicalBlock(scope: !4893, file: !381, line: 71, column: 5)
!4901 = !DILocation(line: 73, column: 9, scope: !4902)
!4902 = distinct !DILexicalBlock(scope: !4900, file: !381, line: 72, column: 11)
!4903 = !DILocation(line: 73, column: 15, scope: !4902)
!4904 = !DILocation(line: 78, column: 1, scope: !4838)
!4905 = distinct !DISubprogram(name: "hard_locale", scope: !383, file: !383, line: 27, type: !4906, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !382, retainedNodes: !4908)
!4906 = !DISubroutineType(types: !4907)
!4907 = !{!71, !64}
!4908 = !{!4909, !4910}
!4909 = !DILocalVariable(name: "category", arg: 1, scope: !4905, file: !383, line: 27, type: !64)
!4910 = !DILocalVariable(name: "locale", scope: !4905, file: !383, line: 29, type: !4911)
!4911 = !DICompositeType(tag: DW_TAG_array_type, baseType: !60, size: 2056, elements: !4912)
!4912 = !{!4913}
!4913 = !DISubrange(count: 257)
!4914 = !DILocation(line: 0, scope: !4905)
!4915 = !DILocation(line: 29, column: 3, scope: !4905)
!4916 = !DILocation(line: 29, column: 8, scope: !4905)
!4917 = !DILocation(line: 31, column: 7, scope: !4918)
!4918 = distinct !DILexicalBlock(scope: !4905, file: !383, line: 31, column: 7)
!4919 = !DILocation(line: 31, column: 7, scope: !4905)
!4920 = !DILocation(line: 34, column: 12, scope: !4905)
!4921 = !DILocation(line: 34, column: 38, scope: !4905)
!4922 = !DILocation(line: 34, column: 41, scope: !4905)
!4923 = !DILocation(line: 34, column: 66, scope: !4905)
!4924 = !DILocation(line: 35, column: 1, scope: !4905)
!4925 = distinct !DISubprogram(name: "locale_charset", scope: !385, file: !385, line: 831, type: !4926, scopeLine: 832, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !384, retainedNodes: !4928)
!4926 = !DISubroutineType(types: !4927)
!4927 = !{!93}
!4928 = !{!4929}
!4929 = !DILocalVariable(name: "codeset", scope: !4925, file: !385, line: 833, type: !93)
!4930 = !DILocation(line: 847, column: 13, scope: !4925)
!4931 = !DILocation(line: 0, scope: !4925)
!4932 = !DILocation(line: 911, column: 15, scope: !4933)
!4933 = distinct !DILexicalBlock(scope: !4925, file: !385, line: 911, column: 7)
!4934 = !DILocation(line: 911, column: 7, scope: !4925)
!4935 = !DILocation(line: 1070, column: 13, scope: !4936)
!4936 = distinct !DILexicalBlock(scope: !4937, file: !385, line: 1070, column: 13)
!4937 = distinct !DILexicalBlock(scope: !4938, file: !385, line: 1060, column: 7)
!4938 = distinct !DILexicalBlock(scope: !4925, file: !385, line: 1019, column: 3)
!4939 = !DILocation(line: 1070, column: 24, scope: !4936)
!4940 = !DILocation(line: 1070, column: 13, scope: !4937)
!4941 = !DILocation(line: 1158, column: 3, scope: !4925)
!4942 = !DISubprogram(name: "nl_langinfo", scope: !388, file: !388, line: 661, type: !4943, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !223)
!4943 = !DISubroutineType(types: !4944)
!4944 = !{!59, !64}
!4945 = distinct !DISubprogram(name: "setlocale_null_r", scope: !774, file: !774, line: 269, type: !4946, scopeLine: 270, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !773, retainedNodes: !4948)
!4946 = !DISubroutineType(types: !4947)
!4947 = !{!64, !64, !59, !62}
!4948 = !{!4949, !4950, !4951}
!4949 = !DILocalVariable(name: "category", arg: 1, scope: !4945, file: !774, line: 269, type: !64)
!4950 = !DILocalVariable(name: "buf", arg: 2, scope: !4945, file: !774, line: 269, type: !59)
!4951 = !DILocalVariable(name: "bufsize", arg: 3, scope: !4945, file: !774, line: 269, type: !62)
!4952 = !DILocation(line: 0, scope: !4945)
!4953 = !DILocalVariable(name: "category", arg: 1, scope: !4954, file: !774, line: 91, type: !64)
!4954 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !774, file: !774, line: 91, type: !4946, scopeLine: 92, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !773, retainedNodes: !4955)
!4955 = !{!4953, !4956, !4957, !4958, !4959}
!4956 = !DILocalVariable(name: "buf", arg: 2, scope: !4954, file: !774, line: 91, type: !59)
!4957 = !DILocalVariable(name: "bufsize", arg: 3, scope: !4954, file: !774, line: 91, type: !62)
!4958 = !DILocalVariable(name: "result", scope: !4954, file: !774, line: 140, type: !93)
!4959 = !DILocalVariable(name: "length", scope: !4960, file: !774, line: 154, type: !62)
!4960 = distinct !DILexicalBlock(scope: !4961, file: !774, line: 153, column: 5)
!4961 = distinct !DILexicalBlock(scope: !4954, file: !774, line: 142, column: 7)
!4962 = !DILocation(line: 0, scope: !4954, inlinedAt: !4963)
!4963 = distinct !DILocation(line: 274, column: 10, scope: !4945)
!4964 = !DILocalVariable(name: "category", arg: 1, scope: !4965, file: !774, line: 60, type: !64)
!4965 = distinct !DISubprogram(name: "setlocale_null_androidfix", scope: !774, file: !774, line: 60, type: !4966, scopeLine: 61, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !773, retainedNodes: !4968)
!4966 = !DISubroutineType(types: !4967)
!4967 = !{!93, !64}
!4968 = !{!4964, !4969}
!4969 = !DILocalVariable(name: "result", scope: !4965, file: !774, line: 62, type: !93)
!4970 = !DILocation(line: 0, scope: !4965, inlinedAt: !4971)
!4971 = distinct !DILocation(line: 140, column: 24, scope: !4954, inlinedAt: !4963)
!4972 = !DILocation(line: 62, column: 24, scope: !4965, inlinedAt: !4971)
!4973 = !DILocation(line: 142, column: 14, scope: !4961, inlinedAt: !4963)
!4974 = !DILocation(line: 142, column: 7, scope: !4954, inlinedAt: !4963)
!4975 = !DILocation(line: 145, column: 19, scope: !4976, inlinedAt: !4963)
!4976 = distinct !DILexicalBlock(scope: !4977, file: !774, line: 145, column: 11)
!4977 = distinct !DILexicalBlock(scope: !4961, file: !774, line: 143, column: 5)
!4978 = !DILocation(line: 145, column: 11, scope: !4977, inlinedAt: !4963)
!4979 = !DILocation(line: 149, column: 16, scope: !4976, inlinedAt: !4963)
!4980 = !DILocation(line: 149, column: 9, scope: !4976, inlinedAt: !4963)
!4981 = !DILocation(line: 154, column: 23, scope: !4960, inlinedAt: !4963)
!4982 = !DILocation(line: 0, scope: !4960, inlinedAt: !4963)
!4983 = !DILocation(line: 155, column: 18, scope: !4984, inlinedAt: !4963)
!4984 = distinct !DILexicalBlock(scope: !4960, file: !774, line: 155, column: 11)
!4985 = !DILocation(line: 155, column: 11, scope: !4960, inlinedAt: !4963)
!4986 = !DILocation(line: 157, column: 39, scope: !4987, inlinedAt: !4963)
!4987 = distinct !DILexicalBlock(scope: !4984, file: !774, line: 156, column: 9)
!4988 = !DILocalVariable(name: "__dest", arg: 1, scope: !4989, file: !1802, line: 26, type: !1805)
!4989 = distinct !DISubprogram(name: "memcpy", scope: !1802, file: !1802, line: 26, type: !1803, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !773, retainedNodes: !4990)
!4990 = !{!4988, !4991, !4992}
!4991 = !DILocalVariable(name: "__src", arg: 2, scope: !4989, file: !1802, line: 26, type: !1806)
!4992 = !DILocalVariable(name: "__len", arg: 3, scope: !4989, file: !1802, line: 26, type: !62)
!4993 = !DILocation(line: 0, scope: !4989, inlinedAt: !4994)
!4994 = distinct !DILocation(line: 157, column: 11, scope: !4987, inlinedAt: !4963)
!4995 = !DILocation(line: 29, column: 10, scope: !4989, inlinedAt: !4994)
!4996 = !DILocation(line: 158, column: 11, scope: !4987, inlinedAt: !4963)
!4997 = !DILocation(line: 162, column: 23, scope: !4998, inlinedAt: !4963)
!4998 = distinct !DILexicalBlock(scope: !4999, file: !774, line: 162, column: 15)
!4999 = distinct !DILexicalBlock(scope: !4984, file: !774, line: 161, column: 9)
!5000 = !DILocation(line: 162, column: 15, scope: !4999, inlinedAt: !4963)
!5001 = !DILocation(line: 167, column: 44, scope: !5002, inlinedAt: !4963)
!5002 = distinct !DILexicalBlock(scope: !4998, file: !774, line: 163, column: 13)
!5003 = !DILocation(line: 0, scope: !4989, inlinedAt: !5004)
!5004 = distinct !DILocation(line: 167, column: 15, scope: !5002, inlinedAt: !4963)
!5005 = !DILocation(line: 29, column: 10, scope: !4989, inlinedAt: !5004)
!5006 = !DILocation(line: 168, column: 15, scope: !5002, inlinedAt: !4963)
!5007 = !DILocation(line: 168, column: 32, scope: !5002, inlinedAt: !4963)
!5008 = !DILocation(line: 169, column: 13, scope: !5002, inlinedAt: !4963)
!5009 = !DILocation(line: 0, scope: !4961, inlinedAt: !4963)
!5010 = !DILocation(line: 274, column: 3, scope: !4945)
!5011 = distinct !DISubprogram(name: "setlocale_null", scope: !774, file: !774, line: 301, type: !4966, scopeLine: 302, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !773, retainedNodes: !5012)
!5012 = !{!5013}
!5013 = !DILocalVariable(name: "category", arg: 1, scope: !5011, file: !774, line: 301, type: !64)
!5014 = !DILocation(line: 0, scope: !5011)
!5015 = !DILocation(line: 0, scope: !4965, inlinedAt: !5016)
!5016 = distinct !DILocation(line: 304, column: 10, scope: !5011)
!5017 = !DILocation(line: 62, column: 24, scope: !4965, inlinedAt: !5016)
!5018 = !DILocation(line: 304, column: 3, scope: !5011)
