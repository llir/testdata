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
@status_only = internal unnamed_addr global i1 false, align 1, !dbg !208
@warn = internal unnamed_addr global i1 false, align 1, !dbg !209
@quiet = internal unnamed_addr global i1 false, align 1, !dbg !210
@ignore_missing = internal unnamed_addr global i1 false, align 1, !dbg !211
@strict = internal unnamed_addr global i1 false, align 1, !dbg !212
@delim = internal unnamed_addr global i1 false, align 1, !dbg !213
@.str.19 = private unnamed_addr constant [15 x i8] c"Ulrich Drepper\00", align 1
@.str.20 = private unnamed_addr constant [13 x i8] c"Scott Miller\00", align 1
@.str.21 = private unnamed_addr constant [13 x i8] c"David Madore\00", align 1
@min_digest_line_length = internal unnamed_addr global i1 false, align 8, !dbg !214
@digest_hex_bytes = internal unnamed_addr global i1 false, align 8, !dbg !215
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
@have_read_stdin = internal unnamed_addr global i1 false, align 1, !dbg !216
@.str.35 = private unnamed_addr constant [15 x i8] c"standard input\00", align 1
@stdin = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.64 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.65 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.66 = private unnamed_addr constant [28 x i8] c"%s: too many checksum lines\00", align 1
@bsd_reversed = internal unnamed_addr global i32 -1, align 4, !dbg !194
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
@Version = dso_local local_unnamed_addr global i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.83, i64 0, i64 0), align 8, !dbg !217
@.str.83 = private unnamed_addr constant [5 x i8] c"8.32\00", align 1
@file_name = internal unnamed_addr global i8* null, align 8, !dbg !223
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !228
@.str.86 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.1.87 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.2.88 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@fillbuf = internal constant <{ i8, [63 x i8] }> <{ i8 -128, [63 x i8] zeroinitializer }>, align 16, !dbg !230
@exit_failure = dso_local global i32 1, align 4, !dbg !241
@program_name = dso_local local_unnamed_addr global i8* null, align 8, !dbg !247
@.str.101 = private unnamed_addr constant [56 x i8] c"A NULL argv[0] was passed through an exec system call.\0A\00", align 1
@.str.1.102 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.2.103 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@quoting_style_args = dso_local local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.104, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.105, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.106, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.107, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.108, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.109, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.110, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.111, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.112, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.113, i32 0, i32 0), i8* null], align 16, !dbg !253
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
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !265
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !271
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !283
@.str.11.114 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.115 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.10.116 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.14.117 = private unnamed_addr constant [4 x i8] c"\E2\80\98\00", align 1
@.str.15.118 = private unnamed_addr constant [4 x i8] c"\E2\80\99\00", align 1
@.str.17.119 = private unnamed_addr constant [4 x i8] c"\A1\07e\00", align 1
@.str.18.120 = private unnamed_addr constant [3 x i8] c"\A1\AF\00", align 1
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8, !dbg !290
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !297
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !285
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !299
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
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !305
@.str.1.162 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.163 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec = internal unnamed_addr global i32 0, align 4, !dbg !313
@.str.1.180 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1
@.str.183 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1.184 = private unnamed_addr constant [6 x i8] c"ASCII\00", align 1

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @usage(i32 %0) local_unnamed_addr #0 !dbg !776 {
  %2 = alloca [7 x %struct.infomap], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !780, metadata !DIExpression()), !dbg !781
  %3 = icmp eq i32 %0, 0, !dbg !782
  br i1 %3, label %9, label %4, !dbg !784

4:                                                ; preds = %1
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !785, !tbaa !787
  %6 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 5) #25, !dbg !785
  %7 = load i8*, i8** @program_name, align 8, !dbg !785, !tbaa !787
  %8 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %5, i32 1, i8* %6, i8* %7) #25, !dbg !785
  br label %77, !dbg !785

9:                                                ; preds = %1
  %10 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.1, i64 0, i64 0), i32 5) #25, !dbg !791
  %11 = load i8*, i8** @program_name, align 8, !dbg !791, !tbaa !787
  %12 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %10, i8* %11, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 128) #25, !dbg !791
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.36, i64 0, i64 0), i32 5) #25, !dbg !793
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !793, !tbaa !787
  %15 = tail call i32 @fputs_unlocked(i8* %13, %struct._IO_FILE* %14) #25, !dbg !793
  %16 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0), i32 5) #25, !dbg !798
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !798, !tbaa !787
  %18 = tail call i32 @fputs_unlocked(i8* %16, %struct._IO_FILE* %17), !dbg !798
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.4, i64 0, i64 0), i32 5) #25, !dbg !800
  %20 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %19, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)) #25, !dbg !800
  %21 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.5, i64 0, i64 0), i32 5) #25, !dbg !801
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !801, !tbaa !787
  %23 = tail call i32 @fputs_unlocked(i8* %21, %struct._IO_FILE* %22), !dbg !801
  %24 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.6, i64 0, i64 0), i32 5) #25, !dbg !802
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !802, !tbaa !787
  %26 = tail call i32 @fputs_unlocked(i8* %24, %struct._IO_FILE* %25), !dbg !802
  %27 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([122 x i8], [122 x i8]* @.str.7, i64 0, i64 0), i32 5) #25, !dbg !804
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !804, !tbaa !787
  %29 = tail call i32 @fputs_unlocked(i8* %27, %struct._IO_FILE* %28), !dbg !804
  %30 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([435 x i8], [435 x i8]* @.str.8, i64 0, i64 0), i32 5) #25, !dbg !805
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !805, !tbaa !787
  %32 = tail call i32 @fputs_unlocked(i8* %30, %struct._IO_FILE* %31), !dbg !805
  %33 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.9, i64 0, i64 0), i32 5) #25, !dbg !806
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !806, !tbaa !787
  %35 = tail call i32 @fputs_unlocked(i8* %33, %struct._IO_FILE* %34), !dbg !806
  %36 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.10, i64 0, i64 0), i32 5) #25, !dbg !807
  %37 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !807, !tbaa !787
  %38 = tail call i32 @fputs_unlocked(i8* %36, %struct._IO_FILE* %37), !dbg !807
  %39 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([377 x i8], [377 x i8]* @.str.11, i64 0, i64 0), i32 5) #25, !dbg !808
  %40 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %39, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i64 0, i64 0)) #25, !dbg !808
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i64 0, i64 0), metadata !809, metadata !DIExpression()) #25, !dbg !827
  %41 = bitcast [7 x %struct.infomap]* %2 to i8*, !dbg !829
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %41) #25, !dbg !829
  call void @llvm.dbg.declare(metadata [7 x %struct.infomap]* %2, metadata !814, metadata !DIExpression()) #25, !dbg !830
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 dereferenceable(112) %41, i8* nonnull align 16 dereferenceable(112) bitcast ([7 x %struct.infomap]* @__const.emit_ancillary_info.infomap to i8*), i64 112, i1 false) #25, !dbg !830
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i64 0, i64 0), metadata !823, metadata !DIExpression()) #25, !dbg !827
  call void @llvm.dbg.value(metadata [7 x %struct.infomap]* %2, metadata !824, metadata !DIExpression()) #25, !dbg !827
  %42 = getelementptr inbounds [7 x %struct.infomap], [7 x %struct.infomap]* %2, i64 0, i64 0, !dbg !831
  call void @llvm.dbg.value(metadata %struct.infomap* %42, metadata !824, metadata !DIExpression()) #25, !dbg !827
  br label %43, !dbg !832

43:                                               ; preds = %48, %9
  %44 = phi i8* [ %51, %48 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.37, i64 0, i64 0), %9 ]
  %45 = phi %struct.infomap* [ %49, %48 ], [ %42, %9 ]
  call void @llvm.dbg.value(metadata %struct.infomap* %45, metadata !824, metadata !DIExpression()) #25, !dbg !827
  %46 = tail call i32 @strcmp(i8* nonnull dereferenceable(7) getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i64 0, i64 0), i8* nonnull %44) #26, !dbg !833
  %47 = icmp eq i32 %46, 0, !dbg !833
  br i1 %47, label %53, label %48, !dbg !832

48:                                               ; preds = %43
  %49 = getelementptr inbounds %struct.infomap, %struct.infomap* %45, i64 1, !dbg !834
  call void @llvm.dbg.value(metadata %struct.infomap* %49, metadata !824, metadata !DIExpression()) #25, !dbg !827
  %50 = getelementptr inbounds %struct.infomap, %struct.infomap* %49, i64 0, i32 0, !dbg !835
  %51 = load i8*, i8** %50, align 8, !dbg !835, !tbaa !836
  %52 = icmp eq i8* %51, null, !dbg !838
  br i1 %52, label %53, label %43, !dbg !839, !llvm.loop !840

53:                                               ; preds = %48, %43
  %54 = phi %struct.infomap* [ %45, %43 ], [ %49, %48 ]
  %55 = getelementptr inbounds %struct.infomap, %struct.infomap* %54, i64 0, i32 1, !dbg !842
  %56 = load i8*, i8** %55, align 8, !dbg !842, !tbaa !844
  %57 = icmp eq i8* %56, null, !dbg !845
  %58 = select i1 %57, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i64 0, i64 0), i8* %56, !dbg !846
  call void @llvm.dbg.value(metadata i8* %58, metadata !823, metadata !DIExpression()) #25, !dbg !827
  %59 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.45, i64 0, i64 0), i32 5) #25, !dbg !847
  %60 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %59, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.18, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.46, i64 0, i64 0)) #25, !dbg !847
  %61 = tail call i8* @setlocale(i32 5, i8* null) #25, !dbg !848
  call void @llvm.dbg.value(metadata i8* %61, metadata !826, metadata !DIExpression()) #25, !dbg !827
  %62 = icmp eq i8* %61, null, !dbg !849
  br i1 %62, label %70, label %63, !dbg !851

63:                                               ; preds = %53
  %64 = tail call i32 @strncmp(i8* nonnull %61, i8* nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.47, i64 0, i64 0), i64 3) #26, !dbg !852
  %65 = icmp eq i32 %64, 0, !dbg !852
  br i1 %65, label %70, label %66, !dbg !853

66:                                               ; preds = %63
  %67 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.48, i64 0, i64 0), i32 5) #25, !dbg !854
  %68 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !854, !tbaa !787
  %69 = tail call i32 @fputs_unlocked(i8* %67, %struct._IO_FILE* %68) #25, !dbg !854
  br label %70, !dbg !856

70:                                               ; preds = %53, %63, %66
  %71 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.49, i64 0, i64 0), i32 5) #25, !dbg !857
  %72 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %71, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.46, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i64 0, i64 0)) #25, !dbg !857
  %73 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.50, i64 0, i64 0), i32 5) #25, !dbg !858
  %74 = icmp eq i8* %58, getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i64 0, i64 0), !dbg !858
  %75 = select i1 %74, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.51, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.14, i64 0, i64 0), !dbg !858
  %76 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %73, i8* %58, i8* %75) #25, !dbg !858
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %41) #25, !dbg !859
  br label %77

77:                                               ; preds = %70, %4
  tail call void @exit(i32 %0) #27, !dbg !860
  unreachable, !dbg !860
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !861 i8* @dcgettext(i8*, i8*, i32) local_unnamed_addr #2

declare i32 @__fprintf_chk(%struct._IO_FILE*, i32, i8*, ...) local_unnamed_addr #3

declare i32 @__printf_chk(i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !865 noundef i32 @fputs_unlocked(i8* nocapture noundef readonly, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #5

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @strcmp(i8* nocapture, i8* nocapture) local_unnamed_addr #6

; Function Attrs: nounwind
declare !dbg !869 i8* @setlocale(i32, i8*) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @strncmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #6

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #5

; Function Attrs: noreturn nounwind
declare void @exit(i32) local_unnamed_addr #7

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @main(i32 %0, i8** %1) local_unnamed_addr #8 !dbg !873 {
  %3 = alloca [20 x i8], align 16
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8, align 1
  %7 = alloca [20 x i8], align 16
  %8 = alloca i8, align 1
  call void @llvm.dbg.value(metadata i32 %0, metadata !878, metadata !DIExpression()), !dbg !903
  call void @llvm.dbg.value(metadata i8** %1, metadata !879, metadata !DIExpression()), !dbg !903
  %9 = getelementptr inbounds [20 x i8], [20 x i8]* %7, i64 0, i64 0, !dbg !904
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %9) #25, !dbg !904
  call void @llvm.dbg.declare(metadata [20 x i8]* %7, metadata !880, metadata !DIExpression()), !dbg !905
  call void @llvm.dbg.value(metadata i8* %9, metadata !881, metadata !DIExpression()), !dbg !903
  call void @llvm.dbg.value(metadata i8 0, metadata !882, metadata !DIExpression()), !dbg !903
  call void @llvm.dbg.value(metadata i8 1, metadata !884, metadata !DIExpression()), !dbg !903
  call void @llvm.dbg.value(metadata i32 -1, metadata !885, metadata !DIExpression()), !dbg !903
  call void @llvm.dbg.value(metadata i8 0, metadata !886, metadata !DIExpression()), !dbg !903
  %10 = load i8*, i8** %1, align 8, !dbg !906, !tbaa !787
  tail call void @set_program_name(i8* %10) #25, !dbg !907
  %11 = tail call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.14, i64 0, i64 0)) #25, !dbg !908
  %12 = tail call i8* @bindtextdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.16, i64 0, i64 0)) #25, !dbg !909
  %13 = tail call i8* @textdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i64 0, i64 0)) #25, !dbg !910
  %14 = tail call i32 @atexit(void ()* nonnull @close_stdout) #25, !dbg !911
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !912, !tbaa !787
  %16 = tail call i32 @setvbuf(%struct._IO_FILE* %15, i8* null, i32 1, i64 0) #25, !dbg !913
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i64 0, i64 0), metadata !887, metadata !DIExpression()), !dbg !903
  br label %17, !dbg !914

17:                                               ; preds = %22, %2
  %18 = phi i32 [ -1, %2 ], [ %23, %22 ], !dbg !915
  %19 = phi i8 [ 0, %2 ], [ %24, %22 ], !dbg !916
  %20 = phi i8 [ 0, %2 ], [ %25, %22 ], !dbg !917
  call void @llvm.dbg.value(metadata i8 %20, metadata !882, metadata !DIExpression()), !dbg !903
  call void @llvm.dbg.value(metadata i8 %19, metadata !886, metadata !DIExpression()), !dbg !903
  call void @llvm.dbg.value(metadata i32 %18, metadata !885, metadata !DIExpression()), !dbg !903
  %21 = tail call i32 @getopt_long(i32 %0, i8** nonnull %1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i64 0, i64 0), %struct.option* getelementptr inbounds ([13 x %struct.option], [13 x %struct.option]* @long_options, i64 0, i64 0), i32* null) #25, !dbg !918
  call void @llvm.dbg.value(metadata i32 %21, metadata !883, metadata !DIExpression()), !dbg !903
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
  ], !dbg !914

22:                                               ; preds = %17, %34, %33, %32, %31, %30, %29, %28, %27, %26
  %23 = phi i32 [ %18, %34 ], [ 1, %33 ], [ %18, %32 ], [ %18, %31 ], [ %18, %30 ], [ %18, %29 ], [ 0, %28 ], [ %18, %27 ], [ %18, %26 ], [ 1, %17 ]
  %24 = phi i8 [ %19, %34 ], [ 1, %33 ], [ %19, %32 ], [ %19, %31 ], [ %19, %30 ], [ %19, %29 ], [ %19, %28 ], [ %19, %27 ], [ %19, %26 ], [ %19, %17 ]
  %25 = phi i8 [ %20, %34 ], [ %20, %33 ], [ %20, %32 ], [ %20, %31 ], [ %20, %30 ], [ %20, %29 ], [ %20, %28 ], [ %20, %27 ], [ 1, %26 ], [ %20, %17 ]
  br label %17, !dbg !903, !llvm.loop !919

26:                                               ; preds = %17
  call void @llvm.dbg.value(metadata i8 1, metadata !882, metadata !DIExpression()), !dbg !903
  br label %22, !dbg !921

27:                                               ; preds = %17
  store i1 true, i1* @status_only, align 1, !dbg !923
  store i1 false, i1* @warn, align 1, !dbg !924
  store i1 false, i1* @quiet, align 1, !dbg !925
  br label %22, !dbg !926

28:                                               ; preds = %17
  call void @llvm.dbg.value(metadata i32 0, metadata !885, metadata !DIExpression()), !dbg !903
  br label %22, !dbg !927

29:                                               ; preds = %17
  store i1 false, i1* @status_only, align 1, !dbg !928
  store i1 true, i1* @warn, align 1, !dbg !929
  store i1 false, i1* @quiet, align 1, !dbg !930
  br label %22, !dbg !931

30:                                               ; preds = %17
  store i1 true, i1* @ignore_missing, align 1, !dbg !932
  br label %22, !dbg !933

31:                                               ; preds = %17
  store i1 false, i1* @status_only, align 1, !dbg !934
  store i1 false, i1* @warn, align 1, !dbg !935
  store i1 true, i1* @quiet, align 1, !dbg !936
  br label %22, !dbg !937

32:                                               ; preds = %17
  store i1 true, i1* @strict, align 1, !dbg !938
  br label %22, !dbg !939

33:                                               ; preds = %17
  call void @llvm.dbg.value(metadata i8 1, metadata !886, metadata !DIExpression()), !dbg !903
  call void @llvm.dbg.value(metadata i32 1, metadata !885, metadata !DIExpression()), !dbg !903
  br label %22, !dbg !940

34:                                               ; preds = %17
  store i1 true, i1* @delim, align 1, !dbg !941
  br label %22, !dbg !942

35:                                               ; preds = %17
  tail call void @usage(i32 0) #28, !dbg !943
  unreachable, !dbg !943

36:                                               ; preds = %17
  %37 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !944, !tbaa !787
  %38 = load i8*, i8** @Version, align 8, !dbg !944, !tbaa !787
  tail call void (%struct._IO_FILE*, i8*, i8*, i8*, ...) @version_etc(%struct._IO_FILE* %37, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.18, i64 0, i64 0), i8* %38, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.19, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.20, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.21, i64 0, i64 0), i8* null) #25, !dbg !944
  tail call void @exit(i32 0) #27, !dbg !944
  unreachable, !dbg !944

39:                                               ; preds = %17
  tail call void @usage(i32 1) #28, !dbg !945
  unreachable, !dbg !945

40:                                               ; preds = %17
  store i1 true, i1* @min_digest_line_length, align 8, !dbg !946
  store i1 true, i1* @digest_hex_bytes, align 8, !dbg !947
  %41 = icmp eq i8 %19, 0, !dbg !948
  %42 = icmp ne i32 %18, 0
  %43 = or i1 %42, %41, !dbg !950
  br i1 %43, label %46, label %44, !dbg !950

44:                                               ; preds = %40
  %45 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.22, i64 0, i64 0), i32 5) #25, !dbg !951
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %45) #25, !dbg !953
  tail call void @usage(i32 1) #28, !dbg !954
  unreachable, !dbg !954

46:                                               ; preds = %40
  %47 = load i1, i1* @delim, align 1, !dbg !955
  %48 = xor i1 %47, true, !dbg !957
  %49 = icmp eq i8 %20, 0
  %50 = or i1 %49, %48, !dbg !957
  br i1 %50, label %53, label %51, !dbg !957

51:                                               ; preds = %46
  %52 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.23, i64 0, i64 0), i32 5) #25, !dbg !958
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %52) #25, !dbg !960
  tail call void @usage(i32 1) #28, !dbg !961
  unreachable, !dbg !961

53:                                               ; preds = %46
  %54 = and i8 %19, %20, !dbg !962
  %55 = icmp eq i8 %54, 0, !dbg !962
  br i1 %55, label %58, label %56, !dbg !962

56:                                               ; preds = %53
  %57 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.24, i64 0, i64 0), i32 5) #25, !dbg !964
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %57) #25, !dbg !966
  tail call void @usage(i32 1) #28, !dbg !967
  unreachable, !dbg !967

58:                                               ; preds = %53
  %59 = icmp slt i32 %18, 0, !dbg !968
  %60 = or i1 %59, %49, !dbg !970
  br i1 %60, label %63, label %61, !dbg !970

61:                                               ; preds = %58
  %62 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.25, i64 0, i64 0), i32 5) #25, !dbg !971
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %62) #25, !dbg !973
  tail call void @usage(i32 1) #28, !dbg !974
  unreachable, !dbg !974

63:                                               ; preds = %58
  %64 = load i1, i1* @ignore_missing, align 1, !dbg !975
  %65 = and i1 %49, %64, !dbg !977
  br i1 %65, label %66, label %68, !dbg !977

66:                                               ; preds = %63
  %67 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.26, i64 0, i64 0), i32 5) #25, !dbg !978
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %67) #25, !dbg !980
  tail call void @usage(i32 1) #28, !dbg !981
  unreachable, !dbg !981

68:                                               ; preds = %63
  %69 = load i1, i1* @status_only, align 1, !dbg !982
  %70 = and i1 %49, %69, !dbg !984
  br i1 %70, label %71, label %73, !dbg !984

71:                                               ; preds = %68
  %72 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.27, i64 0, i64 0), i32 5) #25, !dbg !985
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %72) #25, !dbg !987
  tail call void @usage(i32 1) #28, !dbg !988
  unreachable, !dbg !988

73:                                               ; preds = %68
  %74 = load i1, i1* @warn, align 1, !dbg !989
  %75 = and i1 %49, %74, !dbg !991
  br i1 %75, label %76, label %78, !dbg !991

76:                                               ; preds = %73
  %77 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.28, i64 0, i64 0), i32 5) #25, !dbg !992
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %77) #25, !dbg !994
  tail call void @usage(i32 1) #28, !dbg !995
  unreachable, !dbg !995

78:                                               ; preds = %73
  %79 = load i1, i1* @quiet, align 1, !dbg !996
  %80 = and i1 %49, %79, !dbg !998
  br i1 %80, label %81, label %83, !dbg !998

81:                                               ; preds = %78
  %82 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.29, i64 0, i64 0), i32 5) #25, !dbg !999
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %82) #25, !dbg !1001
  tail call void @usage(i32 1) #28, !dbg !1002
  unreachable, !dbg !1002

83:                                               ; preds = %78
  %84 = load i1, i1* @strict, align 1, !dbg !1003
  %85 = zext i1 %84 to i32, !dbg !1003
  %86 = xor i8 %20, 1, !dbg !1005
  %87 = zext i8 %86 to i32, !dbg !1005
  %88 = and i32 %85, %87, !dbg !1006
  %89 = icmp eq i32 %88, 0, !dbg !1006
  br i1 %89, label %92, label %90, !dbg !1007

90:                                               ; preds = %83
  %91 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.30, i64 0, i64 0), i32 5) #25, !dbg !1008
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %91) #25, !dbg !1010
  tail call void @usage(i32 1) #28, !dbg !1011
  unreachable, !dbg !1011

92:                                               ; preds = %83
  %93 = icmp slt i32 %18, 1, !dbg !1012
  call void @llvm.dbg.value(metadata i32 undef, metadata !885, metadata !DIExpression()), !dbg !903
  %94 = sext i32 %0 to i64, !dbg !1013
  %95 = getelementptr inbounds i8*, i8** %1, i64 %94, !dbg !1013
  call void @llvm.dbg.value(metadata i8** %95, metadata !888, metadata !DIExpression()), !dbg !903
  %96 = load i32, i32* @optind, align 4, !dbg !1014, !tbaa !1016
  %97 = icmp eq i32 %96, %0, !dbg !1018
  br i1 %97, label %98, label %100, !dbg !1019

98:                                               ; preds = %92
  %99 = getelementptr inbounds i8*, i8** %95, i64 1, !dbg !1020
  call void @llvm.dbg.value(metadata i8** %99, metadata !888, metadata !DIExpression()), !dbg !903
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.31, i64 0, i64 0), i8** %95, align 8, !dbg !1021, !tbaa !787
  br label %100, !dbg !1022

100:                                              ; preds = %98, %92
  %101 = phi i8** [ %99, %98 ], [ %95, %92 ], !dbg !903
  call void @llvm.dbg.value(metadata i8** %101, metadata !888, metadata !DIExpression()), !dbg !903
  %102 = sext i32 %96 to i64, !dbg !1023
  %103 = getelementptr inbounds i8*, i8** %1, i64 %102, !dbg !1023
  call void @llvm.dbg.value(metadata i8** %103, metadata !889, metadata !DIExpression()), !dbg !1024
  call void @llvm.dbg.value(metadata i8 1, metadata !884, metadata !DIExpression()), !dbg !903
  %104 = icmp ult i8** %103, %101, !dbg !1025
  br i1 %104, label %105, label %111, !dbg !1026

105:                                              ; preds = %100
  %106 = getelementptr inbounds [20 x i8], [20 x i8]* %3, i64 0, i64 0
  %107 = bitcast i8** %4 to i8*
  %108 = bitcast i64* %5 to i8*
  %109 = select i1 %93, i32 32, i32 42
  %110 = trunc i32 %109 to i8
  br label %114, !dbg !1026

111:                                              ; preds = %660, %100
  %112 = phi i8 [ 1, %100 ], [ %661, %660 ], !dbg !903
  %113 = load i1, i1* @have_read_stdin, align 1, !dbg !1027
  br i1 %113, label %664, label %672, !dbg !1029

114:                                              ; preds = %105, %660
  %115 = phi i8** [ %103, %105 ], [ %662, %660 ]
  %116 = phi i8 [ 1, %105 ], [ %661, %660 ]
  call void @llvm.dbg.value(metadata i8** %115, metadata !889, metadata !DIExpression()), !dbg !1024
  call void @llvm.dbg.value(metadata i8 %116, metadata !884, metadata !DIExpression()), !dbg !903
  %117 = load i8*, i8** %115, align 8, !dbg !1030, !tbaa !787
  call void @llvm.dbg.value(metadata i8* %117, metadata !891, metadata !DIExpression()), !dbg !1031
  br i1 %49, label %564, label %118, !dbg !1032

118:                                              ; preds = %114
  call void @llvm.dbg.value(metadata i8* %117, metadata !96, metadata !DIExpression()) #25, !dbg !1033
  call void @llvm.dbg.value(metadata i64 0, metadata !152, metadata !DIExpression()) #25, !dbg !1033
  call void @llvm.dbg.value(metadata i64 0, metadata !153, metadata !DIExpression()) #25, !dbg !1033
  call void @llvm.dbg.value(metadata i64 0, metadata !154, metadata !DIExpression()) #25, !dbg !1033
  call void @llvm.dbg.value(metadata i64 0, metadata !155, metadata !DIExpression()) #25, !dbg !1033
  call void @llvm.dbg.value(metadata i8 0, metadata !156, metadata !DIExpression()) #25, !dbg !1033
  call void @llvm.dbg.value(metadata i8 0, metadata !157, metadata !DIExpression()) #25, !dbg !1033
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %106) #25, !dbg !1035
  call void @llvm.dbg.declare(metadata [20 x i8]* %3, metadata !158, metadata !DIExpression()) #25, !dbg !1036
  call void @llvm.dbg.value(metadata i8* %106, metadata !160, metadata !DIExpression()) #25, !dbg !1033
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %107) #25, !dbg !1037
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %108) #25, !dbg !1038
  %119 = call i32 @strcmp(i8* nonnull dereferenceable(1) %117, i8* nonnull dereferenceable(2) getelementptr inbounds ([2 x i8], [2 x i8]* @.str.31, i64 0, i64 0)) #26, !dbg !1039
  %120 = icmp eq i32 %119, 0, !dbg !1039
  call void @llvm.dbg.value(metadata i1 %120, metadata !164, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #25, !dbg !1033
  br i1 %120, label %121, label %124, !dbg !1040

121:                                              ; preds = %118
  store i1 true, i1* @have_read_stdin, align 1, !dbg !1041
  %122 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.35, i64 0, i64 0), i32 5) #25, !dbg !1044
  call void @llvm.dbg.value(metadata i8* %122, metadata !96, metadata !DIExpression()) #25, !dbg !1033
  %123 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !1045, !tbaa !787
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %123, metadata !97, metadata !DIExpression()) #25, !dbg !1033
  br label %131, !dbg !1046

124:                                              ; preds = %118
  %125 = call %struct._IO_FILE* @fopen_safer(i8* %117, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.64, i64 0, i64 0)) #25, !dbg !1047
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %125, metadata !97, metadata !DIExpression()) #25, !dbg !1033
  %126 = icmp eq %struct._IO_FILE* %125, null, !dbg !1049
  br i1 %126, label %127, label %131, !dbg !1051

127:                                              ; preds = %124
  %128 = tail call i32* @__errno_location() #29, !dbg !1052
  %129 = load i32, i32* %128, align 4, !dbg !1052, !tbaa !1016
  %130 = call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %117) #25, !dbg !1054
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %129, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.65, i64 0, i64 0), i8* %130) #25, !dbg !1055
  br label %560, !dbg !1056

131:                                              ; preds = %124, %121
  %132 = phi %struct._IO_FILE* [ %123, %121 ], [ %125, %124 ], !dbg !1057
  %133 = phi i8* [ %122, %121 ], [ %117, %124 ]
  call void @llvm.dbg.value(metadata i8* %133, metadata !96, metadata !DIExpression()) #25, !dbg !1033
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %132, metadata !97, metadata !DIExpression()) #25, !dbg !1033
  call void @llvm.dbg.value(metadata i64 0, metadata !161, metadata !DIExpression()) #25, !dbg !1033
  call void @llvm.dbg.value(metadata i8* null, metadata !162, metadata !DIExpression()) #25, !dbg !1033
  store i8* null, i8** %4, align 8, !dbg !1058, !tbaa !787
  call void @llvm.dbg.value(metadata i64 0, metadata !163, metadata !DIExpression()) #25, !dbg !1033
  store i64 0, i64* %5, align 8, !dbg !1059, !tbaa !1060
  %134 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %132, i64 0, i32 0
  br label %135, !dbg !1062

135:                                              ; preds = %487, %131
  %136 = phi i8 [ 0, %131 ], [ %488, %487 ], !dbg !1063
  %137 = phi i64 [ 0, %131 ], [ %143, %487 ], !dbg !1033
  %138 = phi i8 [ 0, %131 ], [ %489, %487 ], !dbg !1064
  %139 = phi i64 [ 0, %131 ], [ %490, %487 ], !dbg !1065
  %140 = phi i64 [ 0, %131 ], [ %491, %487 ], !dbg !1066
  %141 = phi i64 [ 0, %131 ], [ %492, %487 ], !dbg !1067
  %142 = phi i64 [ 0, %131 ], [ %493, %487 ], !dbg !1068
  call void @llvm.dbg.value(metadata i64 %142, metadata !152, metadata !DIExpression()) #25, !dbg !1033
  call void @llvm.dbg.value(metadata i64 %141, metadata !153, metadata !DIExpression()) #25, !dbg !1033
  call void @llvm.dbg.value(metadata i64 %140, metadata !154, metadata !DIExpression()) #25, !dbg !1033
  call void @llvm.dbg.value(metadata i64 %139, metadata !155, metadata !DIExpression()) #25, !dbg !1033
  call void @llvm.dbg.value(metadata i8 %138, metadata !156, metadata !DIExpression()) #25, !dbg !1033
  call void @llvm.dbg.value(metadata i64 %137, metadata !161, metadata !DIExpression()) #25, !dbg !1033
  call void @llvm.dbg.value(metadata i8 %136, metadata !157, metadata !DIExpression()) #25, !dbg !1033
  %143 = add i64 %137, 1, !dbg !1069
  call void @llvm.dbg.value(metadata i64 %143, metadata !161, metadata !DIExpression()) #25, !dbg !1033
  %144 = icmp eq i64 %143, 0, !dbg !1070
  br i1 %144, label %145, label %148, !dbg !1072

145:                                              ; preds = %135
  %146 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.66, i64 0, i64 0), i32 5) #25, !dbg !1073
  %147 = call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %133) #25, !dbg !1073
  call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %146, i8* %147) #25, !dbg !1073
  unreachable, !dbg !1073

148:                                              ; preds = %135
  call void @llvm.dbg.value(metadata i8** %4, metadata !162, metadata !DIExpression(DW_OP_deref)) #25, !dbg !1033
  call void @llvm.dbg.value(metadata i64* %5, metadata !163, metadata !DIExpression(DW_OP_deref)) #25, !dbg !1033
  call void @llvm.dbg.value(metadata i8** %4, metadata !1074, metadata !DIExpression()) #25, !dbg !1082
  call void @llvm.dbg.value(metadata i64* %5, metadata !1080, metadata !DIExpression()) #25, !dbg !1082
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %132, metadata !1081, metadata !DIExpression()) #25, !dbg !1082
  %149 = call i64 @__getdelim(i8** nonnull %4, i64* nonnull %5, i32 10, %struct._IO_FILE* %132) #25, !dbg !1084
  call void @llvm.dbg.value(metadata i64 %149, metadata !169, metadata !DIExpression()) #25, !dbg !1085
  %150 = icmp slt i64 %149, 1, !dbg !1086
  br i1 %150, label %497, label %151, !dbg !1088

151:                                              ; preds = %148
  %152 = load i8*, i8** %4, align 8, !dbg !1089, !tbaa !787
  call void @llvm.dbg.value(metadata i8* %152, metadata !162, metadata !DIExpression()) #25, !dbg !1033
  %153 = load i8, i8* %152, align 1, !dbg !1089, !tbaa !1091
  %154 = icmp eq i8 %153, 35, !dbg !1092
  br i1 %154, label %487, label %155, !dbg !1093

155:                                              ; preds = %151
  %156 = add nsw i64 %149, -1, !dbg !1094
  %157 = getelementptr inbounds i8, i8* %152, i64 %156, !dbg !1096
  %158 = load i8, i8* %157, align 1, !dbg !1096, !tbaa !1091
  %159 = icmp eq i8 %158, 10, !dbg !1097
  br i1 %159, label %160, label %162, !dbg !1098

160:                                              ; preds = %155
  call void @llvm.dbg.value(metadata i64 %156, metadata !169, metadata !DIExpression()) #25, !dbg !1085
  store i8 0, i8* %157, align 1, !dbg !1099, !tbaa !1091
  %161 = load i8*, i8** %4, align 8, !dbg !1100, !tbaa !787
  br label %162, !dbg !1101

162:                                              ; preds = %160, %155
  %163 = phi i8* [ %161, %160 ], [ %152, %155 ], !dbg !1100
  %164 = phi i64 [ %156, %160 ], [ %149, %155 ], !dbg !1085
  call void @llvm.dbg.value(metadata i64 %164, metadata !169, metadata !DIExpression()) #25, !dbg !1085
  call void @llvm.dbg.value(metadata i8* %163, metadata !162, metadata !DIExpression()) #25, !dbg !1033
  call void @llvm.dbg.value(metadata i8* %163, metadata !1102, metadata !DIExpression()) #25, !dbg !1115
  call void @llvm.dbg.value(metadata i64 %164, metadata !1108, metadata !DIExpression()) #25, !dbg !1115
  call void @llvm.dbg.value(metadata i8** undef, metadata !1109, metadata !DIExpression()) #25, !dbg !1115
  call void @llvm.dbg.value(metadata i32* undef, metadata !1110, metadata !DIExpression()) #25, !dbg !1115
  call void @llvm.dbg.value(metadata i8** undef, metadata !1111, metadata !DIExpression()) #25, !dbg !1115
  call void @llvm.dbg.value(metadata i8 0, metadata !1112, metadata !DIExpression()) #25, !dbg !1115
  call void @llvm.dbg.value(metadata i64 0, metadata !1114, metadata !DIExpression()) #25, !dbg !1115
  br label %165, !dbg !1117

165:                                              ; preds = %169, %162
  %166 = phi i64 [ 0, %162 ], [ %170, %169 ], !dbg !1115
  call void @llvm.dbg.value(metadata i64 %166, metadata !1114, metadata !DIExpression()) #25, !dbg !1115
  %167 = getelementptr inbounds i8, i8* %163, i64 %166, !dbg !1118
  %168 = load i8, i8* %167, align 1, !dbg !1118, !tbaa !1091
  switch i8 %168, label %171 [
    i8 32, label %169
    i8 9, label %169
  ], !dbg !1118

169:                                              ; preds = %165, %165
  %170 = add i64 %166, 1, !dbg !1119
  call void @llvm.dbg.value(metadata i64 %170, metadata !1114, metadata !DIExpression()) #25, !dbg !1115
  br label %165, !dbg !1117, !llvm.loop !1120

171:                                              ; preds = %165
  %172 = icmp eq i8 %168, 92, !dbg !1122
  %173 = zext i1 %172 to i64, !dbg !1124
  %174 = add i64 %166, %173, !dbg !1124
  call void @llvm.dbg.value(metadata i64 %174, metadata !1114, metadata !DIExpression()) #25, !dbg !1115
  call void @llvm.dbg.value(metadata i8 undef, metadata !1112, metadata !DIExpression()) #25, !dbg !1115
  call void @llvm.dbg.value(metadata i64 3, metadata !1113, metadata !DIExpression()) #25, !dbg !1115
  %175 = getelementptr inbounds i8, i8* %163, i64 %174, !dbg !1125
  %176 = call i32 @strncmp(i8* nonnull dereferenceable(1) %175, i8* nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i64 3) #26, !dbg !1125
  %177 = icmp eq i32 %176, 0, !dbg !1125
  br i1 %177, label %178, label %271, !dbg !1127

178:                                              ; preds = %171
  %179 = add i64 %174, 3, !dbg !1128
  call void @llvm.dbg.value(metadata i64 %179, metadata !1114, metadata !DIExpression()) #25, !dbg !1115
  %180 = getelementptr inbounds i8, i8* %163, i64 %179, !dbg !1130
  %181 = load i8, i8* %180, align 1, !dbg !1130, !tbaa !1091
  %182 = icmp eq i8 %181, 32, !dbg !1132
  %183 = add i64 %174, 4
  %184 = select i1 %182, i64 %183, i64 %179, !dbg !1133
  call void @llvm.dbg.value(metadata i64 %184, metadata !1114, metadata !DIExpression()) #25, !dbg !1115
  %185 = getelementptr inbounds i8, i8* %163, i64 %184, !dbg !1134
  %186 = load i8, i8* %185, align 1, !dbg !1134, !tbaa !1091
  %187 = icmp eq i8 %186, 40, !dbg !1136
  br i1 %187, label %188, label %374, !dbg !1137

188:                                              ; preds = %178
  %189 = add i64 %184, 1, !dbg !1138
  call void @llvm.dbg.value(metadata i64 %189, metadata !1114, metadata !DIExpression()) #25, !dbg !1115
  %190 = getelementptr inbounds i8, i8* %163, i64 %189, !dbg !1140
  %191 = sub i64 %164, %189, !dbg !1141
  call void @llvm.dbg.value(metadata i8* %190, metadata !1142, metadata !DIExpression()) #25, !dbg !1152
  call void @llvm.dbg.value(metadata i64 %191, metadata !1147, metadata !DIExpression()) #25, !dbg !1152
  call void @llvm.dbg.value(metadata i8** undef, metadata !1148, metadata !DIExpression()) #25, !dbg !1152
  call void @llvm.dbg.value(metadata i8** undef, metadata !1149, metadata !DIExpression()) #25, !dbg !1152
  call void @llvm.dbg.value(metadata i1 %172, metadata !1150, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #25, !dbg !1152
  %192 = icmp eq i64 %191, 0, !dbg !1154
  br i1 %192, label %374, label %193, !dbg !1156

193:                                              ; preds = %188, %197
  %194 = phi i64 [ %195, %197 ], [ %191, %188 ]
  %195 = add i64 %194, -1, !dbg !1152
  call void @llvm.dbg.value(metadata i64 %195, metadata !1151, metadata !DIExpression()) #25, !dbg !1152
  %196 = icmp eq i64 %195, 0, !dbg !1157
  br i1 %196, label %201, label %197, !dbg !1158

197:                                              ; preds = %193
  %198 = getelementptr inbounds i8, i8* %190, i64 %195, !dbg !1159
  %199 = load i8, i8* %198, align 1, !dbg !1159, !tbaa !1091
  %200 = icmp eq i8 %199, 41, !dbg !1160
  br i1 %200, label %204, label %193, !dbg !1161, !llvm.loop !1162

201:                                              ; preds = %193
  %202 = load i8, i8* %190, align 1, !dbg !1164, !tbaa !1091
  %203 = icmp eq i8 %202, 41, !dbg !1158
  br i1 %203, label %231, label %374, !dbg !1166

204:                                              ; preds = %197
  %205 = getelementptr inbounds i8, i8* %190, i64 %195, !dbg !1159
  br i1 %172, label %206, label %231, !dbg !1167

206:                                              ; preds = %204
  call void @llvm.dbg.value(metadata i8* %190, metadata !1169, metadata !DIExpression()) #25, !dbg !1178
  call void @llvm.dbg.value(metadata i64 0, metadata !1174, metadata !DIExpression()) #25, !dbg !1178
  call void @llvm.dbg.value(metadata i8* %190, metadata !1175, metadata !DIExpression()) #25, !dbg !1178
  call void @llvm.dbg.value(metadata i64 0, metadata !1176, metadata !DIExpression()) #25, !dbg !1180
  %207 = add i64 %194, -2
  br label %208, !dbg !1181

208:                                              ; preds = %222, %206
  %209 = phi i64 [ 0, %206 ], [ %226, %222 ]
  %210 = phi i8* [ %190, %206 ], [ %225, %222 ]
  call void @llvm.dbg.value(metadata i64 %209, metadata !1176, metadata !DIExpression()) #25, !dbg !1180
  call void @llvm.dbg.value(metadata i8* %210, metadata !1175, metadata !DIExpression()) #25, !dbg !1178
  %211 = getelementptr inbounds i8, i8* %190, i64 %209, !dbg !1182
  %212 = load i8, i8* %211, align 1, !dbg !1182, !tbaa !1091
  %213 = sext i8 %212 to i32, !dbg !1182
  switch i32 %213, label %222 [
    i32 92, label %214
    i32 0, label %374
  ], !dbg !1185

214:                                              ; preds = %208
  %215 = icmp eq i64 %209, %207, !dbg !1186
  br i1 %215, label %374, label %216, !dbg !1189

216:                                              ; preds = %214
  %217 = add nuw i64 %209, 1, !dbg !1190
  call void @llvm.dbg.value(metadata i64 %217, metadata !1176, metadata !DIExpression()) #25, !dbg !1180
  %218 = getelementptr inbounds i8, i8* %190, i64 %217, !dbg !1191
  %219 = load i8, i8* %218, align 1, !dbg !1191, !tbaa !1091
  %220 = sext i8 %219 to i32, !dbg !1191
  switch i32 %220, label %374 [
    i32 110, label %222
    i32 92, label %221
  ], !dbg !1192

221:                                              ; preds = %216
  call void @llvm.dbg.value(metadata i8* %210, metadata !1175, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)) #25, !dbg !1178
  br label %222, !dbg !1193

222:                                              ; preds = %208, %216, %221
  %223 = phi i8 [ 92, %221 ], [ 10, %216 ], [ %212, %208 ]
  %224 = phi i64 [ %217, %221 ], [ %217, %216 ], [ %209, %208 ], !dbg !1180
  store i8 %223, i8* %210, align 1, !dbg !1195, !tbaa !1091
  %225 = getelementptr inbounds i8, i8* %210, i64 1, !dbg !1195
  call void @llvm.dbg.value(metadata i64 %224, metadata !1176, metadata !DIExpression()) #25, !dbg !1180
  call void @llvm.dbg.value(metadata i8* %225, metadata !1175, metadata !DIExpression()) #25, !dbg !1178
  %226 = add i64 %224, 1, !dbg !1196
  call void @llvm.dbg.value(metadata i64 %226, metadata !1176, metadata !DIExpression()) #25, !dbg !1180
  %227 = icmp ult i64 %226, %195, !dbg !1197
  br i1 %227, label %208, label %228, !dbg !1181, !llvm.loop !1198

228:                                              ; preds = %222
  %229 = icmp ult i8* %225, %205, !dbg !1200
  br i1 %229, label %230, label %231, !dbg !1202

230:                                              ; preds = %228
  store i8 0, i8* %225, align 1, !dbg !1203, !tbaa !1091
  br label %231, !dbg !1204

231:                                              ; preds = %230, %228, %204, %201
  %232 = phi i8* [ %205, %230 ], [ %205, %228 ], [ %205, %204 ], [ %190, %201 ]
  call void @llvm.dbg.value(metadata i64 1, metadata !1151, metadata !DIExpression()) #25, !dbg !1152
  store i8 0, i8* %232, align 1, !dbg !1205, !tbaa !1091
  br label %233, !dbg !1206

233:                                              ; preds = %237, %231
  %234 = phi i64 [ %194, %231 ], [ %238, %237 ], !dbg !1152
  call void @llvm.dbg.value(metadata i64 %234, metadata !1151, metadata !DIExpression()) #25, !dbg !1152
  %235 = getelementptr inbounds i8, i8* %190, i64 %234, !dbg !1207
  %236 = load i8, i8* %235, align 1, !dbg !1207, !tbaa !1091
  switch i8 %236, label %374 [
    i8 32, label %237
    i8 9, label %237
    i8 61, label %239
  ], !dbg !1207

237:                                              ; preds = %233, %233
  %238 = add i64 %234, 1, !dbg !1208
  call void @llvm.dbg.value(metadata i64 %238, metadata !1151, metadata !DIExpression()) #25, !dbg !1152
  br label %233, !dbg !1206, !llvm.loop !1209

239:                                              ; preds = %233, %244
  %240 = phi i64 [ %241, %244 ], [ %234, %233 ]
  %241 = add i64 %240, 1, !dbg !1152
  call void @llvm.dbg.value(metadata i64 %241, metadata !1151, metadata !DIExpression()) #25, !dbg !1152
  %242 = getelementptr inbounds i8, i8* %190, i64 %241, !dbg !1210
  %243 = load i8, i8* %242, align 1, !dbg !1210, !tbaa !1091
  switch i8 %243, label %245 [
    i8 32, label %244
    i8 9, label %244
  ], !dbg !1210

244:                                              ; preds = %239, %239
  br label %239, !dbg !1152, !llvm.loop !1211

245:                                              ; preds = %239
  %246 = getelementptr inbounds i8, i8* %190, i64 %241, !dbg !1210
  call void @llvm.dbg.value(metadata i8* %246, metadata !1214, metadata !DIExpression()) #25, !dbg !1222
  call void @llvm.dbg.value(metadata i32 0, metadata !1220, metadata !DIExpression()) #25, !dbg !1224
  %247 = load i1, i1* @digest_hex_bytes, align 8, !dbg !1225
  br i1 %247, label %248, label %365, !dbg !1227

248:                                              ; preds = %245
  %249 = tail call i16** @__ctype_b_loc() #29, !dbg !1222
  %250 = load i16*, i16** %249, align 8, !tbaa !787
  %251 = add i64 %240, 33, !dbg !1227
  %252 = getelementptr i8, i8* %190, i64 %251, !dbg !1227
  call void @llvm.dbg.value(metadata i32 0, metadata !1220, metadata !DIExpression()) #25, !dbg !1224
  call void @llvm.dbg.value(metadata i8* %246, metadata !1214, metadata !DIExpression()) #25, !dbg !1222
  %253 = zext i8 %243 to i64, !dbg !1228
  %254 = getelementptr inbounds i16, i16* %250, i64 %253, !dbg !1228
  %255 = load i16, i16* %254, align 2, !dbg !1228, !tbaa !1231
  %256 = and i16 %255, 4096, !dbg !1228
  %257 = icmp eq i16 %256, 0, !dbg !1228
  br i1 %257, label %374, label %258, !dbg !1233

258:                                              ; preds = %248, %264
  %259 = phi i8* [ %261, %264 ], [ %246, %248 ]
  %260 = phi i32 [ %262, %264 ], [ 0, %248 ]
  call void @llvm.dbg.value(metadata i8* %259, metadata !1214, metadata !DIExpression()) #25, !dbg !1222
  call void @llvm.dbg.value(metadata i32 %260, metadata !1220, metadata !DIExpression()) #25, !dbg !1224
  %261 = getelementptr inbounds i8, i8* %259, i64 1, !dbg !1234
  call void @llvm.dbg.value(metadata i8* %261, metadata !1214, metadata !DIExpression()) #25, !dbg !1222
  %262 = add nuw nsw i32 %260, 1, !dbg !1235
  call void @llvm.dbg.value(metadata i32 %262, metadata !1220, metadata !DIExpression()) #25, !dbg !1224
  %263 = icmp eq i32 %262, 32, !dbg !1236
  br i1 %263, label %363, label %264, !dbg !1227, !llvm.loop !1237

264:                                              ; preds = %258
  %265 = load i8, i8* %261, align 1, !dbg !1228, !tbaa !1091
  call void @llvm.dbg.value(metadata i32 %262, metadata !1220, metadata !DIExpression()) #25, !dbg !1224
  call void @llvm.dbg.value(metadata i8* %261, metadata !1214, metadata !DIExpression()) #25, !dbg !1222
  %266 = zext i8 %265 to i64, !dbg !1228
  %267 = getelementptr inbounds i16, i16* %250, i64 %266, !dbg !1228
  %268 = load i16, i16* %267, align 2, !dbg !1228, !tbaa !1231
  %269 = and i16 %268, 4096, !dbg !1228
  %270 = icmp eq i16 %269, 0, !dbg !1228
  br i1 %270, label %374, label %258, !dbg !1233

271:                                              ; preds = %171
  %272 = sub i64 %164, %174, !dbg !1239
  %273 = load i1, i1* @min_digest_line_length, align 8, !dbg !1241
  %274 = select i1 %273, i64 34, i64 0, !dbg !1241
  %275 = load i8, i8* %175, align 1, !dbg !1242, !tbaa !1091
  %276 = icmp eq i8 %275, 92, !dbg !1243
  %277 = zext i1 %276 to i64, !dbg !1244
  %278 = or i64 %274, %277, !dbg !1245
  %279 = icmp ult i64 %272, %278, !dbg !1246
  br i1 %279, label %374, label %280, !dbg !1247

280:                                              ; preds = %271
  %281 = load i1, i1* @digest_hex_bytes, align 8, !dbg !1248
  %282 = select i1 %281, i64 32, i64 0, !dbg !1248
  %283 = add i64 %282, %174, !dbg !1249
  call void @llvm.dbg.value(metadata i64 %283, metadata !1114, metadata !DIExpression()) #25, !dbg !1115
  %284 = getelementptr inbounds i8, i8* %163, i64 %283, !dbg !1250
  %285 = load i8, i8* %284, align 1, !dbg !1250, !tbaa !1091
  switch i8 %285, label %374 [
    i8 32, label %286
    i8 9, label %286
  ], !dbg !1250

286:                                              ; preds = %280, %280
  %287 = add i64 %283, 1, !dbg !1252
  call void @llvm.dbg.value(metadata i64 %287, metadata !1114, metadata !DIExpression()) #25, !dbg !1115
  store i8 0, i8* %284, align 1, !dbg !1253, !tbaa !1091
  call void @llvm.dbg.value(metadata i8* %175, metadata !1214, metadata !DIExpression()) #25, !dbg !1254
  call void @llvm.dbg.value(metadata i32 0, metadata !1220, metadata !DIExpression()) #25, !dbg !1257
  br i1 %281, label %288, label %309, !dbg !1258

288:                                              ; preds = %286
  %289 = tail call i16** @__ctype_b_loc() #29, !dbg !1254
  %290 = load i16*, i16** %289, align 8, !tbaa !787
  %291 = getelementptr i8, i8* %175, i64 32, !dbg !1258
  br label %292, !dbg !1258

292:                                              ; preds = %692, %288
  %293 = phi i32 [ 0, %288 ], [ %694, %692 ]
  %294 = phi i8* [ %175, %288 ], [ %693, %692 ]
  call void @llvm.dbg.value(metadata i32 %293, metadata !1220, metadata !DIExpression()) #25, !dbg !1257
  call void @llvm.dbg.value(metadata i8* %294, metadata !1214, metadata !DIExpression()) #25, !dbg !1254
  %295 = load i8, i8* %294, align 1, !dbg !1259, !tbaa !1091
  %296 = zext i8 %295 to i64, !dbg !1259
  %297 = getelementptr inbounds i16, i16* %290, i64 %296, !dbg !1259
  %298 = load i16, i16* %297, align 2, !dbg !1259, !tbaa !1231
  %299 = and i16 %298, 4096, !dbg !1259
  %300 = icmp eq i16 %299, 0, !dbg !1259
  br i1 %300, label %374, label %301, !dbg !1260

301:                                              ; preds = %292
  %302 = getelementptr inbounds i8, i8* %294, i64 1, !dbg !1261
  call void @llvm.dbg.value(metadata i8* %302, metadata !1214, metadata !DIExpression()) #25, !dbg !1254
  call void @llvm.dbg.value(metadata i32 %293, metadata !1220, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)) #25, !dbg !1257
  call void @llvm.dbg.value(metadata i32 %293, metadata !1220, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)) #25, !dbg !1257
  call void @llvm.dbg.value(metadata i8* %302, metadata !1214, metadata !DIExpression()) #25, !dbg !1254
  %303 = load i8, i8* %302, align 1, !dbg !1259, !tbaa !1091
  %304 = zext i8 %303 to i64, !dbg !1259
  %305 = getelementptr inbounds i16, i16* %290, i64 %304, !dbg !1259
  %306 = load i16, i16* %305, align 2, !dbg !1259, !tbaa !1231
  %307 = and i16 %306, 4096, !dbg !1259
  %308 = icmp eq i16 %307, 0, !dbg !1259
  br i1 %308, label %374, label %676, !dbg !1260

309:                                              ; preds = %692, %286
  %310 = phi i8* [ %175, %286 ], [ %291, %692 ]
  %311 = load i8, i8* %310, align 1, !dbg !1262, !tbaa !1091
  %312 = icmp eq i8 %311, 0, !dbg !1263
  br i1 %312, label %313, label %374, !dbg !1264

313:                                              ; preds = %309
  %314 = sub i64 %164, %287, !dbg !1265
  %315 = icmp eq i64 %314, 1, !dbg !1267
  br i1 %315, label %319, label %316, !dbg !1268

316:                                              ; preds = %313
  %317 = getelementptr inbounds i8, i8* %163, i64 %287, !dbg !1269
  %318 = load i8, i8* %317, align 1, !dbg !1269, !tbaa !1091
  switch i8 %318, label %319 [
    i8 32, label %323
    i8 42, label %323
  ], !dbg !1270

319:                                              ; preds = %316, %313
  %320 = load i32, i32* @bsd_reversed, align 4, !dbg !1271, !tbaa !1016
  %321 = icmp eq i32 %320, 0, !dbg !1274
  br i1 %321, label %374, label %322, !dbg !1275

322:                                              ; preds = %319
  store i32 1, i32* @bsd_reversed, align 4, !dbg !1276, !tbaa !1016
  br label %328, !dbg !1277

323:                                              ; preds = %316, %316
  %324 = load i32, i32* @bsd_reversed, align 4, !dbg !1278, !tbaa !1016
  %325 = icmp eq i32 %324, 1, !dbg !1280
  br i1 %325, label %328, label %326, !dbg !1281

326:                                              ; preds = %323
  store i32 0, i32* @bsd_reversed, align 4, !dbg !1282, !tbaa !1016
  %327 = add i64 %283, 2, !dbg !1284
  call void @llvm.dbg.value(metadata i64 %327, metadata !1114, metadata !DIExpression()) #25, !dbg !1115
  br label %328, !dbg !1285

328:                                              ; preds = %326, %323, %322
  %329 = phi i64 [ %287, %322 ], [ %327, %326 ], [ %287, %323 ], !dbg !1115
  call void @llvm.dbg.value(metadata i64 %329, metadata !1114, metadata !DIExpression()) #25, !dbg !1115
  %330 = getelementptr inbounds i8, i8* %163, i64 %329, !dbg !1286
  br i1 %172, label %331, label %368, !dbg !1287

331:                                              ; preds = %328
  %332 = sub i64 %164, %329, !dbg !1288
  call void @llvm.dbg.value(metadata i8* %330, metadata !1169, metadata !DIExpression()) #25, !dbg !1290
  call void @llvm.dbg.value(metadata i64 %332, metadata !1174, metadata !DIExpression()) #25, !dbg !1290
  call void @llvm.dbg.value(metadata i8* %330, metadata !1175, metadata !DIExpression()) #25, !dbg !1290
  call void @llvm.dbg.value(metadata i64 0, metadata !1176, metadata !DIExpression()) #25, !dbg !1292
  %333 = icmp eq i64 %332, 0, !dbg !1293
  br i1 %333, label %356, label %334, !dbg !1294

334:                                              ; preds = %331
  %335 = add i64 %332, -1
  br label %336, !dbg !1294

336:                                              ; preds = %350, %334
  %337 = phi i64 [ 0, %334 ], [ %354, %350 ]
  %338 = phi i8* [ %330, %334 ], [ %353, %350 ]
  call void @llvm.dbg.value(metadata i64 %337, metadata !1176, metadata !DIExpression()) #25, !dbg !1292
  call void @llvm.dbg.value(metadata i8* %338, metadata !1175, metadata !DIExpression()) #25, !dbg !1290
  %339 = getelementptr inbounds i8, i8* %330, i64 %337, !dbg !1295
  %340 = load i8, i8* %339, align 1, !dbg !1295, !tbaa !1091
  %341 = sext i8 %340 to i32, !dbg !1295
  switch i32 %341, label %350 [
    i32 92, label %342
    i32 0, label %374
  ], !dbg !1296

342:                                              ; preds = %336
  %343 = icmp eq i64 %337, %335, !dbg !1297
  br i1 %343, label %374, label %344, !dbg !1298

344:                                              ; preds = %342
  %345 = add nuw i64 %337, 1, !dbg !1299
  call void @llvm.dbg.value(metadata i64 %345, metadata !1176, metadata !DIExpression()) #25, !dbg !1292
  %346 = getelementptr inbounds i8, i8* %330, i64 %345, !dbg !1300
  %347 = load i8, i8* %346, align 1, !dbg !1300, !tbaa !1091
  %348 = sext i8 %347 to i32, !dbg !1300
  switch i32 %348, label %374 [
    i32 110, label %350
    i32 92, label %349
  ], !dbg !1301

349:                                              ; preds = %344
  call void @llvm.dbg.value(metadata i8* %338, metadata !1175, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)) #25, !dbg !1290
  br label %350, !dbg !1302

350:                                              ; preds = %336, %344, %349
  %351 = phi i8 [ 92, %349 ], [ 10, %344 ], [ %340, %336 ]
  %352 = phi i64 [ %345, %349 ], [ %345, %344 ], [ %337, %336 ], !dbg !1292
  store i8 %351, i8* %338, align 1, !dbg !1303, !tbaa !1091
  %353 = getelementptr inbounds i8, i8* %338, i64 1, !dbg !1303
  call void @llvm.dbg.value(metadata i64 %352, metadata !1176, metadata !DIExpression()) #25, !dbg !1292
  call void @llvm.dbg.value(metadata i8* %353, metadata !1175, metadata !DIExpression()) #25, !dbg !1290
  %354 = add i64 %352, 1, !dbg !1304
  call void @llvm.dbg.value(metadata i64 %354, metadata !1176, metadata !DIExpression()) #25, !dbg !1292
  %355 = icmp ult i64 %354, %332, !dbg !1293
  br i1 %355, label %336, label %356, !dbg !1294, !llvm.loop !1305

356:                                              ; preds = %350, %331
  %357 = phi i8* [ %330, %331 ], [ %353, %350 ], !dbg !1290
  %358 = getelementptr inbounds i8, i8* %163, i64 %164, !dbg !1307
  %359 = icmp ult i8* %357, %358, !dbg !1308
  br i1 %359, label %360, label %361, !dbg !1309

360:                                              ; preds = %356
  store i8 0, i8* %357, align 1, !dbg !1310, !tbaa !1091
  br label %361, !dbg !1311

361:                                              ; preds = %360, %356
  %362 = icmp eq i8* %163, null, !dbg !1312
  br i1 %362, label %374, label %368, !dbg !1313

363:                                              ; preds = %258
  %364 = load i8, i8* %252, align 1, !dbg !1314, !tbaa !1091
  br label %365, !dbg !1314

365:                                              ; preds = %363, %245
  %366 = phi i8 [ %364, %363 ], [ %243, %245 ], !dbg !1314
  %367 = icmp eq i8 %366, 0, !dbg !1315
  br i1 %367, label %368, label %374, !dbg !1313

368:                                              ; preds = %365, %361, %328
  %369 = phi i8* [ %246, %365 ], [ %175, %361 ], [ %175, %328 ]
  %370 = phi i8* [ %190, %365 ], [ %330, %361 ], [ %330, %328 ]
  br i1 %120, label %371, label %382, !dbg !1316

371:                                              ; preds = %368
  %372 = call i32 @strcmp(i8* nonnull dereferenceable(1) %370, i8* nonnull dereferenceable(2) getelementptr inbounds ([2 x i8], [2 x i8]* @.str.31, i64 0, i64 0)) #26, !dbg !1317
  %373 = icmp eq i32 %372, 0, !dbg !1317
  br i1 %373, label %374, label %382, !dbg !1318

374:                                              ; preds = %292, %301, %676, %684, %344, %342, %336, %216, %214, %208, %233, %264, %248, %371, %365, %361, %319, %309, %280, %271, %201, %188, %178
  %375 = add i64 %142, 1, !dbg !1319
  call void @llvm.dbg.value(metadata i64 %375, metadata !152, metadata !DIExpression()) #25, !dbg !1033
  %376 = load i1, i1* @warn, align 1, !dbg !1321
  br i1 %376, label %377, label %380, !dbg !1323

377:                                              ; preds = %374
  %378 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.67, i64 0, i64 0), i32 5) #25, !dbg !1324
  %379 = call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %133) #25, !dbg !1326
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %378, i8* %379, i64 %143, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)) #25, !dbg !1327
  br label %380, !dbg !1328

380:                                              ; preds = %377, %374
  %381 = add i64 %141, 1, !dbg !1329
  call void @llvm.dbg.value(metadata i64 %381, metadata !153, metadata !DIExpression()) #25, !dbg !1033
  br label %487, !dbg !1330

382:                                              ; preds = %371, %368
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %6) #25, !dbg !1331
  %383 = load i1, i1* @status_only, align 1, !dbg !1332
  br i1 %383, label %387, label %384, !dbg !1333

384:                                              ; preds = %382
  %385 = call i8* @strchr(i8* nonnull dereferenceable(1) %370, i32 10) #26, !dbg !1334
  %386 = icmp ne i8* %385, null, !dbg !1333
  br label %387

387:                                              ; preds = %384, %382
  %388 = phi i1 [ false, %382 ], [ %386, %384 ], !dbg !1335
  call void @llvm.dbg.value(metadata i1 %388, metadata !177, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #25, !dbg !1335
  call void @llvm.dbg.value(metadata i8 1, metadata !156, metadata !DIExpression()) #25, !dbg !1033
  call void @llvm.dbg.value(metadata i8* %6, metadata !176, metadata !DIExpression(DW_OP_deref)) #25, !dbg !1335
  %389 = call fastcc zeroext i1 @digest_file(i8* %370, i8* nonnull %106, i8* nonnull %6) #25, !dbg !1336
  call void @llvm.dbg.value(metadata i1 %389, metadata !173, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #25, !dbg !1335
  br i1 %389, label %408, label %390, !dbg !1337

390:                                              ; preds = %387
  %391 = add i64 %139, 1, !dbg !1338
  call void @llvm.dbg.value(metadata i64 %391, metadata !155, metadata !DIExpression()) #25, !dbg !1033
  %392 = load i1, i1* @status_only, align 1, !dbg !1340
  br i1 %392, label %483, label %393, !dbg !1342

393:                                              ; preds = %390
  br i1 %388, label %394, label %405, !dbg !1343

394:                                              ; preds = %393
  call void @llvm.dbg.value(metadata i32 92, metadata !1345, metadata !DIExpression()) #25, !dbg !1350
  %395 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1353, !tbaa !787
  %396 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %395, i64 0, i32 5, !dbg !1353
  %397 = load i8*, i8** %396, align 8, !dbg !1353, !tbaa !1354
  %398 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %395, i64 0, i32 6, !dbg !1353
  %399 = load i8*, i8** %398, align 8, !dbg !1353, !tbaa !1356
  %400 = icmp ult i8* %397, %399, !dbg !1353
  br i1 %400, label %403, label %401, !dbg !1353, !prof !1357

401:                                              ; preds = %394
  %402 = call i32 @__overflow(%struct._IO_FILE* nonnull %395, i32 92) #25, !dbg !1353
  br label %405, !dbg !1353

403:                                              ; preds = %394
  %404 = getelementptr inbounds i8, i8* %397, i64 1, !dbg !1353
  store i8* %404, i8** %396, align 8, !dbg !1353, !tbaa !1354
  store i8 92, i8* %397, align 1, !dbg !1353, !tbaa !1091
  br label %405, !dbg !1353

405:                                              ; preds = %403, %401, %393
  call fastcc void @print_filename(i8* %370, i1 zeroext %388) #25, !dbg !1358
  %406 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.69, i64 0, i64 0), i32 5) #25, !dbg !1359
  %407 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.68, i64 0, i64 0), i8* %406) #25, !dbg !1359
  br label %483, !dbg !1360

408:                                              ; preds = %387
  %409 = load i1, i1* @ignore_missing, align 1, !dbg !1361
  %410 = load i8, i8* %6, align 1
  %411 = icmp ne i8 %410, 0
  %412 = and i1 %409, %411, !dbg !1362
  call void @llvm.dbg.value(metadata i8 %410, metadata !176, metadata !DIExpression()) #25, !dbg !1335
  br i1 %412, label %483, label %413, !dbg !1362

413:                                              ; preds = %408
  %414 = load i1, i1* @digest_hex_bytes, align 8, !dbg !1363
  %415 = select i1 %414, i64 16, i64 0, !dbg !1364
  call void @llvm.dbg.value(metadata i64 %415, metadata !178, metadata !DIExpression()) #25, !dbg !1365
  call void @llvm.dbg.value(metadata i64 0, metadata !182, metadata !DIExpression()) #25, !dbg !1365
  br i1 %414, label %416, label %452, !dbg !1366

416:                                              ; preds = %413
  %417 = tail call i32** @__ctype_tolower_loc() #29, !dbg !1033
  %418 = load i32*, i32** %417, align 8, !tbaa !787
  br label %419, !dbg !1366

419:                                              ; preds = %449, %416
  %420 = phi i64 [ 0, %416 ], [ %450, %449 ]
  call void @llvm.dbg.value(metadata i64 %420, metadata !182, metadata !DIExpression()) #25, !dbg !1365
  %421 = shl nuw i64 %420, 1, !dbg !1367
  %422 = getelementptr inbounds i8, i8* %369, i64 %421, !dbg !1367
  %423 = load i8, i8* %422, align 1, !dbg !1367, !tbaa !1091
  %424 = zext i8 %423 to i64, !dbg !1367
  %425 = getelementptr inbounds i32, i32* %418, i64 %424, !dbg !1367
  %426 = load i32, i32* %425, align 4, !dbg !1367, !tbaa !1016
  call void @llvm.dbg.value(metadata i32 %426, metadata !183, metadata !DIExpression()) #25, !dbg !1369
  %427 = getelementptr inbounds [20 x i8], [20 x i8]* %3, i64 0, i64 %420, !dbg !1370
  %428 = load i8, i8* %427, align 1, !dbg !1370, !tbaa !1091
  %429 = zext i8 %428 to i32, !dbg !1370
  %430 = lshr i32 %429, 4, !dbg !1371
  %431 = zext i32 %430 to i64, !dbg !1372
  %432 = getelementptr inbounds [16 x i8], [16 x i8]* @digest_check.bin2hex, i64 0, i64 %431, !dbg !1372
  %433 = load i8, i8* %432, align 1, !dbg !1372, !tbaa !1091
  %434 = sext i8 %433 to i32, !dbg !1372
  %435 = icmp eq i32 %426, %434, !dbg !1373
  br i1 %435, label %436, label %452, !dbg !1374

436:                                              ; preds = %419
  %437 = or i64 %421, 1, !dbg !1375
  %438 = getelementptr inbounds i8, i8* %369, i64 %437, !dbg !1375
  %439 = load i8, i8* %438, align 1, !dbg !1375, !tbaa !1091
  %440 = zext i8 %439 to i64, !dbg !1375
  %441 = getelementptr inbounds i32, i32* %418, i64 %440, !dbg !1375
  %442 = load i32, i32* %441, align 4, !dbg !1375, !tbaa !1016
  call void @llvm.dbg.value(metadata i32 %442, metadata !189, metadata !DIExpression()) #25, !dbg !1377
  %443 = and i32 %429, 15, !dbg !1378
  %444 = zext i32 %443 to i64
  %445 = getelementptr inbounds [16 x i8], [16 x i8]* @digest_check.bin2hex, i64 0, i64 %444, !dbg !1379
  %446 = load i8, i8* %445, align 1, !dbg !1379, !tbaa !1091
  %447 = sext i8 %446 to i32, !dbg !1380
  %448 = icmp eq i32 %442, %447, !dbg !1381
  br i1 %448, label %449, label %452, !dbg !1382

449:                                              ; preds = %436
  %450 = add nuw nsw i64 %420, 1, !dbg !1383
  call void @llvm.dbg.value(metadata i64 %450, metadata !182, metadata !DIExpression()) #25, !dbg !1365
  %451 = icmp eq i64 %450, %415, !dbg !1384
  br i1 %451, label %452, label %419, !dbg !1366, !llvm.loop !1385

452:                                              ; preds = %449, %436, %419, %413
  %453 = phi i64 [ 0, %413 ], [ %415, %449 ], [ %420, %436 ], [ %420, %419 ], !dbg !1387
  %454 = icmp eq i64 %453, %415, !dbg !1388
  %455 = add i64 %140, 1, !dbg !1390
  %456 = select i1 %454, i8 1, i8 %136, !dbg !1390
  %457 = select i1 %454, i64 %140, i64 %455, !dbg !1390
  call void @llvm.dbg.value(metadata i64 %457, metadata !154, metadata !DIExpression()) #25, !dbg !1033
  call void @llvm.dbg.value(metadata i8 %456, metadata !157, metadata !DIExpression()) #25, !dbg !1033
  %458 = load i1, i1* @status_only, align 1, !dbg !1391
  br i1 %458, label %483, label %459, !dbg !1393

459:                                              ; preds = %452
  br i1 %454, label %460, label %462, !dbg !1394

460:                                              ; preds = %459
  %461 = load i1, i1* @quiet, align 1, !dbg !1397
  br i1 %461, label %483, label %462, !dbg !1398

462:                                              ; preds = %460, %459
  br i1 %388, label %463, label %474, !dbg !1399

463:                                              ; preds = %462
  call void @llvm.dbg.value(metadata i32 92, metadata !1345, metadata !DIExpression()) #25, !dbg !1401
  %464 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1404, !tbaa !787
  %465 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %464, i64 0, i32 5, !dbg !1404
  %466 = load i8*, i8** %465, align 8, !dbg !1404, !tbaa !1354
  %467 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %464, i64 0, i32 6, !dbg !1404
  %468 = load i8*, i8** %467, align 8, !dbg !1404, !tbaa !1356
  %469 = icmp ult i8* %466, %468, !dbg !1404
  br i1 %469, label %472, label %470, !dbg !1404, !prof !1357

470:                                              ; preds = %463
  %471 = call i32 @__overflow(%struct._IO_FILE* nonnull %464, i32 92) #25, !dbg !1404
  br label %474, !dbg !1404

472:                                              ; preds = %463
  %473 = getelementptr inbounds i8, i8* %466, i64 1, !dbg !1404
  store i8* %473, i8** %465, align 8, !dbg !1404, !tbaa !1354
  store i8 92, i8* %466, align 1, !dbg !1404, !tbaa !1091
  br label %474, !dbg !1404

474:                                              ; preds = %472, %470, %462
  call fastcc void @print_filename(i8* %370, i1 zeroext %388) #25, !dbg !1405
  br i1 %454, label %478, label %475, !dbg !1406

475:                                              ; preds = %474
  %476 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.70, i64 0, i64 0), i32 5) #25, !dbg !1407
  %477 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.68, i64 0, i64 0), i8* %476) #25, !dbg !1407
  br label %483, !dbg !1407

478:                                              ; preds = %474
  %479 = load i1, i1* @quiet, align 1, !dbg !1409
  br i1 %479, label %483, label %480, !dbg !1411

480:                                              ; preds = %478
  %481 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.71, i64 0, i64 0), i32 5) #25, !dbg !1412
  %482 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.68, i64 0, i64 0), i8* %481) #25, !dbg !1412
  br label %483, !dbg !1412

483:                                              ; preds = %480, %478, %475, %460, %452, %408, %405, %390
  %484 = phi i8 [ %136, %390 ], [ %136, %405 ], [ %136, %408 ], [ %136, %475 ], [ 1, %480 ], [ 1, %478 ], [ %456, %452 ], [ 1, %460 ], !dbg !1063
  %485 = phi i64 [ %391, %390 ], [ %391, %405 ], [ %139, %408 ], [ %139, %475 ], [ %139, %480 ], [ %139, %478 ], [ %139, %452 ], [ %139, %460 ], !dbg !1033
  %486 = phi i64 [ %140, %390 ], [ %140, %405 ], [ %140, %408 ], [ %455, %475 ], [ %140, %480 ], [ %140, %478 ], [ %457, %452 ], [ %140, %460 ], !dbg !1033
  call void @llvm.dbg.value(metadata i64 %486, metadata !154, metadata !DIExpression()) #25, !dbg !1033
  call void @llvm.dbg.value(metadata i64 %485, metadata !155, metadata !DIExpression()) #25, !dbg !1033
  call void @llvm.dbg.value(metadata i8 %484, metadata !157, metadata !DIExpression()) #25, !dbg !1033
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %6) #25, !dbg !1413
  br label %487

487:                                              ; preds = %483, %380, %151
  %488 = phi i8 [ %484, %483 ], [ %136, %380 ], [ %136, %151 ]
  %489 = phi i8 [ 1, %483 ], [ %138, %380 ], [ %138, %151 ]
  %490 = phi i64 [ %485, %483 ], [ %139, %380 ], [ %139, %151 ]
  %491 = phi i64 [ %486, %483 ], [ %140, %380 ], [ %140, %151 ]
  %492 = phi i64 [ %141, %483 ], [ %381, %380 ], [ %141, %151 ]
  %493 = phi i64 [ %142, %483 ], [ %375, %380 ], [ %142, %151 ]
  call void @llvm.dbg.value(metadata i64 undef, metadata !152, metadata !DIExpression()) #25, !dbg !1033
  call void @llvm.dbg.value(metadata i64 undef, metadata !153, metadata !DIExpression()) #25, !dbg !1033
  call void @llvm.dbg.value(metadata i64 undef, metadata !154, metadata !DIExpression()) #25, !dbg !1033
  call void @llvm.dbg.value(metadata i64 undef, metadata !155, metadata !DIExpression()) #25, !dbg !1033
  call void @llvm.dbg.value(metadata i8 undef, metadata !156, metadata !DIExpression()) #25, !dbg !1033
  call void @llvm.dbg.value(metadata i8 undef, metadata !157, metadata !DIExpression()) #25, !dbg !1033
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %132, metadata !1414, metadata !DIExpression()) #25, !dbg !1419
  %494 = load i32, i32* %134, align 8, !dbg !1421, !tbaa !1422
  %495 = and i32 %494, 48, !dbg !1423
  %496 = icmp eq i32 %495, 0, !dbg !1423
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %132, metadata !1424, metadata !DIExpression()) #25, !dbg !1427
  br i1 %496, label %135, label %497, !dbg !1423, !llvm.loop !1429

497:                                              ; preds = %487, %148
  %498 = phi i64 [ %493, %487 ], [ %142, %148 ]
  %499 = phi i64 [ %492, %487 ], [ %141, %148 ]
  %500 = phi i64 [ %491, %487 ], [ %140, %148 ]
  %501 = phi i64 [ %490, %487 ], [ %139, %148 ]
  %502 = phi i8 [ %489, %487 ], [ %138, %148 ]
  %503 = phi i8 [ %488, %487 ], [ %136, %148 ]
  %504 = load i8*, i8** %4, align 8, !dbg !1431, !tbaa !787
  call void @llvm.dbg.value(metadata i8* %504, metadata !162, metadata !DIExpression()) #25, !dbg !1033
  call void @free(i8* %504) #25, !dbg !1432
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %132, metadata !1424, metadata !DIExpression()) #25, !dbg !1433
  %505 = load i32, i32* %134, align 8, !dbg !1436, !tbaa !1422
  %506 = and i32 %505, 32, !dbg !1437
  %507 = icmp eq i32 %506, 0, !dbg !1437
  br i1 %507, label %511, label %508, !dbg !1438

508:                                              ; preds = %497
  %509 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.72, i64 0, i64 0), i32 5) #25, !dbg !1439
  %510 = call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %133) #25, !dbg !1441
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %509, i8* %510) #25, !dbg !1442
  br label %560, !dbg !1443

511:                                              ; preds = %497
  br i1 %120, label %519, label %512, !dbg !1444

512:                                              ; preds = %511
  %513 = call i32 @rpl_fclose(%struct._IO_FILE* nonnull %132) #25, !dbg !1446
  %514 = icmp eq i32 %513, 0, !dbg !1447
  br i1 %514, label %519, label %515, !dbg !1448

515:                                              ; preds = %512
  %516 = tail call i32* @__errno_location() #29, !dbg !1449
  %517 = load i32, i32* %516, align 4, !dbg !1449, !tbaa !1016
  %518 = call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %133) #25, !dbg !1451
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %517, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.65, i64 0, i64 0), i8* %518) #25, !dbg !1452
  br label %560, !dbg !1453

519:                                              ; preds = %512, %511
  %520 = and i8 %502, 1, !dbg !1454
  %521 = icmp eq i8 %520, 0, !dbg !1454
  br i1 %521, label %546, label %522, !dbg !1456

522:                                              ; preds = %519
  %523 = load i1, i1* @status_only, align 1, !dbg !1457
  br i1 %523, label %524, label %526, !dbg !1460

524:                                              ; preds = %522
  %525 = and i8 %503, 1, !dbg !1461
  br label %549, !dbg !1460

526:                                              ; preds = %522
  %527 = icmp eq i64 %498, 0, !dbg !1462
  br i1 %527, label %530, label %528, !dbg !1465

528:                                              ; preds = %526
  %529 = call i8* @dcngettext(i8* null, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.74, i64 0, i64 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.75, i64 0, i64 0), i64 %498, i32 5) #25, !dbg !1466
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %529, i64 %498) #25, !dbg !1467
  br label %530, !dbg !1467

530:                                              ; preds = %528, %526
  %531 = icmp eq i64 %501, 0, !dbg !1468
  br i1 %531, label %534, label %532, !dbg !1470

532:                                              ; preds = %530
  %533 = call i8* @dcngettext(i8* null, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.76, i64 0, i64 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.77, i64 0, i64 0), i64 %501, i32 5) #25, !dbg !1471
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %533, i64 %501) #25, !dbg !1472
  br label %534, !dbg !1472

534:                                              ; preds = %532, %530
  %535 = icmp eq i64 %500, 0, !dbg !1473
  br i1 %535, label %538, label %536, !dbg !1475

536:                                              ; preds = %534
  %537 = call i8* @dcngettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.78, i64 0, i64 0), i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.79, i64 0, i64 0), i64 %500, i32 5) #25, !dbg !1476
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %537, i64 %500) #25, !dbg !1477
  br label %538, !dbg !1477

538:                                              ; preds = %536, %534
  %539 = load i1, i1* @ignore_missing, align 1, !dbg !1478
  %540 = and i8 %503, 1
  %541 = icmp eq i8 %540, 0
  %542 = and i1 %541, %539, !dbg !1480
  br i1 %542, label %543, label %549, !dbg !1480

543:                                              ; preds = %538
  %544 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.80, i64 0, i64 0), i32 5) #25, !dbg !1481
  %545 = call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %133) #25, !dbg !1482
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %544, i8* %545) #25, !dbg !1483
  br label %560, !dbg !1484

546:                                              ; preds = %519
  %547 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.73, i64 0, i64 0), i32 5) #25, !dbg !1485
  %548 = call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %133) #25, !dbg !1487
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %547, i8* %548, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)) #25, !dbg !1488
  br label %560, !dbg !1489

549:                                              ; preds = %538, %524
  %550 = phi i8 [ %525, %524 ], [ %540, %538 ], !dbg !1461
  %551 = icmp ne i8 %550, 0, !dbg !1461
  %552 = or i64 %501, %500, !dbg !1484
  %553 = icmp eq i64 %552, 0, !dbg !1484
  %554 = and i1 %553, %551, !dbg !1484
  br i1 %554, label %555, label %560, !dbg !1484

555:                                              ; preds = %549
  %556 = load i1, i1* @strict, align 1, !dbg !1490
  %557 = icmp eq i64 %499, 0, !dbg !1491
  %558 = xor i1 %556, true, !dbg !1491
  %559 = or i1 %557, %558, !dbg !1491
  br label %560, !dbg !1491

560:                                              ; preds = %127, %508, %515, %543, %546, %549, %555
  %561 = phi i1 [ false, %508 ], [ false, %515 ], [ false, %127 ], [ false, %549 ], [ false, %546 ], [ %559, %555 ], [ false, %543 ], !dbg !1033
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %108) #25, !dbg !1492
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %107) #25, !dbg !1492
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %106) #25, !dbg !1492
  %562 = zext i1 %561 to i8, !dbg !1493
  %563 = and i8 %116, %562, !dbg !1494
  call void @llvm.dbg.value(metadata i8 %563, metadata !884, metadata !DIExpression()), !dbg !903
  br label %660, !dbg !1495

564:                                              ; preds = %114
  call void @llvm.dbg.value(metadata i32 undef, metadata !894, metadata !DIExpression()), !dbg !1496
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %8) #25, !dbg !1497
  call void @llvm.dbg.value(metadata i8* %8, metadata !897, metadata !DIExpression(DW_OP_deref)), !dbg !1496
  %565 = call fastcc zeroext i1 @digest_file(i8* %117, i8* nonnull %9, i8* nonnull %8), !dbg !1498
  br i1 %565, label %566, label %658, !dbg !1499

566:                                              ; preds = %564
  %567 = call i8* @strchr(i8* nonnull dereferenceable(1) %117, i32 92) #26, !dbg !1500
  %568 = icmp eq i8* %567, null, !dbg !1500
  br i1 %568, label %569, label %572, !dbg !1501

569:                                              ; preds = %566
  %570 = call i8* @strchr(i8* nonnull dereferenceable(1) %117, i32 10) #26, !dbg !1502
  %571 = icmp eq i8* %570, null, !dbg !1502
  br i1 %571, label %574, label %572, !dbg !1503

572:                                              ; preds = %566, %569
  %573 = load i1, i1* @delim, align 1, !dbg !1504
  call void @llvm.dbg.value(metadata i1 %573, metadata !898, metadata !DIExpression(DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1505
  br i1 %41, label %595, label %575, !dbg !1506

574:                                              ; preds = %569
  call void @llvm.dbg.value(metadata i1 %573, metadata !898, metadata !DIExpression(DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1505
  br i1 %41, label %607, label %587, !dbg !1506

575:                                              ; preds = %572
  br i1 %573, label %587, label %576, !dbg !1507

576:                                              ; preds = %575
  call void @llvm.dbg.value(metadata i32 92, metadata !1345, metadata !DIExpression()) #25, !dbg !1510
  %577 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1513, !tbaa !787
  %578 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %577, i64 0, i32 5, !dbg !1513
  %579 = load i8*, i8** %578, align 8, !dbg !1513, !tbaa !1354
  %580 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %577, i64 0, i32 6, !dbg !1513
  %581 = load i8*, i8** %580, align 8, !dbg !1513, !tbaa !1356
  %582 = icmp ult i8* %579, %581, !dbg !1513
  br i1 %582, label %585, label %583, !dbg !1513, !prof !1357

583:                                              ; preds = %576
  %584 = call i32 @__overflow(%struct._IO_FILE* nonnull %577, i32 92) #25, !dbg !1513
  br label %587, !dbg !1513

585:                                              ; preds = %576
  %586 = getelementptr inbounds i8, i8* %579, i64 1, !dbg !1513
  store i8* %586, i8** %578, align 8, !dbg !1513, !tbaa !1354
  store i8 92, i8* %579, align 1, !dbg !1513, !tbaa !1091
  br label %587, !dbg !1513

587:                                              ; preds = %574, %585, %583, %575
  %588 = phi i1 [ false, %575 ], [ true, %583 ], [ true, %585 ], [ false, %574 ]
  %589 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1514, !tbaa !787
  %590 = call i32 @fputs_unlocked(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), %struct._IO_FILE* %589), !dbg !1514
  %591 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1515, !tbaa !787
  %592 = call i32 @fputs_unlocked(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.32, i64 0, i64 0), %struct._IO_FILE* %591), !dbg !1515
  call fastcc void @print_filename(i8* %117, i1 zeroext %588), !dbg !1516
  %593 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1517, !tbaa !787
  %594 = call i32 @fputs_unlocked(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.33, i64 0, i64 0), %struct._IO_FILE* %593), !dbg !1517
  br label %607, !dbg !1518

595:                                              ; preds = %572
  call void @llvm.dbg.value(metadata i1 %573, metadata !898, metadata !DIExpression(DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1505
  br i1 %573, label %607, label %596, !dbg !1520

596:                                              ; preds = %595
  call void @llvm.dbg.value(metadata i32 92, metadata !1345, metadata !DIExpression()) #25, !dbg !1521
  %597 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1523, !tbaa !787
  %598 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %597, i64 0, i32 5, !dbg !1523
  %599 = load i8*, i8** %598, align 8, !dbg !1523, !tbaa !1354
  %600 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %597, i64 0, i32 6, !dbg !1523
  %601 = load i8*, i8** %600, align 8, !dbg !1523, !tbaa !1356
  %602 = icmp ult i8* %599, %601, !dbg !1523
  br i1 %602, label %605, label %603, !dbg !1523, !prof !1357

603:                                              ; preds = %596
  %604 = call i32 @__overflow(%struct._IO_FILE* nonnull %597, i32 92) #25, !dbg !1523
  br label %607, !dbg !1523

605:                                              ; preds = %596
  %606 = getelementptr inbounds i8, i8* %599, i64 1, !dbg !1523
  store i8* %606, i8** %598, align 8, !dbg !1523, !tbaa !1354
  store i8 92, i8* %599, align 1, !dbg !1523, !tbaa !1091
  br label %607, !dbg !1523

607:                                              ; preds = %574, %605, %603, %587, %595
  %608 = phi i1 [ %588, %587 ], [ false, %595 ], [ true, %603 ], [ true, %605 ], [ false, %574 ]
  call void @llvm.dbg.value(metadata i64 0, metadata !901, metadata !DIExpression()), !dbg !1524
  %609 = load i1, i1* @digest_hex_bytes, align 8, !dbg !1525
  br i1 %609, label %611, label %610, !dbg !1527

610:                                              ; preds = %611, %607
  br i1 %41, label %621, label %644, !dbg !1528

611:                                              ; preds = %607, %611
  %612 = phi i64 [ %617, %611 ], [ 0, %607 ]
  call void @llvm.dbg.value(metadata i64 %612, metadata !901, metadata !DIExpression()), !dbg !1524
  %613 = getelementptr inbounds [20 x i8], [20 x i8]* %7, i64 0, i64 %612, !dbg !1529
  %614 = load i8, i8* %613, align 1, !dbg !1529, !tbaa !1091
  %615 = zext i8 %614 to i32, !dbg !1529
  %616 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.34, i64 0, i64 0), i32 %615) #25, !dbg !1529
  %617 = add nuw nsw i64 %612, 1, !dbg !1530
  call void @llvm.dbg.value(metadata i64 %617, metadata !901, metadata !DIExpression()), !dbg !1524
  %618 = load i1, i1* @digest_hex_bytes, align 8, !dbg !1525
  %619 = select i1 %618, i64 16, i64 0, !dbg !1531
  %620 = icmp ult i64 %617, %619, !dbg !1532
  br i1 %620, label %611, label %610, !dbg !1527, !llvm.loop !1533

621:                                              ; preds = %610
  call void @llvm.dbg.value(metadata i32 32, metadata !1345, metadata !DIExpression()) #25, !dbg !1535
  %622 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1539, !tbaa !787
  %623 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %622, i64 0, i32 5, !dbg !1539
  %624 = load i8*, i8** %623, align 8, !dbg !1539, !tbaa !1354
  %625 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %622, i64 0, i32 6, !dbg !1539
  %626 = load i8*, i8** %625, align 8, !dbg !1539, !tbaa !1356
  %627 = icmp ult i8* %624, %626, !dbg !1539
  br i1 %627, label %630, label %628, !dbg !1539, !prof !1357

628:                                              ; preds = %621
  %629 = call i32 @__overflow(%struct._IO_FILE* nonnull %622, i32 32) #25, !dbg !1539
  br label %632, !dbg !1539

630:                                              ; preds = %621
  %631 = getelementptr inbounds i8, i8* %624, i64 1, !dbg !1539
  store i8* %631, i8** %623, align 8, !dbg !1539, !tbaa !1354
  store i8 32, i8* %624, align 1, !dbg !1539, !tbaa !1091
  br label %632, !dbg !1539

632:                                              ; preds = %628, %630
  call void @llvm.dbg.value(metadata i32 undef, metadata !894, metadata !DIExpression()), !dbg !1496
  call void @llvm.dbg.value(metadata i32 %109, metadata !1345, metadata !DIExpression()) #25, !dbg !1540
  %633 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1542, !tbaa !787
  %634 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %633, i64 0, i32 5, !dbg !1542
  %635 = load i8*, i8** %634, align 8, !dbg !1542, !tbaa !1354
  %636 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %633, i64 0, i32 6, !dbg !1542
  %637 = load i8*, i8** %636, align 8, !dbg !1542, !tbaa !1356
  %638 = icmp ult i8* %635, %637, !dbg !1542
  br i1 %638, label %641, label %639, !dbg !1542, !prof !1357

639:                                              ; preds = %632
  %640 = call i32 @__overflow(%struct._IO_FILE* nonnull %633, i32 %109) #25, !dbg !1542
  br label %643, !dbg !1542

641:                                              ; preds = %632
  %642 = getelementptr inbounds i8, i8* %635, i64 1, !dbg !1542
  store i8* %642, i8** %634, align 8, !dbg !1542, !tbaa !1354
  store i8 %110, i8* %635, align 1, !dbg !1542, !tbaa !1091
  br label %643, !dbg !1542

643:                                              ; preds = %639, %641
  call fastcc void @print_filename(i8* %117, i1 zeroext %608), !dbg !1543
  br label %644, !dbg !1544

644:                                              ; preds = %643, %610
  %645 = load i1, i1* @delim, align 1, !dbg !1545
  %646 = select i1 %645, i32 0, i32 10, !dbg !1545
  call void @llvm.dbg.value(metadata i32 %646, metadata !1345, metadata !DIExpression()) #25, !dbg !1546
  %647 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1548, !tbaa !787
  %648 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %647, i64 0, i32 5, !dbg !1548
  %649 = load i8*, i8** %648, align 8, !dbg !1548, !tbaa !1354
  %650 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %647, i64 0, i32 6, !dbg !1548
  %651 = load i8*, i8** %650, align 8, !dbg !1548, !tbaa !1356
  %652 = icmp ult i8* %649, %651, !dbg !1548
  br i1 %652, label %655, label %653, !dbg !1548, !prof !1357

653:                                              ; preds = %644
  %654 = call i32 @__overflow(%struct._IO_FILE* nonnull %647, i32 %646) #25, !dbg !1548
  br label %658, !dbg !1548

655:                                              ; preds = %644
  %656 = trunc i32 %646 to i8, !dbg !1548
  %657 = getelementptr inbounds i8, i8* %649, i64 1, !dbg !1548
  store i8* %657, i8** %648, align 8, !dbg !1548, !tbaa !1354
  store i8 %656, i8* %649, align 1, !dbg !1548, !tbaa !1091
  br label %658, !dbg !1548

658:                                              ; preds = %655, %653, %564
  %659 = phi i8 [ 0, %564 ], [ %116, %653 ], [ %116, %655 ], !dbg !903
  call void @llvm.dbg.value(metadata i8 %659, metadata !884, metadata !DIExpression()), !dbg !903
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %8) #25, !dbg !1549
  br label %660

660:                                              ; preds = %658, %560
  %661 = phi i8 [ %563, %560 ], [ %659, %658 ], !dbg !903
  call void @llvm.dbg.value(metadata i8 %661, metadata !884, metadata !DIExpression()), !dbg !903
  %662 = getelementptr inbounds i8*, i8** %115, i64 1, !dbg !1550
  call void @llvm.dbg.value(metadata i8** %662, metadata !889, metadata !DIExpression()), !dbg !1024
  %663 = icmp ult i8** %662, %101, !dbg !1025
  br i1 %663, label %114, label %111, !dbg !1026, !llvm.loop !1551

664:                                              ; preds = %111
  %665 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !1553, !tbaa !787
  %666 = call i32 @rpl_fclose(%struct._IO_FILE* %665) #25, !dbg !1554
  %667 = icmp eq i32 %666, -1, !dbg !1555
  br i1 %667, label %668, label %672, !dbg !1556

668:                                              ; preds = %664
  %669 = tail call i32* @__errno_location() #29, !dbg !1557
  %670 = load i32, i32* %669, align 4, !dbg !1557, !tbaa !1016
  %671 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.35, i64 0, i64 0), i32 5) #25, !dbg !1557
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %670, i8* %671) #25, !dbg !1557
  unreachable, !dbg !1557

672:                                              ; preds = %664, %111
  %673 = and i8 %112, 1, !dbg !1558
  %674 = xor i8 %673, 1, !dbg !1558
  %675 = zext i8 %674 to i32, !dbg !1558
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %9) #25, !dbg !1559
  ret i32 %675, !dbg !1559

676:                                              ; preds = %301
  call void @llvm.dbg.value(metadata i32 %293, metadata !1220, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)) #25, !dbg !1257
  call void @llvm.dbg.value(metadata i32 %293, metadata !1220, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)) #25, !dbg !1257
  %677 = getelementptr inbounds i8, i8* %294, i64 2, !dbg !1261
  call void @llvm.dbg.value(metadata i8* %677, metadata !1214, metadata !DIExpression()) #25, !dbg !1254
  call void @llvm.dbg.value(metadata i32 %293, metadata !1220, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_plus_uconst, 1, DW_OP_stack_value)) #25, !dbg !1257
  call void @llvm.dbg.value(metadata i32 %293, metadata !1220, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_plus_uconst, 1, DW_OP_stack_value)) #25, !dbg !1257
  call void @llvm.dbg.value(metadata i8* %677, metadata !1214, metadata !DIExpression()) #25, !dbg !1254
  %678 = load i8, i8* %677, align 1, !dbg !1259, !tbaa !1091
  %679 = zext i8 %678 to i64, !dbg !1259
  %680 = getelementptr inbounds i16, i16* %290, i64 %679, !dbg !1259
  %681 = load i16, i16* %680, align 2, !dbg !1259, !tbaa !1231
  %682 = and i16 %681, 4096, !dbg !1259
  %683 = icmp eq i16 %682, 0, !dbg !1259
  br i1 %683, label %374, label %684, !dbg !1260

684:                                              ; preds = %676
  call void @llvm.dbg.value(metadata i32 %293, metadata !1220, metadata !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value)) #25, !dbg !1257
  call void @llvm.dbg.value(metadata i32 %293, metadata !1220, metadata !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value)) #25, !dbg !1257
  %685 = getelementptr inbounds i8, i8* %294, i64 3, !dbg !1261
  call void @llvm.dbg.value(metadata i8* %685, metadata !1214, metadata !DIExpression()) #25, !dbg !1254
  call void @llvm.dbg.value(metadata i32 %293, metadata !1220, metadata !DIExpression(DW_OP_plus_uconst, 2, DW_OP_plus_uconst, 1, DW_OP_stack_value)) #25, !dbg !1257
  call void @llvm.dbg.value(metadata i32 %293, metadata !1220, metadata !DIExpression(DW_OP_plus_uconst, 2, DW_OP_plus_uconst, 1, DW_OP_stack_value)) #25, !dbg !1257
  call void @llvm.dbg.value(metadata i8* %685, metadata !1214, metadata !DIExpression()) #25, !dbg !1254
  %686 = load i8, i8* %685, align 1, !dbg !1259, !tbaa !1091
  %687 = zext i8 %686 to i64, !dbg !1259
  %688 = getelementptr inbounds i16, i16* %290, i64 %687, !dbg !1259
  %689 = load i16, i16* %688, align 2, !dbg !1259, !tbaa !1231
  %690 = and i16 %689, 4096, !dbg !1259
  %691 = icmp eq i16 %690, 0, !dbg !1259
  br i1 %691, label %374, label %692, !dbg !1260

692:                                              ; preds = %684
  call void @llvm.dbg.value(metadata i32 %293, metadata !1220, metadata !DIExpression(DW_OP_plus_uconst, 3, DW_OP_stack_value)) #25, !dbg !1257
  call void @llvm.dbg.value(metadata i32 %293, metadata !1220, metadata !DIExpression(DW_OP_plus_uconst, 3, DW_OP_stack_value)) #25, !dbg !1257
  %693 = getelementptr inbounds i8, i8* %294, i64 4, !dbg !1261
  call void @llvm.dbg.value(metadata i8* %693, metadata !1214, metadata !DIExpression()) #25, !dbg !1254
  %694 = add nuw nsw i32 %293, 4, !dbg !1560
  call void @llvm.dbg.value(metadata i32 %694, metadata !1220, metadata !DIExpression()) #25, !dbg !1257
  %695 = icmp eq i32 %694, 32, !dbg !1561
  br i1 %695, label %309, label %292, !dbg !1258, !llvm.loop !1562
}

; Function Attrs: nounwind
declare !dbg !1564 i8* @bindtextdomain(i8*, i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1567 i8* @textdomain(i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1570 i32 @atexit(void ()*) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare !dbg !1575 noundef i32 @setvbuf(%struct._IO_FILE* nocapture noundef, i8* noundef, i32 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare !dbg !1578 i32 @getopt_long(i32, i8**, i8*, %struct.option*, i32*) local_unnamed_addr #2

declare !dbg !1584 void @error(i32, i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: nounwind readnone willreturn
declare i32* @__errno_location() local_unnamed_addr #9

declare i64 @__getdelim(i8**, i64*, i32, %struct._IO_FILE*) local_unnamed_addr #3

; Function Attrs: nounwind readnone willreturn
declare i16** @__ctype_b_loc() local_unnamed_addr #9

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i8* @strchr(i8*, i32) local_unnamed_addr #6

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc zeroext i1 @digest_file(i8* %0, i8* %1, i8* nocapture %2) unnamed_addr #8 !dbg !1588 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1593, metadata !DIExpression()), !dbg !1600
  call void @llvm.dbg.value(metadata i32* undef, metadata !1594, metadata !DIExpression()), !dbg !1600
  call void @llvm.dbg.value(metadata i8* %1, metadata !1595, metadata !DIExpression()), !dbg !1600
  call void @llvm.dbg.value(metadata i8* %2, metadata !1596, metadata !DIExpression()), !dbg !1600
  %4 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %0, i8* nonnull dereferenceable(2) getelementptr inbounds ([2 x i8], [2 x i8]* @.str.31, i64 0, i64 0)) #26, !dbg !1601
  %5 = icmp eq i32 %4, 0, !dbg !1601
  call void @llvm.dbg.value(metadata i1 %5, metadata !1599, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1600
  store i8 0, i8* %2, align 1, !dbg !1602, !tbaa !1603
  br i1 %5, label %6, label %8, !dbg !1605

6:                                                ; preds = %3
  store i1 true, i1* @have_read_stdin, align 1, !dbg !1606
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !1609, !tbaa !787
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %7, metadata !1597, metadata !DIExpression()), !dbg !1600
  br label %21, !dbg !1610

8:                                                ; preds = %3
  %9 = tail call %struct._IO_FILE* @fopen_safer(i8* %0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.64, i64 0, i64 0)) #25, !dbg !1611
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %9, metadata !1597, metadata !DIExpression()), !dbg !1600
  %10 = icmp eq %struct._IO_FILE* %9, null, !dbg !1613
  br i1 %10, label %11, label %21, !dbg !1615

11:                                               ; preds = %8
  %12 = load i1, i1* @ignore_missing, align 1, !dbg !1616
  %13 = tail call i32* @__errno_location() #29, !dbg !1619
  br i1 %12, label %14, label %18, !dbg !1620

14:                                               ; preds = %11
  %15 = load i32, i32* %13, align 4, !dbg !1621, !tbaa !1016
  %16 = icmp eq i32 %15, 2, !dbg !1622
  br i1 %16, label %17, label %18, !dbg !1623

17:                                               ; preds = %14
  store i8 1, i8* %2, align 1, !dbg !1624, !tbaa !1603
  br label %41, !dbg !1626

18:                                               ; preds = %11, %14
  %19 = load i32, i32* %13, align 4, !dbg !1627, !tbaa !1016
  %20 = tail call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %0) #25, !dbg !1628
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %19, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.65, i64 0, i64 0), i8* %20) #25, !dbg !1629
  br label %41, !dbg !1630

21:                                               ; preds = %8, %6
  %22 = phi %struct._IO_FILE* [ %7, %6 ], [ %9, %8 ], !dbg !1631
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %22, metadata !1597, metadata !DIExpression()), !dbg !1600
  tail call void @fadvise(%struct._IO_FILE* %22, i32 2) #25, !dbg !1632
  %23 = tail call i32 @md5_stream(%struct._IO_FILE* %22, i8* %1) #25, !dbg !1633
  call void @llvm.dbg.value(metadata i32 %23, metadata !1598, metadata !DIExpression()), !dbg !1600
  %24 = icmp eq i32 %23, 0, !dbg !1634
  br i1 %24, label %33, label %25, !dbg !1636

25:                                               ; preds = %21
  %26 = tail call i32* @__errno_location() #29, !dbg !1637
  %27 = load i32, i32* %26, align 4, !dbg !1637, !tbaa !1016
  %28 = tail call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %0) #25, !dbg !1639
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %27, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.65, i64 0, i64 0), i8* %28) #25, !dbg !1640
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !1641, !tbaa !787
  %30 = icmp eq %struct._IO_FILE* %22, %29, !dbg !1643
  br i1 %30, label %41, label %31, !dbg !1644

31:                                               ; preds = %25
  %32 = tail call i32 @rpl_fclose(%struct._IO_FILE* %22) #25, !dbg !1645
  br label %41, !dbg !1645

33:                                               ; preds = %21
  br i1 %5, label %41, label %34, !dbg !1646

34:                                               ; preds = %33
  %35 = tail call i32 @rpl_fclose(%struct._IO_FILE* %22) #25, !dbg !1648
  %36 = icmp eq i32 %35, 0, !dbg !1649
  br i1 %36, label %41, label %37, !dbg !1650

37:                                               ; preds = %34
  %38 = tail call i32* @__errno_location() #29, !dbg !1651
  %39 = load i32, i32* %38, align 4, !dbg !1651, !tbaa !1016
  %40 = tail call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %0) #25, !dbg !1653
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %39, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.65, i64 0, i64 0), i8* %40) #25, !dbg !1654
  br label %41, !dbg !1655

41:                                               ; preds = %33, %34, %25, %31, %37, %18, %17
  %42 = phi i1 [ false, %37 ], [ true, %17 ], [ false, %18 ], [ false, %31 ], [ false, %25 ], [ true, %34 ], [ true, %33 ], !dbg !1600
  ret i1 %42, !dbg !1656
}

declare i32 @__overflow(%struct._IO_FILE*, i32) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @print_filename(i8* nocapture readonly %0, i1 zeroext %1) unnamed_addr #8 !dbg !1657 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1661, metadata !DIExpression()), !dbg !1663
  call void @llvm.dbg.value(metadata i1 %1, metadata !1662, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1663
  br i1 %1, label %3, label %6, !dbg !1664

3:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i8* %0, metadata !1661, metadata !DIExpression()), !dbg !1663
  %4 = load i8, i8* %0, align 1, !dbg !1665, !tbaa !1091
  %5 = icmp eq i8 %4, 0, !dbg !1666
  br i1 %5, label %35, label %9, !dbg !1666

6:                                                ; preds = %2
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1667, !tbaa !787
  %8 = tail call i32 @fputs_unlocked(i8* %0, %struct._IO_FILE* %7), !dbg !1667
  br label %35, !dbg !1670

9:                                                ; preds = %3, %31
  %10 = phi i8 [ %33, %31 ], [ %4, %3 ]
  %11 = phi i8* [ %32, %31 ], [ %0, %3 ]
  call void @llvm.dbg.value(metadata i8* %11, metadata !1661, metadata !DIExpression()), !dbg !1663
  %12 = sext i8 %10 to i32, !dbg !1671
  switch i32 %12, label %19 [
    i32 10, label %13
    i32 92, label %16
  ], !dbg !1673

13:                                               ; preds = %9
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1674, !tbaa !787
  %15 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.81, i64 0, i64 0), %struct._IO_FILE* %14), !dbg !1674
  br label %31, !dbg !1676

16:                                               ; preds = %9
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1677, !tbaa !787
  %18 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.82, i64 0, i64 0), %struct._IO_FILE* %17), !dbg !1677
  br label %31, !dbg !1678

19:                                               ; preds = %9
  call void @llvm.dbg.value(metadata i32 %12, metadata !1345, metadata !DIExpression()) #25, !dbg !1679
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1681, !tbaa !787
  %21 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %20, i64 0, i32 5, !dbg !1681
  %22 = load i8*, i8** %21, align 8, !dbg !1681, !tbaa !1354
  %23 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %20, i64 0, i32 6, !dbg !1681
  %24 = load i8*, i8** %23, align 8, !dbg !1681, !tbaa !1356
  %25 = icmp ult i8* %22, %24, !dbg !1681
  br i1 %25, label %29, label %26, !dbg !1681, !prof !1357

26:                                               ; preds = %19
  %27 = and i32 %12, 255, !dbg !1681
  %28 = tail call i32 @__overflow(%struct._IO_FILE* nonnull %20, i32 %27) #25, !dbg !1681
  br label %31, !dbg !1681

29:                                               ; preds = %19
  %30 = getelementptr inbounds i8, i8* %22, i64 1, !dbg !1681
  store i8* %30, i8** %21, align 8, !dbg !1681, !tbaa !1354
  store i8 %10, i8* %22, align 1, !dbg !1681, !tbaa !1091
  br label %31, !dbg !1681

31:                                               ; preds = %29, %26, %16, %13
  %32 = getelementptr inbounds i8, i8* %11, i64 1, !dbg !1682
  call void @llvm.dbg.value(metadata i8* %32, metadata !1661, metadata !DIExpression()), !dbg !1663
  %33 = load i8, i8* %32, align 1, !dbg !1665, !tbaa !1091
  %34 = icmp eq i8 %33, 0, !dbg !1666
  br i1 %34, label %35, label %9, !dbg !1666, !llvm.loop !1683

35:                                               ; preds = %31, %3, %6
  ret void, !dbg !1685
}

; Function Attrs: nounwind readnone willreturn
declare i32** @__ctype_tolower_loc() local_unnamed_addr #9

; Function Attrs: inaccessiblemem_or_argmemonly nounwind willreturn
declare void @free(i8* nocapture noundef) local_unnamed_addr #10

; Function Attrs: nounwind
declare !dbg !1686 i8* @dcngettext(i8*, i8*, i8*, i64, i32) local_unnamed_addr #2

; Function Attrs: nofree norecurse nounwind sspstrong uwtable willreturn writeonly
define dso_local void @close_stdout_set_file_name(i8* %0) local_unnamed_addr #11 !dbg !1689 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1691, metadata !DIExpression()), !dbg !1692
  store i8* %0, i8** @file_name, align 8, !dbg !1693, !tbaa !787
  ret void, !dbg !1694
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable willreturn writeonly
define dso_local void @close_stdout_set_ignore_EPIPE(i1 zeroext %0) local_unnamed_addr #11 !dbg !1695 {
  %2 = zext i1 %0 to i8
  call void @llvm.dbg.value(metadata i8 %2, metadata !1699, metadata !DIExpression()), !dbg !1700
  store i8 %2, i8* @ignore_EPIPE, align 1, !dbg !1701, !tbaa !1603
  ret void, !dbg !1702
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @close_stdout() #8 !dbg !1703 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1708, !tbaa !787
  %2 = tail call i32 @close_stream(%struct._IO_FILE* %1) #25, !dbg !1709
  %3 = icmp eq i32 %2, 0, !dbg !1710
  br i1 %3, label %22, label %4, !dbg !1711

4:                                                ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 1, !dbg !1712, !tbaa !1603, !range !1713
  %6 = icmp eq i8 %5, 0, !dbg !1712
  br i1 %6, label %11, label %7, !dbg !1714

7:                                                ; preds = %4
  %8 = tail call i32* @__errno_location() #29, !dbg !1715
  %9 = load i32, i32* %8, align 4, !dbg !1715, !tbaa !1016
  %10 = icmp eq i32 %9, 32, !dbg !1716
  br i1 %10, label %22, label %11, !dbg !1717

11:                                               ; preds = %7, %4
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.86, i64 0, i64 0), i32 5) #25, !dbg !1718
  call void @llvm.dbg.value(metadata i8* %12, metadata !1705, metadata !DIExpression()), !dbg !1719
  %13 = load i8*, i8** @file_name, align 8, !dbg !1720, !tbaa !787
  %14 = icmp eq i8* %13, null, !dbg !1720
  %15 = tail call i32* @__errno_location() #29, !dbg !1722
  %16 = load i32, i32* %15, align 4, !dbg !1722, !tbaa !1016
  br i1 %14, label %19, label %17, !dbg !1723

17:                                               ; preds = %11
  %18 = tail call i8* @quotearg_colon(i8* nonnull %13) #25, !dbg !1724
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.87, i64 0, i64 0), i8* %18, i8* %12) #25, !dbg !1725
  br label %20, !dbg !1725

19:                                               ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.88, i64 0, i64 0), i8* %12) #25, !dbg !1726
  br label %20

20:                                               ; preds = %19, %17
  %21 = load volatile i32, i32* @exit_failure, align 4, !dbg !1727, !tbaa !1016
  tail call void @_exit(i32 %21) #27, !dbg !1728
  unreachable, !dbg !1728

22:                                               ; preds = %7, %0
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1729, !tbaa !787
  %24 = tail call i32 @close_stream(%struct._IO_FILE* %23) #25, !dbg !1731
  %25 = icmp eq i32 %24, 0, !dbg !1732
  br i1 %25, label %28, label %26, !dbg !1733

26:                                               ; preds = %22
  %27 = load volatile i32, i32* @exit_failure, align 4, !dbg !1734, !tbaa !1016
  tail call void @_exit(i32 %27) #27, !dbg !1735
  unreachable, !dbg !1735

28:                                               ; preds = %22
  ret void, !dbg !1736
}

; Function Attrs: noreturn
declare void @_exit(i32) local_unnamed_addr #12

; Function Attrs: nofree norecurse nounwind sspstrong uwtable willreturn writeonly
define dso_local void @md5_init_ctx(%struct.md5_ctx* nocapture %0) local_unnamed_addr #11 !dbg !1737 {
  call void @llvm.dbg.value(metadata %struct.md5_ctx* %0, metadata !1761, metadata !DIExpression()), !dbg !1762
  %2 = bitcast %struct.md5_ctx* %0 to <4 x i32>*, !dbg !1763
  store <4 x i32> <i32 1732584193, i32 -271733879, i32 -1732584194, i32 271733878>, <4 x i32>* %2, align 4, !dbg !1763, !tbaa !1016
  %3 = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %0, i64 0, i32 4, i64 1, !dbg !1764
  store i32 0, i32* %3, align 4, !dbg !1765, !tbaa !1016
  %4 = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %0, i64 0, i32 4, i64 0, !dbg !1766
  store i32 0, i32* %4, align 4, !dbg !1767, !tbaa !1016
  %5 = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %0, i64 0, i32 5, !dbg !1768
  store i32 0, i32* %5, align 4, !dbg !1769, !tbaa !1770
  ret void, !dbg !1772
}

; Function Attrs: nofree nounwind sspstrong uwtable
define dso_local i8* @md5_read_ctx(%struct.md5_ctx* nocapture readonly %0, i8* returned %1) local_unnamed_addr #13 !dbg !1773 {
  call void @llvm.dbg.value(metadata %struct.md5_ctx* %0, metadata !1779, metadata !DIExpression()), !dbg !1782
  call void @llvm.dbg.value(metadata i8* %1, metadata !1780, metadata !DIExpression()), !dbg !1782
  call void @llvm.dbg.value(metadata i8* %1, metadata !1781, metadata !DIExpression()), !dbg !1782
  %3 = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %0, i64 0, i32 0, !dbg !1783
  %4 = load i32, i32* %3, align 4, !dbg !1783, !tbaa !1784
  call void @llvm.dbg.value(metadata i8* %1, metadata !1785, metadata !DIExpression()) #25, !dbg !1791
  call void @llvm.dbg.value(metadata i32 %4, metadata !1790, metadata !DIExpression()) #25, !dbg !1791
  call void @llvm.dbg.value(metadata i8* %1, metadata !1793, metadata !DIExpression()) #25, !dbg !1805
  call void @llvm.dbg.value(metadata i8* undef, metadata !1803, metadata !DIExpression()) #25, !dbg !1805
  call void @llvm.dbg.value(metadata i64 4, metadata !1804, metadata !DIExpression()) #25, !dbg !1805
  %5 = bitcast i8* %1 to i32*, !dbg !1807
  store i32 %4, i32* %5, align 1, !dbg !1807
  %6 = getelementptr inbounds i8, i8* %1, i64 4, !dbg !1808
  %7 = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %0, i64 0, i32 1, !dbg !1809
  %8 = load i32, i32* %7, align 4, !dbg !1809, !tbaa !1810
  call void @llvm.dbg.value(metadata i8* %6, metadata !1785, metadata !DIExpression()) #25, !dbg !1811
  call void @llvm.dbg.value(metadata i32 %8, metadata !1790, metadata !DIExpression()) #25, !dbg !1811
  call void @llvm.dbg.value(metadata i8* %6, metadata !1793, metadata !DIExpression()) #25, !dbg !1813
  call void @llvm.dbg.value(metadata i8* undef, metadata !1803, metadata !DIExpression()) #25, !dbg !1813
  call void @llvm.dbg.value(metadata i64 4, metadata !1804, metadata !DIExpression()) #25, !dbg !1813
  %9 = bitcast i8* %6 to i32*, !dbg !1815
  store i32 %8, i32* %9, align 1, !dbg !1815
  %10 = getelementptr inbounds i8, i8* %1, i64 8, !dbg !1816
  %11 = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %0, i64 0, i32 2, !dbg !1817
  %12 = load i32, i32* %11, align 4, !dbg !1817, !tbaa !1818
  call void @llvm.dbg.value(metadata i8* %10, metadata !1785, metadata !DIExpression()) #25, !dbg !1819
  call void @llvm.dbg.value(metadata i32 %12, metadata !1790, metadata !DIExpression()) #25, !dbg !1819
  call void @llvm.dbg.value(metadata i8* %10, metadata !1793, metadata !DIExpression()) #25, !dbg !1821
  call void @llvm.dbg.value(metadata i8* undef, metadata !1803, metadata !DIExpression()) #25, !dbg !1821
  call void @llvm.dbg.value(metadata i64 4, metadata !1804, metadata !DIExpression()) #25, !dbg !1821
  %13 = bitcast i8* %10 to i32*, !dbg !1823
  store i32 %12, i32* %13, align 1, !dbg !1823
  %14 = getelementptr inbounds i8, i8* %1, i64 12, !dbg !1824
  %15 = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %0, i64 0, i32 3, !dbg !1825
  %16 = load i32, i32* %15, align 4, !dbg !1825, !tbaa !1826
  call void @llvm.dbg.value(metadata i8* %14, metadata !1785, metadata !DIExpression()) #25, !dbg !1827
  call void @llvm.dbg.value(metadata i32 %16, metadata !1790, metadata !DIExpression()) #25, !dbg !1827
  call void @llvm.dbg.value(metadata i8* %14, metadata !1793, metadata !DIExpression()) #25, !dbg !1829
  call void @llvm.dbg.value(metadata i8* undef, metadata !1803, metadata !DIExpression()) #25, !dbg !1829
  call void @llvm.dbg.value(metadata i64 4, metadata !1804, metadata !DIExpression()) #25, !dbg !1829
  %17 = bitcast i8* %14 to i32*, !dbg !1831
  store i32 %16, i32* %17, align 1, !dbg !1831
  ret i8* %1, !dbg !1832
}

; Function Attrs: nofree nounwind sspstrong uwtable
define dso_local i8* @md5_finish_ctx(%struct.md5_ctx* %0, i8* returned %1) local_unnamed_addr #13 !dbg !1833 {
  call void @llvm.dbg.value(metadata %struct.md5_ctx* %0, metadata !1837, metadata !DIExpression()), !dbg !1841
  call void @llvm.dbg.value(metadata i8* %1, metadata !1838, metadata !DIExpression()), !dbg !1841
  %3 = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %0, i64 0, i32 5, !dbg !1842
  %4 = load i32, i32* %3, align 4, !dbg !1842, !tbaa !1770
  call void @llvm.dbg.value(metadata i32 %4, metadata !1839, metadata !DIExpression()), !dbg !1841
  %5 = icmp ult i32 %4, 56, !dbg !1843
  %6 = select i1 %5, i64 16, i64 32, !dbg !1844
  call void @llvm.dbg.value(metadata i64 %6, metadata !1840, metadata !DIExpression()), !dbg !1841
  %7 = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %0, i64 0, i32 4, i64 0, !dbg !1845
  %8 = load i32, i32* %7, align 4, !dbg !1846, !tbaa !1016
  %9 = add i32 %8, %4, !dbg !1846
  store i32 %9, i32* %7, align 4, !dbg !1846, !tbaa !1016
  %10 = icmp ult i32 %9, %4, !dbg !1847
  %11 = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %0, i64 0, i32 4, i64 1
  %12 = load i32, i32* %11, align 4, !dbg !1841, !tbaa !1016
  br i1 %10, label %13, label %15, !dbg !1849

13:                                               ; preds = %2
  %14 = add i32 %12, 1, !dbg !1850
  store i32 %14, i32* %11, align 4, !dbg !1850, !tbaa !1016
  br label %15, !dbg !1850

15:                                               ; preds = %2, %13
  %16 = phi i32 [ %14, %13 ], [ %12, %2 ], !dbg !1851
  %17 = shl i32 %9, 3, !dbg !1852
  %18 = add nsw i64 %6, -2, !dbg !1853
  %19 = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %0, i64 0, i32 6, i64 %18, !dbg !1854
  store i32 %17, i32* %19, align 4, !dbg !1855, !tbaa !1016
  %20 = tail call i32 @llvm.fshl.i32(i32 %16, i32 %9, i32 3), !dbg !1851
  %21 = add nsw i64 %6, -1, !dbg !1856
  %22 = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %0, i64 0, i32 6, i64 %21, !dbg !1857
  store i32 %20, i32* %22, align 4, !dbg !1858, !tbaa !1016
  %23 = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %0, i64 0, i32 6, i64 0, !dbg !1859
  %24 = bitcast i32* %23 to i8*, !dbg !1859
  %25 = zext i32 %4 to i64, !dbg !1859
  %26 = getelementptr inbounds i8, i8* %24, i64 %25, !dbg !1859
  %27 = shl nuw nsw i64 %18, 2, !dbg !1860
  %28 = sub nsw i64 %27, %25, !dbg !1861
  call void @llvm.dbg.value(metadata i8* %26, metadata !1793, metadata !DIExpression()) #25, !dbg !1862
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds (<{ i8, [63 x i8] }>, <{ i8, [63 x i8] }>* @fillbuf, i64 0, i32 0), metadata !1803, metadata !DIExpression()) #25, !dbg !1862
  call void @llvm.dbg.value(metadata i64 %28, metadata !1804, metadata !DIExpression()) #25, !dbg !1862
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %26, i8* nonnull align 16 getelementptr inbounds (<{ i8, [63 x i8] }>, <{ i8, [63 x i8] }>* @fillbuf, i64 0, i32 0), i64 %28, i1 false) #25, !dbg !1864
  %29 = shl nuw nsw i64 %6, 2, !dbg !1865
  tail call void @md5_process_block(i8* nonnull %24, i64 %29, %struct.md5_ctx* nonnull %0) #25, !dbg !1866
  call void @llvm.dbg.value(metadata %struct.md5_ctx* %0, metadata !1779, metadata !DIExpression()) #25, !dbg !1867
  call void @llvm.dbg.value(metadata i8* %1, metadata !1780, metadata !DIExpression()) #25, !dbg !1867
  call void @llvm.dbg.value(metadata i8* %1, metadata !1781, metadata !DIExpression()) #25, !dbg !1867
  %30 = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %0, i64 0, i32 0, !dbg !1869
  %31 = load i32, i32* %30, align 4, !dbg !1869, !tbaa !1784
  call void @llvm.dbg.value(metadata i8* %1, metadata !1785, metadata !DIExpression()) #25, !dbg !1870
  call void @llvm.dbg.value(metadata i32 %31, metadata !1790, metadata !DIExpression()) #25, !dbg !1870
  call void @llvm.dbg.value(metadata i8* %1, metadata !1793, metadata !DIExpression()) #25, !dbg !1872
  call void @llvm.dbg.value(metadata i8* undef, metadata !1803, metadata !DIExpression()) #25, !dbg !1872
  call void @llvm.dbg.value(metadata i64 4, metadata !1804, metadata !DIExpression()) #25, !dbg !1872
  %32 = bitcast i8* %1 to i32*, !dbg !1874
  store i32 %31, i32* %32, align 1, !dbg !1874
  %33 = getelementptr inbounds i8, i8* %1, i64 4, !dbg !1875
  %34 = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %0, i64 0, i32 1, !dbg !1876
  %35 = load i32, i32* %34, align 4, !dbg !1876, !tbaa !1810
  call void @llvm.dbg.value(metadata i8* %33, metadata !1785, metadata !DIExpression()) #25, !dbg !1877
  call void @llvm.dbg.value(metadata i32 %35, metadata !1790, metadata !DIExpression()) #25, !dbg !1877
  call void @llvm.dbg.value(metadata i8* %33, metadata !1793, metadata !DIExpression()) #25, !dbg !1879
  call void @llvm.dbg.value(metadata i8* undef, metadata !1803, metadata !DIExpression()) #25, !dbg !1879
  call void @llvm.dbg.value(metadata i64 4, metadata !1804, metadata !DIExpression()) #25, !dbg !1879
  %36 = bitcast i8* %33 to i32*, !dbg !1881
  store i32 %35, i32* %36, align 1, !dbg !1881
  %37 = getelementptr inbounds i8, i8* %1, i64 8, !dbg !1882
  %38 = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %0, i64 0, i32 2, !dbg !1883
  %39 = load i32, i32* %38, align 4, !dbg !1883, !tbaa !1818
  call void @llvm.dbg.value(metadata i8* %37, metadata !1785, metadata !DIExpression()) #25, !dbg !1884
  call void @llvm.dbg.value(metadata i32 %39, metadata !1790, metadata !DIExpression()) #25, !dbg !1884
  call void @llvm.dbg.value(metadata i8* %37, metadata !1793, metadata !DIExpression()) #25, !dbg !1886
  call void @llvm.dbg.value(metadata i8* undef, metadata !1803, metadata !DIExpression()) #25, !dbg !1886
  call void @llvm.dbg.value(metadata i64 4, metadata !1804, metadata !DIExpression()) #25, !dbg !1886
  %40 = bitcast i8* %37 to i32*, !dbg !1888
  store i32 %39, i32* %40, align 1, !dbg !1888
  %41 = getelementptr inbounds i8, i8* %1, i64 12, !dbg !1889
  %42 = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %0, i64 0, i32 3, !dbg !1890
  %43 = load i32, i32* %42, align 4, !dbg !1890, !tbaa !1826
  call void @llvm.dbg.value(metadata i8* %41, metadata !1785, metadata !DIExpression()) #25, !dbg !1891
  call void @llvm.dbg.value(metadata i32 %43, metadata !1790, metadata !DIExpression()) #25, !dbg !1891
  call void @llvm.dbg.value(metadata i8* %41, metadata !1793, metadata !DIExpression()) #25, !dbg !1893
  call void @llvm.dbg.value(metadata i8* undef, metadata !1803, metadata !DIExpression()) #25, !dbg !1893
  call void @llvm.dbg.value(metadata i64 4, metadata !1804, metadata !DIExpression()) #25, !dbg !1893
  %44 = bitcast i8* %41 to i32*, !dbg !1895
  store i32 %43, i32* %44, align 1, !dbg !1895
  ret i8* %1, !dbg !1896
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #1

; Function Attrs: nofree nounwind sspstrong uwtable
define dso_local void @md5_process_block(i8* readonly %0, i64 %1, %struct.md5_ctx* nocapture %2) local_unnamed_addr #13 !dbg !1897 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1901, metadata !DIExpression()), !dbg !1923
  call void @llvm.dbg.value(metadata i64 %1, metadata !1902, metadata !DIExpression()), !dbg !1923
  call void @llvm.dbg.value(metadata %struct.md5_ctx* %2, metadata !1903, metadata !DIExpression()), !dbg !1923
  %4 = bitcast i8* %0 to i32*, !dbg !1924
  call void @llvm.dbg.value(metadata i32* %4, metadata !1906, metadata !DIExpression()), !dbg !1923
  %5 = lshr i64 %1, 2, !dbg !1925
  call void @llvm.dbg.value(metadata i64 %5, metadata !1909, metadata !DIExpression()), !dbg !1923
  %6 = getelementptr inbounds i32, i32* %4, i64 %5, !dbg !1926
  call void @llvm.dbg.value(metadata i32* %6, metadata !1910, metadata !DIExpression()), !dbg !1923
  %7 = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %2, i64 0, i32 0, !dbg !1927
  %8 = load i32, i32* %7, align 4, !dbg !1927, !tbaa !1784
  call void @llvm.dbg.value(metadata i32 %8, metadata !1911, metadata !DIExpression()), !dbg !1923
  %9 = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %2, i64 0, i32 1, !dbg !1928
  %10 = load i32, i32* %9, align 4, !dbg !1928, !tbaa !1810
  call void @llvm.dbg.value(metadata i32 %10, metadata !1912, metadata !DIExpression()), !dbg !1923
  %11 = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %2, i64 0, i32 2, !dbg !1929
  %12 = load i32, i32* %11, align 4, !dbg !1929, !tbaa !1818
  call void @llvm.dbg.value(metadata i32 %12, metadata !1913, metadata !DIExpression()), !dbg !1923
  %13 = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %2, i64 0, i32 3, !dbg !1930
  %14 = load i32, i32* %13, align 4, !dbg !1930, !tbaa !1826
  call void @llvm.dbg.value(metadata i32 %14, metadata !1914, metadata !DIExpression()), !dbg !1923
  %15 = trunc i64 %1 to i32, !dbg !1931
  call void @llvm.dbg.value(metadata i32 %15, metadata !1915, metadata !DIExpression()), !dbg !1923
  %16 = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %2, i64 0, i32 4, i64 0, !dbg !1932
  %17 = load i32, i32* %16, align 4, !dbg !1933, !tbaa !1016
  %18 = add i32 %17, %15, !dbg !1933
  store i32 %18, i32* %16, align 4, !dbg !1933, !tbaa !1016
  %19 = lshr i64 %1, 32, !dbg !1934
  %20 = icmp ult i32 %18, %15, !dbg !1935
  %21 = zext i1 %20 to i64, !dbg !1936
  %22 = add nuw nsw i64 %19, %21, !dbg !1937
  %23 = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %2, i64 0, i32 4, i64 1, !dbg !1938
  %24 = load i32, i32* %23, align 4, !dbg !1939, !tbaa !1016
  %25 = trunc i64 %22 to i32, !dbg !1939
  %26 = add i32 %24, %25, !dbg !1939
  store i32 %26, i32* %23, align 4, !dbg !1939, !tbaa !1016
  call void @llvm.dbg.value(metadata i32* %4, metadata !1906, metadata !DIExpression()), !dbg !1923
  call void @llvm.dbg.value(metadata i32 %8, metadata !1911, metadata !DIExpression()), !dbg !1923
  call void @llvm.dbg.value(metadata i32 %10, metadata !1912, metadata !DIExpression()), !dbg !1923
  call void @llvm.dbg.value(metadata i32 %12, metadata !1913, metadata !DIExpression()), !dbg !1923
  call void @llvm.dbg.value(metadata i32 %14, metadata !1914, metadata !DIExpression()), !dbg !1923
  %27 = icmp ugt i32* %6, %4, !dbg !1940
  br i1 %27, label %28, label %566, !dbg !1941

28:                                               ; preds = %3, %28
  %29 = phi i32* [ %191, %28 ], [ %4, %3 ]
  %30 = phi i32 [ %560, %28 ], [ %8, %3 ]
  %31 = phi i32 [ %562, %28 ], [ %10, %3 ]
  %32 = phi i32 [ %563, %28 ], [ %12, %3 ]
  %33 = phi i32 [ %564, %28 ], [ %14, %3 ]
  call void @llvm.dbg.value(metadata i32* %29, metadata !1906, metadata !DIExpression()), !dbg !1923
  call void @llvm.dbg.value(metadata i32 %30, metadata !1911, metadata !DIExpression()), !dbg !1923
  call void @llvm.dbg.value(metadata i32 %31, metadata !1912, metadata !DIExpression()), !dbg !1923
  call void @llvm.dbg.value(metadata i32 %32, metadata !1913, metadata !DIExpression()), !dbg !1923
  call void @llvm.dbg.value(metadata i32 %33, metadata !1914, metadata !DIExpression()), !dbg !1923
  call void @llvm.dbg.value(metadata i32* undef, metadata !1916, metadata !DIExpression()), !dbg !1942
  call void @llvm.dbg.value(metadata i32 %30, metadata !1919, metadata !DIExpression()), !dbg !1942
  call void @llvm.dbg.value(metadata i32 %31, metadata !1920, metadata !DIExpression()), !dbg !1942
  call void @llvm.dbg.value(metadata i32 %32, metadata !1921, metadata !DIExpression()), !dbg !1942
  call void @llvm.dbg.value(metadata i32 %33, metadata !1922, metadata !DIExpression()), !dbg !1942
  %34 = xor i32 %32, %33, !dbg !1943
  %35 = and i32 %31, %34, !dbg !1943
  %36 = xor i32 %35, %33, !dbg !1943
  %37 = load i32, i32* %29, align 4, !dbg !1943, !tbaa !1016
  call void @llvm.dbg.value(metadata i32 %37, metadata !1904, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !1923
  %38 = add i32 %30, -680876936, !dbg !1943
  %39 = add i32 %38, %36, !dbg !1943
  %40 = add i32 %39, %37, !dbg !1943
  call void @llvm.dbg.value(metadata i32 %40, metadata !1911, metadata !DIExpression()), !dbg !1923
  %41 = getelementptr inbounds i32, i32* %29, i64 1, !dbg !1943
  call void @llvm.dbg.value(metadata i32* %41, metadata !1906, metadata !DIExpression()), !dbg !1923
  %42 = tail call i32 @llvm.fshl.i32(i32 %40, i32 %40, i32 7), !dbg !1943
  call void @llvm.dbg.value(metadata i32 %42, metadata !1911, metadata !DIExpression()), !dbg !1923
  %43 = add i32 %42, %31, !dbg !1943
  call void @llvm.dbg.value(metadata i32 %43, metadata !1911, metadata !DIExpression()), !dbg !1923
  %44 = xor i32 %31, %32, !dbg !1945
  %45 = and i32 %43, %44, !dbg !1945
  %46 = xor i32 %45, %32, !dbg !1945
  %47 = load i32, i32* %41, align 4, !dbg !1945, !tbaa !1016
  call void @llvm.dbg.value(metadata i32 %47, metadata !1904, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !1923
  %48 = add i32 %33, -389564586, !dbg !1945
  %49 = add i32 %48, %47, !dbg !1945
  %50 = add i32 %49, %46, !dbg !1945
  call void @llvm.dbg.value(metadata i32 %50, metadata !1914, metadata !DIExpression()), !dbg !1923
  %51 = getelementptr inbounds i32, i32* %29, i64 2, !dbg !1945
  call void @llvm.dbg.value(metadata i32* %51, metadata !1906, metadata !DIExpression()), !dbg !1923
  %52 = tail call i32 @llvm.fshl.i32(i32 %50, i32 %50, i32 12), !dbg !1945
  call void @llvm.dbg.value(metadata i32 %52, metadata !1914, metadata !DIExpression()), !dbg !1923
  %53 = add i32 %52, %43, !dbg !1945
  call void @llvm.dbg.value(metadata i32 %53, metadata !1914, metadata !DIExpression()), !dbg !1923
  %54 = xor i32 %43, %31, !dbg !1947
  %55 = and i32 %53, %54, !dbg !1947
  %56 = xor i32 %55, %31, !dbg !1947
  %57 = load i32, i32* %51, align 4, !dbg !1947, !tbaa !1016
  call void @llvm.dbg.value(metadata i32 %57, metadata !1904, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 32)), !dbg !1923
  %58 = add i32 %32, 606105819, !dbg !1947
  %59 = add i32 %58, %57, !dbg !1947
  %60 = add i32 %59, %56, !dbg !1947
  call void @llvm.dbg.value(metadata i32 %60, metadata !1913, metadata !DIExpression()), !dbg !1923
  %61 = getelementptr inbounds i32, i32* %29, i64 3, !dbg !1947
  call void @llvm.dbg.value(metadata i32* %61, metadata !1906, metadata !DIExpression()), !dbg !1923
  %62 = tail call i32 @llvm.fshl.i32(i32 %60, i32 %60, i32 17), !dbg !1947
  call void @llvm.dbg.value(metadata i32 %62, metadata !1913, metadata !DIExpression()), !dbg !1923
  %63 = add i32 %62, %53, !dbg !1947
  call void @llvm.dbg.value(metadata i32 %63, metadata !1913, metadata !DIExpression()), !dbg !1923
  %64 = xor i32 %53, %43, !dbg !1949
  %65 = and i32 %63, %64, !dbg !1949
  %66 = xor i32 %65, %43, !dbg !1949
  %67 = load i32, i32* %61, align 4, !dbg !1949, !tbaa !1016
  call void @llvm.dbg.value(metadata i32 %67, metadata !1904, metadata !DIExpression(DW_OP_LLVM_fragment, 96, 32)), !dbg !1923
  %68 = add i32 %31, -1044525330, !dbg !1949
  %69 = add i32 %68, %67, !dbg !1949
  %70 = add i32 %69, %66, !dbg !1949
  call void @llvm.dbg.value(metadata i32 %70, metadata !1912, metadata !DIExpression()), !dbg !1923
  %71 = getelementptr inbounds i32, i32* %29, i64 4, !dbg !1949
  call void @llvm.dbg.value(metadata i32* %71, metadata !1906, metadata !DIExpression()), !dbg !1923
  %72 = tail call i32 @llvm.fshl.i32(i32 %70, i32 %70, i32 22), !dbg !1949
  call void @llvm.dbg.value(metadata i32 %72, metadata !1912, metadata !DIExpression()), !dbg !1923
  %73 = add i32 %72, %63, !dbg !1949
  call void @llvm.dbg.value(metadata i32 %73, metadata !1912, metadata !DIExpression()), !dbg !1923
  %74 = xor i32 %63, %53, !dbg !1951
  %75 = and i32 %73, %74, !dbg !1951
  %76 = xor i32 %75, %53, !dbg !1951
  %77 = load i32, i32* %71, align 4, !dbg !1951, !tbaa !1016
  call void @llvm.dbg.value(metadata i32 %77, metadata !1904, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 32)), !dbg !1923
  %78 = add i32 %77, -176418897, !dbg !1951
  %79 = add i32 %78, %43, !dbg !1951
  %80 = add i32 %79, %76, !dbg !1951
  call void @llvm.dbg.value(metadata i32 %80, metadata !1911, metadata !DIExpression()), !dbg !1923
  %81 = getelementptr inbounds i32, i32* %29, i64 5, !dbg !1951
  call void @llvm.dbg.value(metadata i32* %81, metadata !1906, metadata !DIExpression()), !dbg !1923
  %82 = tail call i32 @llvm.fshl.i32(i32 %80, i32 %80, i32 7), !dbg !1951
  call void @llvm.dbg.value(metadata i32 %82, metadata !1911, metadata !DIExpression()), !dbg !1923
  %83 = add i32 %82, %73, !dbg !1951
  call void @llvm.dbg.value(metadata i32 %83, metadata !1911, metadata !DIExpression()), !dbg !1923
  %84 = xor i32 %73, %63, !dbg !1953
  %85 = and i32 %83, %84, !dbg !1953
  %86 = xor i32 %85, %63, !dbg !1953
  %87 = load i32, i32* %81, align 4, !dbg !1953, !tbaa !1016
  call void @llvm.dbg.value(metadata i32 %87, metadata !1904, metadata !DIExpression(DW_OP_LLVM_fragment, 160, 32)), !dbg !1923
  %88 = add i32 %87, 1200080426, !dbg !1953
  %89 = add i32 %88, %53, !dbg !1953
  %90 = add i32 %89, %86, !dbg !1953
  call void @llvm.dbg.value(metadata i32 %90, metadata !1914, metadata !DIExpression()), !dbg !1923
  %91 = getelementptr inbounds i32, i32* %29, i64 6, !dbg !1953
  call void @llvm.dbg.value(metadata i32* %91, metadata !1906, metadata !DIExpression()), !dbg !1923
  %92 = tail call i32 @llvm.fshl.i32(i32 %90, i32 %90, i32 12), !dbg !1953
  call void @llvm.dbg.value(metadata i32 %92, metadata !1914, metadata !DIExpression()), !dbg !1923
  %93 = add i32 %92, %83, !dbg !1953
  call void @llvm.dbg.value(metadata i32 %93, metadata !1914, metadata !DIExpression()), !dbg !1923
  %94 = xor i32 %83, %73, !dbg !1955
  %95 = and i32 %93, %94, !dbg !1955
  %96 = xor i32 %95, %73, !dbg !1955
  %97 = load i32, i32* %91, align 4, !dbg !1955, !tbaa !1016
  call void @llvm.dbg.value(metadata i32 %97, metadata !1904, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 32)), !dbg !1923
  %98 = add i32 %97, -1473231341, !dbg !1955
  %99 = add i32 %98, %63, !dbg !1955
  %100 = add i32 %99, %96, !dbg !1955
  call void @llvm.dbg.value(metadata i32 %100, metadata !1913, metadata !DIExpression()), !dbg !1923
  %101 = getelementptr inbounds i32, i32* %29, i64 7, !dbg !1955
  call void @llvm.dbg.value(metadata i32* %101, metadata !1906, metadata !DIExpression()), !dbg !1923
  %102 = tail call i32 @llvm.fshl.i32(i32 %100, i32 %100, i32 17), !dbg !1955
  call void @llvm.dbg.value(metadata i32 %102, metadata !1913, metadata !DIExpression()), !dbg !1923
  %103 = add i32 %102, %93, !dbg !1955
  call void @llvm.dbg.value(metadata i32 %103, metadata !1913, metadata !DIExpression()), !dbg !1923
  %104 = xor i32 %93, %83, !dbg !1957
  %105 = and i32 %103, %104, !dbg !1957
  %106 = xor i32 %105, %83, !dbg !1957
  %107 = load i32, i32* %101, align 4, !dbg !1957, !tbaa !1016
  call void @llvm.dbg.value(metadata i32 %107, metadata !1904, metadata !DIExpression(DW_OP_LLVM_fragment, 224, 32)), !dbg !1923
  %108 = add i32 %107, -45705983, !dbg !1957
  %109 = add i32 %108, %73, !dbg !1957
  %110 = add i32 %109, %106, !dbg !1957
  call void @llvm.dbg.value(metadata i32 %110, metadata !1912, metadata !DIExpression()), !dbg !1923
  %111 = getelementptr inbounds i32, i32* %29, i64 8, !dbg !1957
  call void @llvm.dbg.value(metadata i32* %111, metadata !1906, metadata !DIExpression()), !dbg !1923
  %112 = tail call i32 @llvm.fshl.i32(i32 %110, i32 %110, i32 22), !dbg !1957
  call void @llvm.dbg.value(metadata i32 %112, metadata !1912, metadata !DIExpression()), !dbg !1923
  %113 = add i32 %112, %103, !dbg !1957
  call void @llvm.dbg.value(metadata i32 %113, metadata !1912, metadata !DIExpression()), !dbg !1923
  %114 = xor i32 %103, %93, !dbg !1959
  %115 = and i32 %113, %114, !dbg !1959
  %116 = xor i32 %115, %93, !dbg !1959
  %117 = load i32, i32* %111, align 4, !dbg !1959, !tbaa !1016
  call void @llvm.dbg.value(metadata i32 %117, metadata !1904, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 32)), !dbg !1923
  %118 = add i32 %117, 1770035416, !dbg !1959
  %119 = add i32 %118, %83, !dbg !1959
  %120 = add i32 %119, %116, !dbg !1959
  call void @llvm.dbg.value(metadata i32 %120, metadata !1911, metadata !DIExpression()), !dbg !1923
  %121 = getelementptr inbounds i32, i32* %29, i64 9, !dbg !1959
  call void @llvm.dbg.value(metadata i32* %121, metadata !1906, metadata !DIExpression()), !dbg !1923
  %122 = tail call i32 @llvm.fshl.i32(i32 %120, i32 %120, i32 7), !dbg !1959
  call void @llvm.dbg.value(metadata i32 %122, metadata !1911, metadata !DIExpression()), !dbg !1923
  %123 = add i32 %122, %113, !dbg !1959
  call void @llvm.dbg.value(metadata i32 %123, metadata !1911, metadata !DIExpression()), !dbg !1923
  %124 = xor i32 %113, %103, !dbg !1961
  %125 = and i32 %123, %124, !dbg !1961
  %126 = xor i32 %125, %103, !dbg !1961
  %127 = load i32, i32* %121, align 4, !dbg !1961, !tbaa !1016
  call void @llvm.dbg.value(metadata i32 %127, metadata !1904, metadata !DIExpression(DW_OP_LLVM_fragment, 288, 32)), !dbg !1923
  %128 = add i32 %127, -1958414417, !dbg !1961
  %129 = add i32 %128, %93, !dbg !1961
  %130 = add i32 %129, %126, !dbg !1961
  call void @llvm.dbg.value(metadata i32 %130, metadata !1914, metadata !DIExpression()), !dbg !1923
  %131 = getelementptr inbounds i32, i32* %29, i64 10, !dbg !1961
  call void @llvm.dbg.value(metadata i32* %131, metadata !1906, metadata !DIExpression()), !dbg !1923
  %132 = tail call i32 @llvm.fshl.i32(i32 %130, i32 %130, i32 12), !dbg !1961
  call void @llvm.dbg.value(metadata i32 %132, metadata !1914, metadata !DIExpression()), !dbg !1923
  %133 = add i32 %132, %123, !dbg !1961
  call void @llvm.dbg.value(metadata i32 %133, metadata !1914, metadata !DIExpression()), !dbg !1923
  %134 = xor i32 %123, %113, !dbg !1963
  %135 = and i32 %133, %134, !dbg !1963
  %136 = xor i32 %135, %113, !dbg !1963
  %137 = load i32, i32* %131, align 4, !dbg !1963, !tbaa !1016
  call void @llvm.dbg.value(metadata i32 %137, metadata !1904, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 32)), !dbg !1923
  %138 = add i32 %137, -42063, !dbg !1963
  %139 = add i32 %138, %103, !dbg !1963
  %140 = add i32 %139, %136, !dbg !1963
  call void @llvm.dbg.value(metadata i32 %140, metadata !1913, metadata !DIExpression()), !dbg !1923
  %141 = getelementptr inbounds i32, i32* %29, i64 11, !dbg !1963
  call void @llvm.dbg.value(metadata i32* %141, metadata !1906, metadata !DIExpression()), !dbg !1923
  %142 = tail call i32 @llvm.fshl.i32(i32 %140, i32 %140, i32 17), !dbg !1963
  call void @llvm.dbg.value(metadata i32 %142, metadata !1913, metadata !DIExpression()), !dbg !1923
  %143 = add i32 %142, %133, !dbg !1963
  call void @llvm.dbg.value(metadata i32 %143, metadata !1913, metadata !DIExpression()), !dbg !1923
  %144 = xor i32 %133, %123, !dbg !1965
  %145 = and i32 %143, %144, !dbg !1965
  %146 = xor i32 %145, %123, !dbg !1965
  %147 = load i32, i32* %141, align 4, !dbg !1965, !tbaa !1016
  call void @llvm.dbg.value(metadata i32 %147, metadata !1904, metadata !DIExpression(DW_OP_LLVM_fragment, 352, 32)), !dbg !1923
  %148 = add i32 %147, -1990404162, !dbg !1965
  %149 = add i32 %148, %113, !dbg !1965
  %150 = add i32 %149, %146, !dbg !1965
  call void @llvm.dbg.value(metadata i32 %150, metadata !1912, metadata !DIExpression()), !dbg !1923
  %151 = getelementptr inbounds i32, i32* %29, i64 12, !dbg !1965
  call void @llvm.dbg.value(metadata i32* %151, metadata !1906, metadata !DIExpression()), !dbg !1923
  %152 = tail call i32 @llvm.fshl.i32(i32 %150, i32 %150, i32 22), !dbg !1965
  call void @llvm.dbg.value(metadata i32 %152, metadata !1912, metadata !DIExpression()), !dbg !1923
  %153 = add i32 %152, %143, !dbg !1965
  call void @llvm.dbg.value(metadata i32 %153, metadata !1912, metadata !DIExpression()), !dbg !1923
  %154 = xor i32 %143, %133, !dbg !1967
  %155 = and i32 %153, %154, !dbg !1967
  %156 = xor i32 %155, %133, !dbg !1967
  %157 = load i32, i32* %151, align 4, !dbg !1967, !tbaa !1016
  call void @llvm.dbg.value(metadata i32 %157, metadata !1904, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 32)), !dbg !1923
  %158 = add i32 %157, 1804603682, !dbg !1967
  %159 = add i32 %158, %123, !dbg !1967
  %160 = add i32 %159, %156, !dbg !1967
  call void @llvm.dbg.value(metadata i32 %160, metadata !1911, metadata !DIExpression()), !dbg !1923
  %161 = getelementptr inbounds i32, i32* %29, i64 13, !dbg !1967
  call void @llvm.dbg.value(metadata i32* %161, metadata !1906, metadata !DIExpression()), !dbg !1923
  %162 = tail call i32 @llvm.fshl.i32(i32 %160, i32 %160, i32 7), !dbg !1967
  call void @llvm.dbg.value(metadata i32 %162, metadata !1911, metadata !DIExpression()), !dbg !1923
  %163 = add i32 %162, %153, !dbg !1967
  call void @llvm.dbg.value(metadata i32 %163, metadata !1911, metadata !DIExpression()), !dbg !1923
  %164 = xor i32 %153, %143, !dbg !1969
  %165 = and i32 %163, %164, !dbg !1969
  %166 = xor i32 %165, %143, !dbg !1969
  %167 = load i32, i32* %161, align 4, !dbg !1969, !tbaa !1016
  call void @llvm.dbg.value(metadata i32 %167, metadata !1904, metadata !DIExpression(DW_OP_LLVM_fragment, 416, 32)), !dbg !1923
  %168 = add i32 %167, -40341101, !dbg !1969
  %169 = add i32 %168, %133, !dbg !1969
  %170 = add i32 %169, %166, !dbg !1969
  call void @llvm.dbg.value(metadata i32 %170, metadata !1914, metadata !DIExpression()), !dbg !1923
  %171 = getelementptr inbounds i32, i32* %29, i64 14, !dbg !1969
  call void @llvm.dbg.value(metadata i32* %171, metadata !1906, metadata !DIExpression()), !dbg !1923
  %172 = tail call i32 @llvm.fshl.i32(i32 %170, i32 %170, i32 12), !dbg !1969
  call void @llvm.dbg.value(metadata i32 %172, metadata !1914, metadata !DIExpression()), !dbg !1923
  %173 = add i32 %172, %163, !dbg !1969
  call void @llvm.dbg.value(metadata i32 %173, metadata !1914, metadata !DIExpression()), !dbg !1923
  %174 = xor i32 %163, %153, !dbg !1971
  %175 = and i32 %173, %174, !dbg !1971
  %176 = xor i32 %175, %153, !dbg !1971
  %177 = load i32, i32* %171, align 4, !dbg !1971, !tbaa !1016
  call void @llvm.dbg.value(metadata i32 %177, metadata !1904, metadata !DIExpression(DW_OP_LLVM_fragment, 448, 32)), !dbg !1923
  %178 = add i32 %177, -1502002290, !dbg !1971
  %179 = add i32 %178, %143, !dbg !1971
  %180 = add i32 %179, %176, !dbg !1971
  call void @llvm.dbg.value(metadata i32 %180, metadata !1913, metadata !DIExpression()), !dbg !1923
  %181 = getelementptr inbounds i32, i32* %29, i64 15, !dbg !1971
  call void @llvm.dbg.value(metadata i32* %181, metadata !1906, metadata !DIExpression()), !dbg !1923
  %182 = tail call i32 @llvm.fshl.i32(i32 %180, i32 %180, i32 17), !dbg !1971
  call void @llvm.dbg.value(metadata i32 %182, metadata !1913, metadata !DIExpression()), !dbg !1923
  %183 = add i32 %182, %173, !dbg !1971
  call void @llvm.dbg.value(metadata i32 %183, metadata !1913, metadata !DIExpression()), !dbg !1923
  %184 = xor i32 %173, %163, !dbg !1973
  %185 = and i32 %183, %184, !dbg !1973
  %186 = xor i32 %185, %163, !dbg !1973
  %187 = load i32, i32* %181, align 4, !dbg !1973, !tbaa !1016
  call void @llvm.dbg.value(metadata i32 %187, metadata !1904, metadata !DIExpression(DW_OP_LLVM_fragment, 480, 32)), !dbg !1923
  %188 = add i32 %187, 1236535329, !dbg !1973
  %189 = add i32 %188, %153, !dbg !1973
  %190 = add i32 %189, %186, !dbg !1973
  call void @llvm.dbg.value(metadata i32 %190, metadata !1912, metadata !DIExpression()), !dbg !1923
  %191 = getelementptr inbounds i32, i32* %29, i64 16, !dbg !1973
  call void @llvm.dbg.value(metadata i32* %191, metadata !1906, metadata !DIExpression()), !dbg !1923
  %192 = tail call i32 @llvm.fshl.i32(i32 %190, i32 %190, i32 22), !dbg !1973
  call void @llvm.dbg.value(metadata i32 %192, metadata !1912, metadata !DIExpression()), !dbg !1923
  %193 = add i32 %192, %183, !dbg !1973
  call void @llvm.dbg.value(metadata i32 %193, metadata !1912, metadata !DIExpression()), !dbg !1923
  %194 = xor i32 %193, %183, !dbg !1975
  %195 = and i32 %194, %173, !dbg !1975
  %196 = xor i32 %195, %183, !dbg !1975
  %197 = add i32 %47, -165796510, !dbg !1975
  %198 = add i32 %197, %163, !dbg !1975
  %199 = add i32 %198, %196, !dbg !1975
  call void @llvm.dbg.value(metadata i32 %199, metadata !1911, metadata !DIExpression()), !dbg !1923
  %200 = tail call i32 @llvm.fshl.i32(i32 %199, i32 %199, i32 5), !dbg !1975
  call void @llvm.dbg.value(metadata i32 %200, metadata !1911, metadata !DIExpression()), !dbg !1923
  %201 = add i32 %200, %193, !dbg !1975
  call void @llvm.dbg.value(metadata i32 %201, metadata !1911, metadata !DIExpression()), !dbg !1923
  %202 = xor i32 %201, %193, !dbg !1977
  %203 = and i32 %202, %183, !dbg !1977
  %204 = xor i32 %203, %193, !dbg !1977
  %205 = add i32 %97, -1069501632, !dbg !1977
  %206 = add i32 %205, %173, !dbg !1977
  %207 = add i32 %206, %204, !dbg !1977
  call void @llvm.dbg.value(metadata i32 %207, metadata !1914, metadata !DIExpression()), !dbg !1923
  %208 = tail call i32 @llvm.fshl.i32(i32 %207, i32 %207, i32 9), !dbg !1977
  call void @llvm.dbg.value(metadata i32 %208, metadata !1914, metadata !DIExpression()), !dbg !1923
  %209 = add i32 %208, %201, !dbg !1977
  call void @llvm.dbg.value(metadata i32 %209, metadata !1914, metadata !DIExpression()), !dbg !1923
  %210 = xor i32 %209, %201, !dbg !1979
  %211 = and i32 %210, %193, !dbg !1979
  %212 = xor i32 %211, %201, !dbg !1979
  %213 = add i32 %147, 643717713, !dbg !1979
  %214 = add i32 %213, %183, !dbg !1979
  %215 = add i32 %214, %212, !dbg !1979
  call void @llvm.dbg.value(metadata i32 %215, metadata !1913, metadata !DIExpression()), !dbg !1923
  %216 = tail call i32 @llvm.fshl.i32(i32 %215, i32 %215, i32 14), !dbg !1979
  call void @llvm.dbg.value(metadata i32 %216, metadata !1913, metadata !DIExpression()), !dbg !1923
  %217 = add i32 %216, %209, !dbg !1979
  call void @llvm.dbg.value(metadata i32 %217, metadata !1913, metadata !DIExpression()), !dbg !1923
  %218 = xor i32 %217, %209, !dbg !1981
  %219 = and i32 %218, %201, !dbg !1981
  %220 = xor i32 %219, %209, !dbg !1981
  %221 = add i32 %37, -373897302, !dbg !1981
  %222 = add i32 %221, %193, !dbg !1981
  %223 = add i32 %222, %220, !dbg !1981
  call void @llvm.dbg.value(metadata i32 %223, metadata !1912, metadata !DIExpression()), !dbg !1923
  %224 = tail call i32 @llvm.fshl.i32(i32 %223, i32 %223, i32 20), !dbg !1981
  call void @llvm.dbg.value(metadata i32 %224, metadata !1912, metadata !DIExpression()), !dbg !1923
  %225 = add i32 %224, %217, !dbg !1981
  call void @llvm.dbg.value(metadata i32 %225, metadata !1912, metadata !DIExpression()), !dbg !1923
  %226 = xor i32 %225, %217, !dbg !1983
  %227 = and i32 %226, %209, !dbg !1983
  %228 = xor i32 %227, %217, !dbg !1983
  %229 = add i32 %87, -701558691, !dbg !1983
  %230 = add i32 %229, %201, !dbg !1983
  %231 = add i32 %230, %228, !dbg !1983
  call void @llvm.dbg.value(metadata i32 %231, metadata !1911, metadata !DIExpression()), !dbg !1923
  %232 = tail call i32 @llvm.fshl.i32(i32 %231, i32 %231, i32 5), !dbg !1983
  call void @llvm.dbg.value(metadata i32 %232, metadata !1911, metadata !DIExpression()), !dbg !1923
  %233 = add i32 %232, %225, !dbg !1983
  call void @llvm.dbg.value(metadata i32 %233, metadata !1911, metadata !DIExpression()), !dbg !1923
  %234 = xor i32 %233, %225, !dbg !1985
  %235 = and i32 %234, %217, !dbg !1985
  %236 = xor i32 %235, %225, !dbg !1985
  %237 = add i32 %137, 38016083, !dbg !1985
  %238 = add i32 %237, %209, !dbg !1985
  %239 = add i32 %238, %236, !dbg !1985
  call void @llvm.dbg.value(metadata i32 %239, metadata !1914, metadata !DIExpression()), !dbg !1923
  %240 = tail call i32 @llvm.fshl.i32(i32 %239, i32 %239, i32 9), !dbg !1985
  call void @llvm.dbg.value(metadata i32 %240, metadata !1914, metadata !DIExpression()), !dbg !1923
  %241 = add i32 %240, %233, !dbg !1985
  call void @llvm.dbg.value(metadata i32 %241, metadata !1914, metadata !DIExpression()), !dbg !1923
  %242 = xor i32 %241, %233, !dbg !1987
  %243 = and i32 %242, %225, !dbg !1987
  %244 = xor i32 %243, %233, !dbg !1987
  %245 = add i32 %187, -660478335, !dbg !1987
  %246 = add i32 %245, %217, !dbg !1987
  %247 = add i32 %246, %244, !dbg !1987
  call void @llvm.dbg.value(metadata i32 %247, metadata !1913, metadata !DIExpression()), !dbg !1923
  %248 = tail call i32 @llvm.fshl.i32(i32 %247, i32 %247, i32 14), !dbg !1987
  call void @llvm.dbg.value(metadata i32 %248, metadata !1913, metadata !DIExpression()), !dbg !1923
  %249 = add i32 %248, %241, !dbg !1987
  call void @llvm.dbg.value(metadata i32 %249, metadata !1913, metadata !DIExpression()), !dbg !1923
  %250 = xor i32 %249, %241, !dbg !1989
  %251 = and i32 %250, %233, !dbg !1989
  %252 = xor i32 %251, %241, !dbg !1989
  %253 = add i32 %77, -405537848, !dbg !1989
  %254 = add i32 %253, %225, !dbg !1989
  %255 = add i32 %254, %252, !dbg !1989
  call void @llvm.dbg.value(metadata i32 %255, metadata !1912, metadata !DIExpression()), !dbg !1923
  %256 = tail call i32 @llvm.fshl.i32(i32 %255, i32 %255, i32 20), !dbg !1989
  call void @llvm.dbg.value(metadata i32 %256, metadata !1912, metadata !DIExpression()), !dbg !1923
  %257 = add i32 %256, %249, !dbg !1989
  call void @llvm.dbg.value(metadata i32 %257, metadata !1912, metadata !DIExpression()), !dbg !1923
  %258 = xor i32 %257, %249, !dbg !1991
  %259 = and i32 %258, %241, !dbg !1991
  %260 = xor i32 %259, %249, !dbg !1991
  %261 = add i32 %127, 568446438, !dbg !1991
  %262 = add i32 %261, %233, !dbg !1991
  %263 = add i32 %262, %260, !dbg !1991
  call void @llvm.dbg.value(metadata i32 %263, metadata !1911, metadata !DIExpression()), !dbg !1923
  %264 = tail call i32 @llvm.fshl.i32(i32 %263, i32 %263, i32 5), !dbg !1991
  call void @llvm.dbg.value(metadata i32 %264, metadata !1911, metadata !DIExpression()), !dbg !1923
  %265 = add i32 %264, %257, !dbg !1991
  call void @llvm.dbg.value(metadata i32 %265, metadata !1911, metadata !DIExpression()), !dbg !1923
  %266 = xor i32 %265, %257, !dbg !1993
  %267 = and i32 %266, %249, !dbg !1993
  %268 = xor i32 %267, %257, !dbg !1993
  %269 = add i32 %177, -1019803690, !dbg !1993
  %270 = add i32 %269, %241, !dbg !1993
  %271 = add i32 %270, %268, !dbg !1993
  call void @llvm.dbg.value(metadata i32 %271, metadata !1914, metadata !DIExpression()), !dbg !1923
  %272 = tail call i32 @llvm.fshl.i32(i32 %271, i32 %271, i32 9), !dbg !1993
  call void @llvm.dbg.value(metadata i32 %272, metadata !1914, metadata !DIExpression()), !dbg !1923
  %273 = add i32 %272, %265, !dbg !1993
  call void @llvm.dbg.value(metadata i32 %273, metadata !1914, metadata !DIExpression()), !dbg !1923
  %274 = xor i32 %273, %265, !dbg !1995
  %275 = and i32 %274, %257, !dbg !1995
  %276 = xor i32 %275, %265, !dbg !1995
  %277 = add i32 %67, -187363961, !dbg !1995
  %278 = add i32 %277, %249, !dbg !1995
  %279 = add i32 %278, %276, !dbg !1995
  call void @llvm.dbg.value(metadata i32 %279, metadata !1913, metadata !DIExpression()), !dbg !1923
  %280 = tail call i32 @llvm.fshl.i32(i32 %279, i32 %279, i32 14), !dbg !1995
  call void @llvm.dbg.value(metadata i32 %280, metadata !1913, metadata !DIExpression()), !dbg !1923
  %281 = add i32 %280, %273, !dbg !1995
  call void @llvm.dbg.value(metadata i32 %281, metadata !1913, metadata !DIExpression()), !dbg !1923
  %282 = xor i32 %281, %273, !dbg !1997
  %283 = and i32 %282, %265, !dbg !1997
  %284 = xor i32 %283, %273, !dbg !1997
  %285 = add i32 %117, 1163531501, !dbg !1997
  %286 = add i32 %285, %257, !dbg !1997
  %287 = add i32 %286, %284, !dbg !1997
  call void @llvm.dbg.value(metadata i32 %287, metadata !1912, metadata !DIExpression()), !dbg !1923
  %288 = tail call i32 @llvm.fshl.i32(i32 %287, i32 %287, i32 20), !dbg !1997
  call void @llvm.dbg.value(metadata i32 %288, metadata !1912, metadata !DIExpression()), !dbg !1923
  %289 = add i32 %288, %281, !dbg !1997
  call void @llvm.dbg.value(metadata i32 %289, metadata !1912, metadata !DIExpression()), !dbg !1923
  %290 = xor i32 %289, %281, !dbg !1999
  %291 = and i32 %290, %273, !dbg !1999
  %292 = xor i32 %291, %281, !dbg !1999
  %293 = add i32 %167, -1444681467, !dbg !1999
  %294 = add i32 %293, %265, !dbg !1999
  %295 = add i32 %294, %292, !dbg !1999
  call void @llvm.dbg.value(metadata i32 %295, metadata !1911, metadata !DIExpression()), !dbg !1923
  %296 = tail call i32 @llvm.fshl.i32(i32 %295, i32 %295, i32 5), !dbg !1999
  call void @llvm.dbg.value(metadata i32 %296, metadata !1911, metadata !DIExpression()), !dbg !1923
  %297 = add i32 %296, %289, !dbg !1999
  call void @llvm.dbg.value(metadata i32 %297, metadata !1911, metadata !DIExpression()), !dbg !1923
  %298 = xor i32 %297, %289, !dbg !2001
  %299 = and i32 %298, %281, !dbg !2001
  %300 = xor i32 %299, %289, !dbg !2001
  %301 = add i32 %57, -51403784, !dbg !2001
  %302 = add i32 %301, %273, !dbg !2001
  %303 = add i32 %302, %300, !dbg !2001
  call void @llvm.dbg.value(metadata i32 %303, metadata !1914, metadata !DIExpression()), !dbg !1923
  %304 = tail call i32 @llvm.fshl.i32(i32 %303, i32 %303, i32 9), !dbg !2001
  call void @llvm.dbg.value(metadata i32 %304, metadata !1914, metadata !DIExpression()), !dbg !1923
  %305 = add i32 %304, %297, !dbg !2001
  call void @llvm.dbg.value(metadata i32 %305, metadata !1914, metadata !DIExpression()), !dbg !1923
  %306 = xor i32 %305, %297, !dbg !2003
  %307 = and i32 %306, %289, !dbg !2003
  %308 = xor i32 %307, %297, !dbg !2003
  %309 = add i32 %107, 1735328473, !dbg !2003
  %310 = add i32 %309, %281, !dbg !2003
  %311 = add i32 %310, %308, !dbg !2003
  call void @llvm.dbg.value(metadata i32 %311, metadata !1913, metadata !DIExpression()), !dbg !1923
  %312 = tail call i32 @llvm.fshl.i32(i32 %311, i32 %311, i32 14), !dbg !2003
  call void @llvm.dbg.value(metadata i32 %312, metadata !1913, metadata !DIExpression()), !dbg !1923
  %313 = add i32 %312, %305, !dbg !2003
  call void @llvm.dbg.value(metadata i32 %313, metadata !1913, metadata !DIExpression()), !dbg !1923
  %314 = xor i32 %313, %305, !dbg !2005
  %315 = and i32 %314, %297, !dbg !2005
  %316 = xor i32 %315, %305, !dbg !2005
  %317 = add i32 %157, -1926607734, !dbg !2005
  %318 = add i32 %317, %289, !dbg !2005
  %319 = add i32 %318, %316, !dbg !2005
  call void @llvm.dbg.value(metadata i32 %319, metadata !1912, metadata !DIExpression()), !dbg !1923
  %320 = tail call i32 @llvm.fshl.i32(i32 %319, i32 %319, i32 20), !dbg !2005
  call void @llvm.dbg.value(metadata i32 %320, metadata !1912, metadata !DIExpression()), !dbg !1923
  %321 = add i32 %320, %313, !dbg !2005
  call void @llvm.dbg.value(metadata i32 %321, metadata !1912, metadata !DIExpression()), !dbg !1923
  %322 = xor i32 %314, %321, !dbg !2007
  %323 = add i32 %87, -378558, !dbg !2007
  %324 = add i32 %323, %297, !dbg !2007
  %325 = add i32 %324, %322, !dbg !2007
  call void @llvm.dbg.value(metadata i32 %325, metadata !1911, metadata !DIExpression()), !dbg !1923
  %326 = tail call i32 @llvm.fshl.i32(i32 %325, i32 %325, i32 4), !dbg !2007
  call void @llvm.dbg.value(metadata i32 %326, metadata !1911, metadata !DIExpression()), !dbg !1923
  %327 = add i32 %326, %321, !dbg !2007
  call void @llvm.dbg.value(metadata i32 %327, metadata !1911, metadata !DIExpression()), !dbg !1923
  %328 = xor i32 %321, %313, !dbg !2009
  %329 = xor i32 %328, %327, !dbg !2009
  %330 = add i32 %117, -2022574463, !dbg !2009
  %331 = add i32 %330, %305, !dbg !2009
  %332 = add i32 %331, %329, !dbg !2009
  call void @llvm.dbg.value(metadata i32 %332, metadata !1914, metadata !DIExpression()), !dbg !1923
  %333 = tail call i32 @llvm.fshl.i32(i32 %332, i32 %332, i32 11), !dbg !2009
  call void @llvm.dbg.value(metadata i32 %333, metadata !1914, metadata !DIExpression()), !dbg !1923
  %334 = add i32 %333, %327, !dbg !2009
  call void @llvm.dbg.value(metadata i32 %334, metadata !1914, metadata !DIExpression()), !dbg !1923
  %335 = xor i32 %327, %321, !dbg !2011
  %336 = xor i32 %335, %334, !dbg !2011
  %337 = add i32 %147, 1839030562, !dbg !2011
  %338 = add i32 %337, %313, !dbg !2011
  %339 = add i32 %338, %336, !dbg !2011
  call void @llvm.dbg.value(metadata i32 %339, metadata !1913, metadata !DIExpression()), !dbg !1923
  %340 = tail call i32 @llvm.fshl.i32(i32 %339, i32 %339, i32 16), !dbg !2011
  call void @llvm.dbg.value(metadata i32 %340, metadata !1913, metadata !DIExpression()), !dbg !1923
  %341 = add i32 %340, %334, !dbg !2011
  call void @llvm.dbg.value(metadata i32 %341, metadata !1913, metadata !DIExpression()), !dbg !1923
  %342 = xor i32 %334, %327, !dbg !2013
  %343 = xor i32 %342, %341, !dbg !2013
  %344 = add i32 %177, -35309556, !dbg !2013
  %345 = add i32 %344, %321, !dbg !2013
  %346 = add i32 %345, %343, !dbg !2013
  call void @llvm.dbg.value(metadata i32 %346, metadata !1912, metadata !DIExpression()), !dbg !1923
  %347 = tail call i32 @llvm.fshl.i32(i32 %346, i32 %346, i32 23), !dbg !2013
  call void @llvm.dbg.value(metadata i32 %347, metadata !1912, metadata !DIExpression()), !dbg !1923
  %348 = add i32 %347, %341, !dbg !2013
  call void @llvm.dbg.value(metadata i32 %348, metadata !1912, metadata !DIExpression()), !dbg !1923
  %349 = xor i32 %341, %334, !dbg !2015
  %350 = xor i32 %349, %348, !dbg !2015
  %351 = add i32 %47, -1530992060, !dbg !2015
  %352 = add i32 %351, %327, !dbg !2015
  %353 = add i32 %352, %350, !dbg !2015
  call void @llvm.dbg.value(metadata i32 %353, metadata !1911, metadata !DIExpression()), !dbg !1923
  %354 = tail call i32 @llvm.fshl.i32(i32 %353, i32 %353, i32 4), !dbg !2015
  call void @llvm.dbg.value(metadata i32 %354, metadata !1911, metadata !DIExpression()), !dbg !1923
  %355 = add i32 %354, %348, !dbg !2015
  call void @llvm.dbg.value(metadata i32 %355, metadata !1911, metadata !DIExpression()), !dbg !1923
  %356 = xor i32 %348, %341, !dbg !2017
  %357 = xor i32 %356, %355, !dbg !2017
  %358 = add i32 %77, 1272893353, !dbg !2017
  %359 = add i32 %358, %334, !dbg !2017
  %360 = add i32 %359, %357, !dbg !2017
  call void @llvm.dbg.value(metadata i32 %360, metadata !1914, metadata !DIExpression()), !dbg !1923
  %361 = tail call i32 @llvm.fshl.i32(i32 %360, i32 %360, i32 11), !dbg !2017
  call void @llvm.dbg.value(metadata i32 %361, metadata !1914, metadata !DIExpression()), !dbg !1923
  %362 = add i32 %361, %355, !dbg !2017
  call void @llvm.dbg.value(metadata i32 %362, metadata !1914, metadata !DIExpression()), !dbg !1923
  %363 = xor i32 %355, %348, !dbg !2019
  %364 = xor i32 %363, %362, !dbg !2019
  %365 = add i32 %107, -155497632, !dbg !2019
  %366 = add i32 %365, %341, !dbg !2019
  %367 = add i32 %366, %364, !dbg !2019
  call void @llvm.dbg.value(metadata i32 %367, metadata !1913, metadata !DIExpression()), !dbg !1923
  %368 = tail call i32 @llvm.fshl.i32(i32 %367, i32 %367, i32 16), !dbg !2019
  call void @llvm.dbg.value(metadata i32 %368, metadata !1913, metadata !DIExpression()), !dbg !1923
  %369 = add i32 %368, %362, !dbg !2019
  call void @llvm.dbg.value(metadata i32 %369, metadata !1913, metadata !DIExpression()), !dbg !1923
  %370 = xor i32 %362, %355, !dbg !2021
  %371 = xor i32 %370, %369, !dbg !2021
  %372 = add i32 %137, -1094730640, !dbg !2021
  %373 = add i32 %372, %348, !dbg !2021
  %374 = add i32 %373, %371, !dbg !2021
  call void @llvm.dbg.value(metadata i32 %374, metadata !1912, metadata !DIExpression()), !dbg !1923
  %375 = tail call i32 @llvm.fshl.i32(i32 %374, i32 %374, i32 23), !dbg !2021
  call void @llvm.dbg.value(metadata i32 %375, metadata !1912, metadata !DIExpression()), !dbg !1923
  %376 = add i32 %375, %369, !dbg !2021
  call void @llvm.dbg.value(metadata i32 %376, metadata !1912, metadata !DIExpression()), !dbg !1923
  %377 = xor i32 %369, %362, !dbg !2023
  %378 = xor i32 %377, %376, !dbg !2023
  %379 = add i32 %167, 681279174, !dbg !2023
  %380 = add i32 %379, %355, !dbg !2023
  %381 = add i32 %380, %378, !dbg !2023
  call void @llvm.dbg.value(metadata i32 %381, metadata !1911, metadata !DIExpression()), !dbg !1923
  %382 = tail call i32 @llvm.fshl.i32(i32 %381, i32 %381, i32 4), !dbg !2023
  call void @llvm.dbg.value(metadata i32 %382, metadata !1911, metadata !DIExpression()), !dbg !1923
  %383 = add i32 %382, %376, !dbg !2023
  call void @llvm.dbg.value(metadata i32 %383, metadata !1911, metadata !DIExpression()), !dbg !1923
  %384 = xor i32 %376, %369, !dbg !2025
  %385 = xor i32 %384, %383, !dbg !2025
  %386 = add i32 %37, -358537222, !dbg !2025
  %387 = add i32 %386, %362, !dbg !2025
  %388 = add i32 %387, %385, !dbg !2025
  call void @llvm.dbg.value(metadata i32 %388, metadata !1914, metadata !DIExpression()), !dbg !1923
  %389 = tail call i32 @llvm.fshl.i32(i32 %388, i32 %388, i32 11), !dbg !2025
  call void @llvm.dbg.value(metadata i32 %389, metadata !1914, metadata !DIExpression()), !dbg !1923
  %390 = add i32 %389, %383, !dbg !2025
  call void @llvm.dbg.value(metadata i32 %390, metadata !1914, metadata !DIExpression()), !dbg !1923
  %391 = xor i32 %383, %376, !dbg !2027
  %392 = xor i32 %391, %390, !dbg !2027
  %393 = add i32 %67, -722521979, !dbg !2027
  %394 = add i32 %393, %369, !dbg !2027
  %395 = add i32 %394, %392, !dbg !2027
  call void @llvm.dbg.value(metadata i32 %395, metadata !1913, metadata !DIExpression()), !dbg !1923
  %396 = tail call i32 @llvm.fshl.i32(i32 %395, i32 %395, i32 16), !dbg !2027
  call void @llvm.dbg.value(metadata i32 %396, metadata !1913, metadata !DIExpression()), !dbg !1923
  %397 = add i32 %396, %390, !dbg !2027
  call void @llvm.dbg.value(metadata i32 %397, metadata !1913, metadata !DIExpression()), !dbg !1923
  %398 = xor i32 %390, %383, !dbg !2029
  %399 = xor i32 %398, %397, !dbg !2029
  %400 = add i32 %97, 76029189, !dbg !2029
  %401 = add i32 %400, %376, !dbg !2029
  %402 = add i32 %401, %399, !dbg !2029
  call void @llvm.dbg.value(metadata i32 %402, metadata !1912, metadata !DIExpression()), !dbg !1923
  %403 = tail call i32 @llvm.fshl.i32(i32 %402, i32 %402, i32 23), !dbg !2029
  call void @llvm.dbg.value(metadata i32 %403, metadata !1912, metadata !DIExpression()), !dbg !1923
  %404 = add i32 %403, %397, !dbg !2029
  call void @llvm.dbg.value(metadata i32 %404, metadata !1912, metadata !DIExpression()), !dbg !1923
  %405 = xor i32 %397, %390, !dbg !2031
  %406 = xor i32 %405, %404, !dbg !2031
  %407 = add i32 %127, -640364487, !dbg !2031
  %408 = add i32 %407, %383, !dbg !2031
  %409 = add i32 %408, %406, !dbg !2031
  call void @llvm.dbg.value(metadata i32 %409, metadata !1911, metadata !DIExpression()), !dbg !1923
  %410 = tail call i32 @llvm.fshl.i32(i32 %409, i32 %409, i32 4), !dbg !2031
  call void @llvm.dbg.value(metadata i32 %410, metadata !1911, metadata !DIExpression()), !dbg !1923
  %411 = add i32 %410, %404, !dbg !2031
  call void @llvm.dbg.value(metadata i32 %411, metadata !1911, metadata !DIExpression()), !dbg !1923
  %412 = xor i32 %404, %397, !dbg !2033
  %413 = xor i32 %412, %411, !dbg !2033
  %414 = add i32 %157, -421815835, !dbg !2033
  %415 = add i32 %414, %390, !dbg !2033
  %416 = add i32 %415, %413, !dbg !2033
  call void @llvm.dbg.value(metadata i32 %416, metadata !1914, metadata !DIExpression()), !dbg !1923
  %417 = tail call i32 @llvm.fshl.i32(i32 %416, i32 %416, i32 11), !dbg !2033
  call void @llvm.dbg.value(metadata i32 %417, metadata !1914, metadata !DIExpression()), !dbg !1923
  %418 = add i32 %417, %411, !dbg !2033
  call void @llvm.dbg.value(metadata i32 %418, metadata !1914, metadata !DIExpression()), !dbg !1923
  %419 = xor i32 %411, %404, !dbg !2035
  %420 = xor i32 %419, %418, !dbg !2035
  %421 = add i32 %187, 530742520, !dbg !2035
  %422 = add i32 %421, %397, !dbg !2035
  %423 = add i32 %422, %420, !dbg !2035
  call void @llvm.dbg.value(metadata i32 %423, metadata !1913, metadata !DIExpression()), !dbg !1923
  %424 = tail call i32 @llvm.fshl.i32(i32 %423, i32 %423, i32 16), !dbg !2035
  call void @llvm.dbg.value(metadata i32 %424, metadata !1913, metadata !DIExpression()), !dbg !1923
  %425 = add i32 %424, %418, !dbg !2035
  call void @llvm.dbg.value(metadata i32 %425, metadata !1913, metadata !DIExpression()), !dbg !1923
  %426 = xor i32 %418, %411, !dbg !2037
  %427 = xor i32 %426, %425, !dbg !2037
  %428 = add i32 %57, -995338651, !dbg !2037
  %429 = add i32 %428, %404, !dbg !2037
  %430 = add i32 %429, %427, !dbg !2037
  call void @llvm.dbg.value(metadata i32 %430, metadata !1912, metadata !DIExpression()), !dbg !1923
  %431 = tail call i32 @llvm.fshl.i32(i32 %430, i32 %430, i32 23), !dbg !2037
  call void @llvm.dbg.value(metadata i32 %431, metadata !1912, metadata !DIExpression()), !dbg !1923
  %432 = add i32 %431, %425, !dbg !2037
  call void @llvm.dbg.value(metadata i32 %432, metadata !1912, metadata !DIExpression()), !dbg !1923
  %433 = xor i32 %418, -1, !dbg !2039
  %434 = or i32 %432, %433, !dbg !2039
  %435 = xor i32 %434, %425, !dbg !2039
  %436 = add i32 %37, -198630844, !dbg !2039
  %437 = add i32 %436, %411, !dbg !2039
  %438 = add i32 %437, %435, !dbg !2039
  call void @llvm.dbg.value(metadata i32 %438, metadata !1911, metadata !DIExpression()), !dbg !1923
  %439 = tail call i32 @llvm.fshl.i32(i32 %438, i32 %438, i32 6), !dbg !2039
  call void @llvm.dbg.value(metadata i32 %439, metadata !1911, metadata !DIExpression()), !dbg !1923
  %440 = add i32 %439, %432, !dbg !2039
  call void @llvm.dbg.value(metadata i32 %440, metadata !1911, metadata !DIExpression()), !dbg !1923
  %441 = xor i32 %425, -1, !dbg !2041
  %442 = or i32 %440, %441, !dbg !2041
  %443 = xor i32 %442, %432, !dbg !2041
  %444 = add i32 %107, 1126891415, !dbg !2041
  %445 = add i32 %444, %418, !dbg !2041
  %446 = add i32 %445, %443, !dbg !2041
  call void @llvm.dbg.value(metadata i32 %446, metadata !1914, metadata !DIExpression()), !dbg !1923
  %447 = tail call i32 @llvm.fshl.i32(i32 %446, i32 %446, i32 10), !dbg !2041
  call void @llvm.dbg.value(metadata i32 %447, metadata !1914, metadata !DIExpression()), !dbg !1923
  %448 = add i32 %447, %440, !dbg !2041
  call void @llvm.dbg.value(metadata i32 %448, metadata !1914, metadata !DIExpression()), !dbg !1923
  %449 = xor i32 %432, -1, !dbg !2043
  %450 = or i32 %448, %449, !dbg !2043
  %451 = xor i32 %450, %440, !dbg !2043
  %452 = add i32 %177, -1416354905, !dbg !2043
  %453 = add i32 %452, %425, !dbg !2043
  %454 = add i32 %453, %451, !dbg !2043
  call void @llvm.dbg.value(metadata i32 %454, metadata !1913, metadata !DIExpression()), !dbg !1923
  %455 = tail call i32 @llvm.fshl.i32(i32 %454, i32 %454, i32 15), !dbg !2043
  call void @llvm.dbg.value(metadata i32 %455, metadata !1913, metadata !DIExpression()), !dbg !1923
  %456 = add i32 %455, %448, !dbg !2043
  call void @llvm.dbg.value(metadata i32 %456, metadata !1913, metadata !DIExpression()), !dbg !1923
  %457 = xor i32 %440, -1, !dbg !2045
  %458 = or i32 %456, %457, !dbg !2045
  %459 = xor i32 %458, %448, !dbg !2045
  %460 = add i32 %87, -57434055, !dbg !2045
  %461 = add i32 %460, %432, !dbg !2045
  %462 = add i32 %461, %459, !dbg !2045
  call void @llvm.dbg.value(metadata i32 %462, metadata !1912, metadata !DIExpression()), !dbg !1923
  %463 = tail call i32 @llvm.fshl.i32(i32 %462, i32 %462, i32 21), !dbg !2045
  call void @llvm.dbg.value(metadata i32 %463, metadata !1912, metadata !DIExpression()), !dbg !1923
  %464 = add i32 %463, %456, !dbg !2045
  call void @llvm.dbg.value(metadata i32 %464, metadata !1912, metadata !DIExpression()), !dbg !1923
  %465 = xor i32 %448, -1, !dbg !2047
  %466 = or i32 %464, %465, !dbg !2047
  %467 = xor i32 %466, %456, !dbg !2047
  %468 = add i32 %157, 1700485571, !dbg !2047
  %469 = add i32 %468, %440, !dbg !2047
  %470 = add i32 %469, %467, !dbg !2047
  call void @llvm.dbg.value(metadata i32 %470, metadata !1911, metadata !DIExpression()), !dbg !1923
  %471 = tail call i32 @llvm.fshl.i32(i32 %470, i32 %470, i32 6), !dbg !2047
  call void @llvm.dbg.value(metadata i32 %471, metadata !1911, metadata !DIExpression()), !dbg !1923
  %472 = add i32 %471, %464, !dbg !2047
  call void @llvm.dbg.value(metadata i32 %472, metadata !1911, metadata !DIExpression()), !dbg !1923
  %473 = xor i32 %456, -1, !dbg !2049
  %474 = or i32 %472, %473, !dbg !2049
  %475 = xor i32 %474, %464, !dbg !2049
  %476 = add i32 %67, -1894986606, !dbg !2049
  %477 = add i32 %476, %448, !dbg !2049
  %478 = add i32 %477, %475, !dbg !2049
  call void @llvm.dbg.value(metadata i32 %478, metadata !1914, metadata !DIExpression()), !dbg !1923
  %479 = tail call i32 @llvm.fshl.i32(i32 %478, i32 %478, i32 10), !dbg !2049
  call void @llvm.dbg.value(metadata i32 %479, metadata !1914, metadata !DIExpression()), !dbg !1923
  %480 = add i32 %479, %472, !dbg !2049
  call void @llvm.dbg.value(metadata i32 %480, metadata !1914, metadata !DIExpression()), !dbg !1923
  %481 = xor i32 %464, -1, !dbg !2051
  %482 = or i32 %480, %481, !dbg !2051
  %483 = xor i32 %482, %472, !dbg !2051
  %484 = add i32 %137, -1051523, !dbg !2051
  %485 = add i32 %484, %456, !dbg !2051
  %486 = add i32 %485, %483, !dbg !2051
  call void @llvm.dbg.value(metadata i32 %486, metadata !1913, metadata !DIExpression()), !dbg !1923
  %487 = tail call i32 @llvm.fshl.i32(i32 %486, i32 %486, i32 15), !dbg !2051
  call void @llvm.dbg.value(metadata i32 %487, metadata !1913, metadata !DIExpression()), !dbg !1923
  %488 = add i32 %487, %480, !dbg !2051
  call void @llvm.dbg.value(metadata i32 %488, metadata !1913, metadata !DIExpression()), !dbg !1923
  %489 = xor i32 %472, -1, !dbg !2053
  %490 = or i32 %488, %489, !dbg !2053
  %491 = xor i32 %490, %480, !dbg !2053
  %492 = add i32 %47, -2054922799, !dbg !2053
  %493 = add i32 %492, %464, !dbg !2053
  %494 = add i32 %493, %491, !dbg !2053
  call void @llvm.dbg.value(metadata i32 %494, metadata !1912, metadata !DIExpression()), !dbg !1923
  %495 = tail call i32 @llvm.fshl.i32(i32 %494, i32 %494, i32 21), !dbg !2053
  call void @llvm.dbg.value(metadata i32 %495, metadata !1912, metadata !DIExpression()), !dbg !1923
  %496 = add i32 %495, %488, !dbg !2053
  call void @llvm.dbg.value(metadata i32 %496, metadata !1912, metadata !DIExpression()), !dbg !1923
  %497 = xor i32 %480, -1, !dbg !2055
  %498 = or i32 %496, %497, !dbg !2055
  %499 = xor i32 %498, %488, !dbg !2055
  %500 = add i32 %117, 1873313359, !dbg !2055
  %501 = add i32 %500, %472, !dbg !2055
  %502 = add i32 %501, %499, !dbg !2055
  call void @llvm.dbg.value(metadata i32 %502, metadata !1911, metadata !DIExpression()), !dbg !1923
  %503 = tail call i32 @llvm.fshl.i32(i32 %502, i32 %502, i32 6), !dbg !2055
  call void @llvm.dbg.value(metadata i32 %503, metadata !1911, metadata !DIExpression()), !dbg !1923
  %504 = add i32 %503, %496, !dbg !2055
  call void @llvm.dbg.value(metadata i32 %504, metadata !1911, metadata !DIExpression()), !dbg !1923
  %505 = xor i32 %488, -1, !dbg !2057
  %506 = or i32 %504, %505, !dbg !2057
  %507 = xor i32 %506, %496, !dbg !2057
  %508 = add i32 %187, -30611744, !dbg !2057
  %509 = add i32 %508, %480, !dbg !2057
  %510 = add i32 %509, %507, !dbg !2057
  call void @llvm.dbg.value(metadata i32 %510, metadata !1914, metadata !DIExpression()), !dbg !1923
  %511 = tail call i32 @llvm.fshl.i32(i32 %510, i32 %510, i32 10), !dbg !2057
  call void @llvm.dbg.value(metadata i32 %511, metadata !1914, metadata !DIExpression()), !dbg !1923
  %512 = add i32 %511, %504, !dbg !2057
  call void @llvm.dbg.value(metadata i32 %512, metadata !1914, metadata !DIExpression()), !dbg !1923
  %513 = xor i32 %496, -1, !dbg !2059
  %514 = or i32 %512, %513, !dbg !2059
  %515 = xor i32 %514, %504, !dbg !2059
  %516 = add i32 %97, -1560198380, !dbg !2059
  %517 = add i32 %516, %488, !dbg !2059
  %518 = add i32 %517, %515, !dbg !2059
  call void @llvm.dbg.value(metadata i32 %518, metadata !1913, metadata !DIExpression()), !dbg !1923
  %519 = tail call i32 @llvm.fshl.i32(i32 %518, i32 %518, i32 15), !dbg !2059
  call void @llvm.dbg.value(metadata i32 %519, metadata !1913, metadata !DIExpression()), !dbg !1923
  %520 = add i32 %519, %512, !dbg !2059
  call void @llvm.dbg.value(metadata i32 %520, metadata !1913, metadata !DIExpression()), !dbg !1923
  %521 = xor i32 %504, -1, !dbg !2061
  %522 = or i32 %520, %521, !dbg !2061
  %523 = xor i32 %522, %512, !dbg !2061
  %524 = add i32 %167, 1309151649, !dbg !2061
  %525 = add i32 %524, %496, !dbg !2061
  %526 = add i32 %525, %523, !dbg !2061
  call void @llvm.dbg.value(metadata i32 %526, metadata !1912, metadata !DIExpression()), !dbg !1923
  %527 = tail call i32 @llvm.fshl.i32(i32 %526, i32 %526, i32 21), !dbg !2061
  call void @llvm.dbg.value(metadata i32 %527, metadata !1912, metadata !DIExpression()), !dbg !1923
  %528 = add i32 %527, %520, !dbg !2061
  call void @llvm.dbg.value(metadata i32 %528, metadata !1912, metadata !DIExpression()), !dbg !1923
  %529 = xor i32 %512, -1, !dbg !2063
  %530 = or i32 %528, %529, !dbg !2063
  %531 = xor i32 %530, %520, !dbg !2063
  %532 = add i32 %77, -145523070, !dbg !2063
  %533 = add i32 %532, %504, !dbg !2063
  %534 = add i32 %533, %531, !dbg !2063
  call void @llvm.dbg.value(metadata i32 %534, metadata !1911, metadata !DIExpression()), !dbg !1923
  %535 = tail call i32 @llvm.fshl.i32(i32 %534, i32 %534, i32 6), !dbg !2063
  call void @llvm.dbg.value(metadata i32 %535, metadata !1911, metadata !DIExpression()), !dbg !1923
  %536 = add i32 %535, %528, !dbg !2063
  call void @llvm.dbg.value(metadata i32 %536, metadata !1911, metadata !DIExpression()), !dbg !1923
  %537 = xor i32 %520, -1, !dbg !2065
  %538 = or i32 %536, %537, !dbg !2065
  %539 = xor i32 %538, %528, !dbg !2065
  %540 = add i32 %147, -1120210379, !dbg !2065
  %541 = add i32 %540, %512, !dbg !2065
  %542 = add i32 %541, %539, !dbg !2065
  call void @llvm.dbg.value(metadata i32 %542, metadata !1914, metadata !DIExpression()), !dbg !1923
  %543 = tail call i32 @llvm.fshl.i32(i32 %542, i32 %542, i32 10), !dbg !2065
  call void @llvm.dbg.value(metadata i32 %543, metadata !1914, metadata !DIExpression()), !dbg !1923
  %544 = add i32 %543, %536, !dbg !2065
  call void @llvm.dbg.value(metadata i32 %544, metadata !1914, metadata !DIExpression()), !dbg !1923
  %545 = xor i32 %528, -1, !dbg !2067
  %546 = or i32 %544, %545, !dbg !2067
  %547 = xor i32 %546, %536, !dbg !2067
  %548 = add i32 %57, 718787259, !dbg !2067
  %549 = add i32 %548, %520, !dbg !2067
  %550 = add i32 %549, %547, !dbg !2067
  call void @llvm.dbg.value(metadata i32 %550, metadata !1913, metadata !DIExpression()), !dbg !1923
  %551 = tail call i32 @llvm.fshl.i32(i32 %550, i32 %550, i32 15), !dbg !2067
  call void @llvm.dbg.value(metadata i32 %551, metadata !1913, metadata !DIExpression()), !dbg !1923
  %552 = add i32 %551, %544, !dbg !2067
  call void @llvm.dbg.value(metadata i32 %552, metadata !1913, metadata !DIExpression()), !dbg !1923
  %553 = xor i32 %536, -1, !dbg !2069
  %554 = or i32 %552, %553, !dbg !2069
  %555 = xor i32 %554, %544, !dbg !2069
  %556 = add i32 %127, -343485551, !dbg !2069
  %557 = add i32 %556, %528, !dbg !2069
  %558 = add i32 %557, %555, !dbg !2069
  call void @llvm.dbg.value(metadata i32 %558, metadata !1912, metadata !DIExpression()), !dbg !1923
  %559 = tail call i32 @llvm.fshl.i32(i32 %558, i32 %558, i32 21), !dbg !2069
  call void @llvm.dbg.value(metadata i32 undef, metadata !1912, metadata !DIExpression()), !dbg !1923
  %560 = add i32 %536, %30, !dbg !2071
  call void @llvm.dbg.value(metadata i32 %560, metadata !1911, metadata !DIExpression()), !dbg !1923
  %561 = add i32 %552, %31, !dbg !2069
  %562 = add i32 %561, %559, !dbg !2072
  call void @llvm.dbg.value(metadata i32 %562, metadata !1912, metadata !DIExpression()), !dbg !1923
  %563 = add i32 %552, %32, !dbg !2073
  call void @llvm.dbg.value(metadata i32 %563, metadata !1913, metadata !DIExpression()), !dbg !1923
  %564 = add i32 %544, %33, !dbg !2074
  call void @llvm.dbg.value(metadata i32 %564, metadata !1914, metadata !DIExpression()), !dbg !1923
  %565 = icmp ult i32* %191, %6, !dbg !1940
  br i1 %565, label %28, label %566, !dbg !1941, !llvm.loop !2075

566:                                              ; preds = %28, %3
  %567 = phi i32 [ %14, %3 ], [ %564, %28 ], !dbg !1923
  %568 = phi i32 [ %12, %3 ], [ %563, %28 ], !dbg !1923
  %569 = phi i32 [ %10, %3 ], [ %562, %28 ], !dbg !1923
  %570 = phi i32 [ %8, %3 ], [ %560, %28 ], !dbg !1923
  store i32 %570, i32* %7, align 4, !dbg !2077, !tbaa !1784
  store i32 %569, i32* %9, align 4, !dbg !2078, !tbaa !1810
  store i32 %568, i32* %11, align 4, !dbg !2079, !tbaa !1818
  store i32 %567, i32* %13, align 4, !dbg !2080, !tbaa !1826
  ret void, !dbg !2081
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @md5_stream(%struct._IO_FILE* nocapture %0, i8* %1) local_unnamed_addr #8 !dbg !2082 {
  %3 = alloca %struct.md5_ctx, align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2120, metadata !DIExpression()), !dbg !2128
  call void @llvm.dbg.value(metadata i8* %1, metadata !2121, metadata !DIExpression()), !dbg !2128
  %4 = tail call noalias dereferenceable_or_null(32840) i8* @malloc(i64 32840) #25, !dbg !2129
  call void @llvm.dbg.value(metadata i8* %4, metadata !2122, metadata !DIExpression()), !dbg !2128
  %5 = icmp eq i8* %4, null, !dbg !2130
  br i1 %5, label %42, label %6, !dbg !2132

6:                                                ; preds = %2
  %7 = bitcast %struct.md5_ctx* %3 to i8*, !dbg !2133
  call void @llvm.lifetime.start.p0i8(i64 156, i8* nonnull %7) #25, !dbg !2133
  call void @llvm.dbg.declare(metadata %struct.md5_ctx* %3, metadata !2123, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata %struct.md5_ctx* %3, metadata !1761, metadata !DIExpression()), !dbg !2135
  %8 = bitcast %struct.md5_ctx* %3 to <4 x i32>*, !dbg !2137
  store <4 x i32> <i32 1732584193, i32 -271733879, i32 -1732584194, i32 271733878>, <4 x i32>* %8, align 16, !dbg !2137, !tbaa !1016
  %9 = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %3, i64 0, i32 4, i64 1, !dbg !2138
  store i32 0, i32* %9, align 4, !dbg !2139, !tbaa !1016
  %10 = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %3, i64 0, i32 4, i64 0, !dbg !2140
  store i32 0, i32* %10, align 16, !dbg !2141, !tbaa !1016
  %11 = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %3, i64 0, i32 5, !dbg !2142
  store i32 0, i32* %11, align 8, !dbg !2143, !tbaa !1770
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0
  br label %13, !dbg !2144

13:                                               ; preds = %26, %6
  %14 = phi i64 [ 0, %6 ], [ %27, %26 ], !dbg !2145
  call void @llvm.dbg.value(metadata i64 %14, metadata !2124, metadata !DIExpression()), !dbg !2128
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2146, metadata !DIExpression()), !dbg !2151
  %15 = load i32, i32* %12, align 8, !dbg !2155, !tbaa !1422
  %16 = and i32 %15, 16, !dbg !2156
  %17 = icmp eq i32 %16, 0, !dbg !2156
  br i1 %17, label %18, label %34, !dbg !2157

18:                                               ; preds = %13
  %19 = getelementptr inbounds i8, i8* %4, i64 %14, !dbg !2158
  %20 = sub i64 32768, %14, !dbg !2158
  %21 = tail call i64 @fread_unlocked(i8* nonnull %19, i64 1, i64 %20, %struct._IO_FILE* nonnull %0), !dbg !2158
  call void @llvm.dbg.value(metadata i64 %21, metadata !2125, metadata !DIExpression()), !dbg !2145
  %22 = add i64 %21, %14, !dbg !2159
  call void @llvm.dbg.value(metadata i64 %22, metadata !2124, metadata !DIExpression()), !dbg !2128
  %23 = icmp eq i64 %22, 32768, !dbg !2160
  br i1 %23, label %33, label %24, !dbg !2162

24:                                               ; preds = %18
  %25 = icmp eq i64 %21, 0, !dbg !2163
  br i1 %25, label %28, label %26, !dbg !2165

26:                                               ; preds = %24, %33
  %27 = phi i64 [ %22, %24 ], [ 0, %33 ]
  br label %13, !dbg !2128, !llvm.loop !2166

28:                                               ; preds = %24
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2169, metadata !DIExpression()), !dbg !2172
  %29 = load i32, i32* %12, align 8, !dbg !2176, !tbaa !1422
  %30 = and i32 %29, 32, !dbg !2177
  %31 = icmp eq i32 %30, 0, !dbg !2177
  br i1 %31, label %34, label %32, !dbg !2178

32:                                               ; preds = %28
  tail call void @free(i8* %4) #25, !dbg !2179
  call void @llvm.dbg.value(metadata i64 32768, metadata !2124, metadata !DIExpression()), !dbg !2128
  br label %40

33:                                               ; preds = %18
  call void @md5_process_block(i8* nonnull %4, i64 32768, %struct.md5_ctx* nonnull %3) #25, !dbg !2181
  call void @llvm.dbg.value(metadata i64 32768, metadata !2124, metadata !DIExpression()), !dbg !2128
  br label %26

34:                                               ; preds = %13, %28
  %35 = phi i64 [ %22, %28 ], [ %14, %13 ]
  call void @llvm.dbg.value(metadata i64 32768, metadata !2124, metadata !DIExpression()), !dbg !2128
  call void @llvm.dbg.label(metadata !2127), !dbg !2182
  %36 = icmp eq i64 %35, 0, !dbg !2183
  br i1 %36, label %38, label %37, !dbg !2185

37:                                               ; preds = %34
  call void @md5_process_bytes(i8* nonnull %4, i64 %35, %struct.md5_ctx* nonnull %3) #25, !dbg !2186
  br label %38, !dbg !2186

38:                                               ; preds = %37, %34
  %39 = call i8* @md5_finish_ctx(%struct.md5_ctx* nonnull %3, i8* %1) #25, !dbg !2187
  call void @free(i8* %4) #25, !dbg !2188
  br label %40, !dbg !2189

40:                                               ; preds = %32, %38
  %41 = phi i32 [ 0, %38 ], [ 1, %32 ]
  call void @llvm.lifetime.end.p0i8(i64 156, i8* nonnull %7) #25, !dbg !2190
  br label %42

42:                                               ; preds = %40, %2
  %43 = phi i32 [ %41, %40 ], [ 1, %2 ]
  ret i32 %43, !dbg !2190
}

; Function Attrs: inaccessiblememonly nofree nounwind willreturn
declare noalias noundef i8* @malloc(i64) local_unnamed_addr #14

; Function Attrs: nofree nounwind
declare noundef i64 @fread_unlocked(i8* nocapture noundef, i64 noundef, i64 noundef, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: nofree nounwind sspstrong uwtable
define dso_local void @md5_process_bytes(i8* %0, i64 %1, %struct.md5_ctx* %2) local_unnamed_addr #13 !dbg !2191 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2193, metadata !DIExpression()), !dbg !2203
  call void @llvm.dbg.value(metadata i64 %1, metadata !2194, metadata !DIExpression()), !dbg !2203
  call void @llvm.dbg.value(metadata %struct.md5_ctx* %2, metadata !2195, metadata !DIExpression()), !dbg !2203
  %4 = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %2, i64 0, i32 5, !dbg !2204
  %5 = load i32, i32* %4, align 4, !dbg !2204, !tbaa !1770
  %6 = icmp eq i32 %5, 0, !dbg !2205
  br i1 %6, label %31, label %7, !dbg !2206

7:                                                ; preds = %3
  %8 = zext i32 %5 to i64, !dbg !2207
  call void @llvm.dbg.value(metadata i64 %8, metadata !2196, metadata !DIExpression()), !dbg !2208
  %9 = sub nsw i64 128, %8, !dbg !2209
  %10 = icmp ugt i64 %9, %1, !dbg !2210
  %11 = select i1 %10, i64 %1, i64 %9, !dbg !2211
  call void @llvm.dbg.value(metadata i64 %11, metadata !2199, metadata !DIExpression()), !dbg !2208
  %12 = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %2, i64 0, i32 6, i64 0, !dbg !2212
  %13 = bitcast i32* %12 to i8*, !dbg !2212
  %14 = getelementptr inbounds i8, i8* %13, i64 %8, !dbg !2212
  call void @llvm.dbg.value(metadata i8* %14, metadata !1793, metadata !DIExpression()) #25, !dbg !2213
  call void @llvm.dbg.value(metadata i8* %0, metadata !1803, metadata !DIExpression()) #25, !dbg !2213
  call void @llvm.dbg.value(metadata i64 %11, metadata !1804, metadata !DIExpression()) #25, !dbg !2213
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %14, i8* nonnull align 1 %0, i64 %11, i1 false) #25, !dbg !2215
  %15 = load i32, i32* %4, align 4, !dbg !2216, !tbaa !1770
  %16 = trunc i64 %11 to i32, !dbg !2216
  %17 = add i32 %15, %16, !dbg !2216
  store i32 %17, i32* %4, align 4, !dbg !2216, !tbaa !1770
  %18 = icmp ugt i32 %17, 64, !dbg !2217
  br i1 %18, label %19, label %28, !dbg !2219

19:                                               ; preds = %7
  %20 = and i32 %17, -64, !dbg !2220
  %21 = zext i32 %20 to i64, !dbg !2222
  tail call void @md5_process_block(i8* nonnull %13, i64 %21, %struct.md5_ctx* nonnull %2) #25, !dbg !2223
  %22 = load i32, i32* %4, align 4, !dbg !2224, !tbaa !1770
  %23 = and i32 %22, 63, !dbg !2224
  store i32 %23, i32* %4, align 4, !dbg !2224, !tbaa !1770
  %24 = add i64 %11, %8, !dbg !2225
  %25 = and i64 %24, -64, !dbg !2226
  %26 = getelementptr inbounds i8, i8* %13, i64 %25, !dbg !2227
  %27 = zext i32 %23 to i64, !dbg !2228
  call void @llvm.dbg.value(metadata i8* %13, metadata !1793, metadata !DIExpression()) #25, !dbg !2229
  call void @llvm.dbg.value(metadata i8* %26, metadata !1803, metadata !DIExpression()) #25, !dbg !2229
  call void @llvm.dbg.value(metadata i64 %27, metadata !1804, metadata !DIExpression()) #25, !dbg !2229
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %13, i8* nonnull align 1 %26, i64 %27, i1 false) #25, !dbg !2231
  br label %28, !dbg !2232

28:                                               ; preds = %19, %7
  %29 = getelementptr inbounds i8, i8* %0, i64 %11, !dbg !2233
  call void @llvm.dbg.value(metadata i8* %29, metadata !2193, metadata !DIExpression()), !dbg !2203
  %30 = sub i64 %1, %11, !dbg !2234
  call void @llvm.dbg.value(metadata i64 %30, metadata !2194, metadata !DIExpression()), !dbg !2203
  br label %31, !dbg !2235

31:                                               ; preds = %28, %3
  %32 = phi i64 [ %30, %28 ], [ %1, %3 ]
  %33 = phi i8* [ %29, %28 ], [ %0, %3 ]
  call void @llvm.dbg.value(metadata i8* %33, metadata !2193, metadata !DIExpression()), !dbg !2203
  call void @llvm.dbg.value(metadata i64 %32, metadata !2194, metadata !DIExpression()), !dbg !2203
  %34 = icmp ugt i64 %32, 63, !dbg !2236
  br i1 %34, label %35, label %54, !dbg !2238

35:                                               ; preds = %31
  %36 = ptrtoint i8* %33 to i64, !dbg !2239
  %37 = and i64 %36, 3, !dbg !2239
  %38 = icmp eq i64 %37, 0, !dbg !2239
  br i1 %38, label %50, label %39, !dbg !2242

39:                                               ; preds = %35
  call void @llvm.dbg.value(metadata i8* %33, metadata !2193, metadata !DIExpression()), !dbg !2203
  call void @llvm.dbg.value(metadata i64 %32, metadata !2194, metadata !DIExpression()), !dbg !2203
  %40 = icmp ugt i64 %32, 64, !dbg !2243
  br i1 %40, label %41, label %58, !dbg !2244

41:                                               ; preds = %39
  %42 = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %2, i64 0, i32 6, i64 0
  %43 = bitcast i32* %42 to i8*
  br label %44, !dbg !2244

44:                                               ; preds = %41, %44
  %45 = phi i8* [ %33, %41 ], [ %47, %44 ]
  %46 = phi i64 [ %32, %41 ], [ %48, %44 ]
  call void @llvm.dbg.value(metadata i8* %45, metadata !2193, metadata !DIExpression()), !dbg !2203
  call void @llvm.dbg.value(metadata i64 %46, metadata !2194, metadata !DIExpression()), !dbg !2203
  call void @llvm.dbg.value(metadata i8* %43, metadata !1793, metadata !DIExpression()) #25, !dbg !2245
  call void @llvm.dbg.value(metadata i8* %45, metadata !1803, metadata !DIExpression()) #25, !dbg !2245
  call void @llvm.dbg.value(metadata i64 64, metadata !1804, metadata !DIExpression()) #25, !dbg !2245
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 dereferenceable(64) %43, i8* nonnull align 1 dereferenceable(64) %45, i64 64, i1 false) #25, !dbg !2248
  tail call void @md5_process_block(i8* nonnull %43, i64 64, %struct.md5_ctx* %2) #25, !dbg !2249
  %47 = getelementptr inbounds i8, i8* %45, i64 64, !dbg !2250
  call void @llvm.dbg.value(metadata i8* %47, metadata !2193, metadata !DIExpression()), !dbg !2203
  %48 = add i64 %46, -64, !dbg !2251
  call void @llvm.dbg.value(metadata i64 %48, metadata !2194, metadata !DIExpression()), !dbg !2203
  %49 = icmp ugt i64 %48, 64, !dbg !2243
  br i1 %49, label %44, label %58, !dbg !2244, !llvm.loop !2252

50:                                               ; preds = %35
  %51 = and i64 %32, -64, !dbg !2254
  tail call void @md5_process_block(i8* %33, i64 %51, %struct.md5_ctx* nonnull %2) #25, !dbg !2256
  %52 = getelementptr inbounds i8, i8* %33, i64 %51, !dbg !2257
  call void @llvm.dbg.value(metadata i8* %52, metadata !2193, metadata !DIExpression()), !dbg !2203
  %53 = and i64 %32, 63, !dbg !2258
  call void @llvm.dbg.value(metadata i64 %53, metadata !2194, metadata !DIExpression()), !dbg !2203
  br label %54

54:                                               ; preds = %50, %31
  %55 = phi i64 [ %53, %50 ], [ %32, %31 ], !dbg !2203
  %56 = phi i8* [ %52, %50 ], [ %33, %31 ], !dbg !2203
  call void @llvm.dbg.value(metadata i8* %56, metadata !2193, metadata !DIExpression()), !dbg !2203
  call void @llvm.dbg.value(metadata i64 %55, metadata !2194, metadata !DIExpression()), !dbg !2203
  %57 = icmp eq i64 %55, 0, !dbg !2259
  br i1 %57, label %75, label %58, !dbg !2260

58:                                               ; preds = %44, %39, %54
  %59 = phi i8* [ %56, %54 ], [ %33, %39 ], [ %47, %44 ]
  %60 = phi i64 [ %55, %54 ], [ 64, %39 ], [ %48, %44 ]
  %61 = load i32, i32* %4, align 4, !dbg !2261, !tbaa !1770
  %62 = zext i32 %61 to i64, !dbg !2262
  call void @llvm.dbg.value(metadata i64 %62, metadata !2200, metadata !DIExpression()), !dbg !2263
  %63 = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %2, i64 0, i32 6, !dbg !2264
  %64 = bitcast [32 x i32]* %63 to i8*, !dbg !2265
  %65 = getelementptr inbounds i8, i8* %64, i64 %62, !dbg !2265
  call void @llvm.dbg.value(metadata i8* %65, metadata !1793, metadata !DIExpression()) #25, !dbg !2266
  call void @llvm.dbg.value(metadata i8* %56, metadata !1803, metadata !DIExpression()) #25, !dbg !2266
  call void @llvm.dbg.value(metadata i64 %55, metadata !1804, metadata !DIExpression()) #25, !dbg !2266
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %65, i8* nonnull align 1 %59, i64 %60, i1 false) #25, !dbg !2268
  %66 = add nuw nsw i64 %60, %62, !dbg !2269
  call void @llvm.dbg.value(metadata i64 %66, metadata !2200, metadata !DIExpression()), !dbg !2263
  %67 = icmp ugt i64 %66, 63, !dbg !2270
  br i1 %67, label %68, label %72, !dbg !2272

68:                                               ; preds = %58
  tail call void @md5_process_block(i8* nonnull %64, i64 64, %struct.md5_ctx* nonnull %2) #25, !dbg !2273
  %69 = add nsw i64 %66, -64, !dbg !2275
  call void @llvm.dbg.value(metadata i64 %69, metadata !2200, metadata !DIExpression()), !dbg !2263
  %70 = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %2, i64 0, i32 6, i64 16, !dbg !2276
  %71 = bitcast i32* %70 to i8*, !dbg !2277
  call void @llvm.dbg.value(metadata i8* %64, metadata !1793, metadata !DIExpression()) #25, !dbg !2278
  call void @llvm.dbg.value(metadata i8* %71, metadata !1803, metadata !DIExpression()) #25, !dbg !2278
  call void @llvm.dbg.value(metadata i64 %69, metadata !1804, metadata !DIExpression()) #25, !dbg !2278
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %64, i8* nonnull align 1 %71, i64 %69, i1 false) #25, !dbg !2280
  br label %72, !dbg !2281

72:                                               ; preds = %68, %58
  %73 = phi i64 [ %69, %68 ], [ %66, %58 ], !dbg !2263
  call void @llvm.dbg.value(metadata i64 %73, metadata !2200, metadata !DIExpression()), !dbg !2263
  %74 = trunc i64 %73 to i32, !dbg !2282
  store i32 %74, i32* %4, align 4, !dbg !2283, !tbaa !1770
  br label %75, !dbg !2284

75:                                               ; preds = %72, %54
  ret void, !dbg !2285
}

; Function Attrs: nofree nounwind sspstrong uwtable
define dso_local i8* @md5_buffer(i8* %0, i64 %1, i8* returned %2) local_unnamed_addr #13 !dbg !2286 {
  %4 = alloca %struct.md5_ctx, align 16
  call void @llvm.dbg.value(metadata i8* %0, metadata !2290, metadata !DIExpression()), !dbg !2294
  call void @llvm.dbg.value(metadata i64 %1, metadata !2291, metadata !DIExpression()), !dbg !2294
  call void @llvm.dbg.value(metadata i8* %2, metadata !2292, metadata !DIExpression()), !dbg !2294
  %5 = bitcast %struct.md5_ctx* %4 to i8*, !dbg !2295
  call void @llvm.lifetime.start.p0i8(i64 156, i8* nonnull %5) #25, !dbg !2295
  call void @llvm.dbg.declare(metadata %struct.md5_ctx* %4, metadata !2293, metadata !DIExpression()), !dbg !2296
  call void @llvm.dbg.value(metadata %struct.md5_ctx* %4, metadata !1761, metadata !DIExpression()), !dbg !2297
  %6 = bitcast %struct.md5_ctx* %4 to <4 x i32>*, !dbg !2299
  store <4 x i32> <i32 1732584193, i32 -271733879, i32 -1732584194, i32 271733878>, <4 x i32>* %6, align 16, !dbg !2299, !tbaa !1016
  %7 = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %4, i64 0, i32 4, i64 1, !dbg !2300
  store i32 0, i32* %7, align 4, !dbg !2301, !tbaa !1016
  %8 = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %4, i64 0, i32 4, i64 0, !dbg !2302
  store i32 0, i32* %8, align 16, !dbg !2303, !tbaa !1016
  %9 = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %4, i64 0, i32 5, !dbg !2304
  store i32 0, i32* %9, align 8, !dbg !2305, !tbaa !1770
  call void @md5_process_bytes(i8* %0, i64 %1, %struct.md5_ctx* nonnull %4) #25, !dbg !2306
  %10 = call i8* @md5_finish_ctx(%struct.md5_ctx* nonnull %4, i8* %2) #25, !dbg !2307
  call void @llvm.lifetime.end.p0i8(i64 156, i8* nonnull %5) #25, !dbg !2308
  ret i8* %2, !dbg !2309
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @fdadvise(i32 %0, i64 %1, i64 %2, i32 %3) local_unnamed_addr #8 !dbg !2310 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2316, metadata !DIExpression()), !dbg !2322
  call void @llvm.dbg.value(metadata i64 %1, metadata !2317, metadata !DIExpression()), !dbg !2322
  call void @llvm.dbg.value(metadata i64 %2, metadata !2318, metadata !DIExpression()), !dbg !2322
  call void @llvm.dbg.value(metadata i32 %3, metadata !2319, metadata !DIExpression()), !dbg !2322
  %5 = tail call i32 @posix_fadvise(i32 %0, i64 %1, i64 %2, i32 %3) #25, !dbg !2323
  call void @llvm.dbg.value(metadata i32 %5, metadata !2320, metadata !DIExpression()), !dbg !2324
  ret void, !dbg !2325
}

; Function Attrs: nounwind
declare !dbg !2326 i32 @posix_fadvise(i32, i64, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @fadvise(%struct._IO_FILE* %0, i32 %1) local_unnamed_addr #8 !dbg !2330 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2368, metadata !DIExpression()), !dbg !2370
  call void @llvm.dbg.value(metadata i32 %1, metadata !2369, metadata !DIExpression()), !dbg !2370
  %3 = icmp eq %struct._IO_FILE* %0, null, !dbg !2371
  br i1 %3, label %7, label %4, !dbg !2373

4:                                                ; preds = %2
  %5 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #25, !dbg !2374
  call void @llvm.dbg.value(metadata i32 %5, metadata !2316, metadata !DIExpression()) #25, !dbg !2375
  call void @llvm.dbg.value(metadata i64 0, metadata !2317, metadata !DIExpression()) #25, !dbg !2375
  call void @llvm.dbg.value(metadata i64 0, metadata !2318, metadata !DIExpression()) #25, !dbg !2375
  call void @llvm.dbg.value(metadata i32 %1, metadata !2319, metadata !DIExpression()) #25, !dbg !2375
  %6 = tail call i32 @posix_fadvise(i32 %5, i64 0, i64 0, i32 %1) #25, !dbg !2377
  call void @llvm.dbg.value(metadata i32 %6, metadata !2320, metadata !DIExpression()) #25, !dbg !2378
  br label %7, !dbg !2379

7:                                                ; preds = %4, %2
  ret void, !dbg !2380
}

; Function Attrs: nofree nounwind
declare !dbg !2381 noundef i32 @fileno(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local %struct._IO_FILE* @fopen_safer(i8* nocapture readonly %0, i8* nocapture readonly %1) local_unnamed_addr #8 !dbg !2384 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2422, metadata !DIExpression()), !dbg !2437
  call void @llvm.dbg.value(metadata i8* %1, metadata !2423, metadata !DIExpression()), !dbg !2437
  %3 = tail call %struct._IO_FILE* @fopen(i8* %0, i8* %1), !dbg !2438
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %3, metadata !2424, metadata !DIExpression()), !dbg !2437
  %4 = icmp eq %struct._IO_FILE* %3, null, !dbg !2439
  br i1 %4, label %25, label %5, !dbg !2440

5:                                                ; preds = %2
  %6 = tail call i32 @fileno(%struct._IO_FILE* nonnull %3) #25, !dbg !2441
  call void @llvm.dbg.value(metadata i32 %6, metadata !2425, metadata !DIExpression()), !dbg !2442
  %7 = icmp ult i32 %6, 3, !dbg !2443
  br i1 %7, label %8, label %25, !dbg !2443

8:                                                ; preds = %5
  %9 = tail call i32 @dup_safer(i32 %6) #25, !dbg !2444
  call void @llvm.dbg.value(metadata i32 %9, metadata !2428, metadata !DIExpression()), !dbg !2445
  %10 = icmp slt i32 %9, 0, !dbg !2446
  br i1 %10, label %11, label %15, !dbg !2447

11:                                               ; preds = %8
  %12 = tail call i32* @__errno_location() #29, !dbg !2448
  %13 = load i32, i32* %12, align 4, !dbg !2448, !tbaa !1016
  call void @llvm.dbg.value(metadata i32 %13, metadata !2431, metadata !DIExpression()), !dbg !2449
  %14 = tail call i32 @rpl_fclose(%struct._IO_FILE* nonnull %3) #25, !dbg !2450
  store i32 %13, i32* %12, align 4, !dbg !2451, !tbaa !1016
  br label %25

15:                                               ; preds = %8
  %16 = tail call i32 @rpl_fclose(%struct._IO_FILE* nonnull %3) #25, !dbg !2452
  %17 = icmp eq i32 %16, 0, !dbg !2453
  br i1 %17, label %18, label %21, !dbg !2454

18:                                               ; preds = %15
  %19 = tail call %struct._IO_FILE* @fdopen(i32 %9, i8* %1) #25, !dbg !2455
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %19, metadata !2424, metadata !DIExpression()), !dbg !2437
  %20 = icmp eq %struct._IO_FILE* %19, null, !dbg !2456
  br i1 %20, label %21, label %25, !dbg !2457

21:                                               ; preds = %18, %15
  call void @llvm.dbg.value(metadata %struct._IO_FILE* undef, metadata !2424, metadata !DIExpression()), !dbg !2437
  %22 = tail call i32* @__errno_location() #29, !dbg !2458
  %23 = load i32, i32* %22, align 4, !dbg !2458, !tbaa !1016
  call void @llvm.dbg.value(metadata i32 %23, metadata !2434, metadata !DIExpression()), !dbg !2459
  %24 = tail call i32 @close(i32 %9) #25, !dbg !2460
  store i32 %23, i32* %22, align 4, !dbg !2461, !tbaa !1016
  br label %25

25:                                               ; preds = %5, %18, %2, %21, %11
  %26 = phi %struct._IO_FILE* [ null, %11 ], [ null, %21 ], [ null, %2 ], [ %19, %18 ], [ %3, %5 ], !dbg !2437
  ret %struct._IO_FILE* %26, !dbg !2462
}

; Function Attrs: nofree nounwind
declare noalias noundef %struct._IO_FILE* @fopen(i8* nocapture noundef readonly, i8* nocapture noundef readonly) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare !dbg !2463 noalias noundef %struct._IO_FILE* @fdopen(i32 noundef, i8* nocapture noundef readonly) local_unnamed_addr #4

declare !dbg !2466 i32 @close(i32) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_program_name(i8* %0) local_unnamed_addr #8 !dbg !2468 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2470, metadata !DIExpression()), !dbg !2473
  %2 = icmp eq i8* %0, null, !dbg !2474
  br i1 %2, label %3, label %6, !dbg !2476

3:                                                ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2477, !tbaa !787
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.101, i64 0, i64 0), i64 55, i64 1, %struct._IO_FILE* %4) #30, !dbg !2479
  tail call void @abort() #27, !dbg !2480
  unreachable, !dbg !2480

6:                                                ; preds = %1
  %7 = tail call i8* @strrchr(i8* nonnull %0, i32 47) #26, !dbg !2481
  call void @llvm.dbg.value(metadata i8* %7, metadata !2471, metadata !DIExpression()), !dbg !2473
  %8 = icmp eq i8* %7, null, !dbg !2482
  %9 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !2483
  %10 = select i1 %8, i8* %0, i8* %9, !dbg !2483
  call void @llvm.dbg.value(metadata i8* %10, metadata !2472, metadata !DIExpression()), !dbg !2473
  %11 = ptrtoint i8* %10 to i64, !dbg !2484
  %12 = ptrtoint i8* %0 to i64, !dbg !2484
  %13 = sub i64 %11, %12, !dbg !2484
  %14 = icmp sgt i64 %13, 6, !dbg !2486
  br i1 %14, label %15, label %24, !dbg !2487

15:                                               ; preds = %6
  %16 = getelementptr inbounds i8, i8* %10, i64 -7, !dbg !2488
  %17 = tail call i32 @strncmp(i8* nonnull %16, i8* nonnull dereferenceable(8) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.102, i64 0, i64 0), i64 7) #26, !dbg !2489
  %18 = icmp eq i32 %17, 0, !dbg !2490
  br i1 %18, label %19, label %24, !dbg !2491

19:                                               ; preds = %15
  call void @llvm.dbg.value(metadata i8* %10, metadata !2470, metadata !DIExpression()), !dbg !2473
  %20 = tail call i32 @strncmp(i8* nonnull %10, i8* nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.103, i64 0, i64 0), i64 3) #26, !dbg !2492
  %21 = icmp eq i32 %20, 0, !dbg !2495
  br i1 %21, label %22, label %24, !dbg !2496

22:                                               ; preds = %19
  %23 = getelementptr inbounds i8, i8* %10, i64 3, !dbg !2497
  call void @llvm.dbg.value(metadata i8* %23, metadata !2470, metadata !DIExpression()), !dbg !2473
  store i8* %23, i8** @program_invocation_short_name, align 8, !dbg !2499, !tbaa !787
  br label %24, !dbg !2500

24:                                               ; preds = %19, %22, %15, %6
  %25 = phi i8* [ %23, %22 ], [ %10, %19 ], [ %0, %15 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i8* %25, metadata !2470, metadata !DIExpression()), !dbg !2473
  store i8* %25, i8** @program_name, align 8, !dbg !2501, !tbaa !787
  store i8* %25, i8** @program_invocation_name, align 8, !dbg !2502, !tbaa !787
  ret void, !dbg !2503
}

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(i8* nocapture noundef, i64 noundef, i64 noundef, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #15

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #7

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i8* @strrchr(i8*, i32) local_unnamed_addr #6

; Function Attrs: nounwind sspstrong uwtable
define dso_local %struct.quoting_options* @clone_quoting_options(%struct.quoting_options* %0) local_unnamed_addr #8 !dbg !2504 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2509, metadata !DIExpression()), !dbg !2512
  %2 = tail call i32* @__errno_location() #29, !dbg !2513
  %3 = load i32, i32* %2, align 4, !dbg !2513, !tbaa !1016
  call void @llvm.dbg.value(metadata i32 %3, metadata !2510, metadata !DIExpression()), !dbg !2512
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !2514
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2514
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2514
  %7 = tail call i8* @xmemdup(i8* %6, i64 56) #25, !dbg !2515
  %8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !2515
  call void @llvm.dbg.value(metadata %struct.quoting_options* %8, metadata !2511, metadata !DIExpression()), !dbg !2512
  store i32 %3, i32* %2, align 4, !dbg !2516, !tbaa !1016
  ret %struct.quoting_options* %8, !dbg !2517
}

; Function Attrs: norecurse nounwind readonly sspstrong uwtable willreturn
define dso_local i32 @get_quoting_style(%struct.quoting_options* readonly %0) local_unnamed_addr #16 !dbg !2518 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2524, metadata !DIExpression()), !dbg !2525
  %2 = icmp eq %struct.quoting_options* %0, null, !dbg !2526
  %3 = select i1 %2, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2526
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2527
  %5 = load i32, i32* %4, align 8, !dbg !2527, !tbaa !2528
  ret i32 %5, !dbg !2530
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable willreturn writeonly
define dso_local void @set_quoting_style(%struct.quoting_options* %0, i32 %1) local_unnamed_addr #11 !dbg !2531 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2535, metadata !DIExpression()), !dbg !2537
  call void @llvm.dbg.value(metadata i32 %1, metadata !2536, metadata !DIExpression()), !dbg !2537
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !2538
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2538
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2539
  store i32 %1, i32* %5, align 8, !dbg !2540, !tbaa !2528
  ret void, !dbg !2541
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable willreturn
define dso_local i32 @set_char_quoting(%struct.quoting_options* %0, i8 signext %1, i32 %2) local_unnamed_addr #17 !dbg !2542 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2546, metadata !DIExpression()), !dbg !2554
  call void @llvm.dbg.value(metadata i8 %1, metadata !2547, metadata !DIExpression()), !dbg !2554
  call void @llvm.dbg.value(metadata i32 %2, metadata !2548, metadata !DIExpression()), !dbg !2554
  call void @llvm.dbg.value(metadata i8 %1, metadata !2549, metadata !DIExpression()), !dbg !2554
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !2555
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2555
  %6 = lshr i8 %1, 5, !dbg !2556
  %7 = zext i8 %6 to i64, !dbg !2556
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !2557
  call void @llvm.dbg.value(metadata i32* %8, metadata !2550, metadata !DIExpression()), !dbg !2554
  %9 = and i8 %1, 31, !dbg !2558
  %10 = zext i8 %9 to i32, !dbg !2558
  call void @llvm.dbg.value(metadata i32 %10, metadata !2552, metadata !DIExpression()), !dbg !2554
  %11 = load i32, i32* %8, align 4, !dbg !2559, !tbaa !1016
  %12 = lshr i32 %11, %10, !dbg !2560
  %13 = and i32 %12, 1, !dbg !2561
  call void @llvm.dbg.value(metadata i32 %13, metadata !2553, metadata !DIExpression()), !dbg !2554
  %14 = and i32 %2, 1, !dbg !2562
  %15 = xor i32 %13, %14, !dbg !2563
  %16 = shl i32 %15, %10, !dbg !2564
  %17 = xor i32 %16, %11, !dbg !2565
  store i32 %17, i32* %8, align 4, !dbg !2565, !tbaa !1016
  ret i32 %13, !dbg !2566
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable willreturn
define dso_local i32 @set_quoting_flags(%struct.quoting_options* %0, i32 %1) local_unnamed_addr #17 !dbg !2567 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2571, metadata !DIExpression()), !dbg !2574
  call void @llvm.dbg.value(metadata i32 %1, metadata !2572, metadata !DIExpression()), !dbg !2574
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !2575
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2577
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2571, metadata !DIExpression()), !dbg !2574
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !2578
  %6 = load i32, i32* %5, align 4, !dbg !2578, !tbaa !2579
  call void @llvm.dbg.value(metadata i32 %6, metadata !2573, metadata !DIExpression()), !dbg !2574
  store i32 %1, i32* %5, align 4, !dbg !2580, !tbaa !2579
  ret i32 %6, !dbg !2581
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_custom_quoting(%struct.quoting_options* %0, i8* %1, i8* %2) local_unnamed_addr #8 !dbg !2582 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2586, metadata !DIExpression()), !dbg !2589
  call void @llvm.dbg.value(metadata i8* %1, metadata !2587, metadata !DIExpression()), !dbg !2589
  call void @llvm.dbg.value(metadata i8* %2, metadata !2588, metadata !DIExpression()), !dbg !2589
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !2590
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2592
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2586, metadata !DIExpression()), !dbg !2589
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2593
  store i32 10, i32* %6, align 8, !dbg !2594, !tbaa !2528
  %7 = icmp ne i8* %1, null, !dbg !2595
  %8 = icmp ne i8* %2, null
  %9 = and i1 %7, %8, !dbg !2597
  br i1 %9, label %11, label %10, !dbg !2597

10:                                               ; preds = %3
  tail call void @abort() #27, !dbg !2598
  unreachable, !dbg !2598

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2599
  store i8* %1, i8** %12, align 8, !dbg !2600, !tbaa !2601
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2602
  store i8* %2, i8** %13, align 8, !dbg !2603, !tbaa !2604
  ret void, !dbg !2605
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @quotearg_buffer(i8* %0, i64 %1, i8* %2, i64 %3, %struct.quoting_options* readonly %4) local_unnamed_addr #8 !dbg !2606 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2610, metadata !DIExpression()), !dbg !2618
  call void @llvm.dbg.value(metadata i64 %1, metadata !2611, metadata !DIExpression()), !dbg !2618
  call void @llvm.dbg.value(metadata i8* %2, metadata !2612, metadata !DIExpression()), !dbg !2618
  call void @llvm.dbg.value(metadata i64 %3, metadata !2613, metadata !DIExpression()), !dbg !2618
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2614, metadata !DIExpression()), !dbg !2618
  %6 = icmp eq %struct.quoting_options* %4, null, !dbg !2619
  %7 = select i1 %6, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %4, !dbg !2619
  call void @llvm.dbg.value(metadata %struct.quoting_options* %7, metadata !2615, metadata !DIExpression()), !dbg !2618
  %8 = tail call i32* @__errno_location() #29, !dbg !2620
  %9 = load i32, i32* %8, align 4, !dbg !2620, !tbaa !1016
  call void @llvm.dbg.value(metadata i32 %9, metadata !2616, metadata !DIExpression()), !dbg !2618
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !2621
  %11 = load i32, i32* %10, align 8, !dbg !2621, !tbaa !2528
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !2622
  %13 = load i32, i32* %12, align 4, !dbg !2622, !tbaa !2579
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !2623
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !2624
  %16 = load i8*, i8** %15, align 8, !dbg !2624, !tbaa !2601
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !2625
  %18 = load i8*, i8** %17, align 8, !dbg !2625, !tbaa !2604
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %11, i32 %13, i32* nonnull %14, i8* %16, i8* %18), !dbg !2626
  call void @llvm.dbg.value(metadata i64 %19, metadata !2617, metadata !DIExpression()), !dbg !2618
  store i32 %9, i32* %8, align 4, !dbg !2627, !tbaa !1016
  ret i64 %19, !dbg !2628
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %4, i32 %5, i32* readonly %6, i8* readonly %7, i8* readonly %8) unnamed_addr #8 !dbg !2629 {
  %10 = alloca i64, align 8
  %11 = bitcast i64* %10 to %struct.__mbstate_t*
  %12 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !2635, metadata !DIExpression()), !dbg !2705
  call void @llvm.dbg.value(metadata i64 %1, metadata !2636, metadata !DIExpression()), !dbg !2705
  call void @llvm.dbg.value(metadata i8* %2, metadata !2637, metadata !DIExpression()), !dbg !2705
  call void @llvm.dbg.value(metadata i64 %3, metadata !2638, metadata !DIExpression()), !dbg !2705
  call void @llvm.dbg.value(metadata i32 %4, metadata !2639, metadata !DIExpression()), !dbg !2705
  call void @llvm.dbg.value(metadata i32 %5, metadata !2640, metadata !DIExpression()), !dbg !2705
  call void @llvm.dbg.value(metadata i32* %6, metadata !2641, metadata !DIExpression()), !dbg !2705
  call void @llvm.dbg.value(metadata i8* %7, metadata !2642, metadata !DIExpression()), !dbg !2705
  call void @llvm.dbg.value(metadata i8* %8, metadata !2643, metadata !DIExpression()), !dbg !2705
  call void @llvm.dbg.value(metadata i64 0, metadata !2645, metadata !DIExpression()), !dbg !2705
  call void @llvm.dbg.value(metadata i64 0, metadata !2646, metadata !DIExpression()), !dbg !2705
  call void @llvm.dbg.value(metadata i8* null, metadata !2647, metadata !DIExpression()), !dbg !2705
  call void @llvm.dbg.value(metadata i64 0, metadata !2648, metadata !DIExpression()), !dbg !2705
  call void @llvm.dbg.value(metadata i8 0, metadata !2649, metadata !DIExpression()), !dbg !2705
  %13 = tail call i64 @__ctype_get_mb_cur_max() #25, !dbg !2706
  %14 = icmp eq i64 %13, 1, !dbg !2707
  call void @llvm.dbg.value(metadata i1 %14, metadata !2650, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2705
  %15 = lshr i32 %5, 1, !dbg !2708
  %16 = trunc i32 %15 to i8, !dbg !2708
  %17 = and i8 %16, 1, !dbg !2708
  call void @llvm.dbg.value(metadata i8 %17, metadata !2651, metadata !DIExpression()), !dbg !2705
  call void @llvm.dbg.value(metadata i8 0, metadata !2652, metadata !DIExpression()), !dbg !2705
  call void @llvm.dbg.value(metadata i8 0, metadata !2653, metadata !DIExpression()), !dbg !2705
  call void @llvm.dbg.value(metadata i8 1, metadata !2654, metadata !DIExpression()), !dbg !2705
  %18 = getelementptr inbounds i8, i8* %2, i64 1
  %19 = and i32 %5, 4
  %20 = icmp ne i32 %19, 0
  %21 = and i32 %5, 1
  %22 = icmp eq i32 %21, 0
  %23 = bitcast i64* %10 to i8*
  %24 = bitcast i32* %12 to i8*
  %25 = icmp eq i32* %6, null
  br label %26, !dbg !2709

26:                                               ; preds = %603, %9
  %27 = phi i32 [ %4, %9 ], [ 2, %603 ]
  %28 = phi i8* [ %7, %9 ], [ %94, %603 ]
  %29 = phi i8* [ %8, %9 ], [ %95, %603 ]
  %30 = phi i64 [ 0, %9 ], [ %124, %603 ], !dbg !2710
  %31 = phi i8* [ null, %9 ], [ %97, %603 ], !dbg !2711
  %32 = phi i64 [ 0, %9 ], [ %98, %603 ], !dbg !2712
  %33 = phi i8 [ 0, %9 ], [ %99, %603 ], !dbg !2713
  %34 = phi i64 [ %3, %9 ], [ %588, %603 ]
  %35 = phi i8 [ %17, %9 ], [ %100, %603 ], !dbg !2705
  %36 = phi i8 [ 0, %9 ], [ %126, %603 ], !dbg !2714
  %37 = phi i8 [ 0, %9 ], [ %127, %603 ], !dbg !2715
  %38 = phi i8 [ 1, %9 ], [ %128, %603 ], !dbg !2716
  %39 = phi i64 [ %1, %9 ], [ %124, %603 ]
  call void @llvm.dbg.value(metadata i64 %39, metadata !2636, metadata !DIExpression()), !dbg !2705
  call void @llvm.dbg.value(metadata i8 %38, metadata !2654, metadata !DIExpression()), !dbg !2705
  call void @llvm.dbg.value(metadata i8 %37, metadata !2653, metadata !DIExpression()), !dbg !2705
  call void @llvm.dbg.value(metadata i8 %36, metadata !2652, metadata !DIExpression()), !dbg !2705
  call void @llvm.dbg.value(metadata i8 %35, metadata !2651, metadata !DIExpression()), !dbg !2705
  call void @llvm.dbg.value(metadata i64 %34, metadata !2638, metadata !DIExpression()), !dbg !2705
  call void @llvm.dbg.value(metadata i8 %33, metadata !2649, metadata !DIExpression()), !dbg !2705
  call void @llvm.dbg.value(metadata i64 %32, metadata !2648, metadata !DIExpression()), !dbg !2705
  call void @llvm.dbg.value(metadata i8* %31, metadata !2647, metadata !DIExpression()), !dbg !2705
  call void @llvm.dbg.value(metadata i64 %30, metadata !2646, metadata !DIExpression()), !dbg !2705
  call void @llvm.dbg.value(metadata i64 0, metadata !2645, metadata !DIExpression()), !dbg !2705
  call void @llvm.dbg.value(metadata i8* %29, metadata !2643, metadata !DIExpression()), !dbg !2705
  call void @llvm.dbg.value(metadata i8* %28, metadata !2642, metadata !DIExpression()), !dbg !2705
  call void @llvm.dbg.value(metadata i32 %27, metadata !2639, metadata !DIExpression()), !dbg !2705
  call void @llvm.dbg.label(metadata !2699), !dbg !2717
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
  ], !dbg !2718

40:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 %35, metadata !2651, metadata !DIExpression()), !dbg !2705
  call void @llvm.dbg.value(metadata i32 5, metadata !2639, metadata !DIExpression()), !dbg !2705
  br label %92, !dbg !2719

41:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 %35, metadata !2651, metadata !DIExpression()), !dbg !2705
  call void @llvm.dbg.value(metadata i32 5, metadata !2639, metadata !DIExpression()), !dbg !2705
  %42 = and i8 %35, 1, !dbg !2721
  %43 = icmp eq i8 %42, 0, !dbg !2721
  br i1 %43, label %44, label %92, !dbg !2719

44:                                               ; preds = %41
  %45 = icmp eq i64 %39, 0, !dbg !2723
  br i1 %45, label %92, label %46, !dbg !2726

46:                                               ; preds = %44
  store i8 34, i8* %0, align 1, !dbg !2723, !tbaa !1091
  br label %92, !dbg !2723

47:                                               ; preds = %26, %26
  %48 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.114, i64 0, i64 0), i32 %27), !dbg !2727
  call void @llvm.dbg.value(metadata i8* %48, metadata !2642, metadata !DIExpression()), !dbg !2705
  %49 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.115, i64 0, i64 0), i32 %27), !dbg !2731
  call void @llvm.dbg.value(metadata i8* %49, metadata !2643, metadata !DIExpression()), !dbg !2705
  br label %50, !dbg !2732

50:                                               ; preds = %26, %47
  %51 = phi i8* [ %48, %47 ], [ %28, %26 ]
  %52 = phi i8* [ %49, %47 ], [ %29, %26 ]
  call void @llvm.dbg.value(metadata i8* %52, metadata !2643, metadata !DIExpression()), !dbg !2705
  call void @llvm.dbg.value(metadata i8* %51, metadata !2642, metadata !DIExpression()), !dbg !2705
  %53 = and i8 %35, 1, !dbg !2733
  %54 = icmp eq i8 %53, 0, !dbg !2733
  br i1 %54, label %55, label %70, !dbg !2735

55:                                               ; preds = %50
  call void @llvm.dbg.value(metadata i8* %51, metadata !2647, metadata !DIExpression()), !dbg !2705
  call void @llvm.dbg.value(metadata i64 0, metadata !2645, metadata !DIExpression()), !dbg !2705
  %56 = load i8, i8* %51, align 1, !dbg !2736, !tbaa !1091
  %57 = icmp eq i8 %56, 0, !dbg !2739
  br i1 %57, label %70, label %58, !dbg !2739

58:                                               ; preds = %55, %65
  %59 = phi i8 [ %68, %65 ], [ %56, %55 ]
  %60 = phi i8* [ %67, %65 ], [ %51, %55 ]
  %61 = phi i64 [ %66, %65 ], [ 0, %55 ]
  call void @llvm.dbg.value(metadata i8* %60, metadata !2647, metadata !DIExpression()), !dbg !2705
  call void @llvm.dbg.value(metadata i64 %61, metadata !2645, metadata !DIExpression()), !dbg !2705
  %62 = icmp ult i64 %61, %39, !dbg !2740
  br i1 %62, label %63, label %65, !dbg !2743

63:                                               ; preds = %58
  %64 = getelementptr inbounds i8, i8* %0, i64 %61, !dbg !2740
  store i8 %59, i8* %64, align 1, !dbg !2740, !tbaa !1091
  br label %65, !dbg !2740

65:                                               ; preds = %63, %58
  %66 = add i64 %61, 1, !dbg !2743
  call void @llvm.dbg.value(metadata i64 %66, metadata !2645, metadata !DIExpression()), !dbg !2705
  %67 = getelementptr inbounds i8, i8* %60, i64 1, !dbg !2744
  call void @llvm.dbg.value(metadata i8* %67, metadata !2647, metadata !DIExpression()), !dbg !2705
  %68 = load i8, i8* %67, align 1, !dbg !2736, !tbaa !1091
  %69 = icmp eq i8 %68, 0, !dbg !2739
  br i1 %69, label %70, label %58, !dbg !2739, !llvm.loop !2745

70:                                               ; preds = %65, %55, %50
  %71 = phi i64 [ 0, %50 ], [ 0, %55 ], [ %66, %65 ], !dbg !2747
  call void @llvm.dbg.value(metadata i64 %71, metadata !2645, metadata !DIExpression()), !dbg !2705
  call void @llvm.dbg.value(metadata i8 1, metadata !2649, metadata !DIExpression()), !dbg !2705
  call void @llvm.dbg.value(metadata i8* %52, metadata !2647, metadata !DIExpression()), !dbg !2705
  %72 = call i64 @strlen(i8* nonnull dereferenceable(1) %52) #26, !dbg !2748
  call void @llvm.dbg.value(metadata i64 %72, metadata !2648, metadata !DIExpression()), !dbg !2705
  br label %92, !dbg !2749

73:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 1, metadata !2649, metadata !DIExpression()), !dbg !2705
  br label %74, !dbg !2750

74:                                               ; preds = %26, %73
  %75 = phi i8 [ %33, %26 ], [ 1, %73 ], !dbg !2705
  call void @llvm.dbg.value(metadata i8 %75, metadata !2649, metadata !DIExpression()), !dbg !2705
  call void @llvm.dbg.value(metadata i8 1, metadata !2651, metadata !DIExpression()), !dbg !2705
  br label %76, !dbg !2751

76:                                               ; preds = %26, %74
  %77 = phi i8 [ %33, %26 ], [ %75, %74 ], !dbg !2713
  %78 = phi i8 [ %35, %26 ], [ 1, %74 ], !dbg !2705
  call void @llvm.dbg.value(metadata i8 %78, metadata !2651, metadata !DIExpression()), !dbg !2705
  call void @llvm.dbg.value(metadata i8 %77, metadata !2649, metadata !DIExpression()), !dbg !2705
  %79 = and i8 %78, 1, !dbg !2752
  %80 = icmp eq i8 %79, 0, !dbg !2752
  %81 = select i1 %80, i8 1, i8 %77, !dbg !2754
  br label %82, !dbg !2754

82:                                               ; preds = %76, %26
  %83 = phi i8 [ %33, %26 ], [ %81, %76 ], !dbg !2705
  %84 = phi i8 [ %35, %26 ], [ %78, %76 ], !dbg !2708
  call void @llvm.dbg.value(metadata i8 %84, metadata !2651, metadata !DIExpression()), !dbg !2705
  call void @llvm.dbg.value(metadata i8 %83, metadata !2649, metadata !DIExpression()), !dbg !2705
  call void @llvm.dbg.value(metadata i32 2, metadata !2639, metadata !DIExpression()), !dbg !2705
  %85 = and i8 %84, 1, !dbg !2755
  %86 = icmp eq i8 %85, 0, !dbg !2755
  br i1 %86, label %87, label %92, !dbg !2757

87:                                               ; preds = %82
  %88 = icmp eq i64 %39, 0, !dbg !2758
  br i1 %88, label %92, label %89, !dbg !2761

89:                                               ; preds = %87
  store i8 39, i8* %0, align 1, !dbg !2758, !tbaa !1091
  br label %92, !dbg !2758

90:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 0, metadata !2651, metadata !DIExpression()), !dbg !2705
  br label %92, !dbg !2762

91:                                               ; preds = %26
  call void @abort() #27, !dbg !2763
  unreachable, !dbg !2763

92:                                               ; preds = %40, %82, %89, %87, %26, %41, %46, %44, %90, %70
  %93 = phi i32 [ 0, %90 ], [ %27, %70 ], [ 5, %44 ], [ 5, %46 ], [ 5, %41 ], [ %27, %26 ], [ 2, %87 ], [ 2, %89 ], [ 2, %82 ], [ 5, %40 ]
  %94 = phi i8* [ %28, %90 ], [ %51, %70 ], [ %28, %44 ], [ %28, %46 ], [ %28, %41 ], [ %28, %26 ], [ %28, %87 ], [ %28, %89 ], [ %28, %82 ], [ %28, %40 ]
  %95 = phi i8* [ %29, %90 ], [ %52, %70 ], [ %29, %44 ], [ %29, %46 ], [ %29, %41 ], [ %29, %26 ], [ %29, %87 ], [ %29, %89 ], [ %29, %82 ], [ %29, %40 ]
  %96 = phi i64 [ 0, %90 ], [ %71, %70 ], [ 1, %44 ], [ 1, %46 ], [ 0, %41 ], [ 0, %26 ], [ 1, %87 ], [ 1, %89 ], [ 0, %82 ], [ 0, %40 ], !dbg !2747
  %97 = phi i8* [ %31, %90 ], [ %52, %70 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.116, i64 0, i64 0), %44 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.116, i64 0, i64 0), %46 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.116, i64 0, i64 0), %41 ], [ %31, %26 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.115, i64 0, i64 0), %87 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.115, i64 0, i64 0), %89 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.115, i64 0, i64 0), %82 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.116, i64 0, i64 0), %40 ], !dbg !2705
  %98 = phi i64 [ %32, %90 ], [ %72, %70 ], [ 1, %44 ], [ 1, %46 ], [ 1, %41 ], [ %32, %26 ], [ 1, %87 ], [ 1, %89 ], [ 1, %82 ], [ 1, %40 ], !dbg !2705
  %99 = phi i8 [ %33, %90 ], [ 1, %70 ], [ 1, %44 ], [ 1, %46 ], [ 1, %41 ], [ 1, %26 ], [ %83, %87 ], [ %83, %89 ], [ %83, %82 ], [ 1, %40 ], !dbg !2705
  %100 = phi i8 [ 0, %90 ], [ %35, %70 ], [ %35, %44 ], [ %35, %46 ], [ %35, %41 ], [ 0, %26 ], [ %84, %87 ], [ %84, %89 ], [ %84, %82 ], [ 1, %40 ], !dbg !2705
  call void @llvm.dbg.value(metadata i8 %100, metadata !2651, metadata !DIExpression()), !dbg !2705
  call void @llvm.dbg.value(metadata i8 %99, metadata !2649, metadata !DIExpression()), !dbg !2705
  call void @llvm.dbg.value(metadata i64 %98, metadata !2648, metadata !DIExpression()), !dbg !2705
  call void @llvm.dbg.value(metadata i8* %97, metadata !2647, metadata !DIExpression()), !dbg !2705
  call void @llvm.dbg.value(metadata i64 %96, metadata !2645, metadata !DIExpression()), !dbg !2705
  call void @llvm.dbg.value(metadata i8* %95, metadata !2643, metadata !DIExpression()), !dbg !2705
  call void @llvm.dbg.value(metadata i8* %94, metadata !2642, metadata !DIExpression()), !dbg !2705
  call void @llvm.dbg.value(metadata i32 %93, metadata !2639, metadata !DIExpression()), !dbg !2705
  call void @llvm.dbg.value(metadata i64 0, metadata !2644, metadata !DIExpression()), !dbg !2705
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
  br label %121, !dbg !2764

121:                                              ; preds = %577, %92
  %122 = phi i64 [ 0, %92 ], [ %586, %577 ], !dbg !2765
  %123 = phi i64 [ %96, %92 ], [ %579, %577 ], !dbg !2747
  %124 = phi i64 [ %30, %92 ], [ %580, %577 ], !dbg !2710
  %125 = phi i64 [ %34, %92 ], [ %581, %577 ]
  %126 = phi i8 [ %36, %92 ], [ %582, %577 ], !dbg !2714
  %127 = phi i8 [ %37, %92 ], [ %583, %577 ], !dbg !2715
  %128 = phi i8 [ %38, %92 ], [ %584, %577 ], !dbg !2716
  %129 = phi i64 [ %39, %92 ], [ %585, %577 ]
  call void @llvm.dbg.value(metadata i64 %129, metadata !2636, metadata !DIExpression()), !dbg !2705
  call void @llvm.dbg.value(metadata i8 %128, metadata !2654, metadata !DIExpression()), !dbg !2705
  call void @llvm.dbg.value(metadata i8 %127, metadata !2653, metadata !DIExpression()), !dbg !2705
  call void @llvm.dbg.value(metadata i8 %126, metadata !2652, metadata !DIExpression()), !dbg !2705
  call void @llvm.dbg.value(metadata i64 %125, metadata !2638, metadata !DIExpression()), !dbg !2705
  call void @llvm.dbg.value(metadata i64 %124, metadata !2646, metadata !DIExpression()), !dbg !2705
  call void @llvm.dbg.value(metadata i64 %123, metadata !2645, metadata !DIExpression()), !dbg !2705
  call void @llvm.dbg.value(metadata i64 %122, metadata !2644, metadata !DIExpression()), !dbg !2705
  %130 = icmp eq i64 %125, -1, !dbg !2766
  br i1 %130, label %131, label %135, !dbg !2767

131:                                              ; preds = %121
  %132 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !2768
  %133 = load i8, i8* %132, align 1, !dbg !2768, !tbaa !1091
  %134 = icmp eq i8 %133, 0, !dbg !2769
  br i1 %134, label %587, label %137, !dbg !2770

135:                                              ; preds = %121
  %136 = icmp eq i64 %122, %125, !dbg !2771
  br i1 %136, label %587, label %137, !dbg !2770

137:                                              ; preds = %131, %135
  call void @llvm.dbg.value(metadata i8 0, metadata !2660, metadata !DIExpression()), !dbg !2772
  call void @llvm.dbg.value(metadata i8 0, metadata !2661, metadata !DIExpression()), !dbg !2772
  call void @llvm.dbg.value(metadata i8 0, metadata !2662, metadata !DIExpression()), !dbg !2772
  br i1 %106, label %138, label %153, !dbg !2773

138:                                              ; preds = %137
  %139 = add i64 %122, %98, !dbg !2775
  %140 = and i1 %107, %130, !dbg !2776
  br i1 %140, label %141, label %143, !dbg !2776

141:                                              ; preds = %138
  %142 = call i64 @strlen(i8* nonnull dereferenceable(1) %2) #26, !dbg !2777
  call void @llvm.dbg.value(metadata i64 %142, metadata !2638, metadata !DIExpression()), !dbg !2705
  br label %143, !dbg !2778

143:                                              ; preds = %138, %141
  %144 = phi i64 [ %142, %141 ], [ %125, %138 ], !dbg !2778
  call void @llvm.dbg.value(metadata i64 %144, metadata !2638, metadata !DIExpression()), !dbg !2705
  %145 = icmp ugt i64 %139, %144, !dbg !2779
  br i1 %145, label %153, label %146, !dbg !2780

146:                                              ; preds = %143
  %147 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !2781
  %148 = call i32 @bcmp(i8* %147, i8* %97, i64 %98), !dbg !2782
  %149 = icmp ne i32 %148, 0, !dbg !2783
  %150 = or i1 %149, %109, !dbg !2784
  %151 = xor i1 %149, true, !dbg !2784
  %152 = zext i1 %151 to i8, !dbg !2784
  br i1 %150, label %153, label %646, !dbg !2784

153:                                              ; preds = %146, %143, %137
  %154 = phi i64 [ %144, %146 ], [ %144, %143 ], [ %125, %137 ]
  %155 = phi i1 [ %149, %146 ], [ true, %143 ], [ true, %137 ], !dbg !2772
  %156 = phi i8 [ %152, %146 ], [ 0, %143 ], [ 0, %137 ], !dbg !2772
  call void @llvm.dbg.value(metadata i8 %156, metadata !2660, metadata !DIExpression()), !dbg !2772
  call void @llvm.dbg.value(metadata i64 %154, metadata !2638, metadata !DIExpression()), !dbg !2705
  %157 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !2785
  %158 = load i8, i8* %157, align 1, !dbg !2785, !tbaa !1091
  call void @llvm.dbg.value(metadata i8 %158, metadata !2655, metadata !DIExpression()), !dbg !2772
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
  ], !dbg !2786

159:                                              ; preds = %153
  br i1 %102, label %160, label %208, !dbg !2787

160:                                              ; preds = %159
  br i1 %109, label %161, label %635, !dbg !2788

161:                                              ; preds = %160
  call void @llvm.dbg.value(metadata i8 1, metadata !2661, metadata !DIExpression()), !dbg !2772
  %162 = and i8 %126, 1, !dbg !2792
  %163 = icmp eq i8 %162, 0, !dbg !2792
  %164 = and i1 %110, %163, !dbg !2792
  br i1 %164, label %165, label %181, !dbg !2792

165:                                              ; preds = %161
  %166 = icmp ult i64 %123, %129, !dbg !2794
  br i1 %166, label %167, label %169, !dbg !2798

167:                                              ; preds = %165
  %168 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !2794
  store i8 39, i8* %168, align 1, !dbg !2794, !tbaa !1091
  br label %169, !dbg !2794

169:                                              ; preds = %167, %165
  %170 = add i64 %123, 1, !dbg !2798
  call void @llvm.dbg.value(metadata i64 %170, metadata !2645, metadata !DIExpression()), !dbg !2705
  %171 = icmp ult i64 %170, %129, !dbg !2799
  br i1 %171, label %172, label %174, !dbg !2802

172:                                              ; preds = %169
  %173 = getelementptr inbounds i8, i8* %0, i64 %170, !dbg !2799
  store i8 36, i8* %173, align 1, !dbg !2799, !tbaa !1091
  br label %174, !dbg !2799

174:                                              ; preds = %172, %169
  %175 = add i64 %123, 2, !dbg !2802
  call void @llvm.dbg.value(metadata i64 %175, metadata !2645, metadata !DIExpression()), !dbg !2705
  %176 = icmp ult i64 %175, %129, !dbg !2803
  br i1 %176, label %177, label %179, !dbg !2806

177:                                              ; preds = %174
  %178 = getelementptr inbounds i8, i8* %0, i64 %175, !dbg !2803
  store i8 39, i8* %178, align 1, !dbg !2803, !tbaa !1091
  br label %179, !dbg !2803

179:                                              ; preds = %177, %174
  %180 = add i64 %123, 3, !dbg !2806
  call void @llvm.dbg.value(metadata i64 %180, metadata !2645, metadata !DIExpression()), !dbg !2705
  call void @llvm.dbg.value(metadata i8 1, metadata !2652, metadata !DIExpression()), !dbg !2705
  br label %181, !dbg !2807

181:                                              ; preds = %161, %179
  %182 = phi i64 [ %180, %179 ], [ %123, %161 ], !dbg !2705
  %183 = phi i8 [ 1, %179 ], [ %126, %161 ], !dbg !2705
  call void @llvm.dbg.value(metadata i8 %183, metadata !2652, metadata !DIExpression()), !dbg !2705
  call void @llvm.dbg.value(metadata i64 %182, metadata !2645, metadata !DIExpression()), !dbg !2705
  %184 = icmp ult i64 %182, %129, !dbg !2808
  br i1 %184, label %185, label %187, !dbg !2811

185:                                              ; preds = %181
  %186 = getelementptr inbounds i8, i8* %0, i64 %182, !dbg !2808
  store i8 92, i8* %186, align 1, !dbg !2808, !tbaa !1091
  br label %187, !dbg !2808

187:                                              ; preds = %185, %181
  %188 = add i64 %182, 1, !dbg !2811
  call void @llvm.dbg.value(metadata i64 %188, metadata !2645, metadata !DIExpression()), !dbg !2705
  %189 = add i64 %122, 1
  %190 = icmp ult i64 %189, %154
  %191 = and i1 %103, %190, !dbg !2812
  br i1 %191, label %192, label %473, !dbg !2812

192:                                              ; preds = %187
  %193 = getelementptr inbounds i8, i8* %2, i64 %189, !dbg !2814
  %194 = load i8, i8* %193, align 1, !dbg !2814, !tbaa !1091
  %195 = add i8 %194, -48, !dbg !2815
  %196 = icmp ult i8 %195, 10, !dbg !2815
  br i1 %196, label %197, label %473, !dbg !2815

197:                                              ; preds = %192
  %198 = icmp ult i64 %188, %129, !dbg !2816
  br i1 %198, label %199, label %201, !dbg !2820

199:                                              ; preds = %197
  %200 = getelementptr inbounds i8, i8* %0, i64 %188, !dbg !2816
  store i8 48, i8* %200, align 1, !dbg !2816, !tbaa !1091
  br label %201, !dbg !2816

201:                                              ; preds = %199, %197
  %202 = add i64 %182, 2, !dbg !2820
  call void @llvm.dbg.value(metadata i64 %202, metadata !2645, metadata !DIExpression()), !dbg !2705
  %203 = icmp ult i64 %202, %129, !dbg !2821
  br i1 %203, label %204, label %206, !dbg !2824

204:                                              ; preds = %201
  %205 = getelementptr inbounds i8, i8* %0, i64 %202, !dbg !2821
  store i8 48, i8* %205, align 1, !dbg !2821, !tbaa !1091
  br label %206, !dbg !2821

206:                                              ; preds = %204, %201
  %207 = add i64 %182, 3, !dbg !2824
  call void @llvm.dbg.value(metadata i64 %207, metadata !2645, metadata !DIExpression()), !dbg !2705
  br label %473, !dbg !2825

208:                                              ; preds = %159
  br i1 %22, label %473, label %577, !dbg !2826

209:                                              ; preds = %153
  switch i32 %93, label %473 [
    i32 2, label %210
    i32 5, label %211
  ], !dbg !2827

210:                                              ; preds = %209
  br i1 %109, label %473, label %631, !dbg !2828

211:                                              ; preds = %209
  %212 = add i64 %122, 2
  %213 = icmp ult i64 %212, %154
  %214 = and i1 %20, %213, !dbg !2830
  br i1 %214, label %215, label %473, !dbg !2830

215:                                              ; preds = %211
  %216 = add i64 %122, 1, !dbg !2832
  %217 = getelementptr inbounds i8, i8* %2, i64 %216, !dbg !2833
  %218 = load i8, i8* %217, align 1, !dbg !2833, !tbaa !1091
  %219 = icmp eq i8 %218, 63, !dbg !2834
  br i1 %219, label %220, label %473, !dbg !2835

220:                                              ; preds = %215
  %221 = getelementptr inbounds i8, i8* %2, i64 %212, !dbg !2836
  %222 = load i8, i8* %221, align 1, !dbg !2836, !tbaa !1091
  %223 = sext i8 %222 to i32, !dbg !2836
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
  ], !dbg !2837

224:                                              ; preds = %220, %220, %220, %220, %220, %220, %220, %220, %220
  br i1 %109, label %225, label %646, !dbg !2838

225:                                              ; preds = %224
  call void @llvm.dbg.value(metadata i8 %222, metadata !2655, metadata !DIExpression()), !dbg !2772
  call void @llvm.dbg.value(metadata i64 undef, metadata !2644, metadata !DIExpression()), !dbg !2705
  %226 = icmp ult i64 %123, %129, !dbg !2840
  br i1 %226, label %227, label %229, !dbg !2843

227:                                              ; preds = %225
  %228 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !2840
  store i8 63, i8* %228, align 1, !dbg !2840, !tbaa !1091
  br label %229, !dbg !2840

229:                                              ; preds = %227, %225
  %230 = add i64 %123, 1, !dbg !2843
  call void @llvm.dbg.value(metadata i64 %230, metadata !2645, metadata !DIExpression()), !dbg !2705
  %231 = icmp ult i64 %230, %129, !dbg !2844
  br i1 %231, label %232, label %234, !dbg !2847

232:                                              ; preds = %229
  %233 = getelementptr inbounds i8, i8* %0, i64 %230, !dbg !2844
  store i8 34, i8* %233, align 1, !dbg !2844, !tbaa !1091
  br label %234, !dbg !2844

234:                                              ; preds = %232, %229
  %235 = add i64 %123, 2, !dbg !2847
  call void @llvm.dbg.value(metadata i64 %235, metadata !2645, metadata !DIExpression()), !dbg !2705
  %236 = icmp ult i64 %235, %129, !dbg !2848
  br i1 %236, label %237, label %239, !dbg !2851

237:                                              ; preds = %234
  %238 = getelementptr inbounds i8, i8* %0, i64 %235, !dbg !2848
  store i8 34, i8* %238, align 1, !dbg !2848, !tbaa !1091
  br label %239, !dbg !2848

239:                                              ; preds = %237, %234
  %240 = add i64 %123, 3, !dbg !2851
  call void @llvm.dbg.value(metadata i64 %240, metadata !2645, metadata !DIExpression()), !dbg !2705
  %241 = icmp ult i64 %240, %129, !dbg !2852
  br i1 %241, label %242, label %244, !dbg !2855

242:                                              ; preds = %239
  %243 = getelementptr inbounds i8, i8* %0, i64 %240, !dbg !2852
  store i8 63, i8* %243, align 1, !dbg !2852, !tbaa !1091
  br label %244, !dbg !2852

244:                                              ; preds = %242, %239
  %245 = add i64 %123, 4, !dbg !2855
  call void @llvm.dbg.value(metadata i64 %245, metadata !2645, metadata !DIExpression()), !dbg !2705
  br label %473, !dbg !2856

246:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 98, metadata !2659, metadata !DIExpression()), !dbg !2772
  br label %256, !dbg !2857

247:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 102, metadata !2659, metadata !DIExpression()), !dbg !2772
  br label %256, !dbg !2858

248:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 114, metadata !2659, metadata !DIExpression()), !dbg !2772
  br label %254, !dbg !2859

249:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 116, metadata !2659, metadata !DIExpression()), !dbg !2772
  br label %254, !dbg !2860

250:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 118, metadata !2659, metadata !DIExpression()), !dbg !2772
  br label %256, !dbg !2861

251:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 %158, metadata !2659, metadata !DIExpression()), !dbg !2772
  br i1 %110, label %252, label %253, !dbg !2862

252:                                              ; preds = %251
  br i1 %109, label %533, label %631, !dbg !2863

253:                                              ; preds = %251
  br i1 %120, label %533, label %254, !dbg !2866

254:                                              ; preds = %253, %153, %249, %248
  %255 = phi i8 [ 92, %253 ], [ 116, %249 ], [ 114, %248 ], [ 110, %153 ], !dbg !2868
  call void @llvm.dbg.value(metadata i8 %255, metadata !2659, metadata !DIExpression()), !dbg !2772
  call void @llvm.dbg.label(metadata !2700), !dbg !2869
  br i1 %111, label %256, label %631, !dbg !2870

256:                                              ; preds = %153, %254, %250, %247, %246
  %257 = phi i8 [ %255, %254 ], [ 118, %250 ], [ 102, %247 ], [ 98, %246 ], [ 97, %153 ], !dbg !2868
  call void @llvm.dbg.value(metadata i8 %257, metadata !2659, metadata !DIExpression()), !dbg !2772
  call void @llvm.dbg.label(metadata !2701), !dbg !2872
  br i1 %102, label %495, label %473, !dbg !2873

258:                                              ; preds = %153, %153
  switch i64 %154, label %473 [
    i64 -1, label %259
    i64 1, label %262
  ], !dbg !2874

259:                                              ; preds = %258
  %260 = load i8, i8* %18, align 1, !dbg !2875, !tbaa !1091
  %261 = icmp eq i8 %260, 0, !dbg !2877
  br i1 %261, label %262, label %473, !dbg !2878

262:                                              ; preds = %258, %259, %153, %153
  %263 = icmp eq i64 %122, 0, !dbg !2879
  br i1 %263, label %264, label %473, !dbg !2881

264:                                              ; preds = %262, %153
  call void @llvm.dbg.value(metadata i8 1, metadata !2662, metadata !DIExpression()), !dbg !2772
  br label %265, !dbg !2882

265:                                              ; preds = %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %264
  %266 = phi i8 [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 1, %264 ], !dbg !2772
  call void @llvm.dbg.value(metadata i8 %266, metadata !2662, metadata !DIExpression()), !dbg !2772
  br i1 %111, label %473, label %631, !dbg !2883

267:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 1, metadata !2653, metadata !DIExpression()), !dbg !2705
  call void @llvm.dbg.value(metadata i8 1, metadata !2662, metadata !DIExpression()), !dbg !2772
  br i1 %110, label %268, label %473, !dbg !2885

268:                                              ; preds = %267
  br i1 %109, label %269, label %631, !dbg !2886

269:                                              ; preds = %268
  %270 = icmp eq i64 %129, 0, !dbg !2889
  %271 = icmp ne i64 %124, 0
  %272 = or i1 %271, %270, !dbg !2891
  %273 = select i1 %272, i64 %124, i64 %129, !dbg !2891
  %274 = select i1 %272, i64 %129, i64 0, !dbg !2891
  call void @llvm.dbg.value(metadata i64 %274, metadata !2636, metadata !DIExpression()), !dbg !2705
  call void @llvm.dbg.value(metadata i64 %273, metadata !2646, metadata !DIExpression()), !dbg !2705
  %275 = icmp ult i64 %123, %274, !dbg !2892
  br i1 %275, label %276, label %278, !dbg !2895

276:                                              ; preds = %269
  %277 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !2892
  store i8 39, i8* %277, align 1, !dbg !2892, !tbaa !1091
  br label %278, !dbg !2892

278:                                              ; preds = %276, %269
  %279 = add i64 %123, 1, !dbg !2895
  call void @llvm.dbg.value(metadata i64 %279, metadata !2645, metadata !DIExpression()), !dbg !2705
  %280 = icmp ult i64 %279, %274, !dbg !2896
  br i1 %280, label %281, label %283, !dbg !2899

281:                                              ; preds = %278
  %282 = getelementptr inbounds i8, i8* %0, i64 %279, !dbg !2896
  store i8 92, i8* %282, align 1, !dbg !2896, !tbaa !1091
  br label %283, !dbg !2896

283:                                              ; preds = %281, %278
  %284 = add i64 %123, 2, !dbg !2899
  call void @llvm.dbg.value(metadata i64 %284, metadata !2645, metadata !DIExpression()), !dbg !2705
  %285 = icmp ult i64 %284, %274, !dbg !2900
  br i1 %285, label %286, label %288, !dbg !2903

286:                                              ; preds = %283
  %287 = getelementptr inbounds i8, i8* %0, i64 %284, !dbg !2900
  store i8 39, i8* %287, align 1, !dbg !2900, !tbaa !1091
  br label %288, !dbg !2900

288:                                              ; preds = %286, %283
  %289 = add i64 %123, 3, !dbg !2903
  call void @llvm.dbg.value(metadata i64 %289, metadata !2645, metadata !DIExpression()), !dbg !2705
  call void @llvm.dbg.value(metadata i8 0, metadata !2652, metadata !DIExpression()), !dbg !2705
  br label %473, !dbg !2904

290:                                              ; preds = %153
  br i1 %14, label %291, label %301, !dbg !2905

291:                                              ; preds = %290
  call void @llvm.dbg.value(metadata i64 1, metadata !2663, metadata !DIExpression()), !dbg !2906
  %292 = tail call i16** @__ctype_b_loc() #29, !dbg !2907
  %293 = load i16*, i16** %292, align 8, !dbg !2907, !tbaa !787
  %294 = zext i8 %158 to i64, !dbg !2907
  %295 = getelementptr inbounds i16, i16* %293, i64 %294, !dbg !2907
  %296 = load i16, i16* %295, align 2, !dbg !2907, !tbaa !1231
  %297 = lshr i16 %296, 14, !dbg !2909
  %298 = trunc i16 %297 to i8, !dbg !2909
  %299 = and i8 %298, 1, !dbg !2909
  call void @llvm.dbg.value(metadata i8 %354, metadata !2666, metadata !DIExpression()), !dbg !2906
  call void @llvm.dbg.value(metadata i64 %355, metadata !2663, metadata !DIExpression()), !dbg !2906
  call void @llvm.dbg.value(metadata i64 %306, metadata !2638, metadata !DIExpression()), !dbg !2705
  %300 = icmp eq i8 %299, 0, !dbg !2910
  call void @llvm.dbg.value(metadata i1 %357, metadata !2662, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2772
  br label %359, !dbg !2911

301:                                              ; preds = %290
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %23) #25, !dbg !2912
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %11, metadata !2667, metadata !DIExpression()), !dbg !2913
  call void @llvm.dbg.value(metadata i8* %23, metadata !2914, metadata !DIExpression()) #25, !dbg !2921
  call void @llvm.dbg.value(metadata i32 0, metadata !2919, metadata !DIExpression()) #25, !dbg !2921
  call void @llvm.dbg.value(metadata i64 8, metadata !2920, metadata !DIExpression()) #25, !dbg !2921
  store i64 0, i64* %10, align 8, !dbg !2923
  call void @llvm.dbg.value(metadata i64 0, metadata !2663, metadata !DIExpression()), !dbg !2906
  call void @llvm.dbg.value(metadata i8 1, metadata !2666, metadata !DIExpression()), !dbg !2906
  %302 = icmp eq i64 %154, -1, !dbg !2924
  br i1 %302, label %303, label %305, !dbg !2926

303:                                              ; preds = %301
  %304 = call i64 @strlen(i8* nonnull dereferenceable(1) %2) #26, !dbg !2927
  call void @llvm.dbg.value(metadata i64 %304, metadata !2638, metadata !DIExpression()), !dbg !2705
  br label %305, !dbg !2928

305:                                              ; preds = %303, %301
  %306 = phi i64 [ %304, %303 ], [ %154, %301 ], !dbg !2772
  call void @llvm.dbg.value(metadata i64 %306, metadata !2638, metadata !DIExpression()), !dbg !2705
  br label %307, !dbg !2929

307:                                              ; preds = %344, %305
  %308 = phi i64 [ 0, %305 ], [ %349, %344 ], !dbg !2930
  %309 = phi i8 [ 1, %305 ], [ %348, %344 ], !dbg !2931
  call void @llvm.dbg.value(metadata i8 %309, metadata !2666, metadata !DIExpression()), !dbg !2906
  call void @llvm.dbg.value(metadata i64 %308, metadata !2663, metadata !DIExpression()), !dbg !2906
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %24) #25, !dbg !2932
  %310 = add i64 %308, %122, !dbg !2933
  %311 = getelementptr inbounds i8, i8* %2, i64 %310, !dbg !2934
  %312 = sub i64 %306, %310, !dbg !2935
  call void @llvm.dbg.value(metadata i32* %12, metadata !2685, metadata !DIExpression(DW_OP_deref)), !dbg !2936
  %313 = call i64 @rpl_mbrtowc(i32* nonnull %12, i8* %311, i64 %312, %struct.__mbstate_t* nonnull %11) #25, !dbg !2937
  call void @llvm.dbg.value(metadata i64 %313, metadata !2688, metadata !DIExpression()), !dbg !2936
  switch i64 %313, label %328 [
    i64 0, label %340
    i64 -1, label %341
    i64 -2, label %314
  ], !dbg !2938

314:                                              ; preds = %307
  call void @llvm.dbg.value(metadata i64 %308, metadata !2663, metadata !DIExpression()), !dbg !2906
  %315 = icmp ugt i64 %306, %310, !dbg !2939
  br i1 %315, label %316, label %341, !dbg !2941

316:                                              ; preds = %314
  %317 = sub i64 %306, %122, !dbg !2942
  br label %318, !dbg !2942

318:                                              ; preds = %316, %324
  %319 = phi i64 [ %326, %324 ], [ %310, %316 ]
  %320 = phi i64 [ %325, %324 ], [ %308, %316 ]
  call void @llvm.dbg.value(metadata i64 %320, metadata !2663, metadata !DIExpression()), !dbg !2906
  %321 = getelementptr inbounds i8, i8* %2, i64 %319, !dbg !2943
  %322 = load i8, i8* %321, align 1, !dbg !2943, !tbaa !1091
  %323 = icmp eq i8 %322, 0, !dbg !2941
  br i1 %323, label %341, label %324, !dbg !2942

324:                                              ; preds = %318
  %325 = add i64 %320, 1, !dbg !2944
  call void @llvm.dbg.value(metadata i64 %325, metadata !2663, metadata !DIExpression()), !dbg !2906
  %326 = add i64 %325, %122, !dbg !2945
  %327 = icmp ult i64 %326, %306, !dbg !2939
  br i1 %327, label %318, label %341, !dbg !2941, !llvm.loop !2946

328:                                              ; preds = %307
  %329 = icmp ugt i64 %313, 1
  %330 = and i1 %113, %329, !dbg !2947
  call void @llvm.dbg.value(metadata i64 1, metadata !2689, metadata !DIExpression()), !dbg !2948
  br i1 %330, label %331, label %344, !dbg !2947

331:                                              ; preds = %328, %337
  %332 = phi i64 [ %338, %337 ], [ 1, %328 ]
  call void @llvm.dbg.value(metadata i64 %332, metadata !2689, metadata !DIExpression()), !dbg !2948
  %333 = add i64 %332, %310, !dbg !2949
  %334 = getelementptr inbounds i8, i8* %2, i64 %333, !dbg !2952
  %335 = load i8, i8* %334, align 1, !dbg !2952, !tbaa !1091
  %336 = sext i8 %335 to i32, !dbg !2952
  switch i32 %336, label %337 [
    i32 91, label %352
    i32 92, label %352
    i32 94, label %352
    i32 96, label %352
    i32 124, label %352
  ], !dbg !2953

337:                                              ; preds = %331
  %338 = add nuw i64 %332, 1, !dbg !2954
  call void @llvm.dbg.value(metadata i64 %338, metadata !2689, metadata !DIExpression()), !dbg !2948
  %339 = icmp eq i64 %338, %313, !dbg !2955
  br i1 %339, label %344, label %331, !dbg !2956, !llvm.loop !2957

340:                                              ; preds = %307
  br label %341, !dbg !2959

341:                                              ; preds = %318, %324, %307, %340, %314
  %342 = phi i64 [ %308, %314 ], [ %308, %340 ], [ %308, %307 ], [ %320, %318 ], [ %317, %324 ]
  %343 = phi i8 [ 0, %314 ], [ %309, %340 ], [ 0, %307 ], [ 0, %324 ], [ 0, %318 ]
  call void @llvm.dbg.value(metadata i8 undef, metadata !2666, metadata !DIExpression()), !dbg !2906
  call void @llvm.dbg.value(metadata i64 undef, metadata !2663, metadata !DIExpression()), !dbg !2906
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #25, !dbg !2959
  br label %353

344:                                              ; preds = %337, %328
  %345 = load i32, i32* %12, align 4, !dbg !2960, !tbaa !1016
  call void @llvm.dbg.value(metadata i32 %345, metadata !2685, metadata !DIExpression()), !dbg !2936
  %346 = call i32 @iswprint(i32 %345) #25, !dbg !2962
  %347 = icmp eq i32 %346, 0, !dbg !2962
  %348 = select i1 %347, i8 0, i8 %309, !dbg !2963
  call void @llvm.dbg.value(metadata i8 %348, metadata !2666, metadata !DIExpression()), !dbg !2906
  %349 = add i64 %313, %308, !dbg !2964
  call void @llvm.dbg.value(metadata i64 %349, metadata !2663, metadata !DIExpression()), !dbg !2906
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #25, !dbg !2959
  %350 = call i32 @mbsinit(%struct.__mbstate_t* nonnull %11) #26, !dbg !2965
  %351 = icmp eq i32 %350, 0, !dbg !2966
  br i1 %351, label %307, label %353, !dbg !2967, !llvm.loop !2968

352:                                              ; preds = %331, %331, %331, %331, %331
  call void @llvm.dbg.value(metadata i8 undef, metadata !2666, metadata !DIExpression()), !dbg !2906
  call void @llvm.dbg.value(metadata i64 undef, metadata !2663, metadata !DIExpression()), !dbg !2906
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #25, !dbg !2959
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %23) #25, !dbg !2970
  br label %631

353:                                              ; preds = %344, %341
  %354 = phi i8 [ %343, %341 ], [ %348, %344 ]
  %355 = phi i64 [ %342, %341 ], [ %349, %344 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %23) #25, !dbg !2970
  call void @llvm.dbg.value(metadata i8 %354, metadata !2666, metadata !DIExpression()), !dbg !2906
  call void @llvm.dbg.value(metadata i64 %355, metadata !2663, metadata !DIExpression()), !dbg !2906
  call void @llvm.dbg.value(metadata i64 %306, metadata !2638, metadata !DIExpression()), !dbg !2705
  %356 = and i8 %354, 1, !dbg !2910
  %357 = icmp eq i8 %356, 0, !dbg !2910
  call void @llvm.dbg.value(metadata i1 %357, metadata !2662, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2772
  %358 = icmp ugt i64 %355, 1, !dbg !2971
  br i1 %358, label %367, label %359, !dbg !2911

359:                                              ; preds = %291, %353
  %360 = phi i1 [ %300, %291 ], [ %357, %353 ]
  %361 = phi i8 [ %299, %291 ], [ %354, %353 ]
  %362 = phi i64 [ 1, %291 ], [ %355, %353 ]
  %363 = phi i64 [ %154, %291 ], [ %306, %353 ]
  %364 = and i1 %102, %360, !dbg !2972
  br i1 %364, label %367, label %365, !dbg !2972

365:                                              ; preds = %359
  %366 = and i8 %361, 1, !dbg !2772
  call void @llvm.dbg.value(metadata i8 %472, metadata !2662, metadata !DIExpression()), !dbg !2772
  call void @llvm.dbg.value(metadata i8 %441, metadata !2661, metadata !DIExpression()), !dbg !2772
  call void @llvm.dbg.value(metadata i8 %440, metadata !2660, metadata !DIExpression()), !dbg !2772
  call void @llvm.dbg.value(metadata i8 %439, metadata !2655, metadata !DIExpression()), !dbg !2772
  call void @llvm.dbg.value(metadata i8 %438, metadata !2652, metadata !DIExpression()), !dbg !2705
  call void @llvm.dbg.value(metadata i64 %371, metadata !2638, metadata !DIExpression()), !dbg !2705
  call void @llvm.dbg.value(metadata i64 %437, metadata !2645, metadata !DIExpression()), !dbg !2705
  call void @llvm.dbg.value(metadata i64 %375, metadata !2644, metadata !DIExpression()), !dbg !2705
  br label %473

367:                                              ; preds = %359, %353
  %368 = phi i1 [ true, %359 ], [ %357, %353 ]
  %369 = phi i8 [ %361, %359 ], [ %354, %353 ]
  %370 = phi i64 [ %362, %359 ], [ %355, %353 ]
  %371 = phi i64 [ %363, %359 ], [ %306, %353 ]
  %372 = add i64 %370, %122, !dbg !2973
  call void @llvm.dbg.value(metadata i64 %372, metadata !2696, metadata !DIExpression()), !dbg !2974
  %373 = and i1 %102, %368
  br label %374, !dbg !2975

374:                                              ; preds = %467, %367
  %375 = phi i64 [ %122, %367 ], [ %442, %467 ], !dbg !2765
  %376 = phi i64 [ %123, %367 ], [ %468, %467 ], !dbg !2705
  %377 = phi i8 [ %126, %367 ], [ %463, %467 ], !dbg !2714
  %378 = phi i8 [ %158, %367 ], [ %470, %467 ], !dbg !2772
  %379 = phi i8 [ %156, %367 ], [ %440, %467 ], !dbg !2772
  %380 = phi i8 [ 0, %367 ], [ %441, %467 ], !dbg !2976
  call void @llvm.dbg.value(metadata i8 %380, metadata !2661, metadata !DIExpression()), !dbg !2772
  call void @llvm.dbg.value(metadata i8 %379, metadata !2660, metadata !DIExpression()), !dbg !2772
  call void @llvm.dbg.value(metadata i8 %378, metadata !2655, metadata !DIExpression()), !dbg !2772
  call void @llvm.dbg.value(metadata i8 %377, metadata !2652, metadata !DIExpression()), !dbg !2705
  call void @llvm.dbg.value(metadata i64 %376, metadata !2645, metadata !DIExpression()), !dbg !2705
  call void @llvm.dbg.value(metadata i64 %375, metadata !2644, metadata !DIExpression()), !dbg !2705
  br i1 %373, label %381, label %427, !dbg !2977

381:                                              ; preds = %374
  br i1 %109, label %382, label %635, !dbg !2982

382:                                              ; preds = %381
  call void @llvm.dbg.value(metadata i8 1, metadata !2661, metadata !DIExpression()), !dbg !2772
  %383 = and i8 %377, 1, !dbg !2985
  %384 = icmp eq i8 %383, 0, !dbg !2985
  %385 = and i1 %110, %384, !dbg !2985
  br i1 %385, label %386, label %402, !dbg !2985

386:                                              ; preds = %382
  %387 = icmp ult i64 %376, %129, !dbg !2987
  br i1 %387, label %388, label %390, !dbg !2991

388:                                              ; preds = %386
  %389 = getelementptr inbounds i8, i8* %0, i64 %376, !dbg !2987
  store i8 39, i8* %389, align 1, !dbg !2987, !tbaa !1091
  br label %390, !dbg !2987

390:                                              ; preds = %388, %386
  %391 = add i64 %376, 1, !dbg !2991
  call void @llvm.dbg.value(metadata i64 %391, metadata !2645, metadata !DIExpression()), !dbg !2705
  %392 = icmp ult i64 %391, %129, !dbg !2992
  br i1 %392, label %393, label %395, !dbg !2995

393:                                              ; preds = %390
  %394 = getelementptr inbounds i8, i8* %0, i64 %391, !dbg !2992
  store i8 36, i8* %394, align 1, !dbg !2992, !tbaa !1091
  br label %395, !dbg !2992

395:                                              ; preds = %393, %390
  %396 = add i64 %376, 2, !dbg !2995
  call void @llvm.dbg.value(metadata i64 %396, metadata !2645, metadata !DIExpression()), !dbg !2705
  %397 = icmp ult i64 %396, %129, !dbg !2996
  br i1 %397, label %398, label %400, !dbg !2999

398:                                              ; preds = %395
  %399 = getelementptr inbounds i8, i8* %0, i64 %396, !dbg !2996
  store i8 39, i8* %399, align 1, !dbg !2996, !tbaa !1091
  br label %400, !dbg !2996

400:                                              ; preds = %398, %395
  %401 = add i64 %376, 3, !dbg !2999
  call void @llvm.dbg.value(metadata i64 %401, metadata !2645, metadata !DIExpression()), !dbg !2705
  call void @llvm.dbg.value(metadata i8 1, metadata !2652, metadata !DIExpression()), !dbg !2705
  br label %402, !dbg !3000

402:                                              ; preds = %382, %400
  %403 = phi i64 [ %401, %400 ], [ %376, %382 ], !dbg !2705
  %404 = phi i8 [ 1, %400 ], [ %377, %382 ], !dbg !2705
  call void @llvm.dbg.value(metadata i8 %404, metadata !2652, metadata !DIExpression()), !dbg !2705
  call void @llvm.dbg.value(metadata i64 %403, metadata !2645, metadata !DIExpression()), !dbg !2705
  %405 = icmp ult i64 %403, %129, !dbg !3001
  br i1 %405, label %406, label %408, !dbg !3004

406:                                              ; preds = %402
  %407 = getelementptr inbounds i8, i8* %0, i64 %403, !dbg !3001
  store i8 92, i8* %407, align 1, !dbg !3001, !tbaa !1091
  br label %408, !dbg !3001

408:                                              ; preds = %406, %402
  %409 = add i64 %403, 1, !dbg !3004
  call void @llvm.dbg.value(metadata i64 %409, metadata !2645, metadata !DIExpression()), !dbg !2705
  %410 = icmp ult i64 %409, %129, !dbg !3005
  br i1 %410, label %411, label %415, !dbg !3008

411:                                              ; preds = %408
  %412 = lshr i8 %378, 6, !dbg !3005
  %413 = or i8 %412, 48, !dbg !3005
  %414 = getelementptr inbounds i8, i8* %0, i64 %409, !dbg !3005
  store i8 %413, i8* %414, align 1, !dbg !3005, !tbaa !1091
  br label %415, !dbg !3005

415:                                              ; preds = %411, %408
  %416 = add i64 %403, 2, !dbg !3008
  call void @llvm.dbg.value(metadata i64 %416, metadata !2645, metadata !DIExpression()), !dbg !2705
  %417 = icmp ult i64 %416, %129, !dbg !3009
  br i1 %417, label %418, label %423, !dbg !3012

418:                                              ; preds = %415
  %419 = lshr i8 %378, 3, !dbg !3009
  %420 = and i8 %419, 7, !dbg !3009
  %421 = or i8 %420, 48, !dbg !3009
  %422 = getelementptr inbounds i8, i8* %0, i64 %416, !dbg !3009
  store i8 %421, i8* %422, align 1, !dbg !3009, !tbaa !1091
  br label %423, !dbg !3009

423:                                              ; preds = %418, %415
  %424 = add i64 %403, 3, !dbg !3012
  call void @llvm.dbg.value(metadata i64 %424, metadata !2645, metadata !DIExpression()), !dbg !2705
  %425 = and i8 %378, 7, !dbg !3013
  %426 = or i8 %425, 48, !dbg !3014
  call void @llvm.dbg.value(metadata i8 %426, metadata !2655, metadata !DIExpression()), !dbg !2772
  br label %436, !dbg !3015

427:                                              ; preds = %374
  %428 = and i8 %379, 1, !dbg !3016
  %429 = icmp eq i8 %428, 0, !dbg !3016
  br i1 %429, label %436, label %430, !dbg !3018

430:                                              ; preds = %427
  %431 = icmp ult i64 %376, %129, !dbg !3019
  br i1 %431, label %432, label %434, !dbg !3023

432:                                              ; preds = %430
  %433 = getelementptr inbounds i8, i8* %0, i64 %376, !dbg !3019
  store i8 92, i8* %433, align 1, !dbg !3019, !tbaa !1091
  br label %434, !dbg !3019

434:                                              ; preds = %432, %430
  %435 = add i64 %376, 1, !dbg !3023
  call void @llvm.dbg.value(metadata i64 %435, metadata !2645, metadata !DIExpression()), !dbg !2705
  call void @llvm.dbg.value(metadata i8 0, metadata !2660, metadata !DIExpression()), !dbg !2772
  br label %436, !dbg !3024

436:                                              ; preds = %427, %434, %423
  %437 = phi i64 [ %435, %434 ], [ %376, %427 ], [ %424, %423 ], !dbg !2705
  %438 = phi i8 [ %377, %434 ], [ %377, %427 ], [ %404, %423 ], !dbg !2714
  %439 = phi i8 [ %378, %434 ], [ %378, %427 ], [ %426, %423 ], !dbg !2772
  %440 = phi i8 [ 0, %434 ], [ %379, %427 ], [ %379, %423 ], !dbg !2772
  %441 = phi i8 [ %380, %434 ], [ %380, %427 ], [ 1, %423 ], !dbg !2772
  call void @llvm.dbg.value(metadata i8 %441, metadata !2661, metadata !DIExpression()), !dbg !2772
  call void @llvm.dbg.value(metadata i8 %440, metadata !2660, metadata !DIExpression()), !dbg !2772
  call void @llvm.dbg.value(metadata i8 %439, metadata !2655, metadata !DIExpression()), !dbg !2772
  call void @llvm.dbg.value(metadata i8 %438, metadata !2652, metadata !DIExpression()), !dbg !2705
  call void @llvm.dbg.value(metadata i64 %437, metadata !2645, metadata !DIExpression()), !dbg !2705
  %442 = add i64 %375, 1, !dbg !3025
  %443 = icmp ugt i64 %372, %442, !dbg !3027
  br i1 %443, label %444, label %471, !dbg !3028

444:                                              ; preds = %436
  %445 = and i8 %438, 1, !dbg !3029
  %446 = icmp ne i8 %445, 0, !dbg !3029
  %447 = and i8 %441, 1, !dbg !3029
  %448 = icmp eq i8 %447, 0, !dbg !3029
  %449 = and i1 %446, %448, !dbg !3029
  br i1 %449, label %450, label %461, !dbg !3029

450:                                              ; preds = %444
  %451 = icmp ult i64 %437, %129, !dbg !3032
  br i1 %451, label %452, label %454, !dbg !3036

452:                                              ; preds = %450
  %453 = getelementptr inbounds i8, i8* %0, i64 %437, !dbg !3032
  store i8 39, i8* %453, align 1, !dbg !3032, !tbaa !1091
  br label %454, !dbg !3032

454:                                              ; preds = %452, %450
  %455 = add i64 %437, 1, !dbg !3036
  call void @llvm.dbg.value(metadata i64 %455, metadata !2645, metadata !DIExpression()), !dbg !2705
  %456 = icmp ult i64 %455, %129, !dbg !3037
  br i1 %456, label %457, label %459, !dbg !3040

457:                                              ; preds = %454
  %458 = getelementptr inbounds i8, i8* %0, i64 %455, !dbg !3037
  store i8 39, i8* %458, align 1, !dbg !3037, !tbaa !1091
  br label %459, !dbg !3037

459:                                              ; preds = %457, %454
  %460 = add i64 %437, 2, !dbg !3040
  call void @llvm.dbg.value(metadata i64 %460, metadata !2645, metadata !DIExpression()), !dbg !2705
  call void @llvm.dbg.value(metadata i8 0, metadata !2652, metadata !DIExpression()), !dbg !2705
  br label %461, !dbg !3041

461:                                              ; preds = %444, %459
  %462 = phi i64 [ %460, %459 ], [ %437, %444 ], !dbg !3042
  %463 = phi i8 [ 0, %459 ], [ %438, %444 ], !dbg !2705
  call void @llvm.dbg.value(metadata i8 %463, metadata !2652, metadata !DIExpression()), !dbg !2705
  call void @llvm.dbg.value(metadata i64 %462, metadata !2645, metadata !DIExpression()), !dbg !2705
  %464 = icmp ult i64 %462, %129, !dbg !3043
  br i1 %464, label %465, label %467, !dbg !3046

465:                                              ; preds = %461
  %466 = getelementptr inbounds i8, i8* %0, i64 %462, !dbg !3043
  store i8 %439, i8* %466, align 1, !dbg !3043, !tbaa !1091
  br label %467, !dbg !3043

467:                                              ; preds = %465, %461
  %468 = add i64 %462, 1, !dbg !3046
  call void @llvm.dbg.value(metadata i64 %468, metadata !2645, metadata !DIExpression()), !dbg !2705
  call void @llvm.dbg.value(metadata i64 %442, metadata !2644, metadata !DIExpression()), !dbg !2705
  %469 = getelementptr inbounds i8, i8* %2, i64 %442, !dbg !3047
  %470 = load i8, i8* %469, align 1, !dbg !3047, !tbaa !1091
  call void @llvm.dbg.value(metadata i8 %470, metadata !2655, metadata !DIExpression()), !dbg !2772
  br label %374, !dbg !3048, !llvm.loop !3049

471:                                              ; preds = %436
  %472 = and i8 %369, 1, !dbg !2772
  call void @llvm.dbg.value(metadata i8 %472, metadata !2662, metadata !DIExpression()), !dbg !2772
  call void @llvm.dbg.value(metadata i8 %441, metadata !2661, metadata !DIExpression()), !dbg !2772
  call void @llvm.dbg.value(metadata i8 %440, metadata !2660, metadata !DIExpression()), !dbg !2772
  call void @llvm.dbg.value(metadata i8 %439, metadata !2655, metadata !DIExpression()), !dbg !2772
  call void @llvm.dbg.value(metadata i8 %438, metadata !2652, metadata !DIExpression()), !dbg !2705
  call void @llvm.dbg.value(metadata i64 %371, metadata !2638, metadata !DIExpression()), !dbg !2705
  call void @llvm.dbg.value(metadata i64 %437, metadata !2645, metadata !DIExpression()), !dbg !2705
  call void @llvm.dbg.value(metadata i64 %375, metadata !2644, metadata !DIExpression()), !dbg !2705
  br label %533

473:                                              ; preds = %365, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %258, %187, %192, %206, %267, %288, %265, %262, %259, %256, %210, %244, %220, %215, %211, %209, %208
  %474 = phi i64 [ %122, %288 ], [ %122, %267 ], [ %122, %265 ], [ %122, %262 ], [ %122, %259 ], [ %122, %256 ], [ %122, %209 ], [ %122, %220 ], [ %212, %244 ], [ %122, %215 ], [ %122, %211 ], [ %122, %210 ], [ %122, %208 ], [ %122, %206 ], [ %122, %192 ], [ %122, %187 ], [ %122, %258 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %365 ], !dbg !2765
  %475 = phi i64 [ %289, %288 ], [ %123, %267 ], [ %123, %265 ], [ %123, %262 ], [ %123, %259 ], [ %123, %256 ], [ %123, %209 ], [ %123, %220 ], [ %245, %244 ], [ %123, %215 ], [ %123, %211 ], [ %123, %210 ], [ %123, %208 ], [ %207, %206 ], [ %188, %192 ], [ %188, %187 ], [ %123, %258 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %365 ], !dbg !2705
  %476 = phi i64 [ %273, %288 ], [ %124, %267 ], [ %124, %265 ], [ %124, %262 ], [ %124, %259 ], [ %124, %256 ], [ %124, %209 ], [ %124, %220 ], [ %124, %244 ], [ %124, %215 ], [ %124, %211 ], [ %124, %210 ], [ %124, %208 ], [ %124, %206 ], [ %124, %192 ], [ %124, %187 ], [ %124, %258 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %365 ], !dbg !2710
  %477 = phi i64 [ %154, %288 ], [ %154, %267 ], [ %154, %265 ], [ %154, %262 ], [ -1, %259 ], [ %154, %256 ], [ %154, %209 ], [ %154, %220 ], [ %154, %244 ], [ %154, %215 ], [ %154, %211 ], [ %154, %210 ], [ %154, %208 ], [ %154, %206 ], [ %154, %192 ], [ %154, %187 ], [ %154, %258 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %363, %365 ], !dbg !3052
  %478 = phi i8 [ 0, %288 ], [ %126, %267 ], [ %126, %265 ], [ %126, %262 ], [ %126, %259 ], [ %126, %256 ], [ %126, %209 ], [ %126, %220 ], [ %126, %244 ], [ %126, %215 ], [ %126, %211 ], [ %126, %210 ], [ %126, %208 ], [ %183, %206 ], [ %183, %192 ], [ %183, %187 ], [ %126, %258 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %365 ], !dbg !2705
  %479 = phi i8 [ 1, %288 ], [ 1, %267 ], [ %127, %265 ], [ %127, %262 ], [ %127, %259 ], [ %127, %256 ], [ %127, %209 ], [ %127, %220 ], [ %127, %244 ], [ %127, %215 ], [ %127, %211 ], [ %127, %210 ], [ %127, %208 ], [ %127, %206 ], [ %127, %192 ], [ %127, %187 ], [ %127, %258 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %365 ], !dbg !2705
  %480 = phi i8 [ 39, %288 ], [ 39, %267 ], [ %158, %265 ], [ %158, %262 ], [ %158, %259 ], [ %158, %256 ], [ 63, %209 ], [ 63, %220 ], [ %222, %244 ], [ 63, %215 ], [ 63, %211 ], [ 63, %210 ], [ 0, %208 ], [ 48, %206 ], [ 48, %192 ], [ 48, %187 ], [ %158, %258 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %365 ], !dbg !2772
  %481 = phi i8 [ 0, %288 ], [ 0, %267 ], [ 0, %265 ], [ 0, %262 ], [ 0, %259 ], [ 0, %256 ], [ 0, %209 ], [ 0, %220 ], [ 0, %244 ], [ 0, %215 ], [ 0, %211 ], [ 0, %210 ], [ 0, %208 ], [ 1, %206 ], [ 1, %192 ], [ 1, %187 ], [ 0, %258 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %365 ], !dbg !2772
  %482 = phi i8 [ 1, %288 ], [ 1, %267 ], [ %266, %265 ], [ 0, %262 ], [ 0, %259 ], [ 0, %256 ], [ 0, %209 ], [ 0, %220 ], [ 0, %244 ], [ 0, %215 ], [ 0, %211 ], [ 0, %210 ], [ 0, %208 ], [ 0, %206 ], [ 0, %192 ], [ 0, %187 ], [ 0, %258 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ %366, %365 ], !dbg !2772
  %483 = phi i64 [ %274, %288 ], [ %129, %267 ], [ %129, %265 ], [ %129, %262 ], [ %129, %259 ], [ %129, %256 ], [ %129, %209 ], [ %129, %220 ], [ %129, %244 ], [ %129, %215 ], [ %129, %211 ], [ %129, %210 ], [ %129, %208 ], [ %129, %206 ], [ %129, %192 ], [ %129, %187 ], [ %129, %258 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %365 ]
  call void @llvm.dbg.value(metadata i64 %483, metadata !2636, metadata !DIExpression()), !dbg !2705
  call void @llvm.dbg.value(metadata i8 %482, metadata !2662, metadata !DIExpression()), !dbg !2772
  call void @llvm.dbg.value(metadata i8 %481, metadata !2661, metadata !DIExpression()), !dbg !2772
  call void @llvm.dbg.value(metadata i8 %156, metadata !2660, metadata !DIExpression()), !dbg !2772
  call void @llvm.dbg.value(metadata i8 %480, metadata !2655, metadata !DIExpression()), !dbg !2772
  call void @llvm.dbg.value(metadata i8 %479, metadata !2653, metadata !DIExpression()), !dbg !2705
  call void @llvm.dbg.value(metadata i8 %478, metadata !2652, metadata !DIExpression()), !dbg !2705
  call void @llvm.dbg.value(metadata i64 %477, metadata !2638, metadata !DIExpression()), !dbg !2705
  call void @llvm.dbg.value(metadata i64 %476, metadata !2646, metadata !DIExpression()), !dbg !2705
  call void @llvm.dbg.value(metadata i64 %475, metadata !2645, metadata !DIExpression()), !dbg !2705
  call void @llvm.dbg.value(metadata i64 %474, metadata !2644, metadata !DIExpression()), !dbg !2705
  br i1 %116, label %494, label %484, !dbg !3053

484:                                              ; preds = %473
  %485 = lshr i8 %480, 5, !dbg !3055
  %486 = zext i8 %485 to i64, !dbg !3055
  %487 = getelementptr inbounds i32, i32* %6, i64 %486, !dbg !3056
  %488 = load i32, i32* %487, align 4, !dbg !3056, !tbaa !1016
  %489 = and i8 %480, 31, !dbg !3057
  %490 = zext i8 %489 to i32, !dbg !3057
  %491 = shl nuw i32 1, %490, !dbg !3058
  %492 = and i32 %488, %491, !dbg !3058
  %493 = icmp eq i32 %492, 0, !dbg !3058
  br i1 %493, label %494, label %495, !dbg !3059

494:                                              ; preds = %473, %484
  br i1 %155, label %533, label %495, !dbg !3060

495:                                              ; preds = %256, %494, %484
  %496 = phi i64 [ %474, %484 ], [ %474, %494 ], [ %122, %256 ], !dbg !3061
  %497 = phi i64 [ %475, %484 ], [ %475, %494 ], [ %123, %256 ], !dbg !2705
  %498 = phi i64 [ %476, %484 ], [ %476, %494 ], [ %124, %256 ], !dbg !2710
  %499 = phi i64 [ %477, %484 ], [ %477, %494 ], [ %154, %256 ], !dbg !3052
  %500 = phi i8 [ %478, %484 ], [ %478, %494 ], [ %126, %256 ], !dbg !2714
  %501 = phi i8 [ %479, %484 ], [ %479, %494 ], [ %127, %256 ], !dbg !2715
  %502 = phi i8 [ %480, %484 ], [ %480, %494 ], [ %257, %256 ], !dbg !2772
  %503 = phi i8 [ %482, %484 ], [ %482, %494 ], [ 0, %256 ], !dbg !2772
  %504 = phi i64 [ %483, %484 ], [ %483, %494 ], [ %129, %256 ]
  call void @llvm.dbg.value(metadata i64 %504, metadata !2636, metadata !DIExpression()), !dbg !2705
  call void @llvm.dbg.value(metadata i8 %503, metadata !2662, metadata !DIExpression()), !dbg !2772
  call void @llvm.dbg.value(metadata i8 %502, metadata !2655, metadata !DIExpression()), !dbg !2772
  call void @llvm.dbg.value(metadata i8 %501, metadata !2653, metadata !DIExpression()), !dbg !2705
  call void @llvm.dbg.value(metadata i8 %500, metadata !2652, metadata !DIExpression()), !dbg !2705
  call void @llvm.dbg.value(metadata i64 %499, metadata !2638, metadata !DIExpression()), !dbg !2705
  call void @llvm.dbg.value(metadata i64 %498, metadata !2646, metadata !DIExpression()), !dbg !2705
  call void @llvm.dbg.value(metadata i64 %497, metadata !2645, metadata !DIExpression()), !dbg !2705
  call void @llvm.dbg.value(metadata i64 %496, metadata !2644, metadata !DIExpression()), !dbg !2705
  call void @llvm.dbg.label(metadata !2702), !dbg !3062
  br i1 %109, label %505, label %635, !dbg !3063

505:                                              ; preds = %495
  call void @llvm.dbg.value(metadata i8 1, metadata !2661, metadata !DIExpression()), !dbg !2772
  %506 = and i8 %500, 1, !dbg !3065
  %507 = icmp eq i8 %506, 0, !dbg !3065
  %508 = and i1 %110, %507, !dbg !3065
  br i1 %508, label %509, label %525, !dbg !3065

509:                                              ; preds = %505
  %510 = icmp ult i64 %497, %504, !dbg !3067
  br i1 %510, label %511, label %513, !dbg !3071

511:                                              ; preds = %509
  %512 = getelementptr inbounds i8, i8* %0, i64 %497, !dbg !3067
  store i8 39, i8* %512, align 1, !dbg !3067, !tbaa !1091
  br label %513, !dbg !3067

513:                                              ; preds = %511, %509
  %514 = add i64 %497, 1, !dbg !3071
  call void @llvm.dbg.value(metadata i64 %514, metadata !2645, metadata !DIExpression()), !dbg !2705
  %515 = icmp ult i64 %514, %504, !dbg !3072
  br i1 %515, label %516, label %518, !dbg !3075

516:                                              ; preds = %513
  %517 = getelementptr inbounds i8, i8* %0, i64 %514, !dbg !3072
  store i8 36, i8* %517, align 1, !dbg !3072, !tbaa !1091
  br label %518, !dbg !3072

518:                                              ; preds = %516, %513
  %519 = add i64 %497, 2, !dbg !3075
  call void @llvm.dbg.value(metadata i64 %519, metadata !2645, metadata !DIExpression()), !dbg !2705
  %520 = icmp ult i64 %519, %504, !dbg !3076
  br i1 %520, label %521, label %523, !dbg !3079

521:                                              ; preds = %518
  %522 = getelementptr inbounds i8, i8* %0, i64 %519, !dbg !3076
  store i8 39, i8* %522, align 1, !dbg !3076, !tbaa !1091
  br label %523, !dbg !3076

523:                                              ; preds = %521, %518
  %524 = add i64 %497, 3, !dbg !3079
  call void @llvm.dbg.value(metadata i64 %524, metadata !2645, metadata !DIExpression()), !dbg !2705
  call void @llvm.dbg.value(metadata i8 1, metadata !2652, metadata !DIExpression()), !dbg !2705
  br label %525, !dbg !3080

525:                                              ; preds = %505, %523
  %526 = phi i64 [ %524, %523 ], [ %497, %505 ], !dbg !2772
  %527 = phi i8 [ 1, %523 ], [ %500, %505 ], !dbg !2705
  call void @llvm.dbg.value(metadata i8 %527, metadata !2652, metadata !DIExpression()), !dbg !2705
  call void @llvm.dbg.value(metadata i64 %526, metadata !2645, metadata !DIExpression()), !dbg !2705
  %528 = icmp ult i64 %526, %504, !dbg !3081
  br i1 %528, label %529, label %531, !dbg !3084

529:                                              ; preds = %525
  %530 = getelementptr inbounds i8, i8* %0, i64 %526, !dbg !3081
  store i8 92, i8* %530, align 1, !dbg !3081, !tbaa !1091
  br label %531, !dbg !3081

531:                                              ; preds = %525, %529
  %532 = add i64 %526, 1, !dbg !3084
  call void @llvm.dbg.value(metadata i64 %543, metadata !2636, metadata !DIExpression()), !dbg !2705
  call void @llvm.dbg.value(metadata i8 %542, metadata !2662, metadata !DIExpression()), !dbg !2772
  call void @llvm.dbg.value(metadata i8 %541, metadata !2661, metadata !DIExpression()), !dbg !2772
  call void @llvm.dbg.value(metadata i8 %540, metadata !2655, metadata !DIExpression()), !dbg !2772
  call void @llvm.dbg.value(metadata i8 %539, metadata !2653, metadata !DIExpression()), !dbg !2705
  call void @llvm.dbg.value(metadata i8 %538, metadata !2652, metadata !DIExpression()), !dbg !2705
  call void @llvm.dbg.value(metadata i64 %537, metadata !2638, metadata !DIExpression()), !dbg !2705
  call void @llvm.dbg.value(metadata i64 %536, metadata !2646, metadata !DIExpression()), !dbg !2705
  call void @llvm.dbg.value(metadata i64 %535, metadata !2645, metadata !DIExpression()), !dbg !2705
  call void @llvm.dbg.value(metadata i64 %534, metadata !2644, metadata !DIExpression()), !dbg !2705
  call void @llvm.dbg.label(metadata !2703), !dbg !3085
  br label %560, !dbg !3086

533:                                              ; preds = %253, %471, %252, %494
  %534 = phi i64 [ %375, %471 ], [ %474, %494 ], [ %122, %252 ], [ %122, %253 ], !dbg !3061
  %535 = phi i64 [ %437, %471 ], [ %475, %494 ], [ %123, %252 ], [ %123, %253 ], !dbg !2705
  %536 = phi i64 [ %124, %471 ], [ %476, %494 ], [ %124, %252 ], [ %124, %253 ], !dbg !2710
  %537 = phi i64 [ %371, %471 ], [ %477, %494 ], [ %154, %252 ], [ %154, %253 ], !dbg !3052
  %538 = phi i8 [ %438, %471 ], [ %478, %494 ], [ %126, %252 ], [ %126, %253 ], !dbg !2714
  %539 = phi i8 [ %127, %471 ], [ %479, %494 ], [ %127, %252 ], [ %127, %253 ], !dbg !2715
  %540 = phi i8 [ %439, %471 ], [ %480, %494 ], [ 92, %252 ], [ 92, %253 ], !dbg !3089
  %541 = phi i8 [ %441, %471 ], [ %481, %494 ], [ 0, %252 ], [ 0, %253 ], !dbg !2772
  %542 = phi i8 [ %472, %471 ], [ %482, %494 ], [ 0, %252 ], [ 0, %253 ], !dbg !2772
  %543 = phi i64 [ %129, %471 ], [ %483, %494 ], [ %129, %252 ], [ %129, %253 ]
  call void @llvm.dbg.value(metadata i64 %543, metadata !2636, metadata !DIExpression()), !dbg !2705
  call void @llvm.dbg.value(metadata i8 %542, metadata !2662, metadata !DIExpression()), !dbg !2772
  call void @llvm.dbg.value(metadata i8 %541, metadata !2661, metadata !DIExpression()), !dbg !2772
  call void @llvm.dbg.value(metadata i8 %540, metadata !2655, metadata !DIExpression()), !dbg !2772
  call void @llvm.dbg.value(metadata i8 %539, metadata !2653, metadata !DIExpression()), !dbg !2705
  call void @llvm.dbg.value(metadata i8 %538, metadata !2652, metadata !DIExpression()), !dbg !2705
  call void @llvm.dbg.value(metadata i64 %537, metadata !2638, metadata !DIExpression()), !dbg !2705
  call void @llvm.dbg.value(metadata i64 %536, metadata !2646, metadata !DIExpression()), !dbg !2705
  call void @llvm.dbg.value(metadata i64 %535, metadata !2645, metadata !DIExpression()), !dbg !2705
  call void @llvm.dbg.value(metadata i64 %534, metadata !2644, metadata !DIExpression()), !dbg !2705
  call void @llvm.dbg.label(metadata !2703), !dbg !3085
  %544 = and i8 %538, 1, !dbg !3086
  %545 = icmp ne i8 %544, 0, !dbg !3086
  %546 = and i8 %541, 1, !dbg !3086
  %547 = icmp eq i8 %546, 0, !dbg !3086
  %548 = and i1 %545, %547, !dbg !3086
  br i1 %548, label %549, label %560, !dbg !3086

549:                                              ; preds = %533
  %550 = icmp ult i64 %535, %543, !dbg !3090
  br i1 %550, label %551, label %553, !dbg !3094

551:                                              ; preds = %549
  %552 = getelementptr inbounds i8, i8* %0, i64 %535, !dbg !3090
  store i8 39, i8* %552, align 1, !dbg !3090, !tbaa !1091
  br label %553, !dbg !3090

553:                                              ; preds = %551, %549
  %554 = add i64 %535, 1, !dbg !3094
  call void @llvm.dbg.value(metadata i64 %554, metadata !2645, metadata !DIExpression()), !dbg !2705
  %555 = icmp ult i64 %554, %543, !dbg !3095
  br i1 %555, label %556, label %558, !dbg !3098

556:                                              ; preds = %553
  %557 = getelementptr inbounds i8, i8* %0, i64 %554, !dbg !3095
  store i8 39, i8* %557, align 1, !dbg !3095, !tbaa !1091
  br label %558, !dbg !3095

558:                                              ; preds = %556, %553
  %559 = add i64 %535, 2, !dbg !3098
  call void @llvm.dbg.value(metadata i64 %559, metadata !2645, metadata !DIExpression()), !dbg !2705
  call void @llvm.dbg.value(metadata i8 0, metadata !2652, metadata !DIExpression()), !dbg !2705
  br label %560, !dbg !3099

560:                                              ; preds = %531, %533, %558
  %561 = phi i64 [ %543, %558 ], [ %543, %533 ], [ %504, %531 ]
  %562 = phi i8 [ %542, %558 ], [ %542, %533 ], [ %503, %531 ]
  %563 = phi i8 [ %540, %558 ], [ %540, %533 ], [ %502, %531 ]
  %564 = phi i8 [ %539, %558 ], [ %539, %533 ], [ %501, %531 ]
  %565 = phi i64 [ %537, %558 ], [ %537, %533 ], [ %499, %531 ]
  %566 = phi i64 [ %536, %558 ], [ %536, %533 ], [ %498, %531 ]
  %567 = phi i64 [ %534, %558 ], [ %534, %533 ], [ %496, %531 ]
  %568 = phi i64 [ %559, %558 ], [ %535, %533 ], [ %532, %531 ], !dbg !2772
  %569 = phi i8 [ 0, %558 ], [ %538, %533 ], [ %527, %531 ], !dbg !2705
  call void @llvm.dbg.value(metadata i8 %569, metadata !2652, metadata !DIExpression()), !dbg !2705
  call void @llvm.dbg.value(metadata i64 %568, metadata !2645, metadata !DIExpression()), !dbg !2705
  %570 = icmp ult i64 %568, %561, !dbg !3100
  br i1 %570, label %571, label %573, !dbg !3103

571:                                              ; preds = %560
  %572 = getelementptr inbounds i8, i8* %0, i64 %568, !dbg !3100
  store i8 %563, i8* %572, align 1, !dbg !3100, !tbaa !1091
  br label %573, !dbg !3100

573:                                              ; preds = %571, %560
  %574 = add i64 %568, 1, !dbg !3103
  call void @llvm.dbg.value(metadata i64 %574, metadata !2645, metadata !DIExpression()), !dbg !2705
  %575 = icmp eq i8 %562, 0, !dbg !3104
  %576 = select i1 %575, i8 0, i8 %128, !dbg !3106
  call void @llvm.dbg.value(metadata i8 %576, metadata !2654, metadata !DIExpression()), !dbg !2705
  br label %577, !dbg !3107

577:                                              ; preds = %573, %208
  %578 = phi i64 [ %567, %573 ], [ %122, %208 ], !dbg !3061
  %579 = phi i64 [ %574, %573 ], [ %123, %208 ], !dbg !2705
  %580 = phi i64 [ %566, %573 ], [ %124, %208 ], !dbg !2710
  %581 = phi i64 [ %565, %573 ], [ %154, %208 ], !dbg !3052
  %582 = phi i8 [ %569, %573 ], [ %126, %208 ], !dbg !2714
  %583 = phi i8 [ %564, %573 ], [ %127, %208 ], !dbg !2705
  %584 = phi i8 [ %576, %573 ], [ %128, %208 ], !dbg !2716
  %585 = phi i64 [ %561, %573 ], [ %129, %208 ]
  call void @llvm.dbg.value(metadata i64 %585, metadata !2636, metadata !DIExpression()), !dbg !2705
  call void @llvm.dbg.value(metadata i8 %584, metadata !2654, metadata !DIExpression()), !dbg !2705
  call void @llvm.dbg.value(metadata i8 %583, metadata !2653, metadata !DIExpression()), !dbg !2705
  call void @llvm.dbg.value(metadata i8 %582, metadata !2652, metadata !DIExpression()), !dbg !2705
  call void @llvm.dbg.value(metadata i64 %581, metadata !2638, metadata !DIExpression()), !dbg !2705
  call void @llvm.dbg.value(metadata i64 %580, metadata !2646, metadata !DIExpression()), !dbg !2705
  call void @llvm.dbg.value(metadata i64 %579, metadata !2645, metadata !DIExpression()), !dbg !2705
  call void @llvm.dbg.value(metadata i64 %578, metadata !2644, metadata !DIExpression()), !dbg !2705
  %586 = add i64 %578, 1, !dbg !3108
  call void @llvm.dbg.value(metadata i64 %586, metadata !2644, metadata !DIExpression()), !dbg !2705
  br label %121, !dbg !3109, !llvm.loop !3110

587:                                              ; preds = %131, %135
  %588 = phi i64 [ -1, %131 ], [ %122, %135 ]
  %589 = icmp eq i64 %123, 0, !dbg !3112
  %590 = and i1 %110, %589, !dbg !3114
  %591 = xor i1 %590, true, !dbg !3114
  %592 = or i1 %109, %591, !dbg !3114
  br i1 %592, label %593, label %635, !dbg !3114

593:                                              ; preds = %587
  %594 = and i1 %110, %109, !dbg !3115
  %595 = and i8 %127, 1
  %596 = icmp ne i8 %595, 0
  %597 = and i1 %594, %596, !dbg !3115
  br i1 %597, label %598, label %607, !dbg !3115

598:                                              ; preds = %593
  %599 = and i8 %128, 1, !dbg !3117
  %600 = icmp eq i8 %599, 0, !dbg !3117
  br i1 %600, label %603, label %601, !dbg !3120

601:                                              ; preds = %598
  %602 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %124, i8* %2, i64 %588, i32 5, i32 %5, i32* %6, i8* %94, i8* %95), !dbg !3121
  br label %652, !dbg !3122

603:                                              ; preds = %598
  %604 = icmp eq i64 %129, 0, !dbg !3123
  %605 = icmp ne i64 %124, 0
  %606 = and i1 %605, %604, !dbg !3125
  br i1 %606, label %26, label %607, !dbg !3125

607:                                              ; preds = %603, %593
  %608 = phi i1 [ true, %603 ], [ %109, %593 ]
  %609 = icmp ne i8* %97, null, !dbg !3126
  %610 = and i1 %609, %608, !dbg !3128
  br i1 %610, label %611, label %626, !dbg !3128

611:                                              ; preds = %607
  call void @llvm.dbg.value(metadata i8* %97, metadata !2647, metadata !DIExpression()), !dbg !2705
  call void @llvm.dbg.value(metadata i64 %123, metadata !2645, metadata !DIExpression()), !dbg !2705
  %612 = load i8, i8* %97, align 1, !dbg !3129, !tbaa !1091
  %613 = icmp eq i8 %612, 0, !dbg !3132
  br i1 %613, label %626, label %614, !dbg !3132

614:                                              ; preds = %611, %621
  %615 = phi i8 [ %624, %621 ], [ %612, %611 ]
  %616 = phi i8* [ %623, %621 ], [ %97, %611 ]
  %617 = phi i64 [ %622, %621 ], [ %123, %611 ]
  call void @llvm.dbg.value(metadata i8* %616, metadata !2647, metadata !DIExpression()), !dbg !2705
  call void @llvm.dbg.value(metadata i64 %617, metadata !2645, metadata !DIExpression()), !dbg !2705
  %618 = icmp ult i64 %617, %129, !dbg !3133
  br i1 %618, label %619, label %621, !dbg !3136

619:                                              ; preds = %614
  %620 = getelementptr inbounds i8, i8* %0, i64 %617, !dbg !3133
  store i8 %615, i8* %620, align 1, !dbg !3133, !tbaa !1091
  br label %621, !dbg !3133

621:                                              ; preds = %619, %614
  %622 = add i64 %617, 1, !dbg !3136
  call void @llvm.dbg.value(metadata i64 %622, metadata !2645, metadata !DIExpression()), !dbg !2705
  %623 = getelementptr inbounds i8, i8* %616, i64 1, !dbg !3137
  call void @llvm.dbg.value(metadata i8* %623, metadata !2647, metadata !DIExpression()), !dbg !2705
  %624 = load i8, i8* %623, align 1, !dbg !3129, !tbaa !1091
  %625 = icmp eq i8 %624, 0, !dbg !3132
  br i1 %625, label %626, label %614, !dbg !3132, !llvm.loop !3138

626:                                              ; preds = %621, %611, %607
  %627 = phi i64 [ %123, %607 ], [ %123, %611 ], [ %622, %621 ], !dbg !2747
  call void @llvm.dbg.value(metadata i64 %627, metadata !2645, metadata !DIExpression()), !dbg !2705
  %628 = icmp ult i64 %627, %129, !dbg !3140
  br i1 %628, label %629, label %652, !dbg !3142

629:                                              ; preds = %626
  %630 = getelementptr inbounds i8, i8* %0, i64 %627, !dbg !3143
  store i8 0, i8* %630, align 1, !dbg !3144, !tbaa !1091
  br label %652, !dbg !3143

631:                                              ; preds = %210, %252, %254, %265, %268, %352
  %632 = phi i64 [ %306, %352 ], [ %154, %268 ], [ %154, %265 ], [ %154, %254 ], [ %154, %252 ], [ %154, %210 ]
  call void @llvm.dbg.value(metadata i64 %638, metadata !2636, metadata !DIExpression()), !dbg !2705
  call void @llvm.dbg.value(metadata i64 %637, metadata !2638, metadata !DIExpression()), !dbg !2705
  call void @llvm.dbg.label(metadata !2704), !dbg !3145
  %633 = icmp eq i8 %101, 0, !dbg !3146
  %634 = select i1 %633, i32 2, i32 4, !dbg !3146
  br label %642, !dbg !3146

635:                                              ; preds = %587, %495, %160, %381
  %636 = phi i8 [ 1, %381 ], [ %101, %495 ], [ 1, %160 ], [ %101, %587 ]
  %637 = phi i64 [ %371, %381 ], [ %499, %495 ], [ %154, %160 ], [ %588, %587 ]
  %638 = phi i64 [ %129, %381 ], [ %504, %495 ], [ %129, %160 ], [ %129, %587 ]
  call void @llvm.dbg.value(metadata i64 %638, metadata !2636, metadata !DIExpression()), !dbg !2705
  call void @llvm.dbg.value(metadata i64 %637, metadata !2638, metadata !DIExpression()), !dbg !2705
  call void @llvm.dbg.label(metadata !2704), !dbg !3145
  %639 = icmp eq i32 %93, 2, !dbg !3148
  %640 = icmp eq i8 %636, 0, !dbg !3146
  %641 = select i1 %640, i32 2, i32 4, !dbg !3146
  br i1 %639, label %642, label %646, !dbg !3146

642:                                              ; preds = %631, %635
  %643 = phi i32 [ %634, %631 ], [ %641, %635 ]
  %644 = phi i64 [ %129, %631 ], [ %638, %635 ]
  %645 = phi i64 [ %632, %631 ], [ %637, %635 ]
  br label %646, !dbg !3146

646:                                              ; preds = %224, %146, %635, %642
  %647 = phi i64 [ %644, %642 ], [ %638, %635 ], [ %129, %146 ], [ %129, %224 ]
  %648 = phi i64 [ %645, %642 ], [ %637, %635 ], [ %154, %224 ], [ %144, %146 ]
  %649 = phi i32 [ %643, %642 ], [ %93, %635 ], [ 5, %224 ], [ %93, %146 ]
  call void @llvm.dbg.value(metadata i32 %649, metadata !2639, metadata !DIExpression()), !dbg !2705
  %650 = and i32 %5, -3, !dbg !3149
  %651 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %647, i8* %2, i64 %648, i32 %649, i32 %650, i32* null, i8* %94, i8* %95), !dbg !3150
  br label %652, !dbg !3151

652:                                              ; preds = %626, %629, %646, %601
  %653 = phi i64 [ %651, %646 ], [ %602, %601 ], [ %627, %629 ], [ %627, %626 ]
  ret i64 %653, !dbg !3152
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @gettext_quote(i8* %0, i32 %1) unnamed_addr #8 !dbg !3153 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3157, metadata !DIExpression()), !dbg !3161
  call void @llvm.dbg.value(metadata i32 %1, metadata !3158, metadata !DIExpression()), !dbg !3161
  %3 = tail call i8* @dcgettext(i8* null, i8* %0, i32 5) #25, !dbg !3162
  call void @llvm.dbg.value(metadata i8* %3, metadata !3159, metadata !DIExpression()), !dbg !3161
  %4 = icmp eq i8* %3, %0, !dbg !3163
  br i1 %4, label %5, label %72, !dbg !3165

5:                                                ; preds = %2
  %6 = tail call i8* @locale_charset() #25, !dbg !3166
  call void @llvm.dbg.value(metadata i8* %6, metadata !3160, metadata !DIExpression()), !dbg !3161
  call void @llvm.dbg.value(metadata i8* %6, metadata !3167, metadata !DIExpression()), !dbg !3183
  call void @llvm.dbg.value(metadata i8* undef, metadata !3173, metadata !DIExpression()), !dbg !3183
  call void @llvm.dbg.value(metadata i8 85, metadata !3174, metadata !DIExpression()), !dbg !3183
  call void @llvm.dbg.value(metadata i8 84, metadata !3175, metadata !DIExpression()), !dbg !3183
  call void @llvm.dbg.value(metadata i8 70, metadata !3176, metadata !DIExpression()), !dbg !3183
  call void @llvm.dbg.value(metadata i8 45, metadata !3177, metadata !DIExpression()), !dbg !3183
  call void @llvm.dbg.value(metadata i8 56, metadata !3178, metadata !DIExpression()), !dbg !3183
  call void @llvm.dbg.value(metadata i8 0, metadata !3179, metadata !DIExpression()), !dbg !3183
  call void @llvm.dbg.value(metadata i8 0, metadata !3180, metadata !DIExpression()), !dbg !3183
  call void @llvm.dbg.value(metadata i8 0, metadata !3181, metadata !DIExpression()), !dbg !3183
  call void @llvm.dbg.value(metadata i8 0, metadata !3182, metadata !DIExpression()), !dbg !3183
  %7 = load i8, i8* %6, align 1, !dbg !3186, !tbaa !1091
  %8 = and i8 %7, -33, !dbg !3186
  %9 = sext i8 %8 to i32, !dbg !3186
  switch i32 %9, label %69 [
    i32 85, label %10
    i32 71, label %36
  ], !dbg !3186

10:                                               ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !3188, metadata !DIExpression()), !dbg !3202
  call void @llvm.dbg.value(metadata i8* undef, metadata !3193, metadata !DIExpression()), !dbg !3202
  call void @llvm.dbg.value(metadata i8 84, metadata !3194, metadata !DIExpression()), !dbg !3202
  call void @llvm.dbg.value(metadata i8 70, metadata !3195, metadata !DIExpression()), !dbg !3202
  call void @llvm.dbg.value(metadata i8 45, metadata !3196, metadata !DIExpression()), !dbg !3202
  call void @llvm.dbg.value(metadata i8 56, metadata !3197, metadata !DIExpression()), !dbg !3202
  call void @llvm.dbg.value(metadata i8 0, metadata !3198, metadata !DIExpression()), !dbg !3202
  call void @llvm.dbg.value(metadata i8 0, metadata !3199, metadata !DIExpression()), !dbg !3202
  call void @llvm.dbg.value(metadata i8 0, metadata !3200, metadata !DIExpression()), !dbg !3202
  call void @llvm.dbg.value(metadata i8 0, metadata !3201, metadata !DIExpression()), !dbg !3202
  %11 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !3206
  %12 = load i8, i8* %11, align 1, !dbg !3206, !tbaa !1091
  %13 = and i8 %12, -33, !dbg !3206
  %14 = icmp eq i8 %13, 84, !dbg !3206
  br i1 %14, label %15, label %69, !dbg !3206

15:                                               ; preds = %10
  call void @llvm.dbg.value(metadata i8* %6, metadata !3208, metadata !DIExpression()), !dbg !3221
  call void @llvm.dbg.value(metadata i8* undef, metadata !3213, metadata !DIExpression()), !dbg !3221
  call void @llvm.dbg.value(metadata i8 70, metadata !3214, metadata !DIExpression()), !dbg !3221
  call void @llvm.dbg.value(metadata i8 45, metadata !3215, metadata !DIExpression()), !dbg !3221
  call void @llvm.dbg.value(metadata i8 56, metadata !3216, metadata !DIExpression()), !dbg !3221
  call void @llvm.dbg.value(metadata i8 0, metadata !3217, metadata !DIExpression()), !dbg !3221
  call void @llvm.dbg.value(metadata i8 0, metadata !3218, metadata !DIExpression()), !dbg !3221
  call void @llvm.dbg.value(metadata i8 0, metadata !3219, metadata !DIExpression()), !dbg !3221
  call void @llvm.dbg.value(metadata i8 0, metadata !3220, metadata !DIExpression()), !dbg !3221
  %16 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !3225
  %17 = load i8, i8* %16, align 1, !dbg !3225, !tbaa !1091
  %18 = and i8 %17, -33, !dbg !3225
  %19 = icmp eq i8 %18, 70, !dbg !3225
  br i1 %19, label %20, label %69, !dbg !3225

20:                                               ; preds = %15
  call void @llvm.dbg.value(metadata i8* %6, metadata !3227, metadata !DIExpression()), !dbg !3239
  call void @llvm.dbg.value(metadata i8* undef, metadata !3232, metadata !DIExpression()), !dbg !3239
  call void @llvm.dbg.value(metadata i8 45, metadata !3233, metadata !DIExpression()), !dbg !3239
  call void @llvm.dbg.value(metadata i8 56, metadata !3234, metadata !DIExpression()), !dbg !3239
  call void @llvm.dbg.value(metadata i8 0, metadata !3235, metadata !DIExpression()), !dbg !3239
  call void @llvm.dbg.value(metadata i8 0, metadata !3236, metadata !DIExpression()), !dbg !3239
  call void @llvm.dbg.value(metadata i8 0, metadata !3237, metadata !DIExpression()), !dbg !3239
  call void @llvm.dbg.value(metadata i8 0, metadata !3238, metadata !DIExpression()), !dbg !3239
  %21 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !3243
  %22 = load i8, i8* %21, align 1, !dbg !3243, !tbaa !1091
  %23 = icmp eq i8 %22, 45, !dbg !3243
  br i1 %23, label %24, label %69, !dbg !3245

24:                                               ; preds = %20
  call void @llvm.dbg.value(metadata i8* %6, metadata !3246, metadata !DIExpression()), !dbg !3257
  call void @llvm.dbg.value(metadata i8* undef, metadata !3251, metadata !DIExpression()), !dbg !3257
  call void @llvm.dbg.value(metadata i8 56, metadata !3252, metadata !DIExpression()), !dbg !3257
  call void @llvm.dbg.value(metadata i8 0, metadata !3253, metadata !DIExpression()), !dbg !3257
  call void @llvm.dbg.value(metadata i8 0, metadata !3254, metadata !DIExpression()), !dbg !3257
  call void @llvm.dbg.value(metadata i8 0, metadata !3255, metadata !DIExpression()), !dbg !3257
  call void @llvm.dbg.value(metadata i8 0, metadata !3256, metadata !DIExpression()), !dbg !3257
  %25 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !3261
  %26 = load i8, i8* %25, align 1, !dbg !3261, !tbaa !1091
  %27 = icmp eq i8 %26, 56, !dbg !3261
  br i1 %27, label %28, label %69, !dbg !3263

28:                                               ; preds = %24
  call void @llvm.dbg.value(metadata i8* %6, metadata !3264, metadata !DIExpression()), !dbg !3274
  call void @llvm.dbg.value(metadata i8* undef, metadata !3269, metadata !DIExpression()), !dbg !3274
  call void @llvm.dbg.value(metadata i8 0, metadata !3270, metadata !DIExpression()), !dbg !3274
  call void @llvm.dbg.value(metadata i8 0, metadata !3271, metadata !DIExpression()), !dbg !3274
  call void @llvm.dbg.value(metadata i8 0, metadata !3272, metadata !DIExpression()), !dbg !3274
  call void @llvm.dbg.value(metadata i8 0, metadata !3273, metadata !DIExpression()), !dbg !3274
  %29 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !3278
  %30 = load i8, i8* %29, align 1, !dbg !3278, !tbaa !1091
  %31 = icmp eq i8 %30, 0, !dbg !3278
  br i1 %31, label %32, label %69, !dbg !3280

32:                                               ; preds = %28
  %33 = load i8, i8* %0, align 1, !dbg !3281, !tbaa !1091
  %34 = icmp eq i8 %33, 96, !dbg !3282
  %35 = select i1 %34, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14.117, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15.118, i64 0, i64 0), !dbg !3281
  br label %72, !dbg !3283

36:                                               ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !3188, metadata !DIExpression()), !dbg !3284
  call void @llvm.dbg.value(metadata i8* undef, metadata !3193, metadata !DIExpression()), !dbg !3284
  call void @llvm.dbg.value(metadata i8 66, metadata !3194, metadata !DIExpression()), !dbg !3284
  call void @llvm.dbg.value(metadata i8 49, metadata !3195, metadata !DIExpression()), !dbg !3284
  call void @llvm.dbg.value(metadata i8 56, metadata !3196, metadata !DIExpression()), !dbg !3284
  call void @llvm.dbg.value(metadata i8 48, metadata !3197, metadata !DIExpression()), !dbg !3284
  call void @llvm.dbg.value(metadata i8 51, metadata !3198, metadata !DIExpression()), !dbg !3284
  call void @llvm.dbg.value(metadata i8 48, metadata !3199, metadata !DIExpression()), !dbg !3284
  call void @llvm.dbg.value(metadata i8 0, metadata !3200, metadata !DIExpression()), !dbg !3284
  call void @llvm.dbg.value(metadata i8 0, metadata !3201, metadata !DIExpression()), !dbg !3284
  %37 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !3288
  %38 = load i8, i8* %37, align 1, !dbg !3288, !tbaa !1091
  %39 = and i8 %38, -33, !dbg !3288
  %40 = icmp eq i8 %39, 66, !dbg !3288
  br i1 %40, label %41, label %69, !dbg !3288

41:                                               ; preds = %36
  call void @llvm.dbg.value(metadata i8* %6, metadata !3208, metadata !DIExpression()), !dbg !3289
  call void @llvm.dbg.value(metadata i8* undef, metadata !3213, metadata !DIExpression()), !dbg !3289
  call void @llvm.dbg.value(metadata i8 49, metadata !3214, metadata !DIExpression()), !dbg !3289
  call void @llvm.dbg.value(metadata i8 56, metadata !3215, metadata !DIExpression()), !dbg !3289
  call void @llvm.dbg.value(metadata i8 48, metadata !3216, metadata !DIExpression()), !dbg !3289
  call void @llvm.dbg.value(metadata i8 51, metadata !3217, metadata !DIExpression()), !dbg !3289
  call void @llvm.dbg.value(metadata i8 48, metadata !3218, metadata !DIExpression()), !dbg !3289
  call void @llvm.dbg.value(metadata i8 0, metadata !3219, metadata !DIExpression()), !dbg !3289
  call void @llvm.dbg.value(metadata i8 0, metadata !3220, metadata !DIExpression()), !dbg !3289
  %42 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !3291
  %43 = load i8, i8* %42, align 1, !dbg !3291, !tbaa !1091
  %44 = icmp eq i8 %43, 49, !dbg !3291
  br i1 %44, label %45, label %69, !dbg !3292

45:                                               ; preds = %41
  call void @llvm.dbg.value(metadata i8* %6, metadata !3227, metadata !DIExpression()), !dbg !3293
  call void @llvm.dbg.value(metadata i8* undef, metadata !3232, metadata !DIExpression()), !dbg !3293
  call void @llvm.dbg.value(metadata i8 56, metadata !3233, metadata !DIExpression()), !dbg !3293
  call void @llvm.dbg.value(metadata i8 48, metadata !3234, metadata !DIExpression()), !dbg !3293
  call void @llvm.dbg.value(metadata i8 51, metadata !3235, metadata !DIExpression()), !dbg !3293
  call void @llvm.dbg.value(metadata i8 48, metadata !3236, metadata !DIExpression()), !dbg !3293
  call void @llvm.dbg.value(metadata i8 0, metadata !3237, metadata !DIExpression()), !dbg !3293
  call void @llvm.dbg.value(metadata i8 0, metadata !3238, metadata !DIExpression()), !dbg !3293
  %46 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !3295
  %47 = load i8, i8* %46, align 1, !dbg !3295, !tbaa !1091
  %48 = icmp eq i8 %47, 56, !dbg !3295
  br i1 %48, label %49, label %69, !dbg !3296

49:                                               ; preds = %45
  call void @llvm.dbg.value(metadata i8* %6, metadata !3246, metadata !DIExpression()), !dbg !3297
  call void @llvm.dbg.value(metadata i8* undef, metadata !3251, metadata !DIExpression()), !dbg !3297
  call void @llvm.dbg.value(metadata i8 48, metadata !3252, metadata !DIExpression()), !dbg !3297
  call void @llvm.dbg.value(metadata i8 51, metadata !3253, metadata !DIExpression()), !dbg !3297
  call void @llvm.dbg.value(metadata i8 48, metadata !3254, metadata !DIExpression()), !dbg !3297
  call void @llvm.dbg.value(metadata i8 0, metadata !3255, metadata !DIExpression()), !dbg !3297
  call void @llvm.dbg.value(metadata i8 0, metadata !3256, metadata !DIExpression()), !dbg !3297
  %50 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !3299
  %51 = load i8, i8* %50, align 1, !dbg !3299, !tbaa !1091
  %52 = icmp eq i8 %51, 48, !dbg !3299
  br i1 %52, label %53, label %69, !dbg !3300

53:                                               ; preds = %49
  call void @llvm.dbg.value(metadata i8* %6, metadata !3264, metadata !DIExpression()), !dbg !3301
  call void @llvm.dbg.value(metadata i8* undef, metadata !3269, metadata !DIExpression()), !dbg !3301
  call void @llvm.dbg.value(metadata i8 51, metadata !3270, metadata !DIExpression()), !dbg !3301
  call void @llvm.dbg.value(metadata i8 48, metadata !3271, metadata !DIExpression()), !dbg !3301
  call void @llvm.dbg.value(metadata i8 0, metadata !3272, metadata !DIExpression()), !dbg !3301
  call void @llvm.dbg.value(metadata i8 0, metadata !3273, metadata !DIExpression()), !dbg !3301
  %54 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !3303
  %55 = load i8, i8* %54, align 1, !dbg !3303, !tbaa !1091
  %56 = icmp eq i8 %55, 51, !dbg !3303
  br i1 %56, label %57, label %69, !dbg !3304

57:                                               ; preds = %53
  call void @llvm.dbg.value(metadata i8* %6, metadata !3305, metadata !DIExpression()), !dbg !3314
  call void @llvm.dbg.value(metadata i8* undef, metadata !3310, metadata !DIExpression()), !dbg !3314
  call void @llvm.dbg.value(metadata i8 48, metadata !3311, metadata !DIExpression()), !dbg !3314
  call void @llvm.dbg.value(metadata i8 0, metadata !3312, metadata !DIExpression()), !dbg !3314
  call void @llvm.dbg.value(metadata i8 0, metadata !3313, metadata !DIExpression()), !dbg !3314
  %58 = getelementptr inbounds i8, i8* %6, i64 6, !dbg !3318
  %59 = load i8, i8* %58, align 1, !dbg !3318, !tbaa !1091
  %60 = icmp eq i8 %59, 48, !dbg !3318
  br i1 %60, label %61, label %69, !dbg !3320

61:                                               ; preds = %57
  call void @llvm.dbg.value(metadata i8* %6, metadata !3321, metadata !DIExpression()), !dbg !3329
  call void @llvm.dbg.value(metadata i8* undef, metadata !3326, metadata !DIExpression()), !dbg !3329
  call void @llvm.dbg.value(metadata i8 0, metadata !3327, metadata !DIExpression()), !dbg !3329
  call void @llvm.dbg.value(metadata i8 0, metadata !3328, metadata !DIExpression()), !dbg !3329
  %62 = getelementptr inbounds i8, i8* %6, i64 7, !dbg !3333
  %63 = load i8, i8* %62, align 1, !dbg !3333, !tbaa !1091
  %64 = icmp eq i8 %63, 0, !dbg !3333
  br i1 %64, label %65, label %69, !dbg !3335

65:                                               ; preds = %61
  %66 = load i8, i8* %0, align 1, !dbg !3336, !tbaa !1091
  %67 = icmp eq i8 %66, 96, !dbg !3337
  %68 = select i1 %67, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17.119, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18.120, i64 0, i64 0), !dbg !3336
  br label %72, !dbg !3338

69:                                               ; preds = %5, %28, %24, %20, %15, %10, %57, %53, %49, %45, %41, %36, %61
  %70 = icmp eq i32 %1, 9, !dbg !3339
  %71 = select i1 %70, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.116, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.115, i64 0, i64 0), !dbg !3340
  br label %72, !dbg !3341

72:                                               ; preds = %2, %69, %65, %32
  %73 = phi i8* [ %35, %32 ], [ %68, %65 ], [ %71, %69 ], [ %3, %2 ], !dbg !3161
  ret i8* %73, !dbg !3342
}

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i64 @strlen(i8* nocapture) local_unnamed_addr #6

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #18

; Function Attrs: nounwind
declare !dbg !3343 i32 @iswprint(i32) local_unnamed_addr #2

; Function Attrs: nounwind readonly willreturn
declare !dbg !3347 i32 @mbsinit(%struct.__mbstate_t*) local_unnamed_addr #19

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_alloc(i8* %0, i64 %1, %struct.quoting_options* %2) local_unnamed_addr #8 !dbg !3353 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3357, metadata !DIExpression()), !dbg !3360
  call void @llvm.dbg.value(metadata i64 %1, metadata !3358, metadata !DIExpression()), !dbg !3360
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !3359, metadata !DIExpression()), !dbg !3360
  call void @llvm.dbg.value(metadata i8* %0, metadata !3361, metadata !DIExpression()) #25, !dbg !3374
  call void @llvm.dbg.value(metadata i64 %1, metadata !3366, metadata !DIExpression()) #25, !dbg !3374
  call void @llvm.dbg.value(metadata i64* null, metadata !3367, metadata !DIExpression()) #25, !dbg !3374
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !3368, metadata !DIExpression()) #25, !dbg !3374
  %4 = icmp eq %struct.quoting_options* %2, null, !dbg !3376
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %2, !dbg !3376
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !3369, metadata !DIExpression()) #25, !dbg !3374
  %6 = tail call i32* @__errno_location() #29, !dbg !3377
  %7 = load i32, i32* %6, align 4, !dbg !3377, !tbaa !1016
  call void @llvm.dbg.value(metadata i32 %7, metadata !3370, metadata !DIExpression()) #25, !dbg !3374
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !3378
  %9 = load i32, i32* %8, align 4, !dbg !3378, !tbaa !2579
  %10 = or i32 %9, 1, !dbg !3379
  call void @llvm.dbg.value(metadata i32 %10, metadata !3371, metadata !DIExpression()) #25, !dbg !3374
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3380
  %12 = load i32, i32* %11, align 8, !dbg !3380, !tbaa !2528
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !3381
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3382
  %15 = load i8*, i8** %14, align 8, !dbg !3382, !tbaa !2601
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3383
  %17 = load i8*, i8** %16, align 8, !dbg !3383, !tbaa !2604
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %12, i32 %10, i32* nonnull %13, i8* %15, i8* %17) #25, !dbg !3384
  %19 = add i64 %18, 1, !dbg !3385
  call void @llvm.dbg.value(metadata i64 %19, metadata !3372, metadata !DIExpression()) #25, !dbg !3374
  call void @llvm.dbg.value(metadata i64 %19, metadata !3386, metadata !DIExpression()) #25, !dbg !3391
  %20 = tail call noalias i8* @xmalloc(i64 %19) #25, !dbg !3393
  call void @llvm.dbg.value(metadata i8* %20, metadata !3373, metadata !DIExpression()) #25, !dbg !3374
  %21 = load i32, i32* %11, align 8, !dbg !3394, !tbaa !2528
  %22 = load i8*, i8** %14, align 8, !dbg !3395, !tbaa !2601
  %23 = load i8*, i8** %16, align 8, !dbg !3396, !tbaa !2604
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %20, i64 %19, i8* %0, i64 %1, i32 %21, i32 %10, i32* nonnull %13, i8* %22, i8* %23) #25, !dbg !3397
  store i32 %7, i32* %6, align 4, !dbg !3398, !tbaa !1016
  ret i8* %20, !dbg !3399
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_alloc_mem(i8* %0, i64 %1, i64* %2, %struct.quoting_options* %3) local_unnamed_addr #8 !dbg !3362 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3361, metadata !DIExpression()), !dbg !3400
  call void @llvm.dbg.value(metadata i64 %1, metadata !3366, metadata !DIExpression()), !dbg !3400
  call void @llvm.dbg.value(metadata i64* %2, metadata !3367, metadata !DIExpression()), !dbg !3400
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !3368, metadata !DIExpression()), !dbg !3400
  %5 = icmp eq %struct.quoting_options* %3, null, !dbg !3401
  %6 = select i1 %5, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %3, !dbg !3401
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !3369, metadata !DIExpression()), !dbg !3400
  %7 = tail call i32* @__errno_location() #29, !dbg !3402
  %8 = load i32, i32* %7, align 4, !dbg !3402, !tbaa !1016
  call void @llvm.dbg.value(metadata i32 %8, metadata !3370, metadata !DIExpression()), !dbg !3400
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !3403
  %10 = load i32, i32* %9, align 4, !dbg !3403, !tbaa !2579
  %11 = icmp eq i64* %2, null, !dbg !3404
  %12 = zext i1 %11 to i32, !dbg !3404
  %13 = or i32 %10, %12, !dbg !3405
  call void @llvm.dbg.value(metadata i32 %13, metadata !3371, metadata !DIExpression()), !dbg !3400
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !3406
  %15 = load i32, i32* %14, align 8, !dbg !3406, !tbaa !2528
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !3407
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !3408
  %18 = load i8*, i8** %17, align 8, !dbg !3408, !tbaa !2601
  %19 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !3409
  %20 = load i8*, i8** %19, align 8, !dbg !3409, !tbaa !2604
  %21 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %15, i32 %13, i32* nonnull %16, i8* %18, i8* %20), !dbg !3410
  %22 = add i64 %21, 1, !dbg !3411
  call void @llvm.dbg.value(metadata i64 %22, metadata !3372, metadata !DIExpression()), !dbg !3400
  call void @llvm.dbg.value(metadata i64 %22, metadata !3386, metadata !DIExpression()) #25, !dbg !3412
  %23 = tail call noalias i8* @xmalloc(i64 %22) #25, !dbg !3414
  call void @llvm.dbg.value(metadata i8* %23, metadata !3373, metadata !DIExpression()), !dbg !3400
  %24 = load i32, i32* %14, align 8, !dbg !3415, !tbaa !2528
  %25 = load i8*, i8** %17, align 8, !dbg !3416, !tbaa !2601
  %26 = load i8*, i8** %19, align 8, !dbg !3417, !tbaa !2604
  %27 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %23, i64 %22, i8* %0, i64 %1, i32 %24, i32 %13, i32* nonnull %16, i8* %25, i8* %26), !dbg !3418
  store i32 %8, i32* %7, align 4, !dbg !3419, !tbaa !1016
  br i1 %11, label %29, label %28, !dbg !3420

28:                                               ; preds = %4
  store i64 %21, i64* %2, align 8, !dbg !3421, !tbaa !1060
  br label %29, !dbg !3423

29:                                               ; preds = %28, %4
  ret i8* %23, !dbg !3424
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @quotearg_free() local_unnamed_addr #8 !dbg !3425 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !3429, !tbaa !787
  call void @llvm.dbg.value(metadata %struct.slotvec* %1, metadata !3427, metadata !DIExpression()), !dbg !3430
  call void @llvm.dbg.value(metadata i32 1, metadata !3428, metadata !DIExpression()), !dbg !3430
  %2 = load i32, i32* @nslots, align 4, !dbg !3431, !tbaa !1016
  %3 = icmp sgt i32 %2, 1, !dbg !3434
  br i1 %3, label %4, label %12, !dbg !3435

4:                                                ; preds = %0
  %5 = zext i32 %2 to i64, !dbg !3434
  br label %6, !dbg !3435

6:                                                ; preds = %4, %6
  %7 = phi i64 [ 1, %4 ], [ %10, %6 ]
  call void @llvm.dbg.value(metadata i64 %7, metadata !3428, metadata !DIExpression()), !dbg !3430
  %8 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %7, i32 1, !dbg !3436
  %9 = load i8*, i8** %8, align 8, !dbg !3436, !tbaa !3437
  tail call void @free(i8* %9) #25, !dbg !3439
  %10 = add nuw nsw i64 %7, 1, !dbg !3440
  call void @llvm.dbg.value(metadata i64 %10, metadata !3428, metadata !DIExpression()), !dbg !3430
  %11 = icmp eq i64 %10, %5, !dbg !3434
  br i1 %11, label %12, label %6, !dbg !3435, !llvm.loop !3441

12:                                               ; preds = %6, %0
  %13 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1, !dbg !3443
  %14 = load i8*, i8** %13, align 8, !dbg !3443, !tbaa !3437
  %15 = icmp eq i8* %14, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !3445
  br i1 %15, label %17, label %16, !dbg !3446

16:                                               ; preds = %12
  tail call void @free(i8* %14) #25, !dbg !3447
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !dbg !3449, !tbaa !3450
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !dbg !3451, !tbaa !3437
  br label %17, !dbg !3452

17:                                               ; preds = %16, %12
  %18 = icmp eq %struct.slotvec* %1, @slotvec0, !dbg !3453
  br i1 %18, label %21, label %19, !dbg !3455

19:                                               ; preds = %17
  %20 = bitcast %struct.slotvec* %1 to i8*, !dbg !3456
  tail call void @free(i8* %20) #25, !dbg !3458
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !3459, !tbaa !787
  br label %21, !dbg !3460

21:                                               ; preds = %19, %17
  store i32 1, i32* @nslots, align 4, !dbg !3461, !tbaa !1016
  ret void, !dbg !3462
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n(i32 %0, i8* %1) local_unnamed_addr #8 !dbg !3463 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3465, metadata !DIExpression()), !dbg !3467
  call void @llvm.dbg.value(metadata i8* %1, metadata !3466, metadata !DIExpression()), !dbg !3467
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @default_quoting_options), !dbg !3468
  ret i8* %3, !dbg !3469
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* %3) unnamed_addr #8 !dbg !3470 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3474, metadata !DIExpression()), !dbg !3489
  call void @llvm.dbg.value(metadata i8* %1, metadata !3475, metadata !DIExpression()), !dbg !3489
  call void @llvm.dbg.value(metadata i64 %2, metadata !3476, metadata !DIExpression()), !dbg !3489
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !3477, metadata !DIExpression()), !dbg !3489
  %5 = tail call i32* @__errno_location() #29, !dbg !3490
  %6 = load i32, i32* %5, align 4, !dbg !3490, !tbaa !1016
  call void @llvm.dbg.value(metadata i32 %6, metadata !3478, metadata !DIExpression()), !dbg !3489
  %7 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !3491, !tbaa !787
  call void @llvm.dbg.value(metadata %struct.slotvec* %7, metadata !3479, metadata !DIExpression()), !dbg !3489
  %8 = icmp slt i32 %0, 0, !dbg !3492
  br i1 %8, label %9, label %10, !dbg !3494

9:                                                ; preds = %4
  tail call void @abort() #27, !dbg !3495
  unreachable, !dbg !3495

10:                                               ; preds = %4
  %11 = load i32, i32* @nslots, align 4, !dbg !3496, !tbaa !1016
  %12 = icmp sgt i32 %11, %0, !dbg !3497
  br i1 %12, label %34, label %13, !dbg !3498

13:                                               ; preds = %10
  %14 = icmp eq %struct.slotvec* %7, @slotvec0, !dbg !3499
  call void @llvm.dbg.value(metadata i1 %14, metadata !3480, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3500
  call void @llvm.dbg.value(metadata i32 2147483646, metadata !3483, metadata !DIExpression()), !dbg !3500
  %15 = icmp eq i32 %0, 2147483647, !dbg !3501
  br i1 %15, label %16, label %17, !dbg !3503

16:                                               ; preds = %13
  tail call void @xalloc_die() #27, !dbg !3504
  unreachable, !dbg !3504

17:                                               ; preds = %13
  %18 = select i1 %14, %struct.slotvec* null, %struct.slotvec* %7, !dbg !3505
  %19 = bitcast %struct.slotvec* %18 to i8*, !dbg !3505
  %20 = add nuw nsw i32 %0, 1, !dbg !3506
  %21 = zext i32 %20 to i64
  %22 = shl nuw nsw i64 %21, 4, !dbg !3507
  %23 = tail call i8* @xrealloc(i8* %19, i64 %22) #25, !dbg !3508
  %24 = bitcast i8* %23 to %struct.slotvec*, !dbg !3508
  call void @llvm.dbg.value(metadata %struct.slotvec* %24, metadata !3479, metadata !DIExpression()), !dbg !3489
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !dbg !3509, !tbaa !787
  br i1 %14, label %25, label %26, !dbg !3510

25:                                               ; preds = %17
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(16) %23, i8* nonnull align 8 dereferenceable(16) bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i1 false), !dbg !3511, !tbaa.struct !3513
  br label %26, !dbg !3514

26:                                               ; preds = %25, %17
  %27 = load i32, i32* @nslots, align 4, !dbg !3515, !tbaa !1016
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28, !dbg !3516
  %30 = bitcast %struct.slotvec* %29 to i8*, !dbg !3517
  %31 = sub nsw i32 %20, %27, !dbg !3518
  %32 = sext i32 %31 to i64, !dbg !3519
  %33 = shl nsw i64 %32, 4, !dbg !3520
  call void @llvm.dbg.value(metadata i8* %30, metadata !2914, metadata !DIExpression()) #25, !dbg !3521
  call void @llvm.dbg.value(metadata i32 0, metadata !2919, metadata !DIExpression()) #25, !dbg !3521
  call void @llvm.dbg.value(metadata i64 %33, metadata !2920, metadata !DIExpression()) #25, !dbg !3521
  call void @llvm.memset.p0i8.i64(i8* nonnull align 1 %30, i8 0, i64 %33, i1 false) #25, !dbg !3523
  store i32 %20, i32* @nslots, align 4, !dbg !3524, !tbaa !1016
  br label %34, !dbg !3525

34:                                               ; preds = %26, %10
  %35 = phi %struct.slotvec* [ %24, %26 ], [ %7, %10 ], !dbg !3489
  call void @llvm.dbg.value(metadata %struct.slotvec* %35, metadata !3479, metadata !DIExpression()), !dbg !3489
  %36 = zext i32 %0 to i64, !dbg !3526
  %37 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 0, !dbg !3527
  %38 = load i64, i64* %37, align 8, !dbg !3527, !tbaa !3450
  call void @llvm.dbg.value(metadata i64 %38, metadata !3484, metadata !DIExpression()), !dbg !3528
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 1, !dbg !3529
  %40 = load i8*, i8** %39, align 8, !dbg !3529, !tbaa !3437
  call void @llvm.dbg.value(metadata i8* %40, metadata !3486, metadata !DIExpression()), !dbg !3528
  %41 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !3530
  %42 = load i32, i32* %41, align 4, !dbg !3530, !tbaa !2579
  %43 = or i32 %42, 1, !dbg !3531
  call void @llvm.dbg.value(metadata i32 %43, metadata !3487, metadata !DIExpression()), !dbg !3528
  %44 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !3532
  %45 = load i32, i32* %44, align 8, !dbg !3532, !tbaa !2528
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !3533
  %47 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !3534
  %48 = load i8*, i8** %47, align 8, !dbg !3534, !tbaa !2601
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !3535
  %50 = load i8*, i8** %49, align 8, !dbg !3535, !tbaa !2604
  %51 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %40, i64 %38, i8* %1, i64 %2, i32 %45, i32 %43, i32* nonnull %46, i8* %48, i8* %50), !dbg !3536
  call void @llvm.dbg.value(metadata i64 %51, metadata !3488, metadata !DIExpression()), !dbg !3528
  %52 = icmp ugt i64 %38, %51, !dbg !3537
  br i1 %52, label %63, label %53, !dbg !3539

53:                                               ; preds = %34
  %54 = add i64 %51, 1, !dbg !3540
  call void @llvm.dbg.value(metadata i64 %54, metadata !3484, metadata !DIExpression()), !dbg !3528
  store i64 %54, i64* %37, align 8, !dbg !3542, !tbaa !3450
  %55 = icmp eq i8* %40, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !3543
  br i1 %55, label %57, label %56, !dbg !3545

56:                                               ; preds = %53
  tail call void @free(i8* %40) #25, !dbg !3546
  br label %57, !dbg !3546

57:                                               ; preds = %56, %53
  call void @llvm.dbg.value(metadata i64 %54, metadata !3386, metadata !DIExpression()) #25, !dbg !3547
  %58 = tail call noalias i8* @xmalloc(i64 %54) #25, !dbg !3549
  call void @llvm.dbg.value(metadata i8* %58, metadata !3486, metadata !DIExpression()), !dbg !3528
  store i8* %58, i8** %39, align 8, !dbg !3550, !tbaa !3437
  %59 = load i32, i32* %44, align 8, !dbg !3551, !tbaa !2528
  %60 = load i8*, i8** %47, align 8, !dbg !3552, !tbaa !2601
  %61 = load i8*, i8** %49, align 8, !dbg !3553, !tbaa !2604
  %62 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %58, i64 %54, i8* %1, i64 %2, i32 %59, i32 %43, i32* nonnull %46, i8* %60, i8* %61), !dbg !3554
  br label %63, !dbg !3555

63:                                               ; preds = %57, %34
  %64 = phi i8* [ %58, %57 ], [ %40, %34 ], !dbg !3528
  call void @llvm.dbg.value(metadata i8* %64, metadata !3486, metadata !DIExpression()), !dbg !3528
  store i32 %6, i32* %5, align 4, !dbg !3556, !tbaa !1016
  ret i8* %64, !dbg !3557
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #20

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_mem(i32 %0, i8* %1, i64 %2) local_unnamed_addr #8 !dbg !3558 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3562, metadata !DIExpression()), !dbg !3565
  call void @llvm.dbg.value(metadata i8* %1, metadata !3563, metadata !DIExpression()), !dbg !3565
  call void @llvm.dbg.value(metadata i64 %2, metadata !3564, metadata !DIExpression()), !dbg !3565
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @default_quoting_options), !dbg !3566
  ret i8* %4, !dbg !3567
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg(i8* %0) local_unnamed_addr #8 !dbg !3568 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3570, metadata !DIExpression()), !dbg !3571
  call void @llvm.dbg.value(metadata i32 0, metadata !3465, metadata !DIExpression()) #25, !dbg !3572
  call void @llvm.dbg.value(metadata i8* %0, metadata !3466, metadata !DIExpression()) #25, !dbg !3572
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @default_quoting_options) #25, !dbg !3574
  ret i8* %2, !dbg !3575
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_mem(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !3576 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3580, metadata !DIExpression()), !dbg !3582
  call void @llvm.dbg.value(metadata i64 %1, metadata !3581, metadata !DIExpression()), !dbg !3582
  call void @llvm.dbg.value(metadata i32 0, metadata !3562, metadata !DIExpression()) #25, !dbg !3583
  call void @llvm.dbg.value(metadata i8* %0, metadata !3563, metadata !DIExpression()) #25, !dbg !3583
  call void @llvm.dbg.value(metadata i64 %1, metadata !3564, metadata !DIExpression()) #25, !dbg !3583
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @default_quoting_options) #25, !dbg !3585
  ret i8* %3, !dbg !3586
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style(i32 %0, i32 %1, i8* %2) local_unnamed_addr #8 !dbg !3587 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3591, metadata !DIExpression()), !dbg !3595
  call void @llvm.dbg.value(metadata i32 %1, metadata !3592, metadata !DIExpression()), !dbg !3595
  call void @llvm.dbg.value(metadata i8* %2, metadata !3593, metadata !DIExpression()), !dbg !3595
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3596
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #25, !dbg !3596
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3594, metadata !DIExpression()), !dbg !3597
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3598), !dbg !3601
  call void @llvm.dbg.value(metadata i32 %1, metadata !3602, metadata !DIExpression()) #25, !dbg !3608
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3607, metadata !DIExpression()) #25, !dbg !3610
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false) #25, !dbg !3610, !alias.scope !3598
  %6 = icmp eq i32 %1, 10, !dbg !3611
  br i1 %6, label %7, label %8, !dbg !3613

7:                                                ; preds = %3
  tail call void @abort() #27, !dbg !3614, !noalias !3598
  unreachable, !dbg !3614

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3615
  store i32 %1, i32* %9, align 8, !dbg !3616, !tbaa !2528, !alias.scope !3598
  %10 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !3617
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #25, !dbg !3618
  ret i8* %10, !dbg !3619
}

; Function Attrs: inaccessiblememonly nofree nosync nounwind willreturn
declare void @llvm.experimental.noalias.scope.decl(metadata) #21

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_mem(i32 %0, i32 %1, i8* %2, i64 %3) local_unnamed_addr #8 !dbg !3620 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3624, metadata !DIExpression()), !dbg !3629
  call void @llvm.dbg.value(metadata i32 %1, metadata !3625, metadata !DIExpression()), !dbg !3629
  call void @llvm.dbg.value(metadata i8* %2, metadata !3626, metadata !DIExpression()), !dbg !3629
  call void @llvm.dbg.value(metadata i64 %3, metadata !3627, metadata !DIExpression()), !dbg !3629
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3630
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #25, !dbg !3630
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !3628, metadata !DIExpression()), !dbg !3631
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3632), !dbg !3635
  call void @llvm.dbg.value(metadata i32 %1, metadata !3602, metadata !DIExpression()) #25, !dbg !3636
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !3607, metadata !DIExpression()) #25, !dbg !3638
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %6, i8 0, i64 56, i1 false) #25, !dbg !3638, !alias.scope !3632
  %7 = icmp eq i32 %1, 10, !dbg !3639
  br i1 %7, label %8, label %9, !dbg !3640

8:                                                ; preds = %4
  tail call void @abort() #27, !dbg !3641, !noalias !3632
  unreachable, !dbg !3641

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3642
  store i32 %1, i32* %10, align 8, !dbg !3643, !tbaa !2528, !alias.scope !3632
  %11 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5), !dbg !3644
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #25, !dbg !3645
  ret i8* %11, !dbg !3646
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style(i32 %0, i8* %1) local_unnamed_addr #8 !dbg !3647 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3651, metadata !DIExpression()), !dbg !3653
  call void @llvm.dbg.value(metadata i8* %1, metadata !3652, metadata !DIExpression()), !dbg !3653
  call void @llvm.dbg.value(metadata i32 0, metadata !3591, metadata !DIExpression()) #25, !dbg !3654
  call void @llvm.dbg.value(metadata i32 %0, metadata !3592, metadata !DIExpression()) #25, !dbg !3654
  call void @llvm.dbg.value(metadata i8* %1, metadata !3593, metadata !DIExpression()) #25, !dbg !3654
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3656
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #25, !dbg !3656
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !3594, metadata !DIExpression()) #25, !dbg !3657
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3658) #25, !dbg !3661
  call void @llvm.dbg.value(metadata i32 %0, metadata !3602, metadata !DIExpression()) #25, !dbg !3662
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !3607, metadata !DIExpression()) #25, !dbg !3664
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false) #25, !dbg !3664, !alias.scope !3658
  %5 = icmp eq i32 %0, 10, !dbg !3665
  br i1 %5, label %6, label %7, !dbg !3666

6:                                                ; preds = %2
  tail call void @abort() #27, !dbg !3667, !noalias !3658
  unreachable, !dbg !3667

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !3668
  store i32 %0, i32* %8, align 8, !dbg !3669, !tbaa !2528, !alias.scope !3658
  %9 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 -1, %struct.quoting_options* nonnull %3) #25, !dbg !3670
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #25, !dbg !3671
  ret i8* %9, !dbg !3672
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style_mem(i32 %0, i8* %1, i64 %2) local_unnamed_addr #8 !dbg !3673 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3677, metadata !DIExpression()), !dbg !3680
  call void @llvm.dbg.value(metadata i8* %1, metadata !3678, metadata !DIExpression()), !dbg !3680
  call void @llvm.dbg.value(metadata i64 %2, metadata !3679, metadata !DIExpression()), !dbg !3680
  call void @llvm.dbg.value(metadata i32 0, metadata !3624, metadata !DIExpression()) #25, !dbg !3681
  call void @llvm.dbg.value(metadata i32 %0, metadata !3625, metadata !DIExpression()) #25, !dbg !3681
  call void @llvm.dbg.value(metadata i8* %1, metadata !3626, metadata !DIExpression()) #25, !dbg !3681
  call void @llvm.dbg.value(metadata i64 %2, metadata !3627, metadata !DIExpression()) #25, !dbg !3681
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3683
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #25, !dbg !3683
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3628, metadata !DIExpression()) #25, !dbg !3684
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3685) #25, !dbg !3688
  call void @llvm.dbg.value(metadata i32 %0, metadata !3602, metadata !DIExpression()) #25, !dbg !3689
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3607, metadata !DIExpression()) #25, !dbg !3691
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false) #25, !dbg !3691, !alias.scope !3685
  %6 = icmp eq i32 %0, 10, !dbg !3692
  br i1 %6, label %7, label %8, !dbg !3693

7:                                                ; preds = %3
  tail call void @abort() #27, !dbg !3694, !noalias !3685
  unreachable, !dbg !3694

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3695
  store i32 %0, i32* %9, align 8, !dbg !3696, !tbaa !2528, !alias.scope !3685
  %10 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 %2, %struct.quoting_options* nonnull %4) #25, !dbg !3697
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #25, !dbg !3698
  ret i8* %10, !dbg !3699
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char_mem(i8* %0, i64 %1, i8 signext %2) local_unnamed_addr #8 !dbg !3700 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3704, metadata !DIExpression()), !dbg !3708
  call void @llvm.dbg.value(metadata i64 %1, metadata !3705, metadata !DIExpression()), !dbg !3708
  call void @llvm.dbg.value(metadata i8 %2, metadata !3706, metadata !DIExpression()), !dbg !3708
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3709
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #25, !dbg !3709
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3707, metadata !DIExpression()), !dbg !3710
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !3711, !tbaa.struct !3712
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2546, metadata !DIExpression()), !dbg !3713
  call void @llvm.dbg.value(metadata i8 %2, metadata !2547, metadata !DIExpression()), !dbg !3713
  call void @llvm.dbg.value(metadata i32 1, metadata !2548, metadata !DIExpression()), !dbg !3713
  call void @llvm.dbg.value(metadata i8 %2, metadata !2549, metadata !DIExpression()), !dbg !3713
  %6 = lshr i8 %2, 5, !dbg !3715
  %7 = zext i8 %6 to i64, !dbg !3715
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !3716
  call void @llvm.dbg.value(metadata i32* %8, metadata !2550, metadata !DIExpression()), !dbg !3713
  %9 = and i8 %2, 31, !dbg !3717
  %10 = zext i8 %9 to i32, !dbg !3717
  call void @llvm.dbg.value(metadata i32 %10, metadata !2552, metadata !DIExpression()), !dbg !3713
  %11 = load i32, i32* %8, align 4, !dbg !3718, !tbaa !1016
  %12 = lshr i32 %11, %10, !dbg !3719
  %13 = and i32 %12, 1, !dbg !3720
  call void @llvm.dbg.value(metadata i32 %13, metadata !2553, metadata !DIExpression()), !dbg !3713
  %14 = xor i32 %13, 1, !dbg !3721
  %15 = shl i32 %14, %10, !dbg !3722
  %16 = xor i32 %15, %11, !dbg !3723
  store i32 %16, i32* %8, align 4, !dbg !3723, !tbaa !1016
  %17 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %4), !dbg !3724
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #25, !dbg !3725
  ret i8* %17, !dbg !3726
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char(i8* %0, i8 signext %1) local_unnamed_addr #8 !dbg !3727 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3731, metadata !DIExpression()), !dbg !3733
  call void @llvm.dbg.value(metadata i8 %1, metadata !3732, metadata !DIExpression()), !dbg !3733
  call void @llvm.dbg.value(metadata i8* %0, metadata !3704, metadata !DIExpression()) #25, !dbg !3734
  call void @llvm.dbg.value(metadata i64 -1, metadata !3705, metadata !DIExpression()) #25, !dbg !3734
  call void @llvm.dbg.value(metadata i8 %1, metadata !3706, metadata !DIExpression()) #25, !dbg !3734
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3736
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #25, !dbg !3736
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !3707, metadata !DIExpression()) #25, !dbg !3737
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %4, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #25, !dbg !3738, !tbaa.struct !3712
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2546, metadata !DIExpression()) #25, !dbg !3739
  call void @llvm.dbg.value(metadata i8 %1, metadata !2547, metadata !DIExpression()) #25, !dbg !3739
  call void @llvm.dbg.value(metadata i32 1, metadata !2548, metadata !DIExpression()) #25, !dbg !3739
  call void @llvm.dbg.value(metadata i8 %1, metadata !2549, metadata !DIExpression()) #25, !dbg !3739
  %5 = lshr i8 %1, 5, !dbg !3741
  %6 = zext i8 %5 to i64, !dbg !3741
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !3742
  call void @llvm.dbg.value(metadata i32* %7, metadata !2550, metadata !DIExpression()) #25, !dbg !3739
  %8 = and i8 %1, 31, !dbg !3743
  %9 = zext i8 %8 to i32, !dbg !3743
  call void @llvm.dbg.value(metadata i32 %9, metadata !2552, metadata !DIExpression()) #25, !dbg !3739
  %10 = load i32, i32* %7, align 4, !dbg !3744, !tbaa !1016
  %11 = lshr i32 %10, %9, !dbg !3745
  %12 = and i32 %11, 1, !dbg !3746
  call void @llvm.dbg.value(metadata i32 %12, metadata !2553, metadata !DIExpression()) #25, !dbg !3739
  %13 = xor i32 %12, 1, !dbg !3747
  %14 = shl i32 %13, %9, !dbg !3748
  %15 = xor i32 %14, %10, !dbg !3749
  store i32 %15, i32* %7, align 4, !dbg !3749, !tbaa !1016
  %16 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %3) #25, !dbg !3750
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #25, !dbg !3751
  ret i8* %16, !dbg !3752
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon(i8* %0) local_unnamed_addr #8 !dbg !3753 {
  %2 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3755, metadata !DIExpression()), !dbg !3756
  call void @llvm.dbg.value(metadata i8* %0, metadata !3731, metadata !DIExpression()) #25, !dbg !3757
  call void @llvm.dbg.value(metadata i8 58, metadata !3732, metadata !DIExpression()) #25, !dbg !3757
  call void @llvm.dbg.value(metadata i8* %0, metadata !3704, metadata !DIExpression()) #25, !dbg !3759
  call void @llvm.dbg.value(metadata i64 -1, metadata !3705, metadata !DIExpression()) #25, !dbg !3759
  call void @llvm.dbg.value(metadata i8 58, metadata !3706, metadata !DIExpression()) #25, !dbg !3759
  %3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !3761
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %3) #25, !dbg !3761
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %2, metadata !3707, metadata !DIExpression()) #25, !dbg !3762
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %3, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #25, !dbg !3763, !tbaa.struct !3712
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2546, metadata !DIExpression()) #25, !dbg !3764
  call void @llvm.dbg.value(metadata i8 58, metadata !2547, metadata !DIExpression()) #25, !dbg !3764
  call void @llvm.dbg.value(metadata i32 1, metadata !2548, metadata !DIExpression()) #25, !dbg !3764
  call void @llvm.dbg.value(metadata i8 58, metadata !2549, metadata !DIExpression()) #25, !dbg !3764
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !3766
  call void @llvm.dbg.value(metadata i32* %4, metadata !2550, metadata !DIExpression()) #25, !dbg !3764
  call void @llvm.dbg.value(metadata i32 26, metadata !2552, metadata !DIExpression()) #25, !dbg !3764
  %5 = load i32, i32* %4, align 4, !dbg !3767, !tbaa !1016
  call void @llvm.dbg.value(metadata i32 %5, metadata !2553, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)) #25, !dbg !3764
  %6 = or i32 %5, 67108864, !dbg !3768
  store i32 %6, i32* %4, align 4, !dbg !3768, !tbaa !1016
  %7 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %2) #25, !dbg !3769
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %3) #25, !dbg !3770
  ret i8* %7, !dbg !3771
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon_mem(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !3772 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3774, metadata !DIExpression()), !dbg !3776
  call void @llvm.dbg.value(metadata i64 %1, metadata !3775, metadata !DIExpression()), !dbg !3776
  call void @llvm.dbg.value(metadata i8* %0, metadata !3704, metadata !DIExpression()) #25, !dbg !3777
  call void @llvm.dbg.value(metadata i64 %1, metadata !3705, metadata !DIExpression()) #25, !dbg !3777
  call void @llvm.dbg.value(metadata i8 58, metadata !3706, metadata !DIExpression()) #25, !dbg !3777
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3779
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #25, !dbg !3779
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !3707, metadata !DIExpression()) #25, !dbg !3780
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %4, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #25, !dbg !3781, !tbaa.struct !3712
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2546, metadata !DIExpression()) #25, !dbg !3782
  call void @llvm.dbg.value(metadata i8 58, metadata !2547, metadata !DIExpression()) #25, !dbg !3782
  call void @llvm.dbg.value(metadata i32 1, metadata !2548, metadata !DIExpression()) #25, !dbg !3782
  call void @llvm.dbg.value(metadata i8 58, metadata !2549, metadata !DIExpression()) #25, !dbg !3782
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !3784
  call void @llvm.dbg.value(metadata i32* %5, metadata !2550, metadata !DIExpression()) #25, !dbg !3782
  call void @llvm.dbg.value(metadata i32 26, metadata !2552, metadata !DIExpression()) #25, !dbg !3782
  %6 = load i32, i32* %5, align 4, !dbg !3785, !tbaa !1016
  call void @llvm.dbg.value(metadata i32 %6, metadata !2553, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)) #25, !dbg !3782
  %7 = or i32 %6, 67108864, !dbg !3786
  store i32 %7, i32* %5, align 4, !dbg !3786, !tbaa !1016
  %8 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %3) #25, !dbg !3787
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #25, !dbg !3788
  ret i8* %8, !dbg !3789
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_colon(i32 %0, i32 %1, i8* %2) local_unnamed_addr #8 !dbg !3790 {
  %4 = alloca %struct.quoting_options, align 8
  %5 = alloca [52 x i8], align 4
  call void @llvm.dbg.declare(metadata [52 x i8]* %5, metadata !3607, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416)), !dbg !3796
  call void @llvm.dbg.value(metadata i32 %0, metadata !3792, metadata !DIExpression()), !dbg !3798
  call void @llvm.dbg.value(metadata i32 %1, metadata !3793, metadata !DIExpression()), !dbg !3798
  call void @llvm.dbg.value(metadata i8* %2, metadata !3794, metadata !DIExpression()), !dbg !3798
  %6 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3799
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #25, !dbg !3799
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3795, metadata !DIExpression()), !dbg !3800
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %5, i64 0, i64 0, !dbg !3801
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %7), !dbg !3801
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3802), !dbg !3801
  call void @llvm.dbg.value(metadata i32 %1, metadata !3602, metadata !DIExpression()) #25, !dbg !3805
  call void @llvm.dbg.value(metadata i32 0, metadata !3607, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3805
  call void @llvm.memset.p0i8.i64(i8* nonnull align 4 dereferenceable(52) %7, i8 0, i64 52, i1 false), !dbg !3796, !alias.scope !3802
  %8 = icmp eq i32 %1, 10, !dbg !3806
  br i1 %8, label %9, label %10, !dbg !3807

9:                                                ; preds = %3
  tail call void @abort() #27, !dbg !3808, !noalias !3802
  unreachable, !dbg !3808

10:                                               ; preds = %3
  call void @llvm.dbg.value(metadata i32 %1, metadata !3607, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3805
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3801
  store i32 %1, i32* %11, align 8, !dbg !3801, !tbaa.struct !3712
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !3801
  %13 = bitcast i32* %12 to i8*, !dbg !3801
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 4 dereferenceable(52) %13, i8* nonnull align 4 dereferenceable(52) %7, i64 52, i1 false), !dbg !3801, !tbaa.struct !3809
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %7), !dbg !3801
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2546, metadata !DIExpression()), !dbg !3810
  call void @llvm.dbg.value(metadata i8 58, metadata !2547, metadata !DIExpression()), !dbg !3810
  call void @llvm.dbg.value(metadata i32 1, metadata !2548, metadata !DIExpression()), !dbg !3810
  call void @llvm.dbg.value(metadata i8 58, metadata !2549, metadata !DIExpression()), !dbg !3810
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 1, !dbg !3812
  call void @llvm.dbg.value(metadata i32* %14, metadata !2550, metadata !DIExpression()), !dbg !3810
  call void @llvm.dbg.value(metadata i32 26, metadata !2552, metadata !DIExpression()), !dbg !3810
  %15 = load i32, i32* %14, align 4, !dbg !3813, !tbaa !1016
  call void @llvm.dbg.value(metadata i32 %15, metadata !2553, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)), !dbg !3810
  %16 = or i32 %15, 67108864, !dbg !3814
  store i32 %16, i32* %14, align 4, !dbg !3814, !tbaa !1016
  %17 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !3815
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #25, !dbg !3816
  ret i8* %17, !dbg !3817
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom(i32 %0, i8* %1, i8* %2, i8* %3) local_unnamed_addr #8 !dbg !3818 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3822, metadata !DIExpression()), !dbg !3826
  call void @llvm.dbg.value(metadata i8* %1, metadata !3823, metadata !DIExpression()), !dbg !3826
  call void @llvm.dbg.value(metadata i8* %2, metadata !3824, metadata !DIExpression()), !dbg !3826
  call void @llvm.dbg.value(metadata i8* %3, metadata !3825, metadata !DIExpression()), !dbg !3826
  call void @llvm.dbg.value(metadata i32 %0, metadata !3827, metadata !DIExpression()) #25, !dbg !3837
  call void @llvm.dbg.value(metadata i8* %1, metadata !3832, metadata !DIExpression()) #25, !dbg !3837
  call void @llvm.dbg.value(metadata i8* %2, metadata !3833, metadata !DIExpression()) #25, !dbg !3837
  call void @llvm.dbg.value(metadata i8* %3, metadata !3834, metadata !DIExpression()) #25, !dbg !3837
  call void @llvm.dbg.value(metadata i64 -1, metadata !3835, metadata !DIExpression()) #25, !dbg !3837
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3839
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #25, !dbg !3839
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !3836, metadata !DIExpression()) #25, !dbg !3840
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %6, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false) #25, !dbg !3841, !tbaa.struct !3712
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2586, metadata !DIExpression()) #25, !dbg !3842
  call void @llvm.dbg.value(metadata i8* %1, metadata !2587, metadata !DIExpression()) #25, !dbg !3842
  call void @llvm.dbg.value(metadata i8* %2, metadata !2588, metadata !DIExpression()) #25, !dbg !3842
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2586, metadata !DIExpression()) #25, !dbg !3842
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3844
  store i32 10, i32* %7, align 8, !dbg !3845, !tbaa !2528
  %8 = icmp ne i8* %1, null, !dbg !3846
  %9 = icmp ne i8* %2, null
  %10 = and i1 %8, %9, !dbg !3847
  br i1 %10, label %12, label %11, !dbg !3847

11:                                               ; preds = %4
  tail call void @abort() #27, !dbg !3848
  unreachable, !dbg !3848

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3849
  store i8* %1, i8** %13, align 8, !dbg !3850, !tbaa !2601
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3851
  store i8* %2, i8** %14, align 8, !dbg !3852, !tbaa !2604
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 -1, %struct.quoting_options* nonnull %5) #25, !dbg !3853
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #25, !dbg !3854
  ret i8* %15, !dbg !3855
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom_mem(i32 %0, i8* %1, i8* %2, i8* %3, i64 %4) local_unnamed_addr #8 !dbg !3828 {
  %6 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3827, metadata !DIExpression()), !dbg !3856
  call void @llvm.dbg.value(metadata i8* %1, metadata !3832, metadata !DIExpression()), !dbg !3856
  call void @llvm.dbg.value(metadata i8* %2, metadata !3833, metadata !DIExpression()), !dbg !3856
  call void @llvm.dbg.value(metadata i8* %3, metadata !3834, metadata !DIExpression()), !dbg !3856
  call void @llvm.dbg.value(metadata i64 %4, metadata !3835, metadata !DIExpression()), !dbg !3856
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !3857
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #25, !dbg !3857
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %6, metadata !3836, metadata !DIExpression()), !dbg !3858
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %7, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false), !dbg !3859, !tbaa.struct !3712
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !2586, metadata !DIExpression()) #25, !dbg !3860
  call void @llvm.dbg.value(metadata i8* %1, metadata !2587, metadata !DIExpression()) #25, !dbg !3860
  call void @llvm.dbg.value(metadata i8* %2, metadata !2588, metadata !DIExpression()) #25, !dbg !3860
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !2586, metadata !DIExpression()) #25, !dbg !3860
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !3862
  store i32 10, i32* %8, align 8, !dbg !3863, !tbaa !2528
  %9 = icmp ne i8* %1, null, !dbg !3864
  %10 = icmp ne i8* %2, null
  %11 = and i1 %9, %10, !dbg !3865
  br i1 %11, label %13, label %12, !dbg !3865

12:                                               ; preds = %5
  tail call void @abort() #27, !dbg !3866
  unreachable, !dbg !3866

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !3867
  store i8* %1, i8** %14, align 8, !dbg !3868, !tbaa !2601
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !3869
  store i8* %2, i8** %15, align 8, !dbg !3870, !tbaa !2604
  %16 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 %4, %struct.quoting_options* nonnull %6), !dbg !3871
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #25, !dbg !3872
  ret i8* %16, !dbg !3873
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom(i8* %0, i8* %1, i8* %2) local_unnamed_addr #8 !dbg !3874 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3878, metadata !DIExpression()), !dbg !3881
  call void @llvm.dbg.value(metadata i8* %1, metadata !3879, metadata !DIExpression()), !dbg !3881
  call void @llvm.dbg.value(metadata i8* %2, metadata !3880, metadata !DIExpression()), !dbg !3881
  call void @llvm.dbg.value(metadata i32 0, metadata !3822, metadata !DIExpression()) #25, !dbg !3882
  call void @llvm.dbg.value(metadata i8* %0, metadata !3823, metadata !DIExpression()) #25, !dbg !3882
  call void @llvm.dbg.value(metadata i8* %1, metadata !3824, metadata !DIExpression()) #25, !dbg !3882
  call void @llvm.dbg.value(metadata i8* %2, metadata !3825, metadata !DIExpression()) #25, !dbg !3882
  call void @llvm.dbg.value(metadata i32 0, metadata !3827, metadata !DIExpression()) #25, !dbg !3884
  call void @llvm.dbg.value(metadata i8* %0, metadata !3832, metadata !DIExpression()) #25, !dbg !3884
  call void @llvm.dbg.value(metadata i8* %1, metadata !3833, metadata !DIExpression()) #25, !dbg !3884
  call void @llvm.dbg.value(metadata i8* %2, metadata !3834, metadata !DIExpression()) #25, !dbg !3884
  call void @llvm.dbg.value(metadata i64 -1, metadata !3835, metadata !DIExpression()) #25, !dbg !3884
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3886
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #25, !dbg !3886
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3836, metadata !DIExpression()) #25, !dbg !3887
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false) #25, !dbg !3888, !tbaa.struct !3712
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2586, metadata !DIExpression()) #25, !dbg !3889
  call void @llvm.dbg.value(metadata i8* %0, metadata !2587, metadata !DIExpression()) #25, !dbg !3889
  call void @llvm.dbg.value(metadata i8* %1, metadata !2588, metadata !DIExpression()) #25, !dbg !3889
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2586, metadata !DIExpression()) #25, !dbg !3889
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3891
  store i32 10, i32* %6, align 8, !dbg !3892, !tbaa !2528
  %7 = icmp ne i8* %0, null, !dbg !3893
  %8 = icmp ne i8* %1, null
  %9 = and i1 %7, %8, !dbg !3894
  br i1 %9, label %11, label %10, !dbg !3894

10:                                               ; preds = %3
  tail call void @abort() #27, !dbg !3895
  unreachable, !dbg !3895

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !3896
  store i8* %0, i8** %12, align 8, !dbg !3897, !tbaa !2601
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !3898
  store i8* %1, i8** %13, align 8, !dbg !3899, !tbaa !2604
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4) #25, !dbg !3900
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #25, !dbg !3901
  ret i8* %14, !dbg !3902
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom_mem(i8* %0, i8* %1, i8* %2, i64 %3) local_unnamed_addr #8 !dbg !3903 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3907, metadata !DIExpression()), !dbg !3911
  call void @llvm.dbg.value(metadata i8* %1, metadata !3908, metadata !DIExpression()), !dbg !3911
  call void @llvm.dbg.value(metadata i8* %2, metadata !3909, metadata !DIExpression()), !dbg !3911
  call void @llvm.dbg.value(metadata i64 %3, metadata !3910, metadata !DIExpression()), !dbg !3911
  call void @llvm.dbg.value(metadata i32 0, metadata !3827, metadata !DIExpression()) #25, !dbg !3912
  call void @llvm.dbg.value(metadata i8* %0, metadata !3832, metadata !DIExpression()) #25, !dbg !3912
  call void @llvm.dbg.value(metadata i8* %1, metadata !3833, metadata !DIExpression()) #25, !dbg !3912
  call void @llvm.dbg.value(metadata i8* %2, metadata !3834, metadata !DIExpression()) #25, !dbg !3912
  call void @llvm.dbg.value(metadata i64 %3, metadata !3835, metadata !DIExpression()) #25, !dbg !3912
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3914
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #25, !dbg !3914
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !3836, metadata !DIExpression()) #25, !dbg !3915
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %6, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false) #25, !dbg !3916, !tbaa.struct !3712
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2586, metadata !DIExpression()) #25, !dbg !3917
  call void @llvm.dbg.value(metadata i8* %0, metadata !2587, metadata !DIExpression()) #25, !dbg !3917
  call void @llvm.dbg.value(metadata i8* %1, metadata !2588, metadata !DIExpression()) #25, !dbg !3917
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2586, metadata !DIExpression()) #25, !dbg !3917
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3919
  store i32 10, i32* %7, align 8, !dbg !3920, !tbaa !2528
  %8 = icmp ne i8* %0, null, !dbg !3921
  %9 = icmp ne i8* %1, null
  %10 = and i1 %8, %9, !dbg !3922
  br i1 %10, label %12, label %11, !dbg !3922

11:                                               ; preds = %4
  tail call void @abort() #27, !dbg !3923
  unreachable, !dbg !3923

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3924
  store i8* %0, i8** %13, align 8, !dbg !3925, !tbaa !2601
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3926
  store i8* %1, i8** %14, align 8, !dbg !3927, !tbaa !2604
  %15 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5) #25, !dbg !3928
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #25, !dbg !3929
  ret i8* %15, !dbg !3930
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n_mem(i32 %0, i8* %1, i64 %2) local_unnamed_addr #8 !dbg !3931 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3935, metadata !DIExpression()), !dbg !3938
  call void @llvm.dbg.value(metadata i8* %1, metadata !3936, metadata !DIExpression()), !dbg !3938
  call void @llvm.dbg.value(metadata i64 %2, metadata !3937, metadata !DIExpression()), !dbg !3938
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @quote_quoting_options), !dbg !3939
  ret i8* %4, !dbg !3940
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_mem(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !3941 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3945, metadata !DIExpression()), !dbg !3947
  call void @llvm.dbg.value(metadata i64 %1, metadata !3946, metadata !DIExpression()), !dbg !3947
  call void @llvm.dbg.value(metadata i32 0, metadata !3935, metadata !DIExpression()) #25, !dbg !3948
  call void @llvm.dbg.value(metadata i8* %0, metadata !3936, metadata !DIExpression()) #25, !dbg !3948
  call void @llvm.dbg.value(metadata i64 %1, metadata !3937, metadata !DIExpression()) #25, !dbg !3948
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @quote_quoting_options) #25, !dbg !3950
  ret i8* %3, !dbg !3951
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n(i32 %0, i8* %1) local_unnamed_addr #8 !dbg !3952 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3956, metadata !DIExpression()), !dbg !3958
  call void @llvm.dbg.value(metadata i8* %1, metadata !3957, metadata !DIExpression()), !dbg !3958
  call void @llvm.dbg.value(metadata i32 %0, metadata !3935, metadata !DIExpression()) #25, !dbg !3959
  call void @llvm.dbg.value(metadata i8* %1, metadata !3936, metadata !DIExpression()) #25, !dbg !3959
  call void @llvm.dbg.value(metadata i64 -1, metadata !3937, metadata !DIExpression()) #25, !dbg !3959
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #25, !dbg !3961
  ret i8* %3, !dbg !3962
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote(i8* %0) local_unnamed_addr #8 !dbg !3963 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3967, metadata !DIExpression()), !dbg !3968
  call void @llvm.dbg.value(metadata i32 0, metadata !3956, metadata !DIExpression()) #25, !dbg !3969
  call void @llvm.dbg.value(metadata i8* %0, metadata !3957, metadata !DIExpression()) #25, !dbg !3969
  call void @llvm.dbg.value(metadata i32 0, metadata !3935, metadata !DIExpression()) #25, !dbg !3971
  call void @llvm.dbg.value(metadata i8* %0, metadata !3936, metadata !DIExpression()) #25, !dbg !3971
  call void @llvm.dbg.value(metadata i64 -1, metadata !3937, metadata !DIExpression()) #25, !dbg !3971
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #25, !dbg !3973
  ret i8* %2, !dbg !3974
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @dup_safer(i32 %0) local_unnamed_addr #8 !dbg !3975 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3977, metadata !DIExpression()), !dbg !3978
  %2 = tail call i32 (i32, i32, ...) @rpl_fcntl(i32 %0, i32 0, i32 3) #25, !dbg !3979
  ret i32 %2, !dbg !3980
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** readonly %4, i64 %5) local_unnamed_addr #8 !dbg !3981 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4020, metadata !DIExpression()), !dbg !4026
  call void @llvm.dbg.value(metadata i8* %1, metadata !4021, metadata !DIExpression()), !dbg !4026
  call void @llvm.dbg.value(metadata i8* %2, metadata !4022, metadata !DIExpression()), !dbg !4026
  call void @llvm.dbg.value(metadata i8* %3, metadata !4023, metadata !DIExpression()), !dbg !4026
  call void @llvm.dbg.value(metadata i8** %4, metadata !4024, metadata !DIExpression()), !dbg !4026
  call void @llvm.dbg.value(metadata i64 %5, metadata !4025, metadata !DIExpression()), !dbg !4026
  %7 = icmp eq i8* %1, null, !dbg !4027
  br i1 %7, label %10, label %8, !dbg !4029

8:                                                ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.127, i64 0, i64 0), i8* nonnull %1, i8* %2, i8* %3) #25, !dbg !4030
  br label %12, !dbg !4030

10:                                               ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.128, i64 0, i64 0), i8* %2, i8* %3) #25, !dbg !4031
  br label %12

12:                                               ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.129, i64 0, i64 0), i32 5) #25, !dbg !4032
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* %13, i32 2020) #25, !dbg !4032
  %15 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.130, i64 0, i64 0), %struct._IO_FILE* %0), !dbg !4033
  %16 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([171 x i8], [171 x i8]* @.str.4.131, i64 0, i64 0), i32 5) #25, !dbg !4034
  %17 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %16, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5.132, i64 0, i64 0)) #25, !dbg !4034
  %18 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.130, i64 0, i64 0), %struct._IO_FILE* %0), !dbg !4035
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
  ], !dbg !4036

19:                                               ; preds = %12
  %20 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6.133, i64 0, i64 0), i32 5) #25, !dbg !4037
  %21 = load i8*, i8** %4, align 8, !dbg !4037, !tbaa !787
  %22 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %20, i8* %21) #25, !dbg !4037
  br label %147, !dbg !4039

23:                                               ; preds = %12
  %24 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7.134, i64 0, i64 0), i32 5) #25, !dbg !4040
  %25 = load i8*, i8** %4, align 8, !dbg !4040, !tbaa !787
  %26 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4040
  %27 = load i8*, i8** %26, align 8, !dbg !4040, !tbaa !787
  %28 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %24, i8* %25, i8* %27) #25, !dbg !4040
  br label %147, !dbg !4041

29:                                               ; preds = %12
  %30 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8.135, i64 0, i64 0), i32 5) #25, !dbg !4042
  %31 = load i8*, i8** %4, align 8, !dbg !4042, !tbaa !787
  %32 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4042
  %33 = load i8*, i8** %32, align 8, !dbg !4042, !tbaa !787
  %34 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !4042
  %35 = load i8*, i8** %34, align 8, !dbg !4042, !tbaa !787
  %36 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %30, i8* %31, i8* %33, i8* %35) #25, !dbg !4042
  br label %147, !dbg !4043

37:                                               ; preds = %12
  %38 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9.136, i64 0, i64 0), i32 5) #25, !dbg !4044
  %39 = load i8*, i8** %4, align 8, !dbg !4044, !tbaa !787
  %40 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4044
  %41 = load i8*, i8** %40, align 8, !dbg !4044, !tbaa !787
  %42 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !4044
  %43 = load i8*, i8** %42, align 8, !dbg !4044, !tbaa !787
  %44 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !4044
  %45 = load i8*, i8** %44, align 8, !dbg !4044, !tbaa !787
  %46 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %38, i8* %39, i8* %41, i8* %43, i8* %45) #25, !dbg !4044
  br label %147, !dbg !4045

47:                                               ; preds = %12
  %48 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.10.137, i64 0, i64 0), i32 5) #25, !dbg !4046
  %49 = load i8*, i8** %4, align 8, !dbg !4046, !tbaa !787
  %50 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4046
  %51 = load i8*, i8** %50, align 8, !dbg !4046, !tbaa !787
  %52 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !4046
  %53 = load i8*, i8** %52, align 8, !dbg !4046, !tbaa !787
  %54 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !4046
  %55 = load i8*, i8** %54, align 8, !dbg !4046, !tbaa !787
  %56 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !4046
  %57 = load i8*, i8** %56, align 8, !dbg !4046, !tbaa !787
  %58 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %48, i8* %49, i8* %51, i8* %53, i8* %55, i8* %57) #25, !dbg !4046
  br label %147, !dbg !4047

59:                                               ; preds = %12
  %60 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.11.138, i64 0, i64 0), i32 5) #25, !dbg !4048
  %61 = load i8*, i8** %4, align 8, !dbg !4048, !tbaa !787
  %62 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4048
  %63 = load i8*, i8** %62, align 8, !dbg !4048, !tbaa !787
  %64 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !4048
  %65 = load i8*, i8** %64, align 8, !dbg !4048, !tbaa !787
  %66 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !4048
  %67 = load i8*, i8** %66, align 8, !dbg !4048, !tbaa !787
  %68 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !4048
  %69 = load i8*, i8** %68, align 8, !dbg !4048, !tbaa !787
  %70 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !4048
  %71 = load i8*, i8** %70, align 8, !dbg !4048, !tbaa !787
  %72 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %60, i8* %61, i8* %63, i8* %65, i8* %67, i8* %69, i8* %71) #25, !dbg !4048
  br label %147, !dbg !4049

73:                                               ; preds = %12
  %74 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.12.139, i64 0, i64 0), i32 5) #25, !dbg !4050
  %75 = load i8*, i8** %4, align 8, !dbg !4050, !tbaa !787
  %76 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4050
  %77 = load i8*, i8** %76, align 8, !dbg !4050, !tbaa !787
  %78 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !4050
  %79 = load i8*, i8** %78, align 8, !dbg !4050, !tbaa !787
  %80 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !4050
  %81 = load i8*, i8** %80, align 8, !dbg !4050, !tbaa !787
  %82 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !4050
  %83 = load i8*, i8** %82, align 8, !dbg !4050, !tbaa !787
  %84 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !4050
  %85 = load i8*, i8** %84, align 8, !dbg !4050, !tbaa !787
  %86 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !4050
  %87 = load i8*, i8** %86, align 8, !dbg !4050, !tbaa !787
  %88 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %74, i8* %75, i8* %77, i8* %79, i8* %81, i8* %83, i8* %85, i8* %87) #25, !dbg !4050
  br label %147, !dbg !4051

89:                                               ; preds = %12
  %90 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.13.140, i64 0, i64 0), i32 5) #25, !dbg !4052
  %91 = load i8*, i8** %4, align 8, !dbg !4052, !tbaa !787
  %92 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4052
  %93 = load i8*, i8** %92, align 8, !dbg !4052, !tbaa !787
  %94 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !4052
  %95 = load i8*, i8** %94, align 8, !dbg !4052, !tbaa !787
  %96 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !4052
  %97 = load i8*, i8** %96, align 8, !dbg !4052, !tbaa !787
  %98 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !4052
  %99 = load i8*, i8** %98, align 8, !dbg !4052, !tbaa !787
  %100 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !4052
  %101 = load i8*, i8** %100, align 8, !dbg !4052, !tbaa !787
  %102 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !4052
  %103 = load i8*, i8** %102, align 8, !dbg !4052, !tbaa !787
  %104 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !4052
  %105 = load i8*, i8** %104, align 8, !dbg !4052, !tbaa !787
  %106 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %90, i8* %91, i8* %93, i8* %95, i8* %97, i8* %99, i8* %101, i8* %103, i8* %105) #25, !dbg !4052
  br label %147, !dbg !4053

107:                                              ; preds = %12
  %108 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.14.141, i64 0, i64 0), i32 5) #25, !dbg !4054
  %109 = load i8*, i8** %4, align 8, !dbg !4054, !tbaa !787
  %110 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4054
  %111 = load i8*, i8** %110, align 8, !dbg !4054, !tbaa !787
  %112 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !4054
  %113 = load i8*, i8** %112, align 8, !dbg !4054, !tbaa !787
  %114 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !4054
  %115 = load i8*, i8** %114, align 8, !dbg !4054, !tbaa !787
  %116 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !4054
  %117 = load i8*, i8** %116, align 8, !dbg !4054, !tbaa !787
  %118 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !4054
  %119 = load i8*, i8** %118, align 8, !dbg !4054, !tbaa !787
  %120 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !4054
  %121 = load i8*, i8** %120, align 8, !dbg !4054, !tbaa !787
  %122 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !4054
  %123 = load i8*, i8** %122, align 8, !dbg !4054, !tbaa !787
  %124 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !4054
  %125 = load i8*, i8** %124, align 8, !dbg !4054, !tbaa !787
  %126 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %108, i8* %109, i8* %111, i8* %113, i8* %115, i8* %117, i8* %119, i8* %121, i8* %123, i8* %125) #25, !dbg !4054
  br label %147, !dbg !4055

127:                                              ; preds = %12
  %128 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.15.142, i64 0, i64 0), i32 5) #25, !dbg !4056
  %129 = load i8*, i8** %4, align 8, !dbg !4056, !tbaa !787
  %130 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4056
  %131 = load i8*, i8** %130, align 8, !dbg !4056, !tbaa !787
  %132 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !4056
  %133 = load i8*, i8** %132, align 8, !dbg !4056, !tbaa !787
  %134 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !4056
  %135 = load i8*, i8** %134, align 8, !dbg !4056, !tbaa !787
  %136 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !4056
  %137 = load i8*, i8** %136, align 8, !dbg !4056, !tbaa !787
  %138 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !4056
  %139 = load i8*, i8** %138, align 8, !dbg !4056, !tbaa !787
  %140 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !4056
  %141 = load i8*, i8** %140, align 8, !dbg !4056, !tbaa !787
  %142 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !4056
  %143 = load i8*, i8** %142, align 8, !dbg !4056, !tbaa !787
  %144 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !4056
  %145 = load i8*, i8** %144, align 8, !dbg !4056, !tbaa !787
  %146 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %128, i8* %129, i8* %131, i8* %133, i8* %135, i8* %137, i8* %139, i8* %141, i8* %143, i8* %145) #25, !dbg !4056
  br label %147, !dbg !4057

147:                                              ; preds = %127, %107, %89, %73, %59, %47, %37, %29, %23, %19, %12
  ret void, !dbg !4058
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_ar(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** readonly %4) local_unnamed_addr #8 !dbg !4059 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4063, metadata !DIExpression()), !dbg !4069
  call void @llvm.dbg.value(metadata i8* %1, metadata !4064, metadata !DIExpression()), !dbg !4069
  call void @llvm.dbg.value(metadata i8* %2, metadata !4065, metadata !DIExpression()), !dbg !4069
  call void @llvm.dbg.value(metadata i8* %3, metadata !4066, metadata !DIExpression()), !dbg !4069
  call void @llvm.dbg.value(metadata i8** %4, metadata !4067, metadata !DIExpression()), !dbg !4069
  call void @llvm.dbg.value(metadata i64 0, metadata !4068, metadata !DIExpression()), !dbg !4069
  br label %6, !dbg !4070

6:                                                ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !4072
  call void @llvm.dbg.value(metadata i64 %7, metadata !4068, metadata !DIExpression()), !dbg !4069
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7, !dbg !4073
  %9 = load i8*, i8** %8, align 8, !dbg !4073, !tbaa !787
  %10 = icmp eq i8* %9, null, !dbg !4075
  %11 = add i64 %7, 1, !dbg !4076
  call void @llvm.dbg.value(metadata i64 %11, metadata !4068, metadata !DIExpression()), !dbg !4069
  br i1 %10, label %12, label %6, !dbg !4075, !llvm.loop !4077

12:                                               ; preds = %6
  tail call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %4, i64 %7), !dbg !4079
  ret void, !dbg !4080
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nocapture %4) local_unnamed_addr #8 !dbg !4081 {
  %6 = alloca [10 x i8*], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4092, metadata !DIExpression()), !dbg !4100
  call void @llvm.dbg.value(metadata i8* %1, metadata !4093, metadata !DIExpression()), !dbg !4100
  call void @llvm.dbg.value(metadata i8* %2, metadata !4094, metadata !DIExpression()), !dbg !4100
  call void @llvm.dbg.value(metadata i8* %3, metadata !4095, metadata !DIExpression()), !dbg !4100
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %4, metadata !4096, metadata !DIExpression()), !dbg !4100
  %7 = bitcast [10 x i8*]* %6 to i8*, !dbg !4101
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %7) #25, !dbg !4101
  call void @llvm.dbg.declare(metadata [10 x i8*]* %6, metadata !4098, metadata !DIExpression()), !dbg !4102
  call void @llvm.dbg.value(metadata i64 0, metadata !4097, metadata !DIExpression()), !dbg !4100
  %8 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 0
  %9 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 2
  %10 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 3
  call void @llvm.dbg.value(metadata i64 0, metadata !4097, metadata !DIExpression()), !dbg !4100
  %11 = load i32, i32* %8, align 8, !dbg !4103
  %12 = icmp ult i32 %11, 41, !dbg !4103
  br i1 %12, label %13, label %18, !dbg !4103

13:                                               ; preds = %5
  %14 = load i8*, i8** %10, align 8, !dbg !4103
  %15 = zext i32 %11 to i64, !dbg !4103
  %16 = getelementptr i8, i8* %14, i64 %15, !dbg !4103
  %17 = add nuw nsw i32 %11, 8, !dbg !4103
  store i32 %17, i32* %8, align 8, !dbg !4103
  br label %21, !dbg !4103

18:                                               ; preds = %5
  %19 = load i8*, i8** %9, align 8, !dbg !4103
  %20 = getelementptr i8, i8* %19, i64 8, !dbg !4103
  store i8* %20, i8** %9, align 8, !dbg !4103
  br label %21, !dbg !4103

21:                                               ; preds = %18, %13
  %22 = phi i32 [ %17, %13 ], [ %11, %18 ]
  %23 = phi i8* [ %16, %13 ], [ %19, %18 ]
  %24 = bitcast i8* %23 to i8**, !dbg !4103
  %25 = load i8*, i8** %24, align 8, !dbg !4103
  %26 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !4106
  store i8* %25, i8** %26, align 16, !dbg !4107, !tbaa !787
  %27 = icmp eq i8* %25, null, !dbg !4108
  br i1 %27, label %30, label %28, !dbg !4109

28:                                               ; preds = %21
  call void @llvm.dbg.value(metadata i64 1, metadata !4097, metadata !DIExpression()), !dbg !4100
  call void @llvm.dbg.value(metadata i64 1, metadata !4097, metadata !DIExpression()), !dbg !4100
  %29 = icmp ult i32 %22, 41, !dbg !4103
  br i1 %29, label %35, label %32, !dbg !4103

30:                                               ; preds = %135, %128, %121, %114, %108, %91, %74, %57, %40, %21
  %31 = phi i64 [ 0, %21 ], [ 1, %40 ], [ 2, %57 ], [ 3, %74 ], [ 4, %91 ], [ 5, %108 ], [ 6, %114 ], [ 7, %121 ], [ 8, %128 ], [ %142, %135 ], !dbg !4110
  call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %26, i64 %31), !dbg !4111
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %7) #25, !dbg !4112
  ret void, !dbg !4112

32:                                               ; preds = %28
  %33 = load i8*, i8** %9, align 8, !dbg !4103
  %34 = getelementptr i8, i8* %33, i64 8, !dbg !4103
  store i8* %34, i8** %9, align 8, !dbg !4103
  br label %40, !dbg !4103

35:                                               ; preds = %28
  %36 = load i8*, i8** %10, align 8, !dbg !4103
  %37 = zext i32 %22 to i64, !dbg !4103
  %38 = getelementptr i8, i8* %36, i64 %37, !dbg !4103
  %39 = add nuw nsw i32 %22, 8, !dbg !4103
  store i32 %39, i32* %8, align 8, !dbg !4103
  br label %40, !dbg !4103

40:                                               ; preds = %35, %32
  %41 = phi i32 [ %39, %35 ], [ %22, %32 ]
  %42 = phi i8* [ %38, %35 ], [ %33, %32 ]
  %43 = bitcast i8* %42 to i8**, !dbg !4103
  %44 = load i8*, i8** %43, align 8, !dbg !4103
  %45 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !4106
  store i8* %44, i8** %45, align 8, !dbg !4107, !tbaa !787
  %46 = icmp eq i8* %44, null, !dbg !4108
  br i1 %46, label %30, label %47, !dbg !4109

47:                                               ; preds = %40
  call void @llvm.dbg.value(metadata i64 2, metadata !4097, metadata !DIExpression()), !dbg !4100
  call void @llvm.dbg.value(metadata i64 2, metadata !4097, metadata !DIExpression()), !dbg !4100
  %48 = icmp ult i32 %41, 41, !dbg !4103
  br i1 %48, label %52, label %49, !dbg !4103

49:                                               ; preds = %47
  %50 = load i8*, i8** %9, align 8, !dbg !4103
  %51 = getelementptr i8, i8* %50, i64 8, !dbg !4103
  store i8* %51, i8** %9, align 8, !dbg !4103
  br label %57, !dbg !4103

52:                                               ; preds = %47
  %53 = load i8*, i8** %10, align 8, !dbg !4103
  %54 = zext i32 %41 to i64, !dbg !4103
  %55 = getelementptr i8, i8* %53, i64 %54, !dbg !4103
  %56 = add nuw nsw i32 %41, 8, !dbg !4103
  store i32 %56, i32* %8, align 8, !dbg !4103
  br label %57, !dbg !4103

57:                                               ; preds = %52, %49
  %58 = phi i32 [ %56, %52 ], [ %41, %49 ]
  %59 = phi i8* [ %55, %52 ], [ %50, %49 ]
  %60 = bitcast i8* %59 to i8**, !dbg !4103
  %61 = load i8*, i8** %60, align 8, !dbg !4103
  %62 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !4106
  store i8* %61, i8** %62, align 16, !dbg !4107, !tbaa !787
  %63 = icmp eq i8* %61, null, !dbg !4108
  br i1 %63, label %30, label %64, !dbg !4109

64:                                               ; preds = %57
  call void @llvm.dbg.value(metadata i64 3, metadata !4097, metadata !DIExpression()), !dbg !4100
  call void @llvm.dbg.value(metadata i64 3, metadata !4097, metadata !DIExpression()), !dbg !4100
  %65 = icmp ult i32 %58, 41, !dbg !4103
  br i1 %65, label %69, label %66, !dbg !4103

66:                                               ; preds = %64
  %67 = load i8*, i8** %9, align 8, !dbg !4103
  %68 = getelementptr i8, i8* %67, i64 8, !dbg !4103
  store i8* %68, i8** %9, align 8, !dbg !4103
  br label %74, !dbg !4103

69:                                               ; preds = %64
  %70 = load i8*, i8** %10, align 8, !dbg !4103
  %71 = zext i32 %58 to i64, !dbg !4103
  %72 = getelementptr i8, i8* %70, i64 %71, !dbg !4103
  %73 = add nuw nsw i32 %58, 8, !dbg !4103
  store i32 %73, i32* %8, align 8, !dbg !4103
  br label %74, !dbg !4103

74:                                               ; preds = %69, %66
  %75 = phi i32 [ %73, %69 ], [ %58, %66 ]
  %76 = phi i8* [ %72, %69 ], [ %67, %66 ]
  %77 = bitcast i8* %76 to i8**, !dbg !4103
  %78 = load i8*, i8** %77, align 8, !dbg !4103
  %79 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !4106
  store i8* %78, i8** %79, align 8, !dbg !4107, !tbaa !787
  %80 = icmp eq i8* %78, null, !dbg !4108
  br i1 %80, label %30, label %81, !dbg !4109

81:                                               ; preds = %74
  call void @llvm.dbg.value(metadata i64 4, metadata !4097, metadata !DIExpression()), !dbg !4100
  call void @llvm.dbg.value(metadata i64 4, metadata !4097, metadata !DIExpression()), !dbg !4100
  %82 = icmp ult i32 %75, 41, !dbg !4103
  br i1 %82, label %86, label %83, !dbg !4103

83:                                               ; preds = %81
  %84 = load i8*, i8** %9, align 8, !dbg !4103
  %85 = getelementptr i8, i8* %84, i64 8, !dbg !4103
  store i8* %85, i8** %9, align 8, !dbg !4103
  br label %91, !dbg !4103

86:                                               ; preds = %81
  %87 = load i8*, i8** %10, align 8, !dbg !4103
  %88 = zext i32 %75 to i64, !dbg !4103
  %89 = getelementptr i8, i8* %87, i64 %88, !dbg !4103
  %90 = add nuw nsw i32 %75, 8, !dbg !4103
  store i32 %90, i32* %8, align 8, !dbg !4103
  br label %91, !dbg !4103

91:                                               ; preds = %86, %83
  %92 = phi i32 [ %90, %86 ], [ %75, %83 ]
  %93 = phi i8* [ %89, %86 ], [ %84, %83 ]
  %94 = bitcast i8* %93 to i8**, !dbg !4103
  %95 = load i8*, i8** %94, align 8, !dbg !4103
  %96 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !4106
  store i8* %95, i8** %96, align 16, !dbg !4107, !tbaa !787
  %97 = icmp eq i8* %95, null, !dbg !4108
  br i1 %97, label %30, label %98, !dbg !4109

98:                                               ; preds = %91
  call void @llvm.dbg.value(metadata i64 5, metadata !4097, metadata !DIExpression()), !dbg !4100
  call void @llvm.dbg.value(metadata i64 5, metadata !4097, metadata !DIExpression()), !dbg !4100
  %99 = icmp ult i32 %92, 41, !dbg !4103
  br i1 %99, label %103, label %100, !dbg !4103

100:                                              ; preds = %98
  %101 = load i8*, i8** %9, align 8, !dbg !4103
  %102 = getelementptr i8, i8* %101, i64 8, !dbg !4103
  store i8* %102, i8** %9, align 8, !dbg !4103
  br label %108, !dbg !4103

103:                                              ; preds = %98
  %104 = load i8*, i8** %10, align 8, !dbg !4103
  %105 = zext i32 %92 to i64, !dbg !4103
  %106 = getelementptr i8, i8* %104, i64 %105, !dbg !4103
  %107 = add nuw nsw i32 %92, 8, !dbg !4103
  store i32 %107, i32* %8, align 8, !dbg !4103
  br label %108, !dbg !4103

108:                                              ; preds = %103, %100
  %109 = phi i8* [ %106, %103 ], [ %101, %100 ]
  %110 = bitcast i8* %109 to i8**, !dbg !4103
  %111 = load i8*, i8** %110, align 8, !dbg !4103
  %112 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !4106
  store i8* %111, i8** %112, align 8, !dbg !4107, !tbaa !787
  %113 = icmp eq i8* %111, null, !dbg !4108
  br i1 %113, label %30, label %114, !dbg !4109

114:                                              ; preds = %108
  call void @llvm.dbg.value(metadata i64 6, metadata !4097, metadata !DIExpression()), !dbg !4100
  %115 = load i8*, i8** %9, align 8, !dbg !4103
  %116 = getelementptr i8, i8* %115, i64 8, !dbg !4103
  store i8* %116, i8** %9, align 8, !dbg !4103
  %117 = bitcast i8* %115 to i8**, !dbg !4103
  %118 = load i8*, i8** %117, align 8, !dbg !4103
  %119 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !4106
  store i8* %118, i8** %119, align 16, !dbg !4107, !tbaa !787
  %120 = icmp eq i8* %118, null, !dbg !4108
  br i1 %120, label %30, label %121, !dbg !4109

121:                                              ; preds = %114
  call void @llvm.dbg.value(metadata i64 7, metadata !4097, metadata !DIExpression()), !dbg !4100
  %122 = load i8*, i8** %9, align 8, !dbg !4103
  %123 = getelementptr i8, i8* %122, i64 8, !dbg !4103
  store i8* %123, i8** %9, align 8, !dbg !4103
  %124 = bitcast i8* %122 to i8**, !dbg !4103
  %125 = load i8*, i8** %124, align 8, !dbg !4103
  %126 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !4106
  store i8* %125, i8** %126, align 8, !dbg !4107, !tbaa !787
  %127 = icmp eq i8* %125, null, !dbg !4108
  br i1 %127, label %30, label %128, !dbg !4109

128:                                              ; preds = %121
  call void @llvm.dbg.value(metadata i64 8, metadata !4097, metadata !DIExpression()), !dbg !4100
  %129 = load i8*, i8** %9, align 8, !dbg !4103
  %130 = getelementptr i8, i8* %129, i64 8, !dbg !4103
  store i8* %130, i8** %9, align 8, !dbg !4103
  %131 = bitcast i8* %129 to i8**, !dbg !4103
  %132 = load i8*, i8** %131, align 8, !dbg !4103
  %133 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !4106
  store i8* %132, i8** %133, align 16, !dbg !4107, !tbaa !787
  %134 = icmp eq i8* %132, null, !dbg !4108
  br i1 %134, label %30, label %135, !dbg !4109

135:                                              ; preds = %128
  call void @llvm.dbg.value(metadata i64 9, metadata !4097, metadata !DIExpression()), !dbg !4100
  %136 = load i8*, i8** %9, align 8, !dbg !4103
  %137 = getelementptr i8, i8* %136, i64 8, !dbg !4103
  store i8* %137, i8** %9, align 8, !dbg !4103
  %138 = bitcast i8* %136 to i8**, !dbg !4103
  %139 = load i8*, i8** %138, align 8, !dbg !4103
  %140 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9, !dbg !4106
  store i8* %139, i8** %140, align 8, !dbg !4107, !tbaa !787
  %141 = icmp eq i8* %139, null, !dbg !4108
  %142 = select i1 %141, i64 9, i64 10, !dbg !4109
  br label %30, !dbg !4109
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, ...) local_unnamed_addr #8 !dbg !4113 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4117, metadata !DIExpression()), !dbg !4127
  call void @llvm.dbg.value(metadata i8* %1, metadata !4118, metadata !DIExpression()), !dbg !4127
  call void @llvm.dbg.value(metadata i8* %2, metadata !4119, metadata !DIExpression()), !dbg !4127
  call void @llvm.dbg.value(metadata i8* %3, metadata !4120, metadata !DIExpression()), !dbg !4127
  %6 = bitcast [1 x %struct.__va_list_tag]* %5 to i8*, !dbg !4128
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %6) #25, !dbg !4128
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %5, metadata !4121, metadata !DIExpression()), !dbg !4129
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0, !dbg !4130
  call void @llvm.va_start(i8* nonnull %6), !dbg !4130
  call void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nonnull %7), !dbg !4131
  call void @llvm.va_end(i8* nonnull %6), !dbg !4132
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %6) #25, !dbg !4133
  ret void, !dbg !4133
}

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #22

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #22

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #8 !dbg !4134 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !4135, !tbaa !787
  %2 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.130, i64 0, i64 0), %struct._IO_FILE* %1), !dbg !4135
  %3 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16.145, i64 0, i64 0), i32 5) #25, !dbg !4136
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %3, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.17.146, i64 0, i64 0)) #25, !dbg !4136
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.18.147, i64 0, i64 0), i32 5) #25, !dbg !4137
  %6 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %5, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.19.148, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.20.149, i64 0, i64 0)) #25, !dbg !4137
  %7 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.21.150, i64 0, i64 0), i32 5) #25, !dbg !4138
  %8 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %7, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.22.151, i64 0, i64 0)) #25, !dbg !4138
  ret void, !dbg !4139
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnmalloc(i64 %0, i64 %1) local_unnamed_addr #23 !dbg !4140 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4144, metadata !DIExpression()), !dbg !4146
  call void @llvm.dbg.value(metadata i64 %1, metadata !4145, metadata !DIExpression()), !dbg !4146
  %3 = udiv i64 9223372036854775807, %1, !dbg !4147
  %4 = icmp ult i64 %3, %0, !dbg !4147
  br i1 %4, label %5, label %6, !dbg !4149

5:                                                ; preds = %2
  tail call void @xalloc_die() #27, !dbg !4150
  unreachable, !dbg !4150

6:                                                ; preds = %2
  %7 = mul i64 %1, %0, !dbg !4151
  call void @llvm.dbg.value(metadata i64 %7, metadata !4152, metadata !DIExpression()) #25, !dbg !4158
  %8 = tail call noalias i8* @malloc(i64 %7) #25, !dbg !4160
  call void @llvm.dbg.value(metadata i8* %8, metadata !4157, metadata !DIExpression()) #25, !dbg !4158
  %9 = icmp eq i8* %8, null, !dbg !4161
  %10 = icmp ne i64 %7, 0
  %11 = and i1 %10, %9, !dbg !4163
  br i1 %11, label %12, label %13, !dbg !4163

12:                                               ; preds = %6
  tail call void @xalloc_die() #27, !dbg !4164
  unreachable, !dbg !4164

13:                                               ; preds = %6
  ret i8* %8, !dbg !4165
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xmalloc(i64 %0) local_unnamed_addr #8 !dbg !4153 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4152, metadata !DIExpression()), !dbg !4166
  %2 = tail call noalias i8* @malloc(i64 %0) #25, !dbg !4167
  call void @llvm.dbg.value(metadata i8* %2, metadata !4157, metadata !DIExpression()), !dbg !4166
  %3 = icmp eq i8* %2, null, !dbg !4168
  %4 = icmp ne i64 %0, 0
  %5 = and i1 %4, %3, !dbg !4169
  br i1 %5, label %6, label %7, !dbg !4169

6:                                                ; preds = %1
  tail call void @xalloc_die() #27, !dbg !4170
  unreachable, !dbg !4170

7:                                                ; preds = %1
  ret i8* %2, !dbg !4171
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnrealloc(i8* %0, i64 %1, i64 %2) local_unnamed_addr #23 !dbg !4172 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4176, metadata !DIExpression()), !dbg !4179
  call void @llvm.dbg.value(metadata i64 %1, metadata !4177, metadata !DIExpression()), !dbg !4179
  call void @llvm.dbg.value(metadata i64 %2, metadata !4178, metadata !DIExpression()), !dbg !4179
  %4 = udiv i64 9223372036854775807, %2, !dbg !4180
  %5 = icmp ult i64 %4, %1, !dbg !4180
  br i1 %5, label %6, label %7, !dbg !4182

6:                                                ; preds = %3
  tail call void @xalloc_die() #27, !dbg !4183
  unreachable, !dbg !4183

7:                                                ; preds = %3
  %8 = mul i64 %2, %1, !dbg !4184
  call void @llvm.dbg.value(metadata i8* %0, metadata !4185, metadata !DIExpression()) #25, !dbg !4191
  call void @llvm.dbg.value(metadata i64 %8, metadata !4190, metadata !DIExpression()) #25, !dbg !4191
  %9 = icmp eq i64 %8, 0, !dbg !4193
  %10 = icmp ne i8* %0, null
  %11 = and i1 %10, %9, !dbg !4195
  br i1 %11, label %12, label %13, !dbg !4195

12:                                               ; preds = %7
  tail call void @free(i8* nonnull %0) #25, !dbg !4196
  br label %19, !dbg !4198

13:                                               ; preds = %7
  %14 = tail call i8* @realloc(i8* %0, i64 %8) #25, !dbg !4199
  call void @llvm.dbg.value(metadata i8* %14, metadata !4185, metadata !DIExpression()) #25, !dbg !4191
  %15 = icmp eq i8* %14, null, !dbg !4200
  %16 = icmp ne i64 %8, 0
  %17 = and i1 %16, %15, !dbg !4202
  br i1 %17, label %18, label %19, !dbg !4202

18:                                               ; preds = %13
  tail call void @xalloc_die() #27, !dbg !4203
  unreachable, !dbg !4203

19:                                               ; preds = %12, %13
  %20 = phi i8* [ null, %12 ], [ %14, %13 ], !dbg !4191
  ret i8* %20, !dbg !4204
}

; Function Attrs: inaccessiblemem_or_argmemonly nounwind willreturn
declare noalias noundef i8* @realloc(i8* nocapture, i64) local_unnamed_addr #10

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xrealloc(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !4186 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4185, metadata !DIExpression()), !dbg !4205
  call void @llvm.dbg.value(metadata i64 %1, metadata !4190, metadata !DIExpression()), !dbg !4205
  %3 = icmp eq i64 %1, 0, !dbg !4206
  %4 = icmp ne i8* %0, null
  %5 = and i1 %4, %3, !dbg !4207
  br i1 %5, label %6, label %7, !dbg !4207

6:                                                ; preds = %2
  tail call void @free(i8* nonnull %0) #25, !dbg !4208
  br label %13, !dbg !4209

7:                                                ; preds = %2
  %8 = tail call i8* @realloc(i8* %0, i64 %1) #25, !dbg !4210
  call void @llvm.dbg.value(metadata i8* %8, metadata !4185, metadata !DIExpression()), !dbg !4205
  %9 = icmp eq i8* %8, null, !dbg !4211
  %10 = icmp ne i64 %1, 0
  %11 = and i1 %10, %9, !dbg !4212
  br i1 %11, label %12, label %13, !dbg !4212

12:                                               ; preds = %7
  tail call void @xalloc_die() #27, !dbg !4213
  unreachable, !dbg !4213

13:                                               ; preds = %7, %6
  %14 = phi i8* [ null, %6 ], [ %8, %7 ], !dbg !4205
  ret i8* %14, !dbg !4214
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @x2nrealloc(i8* %0, i64* nocapture %1, i64 %2) local_unnamed_addr #23 !dbg !350 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !355, metadata !DIExpression()), !dbg !4215
  call void @llvm.dbg.value(metadata i64* %1, metadata !356, metadata !DIExpression()), !dbg !4215
  call void @llvm.dbg.value(metadata i64 %2, metadata !357, metadata !DIExpression()), !dbg !4215
  %4 = load i64, i64* %1, align 8, !dbg !4216, !tbaa !1060
  call void @llvm.dbg.value(metadata i64 %4, metadata !358, metadata !DIExpression()), !dbg !4215
  %5 = icmp eq i8* %0, null, !dbg !4217
  br i1 %5, label %6, label %20, !dbg !4219

6:                                                ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !4220
  br i1 %7, label %8, label %13, !dbg !4223

8:                                                ; preds = %6
  %9 = udiv i64 128, %2, !dbg !4224
  call void @llvm.dbg.value(metadata i64 %9, metadata !358, metadata !DIExpression()), !dbg !4215
  %10 = icmp ugt i64 %2, 128, !dbg !4226
  %11 = zext i1 %10 to i64, !dbg !4226
  %12 = add nuw nsw i64 %9, %11, !dbg !4227
  call void @llvm.dbg.value(metadata i64 %12, metadata !358, metadata !DIExpression()), !dbg !4215
  br label %13, !dbg !4228

13:                                               ; preds = %8, %6
  %14 = phi i64 [ %4, %6 ], [ %12, %8 ], !dbg !4215
  call void @llvm.dbg.value(metadata i64 %14, metadata !358, metadata !DIExpression()), !dbg !4215
  %15 = udiv i64 9223372036854775807, %2, !dbg !4229
  %16 = icmp ult i64 %15, %14, !dbg !4229
  br i1 %16, label %19, label %17, !dbg !4231

17:                                               ; preds = %13
  call void @llvm.dbg.value(metadata i64 %27, metadata !358, metadata !DIExpression()), !dbg !4215
  store i64 %14, i64* %1, align 8, !dbg !4232, !tbaa !1060
  %18 = mul i64 %14, %2, !dbg !4233
  call void @llvm.dbg.value(metadata i8* %0, metadata !4185, metadata !DIExpression()) #25, !dbg !4234
  call void @llvm.dbg.value(metadata i64 %28, metadata !4190, metadata !DIExpression()) #25, !dbg !4234
  br label %31, !dbg !4236

19:                                               ; preds = %13
  tail call void @xalloc_die() #27, !dbg !4237
  unreachable, !dbg !4237

20:                                               ; preds = %3
  %21 = udiv i64 6148914691236517204, %2, !dbg !4238
  %22 = icmp ugt i64 %21, %4, !dbg !4241
  br i1 %22, label %24, label %23, !dbg !4242

23:                                               ; preds = %20
  tail call void @xalloc_die() #27, !dbg !4243
  unreachable, !dbg !4243

24:                                               ; preds = %20
  %25 = lshr i64 %4, 1, !dbg !4244
  %26 = add nuw i64 %4, 1, !dbg !4245
  %27 = add i64 %26, %25, !dbg !4246
  call void @llvm.dbg.value(metadata i64 %27, metadata !358, metadata !DIExpression()), !dbg !4215
  store i64 %27, i64* %1, align 8, !dbg !4232, !tbaa !1060
  %28 = mul i64 %27, %2, !dbg !4233
  call void @llvm.dbg.value(metadata i8* %0, metadata !4185, metadata !DIExpression()) #25, !dbg !4234
  call void @llvm.dbg.value(metadata i64 %28, metadata !4190, metadata !DIExpression()) #25, !dbg !4234
  %29 = icmp eq i64 %28, 0, !dbg !4247
  br i1 %29, label %30, label %31, !dbg !4236

30:                                               ; preds = %24
  tail call void @free(i8* nonnull %0) #25, !dbg !4248
  br label %38, !dbg !4249

31:                                               ; preds = %17, %24
  %32 = phi i64 [ %18, %17 ], [ %28, %24 ]
  %33 = tail call i8* @realloc(i8* %0, i64 %32) #25, !dbg !4250
  call void @llvm.dbg.value(metadata i8* %33, metadata !4185, metadata !DIExpression()) #25, !dbg !4234
  %34 = icmp eq i8* %33, null, !dbg !4251
  %35 = icmp ne i64 %32, 0
  %36 = and i1 %35, %34, !dbg !4252
  br i1 %36, label %37, label %38, !dbg !4252

37:                                               ; preds = %31
  tail call void @xalloc_die() #27, !dbg !4253
  unreachable, !dbg !4253

38:                                               ; preds = %30, %31
  %39 = phi i8* [ null, %30 ], [ %33, %31 ], !dbg !4234
  ret i8* %39, !dbg !4254
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xcharalloc(i64 %0) local_unnamed_addr #23 !dbg !4255 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4257, metadata !DIExpression()), !dbg !4258
  call void @llvm.dbg.value(metadata i64 %0, metadata !4152, metadata !DIExpression()) #25, !dbg !4259
  %2 = tail call noalias i8* @malloc(i64 %0) #25, !dbg !4261
  call void @llvm.dbg.value(metadata i8* %2, metadata !4157, metadata !DIExpression()) #25, !dbg !4259
  %3 = icmp eq i8* %2, null, !dbg !4262
  %4 = icmp ne i64 %0, 0
  %5 = and i1 %4, %3, !dbg !4263
  br i1 %5, label %6, label %7, !dbg !4263

6:                                                ; preds = %1
  tail call void @xalloc_die() #27, !dbg !4264
  unreachable, !dbg !4264

7:                                                ; preds = %1
  ret i8* %2, !dbg !4265
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @x2realloc(i8* %0, i64* nocapture %1) local_unnamed_addr #8 !dbg !4266 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4270, metadata !DIExpression()), !dbg !4272
  call void @llvm.dbg.value(metadata i64* %1, metadata !4271, metadata !DIExpression()), !dbg !4272
  call void @llvm.dbg.value(metadata i8* %0, metadata !355, metadata !DIExpression()) #25, !dbg !4273
  call void @llvm.dbg.value(metadata i64* %1, metadata !356, metadata !DIExpression()) #25, !dbg !4273
  call void @llvm.dbg.value(metadata i64 1, metadata !357, metadata !DIExpression()) #25, !dbg !4273
  %3 = load i64, i64* %1, align 8, !dbg !4275, !tbaa !1060
  call void @llvm.dbg.value(metadata i64 %3, metadata !358, metadata !DIExpression()) #25, !dbg !4273
  %4 = icmp eq i8* %0, null, !dbg !4276
  br i1 %4, label %5, label %10, !dbg !4277

5:                                                ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !4278
  br i1 %6, label %17, label %7, !dbg !4279

7:                                                ; preds = %5
  call void @llvm.dbg.value(metadata i64 %3, metadata !358, metadata !DIExpression()) #25, !dbg !4273
  %8 = icmp slt i64 %3, 0, !dbg !4280
  br i1 %8, label %9, label %17, !dbg !4281

9:                                                ; preds = %7
  tail call void @xalloc_die() #27, !dbg !4282
  unreachable, !dbg !4282

10:                                               ; preds = %2
  %11 = icmp ult i64 %3, 6148914691236517204, !dbg !4283
  br i1 %11, label %13, label %12, !dbg !4284

12:                                               ; preds = %10
  tail call void @xalloc_die() #27, !dbg !4285
  unreachable, !dbg !4285

13:                                               ; preds = %10
  %14 = lshr i64 %3, 1, !dbg !4286
  %15 = add nuw nsw i64 %3, 1, !dbg !4287
  %16 = add nuw nsw i64 %15, %14, !dbg !4288
  call void @llvm.dbg.value(metadata i64 %16, metadata !358, metadata !DIExpression()) #25, !dbg !4273
  call void @llvm.dbg.value(metadata i8* %0, metadata !4185, metadata !DIExpression()) #25, !dbg !4289
  call void @llvm.dbg.value(metadata i64 %16, metadata !4190, metadata !DIExpression()) #25, !dbg !4289
  br label %17, !dbg !4291

17:                                               ; preds = %7, %5, %13
  %18 = phi i64 [ %16, %13 ], [ %3, %7 ], [ 128, %5 ], !dbg !4292
  store i64 %18, i64* %1, align 8, !dbg !4292, !tbaa !1060
  %19 = tail call i8* @realloc(i8* %0, i64 %18) #25, !dbg !4293
  call void @llvm.dbg.value(metadata i8* %19, metadata !4185, metadata !DIExpression()) #25, !dbg !4289
  %20 = icmp eq i8* %19, null, !dbg !4294
  br i1 %20, label %21, label %22, !dbg !4295

21:                                               ; preds = %17
  tail call void @xalloc_die() #27, !dbg !4296
  unreachable, !dbg !4296

22:                                               ; preds = %17
  ret i8* %19, !dbg !4297
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xzalloc(i64 %0) local_unnamed_addr #8 !dbg !4298 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4300, metadata !DIExpression()), !dbg !4301
  call void @llvm.dbg.value(metadata i64 %0, metadata !4302, metadata !DIExpression()) #25, !dbg !4307
  call void @llvm.dbg.value(metadata i64 1, metadata !4305, metadata !DIExpression()) #25, !dbg !4307
  %2 = icmp slt i64 %0, 0, !dbg !4309
  br i1 %2, label %6, label %3, !dbg !4311

3:                                                ; preds = %1
  %4 = tail call i8* @rpl_calloc(i64 %0, i64 1) #25, !dbg !4312
  call void @llvm.dbg.value(metadata i8* %4, metadata !4306, metadata !DIExpression()) #25, !dbg !4307
  %5 = icmp eq i8* %4, null, !dbg !4313
  br i1 %5, label %6, label %7, !dbg !4314

6:                                                ; preds = %3, %1
  tail call void @xalloc_die() #27, !dbg !4315
  unreachable, !dbg !4315

7:                                                ; preds = %3
  ret i8* %4, !dbg !4316
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xcalloc(i64 %0, i64 %1) local_unnamed_addr #8 !dbg !4303 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4302, metadata !DIExpression()), !dbg !4317
  call void @llvm.dbg.value(metadata i64 %1, metadata !4305, metadata !DIExpression()), !dbg !4317
  %3 = udiv i64 9223372036854775807, %1, !dbg !4318
  %4 = icmp ult i64 %3, %0, !dbg !4318
  br i1 %4, label %8, label %5, !dbg !4319

5:                                                ; preds = %2
  %6 = tail call i8* @rpl_calloc(i64 %0, i64 %1) #25, !dbg !4320
  call void @llvm.dbg.value(metadata i8* %6, metadata !4306, metadata !DIExpression()), !dbg !4317
  %7 = icmp eq i8* %6, null, !dbg !4321
  br i1 %7, label %8, label %9, !dbg !4322

8:                                                ; preds = %5, %2
  tail call void @xalloc_die() #27, !dbg !4323
  unreachable, !dbg !4323

9:                                                ; preds = %5
  ret i8* %6, !dbg !4324
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @xmemdup(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !4325 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4329, metadata !DIExpression()), !dbg !4331
  call void @llvm.dbg.value(metadata i64 %1, metadata !4330, metadata !DIExpression()), !dbg !4331
  call void @llvm.dbg.value(metadata i64 %1, metadata !4152, metadata !DIExpression()) #25, !dbg !4332
  %3 = tail call noalias i8* @malloc(i64 %1) #25, !dbg !4334
  call void @llvm.dbg.value(metadata i8* %3, metadata !4157, metadata !DIExpression()) #25, !dbg !4332
  %4 = icmp eq i8* %3, null, !dbg !4335
  %5 = icmp ne i64 %1, 0
  %6 = and i1 %5, %4, !dbg !4336
  br i1 %6, label %7, label %8, !dbg !4336

7:                                                ; preds = %2
  tail call void @xalloc_die() #27, !dbg !4337
  unreachable, !dbg !4337

8:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i8* %3, metadata !4338, metadata !DIExpression()) #25, !dbg !4343
  call void @llvm.dbg.value(metadata i8* %0, metadata !4341, metadata !DIExpression()) #25, !dbg !4343
  call void @llvm.dbg.value(metadata i64 %1, metadata !4342, metadata !DIExpression()) #25, !dbg !4343
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %3, i8* nonnull align 1 %0, i64 %1, i1 false) #25, !dbg !4345
  ret i8* %3, !dbg !4346
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xstrdup(i8* %0) local_unnamed_addr #8 !dbg !4347 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4349, metadata !DIExpression()), !dbg !4350
  %2 = tail call i64 @strlen(i8* nonnull dereferenceable(1) %0) #26, !dbg !4351
  %3 = add i64 %2, 1, !dbg !4352
  call void @llvm.dbg.value(metadata i8* %0, metadata !4329, metadata !DIExpression()) #25, !dbg !4353
  call void @llvm.dbg.value(metadata i64 %3, metadata !4330, metadata !DIExpression()) #25, !dbg !4353
  call void @llvm.dbg.value(metadata i64 %3, metadata !4152, metadata !DIExpression()) #25, !dbg !4355
  %4 = tail call noalias i8* @malloc(i64 %3) #25, !dbg !4357
  call void @llvm.dbg.value(metadata i8* %4, metadata !4157, metadata !DIExpression()) #25, !dbg !4355
  %5 = icmp eq i8* %4, null, !dbg !4358
  %6 = icmp ne i64 %3, 0
  %7 = and i1 %6, %5, !dbg !4359
  br i1 %7, label %8, label %9, !dbg !4359

8:                                                ; preds = %1
  tail call void @xalloc_die() #27, !dbg !4360
  unreachable, !dbg !4360

9:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i8* %4, metadata !4338, metadata !DIExpression()) #25, !dbg !4361
  call void @llvm.dbg.value(metadata i8* %0, metadata !4341, metadata !DIExpression()) #25, !dbg !4361
  call void @llvm.dbg.value(metadata i64 %3, metadata !4342, metadata !DIExpression()) #25, !dbg !4361
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %4, i8* nonnull align 1 %0, i64 %3, i1 false) #25, !dbg !4363
  ret i8* %4, !dbg !4364
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !4365 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !4366, !tbaa !1016
  %2 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.162, i64 0, i64 0), i32 5) #25, !dbg !4367
  tail call void (i32, i32, i8*, ...) @error(i32 %1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.163, i64 0, i64 0), i8* %2) #25, !dbg !4368
  tail call void @abort() #27, !dbg !4369
  unreachable, !dbg !4369
}

; Function Attrs: nofree nounwind sspstrong uwtable willreturn
define dso_local noalias i8* @rpl_calloc(i64 %0, i64 %1) local_unnamed_addr #24 !dbg !4370 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4372, metadata !DIExpression()), !dbg !4378
  call void @llvm.dbg.value(metadata i64 %1, metadata !4373, metadata !DIExpression()), !dbg !4378
  %3 = icmp eq i64 %0, 0, !dbg !4379
  %4 = icmp eq i64 %1, 0
  %5 = or i1 %3, %4, !dbg !4380
  br i1 %5, label %11, label %6, !dbg !4380

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i64 undef, metadata !4375, metadata !DIExpression()), !dbg !4381
  %7 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %1, i64 %0), !dbg !4382
  %8 = extractvalue { i64, i1 } %7, 1, !dbg !4382
  br i1 %8, label %9, label %11, !dbg !4384

9:                                                ; preds = %6
  %10 = tail call i32* @__errno_location() #29, !dbg !4385
  store i32 12, i32* %10, align 4, !dbg !4387, !tbaa !1016
  br label %15

11:                                               ; preds = %6, %2
  %12 = phi i64 [ 1, %2 ], [ %1, %6 ]
  %13 = phi i64 [ 1, %2 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i64 %13, metadata !4372, metadata !DIExpression()), !dbg !4378
  call void @llvm.dbg.value(metadata i64 %12, metadata !4373, metadata !DIExpression()), !dbg !4378
  %14 = tail call noalias i8* @calloc(i64 %13, i64 %12) #25, !dbg !4388
  call void @llvm.dbg.value(metadata i8* %14, metadata !4374, metadata !DIExpression()), !dbg !4378
  br label %15, !dbg !4389

15:                                               ; preds = %9, %11
  %16 = phi i8* [ %14, %11 ], [ null, %9 ], !dbg !4378
  ret i8* %16, !dbg !4390
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: inaccessiblememonly nofree nounwind willreturn
declare noalias noundef i8* @calloc(i64, i64) local_unnamed_addr #14

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fclose(%struct._IO_FILE* nonnull %0) local_unnamed_addr #8 !dbg !4391 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4429, metadata !DIExpression()), !dbg !4433
  call void @llvm.dbg.value(metadata i32 0, metadata !4430, metadata !DIExpression()), !dbg !4433
  call void @llvm.dbg.value(metadata i32 0, metadata !4432, metadata !DIExpression()), !dbg !4433
  %2 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #25, !dbg !4434
  call void @llvm.dbg.value(metadata i32 %2, metadata !4431, metadata !DIExpression()), !dbg !4433
  %3 = icmp slt i32 %2, 0, !dbg !4435
  br i1 %3, label %4, label %6, !dbg !4437

4:                                                ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4438
  br label %24, !dbg !4439

6:                                                ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #25, !dbg !4440
  %8 = icmp eq i32 %7, 0, !dbg !4440
  br i1 %8, label %13, label %9, !dbg !4442

9:                                                ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #25, !dbg !4443
  %11 = tail call i64 @lseek(i32 %10, i64 0, i32 1) #25, !dbg !4444
  %12 = icmp eq i64 %11, -1, !dbg !4445
  br i1 %12, label %16, label %13, !dbg !4446

13:                                               ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* nonnull %0) #25, !dbg !4447
  %15 = icmp eq i32 %14, 0, !dbg !4447
  br i1 %15, label %16, label %18, !dbg !4448

16:                                               ; preds = %13, %9
  call void @llvm.dbg.value(metadata i32 %20, metadata !4430, metadata !DIExpression()), !dbg !4433
  %17 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4449
  call void @llvm.dbg.value(metadata i32 %21, metadata !4432, metadata !DIExpression()), !dbg !4433
  br label %24, !dbg !4450

18:                                               ; preds = %13
  %19 = tail call i32* @__errno_location() #29, !dbg !4451
  %20 = load i32, i32* %19, align 4, !dbg !4451, !tbaa !1016
  call void @llvm.dbg.value(metadata i32 %20, metadata !4430, metadata !DIExpression()), !dbg !4433
  %21 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4449
  call void @llvm.dbg.value(metadata i32 %21, metadata !4432, metadata !DIExpression()), !dbg !4433
  %22 = icmp eq i32 %20, 0, !dbg !4452
  br i1 %22, label %24, label %23, !dbg !4450

23:                                               ; preds = %18
  store i32 %20, i32* %19, align 4, !dbg !4454, !tbaa !1016
  call void @llvm.dbg.value(metadata i32 -1, metadata !4432, metadata !DIExpression()), !dbg !4433
  br label %24, !dbg !4456

24:                                               ; preds = %16, %18, %23, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !4433
  ret i32 %25, !dbg !4457
}

; Function Attrs: nofree nounwind
declare !dbg !4458 noundef i32 @fclose(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @__freading(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !4461 i64 @lseek(i32, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fcntl(i32 %0, i32 %1, ...) local_unnamed_addr #8 !dbg !4464 {
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !4468, metadata !DIExpression()), !dbg !4492
  call void @llvm.dbg.value(metadata i32 %1, metadata !4469, metadata !DIExpression()), !dbg !4492
  %4 = bitcast [1 x %struct.__va_list_tag]* %3 to i8*, !dbg !4493
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %4) #25, !dbg !4493
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %3, metadata !4470, metadata !DIExpression()), !dbg !4494
  call void @llvm.dbg.value(metadata i32 -1, metadata !4480, metadata !DIExpression()), !dbg !4492
  call void @llvm.va_start(i8* nonnull %4), !dbg !4495
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
  ], !dbg !4496

5:                                                ; preds = %2
  %6 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 0, !dbg !4497
  %7 = load i32, i32* %6, align 16, !dbg !4497
  %8 = icmp ult i32 %7, 41, !dbg !4497
  br i1 %8, label %9, label %15, !dbg !4497

9:                                                ; preds = %5
  %10 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 3, !dbg !4497
  %11 = load i8*, i8** %10, align 16, !dbg !4497
  %12 = zext i32 %7 to i64, !dbg !4497
  %13 = getelementptr i8, i8* %11, i64 %12, !dbg !4497
  %14 = add nuw nsw i32 %7, 8, !dbg !4497
  store i32 %14, i32* %6, align 16, !dbg !4497
  br label %19, !dbg !4497

15:                                               ; preds = %5
  %16 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 2, !dbg !4497
  %17 = load i8*, i8** %16, align 8, !dbg !4497
  %18 = getelementptr i8, i8* %17, i64 8, !dbg !4497
  store i8* %18, i8** %16, align 8, !dbg !4497
  br label %19, !dbg !4497

19:                                               ; preds = %15, %9
  %20 = phi i8* [ %13, %9 ], [ %17, %15 ]
  %21 = bitcast i8* %20 to i32*, !dbg !4497
  %22 = load i32, i32* %21, align 4, !dbg !4497
  call void @llvm.dbg.value(metadata i32 %22, metadata !4481, metadata !DIExpression()), !dbg !4498
  call void @llvm.dbg.value(metadata i32 %0, metadata !4499, metadata !DIExpression()) #25, !dbg !4504
  call void @llvm.dbg.value(metadata i32 %22, metadata !4502, metadata !DIExpression()) #25, !dbg !4504
  %23 = call i32 (i32, i32, ...) @fcntl(i32 %0, i32 0, i32 %22) #25, !dbg !4506
  call void @llvm.dbg.value(metadata i32 %23, metadata !4503, metadata !DIExpression()) #25, !dbg !4504
  call void @llvm.dbg.value(metadata i32 %23, metadata !4480, metadata !DIExpression()), !dbg !4492
  br label %116

24:                                               ; preds = %2
  %25 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 0, !dbg !4507
  %26 = load i32, i32* %25, align 16, !dbg !4507
  %27 = icmp ult i32 %26, 41, !dbg !4507
  br i1 %27, label %28, label %34, !dbg !4507

28:                                               ; preds = %24
  %29 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 3, !dbg !4507
  %30 = load i8*, i8** %29, align 16, !dbg !4507
  %31 = zext i32 %26 to i64, !dbg !4507
  %32 = getelementptr i8, i8* %30, i64 %31, !dbg !4507
  %33 = add nuw nsw i32 %26, 8, !dbg !4507
  store i32 %33, i32* %25, align 16, !dbg !4507
  br label %38, !dbg !4507

34:                                               ; preds = %24
  %35 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 2, !dbg !4507
  %36 = load i8*, i8** %35, align 8, !dbg !4507
  %37 = getelementptr i8, i8* %36, i64 8, !dbg !4507
  store i8* %37, i8** %35, align 8, !dbg !4507
  br label %38, !dbg !4507

38:                                               ; preds = %34, %28
  %39 = phi i8* [ %32, %28 ], [ %36, %34 ]
  %40 = bitcast i8* %39 to i32*, !dbg !4507
  %41 = load i32, i32* %40, align 4, !dbg !4507
  call void @llvm.dbg.value(metadata i32 %41, metadata !4484, metadata !DIExpression()), !dbg !4508
  call void @llvm.dbg.value(metadata i32 %0, metadata !322, metadata !DIExpression()) #25, !dbg !4509
  call void @llvm.dbg.value(metadata i32 %41, metadata !323, metadata !DIExpression()) #25, !dbg !4509
  %42 = load i32, i32* @rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec, align 4, !dbg !4511, !tbaa !1016
  %43 = icmp sgt i32 %42, -1, !dbg !4513
  br i1 %43, label %44, label %56, !dbg !4514

44:                                               ; preds = %38
  %45 = call i32 (i32, i32, ...) @fcntl(i32 %0, i32 1030, i32 %41) #25, !dbg !4515
  call void @llvm.dbg.value(metadata i32 %45, metadata !324, metadata !DIExpression()) #25, !dbg !4509
  %46 = icmp sgt i32 %45, -1, !dbg !4517
  br i1 %46, label %51, label %47, !dbg !4519

47:                                               ; preds = %44
  %48 = tail call i32* @__errno_location() #29, !dbg !4520
  %49 = load i32, i32* %48, align 4, !dbg !4520, !tbaa !1016
  %50 = icmp eq i32 %49, 22, !dbg !4521
  br i1 %50, label %52, label %51, !dbg !4522

51:                                               ; preds = %47, %44
  store i32 1, i32* @rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec, align 4, !dbg !4523, !tbaa !1016
  call void @llvm.dbg.value(metadata i32 %62, metadata !324, metadata !DIExpression()) #25, !dbg !4509
  br label %116, !dbg !4525

52:                                               ; preds = %47
  call void @llvm.dbg.value(metadata i32 %0, metadata !4499, metadata !DIExpression()) #25, !dbg !4526
  call void @llvm.dbg.value(metadata i32 %41, metadata !4502, metadata !DIExpression()) #25, !dbg !4526
  %53 = call i32 (i32, i32, ...) @fcntl(i32 %0, i32 0, i32 %41) #25, !dbg !4529
  call void @llvm.dbg.value(metadata i32 %53, metadata !4503, metadata !DIExpression()) #25, !dbg !4526
  call void @llvm.dbg.value(metadata i32 %53, metadata !324, metadata !DIExpression()) #25, !dbg !4509
  %54 = icmp sgt i32 %53, -1, !dbg !4530
  br i1 %54, label %55, label %116, !dbg !4532

55:                                               ; preds = %52
  store i32 -1, i32* @rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec, align 4, !dbg !4533, !tbaa !1016
  br label %60, !dbg !4534

56:                                               ; preds = %38
  call void @llvm.dbg.value(metadata i32 %0, metadata !4499, metadata !DIExpression()) #25, !dbg !4535
  call void @llvm.dbg.value(metadata i32 %41, metadata !4502, metadata !DIExpression()) #25, !dbg !4535
  %57 = call i32 (i32, i32, ...) @fcntl(i32 %0, i32 0, i32 %41) #25, !dbg !4537
  call void @llvm.dbg.value(metadata i32 %57, metadata !4503, metadata !DIExpression()) #25, !dbg !4535
  call void @llvm.dbg.value(metadata i32 %57, metadata !324, metadata !DIExpression()) #25, !dbg !4509
  %58 = load i32, i32* @rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec, align 4
  %59 = icmp eq i32 %58, -1
  br label %60

60:                                               ; preds = %56, %55
  %61 = phi i1 [ true, %55 ], [ %59, %56 ]
  %62 = phi i32 [ %53, %55 ], [ %57, %56 ], !dbg !4538
  call void @llvm.dbg.value(metadata i32 %62, metadata !324, metadata !DIExpression()) #25, !dbg !4509
  %63 = icmp sgt i32 %62, -1, !dbg !4539
  %64 = and i1 %61, %63, !dbg !4525
  br i1 %64, label %65, label %116, !dbg !4525

65:                                               ; preds = %60
  %66 = call i32 (i32, i32, ...) @fcntl(i32 %62, i32 1) #25, !dbg !4540
  call void @llvm.dbg.value(metadata i32 %66, metadata !325, metadata !DIExpression()) #25, !dbg !4541
  %67 = icmp slt i32 %66, 0, !dbg !4542
  br i1 %67, label %72, label %68, !dbg !4543

68:                                               ; preds = %65
  %69 = or i32 %66, 1, !dbg !4544
  %70 = call i32 (i32, i32, ...) @fcntl(i32 %62, i32 2, i32 %69) #25, !dbg !4545
  %71 = icmp eq i32 %70, -1, !dbg !4546
  br i1 %71, label %72, label %116, !dbg !4547

72:                                               ; preds = %68, %65
  %73 = tail call i32* @__errno_location() #29, !dbg !4548
  %74 = load i32, i32* %73, align 4, !dbg !4548, !tbaa !1016
  call void @llvm.dbg.value(metadata i32 %74, metadata !328, metadata !DIExpression()) #25, !dbg !4549
  %75 = call i32 @close(i32 %62) #25, !dbg !4550
  store i32 %74, i32* %73, align 4, !dbg !4551, !tbaa !1016
  call void @llvm.dbg.value(metadata i32 -1, metadata !324, metadata !DIExpression()) #25, !dbg !4509
  br label %116, !dbg !4552

76:                                               ; preds = %2, %2, %2, %2, %2, %2, %2
  %77 = call i32 (i32, i32, ...) @fcntl(i32 %0, i32 %1) #25, !dbg !4553
  call void @llvm.dbg.value(metadata i32 %77, metadata !4480, metadata !DIExpression()), !dbg !4492
  br label %116, !dbg !4554

78:                                               ; preds = %2, %2, %2, %2, %2, %2, %2, %2
  %79 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 0, !dbg !4555
  %80 = load i32, i32* %79, align 16, !dbg !4555
  %81 = icmp ult i32 %80, 41, !dbg !4555
  br i1 %81, label %82, label %88, !dbg !4555

82:                                               ; preds = %78
  %83 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 3, !dbg !4555
  %84 = load i8*, i8** %83, align 16, !dbg !4555
  %85 = zext i32 %80 to i64, !dbg !4555
  %86 = getelementptr i8, i8* %84, i64 %85, !dbg !4555
  %87 = add nuw nsw i32 %80, 8, !dbg !4555
  store i32 %87, i32* %79, align 16, !dbg !4555
  br label %92, !dbg !4555

88:                                               ; preds = %78
  %89 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 2, !dbg !4555
  %90 = load i8*, i8** %89, align 8, !dbg !4555
  %91 = getelementptr i8, i8* %90, i64 8, !dbg !4555
  store i8* %91, i8** %89, align 8, !dbg !4555
  br label %92, !dbg !4555

92:                                               ; preds = %88, %82
  %93 = phi i8* [ %86, %82 ], [ %90, %88 ]
  %94 = bitcast i8* %93 to i32*, !dbg !4555
  %95 = load i32, i32* %94, align 4, !dbg !4555
  call void @llvm.dbg.value(metadata i32 %95, metadata !4486, metadata !DIExpression()), !dbg !4556
  %96 = call i32 (i32, i32, ...) @fcntl(i32 %0, i32 %1, i32 %95) #25, !dbg !4557
  call void @llvm.dbg.value(metadata i32 %96, metadata !4480, metadata !DIExpression()), !dbg !4492
  br label %116, !dbg !4558

97:                                               ; preds = %2
  %98 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 0, !dbg !4559
  %99 = load i32, i32* %98, align 16, !dbg !4559
  %100 = icmp ult i32 %99, 41, !dbg !4559
  br i1 %100, label %101, label %107, !dbg !4559

101:                                              ; preds = %97
  %102 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 3, !dbg !4559
  %103 = load i8*, i8** %102, align 16, !dbg !4559
  %104 = zext i32 %99 to i64, !dbg !4559
  %105 = getelementptr i8, i8* %103, i64 %104, !dbg !4559
  %106 = add nuw nsw i32 %99, 8, !dbg !4559
  store i32 %106, i32* %98, align 16, !dbg !4559
  br label %111, !dbg !4559

107:                                              ; preds = %97
  %108 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 2, !dbg !4559
  %109 = load i8*, i8** %108, align 8, !dbg !4559
  %110 = getelementptr i8, i8* %109, i64 8, !dbg !4559
  store i8* %110, i8** %108, align 8, !dbg !4559
  br label %111, !dbg !4559

111:                                              ; preds = %107, %101
  %112 = phi i8* [ %105, %101 ], [ %109, %107 ]
  %113 = bitcast i8* %112 to i8**, !dbg !4559
  %114 = load i8*, i8** %113, align 8, !dbg !4559
  call void @llvm.dbg.value(metadata i8* %114, metadata !4490, metadata !DIExpression()), !dbg !4560
  %115 = call i32 (i32, i32, ...) @fcntl(i32 %0, i32 %1, i8* %114) #25, !dbg !4561
  call void @llvm.dbg.value(metadata i32 %115, metadata !4480, metadata !DIExpression()), !dbg !4492
  br label %116, !dbg !4562

116:                                              ; preds = %72, %68, %60, %52, %51, %76, %92, %111, %19
  %117 = phi i32 [ %115, %111 ], [ %96, %92 ], [ %77, %76 ], [ %23, %19 ], [ %62, %60 ], [ -1, %72 ], [ %62, %68 ], [ %53, %52 ], [ %45, %51 ], !dbg !4563
  call void @llvm.dbg.value(metadata i32 %117, metadata !4480, metadata !DIExpression()), !dbg !4492
  call void @llvm.va_end(i8* nonnull %4), !dbg !4564
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %4) #25, !dbg !4565
  ret i32 %117, !dbg !4566
}

declare !dbg !4567 i32 @fcntl(i32, i32, ...) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fflush(%struct._IO_FILE* %0) local_unnamed_addr #8 !dbg !4568 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4606, metadata !DIExpression()), !dbg !4607
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !4608
  br i1 %2, label %6, label %3, !dbg !4610

3:                                                ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #25, !dbg !4611
  %5 = icmp eq i32 %4, 0, !dbg !4611
  br i1 %5, label %6, label %8, !dbg !4612

6:                                                ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* %0), !dbg !4613
  br label %17, !dbg !4614

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4615, metadata !DIExpression()) #25, !dbg !4620
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4622
  %10 = load i32, i32* %9, align 8, !dbg !4622, !tbaa !1422
  %11 = and i32 %10, 256, !dbg !4624
  %12 = icmp eq i32 %11, 0, !dbg !4624
  br i1 %12, label %15, label %13, !dbg !4625

13:                                               ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* nonnull %0, i64 0, i32 1) #25, !dbg !4626
  br label %15, !dbg !4626

15:                                               ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* nonnull %0), !dbg !4627
  br label %17, !dbg !4628

17:                                               ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ], !dbg !4607
  ret i32 %18, !dbg !4629
}

; Function Attrs: nofree nounwind
declare !dbg !4630 noundef i32 @fflush(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fseeko(%struct._IO_FILE* nocapture nonnull %0, i64 %1, i32 %2) local_unnamed_addr #8 !dbg !4633 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4671, metadata !DIExpression()), !dbg !4677
  call void @llvm.dbg.value(metadata i64 %1, metadata !4672, metadata !DIExpression()), !dbg !4677
  call void @llvm.dbg.value(metadata i32 %2, metadata !4673, metadata !DIExpression()), !dbg !4677
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !4678
  %5 = load i8*, i8** %4, align 8, !dbg !4678, !tbaa !4679
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !4680
  %7 = load i8*, i8** %6, align 8, !dbg !4680, !tbaa !4681
  %8 = icmp eq i8* %5, %7, !dbg !4682
  br i1 %8, label %9, label %28, !dbg !4683

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !4684
  %11 = load i8*, i8** %10, align 8, !dbg !4684, !tbaa !1354
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !4685
  %13 = load i8*, i8** %12, align 8, !dbg !4685, !tbaa !4686
  %14 = icmp eq i8* %11, %13, !dbg !4687
  br i1 %14, label %15, label %28, !dbg !4688

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !4689
  %17 = load i8*, i8** %16, align 8, !dbg !4689, !tbaa !4690
  %18 = icmp eq i8* %17, null, !dbg !4691
  br i1 %18, label %19, label %28, !dbg !4692

19:                                               ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #25, !dbg !4693
  %21 = tail call i64 @lseek(i32 %20, i64 %1, i32 %2) #25, !dbg !4694
  call void @llvm.dbg.value(metadata i64 %21, metadata !4674, metadata !DIExpression()), !dbg !4695
  %22 = icmp eq i64 %21, -1, !dbg !4696
  br i1 %22, label %30, label %23, !dbg !4698

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4699
  %25 = load i32, i32* %24, align 8, !dbg !4700, !tbaa !1422
  %26 = and i32 %25, -17, !dbg !4700
  store i32 %26, i32* %24, align 8, !dbg !4700, !tbaa !1422
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !4701
  store i64 %21, i64* %27, align 8, !dbg !4702, !tbaa !4703
  br label %30, !dbg !4704

28:                                               ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* nonnull %0, i64 %1, i32 %2), !dbg !4705
  br label %30, !dbg !4706

30:                                               ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ], !dbg !4677
  ret i32 %31, !dbg !4707
}

; Function Attrs: nofree nounwind
declare !dbg !4708 noundef i32 @fseeko(%struct._IO_FILE* nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rpl_mbrtowc(i32* %0, i8* %1, i64 %2, %struct.__mbstate_t* %3) local_unnamed_addr #8 !dbg !4711 {
  %5 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32* %0, metadata !4727, metadata !DIExpression()), !dbg !4736
  call void @llvm.dbg.value(metadata i8* %1, metadata !4728, metadata !DIExpression()), !dbg !4736
  call void @llvm.dbg.value(metadata i64 %2, metadata !4729, metadata !DIExpression()), !dbg !4736
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %3, metadata !4730, metadata !DIExpression()), !dbg !4736
  %6 = bitcast i32* %5 to i8*, !dbg !4737
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #25, !dbg !4737
  %7 = icmp eq i32* %0, null, !dbg !4738
  %8 = select i1 %7, i32* %5, i32* %0, !dbg !4740
  call void @llvm.dbg.value(metadata i32* %8, metadata !4727, metadata !DIExpression()), !dbg !4736
  %9 = call i64 @mbrtowc(i32* %8, i8* %1, i64 %2, %struct.__mbstate_t* %3) #25, !dbg !4741
  call void @llvm.dbg.value(metadata i64 %9, metadata !4731, metadata !DIExpression()), !dbg !4736
  %10 = icmp ugt i64 %9, -3, !dbg !4742
  %11 = icmp ne i64 %2, 0
  %12 = and i1 %11, %10, !dbg !4743
  br i1 %12, label %13, label %18, !dbg !4743

13:                                               ; preds = %4
  %14 = call zeroext i1 @hard_locale(i32 0) #25, !dbg !4744
  br i1 %14, label %18, label %15, !dbg !4745

15:                                               ; preds = %13
  %16 = load i8, i8* %1, align 1, !dbg !4746, !tbaa !1091
  call void @llvm.dbg.value(metadata i8 %16, metadata !4733, metadata !DIExpression()), !dbg !4747
  %17 = zext i8 %16 to i32, !dbg !4748
  store i32 %17, i32* %8, align 4, !dbg !4749, !tbaa !1016
  br label %18

18:                                               ; preds = %4, %13, %15
  %19 = phi i64 [ 1, %15 ], [ %9, %13 ], [ %9, %4 ], !dbg !4736
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #25, !dbg !4750
  ret i64 %19, !dbg !4750
}

; Function Attrs: nounwind
declare !dbg !4751 i64 @mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @close_stream(%struct._IO_FILE* %0) local_unnamed_addr #8 !dbg !4755 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4793, metadata !DIExpression()), !dbg !4798
  %2 = tail call i64 @__fpending(%struct._IO_FILE* %0) #25, !dbg !4799
  call void @llvm.dbg.value(metadata i1 undef, metadata !4794, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4798
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4800, metadata !DIExpression()), !dbg !4803
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4805
  %4 = load i32, i32* %3, align 8, !dbg !4805, !tbaa !1422
  %5 = and i32 %4, 32, !dbg !4806
  %6 = icmp eq i32 %5, 0, !dbg !4806
  call void @llvm.dbg.value(metadata i1 %6, metadata !4796, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4798
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* %0) #25, !dbg !4807
  %8 = icmp eq i32 %7, 0, !dbg !4808
  call void @llvm.dbg.value(metadata i1 %8, metadata !4797, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4798
  br i1 %6, label %9, label %19, !dbg !4809

9:                                                ; preds = %1
  %10 = icmp ne i64 %2, 0, !dbg !4811
  call void @llvm.dbg.value(metadata i1 %10, metadata !4794, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4798
  %11 = or i1 %10, %8, !dbg !4812
  %12 = xor i1 %8, true, !dbg !4812
  %13 = sext i1 %12 to i32, !dbg !4812
  br i1 %11, label %22, label %14, !dbg !4812

14:                                               ; preds = %9
  %15 = tail call i32* @__errno_location() #29, !dbg !4813
  %16 = load i32, i32* %15, align 4, !dbg !4813, !tbaa !1016
  %17 = icmp ne i32 %16, 9, !dbg !4814
  %18 = sext i1 %17 to i32, !dbg !4815
  br label %22, !dbg !4815

19:                                               ; preds = %1
  br i1 %8, label %20, label %22, !dbg !4816

20:                                               ; preds = %19
  %21 = tail call i32* @__errno_location() #29, !dbg !4818
  store i32 0, i32* %21, align 4, !dbg !4820, !tbaa !1016
  br label %22, !dbg !4818

22:                                               ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ], !dbg !4798
  ret i32 %23, !dbg !4821
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local zeroext i1 @hard_locale(i32 %0) local_unnamed_addr #8 !dbg !4822 {
  %2 = alloca [257 x i8], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !4826, metadata !DIExpression()), !dbg !4831
  %3 = getelementptr inbounds [257 x i8], [257 x i8]* %2, i64 0, i64 0, !dbg !4832
  call void @llvm.lifetime.start.p0i8(i64 257, i8* nonnull %3) #25, !dbg !4832
  call void @llvm.dbg.declare(metadata [257 x i8]* %2, metadata !4827, metadata !DIExpression()), !dbg !4833
  %4 = call i32 @setlocale_null_r(i32 %0, i8* nonnull %3, i64 257) #25, !dbg !4834
  %5 = icmp eq i32 %4, 0, !dbg !4834
  br i1 %5, label %6, label %13, !dbg !4836

6:                                                ; preds = %1
  %7 = bitcast [257 x i8]* %2 to i16*, !dbg !4837
  %8 = load i16, i16* %7, align 16, !dbg !4837
  %9 = icmp eq i16 %8, 67, !dbg !4837
  br i1 %9, label %13, label %10, !dbg !4838

10:                                               ; preds = %6
  %11 = call i32 @bcmp(i8* nonnull dereferenceable(6) %3, i8* nonnull dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.180, i64 0, i64 0), i64 6), !dbg !4839
  %12 = icmp ne i32 %11, 0, !dbg !4840
  br label %13, !dbg !4838

13:                                               ; preds = %6, %10, %1
  %14 = phi i1 [ false, %1 ], [ false, %6 ], [ %12, %10 ], !dbg !4831
  call void @llvm.lifetime.end.p0i8(i64 257, i8* nonnull %3) #25, !dbg !4841
  ret i1 %14, !dbg !4841
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @locale_charset() local_unnamed_addr #8 !dbg !4842 {
  %1 = tail call i8* @nl_langinfo(i32 14) #25, !dbg !4847
  call void @llvm.dbg.value(metadata i8* %1, metadata !4846, metadata !DIExpression()), !dbg !4848
  %2 = icmp eq i8* %1, null, !dbg !4849
  %3 = select i1 %2, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.183, i64 0, i64 0), i8* %1, !dbg !4851
  call void @llvm.dbg.value(metadata i8* %3, metadata !4846, metadata !DIExpression()), !dbg !4848
  %4 = load i8, i8* %3, align 1, !dbg !4852, !tbaa !1091
  %5 = icmp eq i8 %4, 0, !dbg !4856
  %6 = select i1 %5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.184, i64 0, i64 0), i8* %3, !dbg !4857
  call void @llvm.dbg.value(metadata i8* %6, metadata !4846, metadata !DIExpression()), !dbg !4848
  ret i8* %6, !dbg !4858
}

; Function Attrs: nounwind
declare !dbg !4859 i8* @nl_langinfo(i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @setlocale_null_r(i32 %0, i8* nonnull %1, i64 %2) local_unnamed_addr #8 !dbg !4862 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4866, metadata !DIExpression()), !dbg !4869
  call void @llvm.dbg.value(metadata i8* %1, metadata !4867, metadata !DIExpression()), !dbg !4869
  call void @llvm.dbg.value(metadata i64 %2, metadata !4868, metadata !DIExpression()), !dbg !4869
  call void @llvm.dbg.value(metadata i32 %0, metadata !4870, metadata !DIExpression()) #25, !dbg !4879
  call void @llvm.dbg.value(metadata i8* %1, metadata !4873, metadata !DIExpression()) #25, !dbg !4879
  call void @llvm.dbg.value(metadata i64 %2, metadata !4874, metadata !DIExpression()) #25, !dbg !4879
  call void @llvm.dbg.value(metadata i32 %0, metadata !4881, metadata !DIExpression()) #25, !dbg !4887
  %4 = tail call i8* @setlocale(i32 %0, i8* null) #25, !dbg !4889
  call void @llvm.dbg.value(metadata i8* %4, metadata !4886, metadata !DIExpression()) #25, !dbg !4887
  call void @llvm.dbg.value(metadata i8* %4, metadata !4875, metadata !DIExpression()) #25, !dbg !4879
  %5 = icmp eq i8* %4, null, !dbg !4890
  br i1 %5, label %6, label %9, !dbg !4891

6:                                                ; preds = %3
  %7 = icmp eq i64 %2, 0, !dbg !4892
  br i1 %7, label %19, label %8, !dbg !4895

8:                                                ; preds = %6
  store i8 0, i8* %1, align 1, !dbg !4896, !tbaa !1091
  br label %19, !dbg !4897

9:                                                ; preds = %3
  %10 = tail call i64 @strlen(i8* nonnull %4) #26, !dbg !4898
  call void @llvm.dbg.value(metadata i64 %10, metadata !4876, metadata !DIExpression()) #25, !dbg !4899
  %11 = icmp ult i64 %10, %2, !dbg !4900
  br i1 %11, label %12, label %14, !dbg !4902

12:                                               ; preds = %9
  %13 = add nuw i64 %10, 1, !dbg !4903
  call void @llvm.dbg.value(metadata i8* %1, metadata !4905, metadata !DIExpression()) #25, !dbg !4910
  call void @llvm.dbg.value(metadata i8* %4, metadata !4908, metadata !DIExpression()) #25, !dbg !4910
  call void @llvm.dbg.value(metadata i64 %13, metadata !4909, metadata !DIExpression()) #25, !dbg !4910
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %1, i8* nonnull align 1 %4, i64 %13, i1 false) #25, !dbg !4912
  br label %19, !dbg !4913

14:                                               ; preds = %9
  %15 = icmp eq i64 %2, 0, !dbg !4914
  br i1 %15, label %19, label %16, !dbg !4917

16:                                               ; preds = %14
  %17 = add i64 %2, -1, !dbg !4918
  call void @llvm.dbg.value(metadata i8* %1, metadata !4905, metadata !DIExpression()) #25, !dbg !4920
  call void @llvm.dbg.value(metadata i8* %4, metadata !4908, metadata !DIExpression()) #25, !dbg !4920
  call void @llvm.dbg.value(metadata i64 %17, metadata !4909, metadata !DIExpression()) #25, !dbg !4920
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %1, i8* nonnull align 1 %4, i64 %17, i1 false) #25, !dbg !4922
  %18 = getelementptr inbounds i8, i8* %1, i64 %17, !dbg !4923
  store i8 0, i8* %18, align 1, !dbg !4924, !tbaa !1091
  br label %19, !dbg !4925

19:                                               ; preds = %6, %8, %12, %14, %16
  %20 = phi i32 [ 22, %8 ], [ 22, %6 ], [ 0, %12 ], [ 34, %16 ], [ 34, %14 ], !dbg !4926
  ret i32 %20, !dbg !4927
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @setlocale_null(i32 %0) local_unnamed_addr #8 !dbg !4928 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4930, metadata !DIExpression()), !dbg !4931
  call void @llvm.dbg.value(metadata i32 %0, metadata !4881, metadata !DIExpression()) #25, !dbg !4932
  %2 = tail call i8* @setlocale(i32 %0, i8* null) #25, !dbg !4934
  call void @llvm.dbg.value(metadata i8* %2, metadata !4886, metadata !DIExpression()) #25, !dbg !4932
  ret i8* %2, !dbg !4935
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

!llvm.dbg.cu = !{!2, !219, !225, !232, !243, !331, !334, !249, !255, !336, !338, !307, !345, !362, !364, !366, !319, !368, !370, !372, !375, !377, !379, !768}
!llvm.ident = !{!770, !770, !770, !770, !770, !770, !770, !770, !770, !770, !770, !770, !770, !770, !770, !770, !770, !770, !770, !770, !770, !770, !770, !770}
!llvm.module.flags = !{!771, !772, !773, !774, !775}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "long_options", scope: !2, file: !3, line: 202, type: !196, isLocal: true, isDefinition: true)
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
!68 = !{!69, !72, !74, !0, !76, !78, !80, !82, !84, !86, !88, !194}
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
!89 = distinct !DIGlobalVariable(name: "bin2hex", scope: !90, file: !3, line: 730, type: !191, isLocal: true, isDefinition: true)
!90 = distinct !DISubprogram(name: "digest_check", scope: !3, file: !3, line: 652, type: !91, scopeLine: 653, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !95)
!91 = !DISubroutineType(types: !92)
!92 = !{!71, !93}
!93 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !94, size: 64)
!94 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !60)
!95 = !{!96, !97, !152, !153, !154, !155, !156, !157, !158, !160, !161, !162, !163, !164, !165, !167, !168, !169, !173, !176, !177, !178, !182, !183, !189}
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
!159 = !DICompositeType(tag: DW_TAG_array_type, baseType: !66, size: 160, elements: !150)
!160 = !DILocalVariable(name: "bin_buffer", scope: !90, file: !3, line: 663, type: !65)
!161 = !DILocalVariable(name: "line_number", scope: !90, file: !3, line: 664, type: !41)
!162 = !DILocalVariable(name: "line", scope: !90, file: !3, line: 665, type: !59)
!163 = !DILocalVariable(name: "line_chars_allocated", scope: !90, file: !3, line: 666, type: !62)
!164 = !DILocalVariable(name: "is_stdin", scope: !90, file: !3, line: 667, type: !71)
!165 = !DILocalVariable(name: "filename", scope: !166, file: !3, line: 690, type: !59)
!166 = distinct !DILexicalBlock(scope: !90, file: !3, line: 689, column: 5)
!167 = !DILocalVariable(name: "binary", scope: !166, file: !3, line: 691, type: !64)
!168 = !DILocalVariable(name: "hex_digest", scope: !166, file: !3, line: 692, type: !65)
!169 = !DILocalVariable(name: "line_length", scope: !166, file: !3, line: 693, type: !170)
!170 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !171, line: 108, baseType: !172)
!171 = !DIFile(filename: "/usr/include/sys/types.h", directory: "")
!172 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !44, line: 194, baseType: !125)
!173 = !DILocalVariable(name: "ok", scope: !174, file: !3, line: 734, type: !71)
!174 = distinct !DILexicalBlock(scope: !175, file: !3, line: 729, column: 9)
!175 = distinct !DILexicalBlock(scope: !166, file: !3, line: 712, column: 11)
!176 = !DILocalVariable(name: "missing", scope: !174, file: !3, line: 735, type: !71)
!177 = !DILocalVariable(name: "needs_escape", scope: !174, file: !3, line: 738, type: !71)
!178 = !DILocalVariable(name: "digest_bin_bytes", scope: !179, file: !3, line: 762, type: !62)
!179 = distinct !DILexicalBlock(scope: !180, file: !3, line: 761, column: 13)
!180 = distinct !DILexicalBlock(scope: !181, file: !3, line: 755, column: 20)
!181 = distinct !DILexicalBlock(scope: !174, file: !3, line: 744, column: 15)
!182 = !DILocalVariable(name: "cnt", scope: !179, file: !3, line: 763, type: !62)
!183 = !DILocalVariable(name: "__res", scope: !184, file: !3, line: 769, type: !64)
!184 = distinct !DILexicalBlock(scope: !185, file: !3, line: 769, column: 23)
!185 = distinct !DILexicalBlock(scope: !186, file: !3, line: 769, column: 23)
!186 = distinct !DILexicalBlock(scope: !187, file: !3, line: 768, column: 17)
!187 = distinct !DILexicalBlock(scope: !188, file: !3, line: 767, column: 15)
!188 = distinct !DILexicalBlock(scope: !179, file: !3, line: 767, column: 15)
!189 = !DILocalVariable(name: "__res", scope: !190, file: !3, line: 771, type: !64)
!190 = distinct !DILexicalBlock(scope: !185, file: !3, line: 771, column: 27)
!191 = !DICompositeType(tag: DW_TAG_array_type, baseType: !94, size: 128, elements: !192)
!192 = !{!193}
!193 = !DISubrange(count: 16)
!194 = !DIGlobalVariableExpression(var: !195, expr: !DIExpression())
!195 = distinct !DIGlobalVariable(name: "bsd_reversed", scope: !2, file: !3, line: 158, type: !64, isLocal: true, isDefinition: true)
!196 = !DICompositeType(tag: DW_TAG_array_type, baseType: !197, size: 3328, elements: !206)
!197 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !198)
!198 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !199, line: 50, size: 256, elements: !200)
!199 = !DIFile(filename: "/usr/include/bits/getopt_ext.h", directory: "")
!200 = !{!201, !202, !203, !205}
!201 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !198, file: !199, line: 52, baseType: !93, size: 64)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !198, file: !199, line: 55, baseType: !64, size: 32, offset: 64)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !198, file: !199, line: 56, baseType: !204, size: 64, offset: 128)
!204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !64, size: 64)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !198, file: !199, line: 57, baseType: !64, size: 32, offset: 192)
!206 = !{!207}
!207 = !DISubrange(count: 13)
!208 = !DIGlobalVariableExpression(var: !77, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!209 = !DIGlobalVariableExpression(var: !79, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!210 = !DIGlobalVariableExpression(var: !81, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!211 = !DIGlobalVariableExpression(var: !83, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!212 = !DIGlobalVariableExpression(var: !85, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!213 = !DIGlobalVariableExpression(var: !87, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 18446744073709551606, DW_OP_mul, DW_OP_constu, 10, DW_OP_plus, DW_OP_stack_value))
!214 = !DIGlobalVariableExpression(var: !73, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 34, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!215 = !DIGlobalVariableExpression(var: !75, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 32, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!216 = !DIGlobalVariableExpression(var: !70, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!217 = !DIGlobalVariableExpression(var: !218, expr: !DIExpression())
!218 = distinct !DIGlobalVariable(name: "Version", scope: !219, file: !220, line: 2, type: !93, isLocal: false, isDefinition: true)
!219 = distinct !DICompileUnit(language: DW_LANG_C99, file: !220, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !221, globals: !222, splitDebugInlining: false, nameTableKind: None)
!220 = !DIFile(filename: "src/version.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!221 = !{}
!222 = !{!217}
!223 = !DIGlobalVariableExpression(var: !224, expr: !DIExpression())
!224 = distinct !DIGlobalVariable(name: "file_name", scope: !225, file: !226, line: 46, type: !93, isLocal: true, isDefinition: true)
!225 = distinct !DICompileUnit(language: DW_LANG_C99, file: !226, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !221, globals: !227, splitDebugInlining: false, nameTableKind: None)
!226 = !DIFile(filename: "lib/closeout.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!227 = !{!223, !228}
!228 = !DIGlobalVariableExpression(var: !229, expr: !DIExpression())
!229 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !225, file: !226, line: 56, type: !71, isLocal: true, isDefinition: true)
!230 = !DIGlobalVariableExpression(var: !231, expr: !DIExpression())
!231 = distinct !DIGlobalVariable(name: "fillbuf", scope: !232, file: !233, line: 70, type: !237, isLocal: true, isDefinition: true)
!232 = distinct !DICompileUnit(language: DW_LANG_C99, file: !233, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !221, retainedTypes: !234, globals: !236, splitDebugInlining: false, nameTableKind: None)
!233 = !DIFile(filename: "lib/md5.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!234 = !{!59, !93, !235}
!235 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !42, line: 90, baseType: !40)
!236 = !{!230}
!237 = !DICompositeType(tag: DW_TAG_array_type, baseType: !238, size: 512, elements: !239)
!238 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !66)
!239 = !{!240}
!240 = !DISubrange(count: 64)
!241 = !DIGlobalVariableExpression(var: !242, expr: !DIExpression())
!242 = distinct !DIGlobalVariable(name: "exit_failure", scope: !243, file: !244, line: 24, type: !246, isLocal: false, isDefinition: true)
!243 = distinct !DICompileUnit(language: DW_LANG_C99, file: !244, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !221, globals: !245, splitDebugInlining: false, nameTableKind: None)
!244 = !DIFile(filename: "lib/exitfail.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!245 = !{!241}
!246 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !64)
!247 = !DIGlobalVariableExpression(var: !248, expr: !DIExpression())
!248 = distinct !DIGlobalVariable(name: "program_name", scope: !249, file: !250, line: 33, type: !93, isLocal: false, isDefinition: true)
!249 = distinct !DICompileUnit(language: DW_LANG_C99, file: !250, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !221, retainedTypes: !251, globals: !252, splitDebugInlining: false, nameTableKind: None)
!250 = !DIFile(filename: "lib/progname.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!251 = !{!61, !59}
!252 = !{!247}
!253 = !DIGlobalVariableExpression(var: !254, expr: !DIExpression())
!254 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !255, file: !256, line: 85, type: !301, isLocal: false, isDefinition: true)
!255 = distinct !DICompileUnit(language: DW_LANG_C99, file: !256, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !257, retainedTypes: !263, globals: !264, splitDebugInlining: false, nameTableKind: None)
!256 = !DIFile(filename: "lib/quotearg.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!257 = !{!5, !258, !20}
!258 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !6, line: 242, baseType: !7, size: 32, elements: !259)
!259 = !{!260, !261, !262}
!260 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1, isUnsigned: true)
!261 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2, isUnsigned: true)
!262 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4, isUnsigned: true)
!263 = !{!64, !67, !62, !59}
!264 = !{!253, !265, !271, !283, !285, !290, !297, !299}
!265 = !DIGlobalVariableExpression(var: !266, expr: !DIExpression())
!266 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !255, file: !256, line: 101, type: !267, isLocal: false, isDefinition: true)
!267 = !DICompositeType(tag: DW_TAG_array_type, baseType: !268, size: 320, elements: !269)
!268 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5)
!269 = !{!270}
!270 = !DISubrange(count: 10)
!271 = !DIGlobalVariableExpression(var: !272, expr: !DIExpression())
!272 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !255, file: !256, line: 1052, type: !273, isLocal: false, isDefinition: true)
!273 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !256, line: 65, size: 448, elements: !274)
!274 = !{!275, !276, !277, !281, !282}
!275 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !273, file: !256, line: 68, baseType: !5, size: 32)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !273, file: !256, line: 71, baseType: !64, size: 32, offset: 32)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !273, file: !256, line: 75, baseType: !278, size: 256, offset: 64)
!278 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 256, elements: !279)
!279 = !{!280}
!280 = !DISubrange(count: 8)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !273, file: !256, line: 78, baseType: !93, size: 64, offset: 320)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !273, file: !256, line: 81, baseType: !93, size: 64, offset: 384)
!283 = !DIGlobalVariableExpression(var: !284, expr: !DIExpression())
!284 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !255, file: !256, line: 116, type: !273, isLocal: true, isDefinition: true)
!285 = !DIGlobalVariableExpression(var: !286, expr: !DIExpression())
!286 = distinct !DIGlobalVariable(name: "slot0", scope: !255, file: !256, line: 842, type: !287, isLocal: true, isDefinition: true)
!287 = !DICompositeType(tag: DW_TAG_array_type, baseType: !60, size: 2048, elements: !288)
!288 = !{!289}
!289 = !DISubrange(count: 256)
!290 = !DIGlobalVariableExpression(var: !291, expr: !DIExpression())
!291 = distinct !DIGlobalVariable(name: "slotvec", scope: !255, file: !256, line: 845, type: !292, isLocal: true, isDefinition: true)
!292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !293, size: 64)
!293 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !256, line: 834, size: 128, elements: !294)
!294 = !{!295, !296}
!295 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !293, file: !256, line: 836, baseType: !62, size: 64)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !293, file: !256, line: 837, baseType: !59, size: 64, offset: 64)
!297 = !DIGlobalVariableExpression(var: !298, expr: !DIExpression())
!298 = distinct !DIGlobalVariable(name: "nslots", scope: !255, file: !256, line: 843, type: !64, isLocal: true, isDefinition: true)
!299 = !DIGlobalVariableExpression(var: !300, expr: !DIExpression())
!300 = distinct !DIGlobalVariable(name: "slotvec0", scope: !255, file: !256, line: 844, type: !293, isLocal: true, isDefinition: true)
!301 = !DICompositeType(tag: DW_TAG_array_type, baseType: !302, size: 704, elements: !303)
!302 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !93)
!303 = !{!304}
!304 = !DISubrange(count: 11)
!305 = !DIGlobalVariableExpression(var: !306, expr: !DIExpression())
!306 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !307, file: !308, line: 26, type: !310, isLocal: false, isDefinition: true)
!307 = distinct !DICompileUnit(language: DW_LANG_C99, file: !308, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !221, globals: !309, splitDebugInlining: false, nameTableKind: None)
!308 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!309 = !{!305}
!310 = !DICompositeType(tag: DW_TAG_array_type, baseType: !94, size: 376, elements: !311)
!311 = !{!312}
!312 = !DISubrange(count: 47)
!313 = !DIGlobalVariableExpression(var: !314, expr: !DIExpression())
!314 = distinct !DIGlobalVariable(name: "have_dupfd_cloexec", scope: !315, file: !316, line: 507, type: !64, isLocal: true, isDefinition: true)
!315 = distinct !DISubprogram(name: "rpl_fcntl_DUPFD_CLOEXEC", scope: !316, file: !316, line: 488, type: !317, scopeLine: 489, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !319, retainedNodes: !321)
!316 = !DIFile(filename: "lib/fcntl.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!317 = !DISubroutineType(types: !318)
!318 = !{!64, !64, !64}
!319 = distinct !DICompileUnit(language: DW_LANG_C99, file: !316, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !221, globals: !320, splitDebugInlining: false, nameTableKind: None)
!320 = !{!313}
!321 = !{!322, !323, !324, !325, !328}
!322 = !DILocalVariable(name: "fd", arg: 1, scope: !315, file: !316, line: 488, type: !64)
!323 = !DILocalVariable(name: "target", arg: 2, scope: !315, file: !316, line: 488, type: !64)
!324 = !DILocalVariable(name: "result", scope: !315, file: !316, line: 490, type: !64)
!325 = !DILocalVariable(name: "flags", scope: !326, file: !316, line: 531, type: !64)
!326 = distinct !DILexicalBlock(scope: !327, file: !316, line: 530, column: 5)
!327 = distinct !DILexicalBlock(scope: !315, file: !316, line: 529, column: 7)
!328 = !DILocalVariable(name: "saved_errno", scope: !329, file: !316, line: 534, type: !64)
!329 = distinct !DILexicalBlock(scope: !330, file: !316, line: 533, column: 9)
!330 = distinct !DILexicalBlock(scope: !326, file: !316, line: 532, column: 11)
!331 = distinct !DICompileUnit(language: DW_LANG_C99, file: !332, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !333, splitDebugInlining: false, nameTableKind: None)
!332 = !DIFile(filename: "lib/fadvise.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!333 = !{!49}
!334 = distinct !DICompileUnit(language: DW_LANG_C99, file: !335, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !221, splitDebugInlining: false, nameTableKind: None)
!335 = !DIFile(filename: "lib/fopen-safer.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!336 = distinct !DICompileUnit(language: DW_LANG_C99, file: !337, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !221, splitDebugInlining: false, nameTableKind: None)
!337 = !DIFile(filename: "lib/dup-safer.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!338 = distinct !DICompileUnit(language: DW_LANG_C99, file: !339, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !340, retainedTypes: !344, splitDebugInlining: false, nameTableKind: None)
!339 = !DIFile(filename: "lib/version-etc.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!340 = !{!341}
!341 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !339, line: 40, baseType: !7, size: 32, elements: !342)
!342 = !{!343}
!343 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2020, isUnsigned: true)
!344 = !{!61}
!345 = distinct !DICompileUnit(language: DW_LANG_C99, file: !346, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !347, retainedTypes: !361, splitDebugInlining: false, nameTableKind: None)
!346 = !DIFile(filename: "lib/xmalloc.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!347 = !{!348}
!348 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !350, file: !349, line: 186, baseType: !7, size: 32, elements: !359)
!349 = !DIFile(filename: "./lib/xalloc.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!350 = distinct !DISubprogram(name: "x2nrealloc", scope: !349, file: !349, line: 174, type: !351, scopeLine: 175, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !345, retainedNodes: !354)
!351 = !DISubroutineType(types: !352)
!352 = !{!61, !61, !353, !62}
!353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !62, size: 64)
!354 = !{!355, !356, !357, !358}
!355 = !DILocalVariable(name: "p", arg: 1, scope: !350, file: !349, line: 174, type: !61)
!356 = !DILocalVariable(name: "pn", arg: 2, scope: !350, file: !349, line: 174, type: !353)
!357 = !DILocalVariable(name: "s", arg: 3, scope: !350, file: !349, line: 174, type: !62)
!358 = !DILocalVariable(name: "n", scope: !350, file: !349, line: 176, type: !62)
!359 = !{!360}
!360 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128, isUnsigned: true)
!361 = !{!62, !59, !61}
!362 = distinct !DICompileUnit(language: DW_LANG_C99, file: !363, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !221, splitDebugInlining: false, nameTableKind: None)
!363 = !DIFile(filename: "lib/xalloc-die.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!364 = distinct !DICompileUnit(language: DW_LANG_C99, file: !365, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !221, retainedTypes: !344, splitDebugInlining: false, nameTableKind: None)
!365 = !DIFile(filename: "lib/calloc.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!366 = distinct !DICompileUnit(language: DW_LANG_C99, file: !367, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !221, splitDebugInlining: false, nameTableKind: None)
!367 = !DIFile(filename: "lib/fclose.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!368 = distinct !DICompileUnit(language: DW_LANG_C99, file: !369, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !221, retainedTypes: !344, splitDebugInlining: false, nameTableKind: None)
!369 = !DIFile(filename: "lib/fflush.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!370 = distinct !DICompileUnit(language: DW_LANG_C99, file: !371, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !221, retainedTypes: !344, splitDebugInlining: false, nameTableKind: None)
!371 = !DIFile(filename: "lib/fseeko.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!372 = distinct !DICompileUnit(language: DW_LANG_C99, file: !373, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !221, retainedTypes: !374, splitDebugInlining: false, nameTableKind: None)
!373 = !DIFile(filename: "lib/mbrtowc.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!374 = !{!62}
!375 = distinct !DICompileUnit(language: DW_LANG_C99, file: !376, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !221, splitDebugInlining: false, nameTableKind: None)
!376 = !DIFile(filename: "lib/close-stream.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!377 = distinct !DICompileUnit(language: DW_LANG_C99, file: !378, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !221, splitDebugInlining: false, nameTableKind: None)
!378 = !DIFile(filename: "lib/hard-locale.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!379 = distinct !DICompileUnit(language: DW_LANG_C99, file: !380, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !381, retainedTypes: !344, splitDebugInlining: false, nameTableKind: None)
!380 = !DIFile(filename: "lib/localcharset.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!381 = !{!382}
!382 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !383, line: 41, baseType: !7, size: 32, elements: !384)
!383 = !DIFile(filename: "/usr/include/langinfo.h", directory: "")
!384 = !{!385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558, !559, !560, !561, !562, !563, !564, !565, !566, !567, !568, !569, !570, !571, !572, !573, !574, !575, !576, !577, !578, !579, !580, !581, !582, !583, !584, !585, !586, !587, !588, !589, !590, !591, !592, !593, !594, !595, !596, !597, !598, !599, !600, !601, !602, !603, !604, !605, !606, !607, !608, !609, !610, !611, !612, !613, !614, !615, !616, !617, !618, !619, !620, !621, !622, !623, !624, !625, !626, !627, !628, !629, !630, !631, !632, !633, !634, !635, !636, !637, !638, !639, !640, !641, !642, !643, !644, !645, !646, !647, !648, !649, !650, !651, !652, !653, !654, !655, !656, !657, !658, !659, !660, !661, !662, !663, !664, !665, !666, !667, !668, !669, !670, !671, !672, !673, !674, !675, !676, !677, !678, !679, !680, !681, !682, !683, !684, !685, !686, !687, !688, !689, !690, !691, !692, !693, !694, !695, !696, !697, !698, !699, !700, !701, !702, !703, !704, !705, !706, !707, !708, !709, !710, !711, !712, !713, !714, !715, !716, !717, !718, !719, !720, !721, !722, !723, !724, !725, !726, !727, !728, !729, !730, !731, !732, !733, !734, !735, !736, !737, !738, !739, !740, !741, !742, !743, !744, !745, !746, !747, !748, !749, !750, !751, !752, !753, !754, !755, !756, !757, !758, !759, !760, !761, !762, !763, !764, !765, !766, !767}
!385 = !DIEnumerator(name: "ABDAY_1", value: 131072, isUnsigned: true)
!386 = !DIEnumerator(name: "ABDAY_2", value: 131073, isUnsigned: true)
!387 = !DIEnumerator(name: "ABDAY_3", value: 131074, isUnsigned: true)
!388 = !DIEnumerator(name: "ABDAY_4", value: 131075, isUnsigned: true)
!389 = !DIEnumerator(name: "ABDAY_5", value: 131076, isUnsigned: true)
!390 = !DIEnumerator(name: "ABDAY_6", value: 131077, isUnsigned: true)
!391 = !DIEnumerator(name: "ABDAY_7", value: 131078, isUnsigned: true)
!392 = !DIEnumerator(name: "DAY_1", value: 131079, isUnsigned: true)
!393 = !DIEnumerator(name: "DAY_2", value: 131080, isUnsigned: true)
!394 = !DIEnumerator(name: "DAY_3", value: 131081, isUnsigned: true)
!395 = !DIEnumerator(name: "DAY_4", value: 131082, isUnsigned: true)
!396 = !DIEnumerator(name: "DAY_5", value: 131083, isUnsigned: true)
!397 = !DIEnumerator(name: "DAY_6", value: 131084, isUnsigned: true)
!398 = !DIEnumerator(name: "DAY_7", value: 131085, isUnsigned: true)
!399 = !DIEnumerator(name: "ABMON_1", value: 131086, isUnsigned: true)
!400 = !DIEnumerator(name: "ABMON_2", value: 131087, isUnsigned: true)
!401 = !DIEnumerator(name: "ABMON_3", value: 131088, isUnsigned: true)
!402 = !DIEnumerator(name: "ABMON_4", value: 131089, isUnsigned: true)
!403 = !DIEnumerator(name: "ABMON_5", value: 131090, isUnsigned: true)
!404 = !DIEnumerator(name: "ABMON_6", value: 131091, isUnsigned: true)
!405 = !DIEnumerator(name: "ABMON_7", value: 131092, isUnsigned: true)
!406 = !DIEnumerator(name: "ABMON_8", value: 131093, isUnsigned: true)
!407 = !DIEnumerator(name: "ABMON_9", value: 131094, isUnsigned: true)
!408 = !DIEnumerator(name: "ABMON_10", value: 131095, isUnsigned: true)
!409 = !DIEnumerator(name: "ABMON_11", value: 131096, isUnsigned: true)
!410 = !DIEnumerator(name: "ABMON_12", value: 131097, isUnsigned: true)
!411 = !DIEnumerator(name: "MON_1", value: 131098, isUnsigned: true)
!412 = !DIEnumerator(name: "MON_2", value: 131099, isUnsigned: true)
!413 = !DIEnumerator(name: "MON_3", value: 131100, isUnsigned: true)
!414 = !DIEnumerator(name: "MON_4", value: 131101, isUnsigned: true)
!415 = !DIEnumerator(name: "MON_5", value: 131102, isUnsigned: true)
!416 = !DIEnumerator(name: "MON_6", value: 131103, isUnsigned: true)
!417 = !DIEnumerator(name: "MON_7", value: 131104, isUnsigned: true)
!418 = !DIEnumerator(name: "MON_8", value: 131105, isUnsigned: true)
!419 = !DIEnumerator(name: "MON_9", value: 131106, isUnsigned: true)
!420 = !DIEnumerator(name: "MON_10", value: 131107, isUnsigned: true)
!421 = !DIEnumerator(name: "MON_11", value: 131108, isUnsigned: true)
!422 = !DIEnumerator(name: "MON_12", value: 131109, isUnsigned: true)
!423 = !DIEnumerator(name: "AM_STR", value: 131110, isUnsigned: true)
!424 = !DIEnumerator(name: "PM_STR", value: 131111, isUnsigned: true)
!425 = !DIEnumerator(name: "D_T_FMT", value: 131112, isUnsigned: true)
!426 = !DIEnumerator(name: "D_FMT", value: 131113, isUnsigned: true)
!427 = !DIEnumerator(name: "T_FMT", value: 131114, isUnsigned: true)
!428 = !DIEnumerator(name: "T_FMT_AMPM", value: 131115, isUnsigned: true)
!429 = !DIEnumerator(name: "ERA", value: 131116, isUnsigned: true)
!430 = !DIEnumerator(name: "__ERA_YEAR", value: 131117, isUnsigned: true)
!431 = !DIEnumerator(name: "ERA_D_FMT", value: 131118, isUnsigned: true)
!432 = !DIEnumerator(name: "ALT_DIGITS", value: 131119, isUnsigned: true)
!433 = !DIEnumerator(name: "ERA_D_T_FMT", value: 131120, isUnsigned: true)
!434 = !DIEnumerator(name: "ERA_T_FMT", value: 131121, isUnsigned: true)
!435 = !DIEnumerator(name: "_NL_TIME_ERA_NUM_ENTRIES", value: 131122, isUnsigned: true)
!436 = !DIEnumerator(name: "_NL_TIME_ERA_ENTRIES", value: 131123, isUnsigned: true)
!437 = !DIEnumerator(name: "_NL_WABDAY_1", value: 131124, isUnsigned: true)
!438 = !DIEnumerator(name: "_NL_WABDAY_2", value: 131125, isUnsigned: true)
!439 = !DIEnumerator(name: "_NL_WABDAY_3", value: 131126, isUnsigned: true)
!440 = !DIEnumerator(name: "_NL_WABDAY_4", value: 131127, isUnsigned: true)
!441 = !DIEnumerator(name: "_NL_WABDAY_5", value: 131128, isUnsigned: true)
!442 = !DIEnumerator(name: "_NL_WABDAY_6", value: 131129, isUnsigned: true)
!443 = !DIEnumerator(name: "_NL_WABDAY_7", value: 131130, isUnsigned: true)
!444 = !DIEnumerator(name: "_NL_WDAY_1", value: 131131, isUnsigned: true)
!445 = !DIEnumerator(name: "_NL_WDAY_2", value: 131132, isUnsigned: true)
!446 = !DIEnumerator(name: "_NL_WDAY_3", value: 131133, isUnsigned: true)
!447 = !DIEnumerator(name: "_NL_WDAY_4", value: 131134, isUnsigned: true)
!448 = !DIEnumerator(name: "_NL_WDAY_5", value: 131135, isUnsigned: true)
!449 = !DIEnumerator(name: "_NL_WDAY_6", value: 131136, isUnsigned: true)
!450 = !DIEnumerator(name: "_NL_WDAY_7", value: 131137, isUnsigned: true)
!451 = !DIEnumerator(name: "_NL_WABMON_1", value: 131138, isUnsigned: true)
!452 = !DIEnumerator(name: "_NL_WABMON_2", value: 131139, isUnsigned: true)
!453 = !DIEnumerator(name: "_NL_WABMON_3", value: 131140, isUnsigned: true)
!454 = !DIEnumerator(name: "_NL_WABMON_4", value: 131141, isUnsigned: true)
!455 = !DIEnumerator(name: "_NL_WABMON_5", value: 131142, isUnsigned: true)
!456 = !DIEnumerator(name: "_NL_WABMON_6", value: 131143, isUnsigned: true)
!457 = !DIEnumerator(name: "_NL_WABMON_7", value: 131144, isUnsigned: true)
!458 = !DIEnumerator(name: "_NL_WABMON_8", value: 131145, isUnsigned: true)
!459 = !DIEnumerator(name: "_NL_WABMON_9", value: 131146, isUnsigned: true)
!460 = !DIEnumerator(name: "_NL_WABMON_10", value: 131147, isUnsigned: true)
!461 = !DIEnumerator(name: "_NL_WABMON_11", value: 131148, isUnsigned: true)
!462 = !DIEnumerator(name: "_NL_WABMON_12", value: 131149, isUnsigned: true)
!463 = !DIEnumerator(name: "_NL_WMON_1", value: 131150, isUnsigned: true)
!464 = !DIEnumerator(name: "_NL_WMON_2", value: 131151, isUnsigned: true)
!465 = !DIEnumerator(name: "_NL_WMON_3", value: 131152, isUnsigned: true)
!466 = !DIEnumerator(name: "_NL_WMON_4", value: 131153, isUnsigned: true)
!467 = !DIEnumerator(name: "_NL_WMON_5", value: 131154, isUnsigned: true)
!468 = !DIEnumerator(name: "_NL_WMON_6", value: 131155, isUnsigned: true)
!469 = !DIEnumerator(name: "_NL_WMON_7", value: 131156, isUnsigned: true)
!470 = !DIEnumerator(name: "_NL_WMON_8", value: 131157, isUnsigned: true)
!471 = !DIEnumerator(name: "_NL_WMON_9", value: 131158, isUnsigned: true)
!472 = !DIEnumerator(name: "_NL_WMON_10", value: 131159, isUnsigned: true)
!473 = !DIEnumerator(name: "_NL_WMON_11", value: 131160, isUnsigned: true)
!474 = !DIEnumerator(name: "_NL_WMON_12", value: 131161, isUnsigned: true)
!475 = !DIEnumerator(name: "_NL_WAM_STR", value: 131162, isUnsigned: true)
!476 = !DIEnumerator(name: "_NL_WPM_STR", value: 131163, isUnsigned: true)
!477 = !DIEnumerator(name: "_NL_WD_T_FMT", value: 131164, isUnsigned: true)
!478 = !DIEnumerator(name: "_NL_WD_FMT", value: 131165, isUnsigned: true)
!479 = !DIEnumerator(name: "_NL_WT_FMT", value: 131166, isUnsigned: true)
!480 = !DIEnumerator(name: "_NL_WT_FMT_AMPM", value: 131167, isUnsigned: true)
!481 = !DIEnumerator(name: "_NL_WERA_YEAR", value: 131168, isUnsigned: true)
!482 = !DIEnumerator(name: "_NL_WERA_D_FMT", value: 131169, isUnsigned: true)
!483 = !DIEnumerator(name: "_NL_WALT_DIGITS", value: 131170, isUnsigned: true)
!484 = !DIEnumerator(name: "_NL_WERA_D_T_FMT", value: 131171, isUnsigned: true)
!485 = !DIEnumerator(name: "_NL_WERA_T_FMT", value: 131172, isUnsigned: true)
!486 = !DIEnumerator(name: "_NL_TIME_WEEK_NDAYS", value: 131173, isUnsigned: true)
!487 = !DIEnumerator(name: "_NL_TIME_WEEK_1STDAY", value: 131174, isUnsigned: true)
!488 = !DIEnumerator(name: "_NL_TIME_WEEK_1STWEEK", value: 131175, isUnsigned: true)
!489 = !DIEnumerator(name: "_NL_TIME_FIRST_WEEKDAY", value: 131176, isUnsigned: true)
!490 = !DIEnumerator(name: "_NL_TIME_FIRST_WORKDAY", value: 131177, isUnsigned: true)
!491 = !DIEnumerator(name: "_NL_TIME_CAL_DIRECTION", value: 131178, isUnsigned: true)
!492 = !DIEnumerator(name: "_NL_TIME_TIMEZONE", value: 131179, isUnsigned: true)
!493 = !DIEnumerator(name: "_DATE_FMT", value: 131180, isUnsigned: true)
!494 = !DIEnumerator(name: "_NL_W_DATE_FMT", value: 131181, isUnsigned: true)
!495 = !DIEnumerator(name: "_NL_TIME_CODESET", value: 131182, isUnsigned: true)
!496 = !DIEnumerator(name: "__ALTMON_1", value: 131183, isUnsigned: true)
!497 = !DIEnumerator(name: "__ALTMON_2", value: 131184, isUnsigned: true)
!498 = !DIEnumerator(name: "__ALTMON_3", value: 131185, isUnsigned: true)
!499 = !DIEnumerator(name: "__ALTMON_4", value: 131186, isUnsigned: true)
!500 = !DIEnumerator(name: "__ALTMON_5", value: 131187, isUnsigned: true)
!501 = !DIEnumerator(name: "__ALTMON_6", value: 131188, isUnsigned: true)
!502 = !DIEnumerator(name: "__ALTMON_7", value: 131189, isUnsigned: true)
!503 = !DIEnumerator(name: "__ALTMON_8", value: 131190, isUnsigned: true)
!504 = !DIEnumerator(name: "__ALTMON_9", value: 131191, isUnsigned: true)
!505 = !DIEnumerator(name: "__ALTMON_10", value: 131192, isUnsigned: true)
!506 = !DIEnumerator(name: "__ALTMON_11", value: 131193, isUnsigned: true)
!507 = !DIEnumerator(name: "__ALTMON_12", value: 131194, isUnsigned: true)
!508 = !DIEnumerator(name: "_NL_WALTMON_1", value: 131195, isUnsigned: true)
!509 = !DIEnumerator(name: "_NL_WALTMON_2", value: 131196, isUnsigned: true)
!510 = !DIEnumerator(name: "_NL_WALTMON_3", value: 131197, isUnsigned: true)
!511 = !DIEnumerator(name: "_NL_WALTMON_4", value: 131198, isUnsigned: true)
!512 = !DIEnumerator(name: "_NL_WALTMON_5", value: 131199, isUnsigned: true)
!513 = !DIEnumerator(name: "_NL_WALTMON_6", value: 131200, isUnsigned: true)
!514 = !DIEnumerator(name: "_NL_WALTMON_7", value: 131201, isUnsigned: true)
!515 = !DIEnumerator(name: "_NL_WALTMON_8", value: 131202, isUnsigned: true)
!516 = !DIEnumerator(name: "_NL_WALTMON_9", value: 131203, isUnsigned: true)
!517 = !DIEnumerator(name: "_NL_WALTMON_10", value: 131204, isUnsigned: true)
!518 = !DIEnumerator(name: "_NL_WALTMON_11", value: 131205, isUnsigned: true)
!519 = !DIEnumerator(name: "_NL_WALTMON_12", value: 131206, isUnsigned: true)
!520 = !DIEnumerator(name: "_NL_ABALTMON_1", value: 131207, isUnsigned: true)
!521 = !DIEnumerator(name: "_NL_ABALTMON_2", value: 131208, isUnsigned: true)
!522 = !DIEnumerator(name: "_NL_ABALTMON_3", value: 131209, isUnsigned: true)
!523 = !DIEnumerator(name: "_NL_ABALTMON_4", value: 131210, isUnsigned: true)
!524 = !DIEnumerator(name: "_NL_ABALTMON_5", value: 131211, isUnsigned: true)
!525 = !DIEnumerator(name: "_NL_ABALTMON_6", value: 131212, isUnsigned: true)
!526 = !DIEnumerator(name: "_NL_ABALTMON_7", value: 131213, isUnsigned: true)
!527 = !DIEnumerator(name: "_NL_ABALTMON_8", value: 131214, isUnsigned: true)
!528 = !DIEnumerator(name: "_NL_ABALTMON_9", value: 131215, isUnsigned: true)
!529 = !DIEnumerator(name: "_NL_ABALTMON_10", value: 131216, isUnsigned: true)
!530 = !DIEnumerator(name: "_NL_ABALTMON_11", value: 131217, isUnsigned: true)
!531 = !DIEnumerator(name: "_NL_ABALTMON_12", value: 131218, isUnsigned: true)
!532 = !DIEnumerator(name: "_NL_WABALTMON_1", value: 131219, isUnsigned: true)
!533 = !DIEnumerator(name: "_NL_WABALTMON_2", value: 131220, isUnsigned: true)
!534 = !DIEnumerator(name: "_NL_WABALTMON_3", value: 131221, isUnsigned: true)
!535 = !DIEnumerator(name: "_NL_WABALTMON_4", value: 131222, isUnsigned: true)
!536 = !DIEnumerator(name: "_NL_WABALTMON_5", value: 131223, isUnsigned: true)
!537 = !DIEnumerator(name: "_NL_WABALTMON_6", value: 131224, isUnsigned: true)
!538 = !DIEnumerator(name: "_NL_WABALTMON_7", value: 131225, isUnsigned: true)
!539 = !DIEnumerator(name: "_NL_WABALTMON_8", value: 131226, isUnsigned: true)
!540 = !DIEnumerator(name: "_NL_WABALTMON_9", value: 131227, isUnsigned: true)
!541 = !DIEnumerator(name: "_NL_WABALTMON_10", value: 131228, isUnsigned: true)
!542 = !DIEnumerator(name: "_NL_WABALTMON_11", value: 131229, isUnsigned: true)
!543 = !DIEnumerator(name: "_NL_WABALTMON_12", value: 131230, isUnsigned: true)
!544 = !DIEnumerator(name: "_NL_NUM_LC_TIME", value: 131231, isUnsigned: true)
!545 = !DIEnumerator(name: "_NL_COLLATE_NRULES", value: 196608, isUnsigned: true)
!546 = !DIEnumerator(name: "_NL_COLLATE_RULESETS", value: 196609, isUnsigned: true)
!547 = !DIEnumerator(name: "_NL_COLLATE_TABLEMB", value: 196610, isUnsigned: true)
!548 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTMB", value: 196611, isUnsigned: true)
!549 = !DIEnumerator(name: "_NL_COLLATE_EXTRAMB", value: 196612, isUnsigned: true)
!550 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTMB", value: 196613, isUnsigned: true)
!551 = !DIEnumerator(name: "_NL_COLLATE_GAP1", value: 196614, isUnsigned: true)
!552 = !DIEnumerator(name: "_NL_COLLATE_GAP2", value: 196615, isUnsigned: true)
!553 = !DIEnumerator(name: "_NL_COLLATE_GAP3", value: 196616, isUnsigned: true)
!554 = !DIEnumerator(name: "_NL_COLLATE_TABLEWC", value: 196617, isUnsigned: true)
!555 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTWC", value: 196618, isUnsigned: true)
!556 = !DIEnumerator(name: "_NL_COLLATE_EXTRAWC", value: 196619, isUnsigned: true)
!557 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTWC", value: 196620, isUnsigned: true)
!558 = !DIEnumerator(name: "_NL_COLLATE_SYMB_HASH_SIZEMB", value: 196621, isUnsigned: true)
!559 = !DIEnumerator(name: "_NL_COLLATE_SYMB_TABLEMB", value: 196622, isUnsigned: true)
!560 = !DIEnumerator(name: "_NL_COLLATE_SYMB_EXTRAMB", value: 196623, isUnsigned: true)
!561 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQMB", value: 196624, isUnsigned: true)
!562 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQWC", value: 196625, isUnsigned: true)
!563 = !DIEnumerator(name: "_NL_COLLATE_CODESET", value: 196626, isUnsigned: true)
!564 = !DIEnumerator(name: "_NL_NUM_LC_COLLATE", value: 196627, isUnsigned: true)
!565 = !DIEnumerator(name: "_NL_CTYPE_CLASS", value: 0, isUnsigned: true)
!566 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER", value: 1, isUnsigned: true)
!567 = !DIEnumerator(name: "_NL_CTYPE_GAP1", value: 2, isUnsigned: true)
!568 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER", value: 3, isUnsigned: true)
!569 = !DIEnumerator(name: "_NL_CTYPE_GAP2", value: 4, isUnsigned: true)
!570 = !DIEnumerator(name: "_NL_CTYPE_CLASS32", value: 5, isUnsigned: true)
!571 = !DIEnumerator(name: "_NL_CTYPE_GAP3", value: 6, isUnsigned: true)
!572 = !DIEnumerator(name: "_NL_CTYPE_GAP4", value: 7, isUnsigned: true)
!573 = !DIEnumerator(name: "_NL_CTYPE_GAP5", value: 8, isUnsigned: true)
!574 = !DIEnumerator(name: "_NL_CTYPE_GAP6", value: 9, isUnsigned: true)
!575 = !DIEnumerator(name: "_NL_CTYPE_CLASS_NAMES", value: 10, isUnsigned: true)
!576 = !DIEnumerator(name: "_NL_CTYPE_MAP_NAMES", value: 11, isUnsigned: true)
!577 = !DIEnumerator(name: "_NL_CTYPE_WIDTH", value: 12, isUnsigned: true)
!578 = !DIEnumerator(name: "_NL_CTYPE_MB_CUR_MAX", value: 13, isUnsigned: true)
!579 = !DIEnumerator(name: "_NL_CTYPE_CODESET_NAME", value: 14, isUnsigned: true)
!580 = !DIEnumerator(name: "CODESET", value: 14, isUnsigned: true)
!581 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER32", value: 15, isUnsigned: true)
!582 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER32", value: 16, isUnsigned: true)
!583 = !DIEnumerator(name: "_NL_CTYPE_CLASS_OFFSET", value: 17, isUnsigned: true)
!584 = !DIEnumerator(name: "_NL_CTYPE_MAP_OFFSET", value: 18, isUnsigned: true)
!585 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_MB_LEN", value: 19, isUnsigned: true)
!586 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_MB", value: 20, isUnsigned: true)
!587 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_MB", value: 21, isUnsigned: true)
!588 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_MB", value: 22, isUnsigned: true)
!589 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_MB", value: 23, isUnsigned: true)
!590 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_MB", value: 24, isUnsigned: true)
!591 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_MB", value: 25, isUnsigned: true)
!592 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_MB", value: 26, isUnsigned: true)
!593 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_MB", value: 27, isUnsigned: true)
!594 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_MB", value: 28, isUnsigned: true)
!595 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_MB", value: 29, isUnsigned: true)
!596 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_WC_LEN", value: 30, isUnsigned: true)
!597 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_WC", value: 31, isUnsigned: true)
!598 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_WC", value: 32, isUnsigned: true)
!599 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_WC", value: 33, isUnsigned: true)
!600 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_WC", value: 34, isUnsigned: true)
!601 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_WC", value: 35, isUnsigned: true)
!602 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_WC", value: 36, isUnsigned: true)
!603 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_WC", value: 37, isUnsigned: true)
!604 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_WC", value: 38, isUnsigned: true)
!605 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_WC", value: 39, isUnsigned: true)
!606 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_WC", value: 40, isUnsigned: true)
!607 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_MB", value: 41, isUnsigned: true)
!608 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_MB", value: 42, isUnsigned: true)
!609 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_MB", value: 43, isUnsigned: true)
!610 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_MB", value: 44, isUnsigned: true)
!611 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_MB", value: 45, isUnsigned: true)
!612 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_MB", value: 46, isUnsigned: true)
!613 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_MB", value: 47, isUnsigned: true)
!614 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_MB", value: 48, isUnsigned: true)
!615 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_MB", value: 49, isUnsigned: true)
!616 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_MB", value: 50, isUnsigned: true)
!617 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_WC", value: 51, isUnsigned: true)
!618 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_WC", value: 52, isUnsigned: true)
!619 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_WC", value: 53, isUnsigned: true)
!620 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_WC", value: 54, isUnsigned: true)
!621 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_WC", value: 55, isUnsigned: true)
!622 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_WC", value: 56, isUnsigned: true)
!623 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_WC", value: 57, isUnsigned: true)
!624 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_WC", value: 58, isUnsigned: true)
!625 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_WC", value: 59, isUnsigned: true)
!626 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_WC", value: 60, isUnsigned: true)
!627 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TAB_SIZE", value: 61, isUnsigned: true)
!628 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_IDX", value: 62, isUnsigned: true)
!629 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_TBL", value: 63, isUnsigned: true)
!630 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_IDX", value: 64, isUnsigned: true)
!631 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_TBL", value: 65, isUnsigned: true)
!632 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING_LEN", value: 66, isUnsigned: true)
!633 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING", value: 67, isUnsigned: true)
!634 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE_LEN", value: 68, isUnsigned: true)
!635 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE", value: 69, isUnsigned: true)
!636 = !DIEnumerator(name: "_NL_CTYPE_MAP_TO_NONASCII", value: 70, isUnsigned: true)
!637 = !DIEnumerator(name: "_NL_CTYPE_NONASCII_CASE", value: 71, isUnsigned: true)
!638 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_1", value: 72, isUnsigned: true)
!639 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_2", value: 73, isUnsigned: true)
!640 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_3", value: 74, isUnsigned: true)
!641 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_4", value: 75, isUnsigned: true)
!642 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_5", value: 76, isUnsigned: true)
!643 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_6", value: 77, isUnsigned: true)
!644 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_7", value: 78, isUnsigned: true)
!645 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_8", value: 79, isUnsigned: true)
!646 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_9", value: 80, isUnsigned: true)
!647 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_10", value: 81, isUnsigned: true)
!648 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_11", value: 82, isUnsigned: true)
!649 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_12", value: 83, isUnsigned: true)
!650 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_13", value: 84, isUnsigned: true)
!651 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_14", value: 85, isUnsigned: true)
!652 = !DIEnumerator(name: "_NL_NUM_LC_CTYPE", value: 86, isUnsigned: true)
!653 = !DIEnumerator(name: "__INT_CURR_SYMBOL", value: 262144, isUnsigned: true)
!654 = !DIEnumerator(name: "__CURRENCY_SYMBOL", value: 262145, isUnsigned: true)
!655 = !DIEnumerator(name: "__MON_DECIMAL_POINT", value: 262146, isUnsigned: true)
!656 = !DIEnumerator(name: "__MON_THOUSANDS_SEP", value: 262147, isUnsigned: true)
!657 = !DIEnumerator(name: "__MON_GROUPING", value: 262148, isUnsigned: true)
!658 = !DIEnumerator(name: "__POSITIVE_SIGN", value: 262149, isUnsigned: true)
!659 = !DIEnumerator(name: "__NEGATIVE_SIGN", value: 262150, isUnsigned: true)
!660 = !DIEnumerator(name: "__INT_FRAC_DIGITS", value: 262151, isUnsigned: true)
!661 = !DIEnumerator(name: "__FRAC_DIGITS", value: 262152, isUnsigned: true)
!662 = !DIEnumerator(name: "__P_CS_PRECEDES", value: 262153, isUnsigned: true)
!663 = !DIEnumerator(name: "__P_SEP_BY_SPACE", value: 262154, isUnsigned: true)
!664 = !DIEnumerator(name: "__N_CS_PRECEDES", value: 262155, isUnsigned: true)
!665 = !DIEnumerator(name: "__N_SEP_BY_SPACE", value: 262156, isUnsigned: true)
!666 = !DIEnumerator(name: "__P_SIGN_POSN", value: 262157, isUnsigned: true)
!667 = !DIEnumerator(name: "__N_SIGN_POSN", value: 262158, isUnsigned: true)
!668 = !DIEnumerator(name: "_NL_MONETARY_CRNCYSTR", value: 262159, isUnsigned: true)
!669 = !DIEnumerator(name: "__INT_P_CS_PRECEDES", value: 262160, isUnsigned: true)
!670 = !DIEnumerator(name: "__INT_P_SEP_BY_SPACE", value: 262161, isUnsigned: true)
!671 = !DIEnumerator(name: "__INT_N_CS_PRECEDES", value: 262162, isUnsigned: true)
!672 = !DIEnumerator(name: "__INT_N_SEP_BY_SPACE", value: 262163, isUnsigned: true)
!673 = !DIEnumerator(name: "__INT_P_SIGN_POSN", value: 262164, isUnsigned: true)
!674 = !DIEnumerator(name: "__INT_N_SIGN_POSN", value: 262165, isUnsigned: true)
!675 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_CURR_SYMBOL", value: 262166, isUnsigned: true)
!676 = !DIEnumerator(name: "_NL_MONETARY_DUO_CURRENCY_SYMBOL", value: 262167, isUnsigned: true)
!677 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_FRAC_DIGITS", value: 262168, isUnsigned: true)
!678 = !DIEnumerator(name: "_NL_MONETARY_DUO_FRAC_DIGITS", value: 262169, isUnsigned: true)
!679 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_CS_PRECEDES", value: 262170, isUnsigned: true)
!680 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SEP_BY_SPACE", value: 262171, isUnsigned: true)
!681 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_CS_PRECEDES", value: 262172, isUnsigned: true)
!682 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SEP_BY_SPACE", value: 262173, isUnsigned: true)
!683 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_CS_PRECEDES", value: 262174, isUnsigned: true)
!684 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SEP_BY_SPACE", value: 262175, isUnsigned: true)
!685 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_CS_PRECEDES", value: 262176, isUnsigned: true)
!686 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SEP_BY_SPACE", value: 262177, isUnsigned: true)
!687 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SIGN_POSN", value: 262178, isUnsigned: true)
!688 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SIGN_POSN", value: 262179, isUnsigned: true)
!689 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SIGN_POSN", value: 262180, isUnsigned: true)
!690 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SIGN_POSN", value: 262181, isUnsigned: true)
!691 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_FROM", value: 262182, isUnsigned: true)
!692 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_TO", value: 262183, isUnsigned: true)
!693 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_FROM", value: 262184, isUnsigned: true)
!694 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_TO", value: 262185, isUnsigned: true)
!695 = !DIEnumerator(name: "_NL_MONETARY_CONVERSION_RATE", value: 262186, isUnsigned: true)
!696 = !DIEnumerator(name: "_NL_MONETARY_DECIMAL_POINT_WC", value: 262187, isUnsigned: true)
!697 = !DIEnumerator(name: "_NL_MONETARY_THOUSANDS_SEP_WC", value: 262188, isUnsigned: true)
!698 = !DIEnumerator(name: "_NL_MONETARY_CODESET", value: 262189, isUnsigned: true)
!699 = !DIEnumerator(name: "_NL_NUM_LC_MONETARY", value: 262190, isUnsigned: true)
!700 = !DIEnumerator(name: "__DECIMAL_POINT", value: 65536, isUnsigned: true)
!701 = !DIEnumerator(name: "RADIXCHAR", value: 65536, isUnsigned: true)
!702 = !DIEnumerator(name: "__THOUSANDS_SEP", value: 65537, isUnsigned: true)
!703 = !DIEnumerator(name: "THOUSEP", value: 65537, isUnsigned: true)
!704 = !DIEnumerator(name: "__GROUPING", value: 65538, isUnsigned: true)
!705 = !DIEnumerator(name: "_NL_NUMERIC_DECIMAL_POINT_WC", value: 65539, isUnsigned: true)
!706 = !DIEnumerator(name: "_NL_NUMERIC_THOUSANDS_SEP_WC", value: 65540, isUnsigned: true)
!707 = !DIEnumerator(name: "_NL_NUMERIC_CODESET", value: 65541, isUnsigned: true)
!708 = !DIEnumerator(name: "_NL_NUM_LC_NUMERIC", value: 65542, isUnsigned: true)
!709 = !DIEnumerator(name: "__YESEXPR", value: 327680, isUnsigned: true)
!710 = !DIEnumerator(name: "__NOEXPR", value: 327681, isUnsigned: true)
!711 = !DIEnumerator(name: "__YESSTR", value: 327682, isUnsigned: true)
!712 = !DIEnumerator(name: "__NOSTR", value: 327683, isUnsigned: true)
!713 = !DIEnumerator(name: "_NL_MESSAGES_CODESET", value: 327684, isUnsigned: true)
!714 = !DIEnumerator(name: "_NL_NUM_LC_MESSAGES", value: 327685, isUnsigned: true)
!715 = !DIEnumerator(name: "_NL_PAPER_HEIGHT", value: 458752, isUnsigned: true)
!716 = !DIEnumerator(name: "_NL_PAPER_WIDTH", value: 458753, isUnsigned: true)
!717 = !DIEnumerator(name: "_NL_PAPER_CODESET", value: 458754, isUnsigned: true)
!718 = !DIEnumerator(name: "_NL_NUM_LC_PAPER", value: 458755, isUnsigned: true)
!719 = !DIEnumerator(name: "_NL_NAME_NAME_FMT", value: 524288, isUnsigned: true)
!720 = !DIEnumerator(name: "_NL_NAME_NAME_GEN", value: 524289, isUnsigned: true)
!721 = !DIEnumerator(name: "_NL_NAME_NAME_MR", value: 524290, isUnsigned: true)
!722 = !DIEnumerator(name: "_NL_NAME_NAME_MRS", value: 524291, isUnsigned: true)
!723 = !DIEnumerator(name: "_NL_NAME_NAME_MISS", value: 524292, isUnsigned: true)
!724 = !DIEnumerator(name: "_NL_NAME_NAME_MS", value: 524293, isUnsigned: true)
!725 = !DIEnumerator(name: "_NL_NAME_CODESET", value: 524294, isUnsigned: true)
!726 = !DIEnumerator(name: "_NL_NUM_LC_NAME", value: 524295, isUnsigned: true)
!727 = !DIEnumerator(name: "_NL_ADDRESS_POSTAL_FMT", value: 589824, isUnsigned: true)
!728 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NAME", value: 589825, isUnsigned: true)
!729 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_POST", value: 589826, isUnsigned: true)
!730 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB2", value: 589827, isUnsigned: true)
!731 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB3", value: 589828, isUnsigned: true)
!732 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_CAR", value: 589829, isUnsigned: true)
!733 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NUM", value: 589830, isUnsigned: true)
!734 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_ISBN", value: 589831, isUnsigned: true)
!735 = !DIEnumerator(name: "_NL_ADDRESS_LANG_NAME", value: 589832, isUnsigned: true)
!736 = !DIEnumerator(name: "_NL_ADDRESS_LANG_AB", value: 589833, isUnsigned: true)
!737 = !DIEnumerator(name: "_NL_ADDRESS_LANG_TERM", value: 589834, isUnsigned: true)
!738 = !DIEnumerator(name: "_NL_ADDRESS_LANG_LIB", value: 589835, isUnsigned: true)
!739 = !DIEnumerator(name: "_NL_ADDRESS_CODESET", value: 589836, isUnsigned: true)
!740 = !DIEnumerator(name: "_NL_NUM_LC_ADDRESS", value: 589837, isUnsigned: true)
!741 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_INT_FMT", value: 655360, isUnsigned: true)
!742 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_DOM_FMT", value: 655361, isUnsigned: true)
!743 = !DIEnumerator(name: "_NL_TELEPHONE_INT_SELECT", value: 655362, isUnsigned: true)
!744 = !DIEnumerator(name: "_NL_TELEPHONE_INT_PREFIX", value: 655363, isUnsigned: true)
!745 = !DIEnumerator(name: "_NL_TELEPHONE_CODESET", value: 655364, isUnsigned: true)
!746 = !DIEnumerator(name: "_NL_NUM_LC_TELEPHONE", value: 655365, isUnsigned: true)
!747 = !DIEnumerator(name: "_NL_MEASUREMENT_MEASUREMENT", value: 720896, isUnsigned: true)
!748 = !DIEnumerator(name: "_NL_MEASUREMENT_CODESET", value: 720897, isUnsigned: true)
!749 = !DIEnumerator(name: "_NL_NUM_LC_MEASUREMENT", value: 720898, isUnsigned: true)
!750 = !DIEnumerator(name: "_NL_IDENTIFICATION_TITLE", value: 786432, isUnsigned: true)
!751 = !DIEnumerator(name: "_NL_IDENTIFICATION_SOURCE", value: 786433, isUnsigned: true)
!752 = !DIEnumerator(name: "_NL_IDENTIFICATION_ADDRESS", value: 786434, isUnsigned: true)
!753 = !DIEnumerator(name: "_NL_IDENTIFICATION_CONTACT", value: 786435, isUnsigned: true)
!754 = !DIEnumerator(name: "_NL_IDENTIFICATION_EMAIL", value: 786436, isUnsigned: true)
!755 = !DIEnumerator(name: "_NL_IDENTIFICATION_TEL", value: 786437, isUnsigned: true)
!756 = !DIEnumerator(name: "_NL_IDENTIFICATION_FAX", value: 786438, isUnsigned: true)
!757 = !DIEnumerator(name: "_NL_IDENTIFICATION_LANGUAGE", value: 786439, isUnsigned: true)
!758 = !DIEnumerator(name: "_NL_IDENTIFICATION_TERRITORY", value: 786440, isUnsigned: true)
!759 = !DIEnumerator(name: "_NL_IDENTIFICATION_AUDIENCE", value: 786441, isUnsigned: true)
!760 = !DIEnumerator(name: "_NL_IDENTIFICATION_APPLICATION", value: 786442, isUnsigned: true)
!761 = !DIEnumerator(name: "_NL_IDENTIFICATION_ABBREVIATION", value: 786443, isUnsigned: true)
!762 = !DIEnumerator(name: "_NL_IDENTIFICATION_REVISION", value: 786444, isUnsigned: true)
!763 = !DIEnumerator(name: "_NL_IDENTIFICATION_DATE", value: 786445, isUnsigned: true)
!764 = !DIEnumerator(name: "_NL_IDENTIFICATION_CATEGORY", value: 786446, isUnsigned: true)
!765 = !DIEnumerator(name: "_NL_IDENTIFICATION_CODESET", value: 786447, isUnsigned: true)
!766 = !DIEnumerator(name: "_NL_NUM_LC_IDENTIFICATION", value: 786448, isUnsigned: true)
!767 = !DIEnumerator(name: "_NL_NUM", value: 786449, isUnsigned: true)
!768 = distinct !DICompileUnit(language: DW_LANG_C99, file: !769, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !221, retainedTypes: !344, splitDebugInlining: false, nameTableKind: None)
!769 = !DIFile(filename: "lib/setlocale_null.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!770 = !{!"clang version 12.0.1"}
!771 = !{i32 7, !"Dwarf Version", i32 4}
!772 = !{i32 2, !"Debug Info Version", i32 3}
!773 = !{i32 1, !"wchar_size", i32 4}
!774 = !{i32 7, !"PIC Level", i32 2}
!775 = !{i32 7, !"PIE Level", i32 2}
!776 = distinct !DISubprogram(name: "usage", scope: !3, file: !3, line: 223, type: !777, scopeLine: 224, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !779)
!777 = !DISubroutineType(types: !778)
!778 = !{null, !64}
!779 = !{!780}
!780 = !DILocalVariable(name: "status", arg: 1, scope: !776, file: !3, line: 223, type: !64)
!781 = !DILocation(line: 0, scope: !776)
!782 = !DILocation(line: 225, column: 14, scope: !783)
!783 = distinct !DILexicalBlock(scope: !776, file: !3, line: 225, column: 7)
!784 = !DILocation(line: 225, column: 7, scope: !776)
!785 = !DILocation(line: 226, column: 5, scope: !786)
!786 = distinct !DILexicalBlock(scope: !783, file: !3, line: 226, column: 5)
!787 = !{!788, !788, i64 0}
!788 = !{!"any pointer", !789, i64 0}
!789 = !{!"omnipotent char", !790, i64 0}
!790 = !{!"Simple C/C++ TBAA"}
!791 = !DILocation(line: 229, column: 7, scope: !792)
!792 = distinct !DILexicalBlock(scope: !783, file: !3, line: 228, column: 5)
!793 = !DILocation(line: 583, column: 3, scope: !794, inlinedAt: !797)
!794 = distinct !DISubprogram(name: "emit_stdin_note", scope: !36, file: !36, line: 581, type: !795, scopeLine: 582, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !221)
!795 = !DISubroutineType(types: !796)
!796 = !{null}
!797 = distinct !DILocation(line: 237, column: 7, scope: !792)
!798 = !DILocation(line: 244, column: 9, scope: !799)
!799 = distinct !DILexicalBlock(scope: !792, file: !3, line: 238, column: 11)
!800 = !DILocation(line: 249, column: 7, scope: !792)
!801 = !DILocation(line: 258, column: 7, scope: !792)
!802 = !DILocation(line: 266, column: 9, scope: !803)
!803 = distinct !DILexicalBlock(scope: !792, file: !3, line: 261, column: 11)
!804 = !DILocation(line: 269, column: 7, scope: !792)
!805 = !DILocation(line: 273, column: 7, scope: !792)
!806 = !DILocation(line: 283, column: 7, scope: !792)
!807 = !DILocation(line: 284, column: 7, scope: !792)
!808 = !DILocation(line: 285, column: 7, scope: !792)
!809 = !DILocalVariable(name: "program", arg: 1, scope: !810, file: !36, line: 634, type: !93)
!810 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !36, file: !36, line: 634, type: !811, scopeLine: 635, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !813)
!811 = !DISubroutineType(types: !812)
!812 = !{null, !93}
!813 = !{!809, !814, !823, !824, !826}
!814 = !DILocalVariable(name: "infomap", scope: !810, file: !36, line: 636, type: !815)
!815 = !DICompositeType(tag: DW_TAG_array_type, baseType: !816, size: 896, elements: !821)
!816 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !817)
!817 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !810, file: !36, line: 636, size: 128, elements: !818)
!818 = !{!819, !820}
!819 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !817, file: !36, line: 636, baseType: !93, size: 64)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !817, file: !36, line: 636, baseType: !93, size: 64, offset: 64)
!821 = !{!822}
!822 = !DISubrange(count: 7)
!823 = !DILocalVariable(name: "node", scope: !810, file: !36, line: 646, type: !93)
!824 = !DILocalVariable(name: "map_prog", scope: !810, file: !36, line: 647, type: !825)
!825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !816, size: 64)
!826 = !DILocalVariable(name: "lc_messages", scope: !810, file: !36, line: 659, type: !93)
!827 = !DILocation(line: 0, scope: !810, inlinedAt: !828)
!828 = distinct !DILocation(line: 295, column: 7, scope: !792)
!829 = !DILocation(line: 636, column: 3, scope: !810, inlinedAt: !828)
!830 = !DILocation(line: 636, column: 67, scope: !810, inlinedAt: !828)
!831 = !DILocation(line: 647, column: 36, scope: !810, inlinedAt: !828)
!832 = !DILocation(line: 649, column: 3, scope: !810, inlinedAt: !828)
!833 = !DILocation(line: 649, column: 33, scope: !810, inlinedAt: !828)
!834 = !DILocation(line: 650, column: 13, scope: !810, inlinedAt: !828)
!835 = !DILocation(line: 649, column: 20, scope: !810, inlinedAt: !828)
!836 = !{!837, !788, i64 0}
!837 = !{!"infomap", !788, i64 0, !788, i64 8}
!838 = !DILocation(line: 649, column: 10, scope: !810, inlinedAt: !828)
!839 = !DILocation(line: 649, column: 28, scope: !810, inlinedAt: !828)
!840 = distinct !{!840, !832, !834, !841}
!841 = !{!"llvm.loop.mustprogress"}
!842 = !DILocation(line: 652, column: 17, scope: !843, inlinedAt: !828)
!843 = distinct !DILexicalBlock(scope: !810, file: !36, line: 652, column: 7)
!844 = !{!837, !788, i64 8}
!845 = !DILocation(line: 652, column: 7, scope: !843, inlinedAt: !828)
!846 = !DILocation(line: 652, column: 7, scope: !810, inlinedAt: !828)
!847 = !DILocation(line: 655, column: 3, scope: !810, inlinedAt: !828)
!848 = !DILocation(line: 659, column: 29, scope: !810, inlinedAt: !828)
!849 = !DILocation(line: 660, column: 7, scope: !850, inlinedAt: !828)
!850 = distinct !DILexicalBlock(scope: !810, file: !36, line: 660, column: 7)
!851 = !DILocation(line: 660, column: 19, scope: !850, inlinedAt: !828)
!852 = !DILocation(line: 660, column: 22, scope: !850, inlinedAt: !828)
!853 = !DILocation(line: 660, column: 7, scope: !810, inlinedAt: !828)
!854 = !DILocation(line: 666, column: 7, scope: !855, inlinedAt: !828)
!855 = distinct !DILexicalBlock(scope: !850, file: !36, line: 661, column: 5)
!856 = !DILocation(line: 668, column: 5, scope: !855, inlinedAt: !828)
!857 = !DILocation(line: 669, column: 3, scope: !810, inlinedAt: !828)
!858 = !DILocation(line: 671, column: 3, scope: !810, inlinedAt: !828)
!859 = !DILocation(line: 673, column: 1, scope: !810, inlinedAt: !828)
!860 = !DILocation(line: 298, column: 3, scope: !776)
!861 = !DISubprogram(name: "dcgettext", scope: !862, file: !862, line: 51, type: !863, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !221)
!862 = !DIFile(filename: "/usr/include/libintl.h", directory: "")
!863 = !DISubroutineType(types: !864)
!864 = !{!59, !93, !93, !64}
!865 = !DISubprogram(name: "fputs_unlocked", scope: !866, file: !866, line: 667, type: !867, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !221)
!866 = !DIFile(filename: "/usr/include/stdio.h", directory: "")
!867 = !DISubroutineType(types: !868)
!868 = !{!64, !93, !120}
!869 = !DISubprogram(name: "setlocale", scope: !870, file: !870, line: 122, type: !871, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !221)
!870 = !DIFile(filename: "/usr/include/locale.h", directory: "")
!871 = !DISubroutineType(types: !872)
!872 = !{!59, !64, !93}
!873 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 861, type: !874, scopeLine: 862, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !877)
!874 = !DISubroutineType(types: !875)
!875 = !{!64, !64, !876}
!876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64)
!877 = !{!878, !879, !880, !881, !882, !883, !884, !885, !886, !887, !888, !889, !891, !894, !897, !898, !901}
!878 = !DILocalVariable(name: "argc", arg: 1, scope: !873, file: !3, line: 861, type: !64)
!879 = !DILocalVariable(name: "argv", arg: 2, scope: !873, file: !3, line: 861, type: !876)
!880 = !DILocalVariable(name: "bin_buffer_unaligned", scope: !873, file: !3, line: 863, type: !159)
!881 = !DILocalVariable(name: "bin_buffer", scope: !873, file: !3, line: 865, type: !65)
!882 = !DILocalVariable(name: "do_check", scope: !873, file: !3, line: 866, type: !71)
!883 = !DILocalVariable(name: "opt", scope: !873, file: !3, line: 867, type: !64)
!884 = !DILocalVariable(name: "ok", scope: !873, file: !3, line: 868, type: !71)
!885 = !DILocalVariable(name: "binary", scope: !873, file: !3, line: 869, type: !64)
!886 = !DILocalVariable(name: "prefix_tag", scope: !873, file: !3, line: 870, type: !71)
!887 = !DILocalVariable(name: "short_opts", scope: !873, file: !3, line: 889, type: !93)
!888 = !DILocalVariable(name: "operand_lim", scope: !873, file: !3, line: 1038, type: !876)
!889 = !DILocalVariable(name: "operandp", scope: !890, file: !3, line: 1042, type: !876)
!890 = distinct !DILexicalBlock(scope: !873, file: !3, line: 1042, column: 3)
!891 = !DILocalVariable(name: "file", scope: !892, file: !3, line: 1044, type: !59)
!892 = distinct !DILexicalBlock(scope: !893, file: !3, line: 1043, column: 5)
!893 = distinct !DILexicalBlock(scope: !890, file: !3, line: 1042, column: 3)
!894 = !DILocalVariable(name: "file_is_binary", scope: !895, file: !3, line: 1050, type: !64)
!895 = distinct !DILexicalBlock(scope: !896, file: !3, line: 1049, column: 9)
!896 = distinct !DILexicalBlock(scope: !892, file: !3, line: 1046, column: 11)
!897 = !DILocalVariable(name: "missing", scope: !895, file: !3, line: 1051, type: !71)
!898 = !DILocalVariable(name: "needs_escape", scope: !899, file: !3, line: 1064, type: !71)
!899 = distinct !DILexicalBlock(scope: !900, file: !3, line: 1056, column: 13)
!900 = distinct !DILexicalBlock(scope: !895, file: !3, line: 1053, column: 15)
!901 = !DILocalVariable(name: "i", scope: !902, file: !3, line: 1089, type: !62)
!902 = distinct !DILexicalBlock(scope: !899, file: !3, line: 1089, column: 15)
!903 = !DILocation(line: 0, scope: !873)
!904 = !DILocation(line: 863, column: 3, scope: !873)
!905 = !DILocation(line: 863, column: 17, scope: !873)
!906 = !DILocation(line: 874, column: 21, scope: !873)
!907 = !DILocation(line: 874, column: 3, scope: !873)
!908 = !DILocation(line: 875, column: 3, scope: !873)
!909 = !DILocation(line: 876, column: 3, scope: !873)
!910 = !DILocation(line: 877, column: 3, scope: !873)
!911 = !DILocation(line: 879, column: 3, scope: !873)
!912 = !DILocation(line: 883, column: 12, scope: !873)
!913 = !DILocation(line: 883, column: 3, scope: !873)
!914 = !DILocation(line: 892, column: 3, scope: !873)
!915 = !DILocation(line: 869, column: 7, scope: !873)
!916 = !DILocation(line: 870, column: 8, scope: !873)
!917 = !DILocation(line: 866, column: 8, scope: !873)
!918 = !DILocation(line: 892, column: 17, scope: !873)
!919 = distinct !{!919, !914, !920, !841}
!920 = !DILocation(line: 948, column: 7, scope: !873)
!921 = !DILocation(line: 912, column: 9, scope: !922)
!922 = distinct !DILexicalBlock(scope: !873, file: !3, line: 894, column: 7)
!923 = !DILocation(line: 914, column: 21, scope: !922)
!924 = !DILocation(line: 915, column: 14, scope: !922)
!925 = !DILocation(line: 916, column: 15, scope: !922)
!926 = !DILocation(line: 917, column: 9, scope: !922)
!927 = !DILocation(line: 920, column: 9, scope: !922)
!928 = !DILocation(line: 922, column: 21, scope: !922)
!929 = !DILocation(line: 923, column: 14, scope: !922)
!930 = !DILocation(line: 924, column: 15, scope: !922)
!931 = !DILocation(line: 925, column: 9, scope: !922)
!932 = !DILocation(line: 927, column: 24, scope: !922)
!933 = !DILocation(line: 928, column: 9, scope: !922)
!934 = !DILocation(line: 930, column: 21, scope: !922)
!935 = !DILocation(line: 931, column: 14, scope: !922)
!936 = !DILocation(line: 932, column: 15, scope: !922)
!937 = !DILocation(line: 933, column: 9, scope: !922)
!938 = !DILocation(line: 935, column: 16, scope: !922)
!939 = !DILocation(line: 936, column: 9, scope: !922)
!940 = !DILocation(line: 940, column: 9, scope: !922)
!941 = !DILocation(line: 942, column: 15, scope: !922)
!942 = !DILocation(line: 943, column: 9, scope: !922)
!943 = !DILocation(line: 944, column: 7, scope: !922)
!944 = !DILocation(line: 945, column: 7, scope: !922)
!945 = !DILocation(line: 947, column: 9, scope: !922)
!946 = !DILocation(line: 950, column: 26, scope: !873)
!947 = !DILocation(line: 964, column: 20, scope: !873)
!948 = !DILocation(line: 967, column: 7, scope: !949)
!949 = distinct !DILexicalBlock(scope: !873, file: !3, line: 967, column: 7)
!950 = !DILocation(line: 967, column: 18, scope: !949)
!951 = !DILocation(line: 974, column: 19, scope: !952)
!952 = distinct !DILexicalBlock(scope: !949, file: !3, line: 968, column: 4)
!953 = !DILocation(line: 974, column: 6, scope: !952)
!954 = !DILocation(line: 975, column: 6, scope: !952)
!955 = !DILocation(line: 978, column: 7, scope: !956)
!956 = distinct !DILexicalBlock(scope: !873, file: !3, line: 978, column: 7)
!957 = !DILocation(line: 978, column: 21, scope: !956)
!958 = !DILocation(line: 980, column: 20, scope: !959)
!959 = distinct !DILexicalBlock(scope: !956, file: !3, line: 979, column: 5)
!960 = !DILocation(line: 980, column: 7, scope: !959)
!961 = !DILocation(line: 982, column: 7, scope: !959)
!962 = !DILocation(line: 985, column: 18, scope: !963)
!963 = distinct !DILexicalBlock(scope: !873, file: !3, line: 985, column: 7)
!964 = !DILocation(line: 987, column: 20, scope: !965)
!965 = distinct !DILexicalBlock(scope: !963, file: !3, line: 986, column: 5)
!966 = !DILocation(line: 987, column: 7, scope: !965)
!967 = !DILocation(line: 989, column: 7, scope: !965)
!968 = !DILocation(line: 992, column: 9, scope: !969)
!969 = distinct !DILexicalBlock(scope: !873, file: !3, line: 992, column: 7)
!970 = !DILocation(line: 992, column: 19, scope: !969)
!971 = !DILocation(line: 994, column: 20, scope: !972)
!972 = distinct !DILexicalBlock(scope: !969, file: !3, line: 993, column: 5)
!973 = !DILocation(line: 994, column: 7, scope: !972)
!974 = !DILocation(line: 996, column: 7, scope: !972)
!975 = !DILocation(line: 999, column: 7, scope: !976)
!976 = distinct !DILexicalBlock(scope: !873, file: !3, line: 999, column: 7)
!977 = !DILocation(line: 999, column: 22, scope: !976)
!978 = !DILocation(line: 1002, column: 14, scope: !979)
!979 = distinct !DILexicalBlock(scope: !976, file: !3, line: 1000, column: 5)
!980 = !DILocation(line: 1001, column: 7, scope: !979)
!981 = !DILocation(line: 1004, column: 7, scope: !979)
!982 = !DILocation(line: 1007, column: 7, scope: !983)
!983 = distinct !DILexicalBlock(scope: !873, file: !3, line: 1007, column: 7)
!984 = !DILocation(line: 1007, column: 19, scope: !983)
!985 = !DILocation(line: 1010, column: 8, scope: !986)
!986 = distinct !DILexicalBlock(scope: !983, file: !3, line: 1008, column: 5)
!987 = !DILocation(line: 1009, column: 7, scope: !986)
!988 = !DILocation(line: 1011, column: 7, scope: !986)
!989 = !DILocation(line: 1014, column: 7, scope: !990)
!990 = distinct !DILexicalBlock(scope: !873, file: !3, line: 1014, column: 7)
!991 = !DILocation(line: 1014, column: 12, scope: !990)
!992 = !DILocation(line: 1017, column: 8, scope: !993)
!993 = distinct !DILexicalBlock(scope: !990, file: !3, line: 1015, column: 5)
!994 = !DILocation(line: 1016, column: 7, scope: !993)
!995 = !DILocation(line: 1018, column: 7, scope: !993)
!996 = !DILocation(line: 1021, column: 7, scope: !997)
!997 = distinct !DILexicalBlock(scope: !873, file: !3, line: 1021, column: 7)
!998 = !DILocation(line: 1021, column: 13, scope: !997)
!999 = !DILocation(line: 1024, column: 8, scope: !1000)
!1000 = distinct !DILexicalBlock(scope: !997, file: !3, line: 1022, column: 5)
!1001 = !DILocation(line: 1023, column: 7, scope: !1000)
!1002 = !DILocation(line: 1025, column: 7, scope: !1000)
!1003 = !DILocation(line: 1028, column: 7, scope: !1004)
!1004 = distinct !DILexicalBlock(scope: !873, file: !3, line: 1028, column: 7)
!1005 = !DILocation(line: 1028, column: 16, scope: !1004)
!1006 = !DILocation(line: 1028, column: 14, scope: !1004)
!1007 = !DILocation(line: 1028, column: 7, scope: !873)
!1008 = !DILocation(line: 1031, column: 9, scope: !1009)
!1009 = distinct !DILexicalBlock(scope: !1004, file: !3, line: 1029, column: 4)
!1010 = !DILocation(line: 1030, column: 6, scope: !1009)
!1011 = !DILocation(line: 1032, column: 6, scope: !1009)
!1012 = !DILocation(line: 1035, column: 7, scope: !873)
!1013 = !DILocation(line: 1038, column: 29, scope: !873)
!1014 = !DILocation(line: 1039, column: 7, scope: !1015)
!1015 = distinct !DILexicalBlock(scope: !873, file: !3, line: 1039, column: 7)
!1016 = !{!1017, !1017, i64 0}
!1017 = !{!"int", !789, i64 0}
!1018 = !DILocation(line: 1039, column: 14, scope: !1015)
!1019 = !DILocation(line: 1039, column: 7, scope: !873)
!1020 = !DILocation(line: 1040, column: 17, scope: !1015)
!1021 = !DILocation(line: 1040, column: 20, scope: !1015)
!1022 = !DILocation(line: 1040, column: 5, scope: !1015)
!1023 = !DILocation(line: 1042, column: 31, scope: !890)
!1024 = !DILocation(line: 0, scope: !890)
!1025 = !DILocation(line: 1042, column: 50, scope: !893)
!1026 = !DILocation(line: 1042, column: 3, scope: !890)
!1027 = !DILocation(line: 1106, column: 7, scope: !1028)
!1028 = distinct !DILexicalBlock(scope: !873, file: !3, line: 1106, column: 7)
!1029 = !DILocation(line: 1106, column: 23, scope: !1028)
!1030 = !DILocation(line: 1044, column: 20, scope: !892)
!1031 = !DILocation(line: 0, scope: !892)
!1032 = !DILocation(line: 1046, column: 11, scope: !892)
!1033 = !DILocation(line: 0, scope: !90, inlinedAt: !1034)
!1034 = distinct !DILocation(line: 1047, column: 15, scope: !896)
!1035 = !DILocation(line: 661, column: 3, scope: !90, inlinedAt: !1034)
!1036 = !DILocation(line: 661, column: 17, scope: !90, inlinedAt: !1034)
!1037 = !DILocation(line: 665, column: 3, scope: !90, inlinedAt: !1034)
!1038 = !DILocation(line: 666, column: 3, scope: !90, inlinedAt: !1034)
!1039 = !DILocation(line: 667, column: 19, scope: !90, inlinedAt: !1034)
!1040 = !DILocation(line: 669, column: 7, scope: !90, inlinedAt: !1034)
!1041 = !DILocation(line: 671, column: 23, scope: !1042, inlinedAt: !1034)
!1042 = distinct !DILexicalBlock(scope: !1043, file: !3, line: 670, column: 5)
!1043 = distinct !DILexicalBlock(scope: !90, file: !3, line: 669, column: 7)
!1044 = !DILocation(line: 672, column: 24, scope: !1042, inlinedAt: !1034)
!1045 = !DILocation(line: 673, column: 26, scope: !1042, inlinedAt: !1034)
!1046 = !DILocation(line: 674, column: 5, scope: !1042, inlinedAt: !1034)
!1047 = !DILocation(line: 677, column: 26, scope: !1048, inlinedAt: !1034)
!1048 = distinct !DILexicalBlock(scope: !1043, file: !3, line: 676, column: 5)
!1049 = !DILocation(line: 678, column: 28, scope: !1050, inlinedAt: !1034)
!1050 = distinct !DILexicalBlock(scope: !1048, file: !3, line: 678, column: 11)
!1051 = !DILocation(line: 678, column: 11, scope: !1048, inlinedAt: !1034)
!1052 = !DILocation(line: 680, column: 21, scope: !1053, inlinedAt: !1034)
!1053 = distinct !DILexicalBlock(scope: !1050, file: !3, line: 679, column: 9)
!1054 = !DILocation(line: 680, column: 34, scope: !1053, inlinedAt: !1034)
!1055 = !DILocation(line: 680, column: 11, scope: !1053, inlinedAt: !1034)
!1056 = !DILocation(line: 681, column: 11, scope: !1053, inlinedAt: !1034)
!1057 = !DILocation(line: 0, scope: !1043, inlinedAt: !1034)
!1058 = !DILocation(line: 686, column: 8, scope: !90, inlinedAt: !1034)
!1059 = !DILocation(line: 687, column: 24, scope: !90, inlinedAt: !1034)
!1060 = !{!1061, !1061, i64 0}
!1061 = !{!"long", !789, i64 0}
!1062 = !DILocation(line: 688, column: 3, scope: !90, inlinedAt: !1034)
!1063 = !DILocation(line: 660, column: 8, scope: !90, inlinedAt: !1034)
!1064 = !DILocation(line: 659, column: 8, scope: !90, inlinedAt: !1034)
!1065 = !DILocation(line: 658, column: 13, scope: !90, inlinedAt: !1034)
!1066 = !DILocation(line: 657, column: 13, scope: !90, inlinedAt: !1034)
!1067 = !DILocation(line: 656, column: 13, scope: !90, inlinedAt: !1034)
!1068 = !DILocation(line: 655, column: 13, scope: !90, inlinedAt: !1034)
!1069 = !DILocation(line: 695, column: 7, scope: !166, inlinedAt: !1034)
!1070 = !DILocation(line: 696, column: 23, scope: !1071, inlinedAt: !1034)
!1071 = distinct !DILexicalBlock(scope: !166, file: !3, line: 696, column: 11)
!1072 = !DILocation(line: 696, column: 11, scope: !166, inlinedAt: !1034)
!1073 = !DILocation(line: 697, column: 9, scope: !1071, inlinedAt: !1034)
!1074 = !DILocalVariable(name: "__lineptr", arg: 1, scope: !1075, file: !1076, line: 118, type: !876)
!1075 = distinct !DISubprogram(name: "getline", scope: !1076, file: !1076, line: 118, type: !1077, scopeLine: 119, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1079)
!1076 = !DIFile(filename: "/usr/include/bits/stdio.h", directory: "")
!1077 = !DISubroutineType(types: !1078)
!1078 = !{!172, !876, !353, !98}
!1079 = !{!1074, !1080, !1081}
!1080 = !DILocalVariable(name: "__n", arg: 2, scope: !1075, file: !1076, line: 118, type: !353)
!1081 = !DILocalVariable(name: "__stream", arg: 3, scope: !1075, file: !1076, line: 118, type: !98)
!1082 = !DILocation(line: 0, scope: !1075, inlinedAt: !1083)
!1083 = distinct !DILocation(line: 700, column: 21, scope: !166, inlinedAt: !1034)
!1084 = !DILocation(line: 120, column: 10, scope: !1075, inlinedAt: !1083)
!1085 = !DILocation(line: 0, scope: !166, inlinedAt: !1034)
!1086 = !DILocation(line: 701, column: 23, scope: !1087, inlinedAt: !1034)
!1087 = distinct !DILexicalBlock(scope: !166, file: !3, line: 701, column: 11)
!1088 = !DILocation(line: 701, column: 11, scope: !166, inlinedAt: !1034)
!1089 = !DILocation(line: 705, column: 11, scope: !1090, inlinedAt: !1034)
!1090 = distinct !DILexicalBlock(scope: !166, file: !3, line: 705, column: 11)
!1091 = !{!789, !789, i64 0}
!1092 = !DILocation(line: 705, column: 19, scope: !1090, inlinedAt: !1034)
!1093 = !DILocation(line: 705, column: 11, scope: !166, inlinedAt: !1034)
!1094 = !DILocation(line: 709, column: 28, scope: !1095, inlinedAt: !1034)
!1095 = distinct !DILexicalBlock(scope: !166, file: !3, line: 709, column: 11)
!1096 = !DILocation(line: 709, column: 11, scope: !1095, inlinedAt: !1034)
!1097 = !DILocation(line: 709, column: 33, scope: !1095, inlinedAt: !1034)
!1098 = !DILocation(line: 709, column: 11, scope: !166, inlinedAt: !1034)
!1099 = !DILocation(line: 710, column: 29, scope: !1095, inlinedAt: !1034)
!1100 = !DILocation(line: 712, column: 23, scope: !175, inlinedAt: !1034)
!1101 = !DILocation(line: 710, column: 9, scope: !1095, inlinedAt: !1034)
!1102 = !DILocalVariable(name: "s", arg: 1, scope: !1103, file: !3, line: 419, type: !59)
!1103 = distinct !DISubprogram(name: "split_3", scope: !3, file: !3, line: 419, type: !1104, scopeLine: 421, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1107)
!1104 = !DISubroutineType(types: !1105)
!1105 = !{!71, !59, !62, !1106, !204, !876}
!1106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !65, size: 64)
!1107 = !{!1102, !1108, !1109, !1110, !1111, !1112, !1113, !1114}
!1108 = !DILocalVariable(name: "s_len", arg: 2, scope: !1103, file: !3, line: 419, type: !62)
!1109 = !DILocalVariable(name: "hex_digest", arg: 3, scope: !1103, file: !3, line: 420, type: !1106)
!1110 = !DILocalVariable(name: "binary", arg: 4, scope: !1103, file: !3, line: 420, type: !204)
!1111 = !DILocalVariable(name: "file_name", arg: 5, scope: !1103, file: !3, line: 420, type: !876)
!1112 = !DILocalVariable(name: "escaped_filename", scope: !1103, file: !3, line: 422, type: !71)
!1113 = !DILocalVariable(name: "algo_name_len", scope: !1103, file: !3, line: 423, type: !62)
!1114 = !DILocalVariable(name: "i", scope: !1103, file: !3, line: 425, type: !62)
!1115 = !DILocation(line: 0, scope: !1103, inlinedAt: !1116)
!1116 = distinct !DILocation(line: 712, column: 14, scope: !175, inlinedAt: !1034)
!1117 = !DILocation(line: 426, column: 3, scope: !1103, inlinedAt: !1116)
!1118 = !DILocation(line: 426, column: 10, scope: !1103, inlinedAt: !1116)
!1119 = !DILocation(line: 427, column: 5, scope: !1103, inlinedAt: !1116)
!1120 = distinct !{!1120, !1117, !1121, !841}
!1121 = !DILocation(line: 427, column: 7, scope: !1103, inlinedAt: !1116)
!1122 = !DILocation(line: 429, column: 12, scope: !1123, inlinedAt: !1116)
!1123 = distinct !DILexicalBlock(scope: !1103, file: !3, line: 429, column: 7)
!1124 = !DILocation(line: 429, column: 7, scope: !1103, inlinedAt: !1116)
!1125 = !DILocation(line: 438, column: 7, scope: !1126, inlinedAt: !1116)
!1126 = distinct !DILexicalBlock(scope: !1103, file: !3, line: 438, column: 7)
!1127 = !DILocation(line: 438, column: 7, scope: !1103, inlinedAt: !1116)
!1128 = !DILocation(line: 440, column: 9, scope: !1129, inlinedAt: !1116)
!1129 = distinct !DILexicalBlock(scope: !1126, file: !3, line: 439, column: 5)
!1130 = !DILocation(line: 473, column: 11, scope: !1131, inlinedAt: !1116)
!1131 = distinct !DILexicalBlock(scope: !1129, file: !3, line: 473, column: 11)
!1132 = !DILocation(line: 473, column: 16, scope: !1131, inlinedAt: !1116)
!1133 = !DILocation(line: 473, column: 11, scope: !1129, inlinedAt: !1116)
!1134 = !DILocation(line: 475, column: 11, scope: !1135, inlinedAt: !1116)
!1135 = distinct !DILexicalBlock(scope: !1129, file: !3, line: 475, column: 11)
!1136 = !DILocation(line: 475, column: 16, scope: !1135, inlinedAt: !1116)
!1137 = !DILocation(line: 475, column: 11, scope: !1129, inlinedAt: !1116)
!1138 = !DILocation(line: 477, column: 11, scope: !1139, inlinedAt: !1116)
!1139 = distinct !DILexicalBlock(scope: !1135, file: !3, line: 476, column: 9)
!1140 = !DILocation(line: 479, column: 33, scope: !1139, inlinedAt: !1116)
!1141 = !DILocation(line: 479, column: 44, scope: !1139, inlinedAt: !1116)
!1142 = !DILocalVariable(name: "s", arg: 1, scope: !1143, file: !3, line: 375, type: !59)
!1143 = distinct !DISubprogram(name: "bsd_split_3", scope: !3, file: !3, line: 375, type: !1144, scopeLine: 377, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1146)
!1144 = !DISubroutineType(types: !1145)
!1145 = !{!71, !59, !62, !1106, !876, !71}
!1146 = !{!1142, !1147, !1148, !1149, !1150, !1151}
!1147 = !DILocalVariable(name: "s_len", arg: 2, scope: !1143, file: !3, line: 375, type: !62)
!1148 = !DILocalVariable(name: "hex_digest", arg: 3, scope: !1143, file: !3, line: 375, type: !1106)
!1149 = !DILocalVariable(name: "file_name", arg: 4, scope: !1143, file: !3, line: 376, type: !876)
!1150 = !DILocalVariable(name: "escaped_filename", arg: 5, scope: !1143, file: !3, line: 376, type: !71)
!1151 = !DILocalVariable(name: "i", scope: !1143, file: !3, line: 378, type: !62)
!1152 = !DILocation(line: 0, scope: !1143, inlinedAt: !1153)
!1153 = distinct !DILocation(line: 479, column: 18, scope: !1139, inlinedAt: !1116)
!1154 = !DILocation(line: 380, column: 13, scope: !1155, inlinedAt: !1153)
!1155 = distinct !DILexicalBlock(scope: !1143, file: !3, line: 380, column: 7)
!1156 = !DILocation(line: 380, column: 7, scope: !1143, inlinedAt: !1153)
!1157 = !DILocation(line: 385, column: 10, scope: !1143, inlinedAt: !1153)
!1158 = !DILocation(line: 385, column: 12, scope: !1143, inlinedAt: !1153)
!1159 = !DILocation(line: 385, column: 15, scope: !1143, inlinedAt: !1153)
!1160 = !DILocation(line: 385, column: 20, scope: !1143, inlinedAt: !1153)
!1161 = !DILocation(line: 385, column: 3, scope: !1143, inlinedAt: !1153)
!1162 = distinct !{!1162, !1161, !1163, !841}
!1163 = !DILocation(line: 386, column: 6, scope: !1143, inlinedAt: !1153)
!1164 = !DILocation(line: 388, column: 7, scope: !1165, inlinedAt: !1153)
!1165 = distinct !DILexicalBlock(scope: !1143, file: !3, line: 388, column: 7)
!1166 = !DILocation(line: 388, column: 7, scope: !1143, inlinedAt: !1153)
!1167 = !DILocation(line: 393, column: 24, scope: !1168, inlinedAt: !1153)
!1168 = distinct !DILexicalBlock(scope: !1143, file: !3, line: 393, column: 7)
!1169 = !DILocalVariable(name: "s", arg: 1, scope: !1170, file: !3, line: 312, type: !59)
!1170 = distinct !DISubprogram(name: "filename_unescape", scope: !3, file: !3, line: 312, type: !1171, scopeLine: 313, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1173)
!1171 = !DISubroutineType(types: !1172)
!1172 = !{!59, !59, !62}
!1173 = !{!1169, !1174, !1175, !1176}
!1174 = !DILocalVariable(name: "s_len", arg: 2, scope: !1170, file: !3, line: 312, type: !62)
!1175 = !DILocalVariable(name: "dst", scope: !1170, file: !3, line: 314, type: !59)
!1176 = !DILocalVariable(name: "i", scope: !1177, file: !3, line: 316, type: !62)
!1177 = distinct !DILexicalBlock(scope: !1170, file: !3, line: 316, column: 3)
!1178 = !DILocation(line: 0, scope: !1170, inlinedAt: !1179)
!1179 = distinct !DILocation(line: 393, column: 27, scope: !1168, inlinedAt: !1153)
!1180 = !DILocation(line: 0, scope: !1177, inlinedAt: !1179)
!1181 = !DILocation(line: 316, column: 3, scope: !1177, inlinedAt: !1179)
!1182 = !DILocation(line: 318, column: 15, scope: !1183, inlinedAt: !1179)
!1183 = distinct !DILexicalBlock(scope: !1184, file: !3, line: 317, column: 5)
!1184 = distinct !DILexicalBlock(scope: !1177, file: !3, line: 316, column: 3)
!1185 = !DILocation(line: 318, column: 7, scope: !1183, inlinedAt: !1179)
!1186 = !DILocation(line: 321, column: 17, scope: !1187, inlinedAt: !1179)
!1187 = distinct !DILexicalBlock(scope: !1188, file: !3, line: 321, column: 15)
!1188 = distinct !DILexicalBlock(scope: !1183, file: !3, line: 319, column: 9)
!1189 = !DILocation(line: 321, column: 15, scope: !1188, inlinedAt: !1179)
!1190 = !DILocation(line: 326, column: 11, scope: !1188, inlinedAt: !1179)
!1191 = !DILocation(line: 327, column: 19, scope: !1188, inlinedAt: !1179)
!1192 = !DILocation(line: 327, column: 11, scope: !1188, inlinedAt: !1179)
!1193 = !DILocation(line: 334, column: 15, scope: !1194, inlinedAt: !1179)
!1194 = distinct !DILexicalBlock(scope: !1188, file: !3, line: 328, column: 13)
!1195 = !DILocation(line: 0, scope: !1188, inlinedAt: !1179)
!1196 = !DILocation(line: 316, column: 34, scope: !1184, inlinedAt: !1179)
!1197 = !DILocation(line: 316, column: 24, scope: !1184, inlinedAt: !1179)
!1198 = distinct !{!1198, !1181, !1199, !841}
!1199 = !DILocation(line: 349, column: 5, scope: !1177, inlinedAt: !1179)
!1200 = !DILocation(line: 350, column: 11, scope: !1201, inlinedAt: !1179)
!1201 = distinct !DILexicalBlock(scope: !1170, file: !3, line: 350, column: 7)
!1202 = !DILocation(line: 350, column: 7, scope: !1170, inlinedAt: !1179)
!1203 = !DILocation(line: 351, column: 10, scope: !1201, inlinedAt: !1179)
!1204 = !DILocation(line: 351, column: 5, scope: !1201, inlinedAt: !1179)
!1205 = !DILocation(line: 396, column: 10, scope: !1143, inlinedAt: !1153)
!1206 = !DILocation(line: 398, column: 3, scope: !1143, inlinedAt: !1153)
!1207 = !DILocation(line: 398, column: 10, scope: !1143, inlinedAt: !1153)
!1208 = !DILocation(line: 399, column: 6, scope: !1143, inlinedAt: !1153)
!1209 = distinct !{!1209, !1206, !1208, !841}
!1210 = !DILocation(line: 406, column: 10, scope: !1143, inlinedAt: !1153)
!1211 = distinct !{!1211, !1212, !1213, !841}
!1212 = !DILocation(line: 406, column: 3, scope: !1143, inlinedAt: !1153)
!1213 = !DILocation(line: 407, column: 6, scope: !1143, inlinedAt: !1153)
!1214 = !DILocalVariable(name: "s", arg: 1, scope: !1215, file: !3, line: 359, type: !1218)
!1215 = distinct !DISubprogram(name: "hex_digits", scope: !3, file: !3, line: 359, type: !1216, scopeLine: 360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1219)
!1216 = !DISubroutineType(types: !1217)
!1217 = !{!71, !1218}
!1218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !238, size: 64)
!1219 = !{!1214, !1220}
!1220 = !DILocalVariable(name: "i", scope: !1221, file: !3, line: 361, type: !7)
!1221 = distinct !DILexicalBlock(scope: !1215, file: !3, line: 361, column: 3)
!1222 = !DILocation(line: 0, scope: !1215, inlinedAt: !1223)
!1223 = distinct !DILocation(line: 411, column: 10, scope: !1143, inlinedAt: !1153)
!1224 = !DILocation(line: 0, scope: !1221, inlinedAt: !1223)
!1225 = !DILocation(line: 361, column: 32, scope: !1226, inlinedAt: !1223)
!1226 = distinct !DILexicalBlock(scope: !1221, file: !3, line: 361, column: 3)
!1227 = !DILocation(line: 361, column: 3, scope: !1221, inlinedAt: !1223)
!1228 = !DILocation(line: 363, column: 12, scope: !1229, inlinedAt: !1223)
!1229 = distinct !DILexicalBlock(scope: !1230, file: !3, line: 363, column: 11)
!1230 = distinct !DILexicalBlock(scope: !1226, file: !3, line: 362, column: 5)
!1231 = !{!1232, !1232, i64 0}
!1232 = !{!"short", !789, i64 0}
!1233 = !DILocation(line: 363, column: 11, scope: !1230, inlinedAt: !1223)
!1234 = !DILocation(line: 365, column: 7, scope: !1230, inlinedAt: !1223)
!1235 = !DILocation(line: 361, column: 51, scope: !1226, inlinedAt: !1223)
!1236 = !DILocation(line: 361, column: 30, scope: !1226, inlinedAt: !1223)
!1237 = distinct !{!1237, !1227, !1238, !841}
!1238 = !DILocation(line: 366, column: 5, scope: !1221, inlinedAt: !1223)
!1239 = !DILocation(line: 489, column: 13, scope: !1240, inlinedAt: !1116)
!1240 = distinct !DILexicalBlock(scope: !1103, file: !3, line: 489, column: 7)
!1241 = !DILocation(line: 489, column: 19, scope: !1240, inlinedAt: !1116)
!1242 = !DILocation(line: 489, column: 45, scope: !1240, inlinedAt: !1116)
!1243 = !DILocation(line: 489, column: 50, scope: !1240, inlinedAt: !1116)
!1244 = !DILocation(line: 489, column: 44, scope: !1240, inlinedAt: !1116)
!1245 = !DILocation(line: 489, column: 42, scope: !1240, inlinedAt: !1116)
!1246 = !DILocation(line: 489, column: 17, scope: !1240, inlinedAt: !1116)
!1247 = !DILocation(line: 489, column: 7, scope: !1103, inlinedAt: !1116)
!1248 = !DILocation(line: 509, column: 8, scope: !1103, inlinedAt: !1116)
!1249 = !DILocation(line: 509, column: 5, scope: !1103, inlinedAt: !1116)
!1250 = !DILocation(line: 510, column: 8, scope: !1251, inlinedAt: !1116)
!1251 = distinct !DILexicalBlock(scope: !1103, file: !3, line: 510, column: 7)
!1252 = !DILocation(line: 513, column: 6, scope: !1103, inlinedAt: !1116)
!1253 = !DILocation(line: 513, column: 10, scope: !1103, inlinedAt: !1116)
!1254 = !DILocation(line: 0, scope: !1215, inlinedAt: !1255)
!1255 = distinct !DILocation(line: 515, column: 9, scope: !1256, inlinedAt: !1116)
!1256 = distinct !DILexicalBlock(scope: !1103, file: !3, line: 515, column: 7)
!1257 = !DILocation(line: 0, scope: !1221, inlinedAt: !1255)
!1258 = !DILocation(line: 361, column: 3, scope: !1221, inlinedAt: !1255)
!1259 = !DILocation(line: 363, column: 12, scope: !1229, inlinedAt: !1255)
!1260 = !DILocation(line: 363, column: 11, scope: !1230, inlinedAt: !1255)
!1261 = !DILocation(line: 365, column: 7, scope: !1230, inlinedAt: !1255)
!1262 = !DILocation(line: 367, column: 10, scope: !1215, inlinedAt: !1255)
!1263 = !DILocation(line: 367, column: 13, scope: !1215, inlinedAt: !1255)
!1264 = !DILocation(line: 515, column: 7, scope: !1103, inlinedAt: !1116)
!1265 = !DILocation(line: 519, column: 14, scope: !1266, inlinedAt: !1116)
!1266 = distinct !DILexicalBlock(scope: !1103, file: !3, line: 519, column: 7)
!1267 = !DILocation(line: 519, column: 18, scope: !1266, inlinedAt: !1116)
!1268 = !DILocation(line: 519, column: 24, scope: !1266, inlinedAt: !1116)
!1269 = !DILocation(line: 519, column: 28, scope: !1266, inlinedAt: !1116)
!1270 = !DILocation(line: 519, column: 40, scope: !1266, inlinedAt: !1116)
!1271 = !DILocation(line: 527, column: 11, scope: !1272, inlinedAt: !1116)
!1272 = distinct !DILexicalBlock(scope: !1273, file: !3, line: 527, column: 11)
!1273 = distinct !DILexicalBlock(scope: !1266, file: !3, line: 520, column: 5)
!1274 = !DILocation(line: 527, column: 24, scope: !1272, inlinedAt: !1116)
!1275 = !DILocation(line: 527, column: 11, scope: !1273, inlinedAt: !1116)
!1276 = !DILocation(line: 529, column: 20, scope: !1273, inlinedAt: !1116)
!1277 = !DILocation(line: 530, column: 5, scope: !1273, inlinedAt: !1116)
!1278 = !DILocation(line: 531, column: 12, scope: !1279, inlinedAt: !1116)
!1279 = distinct !DILexicalBlock(scope: !1266, file: !3, line: 531, column: 12)
!1280 = !DILocation(line: 531, column: 25, scope: !1279, inlinedAt: !1116)
!1281 = !DILocation(line: 531, column: 12, scope: !1266, inlinedAt: !1116)
!1282 = !DILocation(line: 533, column: 20, scope: !1283, inlinedAt: !1116)
!1283 = distinct !DILexicalBlock(scope: !1279, file: !3, line: 532, column: 5)
!1284 = !DILocation(line: 534, column: 21, scope: !1283, inlinedAt: !1116)
!1285 = !DILocation(line: 535, column: 5, scope: !1283, inlinedAt: !1116)
!1286 = !DILocation(line: 539, column: 17, scope: !1103, inlinedAt: !1116)
!1287 = !DILocation(line: 541, column: 7, scope: !1103, inlinedAt: !1116)
!1288 = !DILocation(line: 542, column: 44, scope: !1289, inlinedAt: !1116)
!1289 = distinct !DILexicalBlock(scope: !1103, file: !3, line: 541, column: 7)
!1290 = !DILocation(line: 0, scope: !1170, inlinedAt: !1291)
!1291 = distinct !DILocation(line: 542, column: 12, scope: !1289, inlinedAt: !1116)
!1292 = !DILocation(line: 0, scope: !1177, inlinedAt: !1291)
!1293 = !DILocation(line: 316, column: 24, scope: !1184, inlinedAt: !1291)
!1294 = !DILocation(line: 316, column: 3, scope: !1177, inlinedAt: !1291)
!1295 = !DILocation(line: 318, column: 15, scope: !1183, inlinedAt: !1291)
!1296 = !DILocation(line: 318, column: 7, scope: !1183, inlinedAt: !1291)
!1297 = !DILocation(line: 321, column: 17, scope: !1187, inlinedAt: !1291)
!1298 = !DILocation(line: 321, column: 15, scope: !1188, inlinedAt: !1291)
!1299 = !DILocation(line: 326, column: 11, scope: !1188, inlinedAt: !1291)
!1300 = !DILocation(line: 327, column: 19, scope: !1188, inlinedAt: !1291)
!1301 = !DILocation(line: 327, column: 11, scope: !1188, inlinedAt: !1291)
!1302 = !DILocation(line: 334, column: 15, scope: !1194, inlinedAt: !1291)
!1303 = !DILocation(line: 0, scope: !1188, inlinedAt: !1291)
!1304 = !DILocation(line: 316, column: 34, scope: !1184, inlinedAt: !1291)
!1305 = distinct !{!1305, !1294, !1306, !841}
!1306 = !DILocation(line: 349, column: 5, scope: !1177, inlinedAt: !1291)
!1307 = !DILocation(line: 350, column: 15, scope: !1201, inlinedAt: !1291)
!1308 = !DILocation(line: 350, column: 11, scope: !1201, inlinedAt: !1291)
!1309 = !DILocation(line: 350, column: 7, scope: !1170, inlinedAt: !1291)
!1310 = !DILocation(line: 351, column: 10, scope: !1201, inlinedAt: !1291)
!1311 = !DILocation(line: 351, column: 5, scope: !1201, inlinedAt: !1291)
!1312 = !DILocation(line: 542, column: 49, scope: !1289, inlinedAt: !1116)
!1313 = !DILocation(line: 713, column: 14, scope: !175, inlinedAt: !1034)
!1314 = !DILocation(line: 367, column: 10, scope: !1215, inlinedAt: !1223)
!1315 = !DILocation(line: 367, column: 13, scope: !1215, inlinedAt: !1223)
!1316 = !DILocation(line: 713, column: 29, scope: !175, inlinedAt: !1034)
!1317 = !DILocation(line: 713, column: 32, scope: !175, inlinedAt: !1034)
!1318 = !DILocation(line: 712, column: 11, scope: !166, inlinedAt: !1034)
!1319 = !DILocation(line: 715, column: 11, scope: !1320, inlinedAt: !1034)
!1320 = distinct !DILexicalBlock(scope: !175, file: !3, line: 714, column: 9)
!1321 = !DILocation(line: 717, column: 15, scope: !1322, inlinedAt: !1034)
!1322 = distinct !DILexicalBlock(scope: !1320, file: !3, line: 717, column: 15)
!1323 = !DILocation(line: 717, column: 15, scope: !1320, inlinedAt: !1034)
!1324 = !DILocation(line: 720, column: 22, scope: !1325, inlinedAt: !1034)
!1325 = distinct !DILexicalBlock(scope: !1322, file: !3, line: 718, column: 13)
!1326 = !DILocation(line: 722, column: 22, scope: !1325, inlinedAt: !1034)
!1327 = !DILocation(line: 719, column: 15, scope: !1325, inlinedAt: !1034)
!1328 = !DILocation(line: 724, column: 13, scope: !1325, inlinedAt: !1034)
!1329 = !DILocation(line: 726, column: 11, scope: !1320, inlinedAt: !1034)
!1330 = !DILocation(line: 727, column: 9, scope: !1320, inlinedAt: !1034)
!1331 = !DILocation(line: 735, column: 11, scope: !174, inlinedAt: !1034)
!1332 = !DILocation(line: 738, column: 33, scope: !174, inlinedAt: !1034)
!1333 = !DILocation(line: 738, column: 45, scope: !174, inlinedAt: !1034)
!1334 = !DILocation(line: 738, column: 48, scope: !174, inlinedAt: !1034)
!1335 = !DILocation(line: 0, scope: !174, inlinedAt: !1034)
!1336 = !DILocation(line: 742, column: 16, scope: !174, inlinedAt: !1034)
!1337 = !DILocation(line: 744, column: 15, scope: !174, inlinedAt: !1034)
!1338 = !DILocation(line: 746, column: 15, scope: !1339, inlinedAt: !1034)
!1339 = distinct !DILexicalBlock(scope: !181, file: !3, line: 745, column: 13)
!1340 = !DILocation(line: 747, column: 20, scope: !1341, inlinedAt: !1034)
!1341 = distinct !DILexicalBlock(scope: !1339, file: !3, line: 747, column: 19)
!1342 = !DILocation(line: 747, column: 19, scope: !1339, inlinedAt: !1034)
!1343 = !DILocation(line: 749, column: 23, scope: !1344, inlinedAt: !1034)
!1344 = distinct !DILexicalBlock(scope: !1341, file: !3, line: 748, column: 17)
!1345 = !DILocalVariable(name: "__c", arg: 1, scope: !1346, file: !1076, line: 108, type: !64)
!1346 = distinct !DISubprogram(name: "putchar_unlocked", scope: !1076, file: !1076, line: 108, type: !1347, scopeLine: 109, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1349)
!1347 = !DISubroutineType(types: !1348)
!1348 = !{!64, !64}
!1349 = !{!1345}
!1350 = !DILocation(line: 0, scope: !1346, inlinedAt: !1351)
!1351 = distinct !DILocation(line: 750, column: 21, scope: !1352, inlinedAt: !1034)
!1352 = distinct !DILexicalBlock(scope: !1344, file: !3, line: 749, column: 23)
!1353 = !DILocation(line: 110, column: 10, scope: !1346, inlinedAt: !1351)
!1354 = !{!1355, !788, i64 40}
!1355 = !{!"_IO_FILE", !1017, i64 0, !788, i64 8, !788, i64 16, !788, i64 24, !788, i64 32, !788, i64 40, !788, i64 48, !788, i64 56, !788, i64 64, !788, i64 72, !788, i64 80, !788, i64 88, !788, i64 96, !788, i64 104, !1017, i64 112, !1017, i64 116, !1061, i64 120, !1232, i64 128, !789, i64 130, !789, i64 131, !788, i64 136, !1061, i64 144, !788, i64 152, !788, i64 160, !788, i64 168, !788, i64 176, !1061, i64 184, !1017, i64 192, !789, i64 196}
!1356 = !{!1355, !788, i64 48}
!1357 = !{!"branch_weights", i32 2000, i32 1}
!1358 = !DILocation(line: 751, column: 19, scope: !1344, inlinedAt: !1034)
!1359 = !DILocation(line: 752, column: 19, scope: !1344, inlinedAt: !1034)
!1360 = !DILocation(line: 753, column: 17, scope: !1344, inlinedAt: !1034)
!1361 = !DILocation(line: 755, column: 20, scope: !180, inlinedAt: !1034)
!1362 = !DILocation(line: 755, column: 35, scope: !180, inlinedAt: !1034)
!1363 = !DILocation(line: 762, column: 41, scope: !179, inlinedAt: !1034)
!1364 = !DILocation(line: 762, column: 58, scope: !179, inlinedAt: !1034)
!1365 = !DILocation(line: 0, scope: !179, inlinedAt: !1034)
!1366 = !DILocation(line: 767, column: 15, scope: !188, inlinedAt: !1034)
!1367 = !DILocation(line: 769, column: 23, scope: !1368, inlinedAt: !1034)
!1368 = distinct !DILexicalBlock(scope: !184, file: !3, line: 769, column: 23)
!1369 = !DILocation(line: 0, scope: !184, inlinedAt: !1034)
!1370 = !DILocation(line: 770, column: 34, scope: !185, inlinedAt: !1034)
!1371 = !DILocation(line: 770, column: 50, scope: !185, inlinedAt: !1034)
!1372 = !DILocation(line: 770, column: 26, scope: !185, inlinedAt: !1034)
!1373 = !DILocation(line: 770, column: 23, scope: !185, inlinedAt: !1034)
!1374 = !DILocation(line: 771, column: 23, scope: !185, inlinedAt: !1034)
!1375 = !DILocation(line: 771, column: 27, scope: !1376, inlinedAt: !1034)
!1376 = distinct !DILexicalBlock(scope: !190, file: !3, line: 771, column: 27)
!1377 = !DILocation(line: 0, scope: !190, inlinedAt: !1034)
!1378 = !DILocation(line: 772, column: 55, scope: !185, inlinedAt: !1034)
!1379 = !DILocation(line: 772, column: 31, scope: !185, inlinedAt: !1034)
!1380 = !DILocation(line: 772, column: 30, scope: !185, inlinedAt: !1034)
!1381 = !DILocation(line: 772, column: 27, scope: !185, inlinedAt: !1034)
!1382 = !DILocation(line: 769, column: 23, scope: !186, inlinedAt: !1034)
!1383 = !DILocation(line: 767, column: 53, scope: !187, inlinedAt: !1034)
!1384 = !DILocation(line: 767, column: 33, scope: !187, inlinedAt: !1034)
!1385 = distinct !{!1385, !1366, !1386, !841}
!1386 = !DILocation(line: 774, column: 17, scope: !188, inlinedAt: !1034)
!1387 = !DILocation(line: 0, scope: !188, inlinedAt: !1034)
!1388 = !DILocation(line: 775, column: 23, scope: !1389, inlinedAt: !1034)
!1389 = distinct !DILexicalBlock(scope: !179, file: !3, line: 775, column: 19)
!1390 = !DILocation(line: 775, column: 19, scope: !179, inlinedAt: !1034)
!1391 = !DILocation(line: 780, column: 20, scope: !1392, inlinedAt: !1034)
!1392 = distinct !DILexicalBlock(scope: !179, file: !3, line: 780, column: 19)
!1393 = !DILocation(line: 780, column: 19, scope: !179, inlinedAt: !1034)
!1394 = !DILocation(line: 782, column: 47, scope: !1395, inlinedAt: !1034)
!1395 = distinct !DILexicalBlock(scope: !1396, file: !3, line: 782, column: 23)
!1396 = distinct !DILexicalBlock(scope: !1392, file: !3, line: 781, column: 17)
!1397 = !DILocation(line: 782, column: 52, scope: !1395, inlinedAt: !1034)
!1398 = !DILocation(line: 782, column: 23, scope: !1396, inlinedAt: !1034)
!1399 = !DILocation(line: 784, column: 27, scope: !1400, inlinedAt: !1034)
!1400 = distinct !DILexicalBlock(scope: !1395, file: !3, line: 783, column: 21)
!1401 = !DILocation(line: 0, scope: !1346, inlinedAt: !1402)
!1402 = distinct !DILocation(line: 785, column: 25, scope: !1403, inlinedAt: !1034)
!1403 = distinct !DILexicalBlock(scope: !1400, file: !3, line: 784, column: 27)
!1404 = !DILocation(line: 110, column: 10, scope: !1346, inlinedAt: !1402)
!1405 = !DILocation(line: 786, column: 23, scope: !1400, inlinedAt: !1034)
!1406 = !DILocation(line: 789, column: 23, scope: !1396, inlinedAt: !1034)
!1407 = !DILocation(line: 790, column: 21, scope: !1408, inlinedAt: !1034)
!1408 = distinct !DILexicalBlock(scope: !1396, file: !3, line: 789, column: 23)
!1409 = !DILocation(line: 791, column: 29, scope: !1410, inlinedAt: !1034)
!1410 = distinct !DILexicalBlock(scope: !1408, file: !3, line: 791, column: 28)
!1411 = !DILocation(line: 791, column: 28, scope: !1408, inlinedAt: !1034)
!1412 = !DILocation(line: 792, column: 21, scope: !1410, inlinedAt: !1034)
!1413 = !DILocation(line: 795, column: 9, scope: !175, inlinedAt: !1034)
!1414 = !DILocalVariable(name: "__stream", arg: 1, scope: !1415, file: !1076, line: 128, type: !98)
!1415 = distinct !DISubprogram(name: "feof_unlocked", scope: !1076, file: !1076, line: 128, type: !1416, scopeLine: 129, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1418)
!1416 = !DISubroutineType(types: !1417)
!1417 = !{!64, !98}
!1418 = !{!1414}
!1419 = !DILocation(line: 0, scope: !1415, inlinedAt: !1420)
!1420 = distinct !DILocation(line: 797, column: 11, scope: !90, inlinedAt: !1034)
!1421 = !DILocation(line: 130, column: 10, scope: !1415, inlinedAt: !1420)
!1422 = !{!1355, !1017, i64 0}
!1423 = !DILocation(line: 797, column: 35, scope: !90, inlinedAt: !1034)
!1424 = !DILocalVariable(name: "__stream", arg: 1, scope: !1425, file: !1076, line: 135, type: !98)
!1425 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1076, file: !1076, line: 135, type: !1416, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1426)
!1426 = !{!1424}
!1427 = !DILocation(line: 0, scope: !1425, inlinedAt: !1428)
!1428 = distinct !DILocation(line: 797, column: 39, scope: !90, inlinedAt: !1034)
!1429 = distinct !{!1429, !1062, !1430, !841}
!1430 = !DILocation(line: 797, column: 64, scope: !90, inlinedAt: !1034)
!1431 = !DILocation(line: 799, column: 9, scope: !90, inlinedAt: !1034)
!1432 = !DILocation(line: 799, column: 3, scope: !90, inlinedAt: !1034)
!1433 = !DILocation(line: 0, scope: !1425, inlinedAt: !1434)
!1434 = distinct !DILocation(line: 801, column: 7, scope: !1435, inlinedAt: !1034)
!1435 = distinct !DILexicalBlock(scope: !90, file: !3, line: 801, column: 7)
!1436 = !DILocation(line: 137, column: 10, scope: !1425, inlinedAt: !1434)
!1437 = !DILocation(line: 801, column: 7, scope: !1435, inlinedAt: !1034)
!1438 = !DILocation(line: 801, column: 7, scope: !90, inlinedAt: !1034)
!1439 = !DILocation(line: 803, column: 20, scope: !1440, inlinedAt: !1034)
!1440 = distinct !DILexicalBlock(scope: !1435, file: !3, line: 802, column: 5)
!1441 = !DILocation(line: 803, column: 41, scope: !1440, inlinedAt: !1034)
!1442 = !DILocation(line: 803, column: 7, scope: !1440, inlinedAt: !1034)
!1443 = !DILocation(line: 804, column: 7, scope: !1440, inlinedAt: !1034)
!1444 = !DILocation(line: 807, column: 17, scope: !1445, inlinedAt: !1034)
!1445 = distinct !DILexicalBlock(scope: !90, file: !3, line: 807, column: 7)
!1446 = !DILocation(line: 807, column: 20, scope: !1445, inlinedAt: !1034)
!1447 = !DILocation(line: 807, column: 46, scope: !1445, inlinedAt: !1034)
!1448 = !DILocation(line: 807, column: 7, scope: !90, inlinedAt: !1034)
!1449 = !DILocation(line: 809, column: 17, scope: !1450, inlinedAt: !1034)
!1450 = distinct !DILexicalBlock(scope: !1445, file: !3, line: 808, column: 5)
!1451 = !DILocation(line: 809, column: 30, scope: !1450, inlinedAt: !1034)
!1452 = !DILocation(line: 809, column: 7, scope: !1450, inlinedAt: !1034)
!1453 = !DILocation(line: 810, column: 7, scope: !1450, inlinedAt: !1034)
!1454 = !DILocation(line: 813, column: 9, scope: !1455, inlinedAt: !1034)
!1455 = distinct !DILexicalBlock(scope: !90, file: !3, line: 813, column: 7)
!1456 = !DILocation(line: 813, column: 7, scope: !90, inlinedAt: !1034)
!1457 = !DILocation(line: 821, column: 12, scope: !1458, inlinedAt: !1034)
!1458 = distinct !DILexicalBlock(scope: !1459, file: !3, line: 821, column: 11)
!1459 = distinct !DILexicalBlock(scope: !1455, file: !3, line: 820, column: 5)
!1460 = !DILocation(line: 821, column: 11, scope: !1459, inlinedAt: !1034)
!1461 = !DILocation(line: 854, column: 14, scope: !90, inlinedAt: !1034)
!1462 = !DILocation(line: 823, column: 36, scope: !1463, inlinedAt: !1034)
!1463 = distinct !DILexicalBlock(scope: !1464, file: !3, line: 823, column: 15)
!1464 = distinct !DILexicalBlock(scope: !1458, file: !3, line: 822, column: 9)
!1465 = !DILocation(line: 823, column: 15, scope: !1464, inlinedAt: !1034)
!1466 = !DILocation(line: 825, column: 21, scope: !1463, inlinedAt: !1034)
!1467 = !DILocation(line: 824, column: 13, scope: !1463, inlinedAt: !1034)
!1468 = !DILocation(line: 831, column: 39, scope: !1469, inlinedAt: !1034)
!1469 = distinct !DILexicalBlock(scope: !1464, file: !3, line: 831, column: 15)
!1470 = !DILocation(line: 831, column: 15, scope: !1464, inlinedAt: !1034)
!1471 = !DILocation(line: 833, column: 21, scope: !1469, inlinedAt: !1034)
!1472 = !DILocation(line: 832, column: 13, scope: !1469, inlinedAt: !1034)
!1473 = !DILocation(line: 839, column: 38, scope: !1474, inlinedAt: !1034)
!1474 = distinct !DILexicalBlock(scope: !1464, file: !3, line: 839, column: 15)
!1475 = !DILocation(line: 839, column: 15, scope: !1464, inlinedAt: !1034)
!1476 = !DILocation(line: 841, column: 21, scope: !1474, inlinedAt: !1034)
!1477 = !DILocation(line: 840, column: 13, scope: !1474, inlinedAt: !1034)
!1478 = !DILocation(line: 847, column: 15, scope: !1479, inlinedAt: !1034)
!1479 = distinct !DILexicalBlock(scope: !1464, file: !3, line: 847, column: 15)
!1480 = !DILocation(line: 847, column: 30, scope: !1479, inlinedAt: !1034)
!1481 = !DILocation(line: 848, column: 26, scope: !1479, inlinedAt: !1034)
!1482 = !DILocation(line: 849, column: 20, scope: !1479, inlinedAt: !1034)
!1483 = !DILocation(line: 848, column: 13, scope: !1479, inlinedAt: !1034)
!1484 = !DILocation(line: 855, column: 11, scope: !90, inlinedAt: !1034)
!1485 = !DILocation(line: 816, column: 20, scope: !1486, inlinedAt: !1034)
!1486 = distinct !DILexicalBlock(scope: !1455, file: !3, line: 814, column: 5)
!1487 = !DILocation(line: 817, column: 14, scope: !1486, inlinedAt: !1034)
!1488 = !DILocation(line: 816, column: 7, scope: !1486, inlinedAt: !1034)
!1489 = !DILocation(line: 854, column: 11, scope: !90, inlinedAt: !1034)
!1490 = !DILocation(line: 857, column: 16, scope: !90, inlinedAt: !1034)
!1491 = !DILocation(line: 857, column: 23, scope: !90, inlinedAt: !1034)
!1492 = !DILocation(line: 858, column: 1, scope: !90, inlinedAt: !1034)
!1493 = !DILocation(line: 1047, column: 15, scope: !896)
!1494 = !DILocation(line: 1047, column: 12, scope: !896)
!1495 = !DILocation(line: 1047, column: 9, scope: !896)
!1496 = !DILocation(line: 0, scope: !895)
!1497 = !DILocation(line: 1051, column: 11, scope: !895)
!1498 = !DILocation(line: 1053, column: 17, scope: !900)
!1499 = !DILocation(line: 1053, column: 15, scope: !895)
!1500 = !DILocation(line: 1064, column: 36, scope: !899)
!1501 = !DILocation(line: 1064, column: 56, scope: !899)
!1502 = !DILocation(line: 1064, column: 59, scope: !899)
!1503 = !DILocation(line: 1065, column: 35, scope: !899)
!1504 = !DILocation(line: 1065, column: 38, scope: !899)
!1505 = !DILocation(line: 0, scope: !899)
!1506 = !DILocation(line: 1067, column: 19, scope: !899)
!1507 = !DILocation(line: 1069, column: 23, scope: !1508)
!1508 = distinct !DILexicalBlock(scope: !1509, file: !3, line: 1068, column: 17)
!1509 = distinct !DILexicalBlock(scope: !899, file: !3, line: 1067, column: 19)
!1510 = !DILocation(line: 0, scope: !1346, inlinedAt: !1511)
!1511 = distinct !DILocation(line: 1070, column: 21, scope: !1512)
!1512 = distinct !DILexicalBlock(scope: !1508, file: !3, line: 1069, column: 23)
!1513 = !DILocation(line: 110, column: 10, scope: !1346, inlinedAt: !1511)
!1514 = !DILocation(line: 1077, column: 19, scope: !1508)
!1515 = !DILocation(line: 1079, column: 19, scope: !1508)
!1516 = !DILocation(line: 1080, column: 19, scope: !1508)
!1517 = !DILocation(line: 1081, column: 19, scope: !1508)
!1518 = !DILocation(line: 1086, column: 31, scope: !1519)
!1519 = distinct !DILexicalBlock(scope: !899, file: !3, line: 1086, column: 19)
!1520 = !DILocation(line: 1086, column: 19, scope: !899)
!1521 = !DILocation(line: 0, scope: !1346, inlinedAt: !1522)
!1522 = distinct !DILocation(line: 1087, column: 17, scope: !1519)
!1523 = !DILocation(line: 110, column: 10, scope: !1346, inlinedAt: !1522)
!1524 = !DILocation(line: 0, scope: !902)
!1525 = !DILocation(line: 1089, column: 39, scope: !1526)
!1526 = distinct !DILexicalBlock(scope: !902, file: !3, line: 1089, column: 15)
!1527 = !DILocation(line: 1089, column: 15, scope: !902)
!1528 = !DILocation(line: 1092, column: 19, scope: !899)
!1529 = !DILocation(line: 1090, column: 17, scope: !1526)
!1530 = !DILocation(line: 1089, column: 62, scope: !1526)
!1531 = !DILocation(line: 1089, column: 56, scope: !1526)
!1532 = !DILocation(line: 1089, column: 36, scope: !1526)
!1533 = distinct !{!1533, !1527, !1534, !841}
!1534 = !DILocation(line: 1090, column: 17, scope: !902)
!1535 = !DILocation(line: 0, scope: !1346, inlinedAt: !1536)
!1536 = distinct !DILocation(line: 1094, column: 19, scope: !1537)
!1537 = distinct !DILexicalBlock(scope: !1538, file: !3, line: 1093, column: 17)
!1538 = distinct !DILexicalBlock(scope: !899, file: !3, line: 1092, column: 19)
!1539 = !DILocation(line: 110, column: 10, scope: !1346, inlinedAt: !1536)
!1540 = !DILocation(line: 0, scope: !1346, inlinedAt: !1541)
!1541 = distinct !DILocation(line: 1096, column: 19, scope: !1537)
!1542 = !DILocation(line: 110, column: 10, scope: !1346, inlinedAt: !1541)
!1543 = !DILocation(line: 1098, column: 19, scope: !1537)
!1544 = !DILocation(line: 1099, column: 17, scope: !1537)
!1545 = !DILocation(line: 1101, column: 15, scope: !899)
!1546 = !DILocation(line: 0, scope: !1346, inlinedAt: !1547)
!1547 = distinct !DILocation(line: 1101, column: 15, scope: !899)
!1548 = !DILocation(line: 110, column: 10, scope: !1346, inlinedAt: !1547)
!1549 = !DILocation(line: 1103, column: 9, scope: !896)
!1550 = !DILocation(line: 1042, column: 73, scope: !893)
!1551 = distinct !{!1551, !1026, !1552, !841}
!1552 = !DILocation(line: 1104, column: 5, scope: !890)
!1553 = !DILocation(line: 1106, column: 34, scope: !1028)
!1554 = !DILocation(line: 1106, column: 26, scope: !1028)
!1555 = !DILocation(line: 1106, column: 41, scope: !1028)
!1556 = !DILocation(line: 1106, column: 7, scope: !873)
!1557 = !DILocation(line: 1107, column: 5, scope: !1028)
!1558 = !DILocation(line: 1109, column: 10, scope: !873)
!1559 = !DILocation(line: 1110, column: 1, scope: !873)
!1560 = !DILocation(line: 361, column: 51, scope: !1226, inlinedAt: !1255)
!1561 = !DILocation(line: 361, column: 30, scope: !1226, inlinedAt: !1255)
!1562 = distinct !{!1562, !1258, !1563, !841}
!1563 = !DILocation(line: 366, column: 5, scope: !1221, inlinedAt: !1255)
!1564 = !DISubprogram(name: "bindtextdomain", scope: !862, file: !862, line: 86, type: !1565, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !221)
!1565 = !DISubroutineType(types: !1566)
!1566 = !{!59, !93, !93}
!1567 = !DISubprogram(name: "textdomain", scope: !862, file: !862, line: 82, type: !1568, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !221)
!1568 = !DISubroutineType(types: !1569)
!1569 = !{!59, !93}
!1570 = !DISubprogram(name: "atexit", scope: !1571, file: !1571, line: 595, type: !1572, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !221)
!1571 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!1572 = !DISubroutineType(types: !1573)
!1573 = !{!64, !1574}
!1574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !795, size: 64)
!1575 = !DISubprogram(name: "setvbuf", scope: !866, file: !866, line: 308, type: !1576, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !221)
!1576 = !DISubroutineType(types: !1577)
!1577 = !{!64, !120, !59, !64, !40}
!1578 = !DISubprogram(name: "getopt_long", scope: !199, file: !199, line: 66, type: !1579, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !221)
!1579 = !DISubroutineType(types: !1580)
!1580 = !{!64, !64, !1581, !93, !1583, !204}
!1581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1582, size: 64)
!1582 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !59)
!1583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !197, size: 64)
!1584 = !DISubprogram(name: "error", scope: !1585, file: !1585, line: 52, type: !1586, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !221)
!1585 = !DIFile(filename: "./lib/error.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!1586 = !DISubroutineType(types: !1587)
!1587 = !{null, !64, !64, !93, null}
!1588 = distinct !DISubprogram(name: "digest_file", scope: !3, file: !3, line: 591, type: !1589, scopeLine: 593, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1592)
!1589 = !DISubroutineType(types: !1590)
!1590 = !{!71, !93, !204, !65, !1591}
!1591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !71, size: 64)
!1592 = !{!1593, !1594, !1595, !1596, !1597, !1598, !1599}
!1593 = !DILocalVariable(name: "filename", arg: 1, scope: !1588, file: !3, line: 591, type: !93)
!1594 = !DILocalVariable(name: "binary", arg: 2, scope: !1588, file: !3, line: 591, type: !204)
!1595 = !DILocalVariable(name: "bin_result", arg: 3, scope: !1588, file: !3, line: 591, type: !65)
!1596 = !DILocalVariable(name: "missing", arg: 4, scope: !1588, file: !3, line: 592, type: !1591)
!1597 = !DILocalVariable(name: "fp", scope: !1588, file: !3, line: 594, type: !98)
!1598 = !DILocalVariable(name: "err", scope: !1588, file: !3, line: 595, type: !64)
!1599 = !DILocalVariable(name: "is_stdin", scope: !1588, file: !3, line: 596, type: !71)
!1600 = !DILocation(line: 0, scope: !1588)
!1601 = !DILocation(line: 596, column: 19, scope: !1588)
!1602 = !DILocation(line: 598, column: 12, scope: !1588)
!1603 = !{!1604, !1604, i64 0}
!1604 = !{!"_Bool", !789, i64 0}
!1605 = !DILocation(line: 600, column: 7, scope: !1588)
!1606 = !DILocation(line: 602, column: 23, scope: !1607)
!1607 = distinct !DILexicalBlock(scope: !1608, file: !3, line: 601, column: 5)
!1608 = distinct !DILexicalBlock(scope: !1588, file: !3, line: 600, column: 7)
!1609 = !DILocation(line: 603, column: 12, scope: !1607)
!1610 = !DILocation(line: 611, column: 5, scope: !1607)
!1611 = !DILocation(line: 614, column: 12, scope: !1612)
!1612 = distinct !DILexicalBlock(scope: !1608, file: !3, line: 613, column: 5)
!1613 = !DILocation(line: 615, column: 14, scope: !1614)
!1614 = distinct !DILexicalBlock(scope: !1612, file: !3, line: 615, column: 11)
!1615 = !DILocation(line: 615, column: 11, scope: !1612)
!1616 = !DILocation(line: 617, column: 15, scope: !1617)
!1617 = distinct !DILexicalBlock(scope: !1618, file: !3, line: 617, column: 15)
!1618 = distinct !DILexicalBlock(scope: !1614, file: !3, line: 616, column: 9)
!1619 = !DILocation(line: 0, scope: !1618)
!1620 = !DILocation(line: 617, column: 30, scope: !1617)
!1621 = !DILocation(line: 617, column: 33, scope: !1617)
!1622 = !DILocation(line: 617, column: 39, scope: !1617)
!1623 = !DILocation(line: 617, column: 15, scope: !1618)
!1624 = !DILocation(line: 619, column: 24, scope: !1625)
!1625 = distinct !DILexicalBlock(scope: !1617, file: !3, line: 618, column: 13)
!1626 = !DILocation(line: 620, column: 15, scope: !1625)
!1627 = !DILocation(line: 622, column: 21, scope: !1618)
!1628 = !DILocation(line: 622, column: 34, scope: !1618)
!1629 = !DILocation(line: 622, column: 11, scope: !1618)
!1630 = !DILocation(line: 623, column: 11, scope: !1618)
!1631 = !DILocation(line: 0, scope: !1608)
!1632 = !DILocation(line: 627, column: 3, scope: !1588)
!1633 = !DILocation(line: 632, column: 9, scope: !1588)
!1634 = !DILocation(line: 634, column: 7, scope: !1635)
!1635 = distinct !DILexicalBlock(scope: !1588, file: !3, line: 634, column: 7)
!1636 = !DILocation(line: 634, column: 7, scope: !1588)
!1637 = !DILocation(line: 636, column: 17, scope: !1638)
!1638 = distinct !DILexicalBlock(scope: !1635, file: !3, line: 635, column: 5)
!1639 = !DILocation(line: 636, column: 30, scope: !1638)
!1640 = !DILocation(line: 636, column: 7, scope: !1638)
!1641 = !DILocation(line: 637, column: 17, scope: !1642)
!1642 = distinct !DILexicalBlock(scope: !1638, file: !3, line: 637, column: 11)
!1643 = !DILocation(line: 637, column: 14, scope: !1642)
!1644 = !DILocation(line: 637, column: 11, scope: !1638)
!1645 = !DILocation(line: 638, column: 9, scope: !1642)
!1646 = !DILocation(line: 642, column: 17, scope: !1647)
!1647 = distinct !DILexicalBlock(scope: !1588, file: !3, line: 642, column: 7)
!1648 = !DILocation(line: 642, column: 20, scope: !1647)
!1649 = !DILocation(line: 642, column: 32, scope: !1647)
!1650 = !DILocation(line: 642, column: 7, scope: !1588)
!1651 = !DILocation(line: 644, column: 17, scope: !1652)
!1652 = distinct !DILexicalBlock(scope: !1647, file: !3, line: 643, column: 5)
!1653 = !DILocation(line: 644, column: 30, scope: !1652)
!1654 = !DILocation(line: 644, column: 7, scope: !1652)
!1655 = !DILocation(line: 645, column: 7, scope: !1652)
!1656 = !DILocation(line: 649, column: 1, scope: !1588)
!1657 = distinct !DISubprogram(name: "print_filename", scope: !3, file: !3, line: 550, type: !1658, scopeLine: 551, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1660)
!1658 = !DISubroutineType(types: !1659)
!1659 = !{null, !93, !71}
!1660 = !{!1661, !1662}
!1661 = !DILocalVariable(name: "file", arg: 1, scope: !1657, file: !3, line: 550, type: !93)
!1662 = !DILocalVariable(name: "escape", arg: 2, scope: !1657, file: !3, line: 550, type: !71)
!1663 = !DILocation(line: 0, scope: !1657)
!1664 = !DILocation(line: 552, column: 7, scope: !1657)
!1665 = !DILocation(line: 558, column: 10, scope: !1657)
!1666 = !DILocation(line: 558, column: 3, scope: !1657)
!1667 = !DILocation(line: 554, column: 7, scope: !1668)
!1668 = distinct !DILexicalBlock(scope: !1669, file: !3, line: 553, column: 5)
!1669 = distinct !DILexicalBlock(scope: !1657, file: !3, line: 552, column: 7)
!1670 = !DILocation(line: 555, column: 7, scope: !1668)
!1671 = !DILocation(line: 560, column: 15, scope: !1672)
!1672 = distinct !DILexicalBlock(scope: !1657, file: !3, line: 559, column: 5)
!1673 = !DILocation(line: 560, column: 7, scope: !1672)
!1674 = !DILocation(line: 563, column: 11, scope: !1675)
!1675 = distinct !DILexicalBlock(scope: !1672, file: !3, line: 561, column: 9)
!1676 = !DILocation(line: 564, column: 11, scope: !1675)
!1677 = !DILocation(line: 567, column: 11, scope: !1675)
!1678 = !DILocation(line: 568, column: 11, scope: !1675)
!1679 = !DILocation(line: 0, scope: !1346, inlinedAt: !1680)
!1680 = distinct !DILocation(line: 571, column: 11, scope: !1675)
!1681 = !DILocation(line: 110, column: 10, scope: !1346, inlinedAt: !1680)
!1682 = !DILocation(line: 574, column: 11, scope: !1672)
!1683 = distinct !{!1683, !1666, !1684, !841}
!1684 = !DILocation(line: 575, column: 5, scope: !1657)
!1685 = !DILocation(line: 576, column: 1, scope: !1657)
!1686 = !DISubprogram(name: "dcngettext", scope: !862, file: !862, line: 73, type: !1687, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !221)
!1687 = !DISubroutineType(types: !1688)
!1688 = !{!59, !93, !93, !93, !40, !64}
!1689 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !226, file: !226, line: 51, type: !811, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !225, retainedNodes: !1690)
!1690 = !{!1691}
!1691 = !DILocalVariable(name: "file", arg: 1, scope: !1689, file: !226, line: 51, type: !93)
!1692 = !DILocation(line: 0, scope: !1689)
!1693 = !DILocation(line: 53, column: 13, scope: !1689)
!1694 = !DILocation(line: 54, column: 1, scope: !1689)
!1695 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !226, file: !226, line: 88, type: !1696, scopeLine: 89, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !225, retainedNodes: !1698)
!1696 = !DISubroutineType(types: !1697)
!1697 = !{null, !71}
!1698 = !{!1699}
!1699 = !DILocalVariable(name: "ignore", arg: 1, scope: !1695, file: !226, line: 88, type: !71)
!1700 = !DILocation(line: 0, scope: !1695)
!1701 = !DILocation(line: 90, column: 16, scope: !1695)
!1702 = !DILocation(line: 91, column: 1, scope: !1695)
!1703 = distinct !DISubprogram(name: "close_stdout", scope: !226, file: !226, line: 117, type: !795, scopeLine: 118, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !225, retainedNodes: !1704)
!1704 = !{!1705}
!1705 = !DILocalVariable(name: "write_error", scope: !1706, file: !226, line: 122, type: !93)
!1706 = distinct !DILexicalBlock(scope: !1707, file: !226, line: 121, column: 5)
!1707 = distinct !DILexicalBlock(scope: !1703, file: !226, line: 119, column: 7)
!1708 = !DILocation(line: 119, column: 21, scope: !1707)
!1709 = !DILocation(line: 119, column: 7, scope: !1707)
!1710 = !DILocation(line: 119, column: 29, scope: !1707)
!1711 = !DILocation(line: 120, column: 7, scope: !1707)
!1712 = !DILocation(line: 120, column: 12, scope: !1707)
!1713 = !{i8 0, i8 2}
!1714 = !DILocation(line: 120, column: 25, scope: !1707)
!1715 = !DILocation(line: 120, column: 28, scope: !1707)
!1716 = !DILocation(line: 120, column: 34, scope: !1707)
!1717 = !DILocation(line: 119, column: 7, scope: !1703)
!1718 = !DILocation(line: 122, column: 33, scope: !1706)
!1719 = !DILocation(line: 0, scope: !1706)
!1720 = !DILocation(line: 123, column: 11, scope: !1721)
!1721 = distinct !DILexicalBlock(scope: !1706, file: !226, line: 123, column: 11)
!1722 = !DILocation(line: 0, scope: !1721)
!1723 = !DILocation(line: 123, column: 11, scope: !1706)
!1724 = !DILocation(line: 124, column: 36, scope: !1721)
!1725 = !DILocation(line: 124, column: 9, scope: !1721)
!1726 = !DILocation(line: 127, column: 9, scope: !1721)
!1727 = !DILocation(line: 129, column: 14, scope: !1706)
!1728 = !DILocation(line: 129, column: 7, scope: !1706)
!1729 = !DILocation(line: 134, column: 42, scope: !1730)
!1730 = distinct !DILexicalBlock(scope: !1703, file: !226, line: 134, column: 7)
!1731 = !DILocation(line: 134, column: 28, scope: !1730)
!1732 = !DILocation(line: 134, column: 50, scope: !1730)
!1733 = !DILocation(line: 134, column: 7, scope: !1703)
!1734 = !DILocation(line: 135, column: 12, scope: !1730)
!1735 = !DILocation(line: 135, column: 5, scope: !1730)
!1736 = !DILocation(line: 136, column: 1, scope: !1703)
!1737 = distinct !DISubprogram(name: "md5_init_ctx", scope: !233, file: !233, line: 76, type: !1738, scopeLine: 77, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !232, retainedNodes: !1760)
!1738 = !DISubroutineType(types: !1739)
!1739 = !{null, !1740}
!1740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1741, size: 64)
!1741 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "md5_ctx", file: !1742, line: 69, size: 1248, elements: !1743)
!1742 = !DIFile(filename: "./lib/md5.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!1743 = !{!1744, !1748, !1749, !1750, !1751, !1755, !1756}
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "A", scope: !1741, file: !1742, line: 71, baseType: !1745, size: 32)
!1745 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !1746, line: 26, baseType: !1747)
!1746 = !DIFile(filename: "/usr/include/bits/stdint-uintn.h", directory: "")
!1747 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !44, line: 42, baseType: !7)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "B", scope: !1741, file: !1742, line: 72, baseType: !1745, size: 32, offset: 32)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "C", scope: !1741, file: !1742, line: 73, baseType: !1745, size: 32, offset: 64)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "D", scope: !1741, file: !1742, line: 74, baseType: !1745, size: 32, offset: 96)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "total", scope: !1741, file: !1742, line: 76, baseType: !1752, size: 64, offset: 128)
!1752 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1745, size: 64, elements: !1753)
!1753 = !{!1754}
!1754 = !DISubrange(count: 2)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !1741, file: !1742, line: 77, baseType: !1745, size: 32, offset: 192)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !1741, file: !1742, line: 78, baseType: !1757, size: 1024, offset: 224)
!1757 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1745, size: 1024, elements: !1758)
!1758 = !{!1759}
!1759 = !DISubrange(count: 32)
!1760 = !{!1761}
!1761 = !DILocalVariable(name: "ctx", arg: 1, scope: !1737, file: !233, line: 76, type: !1740)
!1762 = !DILocation(line: 0, scope: !1737)
!1763 = !DILocation(line: 78, column: 10, scope: !1737)
!1764 = !DILocation(line: 83, column: 19, scope: !1737)
!1765 = !DILocation(line: 83, column: 33, scope: !1737)
!1766 = !DILocation(line: 83, column: 3, scope: !1737)
!1767 = !DILocation(line: 83, column: 17, scope: !1737)
!1768 = !DILocation(line: 84, column: 8, scope: !1737)
!1769 = !DILocation(line: 84, column: 15, scope: !1737)
!1770 = !{!1771, !1017, i64 24}
!1771 = !{!"md5_ctx", !1017, i64 0, !1017, i64 4, !1017, i64 8, !1017, i64 12, !789, i64 16, !1017, i64 24, !789, i64 28}
!1772 = !DILocation(line: 85, column: 1, scope: !1737)
!1773 = distinct !DISubprogram(name: "md5_read_ctx", scope: !233, file: !233, line: 99, type: !1774, scopeLine: 100, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !232, retainedNodes: !1778)
!1774 = !DISubroutineType(types: !1775)
!1775 = !{!61, !1776, !61}
!1776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1777, size: 64)
!1777 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1741)
!1778 = !{!1779, !1780, !1781}
!1779 = !DILocalVariable(name: "ctx", arg: 1, scope: !1773, file: !233, line: 99, type: !1776)
!1780 = !DILocalVariable(name: "resbuf", arg: 2, scope: !1773, file: !233, line: 99, type: !61)
!1781 = !DILocalVariable(name: "r", scope: !1773, file: !233, line: 101, type: !59)
!1782 = !DILocation(line: 0, scope: !1773)
!1783 = !DILocation(line: 102, column: 38, scope: !1773)
!1784 = !{!1771, !1017, i64 0}
!1785 = !DILocalVariable(name: "cp", arg: 1, scope: !1786, file: !233, line: 91, type: !59)
!1786 = distinct !DISubprogram(name: "set_uint32", scope: !233, file: !233, line: 91, type: !1787, scopeLine: 92, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !232, retainedNodes: !1789)
!1787 = !DISubroutineType(types: !1788)
!1788 = !{null, !59, !1745}
!1789 = !{!1785, !1790}
!1790 = !DILocalVariable(name: "v", arg: 2, scope: !1786, file: !233, line: 91, type: !1745)
!1791 = !DILocation(line: 0, scope: !1786, inlinedAt: !1792)
!1792 = distinct !DILocation(line: 102, column: 3, scope: !1773)
!1793 = !DILocalVariable(name: "__dest", arg: 1, scope: !1794, file: !1795, line: 26, type: !1798)
!1794 = distinct !DISubprogram(name: "memcpy", scope: !1795, file: !1795, line: 26, type: !1796, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !232, retainedNodes: !1802)
!1795 = !DIFile(filename: "/usr/include/bits/string_fortified.h", directory: "")
!1796 = !DISubroutineType(types: !1797)
!1797 = !{!61, !1798, !1799, !62}
!1798 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !61)
!1799 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1800)
!1800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1801, size: 64)
!1801 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1802 = !{!1793, !1803, !1804}
!1803 = !DILocalVariable(name: "__src", arg: 2, scope: !1794, file: !1795, line: 26, type: !1799)
!1804 = !DILocalVariable(name: "__len", arg: 3, scope: !1794, file: !1795, line: 26, type: !62)
!1805 = !DILocation(line: 0, scope: !1794, inlinedAt: !1806)
!1806 = distinct !DILocation(line: 93, column: 3, scope: !1786, inlinedAt: !1792)
!1807 = !DILocation(line: 29, column: 10, scope: !1794, inlinedAt: !1806)
!1808 = !DILocation(line: 103, column: 17, scope: !1773)
!1809 = !DILocation(line: 103, column: 38, scope: !1773)
!1810 = !{!1771, !1017, i64 4}
!1811 = !DILocation(line: 0, scope: !1786, inlinedAt: !1812)
!1812 = distinct !DILocation(line: 103, column: 3, scope: !1773)
!1813 = !DILocation(line: 0, scope: !1794, inlinedAt: !1814)
!1814 = distinct !DILocation(line: 93, column: 3, scope: !1786, inlinedAt: !1812)
!1815 = !DILocation(line: 29, column: 10, scope: !1794, inlinedAt: !1814)
!1816 = !DILocation(line: 104, column: 17, scope: !1773)
!1817 = !DILocation(line: 104, column: 38, scope: !1773)
!1818 = !{!1771, !1017, i64 8}
!1819 = !DILocation(line: 0, scope: !1786, inlinedAt: !1820)
!1820 = distinct !DILocation(line: 104, column: 3, scope: !1773)
!1821 = !DILocation(line: 0, scope: !1794, inlinedAt: !1822)
!1822 = distinct !DILocation(line: 93, column: 3, scope: !1786, inlinedAt: !1820)
!1823 = !DILocation(line: 29, column: 10, scope: !1794, inlinedAt: !1822)
!1824 = !DILocation(line: 105, column: 17, scope: !1773)
!1825 = !DILocation(line: 105, column: 38, scope: !1773)
!1826 = !{!1771, !1017, i64 12}
!1827 = !DILocation(line: 0, scope: !1786, inlinedAt: !1828)
!1828 = distinct !DILocation(line: 105, column: 3, scope: !1773)
!1829 = !DILocation(line: 0, scope: !1794, inlinedAt: !1830)
!1830 = distinct !DILocation(line: 93, column: 3, scope: !1786, inlinedAt: !1828)
!1831 = !DILocation(line: 29, column: 10, scope: !1794, inlinedAt: !1830)
!1832 = !DILocation(line: 107, column: 3, scope: !1773)
!1833 = distinct !DISubprogram(name: "md5_finish_ctx", scope: !233, file: !233, line: 113, type: !1834, scopeLine: 114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !232, retainedNodes: !1836)
!1834 = !DISubroutineType(types: !1835)
!1835 = !{!61, !1740, !61}
!1836 = !{!1837, !1838, !1839, !1840}
!1837 = !DILocalVariable(name: "ctx", arg: 1, scope: !1833, file: !233, line: 113, type: !1740)
!1838 = !DILocalVariable(name: "resbuf", arg: 2, scope: !1833, file: !233, line: 113, type: !61)
!1839 = !DILocalVariable(name: "bytes", scope: !1833, file: !233, line: 116, type: !1745)
!1840 = !DILocalVariable(name: "size", scope: !1833, file: !233, line: 117, type: !62)
!1841 = !DILocation(line: 0, scope: !1833)
!1842 = !DILocation(line: 116, column: 25, scope: !1833)
!1843 = !DILocation(line: 117, column: 24, scope: !1833)
!1844 = !DILocation(line: 117, column: 17, scope: !1833)
!1845 = !DILocation(line: 120, column: 3, scope: !1833)
!1846 = !DILocation(line: 120, column: 17, scope: !1833)
!1847 = !DILocation(line: 121, column: 21, scope: !1848)
!1848 = distinct !DILexicalBlock(scope: !1833, file: !233, line: 121, column: 7)
!1849 = !DILocation(line: 121, column: 7, scope: !1833)
!1850 = !DILocation(line: 122, column: 5, scope: !1848)
!1851 = !DILocation(line: 126, column: 27, scope: !1833)
!1852 = !DILocation(line: 125, column: 27, scope: !1833)
!1853 = !DILocation(line: 125, column: 20, scope: !1833)
!1854 = !DILocation(line: 125, column: 3, scope: !1833)
!1855 = !DILocation(line: 125, column: 25, scope: !1833)
!1856 = !DILocation(line: 126, column: 20, scope: !1833)
!1857 = !DILocation(line: 126, column: 3, scope: !1833)
!1858 = !DILocation(line: 126, column: 25, scope: !1833)
!1859 = !DILocation(line: 128, column: 12, scope: !1833)
!1860 = !DILocation(line: 128, column: 63, scope: !1833)
!1861 = !DILocation(line: 128, column: 67, scope: !1833)
!1862 = !DILocation(line: 0, scope: !1794, inlinedAt: !1863)
!1863 = distinct !DILocation(line: 128, column: 3, scope: !1833)
!1864 = !DILocation(line: 29, column: 10, scope: !1794, inlinedAt: !1863)
!1865 = !DILocation(line: 131, column: 40, scope: !1833)
!1866 = !DILocation(line: 131, column: 3, scope: !1833)
!1867 = !DILocation(line: 0, scope: !1773, inlinedAt: !1868)
!1868 = distinct !DILocation(line: 133, column: 10, scope: !1833)
!1869 = !DILocation(line: 102, column: 38, scope: !1773, inlinedAt: !1868)
!1870 = !DILocation(line: 0, scope: !1786, inlinedAt: !1871)
!1871 = distinct !DILocation(line: 102, column: 3, scope: !1773, inlinedAt: !1868)
!1872 = !DILocation(line: 0, scope: !1794, inlinedAt: !1873)
!1873 = distinct !DILocation(line: 93, column: 3, scope: !1786, inlinedAt: !1871)
!1874 = !DILocation(line: 29, column: 10, scope: !1794, inlinedAt: !1873)
!1875 = !DILocation(line: 103, column: 17, scope: !1773, inlinedAt: !1868)
!1876 = !DILocation(line: 103, column: 38, scope: !1773, inlinedAt: !1868)
!1877 = !DILocation(line: 0, scope: !1786, inlinedAt: !1878)
!1878 = distinct !DILocation(line: 103, column: 3, scope: !1773, inlinedAt: !1868)
!1879 = !DILocation(line: 0, scope: !1794, inlinedAt: !1880)
!1880 = distinct !DILocation(line: 93, column: 3, scope: !1786, inlinedAt: !1878)
!1881 = !DILocation(line: 29, column: 10, scope: !1794, inlinedAt: !1880)
!1882 = !DILocation(line: 104, column: 17, scope: !1773, inlinedAt: !1868)
!1883 = !DILocation(line: 104, column: 38, scope: !1773, inlinedAt: !1868)
!1884 = !DILocation(line: 0, scope: !1786, inlinedAt: !1885)
!1885 = distinct !DILocation(line: 104, column: 3, scope: !1773, inlinedAt: !1868)
!1886 = !DILocation(line: 0, scope: !1794, inlinedAt: !1887)
!1887 = distinct !DILocation(line: 93, column: 3, scope: !1786, inlinedAt: !1885)
!1888 = !DILocation(line: 29, column: 10, scope: !1794, inlinedAt: !1887)
!1889 = !DILocation(line: 105, column: 17, scope: !1773, inlinedAt: !1868)
!1890 = !DILocation(line: 105, column: 38, scope: !1773, inlinedAt: !1868)
!1891 = !DILocation(line: 0, scope: !1786, inlinedAt: !1892)
!1892 = distinct !DILocation(line: 105, column: 3, scope: !1773, inlinedAt: !1868)
!1893 = !DILocation(line: 0, scope: !1794, inlinedAt: !1894)
!1894 = distinct !DILocation(line: 93, column: 3, scope: !1786, inlinedAt: !1892)
!1895 = !DILocation(line: 29, column: 10, scope: !1794, inlinedAt: !1894)
!1896 = !DILocation(line: 133, column: 3, scope: !1833)
!1897 = distinct !DISubprogram(name: "md5_process_block", scope: !233, file: !233, line: 325, type: !1898, scopeLine: 326, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !232, retainedNodes: !1900)
!1898 = !DISubroutineType(types: !1899)
!1899 = !{null, !1800, !62, !1740}
!1900 = !{!1901, !1902, !1903, !1904, !1906, !1909, !1910, !1911, !1912, !1913, !1914, !1915, !1916, !1919, !1920, !1921, !1922}
!1901 = !DILocalVariable(name: "buffer", arg: 1, scope: !1897, file: !233, line: 325, type: !1800)
!1902 = !DILocalVariable(name: "len", arg: 2, scope: !1897, file: !233, line: 325, type: !62)
!1903 = !DILocalVariable(name: "ctx", arg: 3, scope: !1897, file: !233, line: 325, type: !1740)
!1904 = !DILocalVariable(name: "correct_words", scope: !1897, file: !233, line: 327, type: !1905)
!1905 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1745, size: 512, elements: !192)
!1906 = !DILocalVariable(name: "words", scope: !1897, file: !233, line: 328, type: !1907)
!1907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1908, size: 64)
!1908 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1745)
!1909 = !DILocalVariable(name: "nwords", scope: !1897, file: !233, line: 329, type: !62)
!1910 = !DILocalVariable(name: "endp", scope: !1897, file: !233, line: 330, type: !1907)
!1911 = !DILocalVariable(name: "A", scope: !1897, file: !233, line: 331, type: !1745)
!1912 = !DILocalVariable(name: "B", scope: !1897, file: !233, line: 332, type: !1745)
!1913 = !DILocalVariable(name: "C", scope: !1897, file: !233, line: 333, type: !1745)
!1914 = !DILocalVariable(name: "D", scope: !1897, file: !233, line: 334, type: !1745)
!1915 = !DILocalVariable(name: "lolen", scope: !1897, file: !233, line: 335, type: !1745)
!1916 = !DILocalVariable(name: "cwp", scope: !1917, file: !233, line: 347, type: !1918)
!1917 = distinct !DILexicalBlock(scope: !1897, file: !233, line: 346, column: 5)
!1918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1745, size: 64)
!1919 = !DILocalVariable(name: "A_save", scope: !1917, file: !233, line: 348, type: !1745)
!1920 = !DILocalVariable(name: "B_save", scope: !1917, file: !233, line: 349, type: !1745)
!1921 = !DILocalVariable(name: "C_save", scope: !1917, file: !233, line: 350, type: !1745)
!1922 = !DILocalVariable(name: "D_save", scope: !1917, file: !233, line: 351, type: !1745)
!1923 = !DILocation(line: 0, scope: !1897)
!1924 = !DILocation(line: 328, column: 27, scope: !1897)
!1925 = !DILocation(line: 329, column: 23, scope: !1897)
!1926 = !DILocation(line: 330, column: 32, scope: !1897)
!1927 = !DILocation(line: 331, column: 21, scope: !1897)
!1928 = !DILocation(line: 332, column: 21, scope: !1897)
!1929 = !DILocation(line: 333, column: 21, scope: !1897)
!1930 = !DILocation(line: 334, column: 21, scope: !1897)
!1931 = !DILocation(line: 335, column: 20, scope: !1897)
!1932 = !DILocation(line: 340, column: 3, scope: !1897)
!1933 = !DILocation(line: 340, column: 17, scope: !1897)
!1934 = !DILocation(line: 341, column: 25, scope: !1897)
!1935 = !DILocation(line: 341, column: 54, scope: !1897)
!1936 = !DILocation(line: 341, column: 39, scope: !1897)
!1937 = !DILocation(line: 341, column: 37, scope: !1897)
!1938 = !DILocation(line: 341, column: 3, scope: !1897)
!1939 = !DILocation(line: 341, column: 17, scope: !1897)
!1940 = !DILocation(line: 345, column: 16, scope: !1897)
!1941 = !DILocation(line: 345, column: 3, scope: !1897)
!1942 = !DILocation(line: 0, scope: !1917)
!1943 = !DILocation(line: 385, column: 7, scope: !1944)
!1944 = distinct !DILexicalBlock(scope: !1917, file: !233, line: 385, column: 7)
!1945 = !DILocation(line: 386, column: 7, scope: !1946)
!1946 = distinct !DILexicalBlock(scope: !1917, file: !233, line: 386, column: 7)
!1947 = !DILocation(line: 387, column: 7, scope: !1948)
!1948 = distinct !DILexicalBlock(scope: !1917, file: !233, line: 387, column: 7)
!1949 = !DILocation(line: 388, column: 7, scope: !1950)
!1950 = distinct !DILexicalBlock(scope: !1917, file: !233, line: 388, column: 7)
!1951 = !DILocation(line: 389, column: 7, scope: !1952)
!1952 = distinct !DILexicalBlock(scope: !1917, file: !233, line: 389, column: 7)
!1953 = !DILocation(line: 390, column: 7, scope: !1954)
!1954 = distinct !DILexicalBlock(scope: !1917, file: !233, line: 390, column: 7)
!1955 = !DILocation(line: 391, column: 7, scope: !1956)
!1956 = distinct !DILexicalBlock(scope: !1917, file: !233, line: 391, column: 7)
!1957 = !DILocation(line: 392, column: 7, scope: !1958)
!1958 = distinct !DILexicalBlock(scope: !1917, file: !233, line: 392, column: 7)
!1959 = !DILocation(line: 393, column: 7, scope: !1960)
!1960 = distinct !DILexicalBlock(scope: !1917, file: !233, line: 393, column: 7)
!1961 = !DILocation(line: 394, column: 7, scope: !1962)
!1962 = distinct !DILexicalBlock(scope: !1917, file: !233, line: 394, column: 7)
!1963 = !DILocation(line: 395, column: 7, scope: !1964)
!1964 = distinct !DILexicalBlock(scope: !1917, file: !233, line: 395, column: 7)
!1965 = !DILocation(line: 396, column: 7, scope: !1966)
!1966 = distinct !DILexicalBlock(scope: !1917, file: !233, line: 396, column: 7)
!1967 = !DILocation(line: 397, column: 7, scope: !1968)
!1968 = distinct !DILexicalBlock(scope: !1917, file: !233, line: 397, column: 7)
!1969 = !DILocation(line: 398, column: 7, scope: !1970)
!1970 = distinct !DILexicalBlock(scope: !1917, file: !233, line: 398, column: 7)
!1971 = !DILocation(line: 399, column: 7, scope: !1972)
!1972 = distinct !DILexicalBlock(scope: !1917, file: !233, line: 399, column: 7)
!1973 = !DILocation(line: 400, column: 7, scope: !1974)
!1974 = distinct !DILexicalBlock(scope: !1917, file: !233, line: 400, column: 7)
!1975 = !DILocation(line: 416, column: 7, scope: !1976)
!1976 = distinct !DILexicalBlock(scope: !1917, file: !233, line: 416, column: 7)
!1977 = !DILocation(line: 417, column: 7, scope: !1978)
!1978 = distinct !DILexicalBlock(scope: !1917, file: !233, line: 417, column: 7)
!1979 = !DILocation(line: 418, column: 7, scope: !1980)
!1980 = distinct !DILexicalBlock(scope: !1917, file: !233, line: 418, column: 7)
!1981 = !DILocation(line: 419, column: 7, scope: !1982)
!1982 = distinct !DILexicalBlock(scope: !1917, file: !233, line: 419, column: 7)
!1983 = !DILocation(line: 420, column: 7, scope: !1984)
!1984 = distinct !DILexicalBlock(scope: !1917, file: !233, line: 420, column: 7)
!1985 = !DILocation(line: 421, column: 7, scope: !1986)
!1986 = distinct !DILexicalBlock(scope: !1917, file: !233, line: 421, column: 7)
!1987 = !DILocation(line: 422, column: 7, scope: !1988)
!1988 = distinct !DILexicalBlock(scope: !1917, file: !233, line: 422, column: 7)
!1989 = !DILocation(line: 423, column: 7, scope: !1990)
!1990 = distinct !DILexicalBlock(scope: !1917, file: !233, line: 423, column: 7)
!1991 = !DILocation(line: 424, column: 7, scope: !1992)
!1992 = distinct !DILexicalBlock(scope: !1917, file: !233, line: 424, column: 7)
!1993 = !DILocation(line: 425, column: 7, scope: !1994)
!1994 = distinct !DILexicalBlock(scope: !1917, file: !233, line: 425, column: 7)
!1995 = !DILocation(line: 426, column: 7, scope: !1996)
!1996 = distinct !DILexicalBlock(scope: !1917, file: !233, line: 426, column: 7)
!1997 = !DILocation(line: 427, column: 7, scope: !1998)
!1998 = distinct !DILexicalBlock(scope: !1917, file: !233, line: 427, column: 7)
!1999 = !DILocation(line: 428, column: 7, scope: !2000)
!2000 = distinct !DILexicalBlock(scope: !1917, file: !233, line: 428, column: 7)
!2001 = !DILocation(line: 429, column: 7, scope: !2002)
!2002 = distinct !DILexicalBlock(scope: !1917, file: !233, line: 429, column: 7)
!2003 = !DILocation(line: 430, column: 7, scope: !2004)
!2004 = distinct !DILexicalBlock(scope: !1917, file: !233, line: 430, column: 7)
!2005 = !DILocation(line: 431, column: 7, scope: !2006)
!2006 = distinct !DILexicalBlock(scope: !1917, file: !233, line: 431, column: 7)
!2007 = !DILocation(line: 434, column: 7, scope: !2008)
!2008 = distinct !DILexicalBlock(scope: !1917, file: !233, line: 434, column: 7)
!2009 = !DILocation(line: 435, column: 7, scope: !2010)
!2010 = distinct !DILexicalBlock(scope: !1917, file: !233, line: 435, column: 7)
!2011 = !DILocation(line: 436, column: 7, scope: !2012)
!2012 = distinct !DILexicalBlock(scope: !1917, file: !233, line: 436, column: 7)
!2013 = !DILocation(line: 437, column: 7, scope: !2014)
!2014 = distinct !DILexicalBlock(scope: !1917, file: !233, line: 437, column: 7)
!2015 = !DILocation(line: 438, column: 7, scope: !2016)
!2016 = distinct !DILexicalBlock(scope: !1917, file: !233, line: 438, column: 7)
!2017 = !DILocation(line: 439, column: 7, scope: !2018)
!2018 = distinct !DILexicalBlock(scope: !1917, file: !233, line: 439, column: 7)
!2019 = !DILocation(line: 440, column: 7, scope: !2020)
!2020 = distinct !DILexicalBlock(scope: !1917, file: !233, line: 440, column: 7)
!2021 = !DILocation(line: 441, column: 7, scope: !2022)
!2022 = distinct !DILexicalBlock(scope: !1917, file: !233, line: 441, column: 7)
!2023 = !DILocation(line: 442, column: 7, scope: !2024)
!2024 = distinct !DILexicalBlock(scope: !1917, file: !233, line: 442, column: 7)
!2025 = !DILocation(line: 443, column: 7, scope: !2026)
!2026 = distinct !DILexicalBlock(scope: !1917, file: !233, line: 443, column: 7)
!2027 = !DILocation(line: 444, column: 7, scope: !2028)
!2028 = distinct !DILexicalBlock(scope: !1917, file: !233, line: 444, column: 7)
!2029 = !DILocation(line: 445, column: 7, scope: !2030)
!2030 = distinct !DILexicalBlock(scope: !1917, file: !233, line: 445, column: 7)
!2031 = !DILocation(line: 446, column: 7, scope: !2032)
!2032 = distinct !DILexicalBlock(scope: !1917, file: !233, line: 446, column: 7)
!2033 = !DILocation(line: 447, column: 7, scope: !2034)
!2034 = distinct !DILexicalBlock(scope: !1917, file: !233, line: 447, column: 7)
!2035 = !DILocation(line: 448, column: 7, scope: !2036)
!2036 = distinct !DILexicalBlock(scope: !1917, file: !233, line: 448, column: 7)
!2037 = !DILocation(line: 449, column: 7, scope: !2038)
!2038 = distinct !DILexicalBlock(scope: !1917, file: !233, line: 449, column: 7)
!2039 = !DILocation(line: 452, column: 7, scope: !2040)
!2040 = distinct !DILexicalBlock(scope: !1917, file: !233, line: 452, column: 7)
!2041 = !DILocation(line: 453, column: 7, scope: !2042)
!2042 = distinct !DILexicalBlock(scope: !1917, file: !233, line: 453, column: 7)
!2043 = !DILocation(line: 454, column: 7, scope: !2044)
!2044 = distinct !DILexicalBlock(scope: !1917, file: !233, line: 454, column: 7)
!2045 = !DILocation(line: 455, column: 7, scope: !2046)
!2046 = distinct !DILexicalBlock(scope: !1917, file: !233, line: 455, column: 7)
!2047 = !DILocation(line: 456, column: 7, scope: !2048)
!2048 = distinct !DILexicalBlock(scope: !1917, file: !233, line: 456, column: 7)
!2049 = !DILocation(line: 457, column: 7, scope: !2050)
!2050 = distinct !DILexicalBlock(scope: !1917, file: !233, line: 457, column: 7)
!2051 = !DILocation(line: 458, column: 7, scope: !2052)
!2052 = distinct !DILexicalBlock(scope: !1917, file: !233, line: 458, column: 7)
!2053 = !DILocation(line: 459, column: 7, scope: !2054)
!2054 = distinct !DILexicalBlock(scope: !1917, file: !233, line: 459, column: 7)
!2055 = !DILocation(line: 460, column: 7, scope: !2056)
!2056 = distinct !DILexicalBlock(scope: !1917, file: !233, line: 460, column: 7)
!2057 = !DILocation(line: 461, column: 7, scope: !2058)
!2058 = distinct !DILexicalBlock(scope: !1917, file: !233, line: 461, column: 7)
!2059 = !DILocation(line: 462, column: 7, scope: !2060)
!2060 = distinct !DILexicalBlock(scope: !1917, file: !233, line: 462, column: 7)
!2061 = !DILocation(line: 463, column: 7, scope: !2062)
!2062 = distinct !DILexicalBlock(scope: !1917, file: !233, line: 463, column: 7)
!2063 = !DILocation(line: 464, column: 7, scope: !2064)
!2064 = distinct !DILexicalBlock(scope: !1917, file: !233, line: 464, column: 7)
!2065 = !DILocation(line: 465, column: 7, scope: !2066)
!2066 = distinct !DILexicalBlock(scope: !1917, file: !233, line: 465, column: 7)
!2067 = !DILocation(line: 466, column: 7, scope: !2068)
!2068 = distinct !DILexicalBlock(scope: !1917, file: !233, line: 466, column: 7)
!2069 = !DILocation(line: 467, column: 7, scope: !2070)
!2070 = distinct !DILexicalBlock(scope: !1917, file: !233, line: 467, column: 7)
!2071 = !DILocation(line: 470, column: 9, scope: !1917)
!2072 = !DILocation(line: 471, column: 9, scope: !1917)
!2073 = !DILocation(line: 472, column: 9, scope: !1917)
!2074 = !DILocation(line: 473, column: 9, scope: !1917)
!2075 = distinct !{!2075, !1941, !2076, !841}
!2076 = !DILocation(line: 474, column: 5, scope: !1897)
!2077 = !DILocation(line: 477, column: 10, scope: !1897)
!2078 = !DILocation(line: 478, column: 10, scope: !1897)
!2079 = !DILocation(line: 479, column: 10, scope: !1897)
!2080 = !DILocation(line: 480, column: 10, scope: !1897)
!2081 = !DILocation(line: 481, column: 1, scope: !1897)
!2082 = distinct !DISubprogram(name: "md5_stream", scope: !233, file: !233, line: 145, type: !2083, scopeLine: 146, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !232, retainedNodes: !2119)
!2083 = !DISubroutineType(types: !2084)
!2084 = !{!64, !2085, !61}
!2085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2086, size: 64)
!2086 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !100, line: 7, baseType: !2087)
!2087 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !102, line: 49, size: 1728, elements: !2088)
!2088 = !{!2089, !2090, !2091, !2092, !2093, !2094, !2095, !2096, !2097, !2098, !2099, !2100, !2101, !2102, !2104, !2105, !2106, !2107, !2108, !2109, !2110, !2111, !2112, !2113, !2114, !2115, !2116, !2117, !2118}
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2087, file: !102, line: 51, baseType: !64, size: 32)
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2087, file: !102, line: 54, baseType: !59, size: 64, offset: 64)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2087, file: !102, line: 55, baseType: !59, size: 64, offset: 128)
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2087, file: !102, line: 56, baseType: !59, size: 64, offset: 192)
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2087, file: !102, line: 57, baseType: !59, size: 64, offset: 256)
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2087, file: !102, line: 58, baseType: !59, size: 64, offset: 320)
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2087, file: !102, line: 59, baseType: !59, size: 64, offset: 384)
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2087, file: !102, line: 60, baseType: !59, size: 64, offset: 448)
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2087, file: !102, line: 61, baseType: !59, size: 64, offset: 512)
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2087, file: !102, line: 64, baseType: !59, size: 64, offset: 576)
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2087, file: !102, line: 65, baseType: !59, size: 64, offset: 640)
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2087, file: !102, line: 66, baseType: !59, size: 64, offset: 704)
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2087, file: !102, line: 68, baseType: !117, size: 64, offset: 768)
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2087, file: !102, line: 70, baseType: !2103, size: 64, offset: 832)
!2103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2087, size: 64)
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2087, file: !102, line: 72, baseType: !64, size: 32, offset: 896)
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2087, file: !102, line: 73, baseType: !64, size: 32, offset: 928)
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2087, file: !102, line: 74, baseType: !124, size: 64, offset: 960)
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2087, file: !102, line: 77, baseType: !67, size: 16, offset: 1024)
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2087, file: !102, line: 78, baseType: !128, size: 8, offset: 1040)
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2087, file: !102, line: 79, baseType: !130, size: 8, offset: 1048)
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2087, file: !102, line: 81, baseType: !134, size: 64, offset: 1088)
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2087, file: !102, line: 89, baseType: !137, size: 64, offset: 1152)
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2087, file: !102, line: 91, baseType: !139, size: 64, offset: 1216)
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2087, file: !102, line: 92, baseType: !142, size: 64, offset: 1280)
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2087, file: !102, line: 93, baseType: !2103, size: 64, offset: 1344)
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2087, file: !102, line: 94, baseType: !61, size: 64, offset: 1408)
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2087, file: !102, line: 95, baseType: !62, size: 64, offset: 1472)
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2087, file: !102, line: 96, baseType: !64, size: 32, offset: 1536)
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2087, file: !102, line: 98, baseType: !149, size: 160, offset: 1568)
!2119 = !{!2120, !2121, !2122, !2123, !2124, !2125, !2127}
!2120 = !DILocalVariable(name: "stream", arg: 1, scope: !2082, file: !233, line: 145, type: !2085)
!2121 = !DILocalVariable(name: "resblock", arg: 2, scope: !2082, file: !233, line: 145, type: !61)
!2122 = !DILocalVariable(name: "buffer", scope: !2082, file: !233, line: 153, type: !59)
!2123 = !DILocalVariable(name: "ctx", scope: !2082, file: !233, line: 157, type: !1741)
!2124 = !DILocalVariable(name: "sum", scope: !2082, file: !233, line: 159, type: !62)
!2125 = !DILocalVariable(name: "n", scope: !2126, file: !233, line: 167, type: !62)
!2126 = distinct !DILexicalBlock(scope: !2082, file: !233, line: 163, column: 5)
!2127 = !DILabel(scope: !2082, name: "process_partial_block", file: !233, line: 208)
!2128 = !DILocation(line: 0, scope: !2082)
!2129 = !DILocation(line: 153, column: 18, scope: !2082)
!2130 = !DILocation(line: 154, column: 8, scope: !2131)
!2131 = distinct !DILexicalBlock(scope: !2082, file: !233, line: 154, column: 7)
!2132 = !DILocation(line: 154, column: 7, scope: !2082)
!2133 = !DILocation(line: 157, column: 3, scope: !2082)
!2134 = !DILocation(line: 157, column: 18, scope: !2082)
!2135 = !DILocation(line: 0, scope: !1737, inlinedAt: !2136)
!2136 = distinct !DILocation(line: 158, column: 3, scope: !2082)
!2137 = !DILocation(line: 78, column: 10, scope: !1737, inlinedAt: !2136)
!2138 = !DILocation(line: 83, column: 19, scope: !1737, inlinedAt: !2136)
!2139 = !DILocation(line: 83, column: 33, scope: !1737, inlinedAt: !2136)
!2140 = !DILocation(line: 83, column: 3, scope: !1737, inlinedAt: !2136)
!2141 = !DILocation(line: 83, column: 17, scope: !1737, inlinedAt: !2136)
!2142 = !DILocation(line: 84, column: 8, scope: !1737, inlinedAt: !2136)
!2143 = !DILocation(line: 84, column: 15, scope: !1737, inlinedAt: !2136)
!2144 = !DILocation(line: 162, column: 3, scope: !2082)
!2145 = !DILocation(line: 0, scope: !2126)
!2146 = !DILocalVariable(name: "__stream", arg: 1, scope: !2147, file: !1076, line: 128, type: !2085)
!2147 = distinct !DISubprogram(name: "feof_unlocked", scope: !1076, file: !1076, line: 128, type: !2148, scopeLine: 129, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !232, retainedNodes: !2150)
!2148 = !DISubroutineType(types: !2149)
!2149 = !{!64, !2085}
!2150 = !{!2146}
!2151 = !DILocation(line: 0, scope: !2147, inlinedAt: !2152)
!2152 = distinct !DILocation(line: 178, column: 15, scope: !2153)
!2153 = distinct !DILexicalBlock(scope: !2154, file: !233, line: 178, column: 15)
!2154 = distinct !DILexicalBlock(scope: !2126, file: !233, line: 172, column: 9)
!2155 = !DILocation(line: 130, column: 10, scope: !2147, inlinedAt: !2152)
!2156 = !DILocation(line: 178, column: 15, scope: !2153)
!2157 = !DILocation(line: 178, column: 15, scope: !2154)
!2158 = !DILocation(line: 181, column: 15, scope: !2154)
!2159 = !DILocation(line: 183, column: 15, scope: !2154)
!2160 = !DILocation(line: 185, column: 19, scope: !2161)
!2161 = distinct !DILexicalBlock(scope: !2154, file: !233, line: 185, column: 15)
!2162 = !DILocation(line: 185, column: 15, scope: !2154)
!2163 = !DILocation(line: 188, column: 17, scope: !2164)
!2164 = distinct !DILexicalBlock(scope: !2154, file: !233, line: 188, column: 15)
!2165 = !DILocation(line: 188, column: 15, scope: !2154)
!2166 = distinct !{!2166, !2167, !2168}
!2167 = !DILocation(line: 171, column: 7, scope: !2126)
!2168 = !DILocation(line: 200, column: 9, scope: !2126)
!2169 = !DILocalVariable(name: "__stream", arg: 1, scope: !2170, file: !1076, line: 135, type: !2085)
!2170 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1076, file: !1076, line: 135, type: !2148, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !232, retainedNodes: !2171)
!2171 = !{!2169}
!2172 = !DILocation(line: 0, scope: !2170, inlinedAt: !2173)
!2173 = distinct !DILocation(line: 193, column: 19, scope: !2174)
!2174 = distinct !DILexicalBlock(scope: !2175, file: !233, line: 193, column: 19)
!2175 = distinct !DILexicalBlock(scope: !2164, file: !233, line: 189, column: 13)
!2176 = !DILocation(line: 137, column: 10, scope: !2170, inlinedAt: !2173)
!2177 = !DILocation(line: 193, column: 19, scope: !2174)
!2178 = !DILocation(line: 193, column: 19, scope: !2175)
!2179 = !DILocation(line: 195, column: 19, scope: !2180)
!2180 = distinct !DILexicalBlock(scope: !2174, file: !233, line: 194, column: 17)
!2181 = !DILocation(line: 205, column: 7, scope: !2126)
!2182 = !DILocation(line: 208, column: 1, scope: !2082)
!2183 = !DILocation(line: 211, column: 11, scope: !2184)
!2184 = distinct !DILexicalBlock(scope: !2082, file: !233, line: 211, column: 7)
!2185 = !DILocation(line: 211, column: 7, scope: !2082)
!2186 = !DILocation(line: 212, column: 5, scope: !2184)
!2187 = !DILocation(line: 215, column: 3, scope: !2082)
!2188 = !DILocation(line: 216, column: 3, scope: !2082)
!2189 = !DILocation(line: 217, column: 3, scope: !2082)
!2190 = !DILocation(line: 218, column: 1, scope: !2082)
!2191 = distinct !DISubprogram(name: "md5_process_bytes", scope: !233, file: !233, line: 243, type: !1898, scopeLine: 244, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !232, retainedNodes: !2192)
!2192 = !{!2193, !2194, !2195, !2196, !2199, !2200}
!2193 = !DILocalVariable(name: "buffer", arg: 1, scope: !2191, file: !233, line: 243, type: !1800)
!2194 = !DILocalVariable(name: "len", arg: 2, scope: !2191, file: !233, line: 243, type: !62)
!2195 = !DILocalVariable(name: "ctx", arg: 3, scope: !2191, file: !233, line: 243, type: !1740)
!2196 = !DILocalVariable(name: "left_over", scope: !2197, file: !233, line: 249, type: !62)
!2197 = distinct !DILexicalBlock(scope: !2198, file: !233, line: 248, column: 5)
!2198 = distinct !DILexicalBlock(scope: !2191, file: !233, line: 247, column: 7)
!2199 = !DILocalVariable(name: "add", scope: !2197, file: !233, line: 250, type: !62)
!2200 = !DILocalVariable(name: "left_over", scope: !2201, file: !233, line: 295, type: !62)
!2201 = distinct !DILexicalBlock(scope: !2202, file: !233, line: 294, column: 5)
!2202 = distinct !DILexicalBlock(scope: !2191, file: !233, line: 293, column: 7)
!2203 = !DILocation(line: 0, scope: !2191)
!2204 = !DILocation(line: 247, column: 12, scope: !2198)
!2205 = !DILocation(line: 247, column: 19, scope: !2198)
!2206 = !DILocation(line: 247, column: 7, scope: !2191)
!2207 = !DILocation(line: 249, column: 26, scope: !2197)
!2208 = !DILocation(line: 0, scope: !2197)
!2209 = !DILocation(line: 250, column: 24, scope: !2197)
!2210 = !DILocation(line: 250, column: 36, scope: !2197)
!2211 = !DILocation(line: 250, column: 20, scope: !2197)
!2212 = !DILocation(line: 252, column: 16, scope: !2197)
!2213 = !DILocation(line: 0, scope: !1794, inlinedAt: !2214)
!2214 = distinct !DILocation(line: 252, column: 7, scope: !2197)
!2215 = !DILocation(line: 29, column: 10, scope: !1794, inlinedAt: !2214)
!2216 = !DILocation(line: 253, column: 19, scope: !2197)
!2217 = !DILocation(line: 255, column: 23, scope: !2218)
!2218 = distinct !DILexicalBlock(scope: !2197, file: !233, line: 255, column: 11)
!2219 = !DILocation(line: 255, column: 11, scope: !2197)
!2220 = !DILocation(line: 257, column: 55, scope: !2221)
!2221 = distinct !DILexicalBlock(scope: !2218, file: !233, line: 256, column: 9)
!2222 = !DILocation(line: 257, column: 43, scope: !2221)
!2223 = !DILocation(line: 257, column: 11, scope: !2221)
!2224 = !DILocation(line: 259, column: 23, scope: !2221)
!2225 = !DILocation(line: 263, column: 54, scope: !2221)
!2226 = !DILocation(line: 263, column: 61, scope: !2221)
!2227 = !DILocation(line: 263, column: 20, scope: !2221)
!2228 = !DILocation(line: 264, column: 19, scope: !2221)
!2229 = !DILocation(line: 0, scope: !1794, inlinedAt: !2230)
!2230 = distinct !DILocation(line: 262, column: 11, scope: !2221)
!2231 = !DILocation(line: 29, column: 10, scope: !1794, inlinedAt: !2230)
!2232 = !DILocation(line: 265, column: 9, scope: !2221)
!2233 = !DILocation(line: 267, column: 38, scope: !2197)
!2234 = !DILocation(line: 268, column: 11, scope: !2197)
!2235 = !DILocation(line: 269, column: 5, scope: !2197)
!2236 = !DILocation(line: 272, column: 11, scope: !2237)
!2237 = distinct !DILexicalBlock(scope: !2191, file: !233, line: 272, column: 7)
!2238 = !DILocation(line: 272, column: 7, scope: !2191)
!2239 = !DILocation(line: 276, column: 11, scope: !2240)
!2240 = distinct !DILexicalBlock(scope: !2241, file: !233, line: 276, column: 11)
!2241 = distinct !DILexicalBlock(scope: !2237, file: !233, line: 273, column: 5)
!2242 = !DILocation(line: 276, column: 11, scope: !2241)
!2243 = !DILocation(line: 277, column: 20, scope: !2240)
!2244 = !DILocation(line: 277, column: 9, scope: !2240)
!2245 = !DILocation(line: 0, scope: !1794, inlinedAt: !2246)
!2246 = distinct !DILocation(line: 279, column: 32, scope: !2247)
!2247 = distinct !DILexicalBlock(scope: !2240, file: !233, line: 278, column: 11)
!2248 = !DILocation(line: 29, column: 10, scope: !1794, inlinedAt: !2246)
!2249 = !DILocation(line: 279, column: 13, scope: !2247)
!2250 = !DILocation(line: 280, column: 44, scope: !2247)
!2251 = !DILocation(line: 281, column: 17, scope: !2247)
!2252 = distinct !{!2252, !2244, !2253, !841}
!2253 = !DILocation(line: 282, column: 11, scope: !2240)
!2254 = !DILocation(line: 286, column: 42, scope: !2255)
!2255 = distinct !DILexicalBlock(scope: !2240, file: !233, line: 285, column: 9)
!2256 = !DILocation(line: 286, column: 11, scope: !2255)
!2257 = !DILocation(line: 287, column: 42, scope: !2255)
!2258 = !DILocation(line: 288, column: 15, scope: !2255)
!2259 = !DILocation(line: 293, column: 11, scope: !2202)
!2260 = !DILocation(line: 293, column: 7, scope: !2191)
!2261 = !DILocation(line: 295, column: 31, scope: !2201)
!2262 = !DILocation(line: 295, column: 26, scope: !2201)
!2263 = !DILocation(line: 0, scope: !2201)
!2264 = !DILocation(line: 297, column: 31, scope: !2201)
!2265 = !DILocation(line: 297, column: 16, scope: !2201)
!2266 = !DILocation(line: 0, scope: !1794, inlinedAt: !2267)
!2267 = distinct !DILocation(line: 297, column: 7, scope: !2201)
!2268 = !DILocation(line: 29, column: 10, scope: !1794, inlinedAt: !2267)
!2269 = !DILocation(line: 298, column: 17, scope: !2201)
!2270 = !DILocation(line: 299, column: 21, scope: !2271)
!2271 = distinct !DILexicalBlock(scope: !2201, file: !233, line: 299, column: 11)
!2272 = !DILocation(line: 299, column: 11, scope: !2201)
!2273 = !DILocation(line: 301, column: 11, scope: !2274)
!2274 = distinct !DILexicalBlock(scope: !2271, file: !233, line: 300, column: 9)
!2275 = !DILocation(line: 302, column: 21, scope: !2274)
!2276 = !DILocation(line: 305, column: 33, scope: !2274)
!2277 = !DILocation(line: 305, column: 32, scope: !2274)
!2278 = !DILocation(line: 0, scope: !1794, inlinedAt: !2279)
!2279 = distinct !DILocation(line: 305, column: 11, scope: !2274)
!2280 = !DILocation(line: 29, column: 10, scope: !1794, inlinedAt: !2279)
!2281 = !DILocation(line: 306, column: 9, scope: !2274)
!2282 = !DILocation(line: 307, column: 21, scope: !2201)
!2283 = !DILocation(line: 307, column: 19, scope: !2201)
!2284 = !DILocation(line: 308, column: 5, scope: !2201)
!2285 = !DILocation(line: 309, column: 1, scope: !2191)
!2286 = distinct !DISubprogram(name: "md5_buffer", scope: !233, file: !233, line: 227, type: !2287, scopeLine: 228, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !232, retainedNodes: !2289)
!2287 = !DISubroutineType(types: !2288)
!2288 = !{!61, !93, !62, !61}
!2289 = !{!2290, !2291, !2292, !2293}
!2290 = !DILocalVariable(name: "buffer", arg: 1, scope: !2286, file: !233, line: 227, type: !93)
!2291 = !DILocalVariable(name: "len", arg: 2, scope: !2286, file: !233, line: 227, type: !62)
!2292 = !DILocalVariable(name: "resblock", arg: 3, scope: !2286, file: !233, line: 227, type: !61)
!2293 = !DILocalVariable(name: "ctx", scope: !2286, file: !233, line: 229, type: !1741)
!2294 = !DILocation(line: 0, scope: !2286)
!2295 = !DILocation(line: 229, column: 3, scope: !2286)
!2296 = !DILocation(line: 229, column: 18, scope: !2286)
!2297 = !DILocation(line: 0, scope: !1737, inlinedAt: !2298)
!2298 = distinct !DILocation(line: 232, column: 3, scope: !2286)
!2299 = !DILocation(line: 78, column: 10, scope: !1737, inlinedAt: !2298)
!2300 = !DILocation(line: 83, column: 19, scope: !1737, inlinedAt: !2298)
!2301 = !DILocation(line: 83, column: 33, scope: !1737, inlinedAt: !2298)
!2302 = !DILocation(line: 83, column: 3, scope: !1737, inlinedAt: !2298)
!2303 = !DILocation(line: 83, column: 17, scope: !1737, inlinedAt: !2298)
!2304 = !DILocation(line: 84, column: 8, scope: !1737, inlinedAt: !2298)
!2305 = !DILocation(line: 84, column: 15, scope: !1737, inlinedAt: !2298)
!2306 = !DILocation(line: 235, column: 3, scope: !2286)
!2307 = !DILocation(line: 238, column: 10, scope: !2286)
!2308 = !DILocation(line: 239, column: 1, scope: !2286)
!2309 = !DILocation(line: 238, column: 3, scope: !2286)
!2310 = distinct !DISubprogram(name: "fdadvise", scope: !332, file: !332, line: 31, type: !2311, scopeLine: 32, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !331, retainedNodes: !2315)
!2311 = !DISubroutineType(types: !2312)
!2312 = !{null, !64, !2313, !2313, !2314}
!2313 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !866, line: 63, baseType: !124)
!2314 = !DIDerivedType(tag: DW_TAG_typedef, name: "fadvice_t", file: !50, line: 52, baseType: !49)
!2315 = !{!2316, !2317, !2318, !2319, !2320}
!2316 = !DILocalVariable(name: "fd", arg: 1, scope: !2310, file: !332, line: 31, type: !64)
!2317 = !DILocalVariable(name: "offset", arg: 2, scope: !2310, file: !332, line: 31, type: !2313)
!2318 = !DILocalVariable(name: "len", arg: 3, scope: !2310, file: !332, line: 31, type: !2313)
!2319 = !DILocalVariable(name: "advice", arg: 4, scope: !2310, file: !332, line: 31, type: !2314)
!2320 = !DILocalVariable(name: "__x", scope: !2321, file: !332, line: 34, type: !64)
!2321 = distinct !DILexicalBlock(scope: !2310, file: !332, line: 34, column: 3)
!2322 = !DILocation(line: 0, scope: !2310)
!2323 = !DILocation(line: 34, column: 3, scope: !2321)
!2324 = !DILocation(line: 0, scope: !2321)
!2325 = !DILocation(line: 36, column: 1, scope: !2310)
!2326 = !DISubprogram(name: "posix_fadvise", scope: !2327, file: !2327, line: 288, type: !2328, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !221)
!2327 = !DIFile(filename: "/usr/include/fcntl.h", directory: "")
!2328 = !DISubroutineType(types: !2329)
!2329 = !{!64, !64, !125, !125, !64}
!2330 = distinct !DISubprogram(name: "fadvise", scope: !332, file: !332, line: 39, type: !2331, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !331, retainedNodes: !2367)
!2331 = !DISubroutineType(types: !2332)
!2332 = !{null, !2333, !2314}
!2333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2334, size: 64)
!2334 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !100, line: 7, baseType: !2335)
!2335 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !102, line: 49, size: 1728, elements: !2336)
!2336 = !{!2337, !2338, !2339, !2340, !2341, !2342, !2343, !2344, !2345, !2346, !2347, !2348, !2349, !2350, !2352, !2353, !2354, !2355, !2356, !2357, !2358, !2359, !2360, !2361, !2362, !2363, !2364, !2365, !2366}
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2335, file: !102, line: 51, baseType: !64, size: 32)
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2335, file: !102, line: 54, baseType: !59, size: 64, offset: 64)
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2335, file: !102, line: 55, baseType: !59, size: 64, offset: 128)
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2335, file: !102, line: 56, baseType: !59, size: 64, offset: 192)
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2335, file: !102, line: 57, baseType: !59, size: 64, offset: 256)
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2335, file: !102, line: 58, baseType: !59, size: 64, offset: 320)
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2335, file: !102, line: 59, baseType: !59, size: 64, offset: 384)
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2335, file: !102, line: 60, baseType: !59, size: 64, offset: 448)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2335, file: !102, line: 61, baseType: !59, size: 64, offset: 512)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2335, file: !102, line: 64, baseType: !59, size: 64, offset: 576)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2335, file: !102, line: 65, baseType: !59, size: 64, offset: 640)
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2335, file: !102, line: 66, baseType: !59, size: 64, offset: 704)
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2335, file: !102, line: 68, baseType: !117, size: 64, offset: 768)
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2335, file: !102, line: 70, baseType: !2351, size: 64, offset: 832)
!2351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2335, size: 64)
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2335, file: !102, line: 72, baseType: !64, size: 32, offset: 896)
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2335, file: !102, line: 73, baseType: !64, size: 32, offset: 928)
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2335, file: !102, line: 74, baseType: !124, size: 64, offset: 960)
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2335, file: !102, line: 77, baseType: !67, size: 16, offset: 1024)
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2335, file: !102, line: 78, baseType: !128, size: 8, offset: 1040)
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2335, file: !102, line: 79, baseType: !130, size: 8, offset: 1048)
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2335, file: !102, line: 81, baseType: !134, size: 64, offset: 1088)
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2335, file: !102, line: 89, baseType: !137, size: 64, offset: 1152)
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2335, file: !102, line: 91, baseType: !139, size: 64, offset: 1216)
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2335, file: !102, line: 92, baseType: !142, size: 64, offset: 1280)
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2335, file: !102, line: 93, baseType: !2351, size: 64, offset: 1344)
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2335, file: !102, line: 94, baseType: !61, size: 64, offset: 1408)
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2335, file: !102, line: 95, baseType: !62, size: 64, offset: 1472)
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2335, file: !102, line: 96, baseType: !64, size: 32, offset: 1536)
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2335, file: !102, line: 98, baseType: !149, size: 160, offset: 1568)
!2367 = !{!2368, !2369}
!2368 = !DILocalVariable(name: "fp", arg: 1, scope: !2330, file: !332, line: 39, type: !2333)
!2369 = !DILocalVariable(name: "advice", arg: 2, scope: !2330, file: !332, line: 39, type: !2314)
!2370 = !DILocation(line: 0, scope: !2330)
!2371 = !DILocation(line: 41, column: 7, scope: !2372)
!2372 = distinct !DILexicalBlock(scope: !2330, file: !332, line: 41, column: 7)
!2373 = !DILocation(line: 41, column: 7, scope: !2330)
!2374 = !DILocation(line: 42, column: 15, scope: !2372)
!2375 = !DILocation(line: 0, scope: !2310, inlinedAt: !2376)
!2376 = distinct !DILocation(line: 42, column: 5, scope: !2372)
!2377 = !DILocation(line: 34, column: 3, scope: !2321, inlinedAt: !2376)
!2378 = !DILocation(line: 0, scope: !2321, inlinedAt: !2376)
!2379 = !DILocation(line: 42, column: 5, scope: !2372)
!2380 = !DILocation(line: 43, column: 1, scope: !2330)
!2381 = !DISubprogram(name: "fileno", scope: !866, file: !866, line: 785, type: !2382, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !221)
!2382 = !DISubroutineType(types: !2383)
!2383 = !{!64, !2351}
!2384 = distinct !DISubprogram(name: "fopen_safer", scope: !335, file: !335, line: 31, type: !2385, scopeLine: 32, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !334, retainedNodes: !2421)
!2385 = !DISubroutineType(types: !2386)
!2386 = !{!2387, !93, !93}
!2387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2388, size: 64)
!2388 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !100, line: 7, baseType: !2389)
!2389 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !102, line: 49, size: 1728, elements: !2390)
!2390 = !{!2391, !2392, !2393, !2394, !2395, !2396, !2397, !2398, !2399, !2400, !2401, !2402, !2403, !2404, !2406, !2407, !2408, !2409, !2410, !2411, !2412, !2413, !2414, !2415, !2416, !2417, !2418, !2419, !2420}
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2389, file: !102, line: 51, baseType: !64, size: 32)
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2389, file: !102, line: 54, baseType: !59, size: 64, offset: 64)
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2389, file: !102, line: 55, baseType: !59, size: 64, offset: 128)
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2389, file: !102, line: 56, baseType: !59, size: 64, offset: 192)
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2389, file: !102, line: 57, baseType: !59, size: 64, offset: 256)
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2389, file: !102, line: 58, baseType: !59, size: 64, offset: 320)
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2389, file: !102, line: 59, baseType: !59, size: 64, offset: 384)
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2389, file: !102, line: 60, baseType: !59, size: 64, offset: 448)
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2389, file: !102, line: 61, baseType: !59, size: 64, offset: 512)
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2389, file: !102, line: 64, baseType: !59, size: 64, offset: 576)
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2389, file: !102, line: 65, baseType: !59, size: 64, offset: 640)
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2389, file: !102, line: 66, baseType: !59, size: 64, offset: 704)
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2389, file: !102, line: 68, baseType: !117, size: 64, offset: 768)
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2389, file: !102, line: 70, baseType: !2405, size: 64, offset: 832)
!2405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2389, size: 64)
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2389, file: !102, line: 72, baseType: !64, size: 32, offset: 896)
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2389, file: !102, line: 73, baseType: !64, size: 32, offset: 928)
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2389, file: !102, line: 74, baseType: !124, size: 64, offset: 960)
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2389, file: !102, line: 77, baseType: !67, size: 16, offset: 1024)
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2389, file: !102, line: 78, baseType: !128, size: 8, offset: 1040)
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2389, file: !102, line: 79, baseType: !130, size: 8, offset: 1048)
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2389, file: !102, line: 81, baseType: !134, size: 64, offset: 1088)
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2389, file: !102, line: 89, baseType: !137, size: 64, offset: 1152)
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2389, file: !102, line: 91, baseType: !139, size: 64, offset: 1216)
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2389, file: !102, line: 92, baseType: !142, size: 64, offset: 1280)
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2389, file: !102, line: 93, baseType: !2405, size: 64, offset: 1344)
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2389, file: !102, line: 94, baseType: !61, size: 64, offset: 1408)
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2389, file: !102, line: 95, baseType: !62, size: 64, offset: 1472)
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2389, file: !102, line: 96, baseType: !64, size: 32, offset: 1536)
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2389, file: !102, line: 98, baseType: !149, size: 160, offset: 1568)
!2421 = !{!2422, !2423, !2424, !2425, !2428, !2431, !2434}
!2422 = !DILocalVariable(name: "file", arg: 1, scope: !2384, file: !335, line: 31, type: !93)
!2423 = !DILocalVariable(name: "mode", arg: 2, scope: !2384, file: !335, line: 31, type: !93)
!2424 = !DILocalVariable(name: "fp", scope: !2384, file: !335, line: 33, type: !2387)
!2425 = !DILocalVariable(name: "fd", scope: !2426, file: !335, line: 37, type: !64)
!2426 = distinct !DILexicalBlock(scope: !2427, file: !335, line: 36, column: 5)
!2427 = distinct !DILexicalBlock(scope: !2384, file: !335, line: 35, column: 7)
!2428 = !DILocalVariable(name: "f", scope: !2429, file: !335, line: 41, type: !64)
!2429 = distinct !DILexicalBlock(scope: !2430, file: !335, line: 40, column: 9)
!2430 = distinct !DILexicalBlock(scope: !2426, file: !335, line: 39, column: 11)
!2431 = !DILocalVariable(name: "e", scope: !2432, file: !335, line: 45, type: !64)
!2432 = distinct !DILexicalBlock(scope: !2433, file: !335, line: 44, column: 13)
!2433 = distinct !DILexicalBlock(scope: !2429, file: !335, line: 43, column: 15)
!2434 = !DILocalVariable(name: "e", scope: !2435, file: !335, line: 54, type: !64)
!2435 = distinct !DILexicalBlock(scope: !2436, file: !335, line: 53, column: 13)
!2436 = distinct !DILexicalBlock(scope: !2429, file: !335, line: 51, column: 15)
!2437 = !DILocation(line: 0, scope: !2384)
!2438 = !DILocation(line: 33, column: 14, scope: !2384)
!2439 = !DILocation(line: 35, column: 7, scope: !2427)
!2440 = !DILocation(line: 35, column: 7, scope: !2384)
!2441 = !DILocation(line: 37, column: 16, scope: !2426)
!2442 = !DILocation(line: 0, scope: !2426)
!2443 = !DILocation(line: 39, column: 19, scope: !2430)
!2444 = !DILocation(line: 41, column: 19, scope: !2429)
!2445 = !DILocation(line: 0, scope: !2429)
!2446 = !DILocation(line: 43, column: 17, scope: !2433)
!2447 = !DILocation(line: 43, column: 15, scope: !2429)
!2448 = !DILocation(line: 45, column: 23, scope: !2432)
!2449 = !DILocation(line: 0, scope: !2432)
!2450 = !DILocation(line: 46, column: 15, scope: !2432)
!2451 = !DILocation(line: 47, column: 21, scope: !2432)
!2452 = !DILocation(line: 51, column: 15, scope: !2436)
!2453 = !DILocation(line: 51, column: 27, scope: !2436)
!2454 = !DILocation(line: 52, column: 15, scope: !2436)
!2455 = !DILocation(line: 52, column: 26, scope: !2436)
!2456 = !DILocation(line: 52, column: 24, scope: !2436)
!2457 = !DILocation(line: 51, column: 15, scope: !2429)
!2458 = !DILocation(line: 54, column: 23, scope: !2435)
!2459 = !DILocation(line: 0, scope: !2435)
!2460 = !DILocation(line: 55, column: 15, scope: !2435)
!2461 = !DILocation(line: 56, column: 21, scope: !2435)
!2462 = !DILocation(line: 63, column: 1, scope: !2384)
!2463 = !DISubprogram(name: "fdopen", scope: !866, file: !866, line: 279, type: !2464, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !221)
!2464 = !DISubroutineType(types: !2465)
!2465 = !{!2405, !64, !93}
!2466 = !DISubprogram(name: "close", scope: !2467, file: !2467, line: 353, type: !1347, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !221)
!2467 = !DIFile(filename: "/usr/include/unistd.h", directory: "")
!2468 = distinct !DISubprogram(name: "set_program_name", scope: !250, file: !250, line: 39, type: !811, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !249, retainedNodes: !2469)
!2469 = !{!2470, !2471, !2472}
!2470 = !DILocalVariable(name: "argv0", arg: 1, scope: !2468, file: !250, line: 39, type: !93)
!2471 = !DILocalVariable(name: "slash", scope: !2468, file: !250, line: 46, type: !93)
!2472 = !DILocalVariable(name: "base", scope: !2468, file: !250, line: 47, type: !93)
!2473 = !DILocation(line: 0, scope: !2468)
!2474 = !DILocation(line: 51, column: 13, scope: !2475)
!2475 = distinct !DILexicalBlock(scope: !2468, file: !250, line: 51, column: 7)
!2476 = !DILocation(line: 51, column: 7, scope: !2468)
!2477 = !DILocation(line: 55, column: 14, scope: !2478)
!2478 = distinct !DILexicalBlock(scope: !2475, file: !250, line: 52, column: 5)
!2479 = !DILocation(line: 54, column: 7, scope: !2478)
!2480 = !DILocation(line: 56, column: 7, scope: !2478)
!2481 = !DILocation(line: 59, column: 11, scope: !2468)
!2482 = !DILocation(line: 60, column: 17, scope: !2468)
!2483 = !DILocation(line: 60, column: 11, scope: !2468)
!2484 = !DILocation(line: 61, column: 12, scope: !2485)
!2485 = distinct !DILexicalBlock(scope: !2468, file: !250, line: 61, column: 7)
!2486 = !DILocation(line: 61, column: 20, scope: !2485)
!2487 = !DILocation(line: 61, column: 25, scope: !2485)
!2488 = !DILocation(line: 61, column: 42, scope: !2485)
!2489 = !DILocation(line: 61, column: 28, scope: !2485)
!2490 = !DILocation(line: 61, column: 61, scope: !2485)
!2491 = !DILocation(line: 61, column: 7, scope: !2468)
!2492 = !DILocation(line: 64, column: 11, scope: !2493)
!2493 = distinct !DILexicalBlock(scope: !2494, file: !250, line: 64, column: 11)
!2494 = distinct !DILexicalBlock(scope: !2485, file: !250, line: 62, column: 5)
!2495 = !DILocation(line: 64, column: 36, scope: !2493)
!2496 = !DILocation(line: 64, column: 11, scope: !2494)
!2497 = !DILocation(line: 66, column: 24, scope: !2498)
!2498 = distinct !DILexicalBlock(scope: !2493, file: !250, line: 65, column: 9)
!2499 = !DILocation(line: 70, column: 41, scope: !2498)
!2500 = !DILocation(line: 72, column: 9, scope: !2498)
!2501 = !DILocation(line: 84, column: 16, scope: !2468)
!2502 = !DILocation(line: 90, column: 27, scope: !2468)
!2503 = !DILocation(line: 92, column: 1, scope: !2468)
!2504 = distinct !DISubprogram(name: "clone_quoting_options", scope: !256, file: !256, line: 122, type: !2505, scopeLine: 123, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !255, retainedNodes: !2508)
!2505 = !DISubroutineType(types: !2506)
!2506 = !{!2507, !2507}
!2507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !273, size: 64)
!2508 = !{!2509, !2510, !2511}
!2509 = !DILocalVariable(name: "o", arg: 1, scope: !2504, file: !256, line: 122, type: !2507)
!2510 = !DILocalVariable(name: "e", scope: !2504, file: !256, line: 124, type: !64)
!2511 = !DILocalVariable(name: "p", scope: !2504, file: !256, line: 125, type: !2507)
!2512 = !DILocation(line: 0, scope: !2504)
!2513 = !DILocation(line: 124, column: 11, scope: !2504)
!2514 = !DILocation(line: 125, column: 40, scope: !2504)
!2515 = !DILocation(line: 125, column: 31, scope: !2504)
!2516 = !DILocation(line: 127, column: 9, scope: !2504)
!2517 = !DILocation(line: 128, column: 3, scope: !2504)
!2518 = distinct !DISubprogram(name: "get_quoting_style", scope: !256, file: !256, line: 133, type: !2519, scopeLine: 134, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !255, retainedNodes: !2523)
!2519 = !DISubroutineType(types: !2520)
!2520 = !{!5, !2521}
!2521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2522, size: 64)
!2522 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !273)
!2523 = !{!2524}
!2524 = !DILocalVariable(name: "o", arg: 1, scope: !2518, file: !256, line: 133, type: !2521)
!2525 = !DILocation(line: 0, scope: !2518)
!2526 = !DILocation(line: 135, column: 11, scope: !2518)
!2527 = !DILocation(line: 135, column: 46, scope: !2518)
!2528 = !{!2529, !789, i64 0}
!2529 = !{!"quoting_options", !789, i64 0, !1017, i64 4, !789, i64 8, !788, i64 40, !788, i64 48}
!2530 = !DILocation(line: 135, column: 3, scope: !2518)
!2531 = distinct !DISubprogram(name: "set_quoting_style", scope: !256, file: !256, line: 141, type: !2532, scopeLine: 142, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !255, retainedNodes: !2534)
!2532 = !DISubroutineType(types: !2533)
!2533 = !{null, !2507, !5}
!2534 = !{!2535, !2536}
!2535 = !DILocalVariable(name: "o", arg: 1, scope: !2531, file: !256, line: 141, type: !2507)
!2536 = !DILocalVariable(name: "s", arg: 2, scope: !2531, file: !256, line: 141, type: !5)
!2537 = !DILocation(line: 0, scope: !2531)
!2538 = !DILocation(line: 143, column: 4, scope: !2531)
!2539 = !DILocation(line: 143, column: 39, scope: !2531)
!2540 = !DILocation(line: 143, column: 45, scope: !2531)
!2541 = !DILocation(line: 144, column: 1, scope: !2531)
!2542 = distinct !DISubprogram(name: "set_char_quoting", scope: !256, file: !256, line: 152, type: !2543, scopeLine: 153, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !255, retainedNodes: !2545)
!2543 = !DISubroutineType(types: !2544)
!2544 = !{!64, !2507, !60, !64}
!2545 = !{!2546, !2547, !2548, !2549, !2550, !2552, !2553}
!2546 = !DILocalVariable(name: "o", arg: 1, scope: !2542, file: !256, line: 152, type: !2507)
!2547 = !DILocalVariable(name: "c", arg: 2, scope: !2542, file: !256, line: 152, type: !60)
!2548 = !DILocalVariable(name: "i", arg: 3, scope: !2542, file: !256, line: 152, type: !64)
!2549 = !DILocalVariable(name: "uc", scope: !2542, file: !256, line: 154, type: !66)
!2550 = !DILocalVariable(name: "p", scope: !2542, file: !256, line: 155, type: !2551)
!2551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!2552 = !DILocalVariable(name: "shift", scope: !2542, file: !256, line: 157, type: !64)
!2553 = !DILocalVariable(name: "r", scope: !2542, file: !256, line: 158, type: !64)
!2554 = !DILocation(line: 0, scope: !2542)
!2555 = !DILocation(line: 156, column: 6, scope: !2542)
!2556 = !DILocation(line: 156, column: 62, scope: !2542)
!2557 = !DILocation(line: 156, column: 57, scope: !2542)
!2558 = !DILocation(line: 157, column: 15, scope: !2542)
!2559 = !DILocation(line: 158, column: 12, scope: !2542)
!2560 = !DILocation(line: 158, column: 15, scope: !2542)
!2561 = !DILocation(line: 158, column: 25, scope: !2542)
!2562 = !DILocation(line: 159, column: 13, scope: !2542)
!2563 = !DILocation(line: 159, column: 18, scope: !2542)
!2564 = !DILocation(line: 159, column: 23, scope: !2542)
!2565 = !DILocation(line: 159, column: 6, scope: !2542)
!2566 = !DILocation(line: 160, column: 3, scope: !2542)
!2567 = distinct !DISubprogram(name: "set_quoting_flags", scope: !256, file: !256, line: 168, type: !2568, scopeLine: 169, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !255, retainedNodes: !2570)
!2568 = !DISubroutineType(types: !2569)
!2569 = !{!64, !2507, !64}
!2570 = !{!2571, !2572, !2573}
!2571 = !DILocalVariable(name: "o", arg: 1, scope: !2567, file: !256, line: 168, type: !2507)
!2572 = !DILocalVariable(name: "i", arg: 2, scope: !2567, file: !256, line: 168, type: !64)
!2573 = !DILocalVariable(name: "r", scope: !2567, file: !256, line: 170, type: !64)
!2574 = !DILocation(line: 0, scope: !2567)
!2575 = !DILocation(line: 171, column: 8, scope: !2576)
!2576 = distinct !DILexicalBlock(scope: !2567, file: !256, line: 171, column: 7)
!2577 = !DILocation(line: 171, column: 7, scope: !2567)
!2578 = !DILocation(line: 173, column: 10, scope: !2567)
!2579 = !{!2529, !1017, i64 4}
!2580 = !DILocation(line: 174, column: 12, scope: !2567)
!2581 = !DILocation(line: 175, column: 3, scope: !2567)
!2582 = distinct !DISubprogram(name: "set_custom_quoting", scope: !256, file: !256, line: 179, type: !2583, scopeLine: 181, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !255, retainedNodes: !2585)
!2583 = !DISubroutineType(types: !2584)
!2584 = !{null, !2507, !93, !93}
!2585 = !{!2586, !2587, !2588}
!2586 = !DILocalVariable(name: "o", arg: 1, scope: !2582, file: !256, line: 179, type: !2507)
!2587 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2582, file: !256, line: 180, type: !93)
!2588 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2582, file: !256, line: 180, type: !93)
!2589 = !DILocation(line: 0, scope: !2582)
!2590 = !DILocation(line: 182, column: 8, scope: !2591)
!2591 = distinct !DILexicalBlock(scope: !2582, file: !256, line: 182, column: 7)
!2592 = !DILocation(line: 182, column: 7, scope: !2582)
!2593 = !DILocation(line: 184, column: 6, scope: !2582)
!2594 = !DILocation(line: 184, column: 12, scope: !2582)
!2595 = !DILocation(line: 185, column: 8, scope: !2596)
!2596 = distinct !DILexicalBlock(scope: !2582, file: !256, line: 185, column: 7)
!2597 = !DILocation(line: 185, column: 19, scope: !2596)
!2598 = !DILocation(line: 186, column: 5, scope: !2596)
!2599 = !DILocation(line: 187, column: 6, scope: !2582)
!2600 = !DILocation(line: 187, column: 17, scope: !2582)
!2601 = !{!2529, !788, i64 40}
!2602 = !DILocation(line: 188, column: 6, scope: !2582)
!2603 = !DILocation(line: 188, column: 18, scope: !2582)
!2604 = !{!2529, !788, i64 48}
!2605 = !DILocation(line: 189, column: 1, scope: !2582)
!2606 = distinct !DISubprogram(name: "quotearg_buffer", scope: !256, file: !256, line: 784, type: !2607, scopeLine: 787, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !255, retainedNodes: !2609)
!2607 = !DISubroutineType(types: !2608)
!2608 = !{!62, !59, !62, !93, !62, !2521}
!2609 = !{!2610, !2611, !2612, !2613, !2614, !2615, !2616, !2617}
!2610 = !DILocalVariable(name: "buffer", arg: 1, scope: !2606, file: !256, line: 784, type: !59)
!2611 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2606, file: !256, line: 784, type: !62)
!2612 = !DILocalVariable(name: "arg", arg: 3, scope: !2606, file: !256, line: 785, type: !93)
!2613 = !DILocalVariable(name: "argsize", arg: 4, scope: !2606, file: !256, line: 785, type: !62)
!2614 = !DILocalVariable(name: "o", arg: 5, scope: !2606, file: !256, line: 786, type: !2521)
!2615 = !DILocalVariable(name: "p", scope: !2606, file: !256, line: 788, type: !2521)
!2616 = !DILocalVariable(name: "e", scope: !2606, file: !256, line: 789, type: !64)
!2617 = !DILocalVariable(name: "r", scope: !2606, file: !256, line: 790, type: !62)
!2618 = !DILocation(line: 0, scope: !2606)
!2619 = !DILocation(line: 788, column: 37, scope: !2606)
!2620 = !DILocation(line: 789, column: 11, scope: !2606)
!2621 = !DILocation(line: 791, column: 43, scope: !2606)
!2622 = !DILocation(line: 791, column: 53, scope: !2606)
!2623 = !DILocation(line: 791, column: 60, scope: !2606)
!2624 = !DILocation(line: 792, column: 43, scope: !2606)
!2625 = !DILocation(line: 792, column: 58, scope: !2606)
!2626 = !DILocation(line: 790, column: 14, scope: !2606)
!2627 = !DILocation(line: 793, column: 9, scope: !2606)
!2628 = !DILocation(line: 794, column: 3, scope: !2606)
!2629 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !256, file: !256, line: 256, type: !2630, scopeLine: 262, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !255, retainedNodes: !2634)
!2630 = !DISubroutineType(types: !2631)
!2631 = !{!62, !59, !62, !93, !62, !5, !64, !2632, !93, !93}
!2632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2633, size: 64)
!2633 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!2634 = !{!2635, !2636, !2637, !2638, !2639, !2640, !2641, !2642, !2643, !2644, !2645, !2646, !2647, !2648, !2649, !2650, !2651, !2652, !2653, !2654, !2655, !2659, !2660, !2661, !2662, !2663, !2666, !2667, !2685, !2688, !2689, !2696, !2699, !2700, !2701, !2702, !2703, !2704}
!2635 = !DILocalVariable(name: "buffer", arg: 1, scope: !2629, file: !256, line: 256, type: !59)
!2636 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2629, file: !256, line: 256, type: !62)
!2637 = !DILocalVariable(name: "arg", arg: 3, scope: !2629, file: !256, line: 257, type: !93)
!2638 = !DILocalVariable(name: "argsize", arg: 4, scope: !2629, file: !256, line: 257, type: !62)
!2639 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !2629, file: !256, line: 258, type: !5)
!2640 = !DILocalVariable(name: "flags", arg: 6, scope: !2629, file: !256, line: 258, type: !64)
!2641 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !2629, file: !256, line: 259, type: !2632)
!2642 = !DILocalVariable(name: "left_quote", arg: 8, scope: !2629, file: !256, line: 260, type: !93)
!2643 = !DILocalVariable(name: "right_quote", arg: 9, scope: !2629, file: !256, line: 261, type: !93)
!2644 = !DILocalVariable(name: "i", scope: !2629, file: !256, line: 263, type: !62)
!2645 = !DILocalVariable(name: "len", scope: !2629, file: !256, line: 264, type: !62)
!2646 = !DILocalVariable(name: "orig_buffersize", scope: !2629, file: !256, line: 265, type: !62)
!2647 = !DILocalVariable(name: "quote_string", scope: !2629, file: !256, line: 266, type: !93)
!2648 = !DILocalVariable(name: "quote_string_len", scope: !2629, file: !256, line: 267, type: !62)
!2649 = !DILocalVariable(name: "backslash_escapes", scope: !2629, file: !256, line: 268, type: !71)
!2650 = !DILocalVariable(name: "unibyte_locale", scope: !2629, file: !256, line: 269, type: !71)
!2651 = !DILocalVariable(name: "elide_outer_quotes", scope: !2629, file: !256, line: 270, type: !71)
!2652 = !DILocalVariable(name: "pending_shell_escape_end", scope: !2629, file: !256, line: 271, type: !71)
!2653 = !DILocalVariable(name: "encountered_single_quote", scope: !2629, file: !256, line: 272, type: !71)
!2654 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !2629, file: !256, line: 273, type: !71)
!2655 = !DILocalVariable(name: "c", scope: !2656, file: !256, line: 402, type: !66)
!2656 = distinct !DILexicalBlock(scope: !2657, file: !256, line: 401, column: 5)
!2657 = distinct !DILexicalBlock(scope: !2658, file: !256, line: 400, column: 3)
!2658 = distinct !DILexicalBlock(scope: !2629, file: !256, line: 400, column: 3)
!2659 = !DILocalVariable(name: "esc", scope: !2656, file: !256, line: 403, type: !66)
!2660 = !DILocalVariable(name: "is_right_quote", scope: !2656, file: !256, line: 404, type: !71)
!2661 = !DILocalVariable(name: "escaping", scope: !2656, file: !256, line: 405, type: !71)
!2662 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !2656, file: !256, line: 406, type: !71)
!2663 = !DILocalVariable(name: "m", scope: !2664, file: !256, line: 610, type: !62)
!2664 = distinct !DILexicalBlock(scope: !2665, file: !256, line: 608, column: 11)
!2665 = distinct !DILexicalBlock(scope: !2656, file: !256, line: 426, column: 9)
!2666 = !DILocalVariable(name: "printable", scope: !2664, file: !256, line: 612, type: !71)
!2667 = !DILocalVariable(name: "mbstate", scope: !2668, file: !256, line: 621, type: !2670)
!2668 = distinct !DILexicalBlock(scope: !2669, file: !256, line: 620, column: 15)
!2669 = distinct !DILexicalBlock(scope: !2664, file: !256, line: 614, column: 17)
!2670 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !2671, line: 6, baseType: !2672)
!2671 = !DIFile(filename: "/usr/include/bits/types/mbstate_t.h", directory: "")
!2672 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !2673, line: 21, baseType: !2674)
!2673 = !DIFile(filename: "/usr/include/bits/types/__mbstate_t.h", directory: "")
!2674 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2673, line: 13, size: 64, elements: !2675)
!2675 = !{!2676, !2677}
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !2674, file: !2673, line: 15, baseType: !64, size: 32)
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !2674, file: !2673, line: 20, baseType: !2678, size: 32, offset: 32)
!2678 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2674, file: !2673, line: 16, size: 32, elements: !2679)
!2679 = !{!2680, !2681}
!2680 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !2678, file: !2673, line: 18, baseType: !7, size: 32)
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !2678, file: !2673, line: 19, baseType: !2682, size: 32)
!2682 = !DICompositeType(tag: DW_TAG_array_type, baseType: !60, size: 32, elements: !2683)
!2683 = !{!2684}
!2684 = !DISubrange(count: 4)
!2685 = !DILocalVariable(name: "w", scope: !2686, file: !256, line: 631, type: !2687)
!2686 = distinct !DILexicalBlock(scope: !2668, file: !256, line: 630, column: 19)
!2687 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !63, line: 74, baseType: !64)
!2688 = !DILocalVariable(name: "bytes", scope: !2686, file: !256, line: 632, type: !62)
!2689 = !DILocalVariable(name: "j", scope: !2690, file: !256, line: 657, type: !62)
!2690 = distinct !DILexicalBlock(scope: !2691, file: !256, line: 656, column: 27)
!2691 = distinct !DILexicalBlock(scope: !2692, file: !256, line: 654, column: 29)
!2692 = distinct !DILexicalBlock(scope: !2693, file: !256, line: 649, column: 23)
!2693 = distinct !DILexicalBlock(scope: !2694, file: !256, line: 641, column: 30)
!2694 = distinct !DILexicalBlock(scope: !2695, file: !256, line: 636, column: 30)
!2695 = distinct !DILexicalBlock(scope: !2686, file: !256, line: 634, column: 25)
!2696 = !DILocalVariable(name: "ilim", scope: !2697, file: !256, line: 684, type: !62)
!2697 = distinct !DILexicalBlock(scope: !2698, file: !256, line: 681, column: 15)
!2698 = distinct !DILexicalBlock(scope: !2664, file: !256, line: 680, column: 17)
!2699 = !DILabel(scope: !2629, name: "process_input", file: !256, line: 314)
!2700 = !DILabel(scope: !2665, name: "c_and_shell_escape", file: !256, line: 512)
!2701 = !DILabel(scope: !2665, name: "c_escape", file: !256, line: 517)
!2702 = !DILabel(scope: !2656, name: "store_escape", file: !256, line: 719)
!2703 = !DILabel(scope: !2656, name: "store_c", file: !256, line: 722)
!2704 = !DILabel(scope: !2629, name: "force_outer_quoting_style", file: !256, line: 763)
!2705 = !DILocation(line: 0, scope: !2629)
!2706 = !DILocation(line: 269, column: 25, scope: !2629)
!2707 = !DILocation(line: 269, column: 36, scope: !2629)
!2708 = !DILocation(line: 270, column: 8, scope: !2629)
!2709 = !DILocation(line: 273, column: 3, scope: !2629)
!2710 = !DILocation(line: 265, column: 10, scope: !2629)
!2711 = !DILocation(line: 266, column: 15, scope: !2629)
!2712 = !DILocation(line: 267, column: 10, scope: !2629)
!2713 = !DILocation(line: 268, column: 8, scope: !2629)
!2714 = !DILocation(line: 271, column: 8, scope: !2629)
!2715 = !DILocation(line: 272, column: 8, scope: !2629)
!2716 = !DILocation(line: 273, column: 8, scope: !2629)
!2717 = !DILocation(line: 314, column: 2, scope: !2629)
!2718 = !DILocation(line: 316, column: 3, scope: !2629)
!2719 = !DILocation(line: 323, column: 11, scope: !2720)
!2720 = distinct !DILexicalBlock(scope: !2629, file: !256, line: 317, column: 5)
!2721 = !DILocation(line: 323, column: 12, scope: !2722)
!2722 = distinct !DILexicalBlock(scope: !2720, file: !256, line: 323, column: 11)
!2723 = !DILocation(line: 324, column: 9, scope: !2724)
!2724 = distinct !DILexicalBlock(scope: !2725, file: !256, line: 324, column: 9)
!2725 = distinct !DILexicalBlock(scope: !2722, file: !256, line: 324, column: 9)
!2726 = !DILocation(line: 324, column: 9, scope: !2725)
!2727 = !DILocation(line: 362, column: 26, scope: !2728)
!2728 = distinct !DILexicalBlock(scope: !2729, file: !256, line: 340, column: 11)
!2729 = distinct !DILexicalBlock(scope: !2730, file: !256, line: 339, column: 13)
!2730 = distinct !DILexicalBlock(scope: !2720, file: !256, line: 338, column: 7)
!2731 = !DILocation(line: 363, column: 27, scope: !2728)
!2732 = !DILocation(line: 364, column: 11, scope: !2728)
!2733 = !DILocation(line: 365, column: 14, scope: !2734)
!2734 = distinct !DILexicalBlock(scope: !2730, file: !256, line: 365, column: 13)
!2735 = !DILocation(line: 365, column: 13, scope: !2730)
!2736 = !DILocation(line: 366, column: 43, scope: !2737)
!2737 = distinct !DILexicalBlock(scope: !2738, file: !256, line: 366, column: 11)
!2738 = distinct !DILexicalBlock(scope: !2734, file: !256, line: 366, column: 11)
!2739 = !DILocation(line: 366, column: 11, scope: !2738)
!2740 = !DILocation(line: 367, column: 13, scope: !2741)
!2741 = distinct !DILexicalBlock(scope: !2742, file: !256, line: 367, column: 13)
!2742 = distinct !DILexicalBlock(scope: !2737, file: !256, line: 367, column: 13)
!2743 = !DILocation(line: 367, column: 13, scope: !2742)
!2744 = !DILocation(line: 366, column: 70, scope: !2737)
!2745 = distinct !{!2745, !2739, !2746, !841}
!2746 = !DILocation(line: 367, column: 13, scope: !2738)
!2747 = !DILocation(line: 264, column: 10, scope: !2629)
!2748 = !DILocation(line: 370, column: 28, scope: !2730)
!2749 = !DILocation(line: 372, column: 7, scope: !2720)
!2750 = !DILocation(line: 376, column: 7, scope: !2720)
!2751 = !DILocation(line: 379, column: 7, scope: !2720)
!2752 = !DILocation(line: 381, column: 12, scope: !2753)
!2753 = distinct !DILexicalBlock(scope: !2720, file: !256, line: 381, column: 11)
!2754 = !DILocation(line: 381, column: 11, scope: !2720)
!2755 = !DILocation(line: 386, column: 12, scope: !2756)
!2756 = distinct !DILexicalBlock(scope: !2720, file: !256, line: 386, column: 11)
!2757 = !DILocation(line: 386, column: 11, scope: !2720)
!2758 = !DILocation(line: 387, column: 9, scope: !2759)
!2759 = distinct !DILexicalBlock(scope: !2760, file: !256, line: 387, column: 9)
!2760 = distinct !DILexicalBlock(scope: !2756, file: !256, line: 387, column: 9)
!2761 = !DILocation(line: 387, column: 9, scope: !2760)
!2762 = !DILocation(line: 394, column: 7, scope: !2720)
!2763 = !DILocation(line: 397, column: 7, scope: !2720)
!2764 = !DILocation(line: 400, column: 8, scope: !2658)
!2765 = !DILocation(line: 0, scope: !2658)
!2766 = !DILocation(line: 400, column: 27, scope: !2657)
!2767 = !DILocation(line: 400, column: 19, scope: !2657)
!2768 = !DILocation(line: 400, column: 41, scope: !2657)
!2769 = !DILocation(line: 400, column: 48, scope: !2657)
!2770 = !DILocation(line: 400, column: 3, scope: !2658)
!2771 = !DILocation(line: 400, column: 60, scope: !2657)
!2772 = !DILocation(line: 0, scope: !2656)
!2773 = !DILocation(line: 409, column: 11, scope: !2774)
!2774 = distinct !DILexicalBlock(scope: !2656, file: !256, line: 408, column: 11)
!2775 = !DILocation(line: 411, column: 17, scope: !2774)
!2776 = !DILocation(line: 412, column: 39, scope: !2774)
!2777 = !DILocation(line: 416, column: 32, scope: !2774)
!2778 = !DILocation(line: 412, column: 19, scope: !2774)
!2779 = !DILocation(line: 412, column: 15, scope: !2774)
!2780 = !DILocation(line: 417, column: 11, scope: !2774)
!2781 = !DILocation(line: 417, column: 26, scope: !2774)
!2782 = !DILocation(line: 417, column: 14, scope: !2774)
!2783 = !DILocation(line: 417, column: 63, scope: !2774)
!2784 = !DILocation(line: 408, column: 11, scope: !2656)
!2785 = !DILocation(line: 424, column: 11, scope: !2656)
!2786 = !DILocation(line: 425, column: 7, scope: !2656)
!2787 = !DILocation(line: 428, column: 15, scope: !2665)
!2788 = !DILocation(line: 430, column: 15, scope: !2789)
!2789 = distinct !DILexicalBlock(scope: !2790, file: !256, line: 430, column: 15)
!2790 = distinct !DILexicalBlock(scope: !2791, file: !256, line: 429, column: 13)
!2791 = distinct !DILexicalBlock(scope: !2665, file: !256, line: 428, column: 15)
!2792 = !DILocation(line: 430, column: 15, scope: !2793)
!2793 = distinct !DILexicalBlock(scope: !2789, file: !256, line: 430, column: 15)
!2794 = !DILocation(line: 430, column: 15, scope: !2795)
!2795 = distinct !DILexicalBlock(scope: !2796, file: !256, line: 430, column: 15)
!2796 = distinct !DILexicalBlock(scope: !2797, file: !256, line: 430, column: 15)
!2797 = distinct !DILexicalBlock(scope: !2793, file: !256, line: 430, column: 15)
!2798 = !DILocation(line: 430, column: 15, scope: !2796)
!2799 = !DILocation(line: 430, column: 15, scope: !2800)
!2800 = distinct !DILexicalBlock(scope: !2801, file: !256, line: 430, column: 15)
!2801 = distinct !DILexicalBlock(scope: !2797, file: !256, line: 430, column: 15)
!2802 = !DILocation(line: 430, column: 15, scope: !2801)
!2803 = !DILocation(line: 430, column: 15, scope: !2804)
!2804 = distinct !DILexicalBlock(scope: !2805, file: !256, line: 430, column: 15)
!2805 = distinct !DILexicalBlock(scope: !2797, file: !256, line: 430, column: 15)
!2806 = !DILocation(line: 430, column: 15, scope: !2805)
!2807 = !DILocation(line: 430, column: 15, scope: !2797)
!2808 = !DILocation(line: 430, column: 15, scope: !2809)
!2809 = distinct !DILexicalBlock(scope: !2810, file: !256, line: 430, column: 15)
!2810 = distinct !DILexicalBlock(scope: !2789, file: !256, line: 430, column: 15)
!2811 = !DILocation(line: 430, column: 15, scope: !2810)
!2812 = !DILocation(line: 438, column: 19, scope: !2813)
!2813 = distinct !DILexicalBlock(scope: !2790, file: !256, line: 437, column: 19)
!2814 = !DILocation(line: 438, column: 48, scope: !2813)
!2815 = !DILocation(line: 438, column: 59, scope: !2813)
!2816 = !DILocation(line: 440, column: 19, scope: !2817)
!2817 = distinct !DILexicalBlock(scope: !2818, file: !256, line: 440, column: 19)
!2818 = distinct !DILexicalBlock(scope: !2819, file: !256, line: 440, column: 19)
!2819 = distinct !DILexicalBlock(scope: !2813, file: !256, line: 439, column: 17)
!2820 = !DILocation(line: 440, column: 19, scope: !2818)
!2821 = !DILocation(line: 441, column: 19, scope: !2822)
!2822 = distinct !DILexicalBlock(scope: !2823, file: !256, line: 441, column: 19)
!2823 = distinct !DILexicalBlock(scope: !2819, file: !256, line: 441, column: 19)
!2824 = !DILocation(line: 441, column: 19, scope: !2823)
!2825 = !DILocation(line: 442, column: 17, scope: !2819)
!2826 = !DILocation(line: 449, column: 20, scope: !2791)
!2827 = !DILocation(line: 454, column: 11, scope: !2665)
!2828 = !DILocation(line: 457, column: 19, scope: !2829)
!2829 = distinct !DILexicalBlock(scope: !2665, file: !256, line: 455, column: 13)
!2830 = !DILocation(line: 463, column: 19, scope: !2831)
!2831 = distinct !DILexicalBlock(scope: !2829, file: !256, line: 462, column: 19)
!2832 = !DILocation(line: 463, column: 47, scope: !2831)
!2833 = !DILocation(line: 463, column: 41, scope: !2831)
!2834 = !DILocation(line: 463, column: 52, scope: !2831)
!2835 = !DILocation(line: 462, column: 19, scope: !2829)
!2836 = !DILocation(line: 464, column: 25, scope: !2831)
!2837 = !DILocation(line: 464, column: 17, scope: !2831)
!2838 = !DILocation(line: 471, column: 25, scope: !2839)
!2839 = distinct !DILexicalBlock(scope: !2831, file: !256, line: 465, column: 19)
!2840 = !DILocation(line: 475, column: 21, scope: !2841)
!2841 = distinct !DILexicalBlock(scope: !2842, file: !256, line: 475, column: 21)
!2842 = distinct !DILexicalBlock(scope: !2839, file: !256, line: 475, column: 21)
!2843 = !DILocation(line: 475, column: 21, scope: !2842)
!2844 = !DILocation(line: 476, column: 21, scope: !2845)
!2845 = distinct !DILexicalBlock(scope: !2846, file: !256, line: 476, column: 21)
!2846 = distinct !DILexicalBlock(scope: !2839, file: !256, line: 476, column: 21)
!2847 = !DILocation(line: 476, column: 21, scope: !2846)
!2848 = !DILocation(line: 477, column: 21, scope: !2849)
!2849 = distinct !DILexicalBlock(scope: !2850, file: !256, line: 477, column: 21)
!2850 = distinct !DILexicalBlock(scope: !2839, file: !256, line: 477, column: 21)
!2851 = !DILocation(line: 477, column: 21, scope: !2850)
!2852 = !DILocation(line: 478, column: 21, scope: !2853)
!2853 = distinct !DILexicalBlock(scope: !2854, file: !256, line: 478, column: 21)
!2854 = distinct !DILexicalBlock(scope: !2839, file: !256, line: 478, column: 21)
!2855 = !DILocation(line: 478, column: 21, scope: !2854)
!2856 = !DILocation(line: 479, column: 21, scope: !2839)
!2857 = !DILocation(line: 492, column: 31, scope: !2665)
!2858 = !DILocation(line: 493, column: 31, scope: !2665)
!2859 = !DILocation(line: 495, column: 31, scope: !2665)
!2860 = !DILocation(line: 496, column: 31, scope: !2665)
!2861 = !DILocation(line: 497, column: 31, scope: !2665)
!2862 = !DILocation(line: 500, column: 15, scope: !2665)
!2863 = !DILocation(line: 502, column: 19, scope: !2864)
!2864 = distinct !DILexicalBlock(scope: !2865, file: !256, line: 501, column: 13)
!2865 = distinct !DILexicalBlock(scope: !2665, file: !256, line: 500, column: 15)
!2866 = !DILocation(line: 509, column: 33, scope: !2867)
!2867 = distinct !DILexicalBlock(scope: !2665, file: !256, line: 509, column: 15)
!2868 = !DILocation(line: 0, scope: !2665)
!2869 = !DILocation(line: 512, column: 9, scope: !2665)
!2870 = !DILocation(line: 514, column: 15, scope: !2871)
!2871 = distinct !DILexicalBlock(scope: !2665, file: !256, line: 513, column: 15)
!2872 = !DILocation(line: 517, column: 9, scope: !2665)
!2873 = !DILocation(line: 518, column: 15, scope: !2665)
!2874 = !DILocation(line: 526, column: 15, scope: !2665)
!2875 = !DILocation(line: 526, column: 40, scope: !2876)
!2876 = distinct !DILexicalBlock(scope: !2665, file: !256, line: 526, column: 15)
!2877 = !DILocation(line: 526, column: 47, scope: !2876)
!2878 = !DILocation(line: 526, column: 18, scope: !2876)
!2879 = !DILocation(line: 530, column: 17, scope: !2880)
!2880 = distinct !DILexicalBlock(scope: !2665, file: !256, line: 530, column: 15)
!2881 = !DILocation(line: 530, column: 15, scope: !2665)
!2882 = !DILocation(line: 535, column: 11, scope: !2665)
!2883 = !DILocation(line: 549, column: 15, scope: !2884)
!2884 = distinct !DILexicalBlock(scope: !2665, file: !256, line: 548, column: 15)
!2885 = !DILocation(line: 556, column: 15, scope: !2665)
!2886 = !DILocation(line: 558, column: 19, scope: !2887)
!2887 = distinct !DILexicalBlock(scope: !2888, file: !256, line: 557, column: 13)
!2888 = distinct !DILexicalBlock(scope: !2665, file: !256, line: 556, column: 15)
!2889 = !DILocation(line: 561, column: 19, scope: !2890)
!2890 = distinct !DILexicalBlock(scope: !2887, file: !256, line: 561, column: 19)
!2891 = !DILocation(line: 561, column: 30, scope: !2890)
!2892 = !DILocation(line: 570, column: 15, scope: !2893)
!2893 = distinct !DILexicalBlock(scope: !2894, file: !256, line: 570, column: 15)
!2894 = distinct !DILexicalBlock(scope: !2887, file: !256, line: 570, column: 15)
!2895 = !DILocation(line: 570, column: 15, scope: !2894)
!2896 = !DILocation(line: 571, column: 15, scope: !2897)
!2897 = distinct !DILexicalBlock(scope: !2898, file: !256, line: 571, column: 15)
!2898 = distinct !DILexicalBlock(scope: !2887, file: !256, line: 571, column: 15)
!2899 = !DILocation(line: 571, column: 15, scope: !2898)
!2900 = !DILocation(line: 572, column: 15, scope: !2901)
!2901 = distinct !DILexicalBlock(scope: !2902, file: !256, line: 572, column: 15)
!2902 = distinct !DILexicalBlock(scope: !2887, file: !256, line: 572, column: 15)
!2903 = !DILocation(line: 572, column: 15, scope: !2902)
!2904 = !DILocation(line: 574, column: 13, scope: !2887)
!2905 = !DILocation(line: 614, column: 17, scope: !2664)
!2906 = !DILocation(line: 0, scope: !2664)
!2907 = !DILocation(line: 617, column: 29, scope: !2908)
!2908 = distinct !DILexicalBlock(scope: !2669, file: !256, line: 615, column: 15)
!2909 = !DILocation(line: 617, column: 27, scope: !2908)
!2910 = !DILocation(line: 678, column: 40, scope: !2664)
!2911 = !DILocation(line: 680, column: 23, scope: !2698)
!2912 = !DILocation(line: 621, column: 17, scope: !2668)
!2913 = !DILocation(line: 621, column: 27, scope: !2668)
!2914 = !DILocalVariable(name: "__dest", arg: 1, scope: !2915, file: !1795, line: 57, type: !61)
!2915 = distinct !DISubprogram(name: "memset", scope: !1795, file: !1795, line: 57, type: !2916, scopeLine: 58, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !255, retainedNodes: !2918)
!2916 = !DISubroutineType(types: !2917)
!2917 = !{!61, !61, !64, !62}
!2918 = !{!2914, !2919, !2920}
!2919 = !DILocalVariable(name: "__ch", arg: 2, scope: !2915, file: !1795, line: 57, type: !64)
!2920 = !DILocalVariable(name: "__len", arg: 3, scope: !2915, file: !1795, line: 57, type: !62)
!2921 = !DILocation(line: 0, scope: !2915, inlinedAt: !2922)
!2922 = distinct !DILocation(line: 622, column: 17, scope: !2668)
!2923 = !DILocation(line: 59, column: 10, scope: !2915, inlinedAt: !2922)
!2924 = !DILocation(line: 626, column: 29, scope: !2925)
!2925 = distinct !DILexicalBlock(scope: !2668, file: !256, line: 626, column: 21)
!2926 = !DILocation(line: 626, column: 21, scope: !2668)
!2927 = !DILocation(line: 627, column: 29, scope: !2925)
!2928 = !DILocation(line: 627, column: 19, scope: !2925)
!2929 = !DILocation(line: 629, column: 17, scope: !2668)
!2930 = !DILocation(line: 624, column: 19, scope: !2668)
!2931 = !DILocation(line: 625, column: 27, scope: !2668)
!2932 = !DILocation(line: 631, column: 21, scope: !2686)
!2933 = !DILocation(line: 632, column: 56, scope: !2686)
!2934 = !DILocation(line: 632, column: 50, scope: !2686)
!2935 = !DILocation(line: 633, column: 53, scope: !2686)
!2936 = !DILocation(line: 0, scope: !2686)
!2937 = !DILocation(line: 632, column: 36, scope: !2686)
!2938 = !DILocation(line: 634, column: 25, scope: !2686)
!2939 = !DILocation(line: 644, column: 38, scope: !2940)
!2940 = distinct !DILexicalBlock(scope: !2693, file: !256, line: 642, column: 23)
!2941 = !DILocation(line: 644, column: 48, scope: !2940)
!2942 = !DILocation(line: 644, column: 25, scope: !2940)
!2943 = !DILocation(line: 644, column: 51, scope: !2940)
!2944 = !DILocation(line: 645, column: 28, scope: !2940)
!2945 = !DILocation(line: 644, column: 34, scope: !2940)
!2946 = distinct !{!2946, !2942, !2944, !841}
!2947 = !DILocation(line: 655, column: 29, scope: !2691)
!2948 = !DILocation(line: 0, scope: !2690)
!2949 = !DILocation(line: 659, column: 49, scope: !2950)
!2950 = distinct !DILexicalBlock(scope: !2951, file: !256, line: 658, column: 29)
!2951 = distinct !DILexicalBlock(scope: !2690, file: !256, line: 658, column: 29)
!2952 = !DILocation(line: 659, column: 39, scope: !2950)
!2953 = !DILocation(line: 659, column: 31, scope: !2950)
!2954 = !DILocation(line: 658, column: 53, scope: !2950)
!2955 = !DILocation(line: 658, column: 43, scope: !2950)
!2956 = !DILocation(line: 658, column: 29, scope: !2951)
!2957 = distinct !{!2957, !2956, !2958, !841}
!2958 = !DILocation(line: 667, column: 33, scope: !2951)
!2959 = !DILocation(line: 674, column: 19, scope: !2668)
!2960 = !DILocation(line: 670, column: 41, scope: !2961)
!2961 = distinct !DILexicalBlock(scope: !2692, file: !256, line: 670, column: 29)
!2962 = !DILocation(line: 670, column: 31, scope: !2961)
!2963 = !DILocation(line: 670, column: 29, scope: !2692)
!2964 = !DILocation(line: 672, column: 27, scope: !2692)
!2965 = !DILocation(line: 675, column: 26, scope: !2668)
!2966 = !DILocation(line: 675, column: 24, scope: !2668)
!2967 = !DILocation(line: 674, column: 19, scope: !2686)
!2968 = distinct !{!2968, !2929, !2969, !841}
!2969 = !DILocation(line: 675, column: 44, scope: !2668)
!2970 = !DILocation(line: 676, column: 15, scope: !2669)
!2971 = !DILocation(line: 680, column: 19, scope: !2698)
!2972 = !DILocation(line: 680, column: 45, scope: !2698)
!2973 = !DILocation(line: 684, column: 33, scope: !2697)
!2974 = !DILocation(line: 0, scope: !2697)
!2975 = !DILocation(line: 686, column: 17, scope: !2697)
!2976 = !DILocation(line: 405, column: 12, scope: !2656)
!2977 = !DILocation(line: 688, column: 43, scope: !2978)
!2978 = distinct !DILexicalBlock(scope: !2979, file: !256, line: 688, column: 25)
!2979 = distinct !DILexicalBlock(scope: !2980, file: !256, line: 687, column: 19)
!2980 = distinct !DILexicalBlock(scope: !2981, file: !256, line: 686, column: 17)
!2981 = distinct !DILexicalBlock(scope: !2697, file: !256, line: 686, column: 17)
!2982 = !DILocation(line: 690, column: 25, scope: !2983)
!2983 = distinct !DILexicalBlock(scope: !2984, file: !256, line: 690, column: 25)
!2984 = distinct !DILexicalBlock(scope: !2978, file: !256, line: 689, column: 23)
!2985 = !DILocation(line: 690, column: 25, scope: !2986)
!2986 = distinct !DILexicalBlock(scope: !2983, file: !256, line: 690, column: 25)
!2987 = !DILocation(line: 690, column: 25, scope: !2988)
!2988 = distinct !DILexicalBlock(scope: !2989, file: !256, line: 690, column: 25)
!2989 = distinct !DILexicalBlock(scope: !2990, file: !256, line: 690, column: 25)
!2990 = distinct !DILexicalBlock(scope: !2986, file: !256, line: 690, column: 25)
!2991 = !DILocation(line: 690, column: 25, scope: !2989)
!2992 = !DILocation(line: 690, column: 25, scope: !2993)
!2993 = distinct !DILexicalBlock(scope: !2994, file: !256, line: 690, column: 25)
!2994 = distinct !DILexicalBlock(scope: !2990, file: !256, line: 690, column: 25)
!2995 = !DILocation(line: 690, column: 25, scope: !2994)
!2996 = !DILocation(line: 690, column: 25, scope: !2997)
!2997 = distinct !DILexicalBlock(scope: !2998, file: !256, line: 690, column: 25)
!2998 = distinct !DILexicalBlock(scope: !2990, file: !256, line: 690, column: 25)
!2999 = !DILocation(line: 690, column: 25, scope: !2998)
!3000 = !DILocation(line: 690, column: 25, scope: !2990)
!3001 = !DILocation(line: 690, column: 25, scope: !3002)
!3002 = distinct !DILexicalBlock(scope: !3003, file: !256, line: 690, column: 25)
!3003 = distinct !DILexicalBlock(scope: !2983, file: !256, line: 690, column: 25)
!3004 = !DILocation(line: 690, column: 25, scope: !3003)
!3005 = !DILocation(line: 691, column: 25, scope: !3006)
!3006 = distinct !DILexicalBlock(scope: !3007, file: !256, line: 691, column: 25)
!3007 = distinct !DILexicalBlock(scope: !2984, file: !256, line: 691, column: 25)
!3008 = !DILocation(line: 691, column: 25, scope: !3007)
!3009 = !DILocation(line: 692, column: 25, scope: !3010)
!3010 = distinct !DILexicalBlock(scope: !3011, file: !256, line: 692, column: 25)
!3011 = distinct !DILexicalBlock(scope: !2984, file: !256, line: 692, column: 25)
!3012 = !DILocation(line: 692, column: 25, scope: !3011)
!3013 = !DILocation(line: 693, column: 38, scope: !2984)
!3014 = !DILocation(line: 693, column: 33, scope: !2984)
!3015 = !DILocation(line: 694, column: 23, scope: !2984)
!3016 = !DILocation(line: 695, column: 30, scope: !3017)
!3017 = distinct !DILexicalBlock(scope: !2978, file: !256, line: 695, column: 30)
!3018 = !DILocation(line: 695, column: 30, scope: !2978)
!3019 = !DILocation(line: 697, column: 25, scope: !3020)
!3020 = distinct !DILexicalBlock(scope: !3021, file: !256, line: 697, column: 25)
!3021 = distinct !DILexicalBlock(scope: !3022, file: !256, line: 697, column: 25)
!3022 = distinct !DILexicalBlock(scope: !3017, file: !256, line: 696, column: 23)
!3023 = !DILocation(line: 697, column: 25, scope: !3021)
!3024 = !DILocation(line: 699, column: 23, scope: !3022)
!3025 = !DILocation(line: 700, column: 35, scope: !3026)
!3026 = distinct !DILexicalBlock(scope: !2979, file: !256, line: 700, column: 25)
!3027 = !DILocation(line: 700, column: 30, scope: !3026)
!3028 = !DILocation(line: 700, column: 25, scope: !2979)
!3029 = !DILocation(line: 702, column: 21, scope: !3030)
!3030 = distinct !DILexicalBlock(scope: !3031, file: !256, line: 702, column: 21)
!3031 = distinct !DILexicalBlock(scope: !2979, file: !256, line: 702, column: 21)
!3032 = !DILocation(line: 702, column: 21, scope: !3033)
!3033 = distinct !DILexicalBlock(scope: !3034, file: !256, line: 702, column: 21)
!3034 = distinct !DILexicalBlock(scope: !3035, file: !256, line: 702, column: 21)
!3035 = distinct !DILexicalBlock(scope: !3030, file: !256, line: 702, column: 21)
!3036 = !DILocation(line: 702, column: 21, scope: !3034)
!3037 = !DILocation(line: 702, column: 21, scope: !3038)
!3038 = distinct !DILexicalBlock(scope: !3039, file: !256, line: 702, column: 21)
!3039 = distinct !DILexicalBlock(scope: !3035, file: !256, line: 702, column: 21)
!3040 = !DILocation(line: 702, column: 21, scope: !3039)
!3041 = !DILocation(line: 702, column: 21, scope: !3035)
!3042 = !DILocation(line: 0, scope: !2979)
!3043 = !DILocation(line: 703, column: 21, scope: !3044)
!3044 = distinct !DILexicalBlock(scope: !3045, file: !256, line: 703, column: 21)
!3045 = distinct !DILexicalBlock(scope: !2979, file: !256, line: 703, column: 21)
!3046 = !DILocation(line: 703, column: 21, scope: !3045)
!3047 = !DILocation(line: 704, column: 25, scope: !2979)
!3048 = !DILocation(line: 686, column: 17, scope: !2980)
!3049 = distinct !{!3049, !3050, !3051}
!3050 = !DILocation(line: 686, column: 17, scope: !2981)
!3051 = !DILocation(line: 705, column: 19, scope: !2981)
!3052 = !DILocation(line: 416, column: 30, scope: !2774)
!3053 = !DILocation(line: 712, column: 34, scope: !3054)
!3054 = distinct !DILexicalBlock(scope: !2656, file: !256, line: 712, column: 11)
!3055 = !DILocation(line: 715, column: 35, scope: !3054)
!3056 = !DILocation(line: 715, column: 17, scope: !3054)
!3057 = !DILocation(line: 715, column: 47, scope: !3054)
!3058 = !DILocation(line: 715, column: 65, scope: !3054)
!3059 = !DILocation(line: 716, column: 11, scope: !3054)
!3060 = !DILocation(line: 712, column: 11, scope: !2656)
!3061 = !DILocation(line: 400, column: 10, scope: !2658)
!3062 = !DILocation(line: 719, column: 5, scope: !2656)
!3063 = !DILocation(line: 720, column: 7, scope: !3064)
!3064 = distinct !DILexicalBlock(scope: !2656, file: !256, line: 720, column: 7)
!3065 = !DILocation(line: 720, column: 7, scope: !3066)
!3066 = distinct !DILexicalBlock(scope: !3064, file: !256, line: 720, column: 7)
!3067 = !DILocation(line: 720, column: 7, scope: !3068)
!3068 = distinct !DILexicalBlock(scope: !3069, file: !256, line: 720, column: 7)
!3069 = distinct !DILexicalBlock(scope: !3070, file: !256, line: 720, column: 7)
!3070 = distinct !DILexicalBlock(scope: !3066, file: !256, line: 720, column: 7)
!3071 = !DILocation(line: 720, column: 7, scope: !3069)
!3072 = !DILocation(line: 720, column: 7, scope: !3073)
!3073 = distinct !DILexicalBlock(scope: !3074, file: !256, line: 720, column: 7)
!3074 = distinct !DILexicalBlock(scope: !3070, file: !256, line: 720, column: 7)
!3075 = !DILocation(line: 720, column: 7, scope: !3074)
!3076 = !DILocation(line: 720, column: 7, scope: !3077)
!3077 = distinct !DILexicalBlock(scope: !3078, file: !256, line: 720, column: 7)
!3078 = distinct !DILexicalBlock(scope: !3070, file: !256, line: 720, column: 7)
!3079 = !DILocation(line: 720, column: 7, scope: !3078)
!3080 = !DILocation(line: 720, column: 7, scope: !3070)
!3081 = !DILocation(line: 720, column: 7, scope: !3082)
!3082 = distinct !DILexicalBlock(scope: !3083, file: !256, line: 720, column: 7)
!3083 = distinct !DILexicalBlock(scope: !3064, file: !256, line: 720, column: 7)
!3084 = !DILocation(line: 720, column: 7, scope: !3083)
!3085 = !DILocation(line: 722, column: 5, scope: !2656)
!3086 = !DILocation(line: 723, column: 7, scope: !3087)
!3087 = distinct !DILexicalBlock(scope: !3088, file: !256, line: 723, column: 7)
!3088 = distinct !DILexicalBlock(scope: !2656, file: !256, line: 723, column: 7)
!3089 = !DILocation(line: 424, column: 9, scope: !2656)
!3090 = !DILocation(line: 723, column: 7, scope: !3091)
!3091 = distinct !DILexicalBlock(scope: !3092, file: !256, line: 723, column: 7)
!3092 = distinct !DILexicalBlock(scope: !3093, file: !256, line: 723, column: 7)
!3093 = distinct !DILexicalBlock(scope: !3087, file: !256, line: 723, column: 7)
!3094 = !DILocation(line: 723, column: 7, scope: !3092)
!3095 = !DILocation(line: 723, column: 7, scope: !3096)
!3096 = distinct !DILexicalBlock(scope: !3097, file: !256, line: 723, column: 7)
!3097 = distinct !DILexicalBlock(scope: !3093, file: !256, line: 723, column: 7)
!3098 = !DILocation(line: 723, column: 7, scope: !3097)
!3099 = !DILocation(line: 723, column: 7, scope: !3093)
!3100 = !DILocation(line: 724, column: 7, scope: !3101)
!3101 = distinct !DILexicalBlock(scope: !3102, file: !256, line: 724, column: 7)
!3102 = distinct !DILexicalBlock(scope: !2656, file: !256, line: 724, column: 7)
!3103 = !DILocation(line: 724, column: 7, scope: !3102)
!3104 = !DILocation(line: 726, column: 13, scope: !3105)
!3105 = distinct !DILexicalBlock(scope: !2656, file: !256, line: 726, column: 11)
!3106 = !DILocation(line: 726, column: 11, scope: !2656)
!3107 = !DILocation(line: 728, column: 5, scope: !2657)
!3108 = !DILocation(line: 400, column: 75, scope: !2657)
!3109 = !DILocation(line: 400, column: 3, scope: !2657)
!3110 = distinct !{!3110, !2770, !3111, !841}
!3111 = !DILocation(line: 728, column: 5, scope: !2658)
!3112 = !DILocation(line: 730, column: 11, scope: !3113)
!3113 = distinct !DILexicalBlock(scope: !2629, file: !256, line: 730, column: 7)
!3114 = !DILocation(line: 730, column: 16, scope: !3113)
!3115 = !DILocation(line: 738, column: 51, scope: !3116)
!3116 = distinct !DILexicalBlock(scope: !2629, file: !256, line: 738, column: 7)
!3117 = !DILocation(line: 741, column: 11, scope: !3118)
!3118 = distinct !DILexicalBlock(scope: !3119, file: !256, line: 741, column: 11)
!3119 = distinct !DILexicalBlock(scope: !3116, file: !256, line: 740, column: 5)
!3120 = !DILocation(line: 741, column: 11, scope: !3119)
!3121 = !DILocation(line: 742, column: 16, scope: !3118)
!3122 = !DILocation(line: 742, column: 9, scope: !3118)
!3123 = !DILocation(line: 746, column: 18, scope: !3124)
!3124 = distinct !DILexicalBlock(scope: !3118, file: !256, line: 746, column: 16)
!3125 = !DILocation(line: 746, column: 29, scope: !3124)
!3126 = !DILocation(line: 755, column: 7, scope: !3127)
!3127 = distinct !DILexicalBlock(scope: !2629, file: !256, line: 755, column: 7)
!3128 = !DILocation(line: 755, column: 20, scope: !3127)
!3129 = !DILocation(line: 756, column: 12, scope: !3130)
!3130 = distinct !DILexicalBlock(scope: !3131, file: !256, line: 756, column: 5)
!3131 = distinct !DILexicalBlock(scope: !3127, file: !256, line: 756, column: 5)
!3132 = !DILocation(line: 756, column: 5, scope: !3131)
!3133 = !DILocation(line: 757, column: 7, scope: !3134)
!3134 = distinct !DILexicalBlock(scope: !3135, file: !256, line: 757, column: 7)
!3135 = distinct !DILexicalBlock(scope: !3130, file: !256, line: 757, column: 7)
!3136 = !DILocation(line: 757, column: 7, scope: !3135)
!3137 = !DILocation(line: 756, column: 39, scope: !3130)
!3138 = distinct !{!3138, !3132, !3139, !841}
!3139 = !DILocation(line: 757, column: 7, scope: !3131)
!3140 = !DILocation(line: 759, column: 11, scope: !3141)
!3141 = distinct !DILexicalBlock(scope: !2629, file: !256, line: 759, column: 7)
!3142 = !DILocation(line: 759, column: 7, scope: !2629)
!3143 = !DILocation(line: 760, column: 5, scope: !3141)
!3144 = !DILocation(line: 760, column: 17, scope: !3141)
!3145 = !DILocation(line: 763, column: 2, scope: !2629)
!3146 = !DILocation(line: 766, column: 51, scope: !3147)
!3147 = distinct !DILexicalBlock(scope: !2629, file: !256, line: 766, column: 7)
!3148 = !DILocation(line: 766, column: 21, scope: !3147)
!3149 = !DILocation(line: 770, column: 42, scope: !2629)
!3150 = !DILocation(line: 768, column: 10, scope: !2629)
!3151 = !DILocation(line: 768, column: 3, scope: !2629)
!3152 = !DILocation(line: 772, column: 1, scope: !2629)
!3153 = distinct !DISubprogram(name: "gettext_quote", scope: !256, file: !256, line: 207, type: !3154, scopeLine: 208, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !255, retainedNodes: !3156)
!3154 = !DISubroutineType(types: !3155)
!3155 = !{!93, !93, !5}
!3156 = !{!3157, !3158, !3159, !3160}
!3157 = !DILocalVariable(name: "msgid", arg: 1, scope: !3153, file: !256, line: 207, type: !93)
!3158 = !DILocalVariable(name: "s", arg: 2, scope: !3153, file: !256, line: 207, type: !5)
!3159 = !DILocalVariable(name: "translation", scope: !3153, file: !256, line: 209, type: !93)
!3160 = !DILocalVariable(name: "locale_code", scope: !3153, file: !256, line: 210, type: !93)
!3161 = !DILocation(line: 0, scope: !3153)
!3162 = !DILocation(line: 209, column: 29, scope: !3153)
!3163 = !DILocation(line: 212, column: 19, scope: !3164)
!3164 = distinct !DILexicalBlock(scope: !3153, file: !256, line: 212, column: 7)
!3165 = !DILocation(line: 212, column: 7, scope: !3153)
!3166 = !DILocation(line: 233, column: 17, scope: !3153)
!3167 = !DILocalVariable(name: "s1", arg: 1, scope: !3168, file: !3169, line: 160, type: !93)
!3168 = distinct !DISubprogram(name: "strcaseeq0", scope: !3169, file: !3169, line: 160, type: !3170, scopeLine: 161, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !255, retainedNodes: !3172)
!3169 = !DIFile(filename: "./lib/c-strcaseeq.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!3170 = !DISubroutineType(types: !3171)
!3171 = !{!64, !93, !93, !60, !60, !60, !60, !60, !60, !60, !60, !60}
!3172 = !{!3167, !3173, !3174, !3175, !3176, !3177, !3178, !3179, !3180, !3181, !3182}
!3173 = !DILocalVariable(name: "s2", arg: 2, scope: !3168, file: !3169, line: 160, type: !93)
!3174 = !DILocalVariable(name: "s20", arg: 3, scope: !3168, file: !3169, line: 160, type: !60)
!3175 = !DILocalVariable(name: "s21", arg: 4, scope: !3168, file: !3169, line: 160, type: !60)
!3176 = !DILocalVariable(name: "s22", arg: 5, scope: !3168, file: !3169, line: 160, type: !60)
!3177 = !DILocalVariable(name: "s23", arg: 6, scope: !3168, file: !3169, line: 160, type: !60)
!3178 = !DILocalVariable(name: "s24", arg: 7, scope: !3168, file: !3169, line: 160, type: !60)
!3179 = !DILocalVariable(name: "s25", arg: 8, scope: !3168, file: !3169, line: 160, type: !60)
!3180 = !DILocalVariable(name: "s26", arg: 9, scope: !3168, file: !3169, line: 160, type: !60)
!3181 = !DILocalVariable(name: "s27", arg: 10, scope: !3168, file: !3169, line: 160, type: !60)
!3182 = !DILocalVariable(name: "s28", arg: 11, scope: !3168, file: !3169, line: 160, type: !60)
!3183 = !DILocation(line: 0, scope: !3168, inlinedAt: !3184)
!3184 = distinct !DILocation(line: 234, column: 7, scope: !3185)
!3185 = distinct !DILexicalBlock(scope: !3153, file: !256, line: 234, column: 7)
!3186 = !DILocation(line: 162, column: 7, scope: !3187, inlinedAt: !3184)
!3187 = distinct !DILexicalBlock(scope: !3168, file: !3169, line: 162, column: 7)
!3188 = !DILocalVariable(name: "s1", arg: 1, scope: !3189, file: !3169, line: 146, type: !93)
!3189 = distinct !DISubprogram(name: "strcaseeq1", scope: !3169, file: !3169, line: 146, type: !3190, scopeLine: 147, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !255, retainedNodes: !3192)
!3190 = !DISubroutineType(types: !3191)
!3191 = !{!64, !93, !93, !60, !60, !60, !60, !60, !60, !60, !60}
!3192 = !{!3188, !3193, !3194, !3195, !3196, !3197, !3198, !3199, !3200, !3201}
!3193 = !DILocalVariable(name: "s2", arg: 2, scope: !3189, file: !3169, line: 146, type: !93)
!3194 = !DILocalVariable(name: "s21", arg: 3, scope: !3189, file: !3169, line: 146, type: !60)
!3195 = !DILocalVariable(name: "s22", arg: 4, scope: !3189, file: !3169, line: 146, type: !60)
!3196 = !DILocalVariable(name: "s23", arg: 5, scope: !3189, file: !3169, line: 146, type: !60)
!3197 = !DILocalVariable(name: "s24", arg: 6, scope: !3189, file: !3169, line: 146, type: !60)
!3198 = !DILocalVariable(name: "s25", arg: 7, scope: !3189, file: !3169, line: 146, type: !60)
!3199 = !DILocalVariable(name: "s26", arg: 8, scope: !3189, file: !3169, line: 146, type: !60)
!3200 = !DILocalVariable(name: "s27", arg: 9, scope: !3189, file: !3169, line: 146, type: !60)
!3201 = !DILocalVariable(name: "s28", arg: 10, scope: !3189, file: !3169, line: 146, type: !60)
!3202 = !DILocation(line: 0, scope: !3189, inlinedAt: !3203)
!3203 = distinct !DILocation(line: 167, column: 16, scope: !3204, inlinedAt: !3184)
!3204 = distinct !DILexicalBlock(scope: !3205, file: !3169, line: 164, column: 11)
!3205 = distinct !DILexicalBlock(scope: !3187, file: !3169, line: 163, column: 5)
!3206 = !DILocation(line: 148, column: 7, scope: !3207, inlinedAt: !3203)
!3207 = distinct !DILexicalBlock(scope: !3189, file: !3169, line: 148, column: 7)
!3208 = !DILocalVariable(name: "s1", arg: 1, scope: !3209, file: !3169, line: 132, type: !93)
!3209 = distinct !DISubprogram(name: "strcaseeq2", scope: !3169, file: !3169, line: 132, type: !3210, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !255, retainedNodes: !3212)
!3210 = !DISubroutineType(types: !3211)
!3211 = !{!64, !93, !93, !60, !60, !60, !60, !60, !60, !60}
!3212 = !{!3208, !3213, !3214, !3215, !3216, !3217, !3218, !3219, !3220}
!3213 = !DILocalVariable(name: "s2", arg: 2, scope: !3209, file: !3169, line: 132, type: !93)
!3214 = !DILocalVariable(name: "s22", arg: 3, scope: !3209, file: !3169, line: 132, type: !60)
!3215 = !DILocalVariable(name: "s23", arg: 4, scope: !3209, file: !3169, line: 132, type: !60)
!3216 = !DILocalVariable(name: "s24", arg: 5, scope: !3209, file: !3169, line: 132, type: !60)
!3217 = !DILocalVariable(name: "s25", arg: 6, scope: !3209, file: !3169, line: 132, type: !60)
!3218 = !DILocalVariable(name: "s26", arg: 7, scope: !3209, file: !3169, line: 132, type: !60)
!3219 = !DILocalVariable(name: "s27", arg: 8, scope: !3209, file: !3169, line: 132, type: !60)
!3220 = !DILocalVariable(name: "s28", arg: 9, scope: !3209, file: !3169, line: 132, type: !60)
!3221 = !DILocation(line: 0, scope: !3209, inlinedAt: !3222)
!3222 = distinct !DILocation(line: 153, column: 16, scope: !3223, inlinedAt: !3203)
!3223 = distinct !DILexicalBlock(scope: !3224, file: !3169, line: 150, column: 11)
!3224 = distinct !DILexicalBlock(scope: !3207, file: !3169, line: 149, column: 5)
!3225 = !DILocation(line: 134, column: 7, scope: !3226, inlinedAt: !3222)
!3226 = distinct !DILexicalBlock(scope: !3209, file: !3169, line: 134, column: 7)
!3227 = !DILocalVariable(name: "s1", arg: 1, scope: !3228, file: !3169, line: 118, type: !93)
!3228 = distinct !DISubprogram(name: "strcaseeq3", scope: !3169, file: !3169, line: 118, type: !3229, scopeLine: 119, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !255, retainedNodes: !3231)
!3229 = !DISubroutineType(types: !3230)
!3230 = !{!64, !93, !93, !60, !60, !60, !60, !60, !60}
!3231 = !{!3227, !3232, !3233, !3234, !3235, !3236, !3237, !3238}
!3232 = !DILocalVariable(name: "s2", arg: 2, scope: !3228, file: !3169, line: 118, type: !93)
!3233 = !DILocalVariable(name: "s23", arg: 3, scope: !3228, file: !3169, line: 118, type: !60)
!3234 = !DILocalVariable(name: "s24", arg: 4, scope: !3228, file: !3169, line: 118, type: !60)
!3235 = !DILocalVariable(name: "s25", arg: 5, scope: !3228, file: !3169, line: 118, type: !60)
!3236 = !DILocalVariable(name: "s26", arg: 6, scope: !3228, file: !3169, line: 118, type: !60)
!3237 = !DILocalVariable(name: "s27", arg: 7, scope: !3228, file: !3169, line: 118, type: !60)
!3238 = !DILocalVariable(name: "s28", arg: 8, scope: !3228, file: !3169, line: 118, type: !60)
!3239 = !DILocation(line: 0, scope: !3228, inlinedAt: !3240)
!3240 = distinct !DILocation(line: 139, column: 16, scope: !3241, inlinedAt: !3222)
!3241 = distinct !DILexicalBlock(scope: !3242, file: !3169, line: 136, column: 11)
!3242 = distinct !DILexicalBlock(scope: !3226, file: !3169, line: 135, column: 5)
!3243 = !DILocation(line: 120, column: 7, scope: !3244, inlinedAt: !3240)
!3244 = distinct !DILexicalBlock(scope: !3228, file: !3169, line: 120, column: 7)
!3245 = !DILocation(line: 120, column: 7, scope: !3228, inlinedAt: !3240)
!3246 = !DILocalVariable(name: "s1", arg: 1, scope: !3247, file: !3169, line: 104, type: !93)
!3247 = distinct !DISubprogram(name: "strcaseeq4", scope: !3169, file: !3169, line: 104, type: !3248, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !255, retainedNodes: !3250)
!3248 = !DISubroutineType(types: !3249)
!3249 = !{!64, !93, !93, !60, !60, !60, !60, !60}
!3250 = !{!3246, !3251, !3252, !3253, !3254, !3255, !3256}
!3251 = !DILocalVariable(name: "s2", arg: 2, scope: !3247, file: !3169, line: 104, type: !93)
!3252 = !DILocalVariable(name: "s24", arg: 3, scope: !3247, file: !3169, line: 104, type: !60)
!3253 = !DILocalVariable(name: "s25", arg: 4, scope: !3247, file: !3169, line: 104, type: !60)
!3254 = !DILocalVariable(name: "s26", arg: 5, scope: !3247, file: !3169, line: 104, type: !60)
!3255 = !DILocalVariable(name: "s27", arg: 6, scope: !3247, file: !3169, line: 104, type: !60)
!3256 = !DILocalVariable(name: "s28", arg: 7, scope: !3247, file: !3169, line: 104, type: !60)
!3257 = !DILocation(line: 0, scope: !3247, inlinedAt: !3258)
!3258 = distinct !DILocation(line: 125, column: 16, scope: !3259, inlinedAt: !3240)
!3259 = distinct !DILexicalBlock(scope: !3260, file: !3169, line: 122, column: 11)
!3260 = distinct !DILexicalBlock(scope: !3244, file: !3169, line: 121, column: 5)
!3261 = !DILocation(line: 106, column: 7, scope: !3262, inlinedAt: !3258)
!3262 = distinct !DILexicalBlock(scope: !3247, file: !3169, line: 106, column: 7)
!3263 = !DILocation(line: 106, column: 7, scope: !3247, inlinedAt: !3258)
!3264 = !DILocalVariable(name: "s1", arg: 1, scope: !3265, file: !3169, line: 90, type: !93)
!3265 = distinct !DISubprogram(name: "strcaseeq5", scope: !3169, file: !3169, line: 90, type: !3266, scopeLine: 91, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !255, retainedNodes: !3268)
!3266 = !DISubroutineType(types: !3267)
!3267 = !{!64, !93, !93, !60, !60, !60, !60}
!3268 = !{!3264, !3269, !3270, !3271, !3272, !3273}
!3269 = !DILocalVariable(name: "s2", arg: 2, scope: !3265, file: !3169, line: 90, type: !93)
!3270 = !DILocalVariable(name: "s25", arg: 3, scope: !3265, file: !3169, line: 90, type: !60)
!3271 = !DILocalVariable(name: "s26", arg: 4, scope: !3265, file: !3169, line: 90, type: !60)
!3272 = !DILocalVariable(name: "s27", arg: 5, scope: !3265, file: !3169, line: 90, type: !60)
!3273 = !DILocalVariable(name: "s28", arg: 6, scope: !3265, file: !3169, line: 90, type: !60)
!3274 = !DILocation(line: 0, scope: !3265, inlinedAt: !3275)
!3275 = distinct !DILocation(line: 111, column: 16, scope: !3276, inlinedAt: !3258)
!3276 = distinct !DILexicalBlock(scope: !3277, file: !3169, line: 108, column: 11)
!3277 = distinct !DILexicalBlock(scope: !3262, file: !3169, line: 107, column: 5)
!3278 = !DILocation(line: 92, column: 7, scope: !3279, inlinedAt: !3275)
!3279 = distinct !DILexicalBlock(scope: !3265, file: !3169, line: 92, column: 7)
!3280 = !DILocation(line: 92, column: 7, scope: !3265, inlinedAt: !3275)
!3281 = !DILocation(line: 235, column: 12, scope: !3185)
!3282 = !DILocation(line: 235, column: 21, scope: !3185)
!3283 = !DILocation(line: 235, column: 5, scope: !3185)
!3284 = !DILocation(line: 0, scope: !3189, inlinedAt: !3285)
!3285 = distinct !DILocation(line: 167, column: 16, scope: !3204, inlinedAt: !3286)
!3286 = distinct !DILocation(line: 236, column: 7, scope: !3287)
!3287 = distinct !DILexicalBlock(scope: !3153, file: !256, line: 236, column: 7)
!3288 = !DILocation(line: 148, column: 7, scope: !3207, inlinedAt: !3285)
!3289 = !DILocation(line: 0, scope: !3209, inlinedAt: !3290)
!3290 = distinct !DILocation(line: 153, column: 16, scope: !3223, inlinedAt: !3285)
!3291 = !DILocation(line: 134, column: 7, scope: !3226, inlinedAt: !3290)
!3292 = !DILocation(line: 134, column: 7, scope: !3209, inlinedAt: !3290)
!3293 = !DILocation(line: 0, scope: !3228, inlinedAt: !3294)
!3294 = distinct !DILocation(line: 139, column: 16, scope: !3241, inlinedAt: !3290)
!3295 = !DILocation(line: 120, column: 7, scope: !3244, inlinedAt: !3294)
!3296 = !DILocation(line: 120, column: 7, scope: !3228, inlinedAt: !3294)
!3297 = !DILocation(line: 0, scope: !3247, inlinedAt: !3298)
!3298 = distinct !DILocation(line: 125, column: 16, scope: !3259, inlinedAt: !3294)
!3299 = !DILocation(line: 106, column: 7, scope: !3262, inlinedAt: !3298)
!3300 = !DILocation(line: 106, column: 7, scope: !3247, inlinedAt: !3298)
!3301 = !DILocation(line: 0, scope: !3265, inlinedAt: !3302)
!3302 = distinct !DILocation(line: 111, column: 16, scope: !3276, inlinedAt: !3298)
!3303 = !DILocation(line: 92, column: 7, scope: !3279, inlinedAt: !3302)
!3304 = !DILocation(line: 92, column: 7, scope: !3265, inlinedAt: !3302)
!3305 = !DILocalVariable(name: "s1", arg: 1, scope: !3306, file: !3169, line: 76, type: !93)
!3306 = distinct !DISubprogram(name: "strcaseeq6", scope: !3169, file: !3169, line: 76, type: !3307, scopeLine: 77, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !255, retainedNodes: !3309)
!3307 = !DISubroutineType(types: !3308)
!3308 = !{!64, !93, !93, !60, !60, !60}
!3309 = !{!3305, !3310, !3311, !3312, !3313}
!3310 = !DILocalVariable(name: "s2", arg: 2, scope: !3306, file: !3169, line: 76, type: !93)
!3311 = !DILocalVariable(name: "s26", arg: 3, scope: !3306, file: !3169, line: 76, type: !60)
!3312 = !DILocalVariable(name: "s27", arg: 4, scope: !3306, file: !3169, line: 76, type: !60)
!3313 = !DILocalVariable(name: "s28", arg: 5, scope: !3306, file: !3169, line: 76, type: !60)
!3314 = !DILocation(line: 0, scope: !3306, inlinedAt: !3315)
!3315 = distinct !DILocation(line: 97, column: 16, scope: !3316, inlinedAt: !3302)
!3316 = distinct !DILexicalBlock(scope: !3317, file: !3169, line: 94, column: 11)
!3317 = distinct !DILexicalBlock(scope: !3279, file: !3169, line: 93, column: 5)
!3318 = !DILocation(line: 78, column: 7, scope: !3319, inlinedAt: !3315)
!3319 = distinct !DILexicalBlock(scope: !3306, file: !3169, line: 78, column: 7)
!3320 = !DILocation(line: 78, column: 7, scope: !3306, inlinedAt: !3315)
!3321 = !DILocalVariable(name: "s1", arg: 1, scope: !3322, file: !3169, line: 62, type: !93)
!3322 = distinct !DISubprogram(name: "strcaseeq7", scope: !3169, file: !3169, line: 62, type: !3323, scopeLine: 63, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !255, retainedNodes: !3325)
!3323 = !DISubroutineType(types: !3324)
!3324 = !{!64, !93, !93, !60, !60}
!3325 = !{!3321, !3326, !3327, !3328}
!3326 = !DILocalVariable(name: "s2", arg: 2, scope: !3322, file: !3169, line: 62, type: !93)
!3327 = !DILocalVariable(name: "s27", arg: 3, scope: !3322, file: !3169, line: 62, type: !60)
!3328 = !DILocalVariable(name: "s28", arg: 4, scope: !3322, file: !3169, line: 62, type: !60)
!3329 = !DILocation(line: 0, scope: !3322, inlinedAt: !3330)
!3330 = distinct !DILocation(line: 83, column: 16, scope: !3331, inlinedAt: !3315)
!3331 = distinct !DILexicalBlock(scope: !3332, file: !3169, line: 80, column: 11)
!3332 = distinct !DILexicalBlock(scope: !3319, file: !3169, line: 79, column: 5)
!3333 = !DILocation(line: 64, column: 7, scope: !3334, inlinedAt: !3330)
!3334 = distinct !DILexicalBlock(scope: !3322, file: !3169, line: 64, column: 7)
!3335 = !DILocation(line: 236, column: 7, scope: !3153)
!3336 = !DILocation(line: 237, column: 12, scope: !3287)
!3337 = !DILocation(line: 237, column: 21, scope: !3287)
!3338 = !DILocation(line: 237, column: 5, scope: !3287)
!3339 = !DILocation(line: 239, column: 13, scope: !3153)
!3340 = !DILocation(line: 239, column: 11, scope: !3153)
!3341 = !DILocation(line: 239, column: 3, scope: !3153)
!3342 = !DILocation(line: 240, column: 1, scope: !3153)
!3343 = !DISubprogram(name: "iswprint", scope: !3344, file: !3344, line: 120, type: !3345, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !221)
!3344 = !DIFile(filename: "/usr/include/bits/wctype-wchar.h", directory: "")
!3345 = !DISubroutineType(types: !3346)
!3346 = !{!64, !7}
!3347 = !DISubprogram(name: "mbsinit", scope: !3348, file: !3348, line: 292, type: !3349, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !221)
!3348 = !DIFile(filename: "/usr/include/wchar.h", directory: "")
!3349 = !DISubroutineType(types: !3350)
!3350 = !{!64, !3351}
!3351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3352, size: 64)
!3352 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2674)
!3353 = distinct !DISubprogram(name: "quotearg_alloc", scope: !256, file: !256, line: 799, type: !3354, scopeLine: 801, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !255, retainedNodes: !3356)
!3354 = !DISubroutineType(types: !3355)
!3355 = !{!59, !93, !62, !2521}
!3356 = !{!3357, !3358, !3359}
!3357 = !DILocalVariable(name: "arg", arg: 1, scope: !3353, file: !256, line: 799, type: !93)
!3358 = !DILocalVariable(name: "argsize", arg: 2, scope: !3353, file: !256, line: 799, type: !62)
!3359 = !DILocalVariable(name: "o", arg: 3, scope: !3353, file: !256, line: 800, type: !2521)
!3360 = !DILocation(line: 0, scope: !3353)
!3361 = !DILocalVariable(name: "arg", arg: 1, scope: !3362, file: !256, line: 812, type: !93)
!3362 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !256, file: !256, line: 812, type: !3363, scopeLine: 814, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !255, retainedNodes: !3365)
!3363 = !DISubroutineType(types: !3364)
!3364 = !{!59, !93, !62, !353, !2521}
!3365 = !{!3361, !3366, !3367, !3368, !3369, !3370, !3371, !3372, !3373}
!3366 = !DILocalVariable(name: "argsize", arg: 2, scope: !3362, file: !256, line: 812, type: !62)
!3367 = !DILocalVariable(name: "size", arg: 3, scope: !3362, file: !256, line: 812, type: !353)
!3368 = !DILocalVariable(name: "o", arg: 4, scope: !3362, file: !256, line: 813, type: !2521)
!3369 = !DILocalVariable(name: "p", scope: !3362, file: !256, line: 815, type: !2521)
!3370 = !DILocalVariable(name: "e", scope: !3362, file: !256, line: 816, type: !64)
!3371 = !DILocalVariable(name: "flags", scope: !3362, file: !256, line: 818, type: !64)
!3372 = !DILocalVariable(name: "bufsize", scope: !3362, file: !256, line: 819, type: !62)
!3373 = !DILocalVariable(name: "buf", scope: !3362, file: !256, line: 823, type: !59)
!3374 = !DILocation(line: 0, scope: !3362, inlinedAt: !3375)
!3375 = distinct !DILocation(line: 802, column: 10, scope: !3353)
!3376 = !DILocation(line: 815, column: 37, scope: !3362, inlinedAt: !3375)
!3377 = !DILocation(line: 816, column: 11, scope: !3362, inlinedAt: !3375)
!3378 = !DILocation(line: 818, column: 18, scope: !3362, inlinedAt: !3375)
!3379 = !DILocation(line: 818, column: 24, scope: !3362, inlinedAt: !3375)
!3380 = !DILocation(line: 819, column: 69, scope: !3362, inlinedAt: !3375)
!3381 = !DILocation(line: 820, column: 53, scope: !3362, inlinedAt: !3375)
!3382 = !DILocation(line: 821, column: 49, scope: !3362, inlinedAt: !3375)
!3383 = !DILocation(line: 822, column: 49, scope: !3362, inlinedAt: !3375)
!3384 = !DILocation(line: 819, column: 20, scope: !3362, inlinedAt: !3375)
!3385 = !DILocation(line: 822, column: 62, scope: !3362, inlinedAt: !3375)
!3386 = !DILocalVariable(name: "n", arg: 1, scope: !3387, file: !349, line: 216, type: !62)
!3387 = distinct !DISubprogram(name: "xcharalloc", scope: !349, file: !349, line: 216, type: !3388, scopeLine: 217, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !255, retainedNodes: !3390)
!3388 = !DISubroutineType(types: !3389)
!3389 = !{!59, !62}
!3390 = !{!3386}
!3391 = !DILocation(line: 0, scope: !3387, inlinedAt: !3392)
!3392 = distinct !DILocation(line: 823, column: 15, scope: !3362, inlinedAt: !3375)
!3393 = !DILocation(line: 218, column: 10, scope: !3387, inlinedAt: !3392)
!3394 = !DILocation(line: 824, column: 60, scope: !3362, inlinedAt: !3375)
!3395 = !DILocation(line: 826, column: 32, scope: !3362, inlinedAt: !3375)
!3396 = !DILocation(line: 826, column: 47, scope: !3362, inlinedAt: !3375)
!3397 = !DILocation(line: 824, column: 3, scope: !3362, inlinedAt: !3375)
!3398 = !DILocation(line: 827, column: 9, scope: !3362, inlinedAt: !3375)
!3399 = !DILocation(line: 802, column: 3, scope: !3353)
!3400 = !DILocation(line: 0, scope: !3362)
!3401 = !DILocation(line: 815, column: 37, scope: !3362)
!3402 = !DILocation(line: 816, column: 11, scope: !3362)
!3403 = !DILocation(line: 818, column: 18, scope: !3362)
!3404 = !DILocation(line: 818, column: 27, scope: !3362)
!3405 = !DILocation(line: 818, column: 24, scope: !3362)
!3406 = !DILocation(line: 819, column: 69, scope: !3362)
!3407 = !DILocation(line: 820, column: 53, scope: !3362)
!3408 = !DILocation(line: 821, column: 49, scope: !3362)
!3409 = !DILocation(line: 822, column: 49, scope: !3362)
!3410 = !DILocation(line: 819, column: 20, scope: !3362)
!3411 = !DILocation(line: 822, column: 62, scope: !3362)
!3412 = !DILocation(line: 0, scope: !3387, inlinedAt: !3413)
!3413 = distinct !DILocation(line: 823, column: 15, scope: !3362)
!3414 = !DILocation(line: 218, column: 10, scope: !3387, inlinedAt: !3413)
!3415 = !DILocation(line: 824, column: 60, scope: !3362)
!3416 = !DILocation(line: 826, column: 32, scope: !3362)
!3417 = !DILocation(line: 826, column: 47, scope: !3362)
!3418 = !DILocation(line: 824, column: 3, scope: !3362)
!3419 = !DILocation(line: 827, column: 9, scope: !3362)
!3420 = !DILocation(line: 828, column: 7, scope: !3362)
!3421 = !DILocation(line: 829, column: 11, scope: !3422)
!3422 = distinct !DILexicalBlock(scope: !3362, file: !256, line: 828, column: 7)
!3423 = !DILocation(line: 829, column: 5, scope: !3422)
!3424 = !DILocation(line: 830, column: 3, scope: !3362)
!3425 = distinct !DISubprogram(name: "quotearg_free", scope: !256, file: !256, line: 848, type: !795, scopeLine: 849, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !255, retainedNodes: !3426)
!3426 = !{!3427, !3428}
!3427 = !DILocalVariable(name: "sv", scope: !3425, file: !256, line: 850, type: !292)
!3428 = !DILocalVariable(name: "i", scope: !3425, file: !256, line: 851, type: !64)
!3429 = !DILocation(line: 850, column: 24, scope: !3425)
!3430 = !DILocation(line: 0, scope: !3425)
!3431 = !DILocation(line: 852, column: 19, scope: !3432)
!3432 = distinct !DILexicalBlock(scope: !3433, file: !256, line: 852, column: 3)
!3433 = distinct !DILexicalBlock(scope: !3425, file: !256, line: 852, column: 3)
!3434 = !DILocation(line: 852, column: 17, scope: !3432)
!3435 = !DILocation(line: 852, column: 3, scope: !3433)
!3436 = !DILocation(line: 853, column: 17, scope: !3432)
!3437 = !{!3438, !788, i64 8}
!3438 = !{!"slotvec", !1061, i64 0, !788, i64 8}
!3439 = !DILocation(line: 853, column: 5, scope: !3432)
!3440 = !DILocation(line: 852, column: 28, scope: !3432)
!3441 = distinct !{!3441, !3435, !3442, !841}
!3442 = !DILocation(line: 853, column: 20, scope: !3433)
!3443 = !DILocation(line: 854, column: 13, scope: !3444)
!3444 = distinct !DILexicalBlock(scope: !3425, file: !256, line: 854, column: 7)
!3445 = !DILocation(line: 854, column: 17, scope: !3444)
!3446 = !DILocation(line: 854, column: 7, scope: !3425)
!3447 = !DILocation(line: 856, column: 7, scope: !3448)
!3448 = distinct !DILexicalBlock(scope: !3444, file: !256, line: 855, column: 5)
!3449 = !DILocation(line: 857, column: 21, scope: !3448)
!3450 = !{!3438, !1061, i64 0}
!3451 = !DILocation(line: 858, column: 20, scope: !3448)
!3452 = !DILocation(line: 859, column: 5, scope: !3448)
!3453 = !DILocation(line: 860, column: 10, scope: !3454)
!3454 = distinct !DILexicalBlock(scope: !3425, file: !256, line: 860, column: 7)
!3455 = !DILocation(line: 860, column: 7, scope: !3425)
!3456 = !DILocation(line: 862, column: 13, scope: !3457)
!3457 = distinct !DILexicalBlock(scope: !3454, file: !256, line: 861, column: 5)
!3458 = !DILocation(line: 862, column: 7, scope: !3457)
!3459 = !DILocation(line: 863, column: 15, scope: !3457)
!3460 = !DILocation(line: 864, column: 5, scope: !3457)
!3461 = !DILocation(line: 865, column: 10, scope: !3425)
!3462 = !DILocation(line: 866, column: 1, scope: !3425)
!3463 = distinct !DISubprogram(name: "quotearg_n", scope: !256, file: !256, line: 931, type: !871, scopeLine: 932, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !255, retainedNodes: !3464)
!3464 = !{!3465, !3466}
!3465 = !DILocalVariable(name: "n", arg: 1, scope: !3463, file: !256, line: 931, type: !64)
!3466 = !DILocalVariable(name: "arg", arg: 2, scope: !3463, file: !256, line: 931, type: !93)
!3467 = !DILocation(line: 0, scope: !3463)
!3468 = !DILocation(line: 933, column: 10, scope: !3463)
!3469 = !DILocation(line: 933, column: 3, scope: !3463)
!3470 = distinct !DISubprogram(name: "quotearg_n_options", scope: !256, file: !256, line: 877, type: !3471, scopeLine: 879, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !255, retainedNodes: !3473)
!3471 = !DISubroutineType(types: !3472)
!3472 = !{!59, !64, !93, !62, !2521}
!3473 = !{!3474, !3475, !3476, !3477, !3478, !3479, !3480, !3483, !3484, !3486, !3487, !3488}
!3474 = !DILocalVariable(name: "n", arg: 1, scope: !3470, file: !256, line: 877, type: !64)
!3475 = !DILocalVariable(name: "arg", arg: 2, scope: !3470, file: !256, line: 877, type: !93)
!3476 = !DILocalVariable(name: "argsize", arg: 3, scope: !3470, file: !256, line: 877, type: !62)
!3477 = !DILocalVariable(name: "options", arg: 4, scope: !3470, file: !256, line: 878, type: !2521)
!3478 = !DILocalVariable(name: "e", scope: !3470, file: !256, line: 880, type: !64)
!3479 = !DILocalVariable(name: "sv", scope: !3470, file: !256, line: 882, type: !292)
!3480 = !DILocalVariable(name: "preallocated", scope: !3481, file: !256, line: 889, type: !71)
!3481 = distinct !DILexicalBlock(scope: !3482, file: !256, line: 888, column: 5)
!3482 = distinct !DILexicalBlock(scope: !3470, file: !256, line: 887, column: 7)
!3483 = !DILocalVariable(name: "nmax", scope: !3481, file: !256, line: 890, type: !64)
!3484 = !DILocalVariable(name: "size", scope: !3485, file: !256, line: 903, type: !62)
!3485 = distinct !DILexicalBlock(scope: !3470, file: !256, line: 902, column: 3)
!3486 = !DILocalVariable(name: "val", scope: !3485, file: !256, line: 904, type: !59)
!3487 = !DILocalVariable(name: "flags", scope: !3485, file: !256, line: 906, type: !64)
!3488 = !DILocalVariable(name: "qsize", scope: !3485, file: !256, line: 907, type: !62)
!3489 = !DILocation(line: 0, scope: !3470)
!3490 = !DILocation(line: 880, column: 11, scope: !3470)
!3491 = !DILocation(line: 882, column: 24, scope: !3470)
!3492 = !DILocation(line: 884, column: 9, scope: !3493)
!3493 = distinct !DILexicalBlock(scope: !3470, file: !256, line: 884, column: 7)
!3494 = !DILocation(line: 884, column: 7, scope: !3470)
!3495 = !DILocation(line: 885, column: 5, scope: !3493)
!3496 = !DILocation(line: 887, column: 7, scope: !3482)
!3497 = !DILocation(line: 887, column: 14, scope: !3482)
!3498 = !DILocation(line: 887, column: 7, scope: !3470)
!3499 = !DILocation(line: 889, column: 31, scope: !3481)
!3500 = !DILocation(line: 0, scope: !3481)
!3501 = !DILocation(line: 892, column: 16, scope: !3502)
!3502 = distinct !DILexicalBlock(scope: !3481, file: !256, line: 892, column: 11)
!3503 = !DILocation(line: 892, column: 11, scope: !3481)
!3504 = !DILocation(line: 893, column: 9, scope: !3502)
!3505 = !DILocation(line: 895, column: 32, scope: !3481)
!3506 = !DILocation(line: 895, column: 61, scope: !3481)
!3507 = !DILocation(line: 895, column: 66, scope: !3481)
!3508 = !DILocation(line: 895, column: 22, scope: !3481)
!3509 = !DILocation(line: 895, column: 15, scope: !3481)
!3510 = !DILocation(line: 896, column: 11, scope: !3481)
!3511 = !DILocation(line: 897, column: 15, scope: !3512)
!3512 = distinct !DILexicalBlock(scope: !3481, file: !256, line: 896, column: 11)
!3513 = !{i64 0, i64 8, !1060, i64 8, i64 8, !787}
!3514 = !DILocation(line: 897, column: 9, scope: !3512)
!3515 = !DILocation(line: 898, column: 20, scope: !3481)
!3516 = !DILocation(line: 898, column: 18, scope: !3481)
!3517 = !DILocation(line: 898, column: 15, scope: !3481)
!3518 = !DILocation(line: 898, column: 38, scope: !3481)
!3519 = !DILocation(line: 898, column: 31, scope: !3481)
!3520 = !DILocation(line: 898, column: 48, scope: !3481)
!3521 = !DILocation(line: 0, scope: !2915, inlinedAt: !3522)
!3522 = distinct !DILocation(line: 898, column: 7, scope: !3481)
!3523 = !DILocation(line: 59, column: 10, scope: !2915, inlinedAt: !3522)
!3524 = !DILocation(line: 899, column: 14, scope: !3481)
!3525 = !DILocation(line: 900, column: 5, scope: !3481)
!3526 = !DILocation(line: 903, column: 19, scope: !3485)
!3527 = !DILocation(line: 903, column: 25, scope: !3485)
!3528 = !DILocation(line: 0, scope: !3485)
!3529 = !DILocation(line: 904, column: 23, scope: !3485)
!3530 = !DILocation(line: 906, column: 26, scope: !3485)
!3531 = !DILocation(line: 906, column: 32, scope: !3485)
!3532 = !DILocation(line: 908, column: 55, scope: !3485)
!3533 = !DILocation(line: 909, column: 46, scope: !3485)
!3534 = !DILocation(line: 910, column: 55, scope: !3485)
!3535 = !DILocation(line: 911, column: 55, scope: !3485)
!3536 = !DILocation(line: 907, column: 20, scope: !3485)
!3537 = !DILocation(line: 913, column: 14, scope: !3538)
!3538 = distinct !DILexicalBlock(scope: !3485, file: !256, line: 913, column: 9)
!3539 = !DILocation(line: 913, column: 9, scope: !3485)
!3540 = !DILocation(line: 915, column: 35, scope: !3541)
!3541 = distinct !DILexicalBlock(scope: !3538, file: !256, line: 914, column: 7)
!3542 = !DILocation(line: 915, column: 20, scope: !3541)
!3543 = !DILocation(line: 916, column: 17, scope: !3544)
!3544 = distinct !DILexicalBlock(scope: !3541, file: !256, line: 916, column: 13)
!3545 = !DILocation(line: 916, column: 13, scope: !3541)
!3546 = !DILocation(line: 917, column: 11, scope: !3544)
!3547 = !DILocation(line: 0, scope: !3387, inlinedAt: !3548)
!3548 = distinct !DILocation(line: 918, column: 27, scope: !3541)
!3549 = !DILocation(line: 218, column: 10, scope: !3387, inlinedAt: !3548)
!3550 = !DILocation(line: 918, column: 19, scope: !3541)
!3551 = !DILocation(line: 919, column: 69, scope: !3541)
!3552 = !DILocation(line: 921, column: 44, scope: !3541)
!3553 = !DILocation(line: 922, column: 44, scope: !3541)
!3554 = !DILocation(line: 919, column: 9, scope: !3541)
!3555 = !DILocation(line: 923, column: 7, scope: !3541)
!3556 = !DILocation(line: 925, column: 11, scope: !3485)
!3557 = !DILocation(line: 926, column: 5, scope: !3485)
!3558 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !256, file: !256, line: 937, type: !3559, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !255, retainedNodes: !3561)
!3559 = !DISubroutineType(types: !3560)
!3560 = !{!59, !64, !93, !62}
!3561 = !{!3562, !3563, !3564}
!3562 = !DILocalVariable(name: "n", arg: 1, scope: !3558, file: !256, line: 937, type: !64)
!3563 = !DILocalVariable(name: "arg", arg: 2, scope: !3558, file: !256, line: 937, type: !93)
!3564 = !DILocalVariable(name: "argsize", arg: 3, scope: !3558, file: !256, line: 937, type: !62)
!3565 = !DILocation(line: 0, scope: !3558)
!3566 = !DILocation(line: 939, column: 10, scope: !3558)
!3567 = !DILocation(line: 939, column: 3, scope: !3558)
!3568 = distinct !DISubprogram(name: "quotearg", scope: !256, file: !256, line: 943, type: !1568, scopeLine: 944, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !255, retainedNodes: !3569)
!3569 = !{!3570}
!3570 = !DILocalVariable(name: "arg", arg: 1, scope: !3568, file: !256, line: 943, type: !93)
!3571 = !DILocation(line: 0, scope: !3568)
!3572 = !DILocation(line: 0, scope: !3463, inlinedAt: !3573)
!3573 = distinct !DILocation(line: 945, column: 10, scope: !3568)
!3574 = !DILocation(line: 933, column: 10, scope: !3463, inlinedAt: !3573)
!3575 = !DILocation(line: 945, column: 3, scope: !3568)
!3576 = distinct !DISubprogram(name: "quotearg_mem", scope: !256, file: !256, line: 949, type: !3577, scopeLine: 950, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !255, retainedNodes: !3579)
!3577 = !DISubroutineType(types: !3578)
!3578 = !{!59, !93, !62}
!3579 = !{!3580, !3581}
!3580 = !DILocalVariable(name: "arg", arg: 1, scope: !3576, file: !256, line: 949, type: !93)
!3581 = !DILocalVariable(name: "argsize", arg: 2, scope: !3576, file: !256, line: 949, type: !62)
!3582 = !DILocation(line: 0, scope: !3576)
!3583 = !DILocation(line: 0, scope: !3558, inlinedAt: !3584)
!3584 = distinct !DILocation(line: 951, column: 10, scope: !3576)
!3585 = !DILocation(line: 939, column: 10, scope: !3558, inlinedAt: !3584)
!3586 = !DILocation(line: 951, column: 3, scope: !3576)
!3587 = distinct !DISubprogram(name: "quotearg_n_style", scope: !256, file: !256, line: 955, type: !3588, scopeLine: 956, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !255, retainedNodes: !3590)
!3588 = !DISubroutineType(types: !3589)
!3589 = !{!59, !64, !5, !93}
!3590 = !{!3591, !3592, !3593, !3594}
!3591 = !DILocalVariable(name: "n", arg: 1, scope: !3587, file: !256, line: 955, type: !64)
!3592 = !DILocalVariable(name: "s", arg: 2, scope: !3587, file: !256, line: 955, type: !5)
!3593 = !DILocalVariable(name: "arg", arg: 3, scope: !3587, file: !256, line: 955, type: !93)
!3594 = !DILocalVariable(name: "o", scope: !3587, file: !256, line: 957, type: !2522)
!3595 = !DILocation(line: 0, scope: !3587)
!3596 = !DILocation(line: 957, column: 3, scope: !3587)
!3597 = !DILocation(line: 957, column: 32, scope: !3587)
!3598 = !{!3599}
!3599 = distinct !{!3599, !3600, !"quoting_options_from_style: argument 0"}
!3600 = distinct !{!3600, !"quoting_options_from_style"}
!3601 = !DILocation(line: 957, column: 36, scope: !3587)
!3602 = !DILocalVariable(name: "style", arg: 1, scope: !3603, file: !256, line: 193, type: !5)
!3603 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !256, file: !256, line: 193, type: !3604, scopeLine: 194, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !255, retainedNodes: !3606)
!3604 = !DISubroutineType(types: !3605)
!3605 = !{!273, !5}
!3606 = !{!3602, !3607}
!3607 = !DILocalVariable(name: "o", scope: !3603, file: !256, line: 195, type: !273)
!3608 = !DILocation(line: 0, scope: !3603, inlinedAt: !3609)
!3609 = distinct !DILocation(line: 957, column: 36, scope: !3587)
!3610 = !DILocation(line: 195, column: 26, scope: !3603, inlinedAt: !3609)
!3611 = !DILocation(line: 196, column: 13, scope: !3612, inlinedAt: !3609)
!3612 = distinct !DILexicalBlock(scope: !3603, file: !256, line: 196, column: 7)
!3613 = !DILocation(line: 196, column: 7, scope: !3603, inlinedAt: !3609)
!3614 = !DILocation(line: 197, column: 5, scope: !3612, inlinedAt: !3609)
!3615 = !DILocation(line: 198, column: 5, scope: !3603, inlinedAt: !3609)
!3616 = !DILocation(line: 198, column: 11, scope: !3603, inlinedAt: !3609)
!3617 = !DILocation(line: 958, column: 10, scope: !3587)
!3618 = !DILocation(line: 959, column: 1, scope: !3587)
!3619 = !DILocation(line: 958, column: 3, scope: !3587)
!3620 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !256, file: !256, line: 962, type: !3621, scopeLine: 964, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !255, retainedNodes: !3623)
!3621 = !DISubroutineType(types: !3622)
!3622 = !{!59, !64, !5, !93, !62}
!3623 = !{!3624, !3625, !3626, !3627, !3628}
!3624 = !DILocalVariable(name: "n", arg: 1, scope: !3620, file: !256, line: 962, type: !64)
!3625 = !DILocalVariable(name: "s", arg: 2, scope: !3620, file: !256, line: 962, type: !5)
!3626 = !DILocalVariable(name: "arg", arg: 3, scope: !3620, file: !256, line: 963, type: !93)
!3627 = !DILocalVariable(name: "argsize", arg: 4, scope: !3620, file: !256, line: 963, type: !62)
!3628 = !DILocalVariable(name: "o", scope: !3620, file: !256, line: 965, type: !2522)
!3629 = !DILocation(line: 0, scope: !3620)
!3630 = !DILocation(line: 965, column: 3, scope: !3620)
!3631 = !DILocation(line: 965, column: 32, scope: !3620)
!3632 = !{!3633}
!3633 = distinct !{!3633, !3634, !"quoting_options_from_style: argument 0"}
!3634 = distinct !{!3634, !"quoting_options_from_style"}
!3635 = !DILocation(line: 965, column: 36, scope: !3620)
!3636 = !DILocation(line: 0, scope: !3603, inlinedAt: !3637)
!3637 = distinct !DILocation(line: 965, column: 36, scope: !3620)
!3638 = !DILocation(line: 195, column: 26, scope: !3603, inlinedAt: !3637)
!3639 = !DILocation(line: 196, column: 13, scope: !3612, inlinedAt: !3637)
!3640 = !DILocation(line: 196, column: 7, scope: !3603, inlinedAt: !3637)
!3641 = !DILocation(line: 197, column: 5, scope: !3612, inlinedAt: !3637)
!3642 = !DILocation(line: 198, column: 5, scope: !3603, inlinedAt: !3637)
!3643 = !DILocation(line: 198, column: 11, scope: !3603, inlinedAt: !3637)
!3644 = !DILocation(line: 966, column: 10, scope: !3620)
!3645 = !DILocation(line: 967, column: 1, scope: !3620)
!3646 = !DILocation(line: 966, column: 3, scope: !3620)
!3647 = distinct !DISubprogram(name: "quotearg_style", scope: !256, file: !256, line: 970, type: !3648, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !255, retainedNodes: !3650)
!3648 = !DISubroutineType(types: !3649)
!3649 = !{!59, !5, !93}
!3650 = !{!3651, !3652}
!3651 = !DILocalVariable(name: "s", arg: 1, scope: !3647, file: !256, line: 970, type: !5)
!3652 = !DILocalVariable(name: "arg", arg: 2, scope: !3647, file: !256, line: 970, type: !93)
!3653 = !DILocation(line: 0, scope: !3647)
!3654 = !DILocation(line: 0, scope: !3587, inlinedAt: !3655)
!3655 = distinct !DILocation(line: 972, column: 10, scope: !3647)
!3656 = !DILocation(line: 957, column: 3, scope: !3587, inlinedAt: !3655)
!3657 = !DILocation(line: 957, column: 32, scope: !3587, inlinedAt: !3655)
!3658 = !{!3659}
!3659 = distinct !{!3659, !3660, !"quoting_options_from_style: argument 0"}
!3660 = distinct !{!3660, !"quoting_options_from_style"}
!3661 = !DILocation(line: 957, column: 36, scope: !3587, inlinedAt: !3655)
!3662 = !DILocation(line: 0, scope: !3603, inlinedAt: !3663)
!3663 = distinct !DILocation(line: 957, column: 36, scope: !3587, inlinedAt: !3655)
!3664 = !DILocation(line: 195, column: 26, scope: !3603, inlinedAt: !3663)
!3665 = !DILocation(line: 196, column: 13, scope: !3612, inlinedAt: !3663)
!3666 = !DILocation(line: 196, column: 7, scope: !3603, inlinedAt: !3663)
!3667 = !DILocation(line: 197, column: 5, scope: !3612, inlinedAt: !3663)
!3668 = !DILocation(line: 198, column: 5, scope: !3603, inlinedAt: !3663)
!3669 = !DILocation(line: 198, column: 11, scope: !3603, inlinedAt: !3663)
!3670 = !DILocation(line: 958, column: 10, scope: !3587, inlinedAt: !3655)
!3671 = !DILocation(line: 959, column: 1, scope: !3587, inlinedAt: !3655)
!3672 = !DILocation(line: 972, column: 3, scope: !3647)
!3673 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !256, file: !256, line: 976, type: !3674, scopeLine: 977, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !255, retainedNodes: !3676)
!3674 = !DISubroutineType(types: !3675)
!3675 = !{!59, !5, !93, !62}
!3676 = !{!3677, !3678, !3679}
!3677 = !DILocalVariable(name: "s", arg: 1, scope: !3673, file: !256, line: 976, type: !5)
!3678 = !DILocalVariable(name: "arg", arg: 2, scope: !3673, file: !256, line: 976, type: !93)
!3679 = !DILocalVariable(name: "argsize", arg: 3, scope: !3673, file: !256, line: 976, type: !62)
!3680 = !DILocation(line: 0, scope: !3673)
!3681 = !DILocation(line: 0, scope: !3620, inlinedAt: !3682)
!3682 = distinct !DILocation(line: 978, column: 10, scope: !3673)
!3683 = !DILocation(line: 965, column: 3, scope: !3620, inlinedAt: !3682)
!3684 = !DILocation(line: 965, column: 32, scope: !3620, inlinedAt: !3682)
!3685 = !{!3686}
!3686 = distinct !{!3686, !3687, !"quoting_options_from_style: argument 0"}
!3687 = distinct !{!3687, !"quoting_options_from_style"}
!3688 = !DILocation(line: 965, column: 36, scope: !3620, inlinedAt: !3682)
!3689 = !DILocation(line: 0, scope: !3603, inlinedAt: !3690)
!3690 = distinct !DILocation(line: 965, column: 36, scope: !3620, inlinedAt: !3682)
!3691 = !DILocation(line: 195, column: 26, scope: !3603, inlinedAt: !3690)
!3692 = !DILocation(line: 196, column: 13, scope: !3612, inlinedAt: !3690)
!3693 = !DILocation(line: 196, column: 7, scope: !3603, inlinedAt: !3690)
!3694 = !DILocation(line: 197, column: 5, scope: !3612, inlinedAt: !3690)
!3695 = !DILocation(line: 198, column: 5, scope: !3603, inlinedAt: !3690)
!3696 = !DILocation(line: 198, column: 11, scope: !3603, inlinedAt: !3690)
!3697 = !DILocation(line: 966, column: 10, scope: !3620, inlinedAt: !3682)
!3698 = !DILocation(line: 967, column: 1, scope: !3620, inlinedAt: !3682)
!3699 = !DILocation(line: 978, column: 3, scope: !3673)
!3700 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !256, file: !256, line: 982, type: !3701, scopeLine: 983, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !255, retainedNodes: !3703)
!3701 = !DISubroutineType(types: !3702)
!3702 = !{!59, !93, !62, !60}
!3703 = !{!3704, !3705, !3706, !3707}
!3704 = !DILocalVariable(name: "arg", arg: 1, scope: !3700, file: !256, line: 982, type: !93)
!3705 = !DILocalVariable(name: "argsize", arg: 2, scope: !3700, file: !256, line: 982, type: !62)
!3706 = !DILocalVariable(name: "ch", arg: 3, scope: !3700, file: !256, line: 982, type: !60)
!3707 = !DILocalVariable(name: "options", scope: !3700, file: !256, line: 984, type: !273)
!3708 = !DILocation(line: 0, scope: !3700)
!3709 = !DILocation(line: 984, column: 3, scope: !3700)
!3710 = !DILocation(line: 984, column: 26, scope: !3700)
!3711 = !DILocation(line: 985, column: 13, scope: !3700)
!3712 = !{i64 0, i64 4, !1091, i64 4, i64 4, !1016, i64 8, i64 32, !1091, i64 40, i64 8, !787, i64 48, i64 8, !787}
!3713 = !DILocation(line: 0, scope: !2542, inlinedAt: !3714)
!3714 = distinct !DILocation(line: 986, column: 3, scope: !3700)
!3715 = !DILocation(line: 156, column: 62, scope: !2542, inlinedAt: !3714)
!3716 = !DILocation(line: 156, column: 57, scope: !2542, inlinedAt: !3714)
!3717 = !DILocation(line: 157, column: 15, scope: !2542, inlinedAt: !3714)
!3718 = !DILocation(line: 158, column: 12, scope: !2542, inlinedAt: !3714)
!3719 = !DILocation(line: 158, column: 15, scope: !2542, inlinedAt: !3714)
!3720 = !DILocation(line: 158, column: 25, scope: !2542, inlinedAt: !3714)
!3721 = !DILocation(line: 159, column: 18, scope: !2542, inlinedAt: !3714)
!3722 = !DILocation(line: 159, column: 23, scope: !2542, inlinedAt: !3714)
!3723 = !DILocation(line: 159, column: 6, scope: !2542, inlinedAt: !3714)
!3724 = !DILocation(line: 987, column: 10, scope: !3700)
!3725 = !DILocation(line: 988, column: 1, scope: !3700)
!3726 = !DILocation(line: 987, column: 3, scope: !3700)
!3727 = distinct !DISubprogram(name: "quotearg_char", scope: !256, file: !256, line: 991, type: !3728, scopeLine: 992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !255, retainedNodes: !3730)
!3728 = !DISubroutineType(types: !3729)
!3729 = !{!59, !93, !60}
!3730 = !{!3731, !3732}
!3731 = !DILocalVariable(name: "arg", arg: 1, scope: !3727, file: !256, line: 991, type: !93)
!3732 = !DILocalVariable(name: "ch", arg: 2, scope: !3727, file: !256, line: 991, type: !60)
!3733 = !DILocation(line: 0, scope: !3727)
!3734 = !DILocation(line: 0, scope: !3700, inlinedAt: !3735)
!3735 = distinct !DILocation(line: 993, column: 10, scope: !3727)
!3736 = !DILocation(line: 984, column: 3, scope: !3700, inlinedAt: !3735)
!3737 = !DILocation(line: 984, column: 26, scope: !3700, inlinedAt: !3735)
!3738 = !DILocation(line: 985, column: 13, scope: !3700, inlinedAt: !3735)
!3739 = !DILocation(line: 0, scope: !2542, inlinedAt: !3740)
!3740 = distinct !DILocation(line: 986, column: 3, scope: !3700, inlinedAt: !3735)
!3741 = !DILocation(line: 156, column: 62, scope: !2542, inlinedAt: !3740)
!3742 = !DILocation(line: 156, column: 57, scope: !2542, inlinedAt: !3740)
!3743 = !DILocation(line: 157, column: 15, scope: !2542, inlinedAt: !3740)
!3744 = !DILocation(line: 158, column: 12, scope: !2542, inlinedAt: !3740)
!3745 = !DILocation(line: 158, column: 15, scope: !2542, inlinedAt: !3740)
!3746 = !DILocation(line: 158, column: 25, scope: !2542, inlinedAt: !3740)
!3747 = !DILocation(line: 159, column: 18, scope: !2542, inlinedAt: !3740)
!3748 = !DILocation(line: 159, column: 23, scope: !2542, inlinedAt: !3740)
!3749 = !DILocation(line: 159, column: 6, scope: !2542, inlinedAt: !3740)
!3750 = !DILocation(line: 987, column: 10, scope: !3700, inlinedAt: !3735)
!3751 = !DILocation(line: 988, column: 1, scope: !3700, inlinedAt: !3735)
!3752 = !DILocation(line: 993, column: 3, scope: !3727)
!3753 = distinct !DISubprogram(name: "quotearg_colon", scope: !256, file: !256, line: 997, type: !1568, scopeLine: 998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !255, retainedNodes: !3754)
!3754 = !{!3755}
!3755 = !DILocalVariable(name: "arg", arg: 1, scope: !3753, file: !256, line: 997, type: !93)
!3756 = !DILocation(line: 0, scope: !3753)
!3757 = !DILocation(line: 0, scope: !3727, inlinedAt: !3758)
!3758 = distinct !DILocation(line: 999, column: 10, scope: !3753)
!3759 = !DILocation(line: 0, scope: !3700, inlinedAt: !3760)
!3760 = distinct !DILocation(line: 993, column: 10, scope: !3727, inlinedAt: !3758)
!3761 = !DILocation(line: 984, column: 3, scope: !3700, inlinedAt: !3760)
!3762 = !DILocation(line: 984, column: 26, scope: !3700, inlinedAt: !3760)
!3763 = !DILocation(line: 985, column: 13, scope: !3700, inlinedAt: !3760)
!3764 = !DILocation(line: 0, scope: !2542, inlinedAt: !3765)
!3765 = distinct !DILocation(line: 986, column: 3, scope: !3700, inlinedAt: !3760)
!3766 = !DILocation(line: 156, column: 57, scope: !2542, inlinedAt: !3765)
!3767 = !DILocation(line: 158, column: 12, scope: !2542, inlinedAt: !3765)
!3768 = !DILocation(line: 159, column: 6, scope: !2542, inlinedAt: !3765)
!3769 = !DILocation(line: 987, column: 10, scope: !3700, inlinedAt: !3760)
!3770 = !DILocation(line: 988, column: 1, scope: !3700, inlinedAt: !3760)
!3771 = !DILocation(line: 999, column: 3, scope: !3753)
!3772 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !256, file: !256, line: 1003, type: !3577, scopeLine: 1004, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !255, retainedNodes: !3773)
!3773 = !{!3774, !3775}
!3774 = !DILocalVariable(name: "arg", arg: 1, scope: !3772, file: !256, line: 1003, type: !93)
!3775 = !DILocalVariable(name: "argsize", arg: 2, scope: !3772, file: !256, line: 1003, type: !62)
!3776 = !DILocation(line: 0, scope: !3772)
!3777 = !DILocation(line: 0, scope: !3700, inlinedAt: !3778)
!3778 = distinct !DILocation(line: 1005, column: 10, scope: !3772)
!3779 = !DILocation(line: 984, column: 3, scope: !3700, inlinedAt: !3778)
!3780 = !DILocation(line: 984, column: 26, scope: !3700, inlinedAt: !3778)
!3781 = !DILocation(line: 985, column: 13, scope: !3700, inlinedAt: !3778)
!3782 = !DILocation(line: 0, scope: !2542, inlinedAt: !3783)
!3783 = distinct !DILocation(line: 986, column: 3, scope: !3700, inlinedAt: !3778)
!3784 = !DILocation(line: 156, column: 57, scope: !2542, inlinedAt: !3783)
!3785 = !DILocation(line: 158, column: 12, scope: !2542, inlinedAt: !3783)
!3786 = !DILocation(line: 159, column: 6, scope: !2542, inlinedAt: !3783)
!3787 = !DILocation(line: 987, column: 10, scope: !3700, inlinedAt: !3778)
!3788 = !DILocation(line: 988, column: 1, scope: !3700, inlinedAt: !3778)
!3789 = !DILocation(line: 1005, column: 3, scope: !3772)
!3790 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !256, file: !256, line: 1009, type: !3588, scopeLine: 1010, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !255, retainedNodes: !3791)
!3791 = !{!3792, !3793, !3794, !3795}
!3792 = !DILocalVariable(name: "n", arg: 1, scope: !3790, file: !256, line: 1009, type: !64)
!3793 = !DILocalVariable(name: "s", arg: 2, scope: !3790, file: !256, line: 1009, type: !5)
!3794 = !DILocalVariable(name: "arg", arg: 3, scope: !3790, file: !256, line: 1009, type: !93)
!3795 = !DILocalVariable(name: "options", scope: !3790, file: !256, line: 1011, type: !273)
!3796 = !DILocation(line: 195, column: 26, scope: !3603, inlinedAt: !3797)
!3797 = distinct !DILocation(line: 1012, column: 13, scope: !3790)
!3798 = !DILocation(line: 0, scope: !3790)
!3799 = !DILocation(line: 1011, column: 3, scope: !3790)
!3800 = !DILocation(line: 1011, column: 26, scope: !3790)
!3801 = !DILocation(line: 1012, column: 13, scope: !3790)
!3802 = !{!3803}
!3803 = distinct !{!3803, !3804, !"quoting_options_from_style: argument 0"}
!3804 = distinct !{!3804, !"quoting_options_from_style"}
!3805 = !DILocation(line: 0, scope: !3603, inlinedAt: !3797)
!3806 = !DILocation(line: 196, column: 13, scope: !3612, inlinedAt: !3797)
!3807 = !DILocation(line: 196, column: 7, scope: !3603, inlinedAt: !3797)
!3808 = !DILocation(line: 197, column: 5, scope: !3612, inlinedAt: !3797)
!3809 = !{i64 0, i64 4, !1016, i64 4, i64 32, !1091, i64 36, i64 8, !787, i64 44, i64 8, !787}
!3810 = !DILocation(line: 0, scope: !2542, inlinedAt: !3811)
!3811 = distinct !DILocation(line: 1013, column: 3, scope: !3790)
!3812 = !DILocation(line: 156, column: 57, scope: !2542, inlinedAt: !3811)
!3813 = !DILocation(line: 158, column: 12, scope: !2542, inlinedAt: !3811)
!3814 = !DILocation(line: 159, column: 6, scope: !2542, inlinedAt: !3811)
!3815 = !DILocation(line: 1014, column: 10, scope: !3790)
!3816 = !DILocation(line: 1015, column: 1, scope: !3790)
!3817 = !DILocation(line: 1014, column: 3, scope: !3790)
!3818 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !256, file: !256, line: 1018, type: !3819, scopeLine: 1020, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !255, retainedNodes: !3821)
!3819 = !DISubroutineType(types: !3820)
!3820 = !{!59, !64, !93, !93, !93}
!3821 = !{!3822, !3823, !3824, !3825}
!3822 = !DILocalVariable(name: "n", arg: 1, scope: !3818, file: !256, line: 1018, type: !64)
!3823 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3818, file: !256, line: 1018, type: !93)
!3824 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3818, file: !256, line: 1019, type: !93)
!3825 = !DILocalVariable(name: "arg", arg: 4, scope: !3818, file: !256, line: 1019, type: !93)
!3826 = !DILocation(line: 0, scope: !3818)
!3827 = !DILocalVariable(name: "n", arg: 1, scope: !3828, file: !256, line: 1026, type: !64)
!3828 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !256, file: !256, line: 1026, type: !3829, scopeLine: 1029, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !255, retainedNodes: !3831)
!3829 = !DISubroutineType(types: !3830)
!3830 = !{!59, !64, !93, !93, !93, !62}
!3831 = !{!3827, !3832, !3833, !3834, !3835, !3836}
!3832 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3828, file: !256, line: 1026, type: !93)
!3833 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3828, file: !256, line: 1027, type: !93)
!3834 = !DILocalVariable(name: "arg", arg: 4, scope: !3828, file: !256, line: 1028, type: !93)
!3835 = !DILocalVariable(name: "argsize", arg: 5, scope: !3828, file: !256, line: 1028, type: !62)
!3836 = !DILocalVariable(name: "o", scope: !3828, file: !256, line: 1030, type: !273)
!3837 = !DILocation(line: 0, scope: !3828, inlinedAt: !3838)
!3838 = distinct !DILocation(line: 1021, column: 10, scope: !3818)
!3839 = !DILocation(line: 1030, column: 3, scope: !3828, inlinedAt: !3838)
!3840 = !DILocation(line: 1030, column: 26, scope: !3828, inlinedAt: !3838)
!3841 = !DILocation(line: 1030, column: 30, scope: !3828, inlinedAt: !3838)
!3842 = !DILocation(line: 0, scope: !2582, inlinedAt: !3843)
!3843 = distinct !DILocation(line: 1031, column: 3, scope: !3828, inlinedAt: !3838)
!3844 = !DILocation(line: 184, column: 6, scope: !2582, inlinedAt: !3843)
!3845 = !DILocation(line: 184, column: 12, scope: !2582, inlinedAt: !3843)
!3846 = !DILocation(line: 185, column: 8, scope: !2596, inlinedAt: !3843)
!3847 = !DILocation(line: 185, column: 19, scope: !2596, inlinedAt: !3843)
!3848 = !DILocation(line: 186, column: 5, scope: !2596, inlinedAt: !3843)
!3849 = !DILocation(line: 187, column: 6, scope: !2582, inlinedAt: !3843)
!3850 = !DILocation(line: 187, column: 17, scope: !2582, inlinedAt: !3843)
!3851 = !DILocation(line: 188, column: 6, scope: !2582, inlinedAt: !3843)
!3852 = !DILocation(line: 188, column: 18, scope: !2582, inlinedAt: !3843)
!3853 = !DILocation(line: 1032, column: 10, scope: !3828, inlinedAt: !3838)
!3854 = !DILocation(line: 1033, column: 1, scope: !3828, inlinedAt: !3838)
!3855 = !DILocation(line: 1021, column: 3, scope: !3818)
!3856 = !DILocation(line: 0, scope: !3828)
!3857 = !DILocation(line: 1030, column: 3, scope: !3828)
!3858 = !DILocation(line: 1030, column: 26, scope: !3828)
!3859 = !DILocation(line: 1030, column: 30, scope: !3828)
!3860 = !DILocation(line: 0, scope: !2582, inlinedAt: !3861)
!3861 = distinct !DILocation(line: 1031, column: 3, scope: !3828)
!3862 = !DILocation(line: 184, column: 6, scope: !2582, inlinedAt: !3861)
!3863 = !DILocation(line: 184, column: 12, scope: !2582, inlinedAt: !3861)
!3864 = !DILocation(line: 185, column: 8, scope: !2596, inlinedAt: !3861)
!3865 = !DILocation(line: 185, column: 19, scope: !2596, inlinedAt: !3861)
!3866 = !DILocation(line: 186, column: 5, scope: !2596, inlinedAt: !3861)
!3867 = !DILocation(line: 187, column: 6, scope: !2582, inlinedAt: !3861)
!3868 = !DILocation(line: 187, column: 17, scope: !2582, inlinedAt: !3861)
!3869 = !DILocation(line: 188, column: 6, scope: !2582, inlinedAt: !3861)
!3870 = !DILocation(line: 188, column: 18, scope: !2582, inlinedAt: !3861)
!3871 = !DILocation(line: 1032, column: 10, scope: !3828)
!3872 = !DILocation(line: 1033, column: 1, scope: !3828)
!3873 = !DILocation(line: 1032, column: 3, scope: !3828)
!3874 = distinct !DISubprogram(name: "quotearg_custom", scope: !256, file: !256, line: 1036, type: !3875, scopeLine: 1038, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !255, retainedNodes: !3877)
!3875 = !DISubroutineType(types: !3876)
!3876 = !{!59, !93, !93, !93}
!3877 = !{!3878, !3879, !3880}
!3878 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3874, file: !256, line: 1036, type: !93)
!3879 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3874, file: !256, line: 1036, type: !93)
!3880 = !DILocalVariable(name: "arg", arg: 3, scope: !3874, file: !256, line: 1037, type: !93)
!3881 = !DILocation(line: 0, scope: !3874)
!3882 = !DILocation(line: 0, scope: !3818, inlinedAt: !3883)
!3883 = distinct !DILocation(line: 1039, column: 10, scope: !3874)
!3884 = !DILocation(line: 0, scope: !3828, inlinedAt: !3885)
!3885 = distinct !DILocation(line: 1021, column: 10, scope: !3818, inlinedAt: !3883)
!3886 = !DILocation(line: 1030, column: 3, scope: !3828, inlinedAt: !3885)
!3887 = !DILocation(line: 1030, column: 26, scope: !3828, inlinedAt: !3885)
!3888 = !DILocation(line: 1030, column: 30, scope: !3828, inlinedAt: !3885)
!3889 = !DILocation(line: 0, scope: !2582, inlinedAt: !3890)
!3890 = distinct !DILocation(line: 1031, column: 3, scope: !3828, inlinedAt: !3885)
!3891 = !DILocation(line: 184, column: 6, scope: !2582, inlinedAt: !3890)
!3892 = !DILocation(line: 184, column: 12, scope: !2582, inlinedAt: !3890)
!3893 = !DILocation(line: 185, column: 8, scope: !2596, inlinedAt: !3890)
!3894 = !DILocation(line: 185, column: 19, scope: !2596, inlinedAt: !3890)
!3895 = !DILocation(line: 186, column: 5, scope: !2596, inlinedAt: !3890)
!3896 = !DILocation(line: 187, column: 6, scope: !2582, inlinedAt: !3890)
!3897 = !DILocation(line: 187, column: 17, scope: !2582, inlinedAt: !3890)
!3898 = !DILocation(line: 188, column: 6, scope: !2582, inlinedAt: !3890)
!3899 = !DILocation(line: 188, column: 18, scope: !2582, inlinedAt: !3890)
!3900 = !DILocation(line: 1032, column: 10, scope: !3828, inlinedAt: !3885)
!3901 = !DILocation(line: 1033, column: 1, scope: !3828, inlinedAt: !3885)
!3902 = !DILocation(line: 1039, column: 3, scope: !3874)
!3903 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !256, file: !256, line: 1043, type: !3904, scopeLine: 1045, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !255, retainedNodes: !3906)
!3904 = !DISubroutineType(types: !3905)
!3905 = !{!59, !93, !93, !93, !62}
!3906 = !{!3907, !3908, !3909, !3910}
!3907 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3903, file: !256, line: 1043, type: !93)
!3908 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3903, file: !256, line: 1043, type: !93)
!3909 = !DILocalVariable(name: "arg", arg: 3, scope: !3903, file: !256, line: 1044, type: !93)
!3910 = !DILocalVariable(name: "argsize", arg: 4, scope: !3903, file: !256, line: 1044, type: !62)
!3911 = !DILocation(line: 0, scope: !3903)
!3912 = !DILocation(line: 0, scope: !3828, inlinedAt: !3913)
!3913 = distinct !DILocation(line: 1046, column: 10, scope: !3903)
!3914 = !DILocation(line: 1030, column: 3, scope: !3828, inlinedAt: !3913)
!3915 = !DILocation(line: 1030, column: 26, scope: !3828, inlinedAt: !3913)
!3916 = !DILocation(line: 1030, column: 30, scope: !3828, inlinedAt: !3913)
!3917 = !DILocation(line: 0, scope: !2582, inlinedAt: !3918)
!3918 = distinct !DILocation(line: 1031, column: 3, scope: !3828, inlinedAt: !3913)
!3919 = !DILocation(line: 184, column: 6, scope: !2582, inlinedAt: !3918)
!3920 = !DILocation(line: 184, column: 12, scope: !2582, inlinedAt: !3918)
!3921 = !DILocation(line: 185, column: 8, scope: !2596, inlinedAt: !3918)
!3922 = !DILocation(line: 185, column: 19, scope: !2596, inlinedAt: !3918)
!3923 = !DILocation(line: 186, column: 5, scope: !2596, inlinedAt: !3918)
!3924 = !DILocation(line: 187, column: 6, scope: !2582, inlinedAt: !3918)
!3925 = !DILocation(line: 187, column: 17, scope: !2582, inlinedAt: !3918)
!3926 = !DILocation(line: 188, column: 6, scope: !2582, inlinedAt: !3918)
!3927 = !DILocation(line: 188, column: 18, scope: !2582, inlinedAt: !3918)
!3928 = !DILocation(line: 1032, column: 10, scope: !3828, inlinedAt: !3913)
!3929 = !DILocation(line: 1033, column: 1, scope: !3828, inlinedAt: !3913)
!3930 = !DILocation(line: 1046, column: 3, scope: !3903)
!3931 = distinct !DISubprogram(name: "quote_n_mem", scope: !256, file: !256, line: 1061, type: !3932, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !255, retainedNodes: !3934)
!3932 = !DISubroutineType(types: !3933)
!3933 = !{!93, !64, !93, !62}
!3934 = !{!3935, !3936, !3937}
!3935 = !DILocalVariable(name: "n", arg: 1, scope: !3931, file: !256, line: 1061, type: !64)
!3936 = !DILocalVariable(name: "arg", arg: 2, scope: !3931, file: !256, line: 1061, type: !93)
!3937 = !DILocalVariable(name: "argsize", arg: 3, scope: !3931, file: !256, line: 1061, type: !62)
!3938 = !DILocation(line: 0, scope: !3931)
!3939 = !DILocation(line: 1063, column: 10, scope: !3931)
!3940 = !DILocation(line: 1063, column: 3, scope: !3931)
!3941 = distinct !DISubprogram(name: "quote_mem", scope: !256, file: !256, line: 1067, type: !3942, scopeLine: 1068, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !255, retainedNodes: !3944)
!3942 = !DISubroutineType(types: !3943)
!3943 = !{!93, !93, !62}
!3944 = !{!3945, !3946}
!3945 = !DILocalVariable(name: "arg", arg: 1, scope: !3941, file: !256, line: 1067, type: !93)
!3946 = !DILocalVariable(name: "argsize", arg: 2, scope: !3941, file: !256, line: 1067, type: !62)
!3947 = !DILocation(line: 0, scope: !3941)
!3948 = !DILocation(line: 0, scope: !3931, inlinedAt: !3949)
!3949 = distinct !DILocation(line: 1069, column: 10, scope: !3941)
!3950 = !DILocation(line: 1063, column: 10, scope: !3931, inlinedAt: !3949)
!3951 = !DILocation(line: 1069, column: 3, scope: !3941)
!3952 = distinct !DISubprogram(name: "quote_n", scope: !256, file: !256, line: 1073, type: !3953, scopeLine: 1074, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !255, retainedNodes: !3955)
!3953 = !DISubroutineType(types: !3954)
!3954 = !{!93, !64, !93}
!3955 = !{!3956, !3957}
!3956 = !DILocalVariable(name: "n", arg: 1, scope: !3952, file: !256, line: 1073, type: !64)
!3957 = !DILocalVariable(name: "arg", arg: 2, scope: !3952, file: !256, line: 1073, type: !93)
!3958 = !DILocation(line: 0, scope: !3952)
!3959 = !DILocation(line: 0, scope: !3931, inlinedAt: !3960)
!3960 = distinct !DILocation(line: 1075, column: 10, scope: !3952)
!3961 = !DILocation(line: 1063, column: 10, scope: !3931, inlinedAt: !3960)
!3962 = !DILocation(line: 1075, column: 3, scope: !3952)
!3963 = distinct !DISubprogram(name: "quote", scope: !256, file: !256, line: 1079, type: !3964, scopeLine: 1080, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !255, retainedNodes: !3966)
!3964 = !DISubroutineType(types: !3965)
!3965 = !{!93, !93}
!3966 = !{!3967}
!3967 = !DILocalVariable(name: "arg", arg: 1, scope: !3963, file: !256, line: 1079, type: !93)
!3968 = !DILocation(line: 0, scope: !3963)
!3969 = !DILocation(line: 0, scope: !3952, inlinedAt: !3970)
!3970 = distinct !DILocation(line: 1081, column: 10, scope: !3963)
!3971 = !DILocation(line: 0, scope: !3931, inlinedAt: !3972)
!3972 = distinct !DILocation(line: 1075, column: 10, scope: !3952, inlinedAt: !3970)
!3973 = !DILocation(line: 1063, column: 10, scope: !3931, inlinedAt: !3972)
!3974 = !DILocation(line: 1081, column: 3, scope: !3963)
!3975 = distinct !DISubprogram(name: "dup_safer", scope: !337, file: !337, line: 31, type: !1347, scopeLine: 32, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !336, retainedNodes: !3976)
!3976 = !{!3977}
!3977 = !DILocalVariable(name: "fd", arg: 1, scope: !3975, file: !337, line: 31, type: !64)
!3978 = !DILocation(line: 0, scope: !3975)
!3979 = !DILocation(line: 33, column: 10, scope: !3975)
!3980 = !DILocation(line: 33, column: 3, scope: !3975)
!3981 = distinct !DISubprogram(name: "version_etc_arn", scope: !339, file: !339, line: 61, type: !3982, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !338, retainedNodes: !4019)
!3982 = !DISubroutineType(types: !3983)
!3983 = !{null, !3984, !93, !93, !93, !4018, !62}
!3984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3985, size: 64)
!3985 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !100, line: 7, baseType: !3986)
!3986 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !102, line: 49, size: 1728, elements: !3987)
!3987 = !{!3988, !3989, !3990, !3991, !3992, !3993, !3994, !3995, !3996, !3997, !3998, !3999, !4000, !4001, !4003, !4004, !4005, !4006, !4007, !4008, !4009, !4010, !4011, !4012, !4013, !4014, !4015, !4016, !4017}
!3988 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3986, file: !102, line: 51, baseType: !64, size: 32)
!3989 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3986, file: !102, line: 54, baseType: !59, size: 64, offset: 64)
!3990 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3986, file: !102, line: 55, baseType: !59, size: 64, offset: 128)
!3991 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3986, file: !102, line: 56, baseType: !59, size: 64, offset: 192)
!3992 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3986, file: !102, line: 57, baseType: !59, size: 64, offset: 256)
!3993 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3986, file: !102, line: 58, baseType: !59, size: 64, offset: 320)
!3994 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3986, file: !102, line: 59, baseType: !59, size: 64, offset: 384)
!3995 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3986, file: !102, line: 60, baseType: !59, size: 64, offset: 448)
!3996 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3986, file: !102, line: 61, baseType: !59, size: 64, offset: 512)
!3997 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3986, file: !102, line: 64, baseType: !59, size: 64, offset: 576)
!3998 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3986, file: !102, line: 65, baseType: !59, size: 64, offset: 640)
!3999 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3986, file: !102, line: 66, baseType: !59, size: 64, offset: 704)
!4000 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3986, file: !102, line: 68, baseType: !117, size: 64, offset: 768)
!4001 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3986, file: !102, line: 70, baseType: !4002, size: 64, offset: 832)
!4002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3986, size: 64)
!4003 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3986, file: !102, line: 72, baseType: !64, size: 32, offset: 896)
!4004 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3986, file: !102, line: 73, baseType: !64, size: 32, offset: 928)
!4005 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3986, file: !102, line: 74, baseType: !124, size: 64, offset: 960)
!4006 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3986, file: !102, line: 77, baseType: !67, size: 16, offset: 1024)
!4007 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3986, file: !102, line: 78, baseType: !128, size: 8, offset: 1040)
!4008 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3986, file: !102, line: 79, baseType: !130, size: 8, offset: 1048)
!4009 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3986, file: !102, line: 81, baseType: !134, size: 64, offset: 1088)
!4010 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3986, file: !102, line: 89, baseType: !137, size: 64, offset: 1152)
!4011 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3986, file: !102, line: 91, baseType: !139, size: 64, offset: 1216)
!4012 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3986, file: !102, line: 92, baseType: !142, size: 64, offset: 1280)
!4013 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3986, file: !102, line: 93, baseType: !4002, size: 64, offset: 1344)
!4014 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3986, file: !102, line: 94, baseType: !61, size: 64, offset: 1408)
!4015 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3986, file: !102, line: 95, baseType: !62, size: 64, offset: 1472)
!4016 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3986, file: !102, line: 96, baseType: !64, size: 32, offset: 1536)
!4017 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3986, file: !102, line: 98, baseType: !149, size: 160, offset: 1568)
!4018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !302, size: 64)
!4019 = !{!4020, !4021, !4022, !4023, !4024, !4025}
!4020 = !DILocalVariable(name: "stream", arg: 1, scope: !3981, file: !339, line: 61, type: !3984)
!4021 = !DILocalVariable(name: "command_name", arg: 2, scope: !3981, file: !339, line: 62, type: !93)
!4022 = !DILocalVariable(name: "package", arg: 3, scope: !3981, file: !339, line: 62, type: !93)
!4023 = !DILocalVariable(name: "version", arg: 4, scope: !3981, file: !339, line: 63, type: !93)
!4024 = !DILocalVariable(name: "authors", arg: 5, scope: !3981, file: !339, line: 64, type: !4018)
!4025 = !DILocalVariable(name: "n_authors", arg: 6, scope: !3981, file: !339, line: 64, type: !62)
!4026 = !DILocation(line: 0, scope: !3981)
!4027 = !DILocation(line: 66, column: 7, scope: !4028)
!4028 = distinct !DILexicalBlock(scope: !3981, file: !339, line: 66, column: 7)
!4029 = !DILocation(line: 66, column: 7, scope: !3981)
!4030 = !DILocation(line: 67, column: 5, scope: !4028)
!4031 = !DILocation(line: 69, column: 5, scope: !4028)
!4032 = !DILocation(line: 83, column: 3, scope: !3981)
!4033 = !DILocation(line: 85, column: 3, scope: !3981)
!4034 = !DILocation(line: 88, column: 3, scope: !3981)
!4035 = !DILocation(line: 95, column: 3, scope: !3981)
!4036 = !DILocation(line: 97, column: 3, scope: !3981)
!4037 = !DILocation(line: 105, column: 7, scope: !4038)
!4038 = distinct !DILexicalBlock(scope: !3981, file: !339, line: 98, column: 5)
!4039 = !DILocation(line: 106, column: 7, scope: !4038)
!4040 = !DILocation(line: 109, column: 7, scope: !4038)
!4041 = !DILocation(line: 110, column: 7, scope: !4038)
!4042 = !DILocation(line: 113, column: 7, scope: !4038)
!4043 = !DILocation(line: 115, column: 7, scope: !4038)
!4044 = !DILocation(line: 120, column: 7, scope: !4038)
!4045 = !DILocation(line: 122, column: 7, scope: !4038)
!4046 = !DILocation(line: 127, column: 7, scope: !4038)
!4047 = !DILocation(line: 129, column: 7, scope: !4038)
!4048 = !DILocation(line: 134, column: 7, scope: !4038)
!4049 = !DILocation(line: 137, column: 7, scope: !4038)
!4050 = !DILocation(line: 142, column: 7, scope: !4038)
!4051 = !DILocation(line: 145, column: 7, scope: !4038)
!4052 = !DILocation(line: 150, column: 7, scope: !4038)
!4053 = !DILocation(line: 154, column: 7, scope: !4038)
!4054 = !DILocation(line: 159, column: 7, scope: !4038)
!4055 = !DILocation(line: 163, column: 7, scope: !4038)
!4056 = !DILocation(line: 170, column: 7, scope: !4038)
!4057 = !DILocation(line: 174, column: 7, scope: !4038)
!4058 = !DILocation(line: 176, column: 1, scope: !3981)
!4059 = distinct !DISubprogram(name: "version_etc_ar", scope: !339, file: !339, line: 183, type: !4060, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !338, retainedNodes: !4062)
!4060 = !DISubroutineType(types: !4061)
!4061 = !{null, !3984, !93, !93, !93, !4018}
!4062 = !{!4063, !4064, !4065, !4066, !4067, !4068}
!4063 = !DILocalVariable(name: "stream", arg: 1, scope: !4059, file: !339, line: 183, type: !3984)
!4064 = !DILocalVariable(name: "command_name", arg: 2, scope: !4059, file: !339, line: 184, type: !93)
!4065 = !DILocalVariable(name: "package", arg: 3, scope: !4059, file: !339, line: 184, type: !93)
!4066 = !DILocalVariable(name: "version", arg: 4, scope: !4059, file: !339, line: 185, type: !93)
!4067 = !DILocalVariable(name: "authors", arg: 5, scope: !4059, file: !339, line: 185, type: !4018)
!4068 = !DILocalVariable(name: "n_authors", scope: !4059, file: !339, line: 187, type: !62)
!4069 = !DILocation(line: 0, scope: !4059)
!4070 = !DILocation(line: 189, column: 8, scope: !4071)
!4071 = distinct !DILexicalBlock(scope: !4059, file: !339, line: 189, column: 3)
!4072 = !DILocation(line: 0, scope: !4071)
!4073 = !DILocation(line: 189, column: 23, scope: !4074)
!4074 = distinct !DILexicalBlock(scope: !4071, file: !339, line: 189, column: 3)
!4075 = !DILocation(line: 189, column: 3, scope: !4071)
!4076 = !DILocation(line: 189, column: 52, scope: !4074)
!4077 = distinct !{!4077, !4075, !4078, !841}
!4078 = !DILocation(line: 190, column: 5, scope: !4071)
!4079 = !DILocation(line: 191, column: 3, scope: !4059)
!4080 = !DILocation(line: 192, column: 1, scope: !4059)
!4081 = distinct !DISubprogram(name: "version_etc_va", scope: !339, file: !339, line: 199, type: !4082, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !338, retainedNodes: !4091)
!4082 = !DISubroutineType(types: !4083)
!4083 = !{null, !3984, !93, !93, !93, !4084}
!4084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4085, size: 64)
!4085 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !4086)
!4086 = !{!4087, !4088, !4089, !4090}
!4087 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !4085, file: !339, line: 192, baseType: !7, size: 32)
!4088 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !4085, file: !339, line: 192, baseType: !7, size: 32, offset: 32)
!4089 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !4085, file: !339, line: 192, baseType: !61, size: 64, offset: 64)
!4090 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !4085, file: !339, line: 192, baseType: !61, size: 64, offset: 128)
!4091 = !{!4092, !4093, !4094, !4095, !4096, !4097, !4098}
!4092 = !DILocalVariable(name: "stream", arg: 1, scope: !4081, file: !339, line: 199, type: !3984)
!4093 = !DILocalVariable(name: "command_name", arg: 2, scope: !4081, file: !339, line: 200, type: !93)
!4094 = !DILocalVariable(name: "package", arg: 3, scope: !4081, file: !339, line: 200, type: !93)
!4095 = !DILocalVariable(name: "version", arg: 4, scope: !4081, file: !339, line: 201, type: !93)
!4096 = !DILocalVariable(name: "authors", arg: 5, scope: !4081, file: !339, line: 201, type: !4084)
!4097 = !DILocalVariable(name: "n_authors", scope: !4081, file: !339, line: 203, type: !62)
!4098 = !DILocalVariable(name: "authtab", scope: !4081, file: !339, line: 204, type: !4099)
!4099 = !DICompositeType(tag: DW_TAG_array_type, baseType: !93, size: 640, elements: !269)
!4100 = !DILocation(line: 0, scope: !4081)
!4101 = !DILocation(line: 204, column: 3, scope: !4081)
!4102 = !DILocation(line: 204, column: 15, scope: !4081)
!4103 = !DILocation(line: 208, column: 35, scope: !4104)
!4104 = distinct !DILexicalBlock(scope: !4105, file: !339, line: 206, column: 3)
!4105 = distinct !DILexicalBlock(scope: !4081, file: !339, line: 206, column: 3)
!4106 = !DILocation(line: 208, column: 14, scope: !4104)
!4107 = !DILocation(line: 208, column: 33, scope: !4104)
!4108 = !DILocation(line: 208, column: 67, scope: !4104)
!4109 = !DILocation(line: 206, column: 3, scope: !4105)
!4110 = !DILocation(line: 0, scope: !4105)
!4111 = !DILocation(line: 211, column: 3, scope: !4081)
!4112 = !DILocation(line: 213, column: 1, scope: !4081)
!4113 = distinct !DISubprogram(name: "version_etc", scope: !339, file: !339, line: 230, type: !4114, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !338, retainedNodes: !4116)
!4114 = !DISubroutineType(types: !4115)
!4115 = !{null, !3984, !93, !93, !93, null}
!4116 = !{!4117, !4118, !4119, !4120, !4121}
!4117 = !DILocalVariable(name: "stream", arg: 1, scope: !4113, file: !339, line: 230, type: !3984)
!4118 = !DILocalVariable(name: "command_name", arg: 2, scope: !4113, file: !339, line: 231, type: !93)
!4119 = !DILocalVariable(name: "package", arg: 3, scope: !4113, file: !339, line: 231, type: !93)
!4120 = !DILocalVariable(name: "version", arg: 4, scope: !4113, file: !339, line: 232, type: !93)
!4121 = !DILocalVariable(name: "authors", scope: !4113, file: !339, line: 234, type: !4122)
!4122 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !866, line: 52, baseType: !4123)
!4123 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !4124, line: 32, baseType: !4125)
!4124 = !DIFile(filename: "/usr/lib/clang/12.0.1/include/stdarg.h", directory: "")
!4125 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !339, baseType: !4126)
!4126 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4085, size: 192, elements: !131)
!4127 = !DILocation(line: 0, scope: !4113)
!4128 = !DILocation(line: 234, column: 3, scope: !4113)
!4129 = !DILocation(line: 234, column: 11, scope: !4113)
!4130 = !DILocation(line: 236, column: 3, scope: !4113)
!4131 = !DILocation(line: 237, column: 3, scope: !4113)
!4132 = !DILocation(line: 238, column: 3, scope: !4113)
!4133 = !DILocation(line: 239, column: 1, scope: !4113)
!4134 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !339, file: !339, line: 242, type: !795, scopeLine: 243, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !338, retainedNodes: !221)
!4135 = !DILocation(line: 244, column: 3, scope: !4134)
!4136 = !DILocation(line: 249, column: 3, scope: !4134)
!4137 = !DILocation(line: 255, column: 3, scope: !4134)
!4138 = !DILocation(line: 260, column: 3, scope: !4134)
!4139 = !DILocation(line: 262, column: 1, scope: !4134)
!4140 = distinct !DISubprogram(name: "xnmalloc", scope: !349, file: !349, line: 99, type: !4141, scopeLine: 100, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !345, retainedNodes: !4143)
!4141 = !DISubroutineType(types: !4142)
!4142 = !{!61, !62, !62}
!4143 = !{!4144, !4145}
!4144 = !DILocalVariable(name: "n", arg: 1, scope: !4140, file: !349, line: 99, type: !62)
!4145 = !DILocalVariable(name: "s", arg: 2, scope: !4140, file: !349, line: 99, type: !62)
!4146 = !DILocation(line: 0, scope: !4140)
!4147 = !DILocation(line: 101, column: 7, scope: !4148)
!4148 = distinct !DILexicalBlock(scope: !4140, file: !349, line: 101, column: 7)
!4149 = !DILocation(line: 101, column: 7, scope: !4140)
!4150 = !DILocation(line: 102, column: 5, scope: !4148)
!4151 = !DILocation(line: 103, column: 21, scope: !4140)
!4152 = !DILocalVariable(name: "n", arg: 1, scope: !4153, file: !346, line: 39, type: !62)
!4153 = distinct !DISubprogram(name: "xmalloc", scope: !346, file: !346, line: 39, type: !4154, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !345, retainedNodes: !4156)
!4154 = !DISubroutineType(types: !4155)
!4155 = !{!61, !62}
!4156 = !{!4152, !4157}
!4157 = !DILocalVariable(name: "p", scope: !4153, file: !346, line: 41, type: !61)
!4158 = !DILocation(line: 0, scope: !4153, inlinedAt: !4159)
!4159 = distinct !DILocation(line: 103, column: 10, scope: !4140)
!4160 = !DILocation(line: 41, column: 13, scope: !4153, inlinedAt: !4159)
!4161 = !DILocation(line: 42, column: 8, scope: !4162, inlinedAt: !4159)
!4162 = distinct !DILexicalBlock(scope: !4153, file: !346, line: 42, column: 7)
!4163 = !DILocation(line: 42, column: 10, scope: !4162, inlinedAt: !4159)
!4164 = !DILocation(line: 43, column: 5, scope: !4162, inlinedAt: !4159)
!4165 = !DILocation(line: 103, column: 3, scope: !4140)
!4166 = !DILocation(line: 0, scope: !4153)
!4167 = !DILocation(line: 41, column: 13, scope: !4153)
!4168 = !DILocation(line: 42, column: 8, scope: !4162)
!4169 = !DILocation(line: 42, column: 10, scope: !4162)
!4170 = !DILocation(line: 43, column: 5, scope: !4162)
!4171 = !DILocation(line: 44, column: 3, scope: !4153)
!4172 = distinct !DISubprogram(name: "xnrealloc", scope: !349, file: !349, line: 112, type: !4173, scopeLine: 113, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !345, retainedNodes: !4175)
!4173 = !DISubroutineType(types: !4174)
!4174 = !{!61, !61, !62, !62}
!4175 = !{!4176, !4177, !4178}
!4176 = !DILocalVariable(name: "p", arg: 1, scope: !4172, file: !349, line: 112, type: !61)
!4177 = !DILocalVariable(name: "n", arg: 2, scope: !4172, file: !349, line: 112, type: !62)
!4178 = !DILocalVariable(name: "s", arg: 3, scope: !4172, file: !349, line: 112, type: !62)
!4179 = !DILocation(line: 0, scope: !4172)
!4180 = !DILocation(line: 114, column: 7, scope: !4181)
!4181 = distinct !DILexicalBlock(scope: !4172, file: !349, line: 114, column: 7)
!4182 = !DILocation(line: 114, column: 7, scope: !4172)
!4183 = !DILocation(line: 115, column: 5, scope: !4181)
!4184 = !DILocation(line: 116, column: 25, scope: !4172)
!4185 = !DILocalVariable(name: "p", arg: 1, scope: !4186, file: !346, line: 51, type: !61)
!4186 = distinct !DISubprogram(name: "xrealloc", scope: !346, file: !346, line: 51, type: !4187, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !345, retainedNodes: !4189)
!4187 = !DISubroutineType(types: !4188)
!4188 = !{!61, !61, !62}
!4189 = !{!4185, !4190}
!4190 = !DILocalVariable(name: "n", arg: 2, scope: !4186, file: !346, line: 51, type: !62)
!4191 = !DILocation(line: 0, scope: !4186, inlinedAt: !4192)
!4192 = distinct !DILocation(line: 116, column: 10, scope: !4172)
!4193 = !DILocation(line: 53, column: 8, scope: !4194, inlinedAt: !4192)
!4194 = distinct !DILexicalBlock(scope: !4186, file: !346, line: 53, column: 7)
!4195 = !DILocation(line: 53, column: 10, scope: !4194, inlinedAt: !4192)
!4196 = !DILocation(line: 57, column: 7, scope: !4197, inlinedAt: !4192)
!4197 = distinct !DILexicalBlock(scope: !4194, file: !346, line: 54, column: 5)
!4198 = !DILocation(line: 58, column: 7, scope: !4197, inlinedAt: !4192)
!4199 = !DILocation(line: 61, column: 7, scope: !4186, inlinedAt: !4192)
!4200 = !DILocation(line: 62, column: 8, scope: !4201, inlinedAt: !4192)
!4201 = distinct !DILexicalBlock(scope: !4186, file: !346, line: 62, column: 7)
!4202 = !DILocation(line: 62, column: 10, scope: !4201, inlinedAt: !4192)
!4203 = !DILocation(line: 63, column: 5, scope: !4201, inlinedAt: !4192)
!4204 = !DILocation(line: 116, column: 3, scope: !4172)
!4205 = !DILocation(line: 0, scope: !4186)
!4206 = !DILocation(line: 53, column: 8, scope: !4194)
!4207 = !DILocation(line: 53, column: 10, scope: !4194)
!4208 = !DILocation(line: 57, column: 7, scope: !4197)
!4209 = !DILocation(line: 58, column: 7, scope: !4197)
!4210 = !DILocation(line: 61, column: 7, scope: !4186)
!4211 = !DILocation(line: 62, column: 8, scope: !4201)
!4212 = !DILocation(line: 62, column: 10, scope: !4201)
!4213 = !DILocation(line: 63, column: 5, scope: !4201)
!4214 = !DILocation(line: 65, column: 1, scope: !4186)
!4215 = !DILocation(line: 0, scope: !350)
!4216 = !DILocation(line: 176, column: 14, scope: !350)
!4217 = !DILocation(line: 178, column: 9, scope: !4218)
!4218 = distinct !DILexicalBlock(scope: !350, file: !349, line: 178, column: 7)
!4219 = !DILocation(line: 178, column: 7, scope: !350)
!4220 = !DILocation(line: 180, column: 13, scope: !4221)
!4221 = distinct !DILexicalBlock(scope: !4222, file: !349, line: 180, column: 11)
!4222 = distinct !DILexicalBlock(scope: !4218, file: !349, line: 179, column: 5)
!4223 = !DILocation(line: 180, column: 11, scope: !4222)
!4224 = !DILocation(line: 188, column: 30, scope: !4225)
!4225 = distinct !DILexicalBlock(scope: !4221, file: !349, line: 181, column: 9)
!4226 = !DILocation(line: 189, column: 16, scope: !4225)
!4227 = !DILocation(line: 189, column: 13, scope: !4225)
!4228 = !DILocation(line: 190, column: 9, scope: !4225)
!4229 = !DILocation(line: 191, column: 11, scope: !4230)
!4230 = distinct !DILexicalBlock(scope: !4222, file: !349, line: 191, column: 11)
!4231 = !DILocation(line: 191, column: 11, scope: !4222)
!4232 = !DILocation(line: 206, column: 7, scope: !350)
!4233 = !DILocation(line: 207, column: 25, scope: !350)
!4234 = !DILocation(line: 0, scope: !4186, inlinedAt: !4235)
!4235 = distinct !DILocation(line: 207, column: 10, scope: !350)
!4236 = !DILocation(line: 53, column: 10, scope: !4194, inlinedAt: !4235)
!4237 = !DILocation(line: 192, column: 9, scope: !4230)
!4238 = !DILocation(line: 200, column: 69, scope: !4239)
!4239 = distinct !DILexicalBlock(scope: !4240, file: !349, line: 200, column: 11)
!4240 = distinct !DILexicalBlock(scope: !4218, file: !349, line: 195, column: 5)
!4241 = !DILocation(line: 201, column: 11, scope: !4239)
!4242 = !DILocation(line: 200, column: 11, scope: !4240)
!4243 = !DILocation(line: 202, column: 9, scope: !4239)
!4244 = !DILocation(line: 203, column: 14, scope: !4240)
!4245 = !DILocation(line: 203, column: 18, scope: !4240)
!4246 = !DILocation(line: 203, column: 9, scope: !4240)
!4247 = !DILocation(line: 53, column: 8, scope: !4194, inlinedAt: !4235)
!4248 = !DILocation(line: 57, column: 7, scope: !4197, inlinedAt: !4235)
!4249 = !DILocation(line: 58, column: 7, scope: !4197, inlinedAt: !4235)
!4250 = !DILocation(line: 61, column: 7, scope: !4186, inlinedAt: !4235)
!4251 = !DILocation(line: 62, column: 8, scope: !4201, inlinedAt: !4235)
!4252 = !DILocation(line: 62, column: 10, scope: !4201, inlinedAt: !4235)
!4253 = !DILocation(line: 63, column: 5, scope: !4201, inlinedAt: !4235)
!4254 = !DILocation(line: 207, column: 3, scope: !350)
!4255 = distinct !DISubprogram(name: "xcharalloc", scope: !349, file: !349, line: 216, type: !3388, scopeLine: 217, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !345, retainedNodes: !4256)
!4256 = !{!4257}
!4257 = !DILocalVariable(name: "n", arg: 1, scope: !4255, file: !349, line: 216, type: !62)
!4258 = !DILocation(line: 0, scope: !4255)
!4259 = !DILocation(line: 0, scope: !4153, inlinedAt: !4260)
!4260 = distinct !DILocation(line: 218, column: 10, scope: !4255)
!4261 = !DILocation(line: 41, column: 13, scope: !4153, inlinedAt: !4260)
!4262 = !DILocation(line: 42, column: 8, scope: !4162, inlinedAt: !4260)
!4263 = !DILocation(line: 42, column: 10, scope: !4162, inlinedAt: !4260)
!4264 = !DILocation(line: 43, column: 5, scope: !4162, inlinedAt: !4260)
!4265 = !DILocation(line: 218, column: 3, scope: !4255)
!4266 = distinct !DISubprogram(name: "x2realloc", scope: !346, file: !346, line: 74, type: !4267, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !345, retainedNodes: !4269)
!4267 = !DISubroutineType(types: !4268)
!4268 = !{!61, !61, !353}
!4269 = !{!4270, !4271}
!4270 = !DILocalVariable(name: "p", arg: 1, scope: !4266, file: !346, line: 74, type: !61)
!4271 = !DILocalVariable(name: "pn", arg: 2, scope: !4266, file: !346, line: 74, type: !353)
!4272 = !DILocation(line: 0, scope: !4266)
!4273 = !DILocation(line: 0, scope: !350, inlinedAt: !4274)
!4274 = distinct !DILocation(line: 76, column: 10, scope: !4266)
!4275 = !DILocation(line: 176, column: 14, scope: !350, inlinedAt: !4274)
!4276 = !DILocation(line: 178, column: 9, scope: !4218, inlinedAt: !4274)
!4277 = !DILocation(line: 178, column: 7, scope: !350, inlinedAt: !4274)
!4278 = !DILocation(line: 180, column: 13, scope: !4221, inlinedAt: !4274)
!4279 = !DILocation(line: 180, column: 11, scope: !4222, inlinedAt: !4274)
!4280 = !DILocation(line: 191, column: 11, scope: !4230, inlinedAt: !4274)
!4281 = !DILocation(line: 191, column: 11, scope: !4222, inlinedAt: !4274)
!4282 = !DILocation(line: 192, column: 9, scope: !4230, inlinedAt: !4274)
!4283 = !DILocation(line: 201, column: 11, scope: !4239, inlinedAt: !4274)
!4284 = !DILocation(line: 200, column: 11, scope: !4240, inlinedAt: !4274)
!4285 = !DILocation(line: 202, column: 9, scope: !4239, inlinedAt: !4274)
!4286 = !DILocation(line: 203, column: 14, scope: !4240, inlinedAt: !4274)
!4287 = !DILocation(line: 203, column: 18, scope: !4240, inlinedAt: !4274)
!4288 = !DILocation(line: 203, column: 9, scope: !4240, inlinedAt: !4274)
!4289 = !DILocation(line: 0, scope: !4186, inlinedAt: !4290)
!4290 = distinct !DILocation(line: 207, column: 10, scope: !350, inlinedAt: !4274)
!4291 = !DILocation(line: 53, column: 10, scope: !4194, inlinedAt: !4290)
!4292 = !DILocation(line: 206, column: 7, scope: !350, inlinedAt: !4274)
!4293 = !DILocation(line: 61, column: 7, scope: !4186, inlinedAt: !4290)
!4294 = !DILocation(line: 62, column: 8, scope: !4201, inlinedAt: !4290)
!4295 = !DILocation(line: 62, column: 10, scope: !4201, inlinedAt: !4290)
!4296 = !DILocation(line: 63, column: 5, scope: !4201, inlinedAt: !4290)
!4297 = !DILocation(line: 76, column: 3, scope: !4266)
!4298 = distinct !DISubprogram(name: "xzalloc", scope: !346, file: !346, line: 84, type: !4154, scopeLine: 85, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !345, retainedNodes: !4299)
!4299 = !{!4300}
!4300 = !DILocalVariable(name: "n", arg: 1, scope: !4298, file: !346, line: 84, type: !62)
!4301 = !DILocation(line: 0, scope: !4298)
!4302 = !DILocalVariable(name: "n", arg: 1, scope: !4303, file: !346, line: 93, type: !62)
!4303 = distinct !DISubprogram(name: "xcalloc", scope: !346, file: !346, line: 93, type: !4141, scopeLine: 94, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !345, retainedNodes: !4304)
!4304 = !{!4302, !4305, !4306}
!4305 = !DILocalVariable(name: "s", arg: 2, scope: !4303, file: !346, line: 93, type: !62)
!4306 = !DILocalVariable(name: "p", scope: !4303, file: !346, line: 95, type: !61)
!4307 = !DILocation(line: 0, scope: !4303, inlinedAt: !4308)
!4308 = distinct !DILocation(line: 86, column: 10, scope: !4298)
!4309 = !DILocation(line: 100, column: 7, scope: !4310, inlinedAt: !4308)
!4310 = distinct !DILexicalBlock(scope: !4303, file: !346, line: 100, column: 7)
!4311 = !DILocation(line: 101, column: 7, scope: !4310, inlinedAt: !4308)
!4312 = !DILocation(line: 101, column: 18, scope: !4310, inlinedAt: !4308)
!4313 = !DILocation(line: 101, column: 16, scope: !4310, inlinedAt: !4308)
!4314 = !DILocation(line: 100, column: 7, scope: !4303, inlinedAt: !4308)
!4315 = !DILocation(line: 102, column: 5, scope: !4310, inlinedAt: !4308)
!4316 = !DILocation(line: 86, column: 3, scope: !4298)
!4317 = !DILocation(line: 0, scope: !4303)
!4318 = !DILocation(line: 100, column: 7, scope: !4310)
!4319 = !DILocation(line: 101, column: 7, scope: !4310)
!4320 = !DILocation(line: 101, column: 18, scope: !4310)
!4321 = !DILocation(line: 101, column: 16, scope: !4310)
!4322 = !DILocation(line: 100, column: 7, scope: !4303)
!4323 = !DILocation(line: 102, column: 5, scope: !4310)
!4324 = !DILocation(line: 103, column: 3, scope: !4303)
!4325 = distinct !DISubprogram(name: "xmemdup", scope: !346, file: !346, line: 111, type: !4326, scopeLine: 112, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !345, retainedNodes: !4328)
!4326 = !DISubroutineType(types: !4327)
!4327 = !{!61, !1800, !62}
!4328 = !{!4329, !4330}
!4329 = !DILocalVariable(name: "p", arg: 1, scope: !4325, file: !346, line: 111, type: !1800)
!4330 = !DILocalVariable(name: "s", arg: 2, scope: !4325, file: !346, line: 111, type: !62)
!4331 = !DILocation(line: 0, scope: !4325)
!4332 = !DILocation(line: 0, scope: !4153, inlinedAt: !4333)
!4333 = distinct !DILocation(line: 113, column: 18, scope: !4325)
!4334 = !DILocation(line: 41, column: 13, scope: !4153, inlinedAt: !4333)
!4335 = !DILocation(line: 42, column: 8, scope: !4162, inlinedAt: !4333)
!4336 = !DILocation(line: 42, column: 10, scope: !4162, inlinedAt: !4333)
!4337 = !DILocation(line: 43, column: 5, scope: !4162, inlinedAt: !4333)
!4338 = !DILocalVariable(name: "__dest", arg: 1, scope: !4339, file: !1795, line: 26, type: !1798)
!4339 = distinct !DISubprogram(name: "memcpy", scope: !1795, file: !1795, line: 26, type: !1796, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !345, retainedNodes: !4340)
!4340 = !{!4338, !4341, !4342}
!4341 = !DILocalVariable(name: "__src", arg: 2, scope: !4339, file: !1795, line: 26, type: !1799)
!4342 = !DILocalVariable(name: "__len", arg: 3, scope: !4339, file: !1795, line: 26, type: !62)
!4343 = !DILocation(line: 0, scope: !4339, inlinedAt: !4344)
!4344 = distinct !DILocation(line: 113, column: 10, scope: !4325)
!4345 = !DILocation(line: 29, column: 10, scope: !4339, inlinedAt: !4344)
!4346 = !DILocation(line: 113, column: 3, scope: !4325)
!4347 = distinct !DISubprogram(name: "xstrdup", scope: !346, file: !346, line: 119, type: !1568, scopeLine: 120, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !345, retainedNodes: !4348)
!4348 = !{!4349}
!4349 = !DILocalVariable(name: "string", arg: 1, scope: !4347, file: !346, line: 119, type: !93)
!4350 = !DILocation(line: 0, scope: !4347)
!4351 = !DILocation(line: 121, column: 27, scope: !4347)
!4352 = !DILocation(line: 121, column: 43, scope: !4347)
!4353 = !DILocation(line: 0, scope: !4325, inlinedAt: !4354)
!4354 = distinct !DILocation(line: 121, column: 10, scope: !4347)
!4355 = !DILocation(line: 0, scope: !4153, inlinedAt: !4356)
!4356 = distinct !DILocation(line: 113, column: 18, scope: !4325, inlinedAt: !4354)
!4357 = !DILocation(line: 41, column: 13, scope: !4153, inlinedAt: !4356)
!4358 = !DILocation(line: 42, column: 8, scope: !4162, inlinedAt: !4356)
!4359 = !DILocation(line: 42, column: 10, scope: !4162, inlinedAt: !4356)
!4360 = !DILocation(line: 43, column: 5, scope: !4162, inlinedAt: !4356)
!4361 = !DILocation(line: 0, scope: !4339, inlinedAt: !4362)
!4362 = distinct !DILocation(line: 113, column: 10, scope: !4325, inlinedAt: !4354)
!4363 = !DILocation(line: 29, column: 10, scope: !4339, inlinedAt: !4362)
!4364 = !DILocation(line: 121, column: 3, scope: !4347)
!4365 = distinct !DISubprogram(name: "xalloc_die", scope: !363, file: !363, line: 32, type: !795, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !362, retainedNodes: !221)
!4366 = !DILocation(line: 34, column: 10, scope: !4365)
!4367 = !DILocation(line: 34, column: 33, scope: !4365)
!4368 = !DILocation(line: 34, column: 3, scope: !4365)
!4369 = !DILocation(line: 40, column: 3, scope: !4365)
!4370 = distinct !DISubprogram(name: "rpl_calloc", scope: !365, file: !365, line: 42, type: !4141, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !364, retainedNodes: !4371)
!4371 = !{!4372, !4373, !4374, !4375}
!4372 = !DILocalVariable(name: "n", arg: 1, scope: !4370, file: !365, line: 42, type: !62)
!4373 = !DILocalVariable(name: "s", arg: 2, scope: !4370, file: !365, line: 42, type: !62)
!4374 = !DILocalVariable(name: "result", scope: !4370, file: !365, line: 44, type: !61)
!4375 = !DILocalVariable(name: "bytes", scope: !4376, file: !365, line: 56, type: !62)
!4376 = distinct !DILexicalBlock(scope: !4377, file: !365, line: 53, column: 5)
!4377 = distinct !DILexicalBlock(scope: !4370, file: !365, line: 47, column: 7)
!4378 = !DILocation(line: 0, scope: !4370)
!4379 = !DILocation(line: 47, column: 9, scope: !4377)
!4380 = !DILocation(line: 47, column: 14, scope: !4377)
!4381 = !DILocation(line: 0, scope: !4376)
!4382 = !DILocation(line: 57, column: 21, scope: !4383)
!4383 = distinct !DILexicalBlock(scope: !4376, file: !365, line: 57, column: 11)
!4384 = !DILocation(line: 57, column: 11, scope: !4376)
!4385 = !DILocation(line: 59, column: 11, scope: !4386)
!4386 = distinct !DILexicalBlock(scope: !4383, file: !365, line: 58, column: 9)
!4387 = !DILocation(line: 59, column: 17, scope: !4386)
!4388 = !DILocation(line: 65, column: 12, scope: !4370)
!4389 = !DILocation(line: 72, column: 3, scope: !4370)
!4390 = !DILocation(line: 73, column: 1, scope: !4370)
!4391 = distinct !DISubprogram(name: "rpl_fclose", scope: !367, file: !367, line: 58, type: !4392, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !366, retainedNodes: !4428)
!4392 = !DISubroutineType(types: !4393)
!4393 = !{!64, !4394}
!4394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4395, size: 64)
!4395 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !100, line: 7, baseType: !4396)
!4396 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !102, line: 49, size: 1728, elements: !4397)
!4397 = !{!4398, !4399, !4400, !4401, !4402, !4403, !4404, !4405, !4406, !4407, !4408, !4409, !4410, !4411, !4413, !4414, !4415, !4416, !4417, !4418, !4419, !4420, !4421, !4422, !4423, !4424, !4425, !4426, !4427}
!4398 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4396, file: !102, line: 51, baseType: !64, size: 32)
!4399 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4396, file: !102, line: 54, baseType: !59, size: 64, offset: 64)
!4400 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4396, file: !102, line: 55, baseType: !59, size: 64, offset: 128)
!4401 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4396, file: !102, line: 56, baseType: !59, size: 64, offset: 192)
!4402 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4396, file: !102, line: 57, baseType: !59, size: 64, offset: 256)
!4403 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4396, file: !102, line: 58, baseType: !59, size: 64, offset: 320)
!4404 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4396, file: !102, line: 59, baseType: !59, size: 64, offset: 384)
!4405 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4396, file: !102, line: 60, baseType: !59, size: 64, offset: 448)
!4406 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4396, file: !102, line: 61, baseType: !59, size: 64, offset: 512)
!4407 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4396, file: !102, line: 64, baseType: !59, size: 64, offset: 576)
!4408 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4396, file: !102, line: 65, baseType: !59, size: 64, offset: 640)
!4409 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4396, file: !102, line: 66, baseType: !59, size: 64, offset: 704)
!4410 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4396, file: !102, line: 68, baseType: !117, size: 64, offset: 768)
!4411 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4396, file: !102, line: 70, baseType: !4412, size: 64, offset: 832)
!4412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4396, size: 64)
!4413 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4396, file: !102, line: 72, baseType: !64, size: 32, offset: 896)
!4414 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4396, file: !102, line: 73, baseType: !64, size: 32, offset: 928)
!4415 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4396, file: !102, line: 74, baseType: !124, size: 64, offset: 960)
!4416 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4396, file: !102, line: 77, baseType: !67, size: 16, offset: 1024)
!4417 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4396, file: !102, line: 78, baseType: !128, size: 8, offset: 1040)
!4418 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4396, file: !102, line: 79, baseType: !130, size: 8, offset: 1048)
!4419 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4396, file: !102, line: 81, baseType: !134, size: 64, offset: 1088)
!4420 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4396, file: !102, line: 89, baseType: !137, size: 64, offset: 1152)
!4421 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4396, file: !102, line: 91, baseType: !139, size: 64, offset: 1216)
!4422 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4396, file: !102, line: 92, baseType: !142, size: 64, offset: 1280)
!4423 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4396, file: !102, line: 93, baseType: !4412, size: 64, offset: 1344)
!4424 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4396, file: !102, line: 94, baseType: !61, size: 64, offset: 1408)
!4425 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4396, file: !102, line: 95, baseType: !62, size: 64, offset: 1472)
!4426 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4396, file: !102, line: 96, baseType: !64, size: 32, offset: 1536)
!4427 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4396, file: !102, line: 98, baseType: !149, size: 160, offset: 1568)
!4428 = !{!4429, !4430, !4431, !4432}
!4429 = !DILocalVariable(name: "fp", arg: 1, scope: !4391, file: !367, line: 58, type: !4394)
!4430 = !DILocalVariable(name: "saved_errno", scope: !4391, file: !367, line: 60, type: !64)
!4431 = !DILocalVariable(name: "fd", scope: !4391, file: !367, line: 61, type: !64)
!4432 = !DILocalVariable(name: "result", scope: !4391, file: !367, line: 62, type: !64)
!4433 = !DILocation(line: 0, scope: !4391)
!4434 = !DILocation(line: 65, column: 8, scope: !4391)
!4435 = !DILocation(line: 66, column: 10, scope: !4436)
!4436 = distinct !DILexicalBlock(scope: !4391, file: !367, line: 66, column: 7)
!4437 = !DILocation(line: 66, column: 7, scope: !4391)
!4438 = !DILocation(line: 67, column: 12, scope: !4436)
!4439 = !DILocation(line: 67, column: 5, scope: !4436)
!4440 = !DILocation(line: 72, column: 9, scope: !4441)
!4441 = distinct !DILexicalBlock(scope: !4391, file: !367, line: 72, column: 7)
!4442 = !DILocation(line: 72, column: 23, scope: !4441)
!4443 = !DILocation(line: 72, column: 33, scope: !4441)
!4444 = !DILocation(line: 72, column: 26, scope: !4441)
!4445 = !DILocation(line: 72, column: 59, scope: !4441)
!4446 = !DILocation(line: 73, column: 7, scope: !4441)
!4447 = !DILocation(line: 73, column: 10, scope: !4441)
!4448 = !DILocation(line: 72, column: 7, scope: !4391)
!4449 = !DILocation(line: 100, column: 12, scope: !4391)
!4450 = !DILocation(line: 105, column: 7, scope: !4391)
!4451 = !DILocation(line: 74, column: 19, scope: !4441)
!4452 = !DILocation(line: 105, column: 19, scope: !4453)
!4453 = distinct !DILexicalBlock(scope: !4391, file: !367, line: 105, column: 7)
!4454 = !DILocation(line: 107, column: 13, scope: !4455)
!4455 = distinct !DILexicalBlock(scope: !4453, file: !367, line: 106, column: 5)
!4456 = !DILocation(line: 109, column: 5, scope: !4455)
!4457 = !DILocation(line: 112, column: 1, scope: !4391)
!4458 = !DISubprogram(name: "fclose", scope: !866, file: !866, line: 213, type: !4459, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !221)
!4459 = !DISubroutineType(types: !4460)
!4460 = !{!64, !4412}
!4461 = !DISubprogram(name: "lseek", scope: !2467, file: !2467, line: 334, type: !4462, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !221)
!4462 = !DISubroutineType(types: !4463)
!4463 = !{!125, !64, !125, !64}
!4464 = distinct !DISubprogram(name: "rpl_fcntl", scope: !316, file: !316, line: 202, type: !4465, scopeLine: 207, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !319, retainedNodes: !4467)
!4465 = !DISubroutineType(types: !4466)
!4466 = !{!64, !64, !64, null}
!4467 = !{!4468, !4469, !4470, !4480, !4481, !4484, !4486, !4490}
!4468 = !DILocalVariable(name: "fd", arg: 1, scope: !4464, file: !316, line: 202, type: !64)
!4469 = !DILocalVariable(name: "action", arg: 2, scope: !4464, file: !316, line: 202, type: !64)
!4470 = !DILocalVariable(name: "arg", scope: !4464, file: !316, line: 208, type: !4471)
!4471 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !4124, line: 14, baseType: !4472)
!4472 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !316, baseType: !4473)
!4473 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4474, size: 192, elements: !131)
!4474 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !4475)
!4475 = !{!4476, !4477, !4478, !4479}
!4476 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !4474, file: !316, line: 208, baseType: !7, size: 32)
!4477 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !4474, file: !316, line: 208, baseType: !7, size: 32, offset: 32)
!4478 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !4474, file: !316, line: 208, baseType: !61, size: 64, offset: 64)
!4479 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !4474, file: !316, line: 208, baseType: !61, size: 64, offset: 128)
!4480 = !DILocalVariable(name: "result", scope: !4464, file: !316, line: 209, type: !64)
!4481 = !DILocalVariable(name: "target", scope: !4482, file: !316, line: 215, type: !64)
!4482 = distinct !DILexicalBlock(scope: !4483, file: !316, line: 214, column: 7)
!4483 = distinct !DILexicalBlock(scope: !4464, file: !316, line: 212, column: 5)
!4484 = !DILocalVariable(name: "target", scope: !4485, file: !316, line: 222, type: !64)
!4485 = distinct !DILexicalBlock(scope: !4483, file: !316, line: 221, column: 7)
!4486 = !DILocalVariable(name: "x", scope: !4487, file: !316, line: 423, type: !64)
!4487 = distinct !DILexicalBlock(scope: !4488, file: !316, line: 422, column: 13)
!4488 = distinct !DILexicalBlock(scope: !4489, file: !316, line: 260, column: 11)
!4489 = distinct !DILexicalBlock(scope: !4483, file: !316, line: 257, column: 7)
!4490 = !DILocalVariable(name: "p", scope: !4491, file: !316, line: 431, type: !61)
!4491 = distinct !DILexicalBlock(scope: !4488, file: !316, line: 430, column: 13)
!4492 = !DILocation(line: 0, scope: !4464)
!4493 = !DILocation(line: 208, column: 3, scope: !4464)
!4494 = !DILocation(line: 208, column: 11, scope: !4464)
!4495 = !DILocation(line: 210, column: 3, scope: !4464)
!4496 = !DILocation(line: 211, column: 3, scope: !4464)
!4497 = !DILocation(line: 215, column: 22, scope: !4482)
!4498 = !DILocation(line: 0, scope: !4482)
!4499 = !DILocalVariable(name: "fd", arg: 1, scope: !4500, file: !316, line: 447, type: !64)
!4500 = distinct !DISubprogram(name: "rpl_fcntl_DUPFD", scope: !316, file: !316, line: 447, type: !317, scopeLine: 448, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !319, retainedNodes: !4501)
!4501 = !{!4499, !4502, !4503}
!4502 = !DILocalVariable(name: "target", arg: 2, scope: !4500, file: !316, line: 447, type: !64)
!4503 = !DILocalVariable(name: "result", scope: !4500, file: !316, line: 449, type: !64)
!4504 = !DILocation(line: 0, scope: !4500, inlinedAt: !4505)
!4505 = distinct !DILocation(line: 216, column: 18, scope: !4482)
!4506 = !DILocation(line: 482, column: 12, scope: !4500, inlinedAt: !4505)
!4507 = !DILocation(line: 222, column: 22, scope: !4485)
!4508 = !DILocation(line: 0, scope: !4485)
!4509 = !DILocation(line: 0, scope: !315, inlinedAt: !4510)
!4510 = distinct !DILocation(line: 223, column: 18, scope: !4485)
!4511 = !DILocation(line: 508, column: 12, scope: !4512, inlinedAt: !4510)
!4512 = distinct !DILexicalBlock(scope: !315, file: !316, line: 508, column: 7)
!4513 = !DILocation(line: 508, column: 9, scope: !4512, inlinedAt: !4510)
!4514 = !DILocation(line: 508, column: 7, scope: !315, inlinedAt: !4510)
!4515 = !DILocation(line: 510, column: 16, scope: !4516, inlinedAt: !4510)
!4516 = distinct !DILexicalBlock(scope: !4512, file: !316, line: 509, column: 5)
!4517 = !DILocation(line: 511, column: 13, scope: !4518, inlinedAt: !4510)
!4518 = distinct !DILexicalBlock(scope: !4516, file: !316, line: 511, column: 11)
!4519 = !DILocation(line: 511, column: 23, scope: !4518, inlinedAt: !4510)
!4520 = !DILocation(line: 511, column: 26, scope: !4518, inlinedAt: !4510)
!4521 = !DILocation(line: 511, column: 32, scope: !4518, inlinedAt: !4510)
!4522 = !DILocation(line: 511, column: 11, scope: !4516, inlinedAt: !4510)
!4523 = !DILocation(line: 513, column: 30, scope: !4524, inlinedAt: !4510)
!4524 = distinct !DILexicalBlock(scope: !4518, file: !316, line: 512, column: 9)
!4525 = !DILocation(line: 529, column: 19, scope: !327, inlinedAt: !4510)
!4526 = !DILocation(line: 0, scope: !4500, inlinedAt: !4527)
!4527 = distinct !DILocation(line: 521, column: 20, scope: !4528, inlinedAt: !4510)
!4528 = distinct !DILexicalBlock(scope: !4518, file: !316, line: 520, column: 9)
!4529 = !DILocation(line: 482, column: 12, scope: !4500, inlinedAt: !4527)
!4530 = !DILocation(line: 522, column: 22, scope: !4531, inlinedAt: !4510)
!4531 = distinct !DILexicalBlock(scope: !4528, file: !316, line: 522, column: 15)
!4532 = !DILocation(line: 522, column: 15, scope: !4528, inlinedAt: !4510)
!4533 = !DILocation(line: 523, column: 32, scope: !4531, inlinedAt: !4510)
!4534 = !DILocation(line: 523, column: 13, scope: !4531, inlinedAt: !4510)
!4535 = !DILocation(line: 0, scope: !4500, inlinedAt: !4536)
!4536 = distinct !DILocation(line: 528, column: 14, scope: !4512, inlinedAt: !4510)
!4537 = !DILocation(line: 482, column: 12, scope: !4500, inlinedAt: !4536)
!4538 = !DILocation(line: 0, scope: !4512, inlinedAt: !4510)
!4539 = !DILocation(line: 529, column: 9, scope: !327, inlinedAt: !4510)
!4540 = !DILocation(line: 531, column: 19, scope: !326, inlinedAt: !4510)
!4541 = !DILocation(line: 0, scope: !326, inlinedAt: !4510)
!4542 = !DILocation(line: 532, column: 17, scope: !330, inlinedAt: !4510)
!4543 = !DILocation(line: 532, column: 21, scope: !330, inlinedAt: !4510)
!4544 = !DILocation(line: 532, column: 54, scope: !330, inlinedAt: !4510)
!4545 = !DILocation(line: 532, column: 24, scope: !330, inlinedAt: !4510)
!4546 = !DILocation(line: 532, column: 68, scope: !330, inlinedAt: !4510)
!4547 = !DILocation(line: 532, column: 11, scope: !326, inlinedAt: !4510)
!4548 = !DILocation(line: 534, column: 29, scope: !329, inlinedAt: !4510)
!4549 = !DILocation(line: 0, scope: !329, inlinedAt: !4510)
!4550 = !DILocation(line: 535, column: 11, scope: !329, inlinedAt: !4510)
!4551 = !DILocation(line: 536, column: 17, scope: !329, inlinedAt: !4510)
!4552 = !DILocation(line: 538, column: 9, scope: !329, inlinedAt: !4510)
!4553 = !DILocation(line: 328, column: 22, scope: !4488)
!4554 = !DILocation(line: 329, column: 13, scope: !4488)
!4555 = !DILocation(line: 423, column: 23, scope: !4487)
!4556 = !DILocation(line: 0, scope: !4487)
!4557 = !DILocation(line: 424, column: 24, scope: !4487)
!4558 = !DILocation(line: 426, column: 13, scope: !4488)
!4559 = !DILocation(line: 431, column: 25, scope: !4491)
!4560 = !DILocation(line: 0, scope: !4491)
!4561 = !DILocation(line: 432, column: 24, scope: !4491)
!4562 = !DILocation(line: 434, column: 13, scope: !4488)
!4563 = !DILocation(line: 0, scope: !4483)
!4564 = !DILocation(line: 442, column: 3, scope: !4464)
!4565 = !DILocation(line: 444, column: 1, scope: !4464)
!4566 = !DILocation(line: 443, column: 3, scope: !4464)
!4567 = !DISubprogram(name: "fcntl", scope: !2327, file: !2327, line: 176, type: !4465, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !221)
!4568 = distinct !DISubprogram(name: "rpl_fflush", scope: !369, file: !369, line: 129, type: !4569, scopeLine: 130, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !368, retainedNodes: !4605)
!4569 = !DISubroutineType(types: !4570)
!4570 = !{!64, !4571}
!4571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4572, size: 64)
!4572 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !100, line: 7, baseType: !4573)
!4573 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !102, line: 49, size: 1728, elements: !4574)
!4574 = !{!4575, !4576, !4577, !4578, !4579, !4580, !4581, !4582, !4583, !4584, !4585, !4586, !4587, !4588, !4590, !4591, !4592, !4593, !4594, !4595, !4596, !4597, !4598, !4599, !4600, !4601, !4602, !4603, !4604}
!4575 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4573, file: !102, line: 51, baseType: !64, size: 32)
!4576 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4573, file: !102, line: 54, baseType: !59, size: 64, offset: 64)
!4577 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4573, file: !102, line: 55, baseType: !59, size: 64, offset: 128)
!4578 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4573, file: !102, line: 56, baseType: !59, size: 64, offset: 192)
!4579 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4573, file: !102, line: 57, baseType: !59, size: 64, offset: 256)
!4580 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4573, file: !102, line: 58, baseType: !59, size: 64, offset: 320)
!4581 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4573, file: !102, line: 59, baseType: !59, size: 64, offset: 384)
!4582 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4573, file: !102, line: 60, baseType: !59, size: 64, offset: 448)
!4583 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4573, file: !102, line: 61, baseType: !59, size: 64, offset: 512)
!4584 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4573, file: !102, line: 64, baseType: !59, size: 64, offset: 576)
!4585 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4573, file: !102, line: 65, baseType: !59, size: 64, offset: 640)
!4586 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4573, file: !102, line: 66, baseType: !59, size: 64, offset: 704)
!4587 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4573, file: !102, line: 68, baseType: !117, size: 64, offset: 768)
!4588 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4573, file: !102, line: 70, baseType: !4589, size: 64, offset: 832)
!4589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4573, size: 64)
!4590 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4573, file: !102, line: 72, baseType: !64, size: 32, offset: 896)
!4591 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4573, file: !102, line: 73, baseType: !64, size: 32, offset: 928)
!4592 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4573, file: !102, line: 74, baseType: !124, size: 64, offset: 960)
!4593 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4573, file: !102, line: 77, baseType: !67, size: 16, offset: 1024)
!4594 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4573, file: !102, line: 78, baseType: !128, size: 8, offset: 1040)
!4595 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4573, file: !102, line: 79, baseType: !130, size: 8, offset: 1048)
!4596 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4573, file: !102, line: 81, baseType: !134, size: 64, offset: 1088)
!4597 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4573, file: !102, line: 89, baseType: !137, size: 64, offset: 1152)
!4598 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4573, file: !102, line: 91, baseType: !139, size: 64, offset: 1216)
!4599 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4573, file: !102, line: 92, baseType: !142, size: 64, offset: 1280)
!4600 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4573, file: !102, line: 93, baseType: !4589, size: 64, offset: 1344)
!4601 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4573, file: !102, line: 94, baseType: !61, size: 64, offset: 1408)
!4602 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4573, file: !102, line: 95, baseType: !62, size: 64, offset: 1472)
!4603 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4573, file: !102, line: 96, baseType: !64, size: 32, offset: 1536)
!4604 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4573, file: !102, line: 98, baseType: !149, size: 160, offset: 1568)
!4605 = !{!4606}
!4606 = !DILocalVariable(name: "stream", arg: 1, scope: !4568, file: !369, line: 129, type: !4571)
!4607 = !DILocation(line: 0, scope: !4568)
!4608 = !DILocation(line: 150, column: 14, scope: !4609)
!4609 = distinct !DILexicalBlock(scope: !4568, file: !369, line: 150, column: 7)
!4610 = !DILocation(line: 150, column: 22, scope: !4609)
!4611 = !DILocation(line: 150, column: 27, scope: !4609)
!4612 = !DILocation(line: 150, column: 7, scope: !4568)
!4613 = !DILocation(line: 151, column: 12, scope: !4609)
!4614 = !DILocation(line: 151, column: 5, scope: !4609)
!4615 = !DILocalVariable(name: "fp", arg: 1, scope: !4616, file: !369, line: 41, type: !4571)
!4616 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !369, file: !369, line: 41, type: !4617, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !368, retainedNodes: !4619)
!4617 = !DISubroutineType(types: !4618)
!4618 = !{null, !4571}
!4619 = !{!4615}
!4620 = !DILocation(line: 0, scope: !4616, inlinedAt: !4621)
!4621 = distinct !DILocation(line: 156, column: 3, scope: !4568)
!4622 = !DILocation(line: 43, column: 11, scope: !4623, inlinedAt: !4621)
!4623 = distinct !DILexicalBlock(scope: !4616, file: !369, line: 43, column: 7)
!4624 = !DILocation(line: 43, column: 18, scope: !4623, inlinedAt: !4621)
!4625 = !DILocation(line: 43, column: 7, scope: !4616, inlinedAt: !4621)
!4626 = !DILocation(line: 45, column: 5, scope: !4623, inlinedAt: !4621)
!4627 = !DILocation(line: 158, column: 10, scope: !4568)
!4628 = !DILocation(line: 158, column: 3, scope: !4568)
!4629 = !DILocation(line: 235, column: 1, scope: !4568)
!4630 = !DISubprogram(name: "fflush", scope: !866, file: !866, line: 218, type: !4631, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !221)
!4631 = !DISubroutineType(types: !4632)
!4632 = !{!64, !4589}
!4633 = distinct !DISubprogram(name: "rpl_fseeko", scope: !371, file: !371, line: 28, type: !4634, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !370, retainedNodes: !4670)
!4634 = !DISubroutineType(types: !4635)
!4635 = !{!64, !4636, !2313, !64}
!4636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4637, size: 64)
!4637 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !100, line: 7, baseType: !4638)
!4638 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !102, line: 49, size: 1728, elements: !4639)
!4639 = !{!4640, !4641, !4642, !4643, !4644, !4645, !4646, !4647, !4648, !4649, !4650, !4651, !4652, !4653, !4655, !4656, !4657, !4658, !4659, !4660, !4661, !4662, !4663, !4664, !4665, !4666, !4667, !4668, !4669}
!4640 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4638, file: !102, line: 51, baseType: !64, size: 32)
!4641 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4638, file: !102, line: 54, baseType: !59, size: 64, offset: 64)
!4642 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4638, file: !102, line: 55, baseType: !59, size: 64, offset: 128)
!4643 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4638, file: !102, line: 56, baseType: !59, size: 64, offset: 192)
!4644 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4638, file: !102, line: 57, baseType: !59, size: 64, offset: 256)
!4645 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4638, file: !102, line: 58, baseType: !59, size: 64, offset: 320)
!4646 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4638, file: !102, line: 59, baseType: !59, size: 64, offset: 384)
!4647 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4638, file: !102, line: 60, baseType: !59, size: 64, offset: 448)
!4648 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4638, file: !102, line: 61, baseType: !59, size: 64, offset: 512)
!4649 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4638, file: !102, line: 64, baseType: !59, size: 64, offset: 576)
!4650 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4638, file: !102, line: 65, baseType: !59, size: 64, offset: 640)
!4651 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4638, file: !102, line: 66, baseType: !59, size: 64, offset: 704)
!4652 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4638, file: !102, line: 68, baseType: !117, size: 64, offset: 768)
!4653 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4638, file: !102, line: 70, baseType: !4654, size: 64, offset: 832)
!4654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4638, size: 64)
!4655 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4638, file: !102, line: 72, baseType: !64, size: 32, offset: 896)
!4656 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4638, file: !102, line: 73, baseType: !64, size: 32, offset: 928)
!4657 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4638, file: !102, line: 74, baseType: !124, size: 64, offset: 960)
!4658 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4638, file: !102, line: 77, baseType: !67, size: 16, offset: 1024)
!4659 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4638, file: !102, line: 78, baseType: !128, size: 8, offset: 1040)
!4660 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4638, file: !102, line: 79, baseType: !130, size: 8, offset: 1048)
!4661 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4638, file: !102, line: 81, baseType: !134, size: 64, offset: 1088)
!4662 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4638, file: !102, line: 89, baseType: !137, size: 64, offset: 1152)
!4663 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4638, file: !102, line: 91, baseType: !139, size: 64, offset: 1216)
!4664 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4638, file: !102, line: 92, baseType: !142, size: 64, offset: 1280)
!4665 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4638, file: !102, line: 93, baseType: !4654, size: 64, offset: 1344)
!4666 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4638, file: !102, line: 94, baseType: !61, size: 64, offset: 1408)
!4667 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4638, file: !102, line: 95, baseType: !62, size: 64, offset: 1472)
!4668 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4638, file: !102, line: 96, baseType: !64, size: 32, offset: 1536)
!4669 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4638, file: !102, line: 98, baseType: !149, size: 160, offset: 1568)
!4670 = !{!4671, !4672, !4673, !4674}
!4671 = !DILocalVariable(name: "fp", arg: 1, scope: !4633, file: !371, line: 28, type: !4636)
!4672 = !DILocalVariable(name: "offset", arg: 2, scope: !4633, file: !371, line: 28, type: !2313)
!4673 = !DILocalVariable(name: "whence", arg: 3, scope: !4633, file: !371, line: 28, type: !64)
!4674 = !DILocalVariable(name: "pos", scope: !4675, file: !371, line: 117, type: !2313)
!4675 = distinct !DILexicalBlock(scope: !4676, file: !371, line: 113, column: 5)
!4676 = distinct !DILexicalBlock(scope: !4633, file: !371, line: 52, column: 7)
!4677 = !DILocation(line: 0, scope: !4633)
!4678 = !DILocation(line: 52, column: 11, scope: !4676)
!4679 = !{!1355, !788, i64 16}
!4680 = !DILocation(line: 52, column: 31, scope: !4676)
!4681 = !{!1355, !788, i64 8}
!4682 = !DILocation(line: 52, column: 24, scope: !4676)
!4683 = !DILocation(line: 53, column: 7, scope: !4676)
!4684 = !DILocation(line: 53, column: 14, scope: !4676)
!4685 = !DILocation(line: 53, column: 35, scope: !4676)
!4686 = !{!1355, !788, i64 32}
!4687 = !DILocation(line: 53, column: 28, scope: !4676)
!4688 = !DILocation(line: 54, column: 7, scope: !4676)
!4689 = !DILocation(line: 54, column: 14, scope: !4676)
!4690 = !{!1355, !788, i64 72}
!4691 = !DILocation(line: 54, column: 28, scope: !4676)
!4692 = !DILocation(line: 52, column: 7, scope: !4633)
!4693 = !DILocation(line: 117, column: 26, scope: !4675)
!4694 = !DILocation(line: 117, column: 19, scope: !4675)
!4695 = !DILocation(line: 0, scope: !4675)
!4696 = !DILocation(line: 118, column: 15, scope: !4697)
!4697 = distinct !DILexicalBlock(scope: !4675, file: !371, line: 118, column: 11)
!4698 = !DILocation(line: 118, column: 11, scope: !4675)
!4699 = !DILocation(line: 129, column: 11, scope: !4675)
!4700 = !DILocation(line: 129, column: 18, scope: !4675)
!4701 = !DILocation(line: 130, column: 11, scope: !4675)
!4702 = !DILocation(line: 130, column: 19, scope: !4675)
!4703 = !{!1355, !1061, i64 144}
!4704 = !DILocation(line: 161, column: 7, scope: !4675)
!4705 = !DILocation(line: 163, column: 10, scope: !4633)
!4706 = !DILocation(line: 163, column: 3, scope: !4633)
!4707 = !DILocation(line: 164, column: 1, scope: !4633)
!4708 = !DISubprogram(name: "fseeko", scope: !866, file: !866, line: 712, type: !4709, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !221)
!4709 = !DISubroutineType(types: !4710)
!4710 = !{!64, !4654, !125, !64}
!4711 = distinct !DISubprogram(name: "rpl_mbrtowc", scope: !373, file: !373, line: 86, type: !4712, scopeLine: 87, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !372, retainedNodes: !4726)
!4712 = !DISubroutineType(types: !4713)
!4713 = !{!62, !4714, !93, !62, !4715}
!4714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2687, size: 64)
!4715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4716, size: 64)
!4716 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !2671, line: 6, baseType: !4717)
!4717 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !2673, line: 21, baseType: !4718)
!4718 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2673, line: 13, size: 64, elements: !4719)
!4719 = !{!4720, !4721}
!4720 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !4718, file: !2673, line: 15, baseType: !64, size: 32)
!4721 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !4718, file: !2673, line: 20, baseType: !4722, size: 32, offset: 32)
!4722 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4718, file: !2673, line: 16, size: 32, elements: !4723)
!4723 = !{!4724, !4725}
!4724 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !4722, file: !2673, line: 18, baseType: !7, size: 32)
!4725 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !4722, file: !2673, line: 19, baseType: !2682, size: 32)
!4726 = !{!4727, !4728, !4729, !4730, !4731, !4732, !4733}
!4727 = !DILocalVariable(name: "pwc", arg: 1, scope: !4711, file: !373, line: 86, type: !4714)
!4728 = !DILocalVariable(name: "s", arg: 2, scope: !4711, file: !373, line: 86, type: !93)
!4729 = !DILocalVariable(name: "n", arg: 3, scope: !4711, file: !373, line: 86, type: !62)
!4730 = !DILocalVariable(name: "ps", arg: 4, scope: !4711, file: !373, line: 86, type: !4715)
!4731 = !DILocalVariable(name: "ret", scope: !4711, file: !373, line: 88, type: !62)
!4732 = !DILocalVariable(name: "wc", scope: !4711, file: !373, line: 89, type: !2687)
!4733 = !DILocalVariable(name: "uc", scope: !4734, file: !373, line: 156, type: !66)
!4734 = distinct !DILexicalBlock(scope: !4735, file: !373, line: 155, column: 5)
!4735 = distinct !DILexicalBlock(scope: !4711, file: !373, line: 154, column: 7)
!4736 = !DILocation(line: 0, scope: !4711)
!4737 = !DILocation(line: 89, column: 3, scope: !4711)
!4738 = !DILocation(line: 105, column: 9, scope: !4739)
!4739 = distinct !DILexicalBlock(scope: !4711, file: !373, line: 105, column: 7)
!4740 = !DILocation(line: 105, column: 7, scope: !4711)
!4741 = !DILocation(line: 145, column: 9, scope: !4711)
!4742 = !DILocation(line: 154, column: 19, scope: !4735)
!4743 = !DILocation(line: 154, column: 26, scope: !4735)
!4744 = !DILocation(line: 154, column: 41, scope: !4735)
!4745 = !DILocation(line: 154, column: 7, scope: !4711)
!4746 = !DILocation(line: 156, column: 26, scope: !4734)
!4747 = !DILocation(line: 0, scope: !4734)
!4748 = !DILocation(line: 157, column: 14, scope: !4734)
!4749 = !DILocation(line: 157, column: 12, scope: !4734)
!4750 = !DILocation(line: 163, column: 1, scope: !4711)
!4751 = !DISubprogram(name: "mbrtowc", scope: !3348, file: !3348, line: 296, type: !4752, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !221)
!4752 = !DISubroutineType(types: !4753)
!4753 = !{!40, !204, !93, !40, !4754}
!4754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4718, size: 64)
!4755 = distinct !DISubprogram(name: "close_stream", scope: !376, file: !376, line: 56, type: !4756, scopeLine: 57, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !375, retainedNodes: !4792)
!4756 = !DISubroutineType(types: !4757)
!4757 = !{!64, !4758}
!4758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4759, size: 64)
!4759 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !100, line: 7, baseType: !4760)
!4760 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !102, line: 49, size: 1728, elements: !4761)
!4761 = !{!4762, !4763, !4764, !4765, !4766, !4767, !4768, !4769, !4770, !4771, !4772, !4773, !4774, !4775, !4777, !4778, !4779, !4780, !4781, !4782, !4783, !4784, !4785, !4786, !4787, !4788, !4789, !4790, !4791}
!4762 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4760, file: !102, line: 51, baseType: !64, size: 32)
!4763 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4760, file: !102, line: 54, baseType: !59, size: 64, offset: 64)
!4764 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4760, file: !102, line: 55, baseType: !59, size: 64, offset: 128)
!4765 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4760, file: !102, line: 56, baseType: !59, size: 64, offset: 192)
!4766 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4760, file: !102, line: 57, baseType: !59, size: 64, offset: 256)
!4767 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4760, file: !102, line: 58, baseType: !59, size: 64, offset: 320)
!4768 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4760, file: !102, line: 59, baseType: !59, size: 64, offset: 384)
!4769 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4760, file: !102, line: 60, baseType: !59, size: 64, offset: 448)
!4770 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4760, file: !102, line: 61, baseType: !59, size: 64, offset: 512)
!4771 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4760, file: !102, line: 64, baseType: !59, size: 64, offset: 576)
!4772 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4760, file: !102, line: 65, baseType: !59, size: 64, offset: 640)
!4773 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4760, file: !102, line: 66, baseType: !59, size: 64, offset: 704)
!4774 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4760, file: !102, line: 68, baseType: !117, size: 64, offset: 768)
!4775 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4760, file: !102, line: 70, baseType: !4776, size: 64, offset: 832)
!4776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4760, size: 64)
!4777 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4760, file: !102, line: 72, baseType: !64, size: 32, offset: 896)
!4778 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4760, file: !102, line: 73, baseType: !64, size: 32, offset: 928)
!4779 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4760, file: !102, line: 74, baseType: !124, size: 64, offset: 960)
!4780 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4760, file: !102, line: 77, baseType: !67, size: 16, offset: 1024)
!4781 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4760, file: !102, line: 78, baseType: !128, size: 8, offset: 1040)
!4782 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4760, file: !102, line: 79, baseType: !130, size: 8, offset: 1048)
!4783 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4760, file: !102, line: 81, baseType: !134, size: 64, offset: 1088)
!4784 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4760, file: !102, line: 89, baseType: !137, size: 64, offset: 1152)
!4785 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4760, file: !102, line: 91, baseType: !139, size: 64, offset: 1216)
!4786 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4760, file: !102, line: 92, baseType: !142, size: 64, offset: 1280)
!4787 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4760, file: !102, line: 93, baseType: !4776, size: 64, offset: 1344)
!4788 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4760, file: !102, line: 94, baseType: !61, size: 64, offset: 1408)
!4789 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4760, file: !102, line: 95, baseType: !62, size: 64, offset: 1472)
!4790 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4760, file: !102, line: 96, baseType: !64, size: 32, offset: 1536)
!4791 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4760, file: !102, line: 98, baseType: !149, size: 160, offset: 1568)
!4792 = !{!4793, !4794, !4796, !4797}
!4793 = !DILocalVariable(name: "stream", arg: 1, scope: !4755, file: !376, line: 56, type: !4758)
!4794 = !DILocalVariable(name: "some_pending", scope: !4755, file: !376, line: 58, type: !4795)
!4795 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !71)
!4796 = !DILocalVariable(name: "prev_fail", scope: !4755, file: !376, line: 59, type: !4795)
!4797 = !DILocalVariable(name: "fclose_fail", scope: !4755, file: !376, line: 60, type: !4795)
!4798 = !DILocation(line: 0, scope: !4755)
!4799 = !DILocation(line: 58, column: 30, scope: !4755)
!4800 = !DILocalVariable(name: "__stream", arg: 1, scope: !4801, file: !1076, line: 135, type: !4758)
!4801 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1076, file: !1076, line: 135, type: !4756, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !375, retainedNodes: !4802)
!4802 = !{!4800}
!4803 = !DILocation(line: 0, scope: !4801, inlinedAt: !4804)
!4804 = distinct !DILocation(line: 59, column: 27, scope: !4755)
!4805 = !DILocation(line: 137, column: 10, scope: !4801, inlinedAt: !4804)
!4806 = !DILocation(line: 59, column: 43, scope: !4755)
!4807 = !DILocation(line: 60, column: 29, scope: !4755)
!4808 = !DILocation(line: 60, column: 45, scope: !4755)
!4809 = !DILocation(line: 70, column: 17, scope: !4810)
!4810 = distinct !DILexicalBlock(scope: !4755, file: !376, line: 70, column: 7)
!4811 = !DILocation(line: 58, column: 50, scope: !4755)
!4812 = !DILocation(line: 70, column: 33, scope: !4810)
!4813 = !DILocation(line: 70, column: 53, scope: !4810)
!4814 = !DILocation(line: 70, column: 59, scope: !4810)
!4815 = !DILocation(line: 70, column: 7, scope: !4755)
!4816 = !DILocation(line: 72, column: 11, scope: !4817)
!4817 = distinct !DILexicalBlock(scope: !4810, file: !376, line: 71, column: 5)
!4818 = !DILocation(line: 73, column: 9, scope: !4819)
!4819 = distinct !DILexicalBlock(scope: !4817, file: !376, line: 72, column: 11)
!4820 = !DILocation(line: 73, column: 15, scope: !4819)
!4821 = !DILocation(line: 78, column: 1, scope: !4755)
!4822 = distinct !DISubprogram(name: "hard_locale", scope: !378, file: !378, line: 27, type: !4823, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !377, retainedNodes: !4825)
!4823 = !DISubroutineType(types: !4824)
!4824 = !{!71, !64}
!4825 = !{!4826, !4827}
!4826 = !DILocalVariable(name: "category", arg: 1, scope: !4822, file: !378, line: 27, type: !64)
!4827 = !DILocalVariable(name: "locale", scope: !4822, file: !378, line: 29, type: !4828)
!4828 = !DICompositeType(tag: DW_TAG_array_type, baseType: !60, size: 2056, elements: !4829)
!4829 = !{!4830}
!4830 = !DISubrange(count: 257)
!4831 = !DILocation(line: 0, scope: !4822)
!4832 = !DILocation(line: 29, column: 3, scope: !4822)
!4833 = !DILocation(line: 29, column: 8, scope: !4822)
!4834 = !DILocation(line: 31, column: 7, scope: !4835)
!4835 = distinct !DILexicalBlock(scope: !4822, file: !378, line: 31, column: 7)
!4836 = !DILocation(line: 31, column: 7, scope: !4822)
!4837 = !DILocation(line: 34, column: 12, scope: !4822)
!4838 = !DILocation(line: 34, column: 38, scope: !4822)
!4839 = !DILocation(line: 34, column: 41, scope: !4822)
!4840 = !DILocation(line: 34, column: 66, scope: !4822)
!4841 = !DILocation(line: 35, column: 1, scope: !4822)
!4842 = distinct !DISubprogram(name: "locale_charset", scope: !380, file: !380, line: 831, type: !4843, scopeLine: 832, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !379, retainedNodes: !4845)
!4843 = !DISubroutineType(types: !4844)
!4844 = !{!93}
!4845 = !{!4846}
!4846 = !DILocalVariable(name: "codeset", scope: !4842, file: !380, line: 833, type: !93)
!4847 = !DILocation(line: 847, column: 13, scope: !4842)
!4848 = !DILocation(line: 0, scope: !4842)
!4849 = !DILocation(line: 911, column: 15, scope: !4850)
!4850 = distinct !DILexicalBlock(scope: !4842, file: !380, line: 911, column: 7)
!4851 = !DILocation(line: 911, column: 7, scope: !4842)
!4852 = !DILocation(line: 1070, column: 13, scope: !4853)
!4853 = distinct !DILexicalBlock(scope: !4854, file: !380, line: 1070, column: 13)
!4854 = distinct !DILexicalBlock(scope: !4855, file: !380, line: 1060, column: 7)
!4855 = distinct !DILexicalBlock(scope: !4842, file: !380, line: 1019, column: 3)
!4856 = !DILocation(line: 1070, column: 24, scope: !4853)
!4857 = !DILocation(line: 1070, column: 13, scope: !4854)
!4858 = !DILocation(line: 1158, column: 3, scope: !4842)
!4859 = !DISubprogram(name: "nl_langinfo", scope: !383, file: !383, line: 661, type: !4860, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !221)
!4860 = !DISubroutineType(types: !4861)
!4861 = !{!59, !64}
!4862 = distinct !DISubprogram(name: "setlocale_null_r", scope: !769, file: !769, line: 269, type: !4863, scopeLine: 270, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !768, retainedNodes: !4865)
!4863 = !DISubroutineType(types: !4864)
!4864 = !{!64, !64, !59, !62}
!4865 = !{!4866, !4867, !4868}
!4866 = !DILocalVariable(name: "category", arg: 1, scope: !4862, file: !769, line: 269, type: !64)
!4867 = !DILocalVariable(name: "buf", arg: 2, scope: !4862, file: !769, line: 269, type: !59)
!4868 = !DILocalVariable(name: "bufsize", arg: 3, scope: !4862, file: !769, line: 269, type: !62)
!4869 = !DILocation(line: 0, scope: !4862)
!4870 = !DILocalVariable(name: "category", arg: 1, scope: !4871, file: !769, line: 91, type: !64)
!4871 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !769, file: !769, line: 91, type: !4863, scopeLine: 92, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !768, retainedNodes: !4872)
!4872 = !{!4870, !4873, !4874, !4875, !4876}
!4873 = !DILocalVariable(name: "buf", arg: 2, scope: !4871, file: !769, line: 91, type: !59)
!4874 = !DILocalVariable(name: "bufsize", arg: 3, scope: !4871, file: !769, line: 91, type: !62)
!4875 = !DILocalVariable(name: "result", scope: !4871, file: !769, line: 140, type: !93)
!4876 = !DILocalVariable(name: "length", scope: !4877, file: !769, line: 154, type: !62)
!4877 = distinct !DILexicalBlock(scope: !4878, file: !769, line: 153, column: 5)
!4878 = distinct !DILexicalBlock(scope: !4871, file: !769, line: 142, column: 7)
!4879 = !DILocation(line: 0, scope: !4871, inlinedAt: !4880)
!4880 = distinct !DILocation(line: 274, column: 10, scope: !4862)
!4881 = !DILocalVariable(name: "category", arg: 1, scope: !4882, file: !769, line: 60, type: !64)
!4882 = distinct !DISubprogram(name: "setlocale_null_androidfix", scope: !769, file: !769, line: 60, type: !4883, scopeLine: 61, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !768, retainedNodes: !4885)
!4883 = !DISubroutineType(types: !4884)
!4884 = !{!93, !64}
!4885 = !{!4881, !4886}
!4886 = !DILocalVariable(name: "result", scope: !4882, file: !769, line: 62, type: !93)
!4887 = !DILocation(line: 0, scope: !4882, inlinedAt: !4888)
!4888 = distinct !DILocation(line: 140, column: 24, scope: !4871, inlinedAt: !4880)
!4889 = !DILocation(line: 62, column: 24, scope: !4882, inlinedAt: !4888)
!4890 = !DILocation(line: 142, column: 14, scope: !4878, inlinedAt: !4880)
!4891 = !DILocation(line: 142, column: 7, scope: !4871, inlinedAt: !4880)
!4892 = !DILocation(line: 145, column: 19, scope: !4893, inlinedAt: !4880)
!4893 = distinct !DILexicalBlock(scope: !4894, file: !769, line: 145, column: 11)
!4894 = distinct !DILexicalBlock(scope: !4878, file: !769, line: 143, column: 5)
!4895 = !DILocation(line: 145, column: 11, scope: !4894, inlinedAt: !4880)
!4896 = !DILocation(line: 149, column: 16, scope: !4893, inlinedAt: !4880)
!4897 = !DILocation(line: 149, column: 9, scope: !4893, inlinedAt: !4880)
!4898 = !DILocation(line: 154, column: 23, scope: !4877, inlinedAt: !4880)
!4899 = !DILocation(line: 0, scope: !4877, inlinedAt: !4880)
!4900 = !DILocation(line: 155, column: 18, scope: !4901, inlinedAt: !4880)
!4901 = distinct !DILexicalBlock(scope: !4877, file: !769, line: 155, column: 11)
!4902 = !DILocation(line: 155, column: 11, scope: !4877, inlinedAt: !4880)
!4903 = !DILocation(line: 157, column: 39, scope: !4904, inlinedAt: !4880)
!4904 = distinct !DILexicalBlock(scope: !4901, file: !769, line: 156, column: 9)
!4905 = !DILocalVariable(name: "__dest", arg: 1, scope: !4906, file: !1795, line: 26, type: !1798)
!4906 = distinct !DISubprogram(name: "memcpy", scope: !1795, file: !1795, line: 26, type: !1796, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !768, retainedNodes: !4907)
!4907 = !{!4905, !4908, !4909}
!4908 = !DILocalVariable(name: "__src", arg: 2, scope: !4906, file: !1795, line: 26, type: !1799)
!4909 = !DILocalVariable(name: "__len", arg: 3, scope: !4906, file: !1795, line: 26, type: !62)
!4910 = !DILocation(line: 0, scope: !4906, inlinedAt: !4911)
!4911 = distinct !DILocation(line: 157, column: 11, scope: !4904, inlinedAt: !4880)
!4912 = !DILocation(line: 29, column: 10, scope: !4906, inlinedAt: !4911)
!4913 = !DILocation(line: 158, column: 11, scope: !4904, inlinedAt: !4880)
!4914 = !DILocation(line: 162, column: 23, scope: !4915, inlinedAt: !4880)
!4915 = distinct !DILexicalBlock(scope: !4916, file: !769, line: 162, column: 15)
!4916 = distinct !DILexicalBlock(scope: !4901, file: !769, line: 161, column: 9)
!4917 = !DILocation(line: 162, column: 15, scope: !4916, inlinedAt: !4880)
!4918 = !DILocation(line: 167, column: 44, scope: !4919, inlinedAt: !4880)
!4919 = distinct !DILexicalBlock(scope: !4915, file: !769, line: 163, column: 13)
!4920 = !DILocation(line: 0, scope: !4906, inlinedAt: !4921)
!4921 = distinct !DILocation(line: 167, column: 15, scope: !4919, inlinedAt: !4880)
!4922 = !DILocation(line: 29, column: 10, scope: !4906, inlinedAt: !4921)
!4923 = !DILocation(line: 168, column: 15, scope: !4919, inlinedAt: !4880)
!4924 = !DILocation(line: 168, column: 32, scope: !4919, inlinedAt: !4880)
!4925 = !DILocation(line: 169, column: 13, scope: !4919, inlinedAt: !4880)
!4926 = !DILocation(line: 0, scope: !4878, inlinedAt: !4880)
!4927 = !DILocation(line: 274, column: 3, scope: !4862)
!4928 = distinct !DISubprogram(name: "setlocale_null", scope: !769, file: !769, line: 301, type: !4883, scopeLine: 302, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !768, retainedNodes: !4929)
!4929 = !{!4930}
!4930 = !DILocalVariable(name: "category", arg: 1, scope: !4928, file: !769, line: 301, type: !64)
!4931 = !DILocation(line: 0, scope: !4928)
!4932 = !DILocation(line: 0, scope: !4882, inlinedAt: !4933)
!4933 = distinct !DILocation(line: 304, column: 10, scope: !4928)
!4934 = !DILocation(line: 62, column: 24, scope: !4882, inlinedAt: !4933)
!4935 = !DILocation(line: 304, column: 3, scope: !4928)
