; ModuleID = 'coreutils-8.30/src/sha1sum.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
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
@.str.11 = private unnamed_addr constant [297 x i8] c"\0AThe sums are computed as described in %s.  When checking, the input\0Ashould be a former output of this program.  The default mode is to print a\0Aline with checksum, a space, a character indicating input mode ('*' for binary,\0A' ' for text or where binary is insignificant), and name for each FILE.\0A\00", align 1
@.str.12 = private unnamed_addr constant [11 x i8] c"FIPS-180-1\00", align 1
@emit_ancillary_info.infomap = private unnamed_addr constant [7 x %struct.infomap] [%struct.infomap { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.37, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.38, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.39, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.40, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.41, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.42, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.41, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.43, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.41, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.44, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.41, i32 0, i32 0) }, %struct.infomap zeroinitializer], align 16
@.str.37 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"sha1sum\00", align 1
@.str.45 = private unnamed_addr constant [23 x i8] c"\0A%s online help: <%s>\0A\00", align 1
@.str.18 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.46 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.47 = private unnamed_addr constant [4 x i8] c"en_\00", align 1
@.str.48 = private unnamed_addr constant [70 x i8] c"Report %s translation bugs to <https://translationproject.org/team/>\0A\00", align 1
@.str.49 = private unnamed_addr constant [31 x i8] c"Full documentation at: <%s%s>\0A\00", align 1
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
@.str.81 = private unnamed_addr constant [3 x i8] c"\5Cn\00", align 1
@.str.82 = private unnamed_addr constant [3 x i8] c"\5C\5C\00", align 1
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
@.str.83 = private unnamed_addr constant [5 x i8] c"8.30\00", align 1
@file_name = internal unnamed_addr global i8* null, align 8, !dbg !225
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !230
@.str.86 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.1.87 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.2.88 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@fillbuf = internal unnamed_addr constant <{ i8, [63 x i8] }> <{ i8 -128, [63 x i8] zeroinitializer }>, align 16, !dbg !233
@exit_failure = dso_local global i32 1, align 4, !dbg !248
@program_name = dso_local local_unnamed_addr global i8* null, align 8, !dbg !255
@.str.101 = private unnamed_addr constant [56 x i8] c"A NULL argv[0] was passed through an exec system call.\0A\00", align 1
@.str.1.102 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.2.103 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@quoting_style_args = dso_local local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.104, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.105, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.106, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.107, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.108, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.109, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.110, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.111, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.112, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.113, i32 0, i32 0), i8* null], align 16, !dbg !262
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
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !274
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !281
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !293
@.str.11.114 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.115 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.10.116 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.14.117 = private unnamed_addr constant [4 x i8] c"\E2\80\98\00", align 1
@.str.15.118 = private unnamed_addr constant [4 x i8] c"\E2\80\99\00", align 1
@.str.17.119 = private unnamed_addr constant [4 x i8] c"\A1\07e\00", align 1
@.str.18.120 = private unnamed_addr constant [3 x i8] c"\A1\AF\00", align 1
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8, !dbg !300
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !307
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !295
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !309
@.str.127 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1
@.str.1.128 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.2.129 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1
@.str.3.130 = private unnamed_addr constant [204 x i8] c"\0ALicense GPLv3+: GNU GPL version 3 or later <https://gnu.org/licenses/gpl.html>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\0A\00", align 1
@.str.4.131 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1
@.str.5.132 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1
@.str.6.133 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1
@.str.7.134 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.8.135 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.9.136 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1
@.str.10.137 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1
@.str.11.138 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.12.139 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.13.140 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1
@.str.14.143 = private unnamed_addr constant [21 x i8] c"\0AReport bugs to: %s\0A\00", align 1
@.str.15.144 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1
@.str.16.145 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1
@.str.17.146 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.18.147 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.19.148 = private unnamed_addr constant [65 x i8] c"General help using GNU software: <https://www.gnu.org/gethelp/>\0A\00", align 1
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !315
@.str.1.159 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.160 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@rpl_fcntl.have_dupfd_cloexec = internal unnamed_addr global i32 0, align 4, !dbg !324
@.str.177 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.1.178 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1
@.str.181 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1.182 = private unnamed_addr constant [6 x i8] c"ASCII\00", align 1

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @usage(i32) local_unnamed_addr #0 !dbg !803 {
  %2 = alloca [7 x %struct.infomap], align 16
  call void @llvm.dbg.declare(metadata [7 x %struct.infomap]* %2, metadata !808, metadata !DIExpression()), !dbg !826
  call void @llvm.dbg.value(metadata i32 %0, metadata !807, metadata !DIExpression()), !dbg !830
  %3 = icmp eq i32 %0, 0, !dbg !831
  br i1 %3, label %9, label %4, !dbg !832

; <label>:4:                                      ; preds = %1
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !833, !tbaa !835
  %6 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 5) #10, !dbg !833
  %7 = load i8*, i8** @program_name, align 8, !dbg !833, !tbaa !835
  %8 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %5, i32 1, i8* %6, i8* %7) #10, !dbg !833
  br label %76, !dbg !833

; <label>:9:                                      ; preds = %1
  %10 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.1, i64 0, i64 0), i32 5) #10, !dbg !839
  %11 = load i8*, i8** @program_name, align 8, !dbg !839, !tbaa !835
  %12 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %10, i8* %11, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 160) #10, !dbg !839
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.36, i64 0, i64 0), i32 5) #10, !dbg !840
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !840, !tbaa !835
  %15 = tail call i32 @fputs_unlocked(i8* %13, %struct._IO_FILE* %14) #10, !dbg !840
  %16 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0), i32 5) #10, !dbg !845
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !845, !tbaa !835
  %18 = tail call i32 @fputs_unlocked(i8* %16, %struct._IO_FILE* %17), !dbg !845
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.4, i64 0, i64 0), i32 5) #10, !dbg !847
  %20 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %19, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #10, !dbg !847
  %21 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.5, i64 0, i64 0), i32 5) #10, !dbg !848
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !848, !tbaa !835
  %23 = tail call i32 @fputs_unlocked(i8* %21, %struct._IO_FILE* %22), !dbg !848
  %24 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.6, i64 0, i64 0), i32 5) #10, !dbg !849
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !849, !tbaa !835
  %26 = tail call i32 @fputs_unlocked(i8* %24, %struct._IO_FILE* %25), !dbg !849
  %27 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([122 x i8], [122 x i8]* @.str.7, i64 0, i64 0), i32 5) #10, !dbg !851
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !851, !tbaa !835
  %29 = tail call i32 @fputs_unlocked(i8* %27, %struct._IO_FILE* %28), !dbg !851
  %30 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([435 x i8], [435 x i8]* @.str.8, i64 0, i64 0), i32 5) #10, !dbg !852
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !852, !tbaa !835
  %32 = tail call i32 @fputs_unlocked(i8* %30, %struct._IO_FILE* %31), !dbg !852
  %33 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.9, i64 0, i64 0), i32 5) #10, !dbg !853
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !853, !tbaa !835
  %35 = tail call i32 @fputs_unlocked(i8* %33, %struct._IO_FILE* %34), !dbg !853
  %36 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.10, i64 0, i64 0), i32 5) #10, !dbg !854
  %37 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !854, !tbaa !835
  %38 = tail call i32 @fputs_unlocked(i8* %36, %struct._IO_FILE* %37), !dbg !854
  %39 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([297 x i8], [297 x i8]* @.str.11, i64 0, i64 0), i32 5) #10, !dbg !855
  %40 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %39, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i64 0, i64 0)) #10, !dbg !855
  %41 = bitcast [7 x %struct.infomap]* %2 to i8*, !dbg !856
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %41) #10, !dbg !856
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 %41, i8* align 16 bitcast ([7 x %struct.infomap]* @emit_ancillary_info.infomap to i8*), i64 112, i1 false) #10, !dbg !826
  %42 = getelementptr inbounds [7 x %struct.infomap], [7 x %struct.infomap]* %2, i64 0, i64 0, !dbg !857
  call void @llvm.dbg.value(metadata %struct.infomap* %42, metadata !815, metadata !DIExpression()) #10, !dbg !858
  br label %43, !dbg !859

; <label>:43:                                     ; preds = %48, %9
  %44 = phi i8* [ %51, %48 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.37, i64 0, i64 0), %9 ]
  %45 = phi %struct.infomap* [ %49, %48 ], [ %42, %9 ]
  call void @llvm.dbg.value(metadata %struct.infomap* %45, metadata !815, metadata !DIExpression()) #10, !dbg !858
  %46 = tail call i32 @strcmp(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i64 0, i64 0), i8* nonnull %44) #14, !dbg !859
  %47 = icmp eq i32 %46, 0, !dbg !859
  br i1 %47, label %53, label %48, !dbg !860

; <label>:48:                                     ; preds = %43
  %49 = getelementptr inbounds %struct.infomap, %struct.infomap* %45, i64 1, !dbg !861
  call void @llvm.dbg.value(metadata %struct.infomap* %49, metadata !815, metadata !DIExpression()) #10, !dbg !858
  %50 = getelementptr inbounds %struct.infomap, %struct.infomap* %49, i64 0, i32 0, !dbg !862
  %51 = load i8*, i8** %50, align 8, !dbg !862, !tbaa !863
  %52 = icmp eq i8* %51, null, !dbg !865
  br i1 %52, label %53, label %43, !dbg !866, !llvm.loop !867

; <label>:53:                                     ; preds = %48, %43
  %54 = phi %struct.infomap* [ %49, %48 ], [ %45, %43 ]
  call void @llvm.dbg.value(metadata %struct.infomap* %54, metadata !815, metadata !DIExpression()) #10, !dbg !858
  call void @llvm.dbg.value(metadata %struct.infomap* %54, metadata !815, metadata !DIExpression()) #10, !dbg !858
  %55 = getelementptr inbounds %struct.infomap, %struct.infomap* %54, i64 0, i32 1, !dbg !870
  %56 = load i8*, i8** %55, align 8, !dbg !870, !tbaa !872
  %57 = icmp eq i8* %56, null, !dbg !873
  %58 = select i1 %57, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i64 0, i64 0), i8* %56, !dbg !874
  call void @llvm.dbg.value(metadata i8* %58, metadata !814, metadata !DIExpression()) #10, !dbg !875
  %59 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.45, i64 0, i64 0), i32 5) #10, !dbg !876
  %60 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %59, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.18, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.46, i64 0, i64 0)) #10, !dbg !876
  %61 = tail call i8* @setlocale(i32 5, i8* null) #10, !dbg !877
  call void @llvm.dbg.value(metadata i8* %61, metadata !822, metadata !DIExpression()) #10, !dbg !878
  %62 = icmp eq i8* %61, null, !dbg !879
  br i1 %62, label %69, label %63, !dbg !881

; <label>:63:                                     ; preds = %53
  %64 = tail call i32 @strncmp(i8* nonnull %61, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.47, i64 0, i64 0), i64 3) #14, !dbg !882
  %65 = icmp eq i32 %64, 0, !dbg !882
  br i1 %65, label %69, label %66, !dbg !883

; <label>:66:                                     ; preds = %63
  %67 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.48, i64 0, i64 0), i32 5) #10, !dbg !884
  %68 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %67, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i64 0, i64 0)) #10, !dbg !884
  br label %69, !dbg !886

; <label>:69:                                     ; preds = %53, %63, %66
  %70 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.49, i64 0, i64 0), i32 5) #10, !dbg !887
  %71 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %70, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.46, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i64 0, i64 0)) #10, !dbg !887
  %72 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.50, i64 0, i64 0), i32 5) #10, !dbg !888
  %73 = icmp eq i8* %58, getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i64 0, i64 0), !dbg !888
  %74 = select i1 %73, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.51, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.14, i64 0, i64 0), !dbg !888
  %75 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %72, i8* %58, i8* %74) #10, !dbg !888
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %41) #10, !dbg !889
  br label %76

; <label>:76:                                     ; preds = %69, %4
  tail call void @exit(i32 %0) #15, !dbg !890
  unreachable, !dbg !890
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare i8* @dcgettext(i8*, i8*, i32) local_unnamed_addr #2

declare i32 @__fprintf_chk(%struct._IO_FILE*, i32, i8*, ...) local_unnamed_addr #3

declare i32 @__printf_chk(i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @fputs_unlocked(i8* nocapture readonly, %struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #4

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1) #4

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) local_unnamed_addr #5

; Function Attrs: nounwind
declare i8* @setlocale(i32, i8*) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @strncmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #5

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #4

; Function Attrs: noreturn nounwind
declare void @exit(i32) local_unnamed_addr #6

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @main(i32, i8**) local_unnamed_addr #7 !dbg !891 {
  %3 = alloca [24 x i8], align 16
  call void @llvm.dbg.declare(metadata [24 x i8]* %3, metadata !158, metadata !DIExpression()), !dbg !921
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8, align 1
  %7 = alloca [24 x i8], align 16
  %8 = alloca i8, align 1
  call void @llvm.dbg.value(metadata i32 %0, metadata !896, metadata !DIExpression()), !dbg !923
  call void @llvm.dbg.value(metadata i8** %1, metadata !897, metadata !DIExpression()), !dbg !924
  %9 = getelementptr inbounds [24 x i8], [24 x i8]* %7, i64 0, i64 0, !dbg !925
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %9) #10, !dbg !925
  call void @llvm.dbg.declare(metadata [24 x i8]* %7, metadata !898, metadata !DIExpression()), !dbg !926
  call void @llvm.dbg.value(metadata i8* %9, metadata !927, metadata !DIExpression()), !dbg !937
  call void @llvm.dbg.value(metadata i64 4, metadata !934, metadata !DIExpression()), !dbg !939
  call void @llvm.dbg.value(metadata i8* %9, metadata !935, metadata !DIExpression()), !dbg !940
  %10 = getelementptr inbounds [24 x i8], [24 x i8]* %7, i64 0, i64 3, !dbg !941
  call void @llvm.dbg.value(metadata i8* %10, metadata !936, metadata !DIExpression()), !dbg !942
  %11 = ptrtoint i8* %10 to i64, !dbg !943
  %12 = and i64 %11, 3, !dbg !944
  %13 = sub nsw i64 0, %12, !dbg !945
  %14 = getelementptr inbounds i8, i8* %10, i64 %13, !dbg !945
  call void @llvm.dbg.value(metadata i8* %14, metadata !899, metadata !DIExpression()), !dbg !946
  call void @llvm.dbg.value(metadata i8 0, metadata !900, metadata !DIExpression()), !dbg !947
  call void @llvm.dbg.value(metadata i8 1, metadata !902, metadata !DIExpression()), !dbg !948
  call void @llvm.dbg.value(metadata i32 -1, metadata !903, metadata !DIExpression()), !dbg !949
  call void @llvm.dbg.value(metadata i8 0, metadata !904, metadata !DIExpression()), !dbg !950
  %15 = load i8*, i8** %1, align 8, !dbg !951, !tbaa !835
  call void @set_program_name(i8* %15) #10, !dbg !952
  %16 = call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.14, i64 0, i64 0)) #10, !dbg !953
  %17 = call i8* @bindtextdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.16, i64 0, i64 0)) #10, !dbg !954
  %18 = call i8* @textdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i64 0, i64 0)) #10, !dbg !955
  %19 = call i32 @atexit(void ()* nonnull @close_stdout) #10, !dbg !956
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !957, !tbaa !835
  %21 = call i32 @setvbuf(%struct._IO_FILE* %20, i8* null, i32 1, i64 0) #10, !dbg !958
  br label %22, !dbg !959

; <label>:22:                                     ; preds = %27, %2
  %23 = phi i32 [ -1, %2 ], [ %28, %27 ], !dbg !949
  %24 = phi i8 [ 0, %2 ], [ %29, %27 ], !dbg !950
  %25 = phi i8 [ 0, %2 ], [ %30, %27 ], !dbg !947
  call void @llvm.dbg.value(metadata i8 %25, metadata !900, metadata !DIExpression()), !dbg !947
  call void @llvm.dbg.value(metadata i8 %24, metadata !904, metadata !DIExpression()), !dbg !950
  call void @llvm.dbg.value(metadata i32 %23, metadata !903, metadata !DIExpression()), !dbg !949
  %26 = call i32 @getopt_long(i32 %0, i8** %1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i64 0, i64 0), %struct.option* getelementptr inbounds ([13 x %struct.option], [13 x %struct.option]* @long_options, i64 0, i64 0), i32* null) #10, !dbg !960
  call void @llvm.dbg.value(metadata i32 %26, metadata !901, metadata !DIExpression()), !dbg !961
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
  ], !dbg !959

; <label>:27:                                     ; preds = %22, %39, %38, %37, %36, %35, %34, %33, %32, %31
  %28 = phi i32 [ %23, %39 ], [ 1, %38 ], [ %23, %37 ], [ %23, %36 ], [ %23, %35 ], [ %23, %34 ], [ 0, %33 ], [ %23, %32 ], [ %23, %31 ], [ 1, %22 ]
  %29 = phi i8 [ %24, %39 ], [ 1, %38 ], [ %24, %37 ], [ %24, %36 ], [ %24, %35 ], [ %24, %34 ], [ %24, %33 ], [ %24, %32 ], [ %24, %31 ], [ %24, %22 ]
  %30 = phi i8 [ %25, %39 ], [ %25, %38 ], [ %25, %37 ], [ %25, %36 ], [ %25, %35 ], [ %25, %34 ], [ %25, %33 ], [ %25, %32 ], [ 1, %31 ], [ %25, %22 ]
  br label %22, !dbg !947, !llvm.loop !962

; <label>:31:                                     ; preds = %22
  call void @llvm.dbg.value(metadata i8 1, metadata !900, metadata !DIExpression()), !dbg !947
  br label %27, !dbg !964

; <label>:32:                                     ; preds = %22
  store i1 true, i1* @status_only, align 1
  store i1 false, i1* @warn, align 1
  store i1 false, i1* @quiet, align 1
  br label %27, !dbg !966

; <label>:33:                                     ; preds = %22
  call void @llvm.dbg.value(metadata i32 0, metadata !903, metadata !DIExpression()), !dbg !949
  br label %27, !dbg !967

; <label>:34:                                     ; preds = %22
  store i1 false, i1* @status_only, align 1
  store i1 true, i1* @warn, align 1
  store i1 false, i1* @quiet, align 1
  br label %27, !dbg !968

; <label>:35:                                     ; preds = %22
  store i1 true, i1* @ignore_missing, align 1
  br label %27, !dbg !969

; <label>:36:                                     ; preds = %22
  store i1 false, i1* @status_only, align 1
  store i1 false, i1* @warn, align 1
  store i1 true, i1* @quiet, align 1
  br label %27, !dbg !970

; <label>:37:                                     ; preds = %22
  store i1 true, i1* @strict, align 1
  br label %27, !dbg !971

; <label>:38:                                     ; preds = %22
  call void @llvm.dbg.value(metadata i8 1, metadata !904, metadata !DIExpression()), !dbg !950
  call void @llvm.dbg.value(metadata i32 1, metadata !903, metadata !DIExpression()), !dbg !949
  br label %27, !dbg !972

; <label>:39:                                     ; preds = %22
  store i1 true, i1* @delim, align 1
  br label %27, !dbg !973

; <label>:40:                                     ; preds = %22
  call void @usage(i32 0) #16, !dbg !974
  unreachable, !dbg !974

; <label>:41:                                     ; preds = %22
  %42 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !975, !tbaa !835
  %43 = load i8*, i8** @Version, align 8, !dbg !975, !tbaa !835
  call void (%struct._IO_FILE*, i8*, i8*, i8*, ...) @version_etc(%struct._IO_FILE* %42, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.18, i64 0, i64 0), i8* %43, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.19, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.20, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.21, i64 0, i64 0), i8* null) #10, !dbg !975
  call void @exit(i32 0) #15, !dbg !975
  unreachable, !dbg !975

; <label>:44:                                     ; preds = %22
  call void @usage(i32 1) #16, !dbg !976
  unreachable, !dbg !976

; <label>:45:                                     ; preds = %22
  call void @llvm.dbg.value(metadata i32 %23, metadata !903, metadata !DIExpression()), !dbg !949
  call void @llvm.dbg.value(metadata i8 %24, metadata !904, metadata !DIExpression()), !dbg !950
  call void @llvm.dbg.value(metadata i8 %25, metadata !900, metadata !DIExpression()), !dbg !947
  call void @llvm.dbg.value(metadata i32 %23, metadata !903, metadata !DIExpression()), !dbg !949
  call void @llvm.dbg.value(metadata i8 %24, metadata !904, metadata !DIExpression()), !dbg !950
  call void @llvm.dbg.value(metadata i8 %25, metadata !900, metadata !DIExpression()), !dbg !947
  call void @llvm.dbg.value(metadata i32 %23, metadata !903, metadata !DIExpression()), !dbg !949
  call void @llvm.dbg.value(metadata i8 %24, metadata !904, metadata !DIExpression()), !dbg !950
  call void @llvm.dbg.value(metadata i8 %25, metadata !900, metadata !DIExpression()), !dbg !947
  call void @llvm.dbg.value(metadata i32 %23, metadata !903, metadata !DIExpression()), !dbg !949
  call void @llvm.dbg.value(metadata i8 %24, metadata !904, metadata !DIExpression()), !dbg !950
  call void @llvm.dbg.value(metadata i8 %25, metadata !900, metadata !DIExpression()), !dbg !947
  call void @llvm.dbg.value(metadata i32 %23, metadata !903, metadata !DIExpression()), !dbg !949
  call void @llvm.dbg.value(metadata i8 %24, metadata !904, metadata !DIExpression()), !dbg !950
  call void @llvm.dbg.value(metadata i8 %25, metadata !900, metadata !DIExpression()), !dbg !947
  call void @llvm.dbg.value(metadata i32 %23, metadata !903, metadata !DIExpression()), !dbg !949
  call void @llvm.dbg.value(metadata i8 %24, metadata !904, metadata !DIExpression()), !dbg !950
  call void @llvm.dbg.value(metadata i8 %25, metadata !900, metadata !DIExpression()), !dbg !947
  store i1 true, i1* @min_digest_line_length, align 8
  store i1 true, i1* @digest_hex_bytes, align 8
  %46 = icmp ne i8 %24, 0, !dbg !977
  %47 = xor i1 %46, true, !dbg !979
  %48 = icmp ne i32 %23, 0, !dbg !980
  %49 = or i1 %48, %47, !dbg !979
  br i1 %49, label %52, label %50, !dbg !979

; <label>:50:                                     ; preds = %45
  %51 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.22, i64 0, i64 0), i32 5) #10, !dbg !981
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %51) #10, !dbg !983
  call void @usage(i32 1) #16, !dbg !984
  unreachable, !dbg !984

; <label>:52:                                     ; preds = %45
  %53 = load i1, i1* @delim, align 1
  %54 = xor i1 %53, true, !dbg !985
  %55 = icmp eq i8 %25, 0, !dbg !987
  %56 = or i1 %55, %54, !dbg !985
  br i1 %56, label %59, label %57, !dbg !985

; <label>:57:                                     ; preds = %52
  %58 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.23, i64 0, i64 0), i32 5) #10, !dbg !988
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %58) #10, !dbg !990
  call void @usage(i32 1) #16, !dbg !991
  unreachable, !dbg !991

; <label>:59:                                     ; preds = %52
  %60 = or i1 %55, %47, !dbg !992
  br i1 %60, label %63, label %61, !dbg !992

; <label>:61:                                     ; preds = %59
  %62 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.24, i64 0, i64 0), i32 5) #10, !dbg !994
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %62) #10, !dbg !996
  call void @usage(i32 1) #16, !dbg !997
  unreachable, !dbg !997

; <label>:63:                                     ; preds = %59
  %64 = icmp slt i32 %23, 0, !dbg !998
  %65 = or i1 %64, %55, !dbg !1000
  br i1 %65, label %68, label %66, !dbg !1000

; <label>:66:                                     ; preds = %63
  %67 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.25, i64 0, i64 0), i32 5) #10, !dbg !1001
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %67) #10, !dbg !1003
  call void @usage(i32 1) #16, !dbg !1004
  unreachable, !dbg !1004

; <label>:68:                                     ; preds = %63
  %69 = load i1, i1* @ignore_missing, align 1
  %70 = and i1 %55, %69, !dbg !1005
  br i1 %70, label %71, label %73, !dbg !1005

; <label>:71:                                     ; preds = %68
  %72 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.26, i64 0, i64 0), i32 5) #10, !dbg !1007
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %72) #10, !dbg !1009
  call void @usage(i32 1) #16, !dbg !1010
  unreachable, !dbg !1010

; <label>:73:                                     ; preds = %68
  %74 = load i1, i1* @status_only, align 1
  %75 = and i1 %55, %74, !dbg !1011
  br i1 %75, label %76, label %78, !dbg !1011

; <label>:76:                                     ; preds = %73
  %77 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.27, i64 0, i64 0), i32 5) #10, !dbg !1013
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %77) #10, !dbg !1015
  call void @usage(i32 1) #16, !dbg !1016
  unreachable, !dbg !1016

; <label>:78:                                     ; preds = %73
  %79 = load i1, i1* @warn, align 1
  %80 = and i1 %55, %79, !dbg !1017
  br i1 %80, label %81, label %83, !dbg !1017

; <label>:81:                                     ; preds = %78
  %82 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.28, i64 0, i64 0), i32 5) #10, !dbg !1019
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %82) #10, !dbg !1021
  call void @usage(i32 1) #16, !dbg !1022
  unreachable, !dbg !1022

; <label>:83:                                     ; preds = %78
  %84 = load i1, i1* @quiet, align 1
  %85 = and i1 %55, %84, !dbg !1023
  br i1 %85, label %86, label %88, !dbg !1023

; <label>:86:                                     ; preds = %83
  %87 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.29, i64 0, i64 0), i32 5) #10, !dbg !1025
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %87) #10, !dbg !1027
  call void @usage(i32 1) #16, !dbg !1028
  unreachable, !dbg !1028

; <label>:88:                                     ; preds = %83
  %89 = load i1, i1* @strict, align 1
  %90 = icmp ne i8 %25, 0, !dbg !1029
  %91 = xor i1 %90, true, !dbg !1031
  %92 = and i1 %89, %91, !dbg !1032
  br i1 %92, label %93, label %95, !dbg !1033

; <label>:93:                                     ; preds = %88
  %94 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.30, i64 0, i64 0), i32 5) #10, !dbg !1034
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %94) #10, !dbg !1036
  call void @usage(i32 1) #16, !dbg !1037
  unreachable, !dbg !1037

; <label>:95:                                     ; preds = %88
  %96 = icmp slt i32 %23, 1, !dbg !1038
  %97 = sext i32 %0 to i64, !dbg !1039
  %98 = getelementptr inbounds i8*, i8** %1, i64 %97, !dbg !1039
  call void @llvm.dbg.value(metadata i8** %98, metadata !906, metadata !DIExpression()), !dbg !1040
  %99 = load i32, i32* @optind, align 4, !dbg !1041, !tbaa !1043
  %100 = icmp eq i32 %99, %0, !dbg !1045
  br i1 %100, label %101, label %103, !dbg !1046

; <label>:101:                                    ; preds = %95
  %102 = getelementptr inbounds i8*, i8** %98, i64 1, !dbg !1047
  call void @llvm.dbg.value(metadata i8** %102, metadata !906, metadata !DIExpression()), !dbg !1040
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.31, i64 0, i64 0), i8** %98, align 8, !dbg !1048, !tbaa !835
  br label %103, !dbg !1049

; <label>:103:                                    ; preds = %101, %95
  %104 = phi i8** [ %102, %101 ], [ %98, %95 ], !dbg !1050
  call void @llvm.dbg.value(metadata i8** %104, metadata !906, metadata !DIExpression()), !dbg !1040
  %105 = sext i32 %99 to i64, !dbg !1051
  %106 = getelementptr inbounds i8*, i8** %1, i64 %105, !dbg !1051
  call void @llvm.dbg.value(metadata i8** %106, metadata !907, metadata !DIExpression()), !dbg !1052
  call void @llvm.dbg.value(metadata i8 1, metadata !902, metadata !DIExpression()), !dbg !948
  %107 = icmp ult i8** %106, %104, !dbg !1053
  br i1 %107, label %108, label %119, !dbg !1054

; <label>:108:                                    ; preds = %103
  %109 = getelementptr inbounds [24 x i8], [24 x i8]* %3, i64 0, i64 0
  %110 = getelementptr inbounds [24 x i8], [24 x i8]* %3, i64 0, i64 3
  %111 = ptrtoint i8* %110 to i64
  %112 = and i64 %111, 3
  %113 = sub nsw i64 0, %112
  %114 = getelementptr inbounds i8, i8* %110, i64 %113
  %115 = bitcast i8** %4 to i8*
  %116 = bitcast i64* %5 to i8*
  %117 = select i1 %96, i32 32, i32 42
  %118 = trunc i32 %117 to i8
  br label %122, !dbg !1054

; <label>:119:                                    ; preds = %668, %103
  %120 = phi i8 [ 1, %103 ], [ %669, %668 ], !dbg !1055
  call void @llvm.dbg.value(metadata i8 %120, metadata !902, metadata !DIExpression()), !dbg !948
  %121 = load i1, i1* @have_read_stdin, align 1
  br i1 %121, label %672, label %680, !dbg !1056

; <label>:122:                                    ; preds = %108, %668
  %123 = phi i8** [ %106, %108 ], [ %670, %668 ]
  %124 = phi i8 [ 1, %108 ], [ %669, %668 ]
  call void @llvm.dbg.value(metadata i8** %123, metadata !907, metadata !DIExpression()), !dbg !1052
  call void @llvm.dbg.value(metadata i8 %124, metadata !902, metadata !DIExpression()), !dbg !948
  %125 = load i8*, i8** %123, align 8, !dbg !1058, !tbaa !835
  call void @llvm.dbg.value(metadata i8* %125, metadata !909, metadata !DIExpression()), !dbg !1059
  br i1 %90, label %126, label %572, !dbg !1060

; <label>:126:                                    ; preds = %122
  call void @llvm.dbg.value(metadata i8* %125, metadata !96, metadata !DIExpression()) #10, !dbg !1061
  call void @llvm.dbg.value(metadata i64 0, metadata !152, metadata !DIExpression()) #10, !dbg !1062
  call void @llvm.dbg.value(metadata i64 0, metadata !153, metadata !DIExpression()) #10, !dbg !1063
  call void @llvm.dbg.value(metadata i64 0, metadata !154, metadata !DIExpression()) #10, !dbg !1064
  call void @llvm.dbg.value(metadata i64 0, metadata !155, metadata !DIExpression()) #10, !dbg !1065
  call void @llvm.dbg.value(metadata i8 0, metadata !156, metadata !DIExpression()) #10, !dbg !1066
  call void @llvm.dbg.value(metadata i8 0, metadata !157, metadata !DIExpression()) #10, !dbg !1067
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %109) #10, !dbg !1068
  call void @llvm.dbg.value(metadata i8* %109, metadata !927, metadata !DIExpression()) #10, !dbg !1069
  call void @llvm.dbg.value(metadata i64 4, metadata !934, metadata !DIExpression()) #10, !dbg !1071
  call void @llvm.dbg.value(metadata i8* %109, metadata !935, metadata !DIExpression()) #10, !dbg !1072
  call void @llvm.dbg.value(metadata i8* %110, metadata !936, metadata !DIExpression()) #10, !dbg !1073
  call void @llvm.dbg.value(metadata i8* %114, metadata !162, metadata !DIExpression()) #10, !dbg !1074
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %115) #10, !dbg !1075
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %116) #10, !dbg !1076
  %127 = call i32 @strcmp(i8* %125, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.31, i64 0, i64 0)) #14, !dbg !1077
  %128 = icmp eq i32 %127, 0, !dbg !1077
  br i1 %128, label %129, label %132, !dbg !1078

; <label>:129:                                    ; preds = %126
  store i1 true, i1* @have_read_stdin, align 1
  %130 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.35, i64 0, i64 0), i32 5) #10, !dbg !1079
  call void @llvm.dbg.value(metadata i8* %130, metadata !96, metadata !DIExpression()) #10, !dbg !1061
  %131 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !1082, !tbaa !835
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %131, metadata !97, metadata !DIExpression()) #10, !dbg !1083
  br label %139, !dbg !1084

; <label>:132:                                    ; preds = %126
  %133 = call %struct._IO_FILE* @fopen_safer(i8* %125, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.64, i64 0, i64 0)) #10, !dbg !1085
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %133, metadata !97, metadata !DIExpression()) #10, !dbg !1083
  %134 = icmp eq %struct._IO_FILE* %133, null, !dbg !1087
  br i1 %134, label %135, label %139, !dbg !1089

; <label>:135:                                    ; preds = %132
  %136 = tail call i32* @__errno_location() #17, !dbg !1090
  %137 = load i32, i32* %136, align 4, !dbg !1090, !tbaa !1043
  %138 = call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %125) #10, !dbg !1092
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %137, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.65, i64 0, i64 0), i8* %138) #10, !dbg !1093
  br label %568, !dbg !1094

; <label>:139:                                    ; preds = %132, %129
  %140 = phi %struct._IO_FILE* [ %131, %129 ], [ %133, %132 ], !dbg !1095
  %141 = phi i8* [ %130, %129 ], [ %125, %132 ]
  call void @llvm.dbg.value(metadata i8* %141, metadata !96, metadata !DIExpression()) #10, !dbg !1061
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %140, metadata !97, metadata !DIExpression()) #10, !dbg !1083
  call void @llvm.dbg.value(metadata i64 0, metadata !163, metadata !DIExpression()) #10, !dbg !1096
  call void @llvm.dbg.value(metadata i8* null, metadata !164, metadata !DIExpression()) #10, !dbg !1097
  store i8* null, i8** %4, align 8, !dbg !1098, !tbaa !835
  call void @llvm.dbg.value(metadata i64 0, metadata !165, metadata !DIExpression()) #10, !dbg !1099
  store i64 0, i64* %5, align 8, !dbg !1100, !tbaa !1101
  %142 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %140, i64 0, i32 0
  br label %143, !dbg !1103

; <label>:143:                                    ; preds = %495, %139
  %144 = phi i8 [ 0, %139 ], [ %496, %495 ], !dbg !1067
  %145 = phi i64 [ 0, %139 ], [ %151, %495 ], !dbg !1104
  %146 = phi i8 [ 0, %139 ], [ %497, %495 ], !dbg !1066
  %147 = phi i64 [ 0, %139 ], [ %498, %495 ], !dbg !1065
  %148 = phi i64 [ 0, %139 ], [ %499, %495 ], !dbg !1064
  %149 = phi i64 [ 0, %139 ], [ %500, %495 ], !dbg !1063
  %150 = phi i64 [ 0, %139 ], [ %501, %495 ], !dbg !1062
  call void @llvm.dbg.value(metadata i64 %150, metadata !152, metadata !DIExpression()) #10, !dbg !1062
  call void @llvm.dbg.value(metadata i64 %149, metadata !153, metadata !DIExpression()) #10, !dbg !1063
  call void @llvm.dbg.value(metadata i64 %148, metadata !154, metadata !DIExpression()) #10, !dbg !1064
  call void @llvm.dbg.value(metadata i64 %147, metadata !155, metadata !DIExpression()) #10, !dbg !1065
  call void @llvm.dbg.value(metadata i8 %146, metadata !156, metadata !DIExpression()) #10, !dbg !1066
  call void @llvm.dbg.value(metadata i64 %145, metadata !163, metadata !DIExpression()) #10, !dbg !1096
  call void @llvm.dbg.value(metadata i8 %144, metadata !157, metadata !DIExpression()) #10, !dbg !1067
  %151 = add i64 %145, 1, !dbg !1105
  call void @llvm.dbg.value(metadata i64 %151, metadata !163, metadata !DIExpression()) #10, !dbg !1096
  %152 = icmp eq i64 %151, 0, !dbg !1106
  br i1 %152, label %153, label %156, !dbg !1108

; <label>:153:                                    ; preds = %143
  call void @llvm.dbg.value(metadata i8* %141, metadata !96, metadata !DIExpression()) #10, !dbg !1061
  call void @llvm.dbg.value(metadata i8* %141, metadata !96, metadata !DIExpression()) #10, !dbg !1061
  call void @llvm.dbg.value(metadata i8* %141, metadata !96, metadata !DIExpression()) #10, !dbg !1061
  call void @llvm.dbg.value(metadata i8* %141, metadata !96, metadata !DIExpression()) #10, !dbg !1061
  call void @llvm.dbg.value(metadata i8* %141, metadata !96, metadata !DIExpression()) #10, !dbg !1061
  call void @llvm.dbg.value(metadata i8* %141, metadata !96, metadata !DIExpression()) #10, !dbg !1061
  %154 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.66, i64 0, i64 0), i32 5) #10, !dbg !1109
  %155 = call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %141) #10, !dbg !1109
  call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %154, i8* %155) #10, !dbg !1109
  unreachable, !dbg !1109

; <label>:156:                                    ; preds = %143
  call void @llvm.dbg.value(metadata i8** %4, metadata !164, metadata !DIExpression(DW_OP_deref)) #10, !dbg !1097
  call void @llvm.dbg.value(metadata i64* %5, metadata !165, metadata !DIExpression(DW_OP_deref)) #10, !dbg !1099
  call void @llvm.dbg.value(metadata i8** %4, metadata !1110, metadata !DIExpression()) #10, !dbg !1118
  call void @llvm.dbg.value(metadata i64* %5, metadata !1116, metadata !DIExpression()) #10, !dbg !1120
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %140, metadata !1117, metadata !DIExpression()) #10, !dbg !1121
  %157 = call i64 @__getdelim(i8** nonnull %4, i64* nonnull %5, i32 10, %struct._IO_FILE* %140) #10, !dbg !1122
  call void @llvm.dbg.value(metadata i64 %157, metadata !171, metadata !DIExpression()) #10, !dbg !1123
  %158 = icmp slt i64 %157, 1, !dbg !1124
  br i1 %158, label %505, label %159, !dbg !1126

; <label>:159:                                    ; preds = %156
  %160 = load i8*, i8** %4, align 8, !dbg !1127, !tbaa !835
  call void @llvm.dbg.value(metadata i8* %160, metadata !164, metadata !DIExpression()) #10, !dbg !1097
  %161 = load i8, i8* %160, align 1, !dbg !1127, !tbaa !1129
  %162 = icmp eq i8 %161, 35, !dbg !1130
  br i1 %162, label %495, label %163, !dbg !1131

; <label>:163:                                    ; preds = %159
  %164 = add nsw i64 %157, -1, !dbg !1132
  %165 = getelementptr inbounds i8, i8* %160, i64 %164, !dbg !1134
  %166 = load i8, i8* %165, align 1, !dbg !1134, !tbaa !1129
  %167 = icmp eq i8 %166, 10, !dbg !1135
  br i1 %167, label %168, label %170, !dbg !1136

; <label>:168:                                    ; preds = %163
  call void @llvm.dbg.value(metadata i64 %164, metadata !171, metadata !DIExpression()) #10, !dbg !1123
  store i8 0, i8* %165, align 1, !dbg !1137, !tbaa !1129
  %169 = load i8*, i8** %4, align 8, !dbg !1138, !tbaa !835
  br label %170, !dbg !1139

; <label>:170:                                    ; preds = %168, %163
  %171 = phi i8* [ %169, %168 ], [ %160, %163 ], !dbg !1138
  %172 = phi i64 [ %164, %168 ], [ %157, %163 ], !dbg !1104
  call void @llvm.dbg.value(metadata i64 %172, metadata !171, metadata !DIExpression()) #10, !dbg !1123
  call void @llvm.dbg.value(metadata i8* %171, metadata !164, metadata !DIExpression()) #10, !dbg !1097
  call void @llvm.dbg.value(metadata i8* %171, metadata !1140, metadata !DIExpression()) #10, !dbg !1153
  call void @llvm.dbg.value(metadata i64 %172, metadata !1146, metadata !DIExpression()) #10, !dbg !1155
  call void @llvm.dbg.value(metadata i8 0, metadata !1150, metadata !DIExpression()) #10, !dbg !1156
  call void @llvm.dbg.value(metadata i64 0, metadata !1152, metadata !DIExpression()) #10, !dbg !1157
  br label %173, !dbg !1158

; <label>:173:                                    ; preds = %177, %170
  %174 = phi i64 [ 0, %170 ], [ %178, %177 ], !dbg !1159
  call void @llvm.dbg.value(metadata i64 %174, metadata !1152, metadata !DIExpression()) #10, !dbg !1157
  %175 = getelementptr inbounds i8, i8* %171, i64 %174, !dbg !1160
  %176 = load i8, i8* %175, align 1, !dbg !1160, !tbaa !1129
  switch i8 %176, label %181 [
    i8 32, label %177
    i8 9, label %177
    i8 92, label %179
  ], !dbg !1160

; <label>:177:                                    ; preds = %173, %173
  %178 = add i64 %174, 1, !dbg !1161
  call void @llvm.dbg.value(metadata i64 %178, metadata !1152, metadata !DIExpression()) #10, !dbg !1157
  br label %173, !dbg !1158, !llvm.loop !1162

; <label>:179:                                    ; preds = %173
  call void @llvm.dbg.value(metadata i64 %174, metadata !1152, metadata !DIExpression()) #10, !dbg !1157
  call void @llvm.dbg.value(metadata i64 %174, metadata !1152, metadata !DIExpression()) #10, !dbg !1157
  call void @llvm.dbg.value(metadata i64 %174, metadata !1152, metadata !DIExpression()) #10, !dbg !1157
  call void @llvm.dbg.value(metadata i64 %174, metadata !1152, metadata !DIExpression()) #10, !dbg !1157
  call void @llvm.dbg.value(metadata i64 %174, metadata !1152, metadata !DIExpression()) #10, !dbg !1157
  call void @llvm.dbg.value(metadata i64 %174, metadata !1152, metadata !DIExpression()) #10, !dbg !1157
  call void @llvm.dbg.value(metadata i64 %174, metadata !1152, metadata !DIExpression()) #10, !dbg !1157
  call void @llvm.dbg.value(metadata i64 %174, metadata !1152, metadata !DIExpression()) #10, !dbg !1157
  call void @llvm.dbg.value(metadata i64 %174, metadata !1152, metadata !DIExpression()) #10, !dbg !1157
  call void @llvm.dbg.value(metadata i64 %174, metadata !1152, metadata !DIExpression()) #10, !dbg !1157
  call void @llvm.dbg.value(metadata i64 %174, metadata !1152, metadata !DIExpression()) #10, !dbg !1157
  call void @llvm.dbg.value(metadata i64 %174, metadata !1152, metadata !DIExpression()) #10, !dbg !1157
  %180 = add i64 %174, 1, !dbg !1165
  call void @llvm.dbg.value(metadata i64 %180, metadata !1152, metadata !DIExpression()) #10, !dbg !1157
  call void @llvm.dbg.value(metadata i8 1, metadata !1150, metadata !DIExpression()) #10, !dbg !1156
  br label %181, !dbg !1168

; <label>:181:                                    ; preds = %173, %179
  %182 = phi i64 [ %180, %179 ], [ %174, %173 ]
  %183 = phi i1 [ true, %179 ], [ false, %173 ]
  %184 = getelementptr inbounds i8, i8* %171, i64 %182, !dbg !1169
  call void @llvm.dbg.value(metadata i64 %182, metadata !1152, metadata !DIExpression()) #10, !dbg !1157
  call void @llvm.dbg.value(metadata i64 4, metadata !1151, metadata !DIExpression()) #10, !dbg !1171
  %185 = call i32 @strncmp(i8* %184, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i64 4) #14, !dbg !1169
  %186 = icmp eq i32 %185, 0, !dbg !1169
  br i1 %186, label %187, label %281, !dbg !1172

; <label>:187:                                    ; preds = %181
  %188 = add i64 %182, 4, !dbg !1173
  call void @llvm.dbg.value(metadata i64 %188, metadata !1152, metadata !DIExpression()) #10, !dbg !1157
  %189 = getelementptr inbounds i8, i8* %171, i64 %188, !dbg !1175
  %190 = load i8, i8* %189, align 1, !dbg !1175, !tbaa !1129
  %191 = icmp eq i8 %190, 32, !dbg !1177
  %192 = add i64 %182, 5, !dbg !1178
  %193 = select i1 %191, i64 %192, i64 %188, !dbg !1179
  call void @llvm.dbg.value(metadata i64 %193, metadata !1152, metadata !DIExpression()) #10, !dbg !1157
  %194 = getelementptr inbounds i8, i8* %171, i64 %193, !dbg !1180
  %195 = load i8, i8* %194, align 1, !dbg !1180, !tbaa !1129
  %196 = icmp eq i8 %195, 40, !dbg !1182
  br i1 %196, label %197, label %381, !dbg !1183

; <label>:197:                                    ; preds = %187
  %198 = add i64 %193, 1, !dbg !1184
  call void @llvm.dbg.value(metadata i64 %198, metadata !1152, metadata !DIExpression()) #10, !dbg !1157
  %199 = getelementptr inbounds i8, i8* %171, i64 %198, !dbg !1186
  %200 = sub i64 %172, %198, !dbg !1187
  call void @llvm.dbg.value(metadata i8* %199, metadata !1188, metadata !DIExpression()) #10, !dbg !1198
  call void @llvm.dbg.value(metadata i64 %200, metadata !1193, metadata !DIExpression()) #10, !dbg !1200
  call void @llvm.dbg.value(metadata i1 %183, metadata !1196, metadata !DIExpression()) #10, !dbg !1201
  %201 = icmp eq i64 %200, 0, !dbg !1202
  br i1 %201, label %381, label %202, !dbg !1204

; <label>:202:                                    ; preds = %197, %206
  %203 = phi i64 [ %204, %206 ], [ %200, %197 ]
  %204 = add i64 %203, -1, !dbg !1205
  call void @llvm.dbg.value(metadata i64 %204, metadata !1197, metadata !DIExpression()) #10, !dbg !1206
  %205 = icmp eq i64 %204, 0, !dbg !1207
  br i1 %205, label %210, label %206, !dbg !1208

; <label>:206:                                    ; preds = %202
  %207 = getelementptr inbounds i8, i8* %199, i64 %204, !dbg !1209
  %208 = load i8, i8* %207, align 1, !dbg !1209, !tbaa !1129
  %209 = icmp eq i8 %208, 41, !dbg !1210
  br i1 %209, label %213, label %202, !dbg !1211, !llvm.loop !1212

; <label>:210:                                    ; preds = %202
  %211 = load i8, i8* %199, align 1, !dbg !1215, !tbaa !1129
  %212 = icmp eq i8 %211, 41, !dbg !1208
  br i1 %212, label %215, label %381, !dbg !1217

; <label>:213:                                    ; preds = %206
  %214 = getelementptr inbounds i8, i8* %199, i64 %204, !dbg !1209
  br label %215, !dbg !1218

; <label>:215:                                    ; preds = %213, %210
  %216 = phi i8* [ %199, %210 ], [ %214, %213 ]
  %217 = phi i1 [ true, %210 ], [ false, %213 ]
  br i1 %183, label %218, label %245, !dbg !1218

; <label>:218:                                    ; preds = %215
  call void @llvm.dbg.value(metadata i8* %199, metadata !1220, metadata !DIExpression()) #10, !dbg !1229
  call void @llvm.dbg.value(metadata i64 %204, metadata !1225, metadata !DIExpression()) #10, !dbg !1231
  call void @llvm.dbg.value(metadata i8* %199, metadata !1226, metadata !DIExpression()) #10, !dbg !1232
  call void @llvm.dbg.value(metadata i64 0, metadata !1227, metadata !DIExpression()) #10, !dbg !1233
  br i1 %217, label %241, label %219, !dbg !1234

; <label>:219:                                    ; preds = %218
  %220 = add i64 %203, -2
  br label %221, !dbg !1234

; <label>:221:                                    ; preds = %235, %219
  %222 = phi i64 [ 0, %219 ], [ %239, %235 ]
  %223 = phi i8* [ %199, %219 ], [ %238, %235 ]
  call void @llvm.dbg.value(metadata i64 %222, metadata !1227, metadata !DIExpression()) #10, !dbg !1233
  call void @llvm.dbg.value(metadata i8* %223, metadata !1226, metadata !DIExpression()) #10, !dbg !1232
  %224 = getelementptr inbounds i8, i8* %199, i64 %222, !dbg !1235
  %225 = load i8, i8* %224, align 1, !dbg !1235, !tbaa !1129
  %226 = sext i8 %225 to i32, !dbg !1235
  switch i32 %226, label %235 [
    i32 92, label %227
    i32 0, label %381
  ], !dbg !1238

; <label>:227:                                    ; preds = %221
  %228 = icmp eq i64 %222, %220, !dbg !1239
  br i1 %228, label %381, label %229, !dbg !1242

; <label>:229:                                    ; preds = %227
  %230 = add i64 %222, 1, !dbg !1243
  call void @llvm.dbg.value(metadata i64 %230, metadata !1227, metadata !DIExpression()) #10, !dbg !1233
  %231 = getelementptr inbounds i8, i8* %199, i64 %230, !dbg !1244
  %232 = load i8, i8* %231, align 1, !dbg !1244, !tbaa !1129
  %233 = sext i8 %232 to i32, !dbg !1244
  switch i32 %233, label %381 [
    i32 110, label %235
    i32 92, label %234
  ], !dbg !1245

; <label>:234:                                    ; preds = %229
  call void @llvm.dbg.value(metadata i8* %223, metadata !1226, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)) #10, !dbg !1232
  br label %235, !dbg !1246

; <label>:235:                                    ; preds = %221, %229, %234
  %236 = phi i8 [ 92, %234 ], [ 10, %229 ], [ %225, %221 ]
  %237 = phi i64 [ %230, %234 ], [ %230, %229 ], [ %222, %221 ], !dbg !1248
  store i8 %236, i8* %223, align 1, !dbg !1249, !tbaa !1129
  %238 = getelementptr inbounds i8, i8* %223, i64 1, !dbg !1250
  call void @llvm.dbg.value(metadata i64 %237, metadata !1227, metadata !DIExpression()) #10, !dbg !1233
  %239 = add i64 %237, 1, !dbg !1251
  call void @llvm.dbg.value(metadata i64 %239, metadata !1227, metadata !DIExpression()) #10, !dbg !1233
  call void @llvm.dbg.value(metadata i8* %238, metadata !1226, metadata !DIExpression()) #10, !dbg !1232
  %240 = icmp ult i64 %239, %204, !dbg !1252
  br i1 %240, label %221, label %241, !dbg !1234, !llvm.loop !1253

; <label>:241:                                    ; preds = %235, %218
  %242 = phi i8* [ %199, %218 ], [ %238, %235 ], !dbg !1248
  call void @llvm.dbg.value(metadata i8* %242, metadata !1226, metadata !DIExpression()) #10, !dbg !1232
  %243 = icmp ult i8* %242, %216, !dbg !1256
  br i1 %243, label %244, label %245, !dbg !1258

; <label>:244:                                    ; preds = %241
  store i8 0, i8* %242, align 1, !dbg !1259, !tbaa !1129
  br label %245, !dbg !1260

; <label>:245:                                    ; preds = %244, %241, %215
  call void @llvm.dbg.value(metadata i64 %203, metadata !1197, metadata !DIExpression()) #10, !dbg !1206
  store i8 0, i8* %216, align 1, !dbg !1261, !tbaa !1129
  br label %246, !dbg !1262

; <label>:246:                                    ; preds = %250, %245
  %247 = phi i64 [ %203, %245 ], [ %251, %250 ], !dbg !1205
  call void @llvm.dbg.value(metadata i64 %247, metadata !1197, metadata !DIExpression()) #10, !dbg !1206
  %248 = getelementptr inbounds i8, i8* %199, i64 %247, !dbg !1263
  %249 = load i8, i8* %248, align 1, !dbg !1263, !tbaa !1129
  switch i8 %249, label %381 [
    i8 32, label %250
    i8 9, label %250
    i8 61, label %252
  ], !dbg !1263

; <label>:250:                                    ; preds = %246, %246
  %251 = add i64 %247, 1, !dbg !1264
  call void @llvm.dbg.value(metadata i64 %251, metadata !1197, metadata !DIExpression()) #10, !dbg !1206
  br label %246, !dbg !1262, !llvm.loop !1265

; <label>:252:                                    ; preds = %246, %257
  %253 = phi i64 [ %254, %257 ], [ %247, %246 ]
  %254 = add i64 %253, 1, !dbg !1205
  call void @llvm.dbg.value(metadata i64 %254, metadata !1197, metadata !DIExpression()) #10, !dbg !1206
  %255 = getelementptr inbounds i8, i8* %199, i64 %254, !dbg !1268
  %256 = load i8, i8* %255, align 1, !dbg !1268, !tbaa !1129
  switch i8 %256, label %258 [
    i8 32, label %257
    i8 9, label %257
  ], !dbg !1268

; <label>:257:                                    ; preds = %252, %252
  br label %252, !dbg !1205, !llvm.loop !1269

; <label>:258:                                    ; preds = %252
  %259 = getelementptr inbounds i8, i8* %199, i64 %254, !dbg !1268
  call void @llvm.dbg.value(metadata i8* %255, metadata !1272, metadata !DIExpression()) #10, !dbg !1280
  call void @llvm.dbg.value(metadata i32 0, metadata !1278, metadata !DIExpression()) #10, !dbg !1282
  %260 = load i1, i1* @digest_hex_bytes, align 8
  br i1 %260, label %261, label %372, !dbg !1283

; <label>:261:                                    ; preds = %258
  %262 = tail call i16** @__ctype_b_loc() #17, !dbg !1284
  %263 = load i16*, i16** %262, align 8, !tbaa !835
  br label %264, !dbg !1283

; <label>:264:                                    ; preds = %704, %261
  %265 = phi i8 [ %256, %261 ], [ %708, %704 ], !dbg !1284
  %266 = phi i32 [ 0, %261 ], [ %706, %704 ]
  %267 = phi i8* [ %259, %261 ], [ %705, %704 ]
  call void @llvm.dbg.value(metadata i32 %266, metadata !1278, metadata !DIExpression()) #10, !dbg !1282
  call void @llvm.dbg.value(metadata i8* %267, metadata !1272, metadata !DIExpression()) #10, !dbg !1280
  %268 = zext i8 %265 to i64, !dbg !1284
  %269 = getelementptr inbounds i16, i16* %263, i64 %268, !dbg !1284
  %270 = load i16, i16* %269, align 2, !dbg !1284, !tbaa !1288
  %271 = and i16 %270, 4096, !dbg !1284
  %272 = icmp eq i16 %271, 0, !dbg !1284
  br i1 %272, label %381, label %273, !dbg !1290

; <label>:273:                                    ; preds = %264
  %274 = getelementptr inbounds i8, i8* %267, i64 1, !dbg !1291
  call void @llvm.dbg.value(metadata i8* %274, metadata !1272, metadata !DIExpression()) #10, !dbg !1280
  %275 = load i8, i8* %274, align 1, !dbg !1205, !tbaa !1129
  call void @llvm.dbg.value(metadata i8* %274, metadata !1272, metadata !DIExpression()) #10, !dbg !1280
  %276 = zext i8 %275 to i64, !dbg !1284
  %277 = getelementptr inbounds i16, i16* %263, i64 %276, !dbg !1284
  %278 = load i16, i16* %277, align 2, !dbg !1284, !tbaa !1288
  %279 = and i16 %278, 4096, !dbg !1284
  %280 = icmp eq i16 %279, 0, !dbg !1284
  br i1 %280, label %381, label %704, !dbg !1290

; <label>:281:                                    ; preds = %181
  %282 = sub i64 %172, %182, !dbg !1292
  %283 = load i1, i1* @min_digest_line_length, align 8
  %284 = select i1 %283, i64 42, i64 0
  %285 = load i8, i8* %184, align 1, !dbg !1294, !tbaa !1129
  %286 = icmp eq i8 %285, 92, !dbg !1295
  %287 = zext i1 %286 to i64, !dbg !1296
  %288 = or i64 %284, %287, !dbg !1297
  %289 = icmp ult i64 %282, %288, !dbg !1298
  br i1 %289, label %381, label %290, !dbg !1299

; <label>:290:                                    ; preds = %281
  %291 = load i1, i1* @digest_hex_bytes, align 8
  %292 = select i1 %291, i64 40, i64 0
  %293 = add i64 %292, %182, !dbg !1300
  call void @llvm.dbg.value(metadata i64 %293, metadata !1152, metadata !DIExpression()) #10, !dbg !1157
  %294 = getelementptr inbounds i8, i8* %171, i64 %293, !dbg !1301
  %295 = load i8, i8* %294, align 1, !dbg !1301, !tbaa !1129
  switch i8 %295, label %381 [
    i8 32, label %296
    i8 9, label %296
  ], !dbg !1301

; <label>:296:                                    ; preds = %290, %290
  %297 = add i64 %293, 1, !dbg !1303
  call void @llvm.dbg.value(metadata i64 %297, metadata !1152, metadata !DIExpression()) #10, !dbg !1157
  store i8 0, i8* %294, align 1, !dbg !1304, !tbaa !1129
  call void @llvm.dbg.value(metadata i8* %184, metadata !1272, metadata !DIExpression()) #10, !dbg !1305
  call void @llvm.dbg.value(metadata i32 0, metadata !1278, metadata !DIExpression()) #10, !dbg !1308
  br i1 %291, label %298, label %318, !dbg !1309

; <label>:298:                                    ; preds = %296
  %299 = tail call i16** @__ctype_b_loc() #17, !dbg !1310
  %300 = load i16*, i16** %299, align 8, !tbaa !835
  br label %301, !dbg !1309

; <label>:301:                                    ; preds = %700, %298
  %302 = phi i32 [ 0, %298 ], [ %702, %700 ]
  %303 = phi i8* [ %184, %298 ], [ %701, %700 ]
  call void @llvm.dbg.value(metadata i32 %302, metadata !1278, metadata !DIExpression()) #10, !dbg !1308
  call void @llvm.dbg.value(metadata i8* %303, metadata !1272, metadata !DIExpression()) #10, !dbg !1305
  %304 = load i8, i8* %303, align 1, !dbg !1310, !tbaa !1129
  %305 = zext i8 %304 to i64, !dbg !1310
  %306 = getelementptr inbounds i16, i16* %300, i64 %305, !dbg !1310
  %307 = load i16, i16* %306, align 2, !dbg !1310, !tbaa !1288
  %308 = and i16 %307, 4096, !dbg !1310
  %309 = icmp eq i16 %308, 0, !dbg !1310
  br i1 %309, label %381, label %310, !dbg !1311

; <label>:310:                                    ; preds = %301
  %311 = getelementptr inbounds i8, i8* %303, i64 1, !dbg !1312
  call void @llvm.dbg.value(metadata i8* %311, metadata !1272, metadata !DIExpression()) #10, !dbg !1305
  call void @llvm.dbg.value(metadata i8* %311, metadata !1272, metadata !DIExpression()) #10, !dbg !1305
  %312 = load i8, i8* %311, align 1, !dbg !1310, !tbaa !1129
  %313 = zext i8 %312 to i64, !dbg !1310
  %314 = getelementptr inbounds i16, i16* %300, i64 %313, !dbg !1310
  %315 = load i16, i16* %314, align 2, !dbg !1310, !tbaa !1288
  %316 = and i16 %315, 4096, !dbg !1310
  %317 = icmp eq i16 %316, 0, !dbg !1310
  br i1 %317, label %381, label %684, !dbg !1311

; <label>:318:                                    ; preds = %700, %296
  %319 = phi i8* [ %184, %296 ], [ %701, %700 ]
  call void @llvm.dbg.value(metadata i8* %319, metadata !1272, metadata !DIExpression()) #10, !dbg !1305
  %320 = load i8, i8* %319, align 1, !dbg !1313, !tbaa !1129
  %321 = icmp eq i8 %320, 0, !dbg !1314
  br i1 %321, label %322, label %381, !dbg !1315

; <label>:322:                                    ; preds = %318
  %323 = sub i64 %172, %297, !dbg !1316
  %324 = icmp eq i64 %323, 1, !dbg !1318
  br i1 %324, label %328, label %325, !dbg !1319

; <label>:325:                                    ; preds = %322
  %326 = getelementptr inbounds i8, i8* %171, i64 %297, !dbg !1320
  %327 = load i8, i8* %326, align 1, !dbg !1320, !tbaa !1129
  switch i8 %327, label %328 [
    i8 32, label %332
    i8 42, label %332
  ], !dbg !1321

; <label>:328:                                    ; preds = %325, %322
  %329 = load i32, i32* @bsd_reversed, align 4, !dbg !1322, !tbaa !1043
  %330 = icmp eq i32 %329, 0, !dbg !1325
  br i1 %330, label %381, label %331, !dbg !1326

; <label>:331:                                    ; preds = %328
  store i32 1, i32* @bsd_reversed, align 4, !dbg !1327, !tbaa !1043
  br label %337, !dbg !1328

; <label>:332:                                    ; preds = %325, %325
  %333 = load i32, i32* @bsd_reversed, align 4, !dbg !1329, !tbaa !1043
  %334 = icmp eq i32 %333, 1, !dbg !1331
  br i1 %334, label %337, label %335, !dbg !1332

; <label>:335:                                    ; preds = %332
  store i32 0, i32* @bsd_reversed, align 4, !dbg !1333, !tbaa !1043
  %336 = add i64 %293, 2, !dbg !1335
  call void @llvm.dbg.value(metadata i64 %336, metadata !1152, metadata !DIExpression()) #10, !dbg !1157
  br label %337, !dbg !1336

; <label>:337:                                    ; preds = %335, %332, %331
  %338 = phi i64 [ %297, %331 ], [ %336, %335 ], [ %297, %332 ], !dbg !1159
  call void @llvm.dbg.value(metadata i64 %338, metadata !1152, metadata !DIExpression()) #10, !dbg !1157
  %339 = getelementptr inbounds i8, i8* %171, i64 %338, !dbg !1337
  br i1 %183, label %340, label %375, !dbg !1338

; <label>:340:                                    ; preds = %337
  %341 = sub i64 %172, %338, !dbg !1339
  call void @llvm.dbg.value(metadata i8* %339, metadata !1220, metadata !DIExpression()) #10, !dbg !1341
  call void @llvm.dbg.value(metadata i64 %341, metadata !1225, metadata !DIExpression()) #10, !dbg !1343
  call void @llvm.dbg.value(metadata i8* %339, metadata !1226, metadata !DIExpression()) #10, !dbg !1344
  call void @llvm.dbg.value(metadata i64 0, metadata !1227, metadata !DIExpression()) #10, !dbg !1345
  %342 = icmp eq i64 %341, 0, !dbg !1346
  br i1 %342, label %365, label %343, !dbg !1347

; <label>:343:                                    ; preds = %340
  %344 = add i64 %341, -1
  br label %345, !dbg !1347

; <label>:345:                                    ; preds = %359, %343
  %346 = phi i64 [ 0, %343 ], [ %363, %359 ]
  %347 = phi i8* [ %339, %343 ], [ %362, %359 ]
  call void @llvm.dbg.value(metadata i64 %346, metadata !1227, metadata !DIExpression()) #10, !dbg !1345
  call void @llvm.dbg.value(metadata i8* %347, metadata !1226, metadata !DIExpression()) #10, !dbg !1344
  %348 = getelementptr inbounds i8, i8* %339, i64 %346, !dbg !1348
  %349 = load i8, i8* %348, align 1, !dbg !1348, !tbaa !1129
  %350 = sext i8 %349 to i32, !dbg !1348
  switch i32 %350, label %359 [
    i32 92, label %351
    i32 0, label %381
  ], !dbg !1349

; <label>:351:                                    ; preds = %345
  %352 = icmp eq i64 %346, %344, !dbg !1350
  br i1 %352, label %381, label %353, !dbg !1351

; <label>:353:                                    ; preds = %351
  %354 = add i64 %346, 1, !dbg !1352
  call void @llvm.dbg.value(metadata i64 %354, metadata !1227, metadata !DIExpression()) #10, !dbg !1345
  %355 = getelementptr inbounds i8, i8* %339, i64 %354, !dbg !1353
  %356 = load i8, i8* %355, align 1, !dbg !1353, !tbaa !1129
  %357 = sext i8 %356 to i32, !dbg !1353
  switch i32 %357, label %381 [
    i32 110, label %359
    i32 92, label %358
  ], !dbg !1354

; <label>:358:                                    ; preds = %353
  call void @llvm.dbg.value(metadata i8* %347, metadata !1226, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)) #10, !dbg !1344
  br label %359, !dbg !1355

; <label>:359:                                    ; preds = %345, %353, %358
  %360 = phi i8 [ 92, %358 ], [ 10, %353 ], [ %349, %345 ]
  %361 = phi i64 [ %354, %358 ], [ %354, %353 ], [ %346, %345 ], !dbg !1356
  store i8 %360, i8* %347, align 1, !dbg !1357, !tbaa !1129
  %362 = getelementptr inbounds i8, i8* %347, i64 1, !dbg !1358
  call void @llvm.dbg.value(metadata i64 %361, metadata !1227, metadata !DIExpression()) #10, !dbg !1345
  %363 = add i64 %361, 1, !dbg !1359
  call void @llvm.dbg.value(metadata i64 %363, metadata !1227, metadata !DIExpression()) #10, !dbg !1345
  call void @llvm.dbg.value(metadata i8* %362, metadata !1226, metadata !DIExpression()) #10, !dbg !1344
  %364 = icmp ult i64 %363, %341, !dbg !1346
  br i1 %364, label %345, label %365, !dbg !1347, !llvm.loop !1253

; <label>:365:                                    ; preds = %359, %340
  %366 = phi i8* [ %339, %340 ], [ %362, %359 ], !dbg !1356
  call void @llvm.dbg.value(metadata i8* %366, metadata !1226, metadata !DIExpression()) #10, !dbg !1344
  %367 = getelementptr inbounds i8, i8* %171, i64 %172, !dbg !1360
  %368 = icmp ult i8* %366, %367, !dbg !1361
  br i1 %368, label %369, label %370, !dbg !1362

; <label>:369:                                    ; preds = %365
  store i8 0, i8* %366, align 1, !dbg !1363, !tbaa !1129
  br label %370, !dbg !1364

; <label>:370:                                    ; preds = %369, %365
  %371 = icmp eq i8* %339, null, !dbg !1365
  br i1 %371, label %381, label %375, !dbg !1366

; <label>:372:                                    ; preds = %704, %258
  %373 = phi i8 [ %256, %258 ], [ %708, %704 ], !dbg !1367
  %374 = icmp eq i8 %373, 0, !dbg !1368
  br i1 %374, label %375, label %381, !dbg !1366

; <label>:375:                                    ; preds = %372, %370, %337
  %376 = phi i8* [ %259, %372 ], [ %184, %370 ], [ %184, %337 ]
  %377 = phi i8* [ %199, %372 ], [ %339, %370 ], [ %339, %337 ]
  br i1 %128, label %378, label %389, !dbg !1369

; <label>:378:                                    ; preds = %375
  %379 = call i32 @strcmp(i8* %377, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.31, i64 0, i64 0)) #14, !dbg !1370
  %380 = icmp eq i32 %379, 0, !dbg !1370
  br i1 %380, label %381, label %389, !dbg !1371

; <label>:381:                                    ; preds = %301, %310, %684, %692, %353, %351, %345, %229, %227, %221, %246, %264, %273, %378, %372, %370, %328, %318, %290, %281, %210, %197, %187
  %382 = add i64 %150, 1, !dbg !1372
  call void @llvm.dbg.value(metadata i64 %382, metadata !152, metadata !DIExpression()) #10, !dbg !1062
  %383 = load i1, i1* @warn, align 1
  br i1 %383, label %384, label %387, !dbg !1374

; <label>:384:                                    ; preds = %381
  %385 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.67, i64 0, i64 0), i32 5) #10, !dbg !1375
  %386 = call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %141) #10, !dbg !1378
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %385, i8* %386, i64 %151, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #10, !dbg !1379
  br label %387, !dbg !1380

; <label>:387:                                    ; preds = %384, %381
  %388 = add i64 %149, 1, !dbg !1381
  call void @llvm.dbg.value(metadata i64 %388, metadata !153, metadata !DIExpression()) #10, !dbg !1063
  br label %495, !dbg !1382

; <label>:389:                                    ; preds = %378, %375
  call void @llvm.dbg.value(metadata i8* %6, metadata !178, metadata !DIExpression(DW_OP_deref)) #10, !dbg !1383
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %6) #10, !dbg !1384
  %390 = load i1, i1* @status_only, align 1
  br i1 %390, label %394, label %391, !dbg !1385

; <label>:391:                                    ; preds = %389
  %392 = call i8* @strchr(i8* %377, i32 10) #14, !dbg !1386
  %393 = icmp ne i8* %392, null, !dbg !1385
  br label %394

; <label>:394:                                    ; preds = %391, %389
  %395 = phi i1 [ false, %389 ], [ %393, %391 ], !dbg !1387
  call void @llvm.dbg.value(metadata i8 1, metadata !156, metadata !DIExpression()) #10, !dbg !1066
  call void @llvm.dbg.value(metadata i8* %6, metadata !178, metadata !DIExpression(DW_OP_deref)) #10, !dbg !1383
  %396 = call fastcc zeroext i1 @digest_file(i8* %377, i8* nonnull %114, i8* nonnull %6) #10, !dbg !1388
  br i1 %396, label %415, label %397, !dbg !1389

; <label>:397:                                    ; preds = %394
  %398 = add i64 %147, 1, !dbg !1390
  call void @llvm.dbg.value(metadata i64 %398, metadata !155, metadata !DIExpression()) #10, !dbg !1065
  %399 = load i1, i1* @status_only, align 1
  br i1 %399, label %491, label %400, !dbg !1392

; <label>:400:                                    ; preds = %397
  br i1 %395, label %401, label %412, !dbg !1393

; <label>:401:                                    ; preds = %400
  call void @llvm.dbg.value(metadata i32 92, metadata !1396, metadata !DIExpression()) #10, !dbg !1401
  %402 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1404, !tbaa !835
  %403 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %402, i64 0, i32 5, !dbg !1404
  %404 = load i8*, i8** %403, align 8, !dbg !1404, !tbaa !1405
  %405 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %402, i64 0, i32 6, !dbg !1404
  %406 = load i8*, i8** %405, align 8, !dbg !1404, !tbaa !1407
  %407 = icmp ult i8* %404, %406, !dbg !1404
  br i1 %407, label %410, label %408, !dbg !1404, !prof !1408

; <label>:408:                                    ; preds = %401
  %409 = call i32 @__overflow(%struct._IO_FILE* %402, i32 92) #10, !dbg !1404
  br label %412, !dbg !1404

; <label>:410:                                    ; preds = %401
  %411 = getelementptr inbounds i8, i8* %404, i64 1, !dbg !1404
  store i8* %411, i8** %403, align 8, !dbg !1404, !tbaa !1405
  store i8 92, i8* %404, align 1, !dbg !1404, !tbaa !1129
  br label %412, !dbg !1404

; <label>:412:                                    ; preds = %410, %408, %400
  call fastcc void @print_filename(i8* %377, i1 zeroext %395) #10, !dbg !1409
  %413 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.69, i64 0, i64 0), i32 5) #10, !dbg !1410
  %414 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.68, i64 0, i64 0), i8* %413) #10, !dbg !1410
  br label %491, !dbg !1411

; <label>:415:                                    ; preds = %394
  %416 = load i1, i1* @ignore_missing, align 1
  %417 = xor i1 %416, true, !dbg !1412
  %418 = load i8, i8* %6, align 1, !dbg !1413
  %419 = icmp eq i8 %418, 0, !dbg !1413
  %420 = or i1 %419, %417, !dbg !1412
  br i1 %420, label %421, label %491, !dbg !1412

; <label>:421:                                    ; preds = %415
  %422 = load i1, i1* @digest_hex_bytes, align 8
  %423 = select i1 %422, i64 20, i64 0, !dbg !1414
  call void @llvm.dbg.value(metadata i64 %423, metadata !180, metadata !DIExpression()) #10, !dbg !1415
  call void @llvm.dbg.value(metadata i64 0, metadata !184, metadata !DIExpression()) #10, !dbg !1416
  br i1 %422, label %424, label %460, !dbg !1417

; <label>:424:                                    ; preds = %421
  %425 = tail call i32** @__ctype_tolower_loc() #17, !dbg !1418
  %426 = load i32*, i32** %425, align 8, !tbaa !835
  br label %427, !dbg !1417

; <label>:427:                                    ; preds = %457, %424
  %428 = phi i64 [ 0, %424 ], [ %458, %457 ]
  call void @llvm.dbg.value(metadata i64 %428, metadata !184, metadata !DIExpression()) #10, !dbg !1416
  %429 = shl nuw i64 %428, 1, !dbg !1418
  %430 = getelementptr inbounds i8, i8* %376, i64 %429, !dbg !1418
  %431 = load i8, i8* %430, align 1, !dbg !1418, !tbaa !1129
  %432 = zext i8 %431 to i64, !dbg !1418
  %433 = getelementptr inbounds i32, i32* %426, i64 %432, !dbg !1418
  %434 = load i32, i32* %433, align 4, !dbg !1418, !tbaa !1043
  call void @llvm.dbg.value(metadata i32 %434, metadata !185, metadata !DIExpression()) #10, !dbg !1420
  %435 = getelementptr inbounds i8, i8* %114, i64 %428, !dbg !1421
  %436 = load i8, i8* %435, align 1, !dbg !1421, !tbaa !1129
  %437 = zext i8 %436 to i32, !dbg !1421
  %438 = lshr i32 %437, 4, !dbg !1422
  %439 = zext i32 %438 to i64, !dbg !1423
  %440 = getelementptr inbounds [16 x i8], [16 x i8]* @digest_check.bin2hex, i64 0, i64 %439, !dbg !1423
  %441 = load i8, i8* %440, align 1, !dbg !1423, !tbaa !1129
  %442 = sext i8 %441 to i32, !dbg !1423
  %443 = icmp eq i32 %434, %442, !dbg !1424
  br i1 %443, label %444, label %460, !dbg !1425

; <label>:444:                                    ; preds = %427
  %445 = or i64 %429, 1, !dbg !1426
  %446 = getelementptr inbounds i8, i8* %376, i64 %445, !dbg !1426
  %447 = load i8, i8* %446, align 1, !dbg !1426, !tbaa !1129
  %448 = zext i8 %447 to i64, !dbg !1426
  %449 = getelementptr inbounds i32, i32* %426, i64 %448, !dbg !1426
  %450 = load i32, i32* %449, align 4, !dbg !1426, !tbaa !1043
  call void @llvm.dbg.value(metadata i32 %450, metadata !191, metadata !DIExpression()) #10, !dbg !1428
  %451 = and i32 %437, 15, !dbg !1429
  %452 = zext i32 %451 to i64, !dbg !1430
  %453 = getelementptr inbounds [16 x i8], [16 x i8]* @digest_check.bin2hex, i64 0, i64 %452, !dbg !1430
  %454 = load i8, i8* %453, align 1, !dbg !1430, !tbaa !1129
  %455 = sext i8 %454 to i32, !dbg !1431
  %456 = icmp eq i32 %450, %455, !dbg !1432
  br i1 %456, label %457, label %460, !dbg !1433

; <label>:457:                                    ; preds = %444
  %458 = add nuw nsw i64 %428, 1, !dbg !1434
  call void @llvm.dbg.value(metadata i64 %458, metadata !184, metadata !DIExpression()) #10, !dbg !1416
  %459 = icmp ult i64 %458, %423, !dbg !1435
  br i1 %459, label %427, label %460, !dbg !1417, !llvm.loop !1436

; <label>:460:                                    ; preds = %457, %444, %427, %421
  %461 = phi i64 [ 0, %421 ], [ %458, %457 ], [ %428, %427 ], [ %428, %444 ], !dbg !1439
  call void @llvm.dbg.value(metadata i64 %461, metadata !184, metadata !DIExpression()) #10, !dbg !1416
  call void @llvm.dbg.value(metadata i64 %461, metadata !184, metadata !DIExpression()) #10, !dbg !1416
  call void @llvm.dbg.value(metadata i64 %461, metadata !184, metadata !DIExpression()) #10, !dbg !1416
  %462 = icmp ne i64 %461, %423, !dbg !1440
  %463 = add i64 %148, 1, !dbg !1442
  call void @llvm.dbg.value(metadata i64 %463, metadata !154, metadata !DIExpression()) #10, !dbg !1064
  %464 = select i1 %462, i8 %144, i8 1, !dbg !1443
  %465 = select i1 %462, i64 %463, i64 %148, !dbg !1443
  call void @llvm.dbg.value(metadata i64 %465, metadata !154, metadata !DIExpression()) #10, !dbg !1064
  call void @llvm.dbg.value(metadata i8 %464, metadata !157, metadata !DIExpression()) #10, !dbg !1067
  %466 = load i1, i1* @status_only, align 1
  br i1 %466, label %491, label %467, !dbg !1444

; <label>:467:                                    ; preds = %460
  br i1 %462, label %470, label %468, !dbg !1445

; <label>:468:                                    ; preds = %467
  %469 = load i1, i1* @quiet, align 1
  br i1 %469, label %491, label %470, !dbg !1449

; <label>:470:                                    ; preds = %468, %467
  br i1 %395, label %471, label %482, !dbg !1450

; <label>:471:                                    ; preds = %470
  call void @llvm.dbg.value(metadata i32 92, metadata !1396, metadata !DIExpression()) #10, !dbg !1452
  %472 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1455, !tbaa !835
  %473 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %472, i64 0, i32 5, !dbg !1455
  %474 = load i8*, i8** %473, align 8, !dbg !1455, !tbaa !1405
  %475 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %472, i64 0, i32 6, !dbg !1455
  %476 = load i8*, i8** %475, align 8, !dbg !1455, !tbaa !1407
  %477 = icmp ult i8* %474, %476, !dbg !1455
  br i1 %477, label %480, label %478, !dbg !1455, !prof !1408

; <label>:478:                                    ; preds = %471
  %479 = call i32 @__overflow(%struct._IO_FILE* %472, i32 92) #10, !dbg !1455
  br label %482, !dbg !1455

; <label>:480:                                    ; preds = %471
  %481 = getelementptr inbounds i8, i8* %474, i64 1, !dbg !1455
  store i8* %481, i8** %473, align 8, !dbg !1455, !tbaa !1405
  store i8 92, i8* %474, align 1, !dbg !1455, !tbaa !1129
  br label %482, !dbg !1455

; <label>:482:                                    ; preds = %480, %478, %470
  call fastcc void @print_filename(i8* %377, i1 zeroext %395) #10, !dbg !1456
  br i1 %462, label %483, label %486, !dbg !1457

; <label>:483:                                    ; preds = %482
  %484 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.70, i64 0, i64 0), i32 5) #10, !dbg !1458
  %485 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.68, i64 0, i64 0), i8* %484) #10, !dbg !1458
  br label %491, !dbg !1458

; <label>:486:                                    ; preds = %482
  %487 = load i1, i1* @quiet, align 1
  br i1 %487, label %491, label %488, !dbg !1460

; <label>:488:                                    ; preds = %486
  %489 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.71, i64 0, i64 0), i32 5) #10, !dbg !1461
  %490 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.68, i64 0, i64 0), i8* %489) #10, !dbg !1461
  br label %491, !dbg !1461

; <label>:491:                                    ; preds = %488, %486, %483, %468, %460, %415, %412, %397
  %492 = phi i8 [ %144, %397 ], [ %144, %412 ], [ %144, %415 ], [ %144, %483 ], [ 1, %488 ], [ 1, %486 ], [ %464, %460 ], [ 1, %468 ], !dbg !1067
  %493 = phi i64 [ %398, %397 ], [ %398, %412 ], [ %147, %415 ], [ %147, %483 ], [ %147, %488 ], [ %147, %486 ], [ %147, %460 ], [ %147, %468 ], !dbg !1463
  %494 = phi i64 [ %148, %397 ], [ %148, %412 ], [ %148, %415 ], [ %463, %483 ], [ %148, %488 ], [ %148, %486 ], [ %465, %460 ], [ %148, %468 ], !dbg !1464
  call void @llvm.dbg.value(metadata i64 %494, metadata !154, metadata !DIExpression()) #10, !dbg !1064
  call void @llvm.dbg.value(metadata i64 %493, metadata !155, metadata !DIExpression()) #10, !dbg !1065
  call void @llvm.dbg.value(metadata i8 %492, metadata !157, metadata !DIExpression()) #10, !dbg !1067
  call void @llvm.dbg.value(metadata i8* %6, metadata !178, metadata !DIExpression(DW_OP_deref)) #10, !dbg !1383
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %6) #10, !dbg !1465
  br label %495

; <label>:495:                                    ; preds = %491, %387, %159
  %496 = phi i8 [ %492, %491 ], [ %144, %387 ], [ %144, %159 ]
  %497 = phi i8 [ 1, %491 ], [ %146, %387 ], [ %146, %159 ]
  %498 = phi i64 [ %493, %491 ], [ %147, %387 ], [ %147, %159 ]
  %499 = phi i64 [ %494, %491 ], [ %148, %387 ], [ %148, %159 ]
  %500 = phi i64 [ %149, %491 ], [ %388, %387 ], [ %149, %159 ]
  %501 = phi i64 [ %150, %491 ], [ %382, %387 ], [ %150, %159 ]
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %140, metadata !1466, metadata !DIExpression()) #10, !dbg !1471
  %502 = load i32, i32* %142, align 8, !dbg !1473, !tbaa !1474
  %503 = and i32 %502, 48, !dbg !1475
  %504 = icmp eq i32 %503, 0, !dbg !1475
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %140, metadata !1476, metadata !DIExpression()) #10, !dbg !1479
  br i1 %504, label %143, label %505, !dbg !1475, !llvm.loop !1481

; <label>:505:                                    ; preds = %495, %156
  %506 = phi i64 [ %501, %495 ], [ %150, %156 ]
  %507 = phi i64 [ %500, %495 ], [ %149, %156 ]
  %508 = phi i64 [ %499, %495 ], [ %148, %156 ]
  %509 = phi i64 [ %498, %495 ], [ %147, %156 ]
  %510 = phi i8 [ %497, %495 ], [ %146, %156 ]
  %511 = phi i8 [ %496, %495 ], [ %144, %156 ]
  %512 = load i8*, i8** %4, align 8, !dbg !1484, !tbaa !835
  call void @llvm.dbg.value(metadata i8* %512, metadata !164, metadata !DIExpression()) #10, !dbg !1097
  call void @free(i8* %512) #10, !dbg !1485
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %140, metadata !1476, metadata !DIExpression()) #10, !dbg !1486
  %513 = load i32, i32* %142, align 8, !dbg !1489, !tbaa !1474
  %514 = and i32 %513, 32, !dbg !1489
  %515 = icmp eq i32 %514, 0, !dbg !1490
  br i1 %515, label %519, label %516, !dbg !1491

; <label>:516:                                    ; preds = %505
  %517 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.72, i64 0, i64 0), i32 5) #10, !dbg !1492
  %518 = call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %141) #10, !dbg !1494
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %517, i8* %518) #10, !dbg !1495
  br label %568, !dbg !1496

; <label>:519:                                    ; preds = %505
  br i1 %128, label %527, label %520, !dbg !1497

; <label>:520:                                    ; preds = %519
  %521 = call i32 @rpl_fclose(%struct._IO_FILE* nonnull %140) #10, !dbg !1499
  %522 = icmp eq i32 %521, 0, !dbg !1500
  br i1 %522, label %527, label %523, !dbg !1501

; <label>:523:                                    ; preds = %520
  %524 = tail call i32* @__errno_location() #17, !dbg !1502
  %525 = load i32, i32* %524, align 4, !dbg !1502, !tbaa !1043
  %526 = call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %141) #10, !dbg !1504
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %525, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.65, i64 0, i64 0), i8* %526) #10, !dbg !1505
  br label %568, !dbg !1506

; <label>:527:                                    ; preds = %520, %519
  %528 = and i8 %510, 1, !dbg !1507
  %529 = icmp eq i8 %528, 0, !dbg !1507
  br i1 %529, label %554, label %530, !dbg !1509

; <label>:530:                                    ; preds = %527
  %531 = load i1, i1* @status_only, align 1
  br i1 %531, label %532, label %534, !dbg !1510

; <label>:532:                                    ; preds = %530
  %533 = and i8 %511, 1, !dbg !1512
  br label %557, !dbg !1510

; <label>:534:                                    ; preds = %530
  %535 = icmp eq i64 %506, 0, !dbg !1513
  br i1 %535, label %538, label %536, !dbg !1517

; <label>:536:                                    ; preds = %534
  %537 = call i8* @dcngettext(i8* null, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.74, i64 0, i64 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.75, i64 0, i64 0), i64 %506, i32 5) #10, !dbg !1518
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %537, i64 %506) #10, !dbg !1519
  br label %538, !dbg !1519

; <label>:538:                                    ; preds = %536, %534
  %539 = icmp eq i64 %509, 0, !dbg !1520
  br i1 %539, label %542, label %540, !dbg !1522

; <label>:540:                                    ; preds = %538
  %541 = call i8* @dcngettext(i8* null, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.76, i64 0, i64 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.77, i64 0, i64 0), i64 %509, i32 5) #10, !dbg !1523
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %541, i64 %509) #10, !dbg !1524
  br label %542, !dbg !1524

; <label>:542:                                    ; preds = %540, %538
  %543 = icmp eq i64 %508, 0, !dbg !1525
  br i1 %543, label %546, label %544, !dbg !1527

; <label>:544:                                    ; preds = %542
  %545 = call i8* @dcngettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.78, i64 0, i64 0), i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.79, i64 0, i64 0), i64 %508, i32 5) #10, !dbg !1528
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %545, i64 %508) #10, !dbg !1529
  br label %546, !dbg !1529

; <label>:546:                                    ; preds = %544, %542
  %547 = load i1, i1* @ignore_missing, align 1
  %548 = and i8 %511, 1, !dbg !1530
  %549 = icmp eq i8 %548, 0, !dbg !1530
  %550 = and i1 %549, %547, !dbg !1532
  br i1 %550, label %551, label %557, !dbg !1532

; <label>:551:                                    ; preds = %546
  %552 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.80, i64 0, i64 0), i32 5) #10, !dbg !1533
  %553 = call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %141) #10, !dbg !1534
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %552, i8* %553) #10, !dbg !1535
  br label %568, !dbg !1536

; <label>:554:                                    ; preds = %527
  %555 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.73, i64 0, i64 0), i32 5) #10, !dbg !1537
  %556 = call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %141) #10, !dbg !1539
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %555, i8* %556, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #10, !dbg !1540
  br label %568

; <label>:557:                                    ; preds = %546, %532
  %558 = phi i8 [ %533, %532 ], [ %548, %546 ], !dbg !1512
  %559 = icmp ne i8 %558, 0, !dbg !1512
  %560 = or i64 %509, %508, !dbg !1536
  %561 = icmp eq i64 %560, 0, !dbg !1536
  %562 = and i1 %561, %559, !dbg !1536
  br i1 %562, label %563, label %568, !dbg !1536

; <label>:563:                                    ; preds = %557
  %564 = load i1, i1* @strict, align 1
  %565 = icmp eq i64 %507, 0, !dbg !1541
  %566 = xor i1 %564, true, !dbg !1542
  %567 = or i1 %565, %566, !dbg !1542
  br label %568, !dbg !1542

; <label>:568:                                    ; preds = %135, %516, %523, %551, %554, %557, %563
  %569 = phi i1 [ false, %516 ], [ false, %523 ], [ false, %135 ], [ false, %557 ], [ false, %554 ], [ %567, %563 ], [ false, %551 ], !dbg !1543
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %116) #10, !dbg !1544
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %115) #10, !dbg !1544
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %109) #10, !dbg !1544
  %570 = zext i1 %569 to i8, !dbg !1545
  %571 = and i8 %124, %570, !dbg !1546
  call void @llvm.dbg.value(metadata i8 %571, metadata !902, metadata !DIExpression()), !dbg !948
  br label %668, !dbg !1547

; <label>:572:                                    ; preds = %122
  call void @llvm.dbg.value(metadata i8* %8, metadata !915, metadata !DIExpression(DW_OP_deref)), !dbg !1548
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %8) #10, !dbg !1549
  call void @llvm.dbg.value(metadata i8* %8, metadata !915, metadata !DIExpression(DW_OP_deref)), !dbg !1548
  %573 = call fastcc zeroext i1 @digest_file(i8* %125, i8* nonnull %14, i8* nonnull %8), !dbg !1550
  br i1 %573, label %574, label %666, !dbg !1551

; <label>:574:                                    ; preds = %572
  %575 = call i8* @strchr(i8* %125, i32 92) #14, !dbg !1552
  %576 = icmp eq i8* %575, null, !dbg !1552
  br i1 %576, label %577, label %580, !dbg !1553

; <label>:577:                                    ; preds = %574
  %578 = call i8* @strchr(i8* %125, i32 10) #14, !dbg !1554
  %579 = icmp eq i8* %578, null, !dbg !1554
  br i1 %579, label %583, label %580, !dbg !1555

; <label>:580:                                    ; preds = %577, %574
  %581 = load i1, i1* @delim, align 1
  %582 = xor i1 %581, true, !dbg !1556
  br label %583

; <label>:583:                                    ; preds = %577, %580
  %584 = phi i1 [ false, %577 ], [ %582, %580 ], !dbg !1557
  br i1 %46, label %585, label %604, !dbg !1558

; <label>:585:                                    ; preds = %583
  br i1 %584, label %586, label %597, !dbg !1559

; <label>:586:                                    ; preds = %585
  call void @llvm.dbg.value(metadata i32 92, metadata !1396, metadata !DIExpression()) #10, !dbg !1562
  %587 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1565, !tbaa !835
  %588 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %587, i64 0, i32 5, !dbg !1565
  %589 = load i8*, i8** %588, align 8, !dbg !1565, !tbaa !1405
  %590 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %587, i64 0, i32 6, !dbg !1565
  %591 = load i8*, i8** %590, align 8, !dbg !1565, !tbaa !1407
  %592 = icmp ult i8* %589, %591, !dbg !1565
  br i1 %592, label %595, label %593, !dbg !1565, !prof !1408

; <label>:593:                                    ; preds = %586
  %594 = call i32 @__overflow(%struct._IO_FILE* %587, i32 92) #10, !dbg !1565
  br label %597, !dbg !1565

; <label>:595:                                    ; preds = %586
  %596 = getelementptr inbounds i8, i8* %589, i64 1, !dbg !1565
  store i8* %596, i8** %588, align 8, !dbg !1565, !tbaa !1405
  store i8 92, i8* %589, align 1, !dbg !1565, !tbaa !1129
  br label %597, !dbg !1565

; <label>:597:                                    ; preds = %595, %593, %585
  %598 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1566, !tbaa !835
  %599 = call i32 @fputs_unlocked(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), %struct._IO_FILE* %598), !dbg !1566
  %600 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1567, !tbaa !835
  %601 = call i32 @fputs_unlocked(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.32, i64 0, i64 0), %struct._IO_FILE* %600), !dbg !1567
  call fastcc void @print_filename(i8* %125, i1 zeroext %584), !dbg !1568
  %602 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1569, !tbaa !835
  %603 = call i32 @fputs_unlocked(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.33, i64 0, i64 0), %struct._IO_FILE* %602), !dbg !1569
  br label %616, !dbg !1570

; <label>:604:                                    ; preds = %583
  br i1 %584, label %605, label %616, !dbg !1572

; <label>:605:                                    ; preds = %604
  call void @llvm.dbg.value(metadata i32 92, metadata !1396, metadata !DIExpression()) #10, !dbg !1573
  %606 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1575, !tbaa !835
  %607 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %606, i64 0, i32 5, !dbg !1575
  %608 = load i8*, i8** %607, align 8, !dbg !1575, !tbaa !1405
  %609 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %606, i64 0, i32 6, !dbg !1575
  %610 = load i8*, i8** %609, align 8, !dbg !1575, !tbaa !1407
  %611 = icmp ult i8* %608, %610, !dbg !1575
  br i1 %611, label %614, label %612, !dbg !1575, !prof !1408

; <label>:612:                                    ; preds = %605
  %613 = call i32 @__overflow(%struct._IO_FILE* %606, i32 92) #10, !dbg !1575
  br label %616, !dbg !1575

; <label>:614:                                    ; preds = %605
  %615 = getelementptr inbounds i8, i8* %608, i64 1, !dbg !1575
  store i8* %615, i8** %607, align 8, !dbg !1575, !tbaa !1405
  store i8 92, i8* %608, align 1, !dbg !1575, !tbaa !1129
  br label %616, !dbg !1575

; <label>:616:                                    ; preds = %614, %612, %597, %604
  call void @llvm.dbg.value(metadata i64 0, metadata !919, metadata !DIExpression()), !dbg !1576
  %617 = load i1, i1* @digest_hex_bytes, align 8
  br i1 %617, label %619, label %618, !dbg !1577

; <label>:618:                                    ; preds = %619, %616
  br i1 %46, label %652, label %629, !dbg !1578

; <label>:619:                                    ; preds = %616, %619
  %620 = phi i64 [ %625, %619 ], [ 0, %616 ]
  call void @llvm.dbg.value(metadata i64 %620, metadata !919, metadata !DIExpression()), !dbg !1576
  %621 = getelementptr inbounds i8, i8* %14, i64 %620, !dbg !1579
  %622 = load i8, i8* %621, align 1, !dbg !1579, !tbaa !1129
  %623 = zext i8 %622 to i32, !dbg !1579
  %624 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.34, i64 0, i64 0), i32 %623) #10, !dbg !1579
  %625 = add nuw nsw i64 %620, 1, !dbg !1581
  call void @llvm.dbg.value(metadata i64 %625, metadata !919, metadata !DIExpression()), !dbg !1576
  %626 = load i1, i1* @digest_hex_bytes, align 8
  %627 = select i1 %626, i64 20, i64 0, !dbg !1582
  %628 = icmp ult i64 %625, %627, !dbg !1583
  br i1 %628, label %619, label %618, !dbg !1577, !llvm.loop !1584

; <label>:629:                                    ; preds = %618
  call void @llvm.dbg.value(metadata i32 32, metadata !1396, metadata !DIExpression()) #10, !dbg !1586
  %630 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1590, !tbaa !835
  %631 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %630, i64 0, i32 5, !dbg !1590
  %632 = load i8*, i8** %631, align 8, !dbg !1590, !tbaa !1405
  %633 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %630, i64 0, i32 6, !dbg !1590
  %634 = load i8*, i8** %633, align 8, !dbg !1590, !tbaa !1407
  %635 = icmp ult i8* %632, %634, !dbg !1590
  br i1 %635, label %638, label %636, !dbg !1590, !prof !1408

; <label>:636:                                    ; preds = %629
  %637 = call i32 @__overflow(%struct._IO_FILE* %630, i32 32) #10, !dbg !1590
  br label %640, !dbg !1590

; <label>:638:                                    ; preds = %629
  %639 = getelementptr inbounds i8, i8* %632, i64 1, !dbg !1590
  store i8* %639, i8** %631, align 8, !dbg !1590, !tbaa !1405
  store i8 32, i8* %632, align 1, !dbg !1590, !tbaa !1129
  br label %640, !dbg !1590

; <label>:640:                                    ; preds = %636, %638
  call void @llvm.dbg.value(metadata i32 %117, metadata !1396, metadata !DIExpression()) #10, !dbg !1591
  %641 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1593, !tbaa !835
  %642 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %641, i64 0, i32 5, !dbg !1593
  %643 = load i8*, i8** %642, align 8, !dbg !1593, !tbaa !1405
  %644 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %641, i64 0, i32 6, !dbg !1593
  %645 = load i8*, i8** %644, align 8, !dbg !1593, !tbaa !1407
  %646 = icmp ult i8* %643, %645, !dbg !1593
  br i1 %646, label %649, label %647, !dbg !1593, !prof !1408

; <label>:647:                                    ; preds = %640
  %648 = call i32 @__overflow(%struct._IO_FILE* %641, i32 %117) #10, !dbg !1593
  br label %651, !dbg !1593

; <label>:649:                                    ; preds = %640
  %650 = getelementptr inbounds i8, i8* %643, i64 1, !dbg !1593
  store i8* %650, i8** %642, align 8, !dbg !1593, !tbaa !1405
  store i8 %118, i8* %643, align 1, !dbg !1593, !tbaa !1129
  br label %651, !dbg !1593

; <label>:651:                                    ; preds = %647, %649
  call fastcc void @print_filename(i8* %125, i1 zeroext %584), !dbg !1594
  br label %652, !dbg !1595

; <label>:652:                                    ; preds = %651, %618
  %653 = load i1, i1* @delim, align 1
  %654 = select i1 %653, i32 0, i32 10, !dbg !1596
  call void @llvm.dbg.value(metadata i32 %654, metadata !1396, metadata !DIExpression()) #10, !dbg !1597
  %655 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1599, !tbaa !835
  %656 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %655, i64 0, i32 5, !dbg !1599
  %657 = load i8*, i8** %656, align 8, !dbg !1599, !tbaa !1405
  %658 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %655, i64 0, i32 6, !dbg !1599
  %659 = load i8*, i8** %658, align 8, !dbg !1599, !tbaa !1407
  %660 = icmp ult i8* %657, %659, !dbg !1599
  br i1 %660, label %663, label %661, !dbg !1599, !prof !1408

; <label>:661:                                    ; preds = %652
  %662 = call i32 @__overflow(%struct._IO_FILE* %655, i32 %654) #10, !dbg !1599
  br label %666, !dbg !1599

; <label>:663:                                    ; preds = %652
  %664 = trunc i32 %654 to i8, !dbg !1599
  %665 = getelementptr inbounds i8, i8* %657, i64 1, !dbg !1599
  store i8* %665, i8** %656, align 8, !dbg !1599, !tbaa !1405
  store i8 %664, i8* %657, align 1, !dbg !1599, !tbaa !1129
  br label %666, !dbg !1599

; <label>:666:                                    ; preds = %663, %661, %572
  %667 = phi i8 [ 0, %572 ], [ %124, %661 ], [ %124, %663 ], !dbg !1600
  call void @llvm.dbg.value(metadata i8 %667, metadata !902, metadata !DIExpression()), !dbg !948
  call void @llvm.dbg.value(metadata i8* %8, metadata !915, metadata !DIExpression(DW_OP_deref)), !dbg !1548
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %8) #10, !dbg !1601
  br label %668

; <label>:668:                                    ; preds = %666, %568
  %669 = phi i8 [ %571, %568 ], [ %667, %666 ], !dbg !1050
  %670 = getelementptr inbounds i8*, i8** %123, i64 1, !dbg !1602
  call void @llvm.dbg.value(metadata i8** %670, metadata !907, metadata !DIExpression()), !dbg !1052
  call void @llvm.dbg.value(metadata i8 %669, metadata !902, metadata !DIExpression()), !dbg !948
  %671 = icmp ult i8** %670, %104, !dbg !1053
  br i1 %671, label %122, label %119, !dbg !1054, !llvm.loop !1603

; <label>:672:                                    ; preds = %119
  %673 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !1605, !tbaa !835
  %674 = call i32 @rpl_fclose(%struct._IO_FILE* %673) #10, !dbg !1606
  %675 = icmp eq i32 %674, -1, !dbg !1607
  br i1 %675, label %676, label %680, !dbg !1608

; <label>:676:                                    ; preds = %672
  %677 = tail call i32* @__errno_location() #17, !dbg !1609
  %678 = load i32, i32* %677, align 4, !dbg !1609, !tbaa !1043
  %679 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.35, i64 0, i64 0), i32 5) #10, !dbg !1609
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %678, i8* %679) #10, !dbg !1609
  unreachable, !dbg !1609

; <label>:680:                                    ; preds = %672, %119
  %681 = and i8 %120, 1, !dbg !1610
  %682 = xor i8 %681, 1, !dbg !1610
  %683 = zext i8 %682 to i32, !dbg !1610
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %9) #10, !dbg !1611
  ret i32 %683, !dbg !1611

; <label>:684:                                    ; preds = %310
  call void @llvm.dbg.value(metadata i32 %302, metadata !1278, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)) #10, !dbg !1308
  call void @llvm.dbg.value(metadata i32 %302, metadata !1278, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)) #10, !dbg !1308
  %685 = getelementptr inbounds i8, i8* %303, i64 2, !dbg !1312
  call void @llvm.dbg.value(metadata i8* %685, metadata !1272, metadata !DIExpression()) #10, !dbg !1305
  call void @llvm.dbg.value(metadata i8* %685, metadata !1272, metadata !DIExpression()) #10, !dbg !1305
  %686 = load i8, i8* %685, align 1, !dbg !1310, !tbaa !1129
  %687 = zext i8 %686 to i64, !dbg !1310
  %688 = getelementptr inbounds i16, i16* %300, i64 %687, !dbg !1310
  %689 = load i16, i16* %688, align 2, !dbg !1310, !tbaa !1288
  %690 = and i16 %689, 4096, !dbg !1310
  %691 = icmp eq i16 %690, 0, !dbg !1310
  br i1 %691, label %381, label %692, !dbg !1311

; <label>:692:                                    ; preds = %684
  call void @llvm.dbg.value(metadata i32 %302, metadata !1278, metadata !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value)) #10, !dbg !1308
  call void @llvm.dbg.value(metadata i32 %302, metadata !1278, metadata !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value)) #10, !dbg !1308
  %693 = getelementptr inbounds i8, i8* %303, i64 3, !dbg !1312
  call void @llvm.dbg.value(metadata i8* %693, metadata !1272, metadata !DIExpression()) #10, !dbg !1305
  call void @llvm.dbg.value(metadata i8* %693, metadata !1272, metadata !DIExpression()) #10, !dbg !1305
  %694 = load i8, i8* %693, align 1, !dbg !1310, !tbaa !1129
  %695 = zext i8 %694 to i64, !dbg !1310
  %696 = getelementptr inbounds i16, i16* %300, i64 %695, !dbg !1310
  %697 = load i16, i16* %696, align 2, !dbg !1310, !tbaa !1288
  %698 = and i16 %697, 4096, !dbg !1310
  %699 = icmp eq i16 %698, 0, !dbg !1310
  br i1 %699, label %381, label %700, !dbg !1311

; <label>:700:                                    ; preds = %692
  call void @llvm.dbg.value(metadata i32 %302, metadata !1278, metadata !DIExpression(DW_OP_plus_uconst, 3, DW_OP_stack_value)) #10, !dbg !1308
  call void @llvm.dbg.value(metadata i32 %302, metadata !1278, metadata !DIExpression(DW_OP_plus_uconst, 3, DW_OP_stack_value)) #10, !dbg !1308
  %701 = getelementptr inbounds i8, i8* %303, i64 4, !dbg !1312
  %702 = add nuw nsw i32 %302, 4, !dbg !1612
  call void @llvm.dbg.value(metadata i32 %702, metadata !1278, metadata !DIExpression()) #10, !dbg !1308
  call void @llvm.dbg.value(metadata i8* %701, metadata !1272, metadata !DIExpression()) #10, !dbg !1305
  %703 = icmp ult i32 %702, 40, !dbg !1613
  br i1 %703, label %301, label %318, !dbg !1309, !llvm.loop !1614

; <label>:704:                                    ; preds = %273
  call void @llvm.dbg.value(metadata i32 %266, metadata !1278, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)) #10, !dbg !1282
  call void @llvm.dbg.value(metadata i32 %266, metadata !1278, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)) #10, !dbg !1282
  %705 = getelementptr inbounds i8, i8* %267, i64 2, !dbg !1291
  %706 = add nuw nsw i32 %266, 2, !dbg !1617
  call void @llvm.dbg.value(metadata i32 %706, metadata !1278, metadata !DIExpression()) #10, !dbg !1282
  call void @llvm.dbg.value(metadata i8* %705, metadata !1272, metadata !DIExpression()) #10, !dbg !1280
  %707 = icmp ult i32 %706, 40, !dbg !1618
  %708 = load i8, i8* %705, align 1, !dbg !1205, !tbaa !1129
  br i1 %707, label %264, label %372, !dbg !1283, !llvm.loop !1614
}

; Function Attrs: nounwind
declare i8* @bindtextdomain(i8*, i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i8* @textdomain(i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @atexit(void ()*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @setvbuf(%struct._IO_FILE* nocapture, i8*, i32, i64) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @getopt_long(i32, i8**, i8*, %struct.option*, i32*) local_unnamed_addr #2

declare void @error(i32, i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: nounwind readnone
declare i32* @__errno_location() local_unnamed_addr #8

declare i64 @__getdelim(i8**, i64*, i32, %struct._IO_FILE*) local_unnamed_addr #3

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() local_unnamed_addr #8

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) local_unnamed_addr #5

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc zeroext i1 @digest_file(i8*, i8*, i8* nocapture) unnamed_addr #7 !dbg !1619 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1624, metadata !DIExpression()), !dbg !1631
  call void @llvm.dbg.value(metadata i32* null, metadata !1625, metadata !DIExpression()), !dbg !1632
  call void @llvm.dbg.value(metadata i8* %1, metadata !1626, metadata !DIExpression()), !dbg !1633
  call void @llvm.dbg.value(metadata i8* %2, metadata !1627, metadata !DIExpression()), !dbg !1634
  %4 = tail call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.31, i64 0, i64 0)) #14, !dbg !1635
  %5 = icmp eq i32 %4, 0, !dbg !1635
  store i8 0, i8* %2, align 1, !dbg !1636, !tbaa !1637
  br i1 %5, label %6, label %8, !dbg !1639

; <label>:6:                                      ; preds = %3
  store i1 true, i1* @have_read_stdin, align 1
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !1640, !tbaa !835
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %7, metadata !1628, metadata !DIExpression()), !dbg !1643
  br label %21, !dbg !1644

; <label>:8:                                      ; preds = %3
  %9 = tail call %struct._IO_FILE* @fopen_safer(i8* %0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.64, i64 0, i64 0)) #10, !dbg !1645
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %9, metadata !1628, metadata !DIExpression()), !dbg !1643
  %10 = icmp eq %struct._IO_FILE* %9, null, !dbg !1647
  br i1 %10, label %11, label %21, !dbg !1649

; <label>:11:                                     ; preds = %8
  %12 = load i1, i1* @ignore_missing, align 1
  %13 = tail call i32* @__errno_location() #17, !dbg !1650
  br i1 %12, label %14, label %18, !dbg !1652

; <label>:14:                                     ; preds = %11
  %15 = load i32, i32* %13, align 4, !dbg !1654, !tbaa !1043
  %16 = icmp eq i32 %15, 2, !dbg !1655
  br i1 %16, label %17, label %18, !dbg !1656

; <label>:17:                                     ; preds = %14
  store i8 1, i8* %2, align 1, !dbg !1657, !tbaa !1637
  br label %41, !dbg !1659

; <label>:18:                                     ; preds = %11, %14
  %19 = load i32, i32* %13, align 4, !dbg !1660, !tbaa !1043
  %20 = tail call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %0) #10, !dbg !1661
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %19, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.65, i64 0, i64 0), i8* %20) #10, !dbg !1662
  br label %41, !dbg !1663

; <label>:21:                                     ; preds = %8, %6
  %22 = phi %struct._IO_FILE* [ %7, %6 ], [ %9, %8 ], !dbg !1664
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %22, metadata !1628, metadata !DIExpression()), !dbg !1643
  tail call void @fadvise(%struct._IO_FILE* %22, i32 2) #10, !dbg !1665
  %23 = tail call i32 @sha1_stream(%struct._IO_FILE* %22, i8* %1) #10, !dbg !1666
  call void @llvm.dbg.value(metadata i32 %23, metadata !1629, metadata !DIExpression()), !dbg !1667
  %24 = icmp eq i32 %23, 0, !dbg !1668
  br i1 %24, label %33, label %25, !dbg !1670

; <label>:25:                                     ; preds = %21
  %26 = tail call i32* @__errno_location() #17, !dbg !1671
  %27 = load i32, i32* %26, align 4, !dbg !1671, !tbaa !1043
  %28 = tail call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %0) #10, !dbg !1673
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %27, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.65, i64 0, i64 0), i8* %28) #10, !dbg !1674
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !1675, !tbaa !835
  %30 = icmp eq %struct._IO_FILE* %22, %29, !dbg !1677
  br i1 %30, label %41, label %31, !dbg !1678

; <label>:31:                                     ; preds = %25
  %32 = tail call i32 @rpl_fclose(%struct._IO_FILE* %22) #10, !dbg !1679
  br label %41, !dbg !1679

; <label>:33:                                     ; preds = %21
  br i1 %5, label %41, label %34, !dbg !1680

; <label>:34:                                     ; preds = %33
  %35 = tail call i32 @rpl_fclose(%struct._IO_FILE* %22) #10, !dbg !1682
  %36 = icmp eq i32 %35, 0, !dbg !1683
  br i1 %36, label %41, label %37, !dbg !1684

; <label>:37:                                     ; preds = %34
  %38 = tail call i32* @__errno_location() #17, !dbg !1685
  %39 = load i32, i32* %38, align 4, !dbg !1685, !tbaa !1043
  %40 = tail call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %0) #10, !dbg !1687
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %39, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.65, i64 0, i64 0), i8* %40) #10, !dbg !1688
  br label %41, !dbg !1689

; <label>:41:                                     ; preds = %33, %34, %31, %25, %37, %18, %17
  %42 = phi i1 [ false, %37 ], [ true, %17 ], [ false, %18 ], [ false, %25 ], [ false, %31 ], [ true, %34 ], [ true, %33 ], !dbg !1650
  ret i1 %42, !dbg !1690
}

declare i32 @__overflow(%struct._IO_FILE*, i32) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @print_filename(i8* nocapture readonly, i1 zeroext) unnamed_addr #7 !dbg !1691 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1695, metadata !DIExpression()), !dbg !1697
  call void @llvm.dbg.value(metadata i1 %1, metadata !1696, metadata !DIExpression()), !dbg !1698
  br i1 %1, label %3, label %6, !dbg !1699

; <label>:3:                                      ; preds = %2
  call void @llvm.dbg.value(metadata i8* %0, metadata !1695, metadata !DIExpression()), !dbg !1697
  %4 = load i8, i8* %0, align 1, !dbg !1700, !tbaa !1129
  %5 = icmp eq i8 %4, 0, !dbg !1701
  br i1 %5, label %35, label %9, !dbg !1701

; <label>:6:                                      ; preds = %2
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1702, !tbaa !835
  %8 = tail call i32 @fputs_unlocked(i8* %0, %struct._IO_FILE* %7), !dbg !1702
  br label %35, !dbg !1705

; <label>:9:                                      ; preds = %3, %31
  %10 = phi i8 [ %33, %31 ], [ %4, %3 ]
  %11 = phi i8* [ %32, %31 ], [ %0, %3 ]
  call void @llvm.dbg.value(metadata i8* %11, metadata !1695, metadata !DIExpression()), !dbg !1697
  %12 = sext i8 %10 to i32, !dbg !1706
  switch i32 %12, label %19 [
    i32 10, label %13
    i32 92, label %16
  ], !dbg !1708

; <label>:13:                                     ; preds = %9
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1709, !tbaa !835
  %15 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.81, i64 0, i64 0), %struct._IO_FILE* %14), !dbg !1709
  br label %31, !dbg !1711

; <label>:16:                                     ; preds = %9
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1712, !tbaa !835
  %18 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.82, i64 0, i64 0), %struct._IO_FILE* %17), !dbg !1712
  br label %31, !dbg !1713

; <label>:19:                                     ; preds = %9
  call void @llvm.dbg.value(metadata i32 %12, metadata !1396, metadata !DIExpression()) #10, !dbg !1714
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1716, !tbaa !835
  %21 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %20, i64 0, i32 5, !dbg !1716
  %22 = load i8*, i8** %21, align 8, !dbg !1716, !tbaa !1405
  %23 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %20, i64 0, i32 6, !dbg !1716
  %24 = load i8*, i8** %23, align 8, !dbg !1716, !tbaa !1407
  %25 = icmp ult i8* %22, %24, !dbg !1716
  br i1 %25, label %29, label %26, !dbg !1716, !prof !1408

; <label>:26:                                     ; preds = %19
  %27 = and i32 %12, 255, !dbg !1716
  %28 = tail call i32 @__overflow(%struct._IO_FILE* %20, i32 %27) #10, !dbg !1716
  br label %31, !dbg !1716

; <label>:29:                                     ; preds = %19
  %30 = getelementptr inbounds i8, i8* %22, i64 1, !dbg !1716
  store i8* %30, i8** %21, align 8, !dbg !1716, !tbaa !1405
  store i8 %10, i8* %22, align 1, !dbg !1716, !tbaa !1129
  br label %31, !dbg !1716

; <label>:31:                                     ; preds = %29, %26, %16, %13
  %32 = getelementptr inbounds i8, i8* %11, i64 1, !dbg !1717
  call void @llvm.dbg.value(metadata i8* %32, metadata !1695, metadata !DIExpression()), !dbg !1697
  %33 = load i8, i8* %32, align 1, !dbg !1700, !tbaa !1129
  %34 = icmp eq i8 %33, 0, !dbg !1701
  br i1 %34, label %35, label %9, !dbg !1701, !llvm.loop !1718

; <label>:35:                                     ; preds = %31, %3, %6
  ret void, !dbg !1720
}

; Function Attrs: nounwind readnone
declare i32** @__ctype_tolower_loc() local_unnamed_addr #8

; Function Attrs: nounwind
declare void @free(i8* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind
declare i8* @dcngettext(i8*, i8*, i8*, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @close_stdout_set_file_name(i8*) local_unnamed_addr #7 !dbg !1721 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1723, metadata !DIExpression()), !dbg !1724
  store i8* %0, i8** @file_name, align 8, !dbg !1725, !tbaa !835
  ret void, !dbg !1726
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @close_stdout_set_ignore_EPIPE(i1 zeroext) local_unnamed_addr #7 !dbg !1727 {
  %2 = zext i1 %0 to i8
  call void @llvm.dbg.value(metadata i1 %0, metadata !1731, metadata !DIExpression()), !dbg !1732
  store i8 %2, i8* @ignore_EPIPE, align 1, !dbg !1733, !tbaa !1637
  ret void, !dbg !1734
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @close_stdout() #7 !dbg !1735 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1740, !tbaa !835
  %2 = tail call i32 @close_stream(%struct._IO_FILE* %1) #10, !dbg !1741
  %3 = icmp eq i32 %2, 0, !dbg !1742
  br i1 %3, label %22, label %4, !dbg !1743

; <label>:4:                                      ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 1, !dbg !1744, !tbaa !1637, !range !1745
  %6 = icmp eq i8 %5, 0, !dbg !1744
  br i1 %6, label %11, label %7, !dbg !1746

; <label>:7:                                      ; preds = %4
  %8 = tail call i32* @__errno_location() #17, !dbg !1747
  %9 = load i32, i32* %8, align 4, !dbg !1747, !tbaa !1043
  %10 = icmp eq i32 %9, 32, !dbg !1748
  br i1 %10, label %22, label %11, !dbg !1749

; <label>:11:                                     ; preds = %4, %7
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.86, i64 0, i64 0), i32 5) #10, !dbg !1750
  call void @llvm.dbg.value(metadata i8* %12, metadata !1737, metadata !DIExpression()), !dbg !1751
  %13 = load i8*, i8** @file_name, align 8, !dbg !1752, !tbaa !835
  %14 = icmp eq i8* %13, null, !dbg !1752
  %15 = tail call i32* @__errno_location() #17, !dbg !1754
  %16 = load i32, i32* %15, align 4, !dbg !1754, !tbaa !1043
  br i1 %14, label %19, label %17, !dbg !1755

; <label>:17:                                     ; preds = %11
  %18 = tail call i8* @quotearg_colon(i8* nonnull %13) #10, !dbg !1756
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.87, i64 0, i64 0), i8* %18, i8* %12) #10, !dbg !1757
  br label %20, !dbg !1757

; <label>:19:                                     ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.88, i64 0, i64 0), i8* %12) #10, !dbg !1758
  br label %20

; <label>:20:                                     ; preds = %19, %17
  %21 = load volatile i32, i32* @exit_failure, align 4, !dbg !1759, !tbaa !1043
  tail call void @_exit(i32 %21) #15, !dbg !1760
  unreachable, !dbg !1760

; <label>:22:                                     ; preds = %0, %7
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1761, !tbaa !835
  %24 = tail call i32 @close_stream(%struct._IO_FILE* %23) #10, !dbg !1763
  %25 = icmp eq i32 %24, 0, !dbg !1764
  br i1 %25, label %28, label %26, !dbg !1765

; <label>:26:                                     ; preds = %22
  %27 = load volatile i32, i32* @exit_failure, align 4, !dbg !1766, !tbaa !1043
  tail call void @_exit(i32 %27) #15, !dbg !1767
  unreachable, !dbg !1767

; <label>:28:                                     ; preds = %22
  ret void, !dbg !1768
}

; Function Attrs: noreturn
declare void @_exit(i32) local_unnamed_addr #9

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @sha1_init_ctx(%struct.sha1_ctx* nocapture) local_unnamed_addr #7 !dbg !1769 {
  call void @llvm.dbg.value(metadata %struct.sha1_ctx* %0, metadata !1791, metadata !DIExpression()), !dbg !1792
  %2 = bitcast %struct.sha1_ctx* %0 to <4 x i32>*, !dbg !1793
  store <4 x i32> <i32 1732584193, i32 -271733879, i32 -1732584194, i32 271733878>, <4 x i32>* %2, align 4, !dbg !1793, !tbaa !1043
  %3 = getelementptr inbounds %struct.sha1_ctx, %struct.sha1_ctx* %0, i64 0, i32 4, !dbg !1794
  %4 = bitcast i32* %3 to <4 x i32>*, !dbg !1795
  store <4 x i32> <i32 -1009589776, i32 0, i32 0, i32 0>, <4 x i32>* %4, align 4, !dbg !1795, !tbaa !1043
  ret void, !dbg !1796
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @sha1_read_ctx(%struct.sha1_ctx* nocapture readonly, i8* returned) local_unnamed_addr #7 !dbg !1797 {
  call void @llvm.dbg.value(metadata %struct.sha1_ctx* %0, metadata !1803, metadata !DIExpression()), !dbg !1806
  call void @llvm.dbg.value(metadata i8* %1, metadata !1804, metadata !DIExpression()), !dbg !1807
  call void @llvm.dbg.value(metadata i8* %1, metadata !1805, metadata !DIExpression()), !dbg !1808
  %3 = getelementptr inbounds %struct.sha1_ctx, %struct.sha1_ctx* %0, i64 0, i32 0, !dbg !1809
  %4 = load i32, i32* %3, align 4, !dbg !1809, !tbaa !1810
  call void @llvm.dbg.value(metadata i32 %4, metadata !1812, metadata !DIExpression()) #10, !dbg !1818
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #10, !dbg !1820
  call void @llvm.dbg.value(metadata i8* %1, metadata !1821, metadata !DIExpression()), !dbg !1827
  call void @llvm.dbg.value(metadata i32 %5, metadata !1826, metadata !DIExpression()), !dbg !1829
  %6 = bitcast i8* %1 to i32*, !dbg !1830
  store i32 %5, i32* %6, align 1, !dbg !1830
  %7 = getelementptr inbounds i8, i8* %1, i64 4, !dbg !1831
  %8 = getelementptr inbounds %struct.sha1_ctx, %struct.sha1_ctx* %0, i64 0, i32 1, !dbg !1832
  %9 = load i32, i32* %8, align 4, !dbg !1832, !tbaa !1833
  call void @llvm.dbg.value(metadata i32 %9, metadata !1812, metadata !DIExpression()) #10, !dbg !1834
  %10 = tail call i32 @llvm.bswap.i32(i32 %9) #10, !dbg !1836
  call void @llvm.dbg.value(metadata i8* %7, metadata !1821, metadata !DIExpression()), !dbg !1837
  call void @llvm.dbg.value(metadata i32 %10, metadata !1826, metadata !DIExpression()), !dbg !1839
  %11 = bitcast i8* %7 to i32*, !dbg !1840
  store i32 %10, i32* %11, align 1, !dbg !1840
  %12 = getelementptr inbounds i8, i8* %1, i64 8, !dbg !1841
  %13 = getelementptr inbounds %struct.sha1_ctx, %struct.sha1_ctx* %0, i64 0, i32 2, !dbg !1842
  %14 = load i32, i32* %13, align 4, !dbg !1842, !tbaa !1843
  call void @llvm.dbg.value(metadata i32 %14, metadata !1812, metadata !DIExpression()) #10, !dbg !1844
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #10, !dbg !1846
  call void @llvm.dbg.value(metadata i8* %12, metadata !1821, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i32 %15, metadata !1826, metadata !DIExpression()), !dbg !1849
  %16 = bitcast i8* %12 to i32*, !dbg !1850
  store i32 %15, i32* %16, align 1, !dbg !1850
  %17 = getelementptr inbounds i8, i8* %1, i64 12, !dbg !1851
  %18 = getelementptr inbounds %struct.sha1_ctx, %struct.sha1_ctx* %0, i64 0, i32 3, !dbg !1852
  %19 = load i32, i32* %18, align 4, !dbg !1852, !tbaa !1853
  call void @llvm.dbg.value(metadata i32 %19, metadata !1812, metadata !DIExpression()) #10, !dbg !1854
  %20 = tail call i32 @llvm.bswap.i32(i32 %19) #10, !dbg !1856
  call void @llvm.dbg.value(metadata i8* %17, metadata !1821, metadata !DIExpression()), !dbg !1857
  call void @llvm.dbg.value(metadata i32 %20, metadata !1826, metadata !DIExpression()), !dbg !1859
  %21 = bitcast i8* %17 to i32*, !dbg !1860
  store i32 %20, i32* %21, align 1, !dbg !1860
  %22 = getelementptr inbounds i8, i8* %1, i64 16, !dbg !1861
  %23 = getelementptr inbounds %struct.sha1_ctx, %struct.sha1_ctx* %0, i64 0, i32 4, !dbg !1862
  %24 = load i32, i32* %23, align 4, !dbg !1862, !tbaa !1863
  call void @llvm.dbg.value(metadata i32 %24, metadata !1812, metadata !DIExpression()) #10, !dbg !1864
  %25 = tail call i32 @llvm.bswap.i32(i32 %24) #10, !dbg !1866
  call void @llvm.dbg.value(metadata i8* %22, metadata !1821, metadata !DIExpression()), !dbg !1867
  call void @llvm.dbg.value(metadata i32 %25, metadata !1826, metadata !DIExpression()), !dbg !1869
  %26 = bitcast i8* %22 to i32*, !dbg !1870
  store i32 %25, i32* %26, align 1, !dbg !1870
  ret i8* %1, !dbg !1871
}

; Function Attrs: nounwind readnone speculatable
declare i32 @llvm.bswap.i32(i32) #1

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @sha1_finish_ctx(%struct.sha1_ctx*, i8* returned) local_unnamed_addr #7 !dbg !1872 {
  call void @llvm.dbg.value(metadata %struct.sha1_ctx* %0, metadata !1876, metadata !DIExpression()), !dbg !1880
  call void @llvm.dbg.value(metadata i8* %1, metadata !1877, metadata !DIExpression()), !dbg !1881
  %3 = getelementptr inbounds %struct.sha1_ctx, %struct.sha1_ctx* %0, i64 0, i32 6, !dbg !1882
  %4 = load i32, i32* %3, align 4, !dbg !1882, !tbaa !1883
  call void @llvm.dbg.value(metadata i32 %4, metadata !1878, metadata !DIExpression()), !dbg !1884
  %5 = icmp ult i32 %4, 56, !dbg !1885
  %6 = select i1 %5, i64 16, i64 32, !dbg !1886
  call void @llvm.dbg.value(metadata i64 %6, metadata !1879, metadata !DIExpression()), !dbg !1887
  %7 = getelementptr inbounds %struct.sha1_ctx, %struct.sha1_ctx* %0, i64 0, i32 5, i64 0, !dbg !1888
  %8 = load i32, i32* %7, align 4, !dbg !1889, !tbaa !1043
  %9 = add i32 %8, %4, !dbg !1889
  store i32 %9, i32* %7, align 4, !dbg !1889, !tbaa !1043
  %10 = icmp ult i32 %9, %4, !dbg !1890
  %11 = getelementptr inbounds %struct.sha1_ctx, %struct.sha1_ctx* %0, i64 0, i32 5, i64 1
  %12 = load i32, i32* %11, align 4, !dbg !1892, !tbaa !1043
  br i1 %10, label %13, label %15, !dbg !1893

; <label>:13:                                     ; preds = %2
  %14 = add i32 %12, 1, !dbg !1894
  store i32 %14, i32* %11, align 4, !dbg !1894, !tbaa !1043
  br label %15, !dbg !1894

; <label>:15:                                     ; preds = %2, %13
  %16 = phi i32 [ %14, %13 ], [ %12, %2 ], !dbg !1895
  %17 = shl i32 %16, 3, !dbg !1895
  %18 = lshr i32 %9, 29, !dbg !1895
  %19 = or i32 %17, %18, !dbg !1895
  call void @llvm.dbg.value(metadata i32 %19, metadata !1812, metadata !DIExpression()) #10, !dbg !1896
  %20 = tail call i32 @llvm.bswap.i32(i32 %19) #10, !dbg !1898
  %21 = add nsw i64 %6, -2, !dbg !1899
  %22 = getelementptr inbounds %struct.sha1_ctx, %struct.sha1_ctx* %0, i64 0, i32 7, i64 %21, !dbg !1900
  store i32 %20, i32* %22, align 4, !dbg !1901, !tbaa !1043
  %23 = shl i32 %9, 3, !dbg !1902
  call void @llvm.dbg.value(metadata i32 %23, metadata !1812, metadata !DIExpression()) #10, !dbg !1903
  %24 = tail call i32 @llvm.bswap.i32(i32 %23) #10, !dbg !1905
  %25 = add nsw i64 %6, -1, !dbg !1906
  %26 = getelementptr inbounds %struct.sha1_ctx, %struct.sha1_ctx* %0, i64 0, i32 7, i64 %25, !dbg !1907
  store i32 %24, i32* %26, align 4, !dbg !1908, !tbaa !1043
  %27 = getelementptr inbounds %struct.sha1_ctx, %struct.sha1_ctx* %0, i64 0, i32 7, i64 0, !dbg !1909
  %28 = bitcast i32* %27 to i8*, !dbg !1909
  %29 = zext i32 %4 to i64, !dbg !1909
  %30 = getelementptr inbounds i8, i8* %28, i64 %29, !dbg !1909
  %31 = shl nsw i64 %21, 2, !dbg !1910
  %32 = sub nsw i64 %31, %29, !dbg !1911
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %30, i8* align 16 getelementptr inbounds (<{ i8, [63 x i8] }>, <{ i8, [63 x i8] }>* @fillbuf, i64 0, i32 0), i64 %32, i1 false), !dbg !1912
  %33 = shl nuw nsw i64 %6, 2, !dbg !1913
  tail call void @sha1_process_block(i8* nonnull %28, i64 %33, %struct.sha1_ctx* nonnull %0), !dbg !1914
  call void @llvm.dbg.value(metadata %struct.sha1_ctx* %0, metadata !1803, metadata !DIExpression()) #10, !dbg !1915
  call void @llvm.dbg.value(metadata i8* %1, metadata !1804, metadata !DIExpression()) #10, !dbg !1917
  call void @llvm.dbg.value(metadata i8* %1, metadata !1805, metadata !DIExpression()) #10, !dbg !1918
  %34 = getelementptr inbounds %struct.sha1_ctx, %struct.sha1_ctx* %0, i64 0, i32 0, !dbg !1919
  %35 = load i32, i32* %34, align 4, !dbg !1919, !tbaa !1810
  call void @llvm.dbg.value(metadata i32 %35, metadata !1812, metadata !DIExpression()) #10, !dbg !1920
  %36 = tail call i32 @llvm.bswap.i32(i32 %35) #10, !dbg !1922
  call void @llvm.dbg.value(metadata i8* %1, metadata !1821, metadata !DIExpression()) #10, !dbg !1923
  call void @llvm.dbg.value(metadata i32 %36, metadata !1826, metadata !DIExpression()) #10, !dbg !1925
  %37 = bitcast i8* %1 to i32*, !dbg !1926
  store i32 %36, i32* %37, align 1, !dbg !1926
  %38 = getelementptr inbounds i8, i8* %1, i64 4, !dbg !1927
  %39 = getelementptr inbounds %struct.sha1_ctx, %struct.sha1_ctx* %0, i64 0, i32 1, !dbg !1928
  %40 = load i32, i32* %39, align 4, !dbg !1928, !tbaa !1833
  call void @llvm.dbg.value(metadata i32 %40, metadata !1812, metadata !DIExpression()) #10, !dbg !1929
  %41 = tail call i32 @llvm.bswap.i32(i32 %40) #10, !dbg !1931
  call void @llvm.dbg.value(metadata i8* %38, metadata !1821, metadata !DIExpression()) #10, !dbg !1932
  call void @llvm.dbg.value(metadata i32 %41, metadata !1826, metadata !DIExpression()) #10, !dbg !1934
  %42 = bitcast i8* %38 to i32*, !dbg !1935
  store i32 %41, i32* %42, align 1, !dbg !1935
  %43 = getelementptr inbounds i8, i8* %1, i64 8, !dbg !1936
  %44 = getelementptr inbounds %struct.sha1_ctx, %struct.sha1_ctx* %0, i64 0, i32 2, !dbg !1937
  %45 = load i32, i32* %44, align 4, !dbg !1937, !tbaa !1843
  call void @llvm.dbg.value(metadata i32 %45, metadata !1812, metadata !DIExpression()) #10, !dbg !1938
  %46 = tail call i32 @llvm.bswap.i32(i32 %45) #10, !dbg !1940
  call void @llvm.dbg.value(metadata i8* %43, metadata !1821, metadata !DIExpression()) #10, !dbg !1941
  call void @llvm.dbg.value(metadata i32 %46, metadata !1826, metadata !DIExpression()) #10, !dbg !1943
  %47 = bitcast i8* %43 to i32*, !dbg !1944
  store i32 %46, i32* %47, align 1, !dbg !1944
  %48 = getelementptr inbounds i8, i8* %1, i64 12, !dbg !1945
  %49 = getelementptr inbounds %struct.sha1_ctx, %struct.sha1_ctx* %0, i64 0, i32 3, !dbg !1946
  %50 = load i32, i32* %49, align 4, !dbg !1946, !tbaa !1853
  call void @llvm.dbg.value(metadata i32 %50, metadata !1812, metadata !DIExpression()) #10, !dbg !1947
  %51 = tail call i32 @llvm.bswap.i32(i32 %50) #10, !dbg !1949
  call void @llvm.dbg.value(metadata i8* %48, metadata !1821, metadata !DIExpression()) #10, !dbg !1950
  call void @llvm.dbg.value(metadata i32 %51, metadata !1826, metadata !DIExpression()) #10, !dbg !1952
  %52 = bitcast i8* %48 to i32*, !dbg !1953
  store i32 %51, i32* %52, align 1, !dbg !1953
  %53 = getelementptr inbounds i8, i8* %1, i64 16, !dbg !1954
  %54 = getelementptr inbounds %struct.sha1_ctx, %struct.sha1_ctx* %0, i64 0, i32 4, !dbg !1955
  %55 = load i32, i32* %54, align 4, !dbg !1955, !tbaa !1863
  call void @llvm.dbg.value(metadata i32 %55, metadata !1812, metadata !DIExpression()) #10, !dbg !1956
  %56 = tail call i32 @llvm.bswap.i32(i32 %55) #10, !dbg !1958
  call void @llvm.dbg.value(metadata i8* %53, metadata !1821, metadata !DIExpression()) #10, !dbg !1959
  call void @llvm.dbg.value(metadata i32 %56, metadata !1826, metadata !DIExpression()) #10, !dbg !1961
  %57 = bitcast i8* %53 to i32*, !dbg !1962
  store i32 %56, i32* %57, align 1, !dbg !1962
  ret i8* %1, !dbg !1963
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @sha1_process_block(i8* readonly, i64, %struct.sha1_ctx* nocapture) local_unnamed_addr #7 !dbg !1964 {
  %4 = alloca [16 x i32], align 16
  call void @llvm.dbg.value(metadata i8* %0, metadata !1968, metadata !DIExpression()), !dbg !1987
  call void @llvm.dbg.value(metadata i64 %1, metadata !1969, metadata !DIExpression()), !dbg !1988
  call void @llvm.dbg.value(metadata %struct.sha1_ctx* %2, metadata !1970, metadata !DIExpression()), !dbg !1989
  %5 = bitcast i8* %0 to i32*, !dbg !1990
  call void @llvm.dbg.value(metadata i32* %5, metadata !1971, metadata !DIExpression()), !dbg !1991
  %6 = lshr i64 %1, 2, !dbg !1992
  call void @llvm.dbg.value(metadata i64 %6, metadata !1974, metadata !DIExpression()), !dbg !1993
  %7 = getelementptr inbounds i32, i32* %5, i64 %6, !dbg !1994
  call void @llvm.dbg.value(metadata i32* %7, metadata !1975, metadata !DIExpression()), !dbg !1995
  %8 = bitcast [16 x i32]* %4 to i8*, !dbg !1996
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %8) #10, !dbg !1996
  call void @llvm.dbg.declare(metadata [16 x i32]* %4, metadata !1976, metadata !DIExpression()), !dbg !1997
  %9 = getelementptr inbounds %struct.sha1_ctx, %struct.sha1_ctx* %2, i64 0, i32 0, !dbg !1998
  %10 = load i32, i32* %9, align 4, !dbg !1998, !tbaa !1810
  call void @llvm.dbg.value(metadata i32 %10, metadata !1978, metadata !DIExpression()), !dbg !1999
  %11 = getelementptr inbounds %struct.sha1_ctx, %struct.sha1_ctx* %2, i64 0, i32 1, !dbg !2000
  call void @llvm.dbg.value(metadata i32 undef, metadata !1979, metadata !DIExpression()), !dbg !2001
  call void @llvm.dbg.value(metadata i32 undef, metadata !1980, metadata !DIExpression()), !dbg !2002
  call void @llvm.dbg.value(metadata i32 undef, metadata !1981, metadata !DIExpression()), !dbg !2003
  %12 = bitcast i32* %11 to <4 x i32>*, !dbg !2000
  %13 = load <4 x i32>, <4 x i32>* %12, align 4, !dbg !2000, !tbaa !1043
  call void @llvm.dbg.value(metadata i32 undef, metadata !1982, metadata !DIExpression()), !dbg !2004
  %14 = trunc i64 %1 to i32, !dbg !2005
  call void @llvm.dbg.value(metadata i32 %14, metadata !1983, metadata !DIExpression()), !dbg !2006
  %15 = getelementptr inbounds %struct.sha1_ctx, %struct.sha1_ctx* %2, i64 0, i32 5, i64 0, !dbg !2007
  %16 = load i32, i32* %15, align 4, !dbg !2008, !tbaa !1043
  %17 = add i32 %16, %14, !dbg !2008
  store i32 %17, i32* %15, align 4, !dbg !2008, !tbaa !1043
  %18 = lshr i64 %1, 32, !dbg !2009
  %19 = icmp ult i32 %17, %14, !dbg !2010
  %20 = zext i1 %19 to i64, !dbg !2011
  %21 = add nuw nsw i64 %18, %20, !dbg !2012
  %22 = getelementptr inbounds %struct.sha1_ctx, %struct.sha1_ctx* %2, i64 0, i32 5, i64 1, !dbg !2013
  %23 = load i32, i32* %22, align 4, !dbg !2014, !tbaa !1043
  %24 = trunc i64 %21 to i32, !dbg !2014
  %25 = add i32 %23, %24, !dbg !2014
  store i32 %25, i32* %22, align 4, !dbg !2014, !tbaa !1043
  call void @llvm.dbg.value(metadata i32* %5, metadata !1971, metadata !DIExpression()), !dbg !1991
  call void @llvm.dbg.value(metadata i32 %10, metadata !1978, metadata !DIExpression()), !dbg !1999
  call void @llvm.dbg.value(metadata i32 undef, metadata !1982, metadata !DIExpression()), !dbg !2004
  call void @llvm.dbg.value(metadata i32 undef, metadata !1981, metadata !DIExpression()), !dbg !2003
  call void @llvm.dbg.value(metadata i32 undef, metadata !1980, metadata !DIExpression()), !dbg !2002
  call void @llvm.dbg.value(metadata i32 undef, metadata !1979, metadata !DIExpression()), !dbg !2001
  %26 = icmp ugt i32* %7, %5, !dbg !2015
  br i1 %26, label %27, label %1510, !dbg !2016

; <label>:27:                                     ; preds = %3
  %28 = shufflevector <4 x i32> %13, <4 x i32> undef, <4 x i32> <i32 3, i32 2, i32 1, i32 0>, !dbg !2000
  %29 = getelementptr inbounds [16 x i32], [16 x i32]* %4, i64 0, i64 0
  %30 = getelementptr inbounds [16 x i32], [16 x i32]* %4, i64 0, i64 1
  %31 = getelementptr inbounds [16 x i32], [16 x i32]* %4, i64 0, i64 2
  %32 = getelementptr inbounds [16 x i32], [16 x i32]* %4, i64 0, i64 3
  %33 = getelementptr inbounds [16 x i32], [16 x i32]* %4, i64 0, i64 4
  %34 = getelementptr inbounds [16 x i32], [16 x i32]* %4, i64 0, i64 5
  %35 = getelementptr inbounds [16 x i32], [16 x i32]* %4, i64 0, i64 6
  %36 = getelementptr inbounds [16 x i32], [16 x i32]* %4, i64 0, i64 7
  %37 = getelementptr inbounds [16 x i32], [16 x i32]* %4, i64 0, i64 8
  %38 = getelementptr inbounds [16 x i32], [16 x i32]* %4, i64 0, i64 9
  %39 = getelementptr inbounds [16 x i32], [16 x i32]* %4, i64 0, i64 10
  %40 = getelementptr inbounds [16 x i32], [16 x i32]* %4, i64 0, i64 11
  %41 = getelementptr inbounds [16 x i32], [16 x i32]* %4, i64 0, i64 12
  %42 = getelementptr inbounds [16 x i32], [16 x i32]* %4, i64 0, i64 13
  %43 = getelementptr inbounds [16 x i32], [16 x i32]* %4, i64 0, i64 14
  %44 = getelementptr inbounds [16 x i32], [16 x i32]* %4, i64 0, i64 15
  %45 = bitcast i32* %31 to <4 x i32>*
  %46 = bitcast i32* %35 to <4 x i32>*
  %47 = bitcast i32* %39 to <4 x i32>*
  %48 = bitcast i32* %11 to <4 x i32>*
  %49 = bitcast i32* %11 to <4 x i32>*
  br label %50, !dbg !2016

; <label>:50:                                     ; preds = %27, %50
  %51 = phi i32* [ %5, %27 ], [ %77, %50 ]
  %52 = phi i32 [ %10, %27 ], [ %1501, %50 ]
  %53 = phi <4 x i32> [ %28, %27 ], [ %1509, %50 ]
  call void @llvm.dbg.value(metadata i32* %51, metadata !1971, metadata !DIExpression()), !dbg !1991
  call void @llvm.dbg.value(metadata i32 %52, metadata !1978, metadata !DIExpression()), !dbg !1999
  call void @llvm.dbg.value(metadata i32 undef, metadata !1982, metadata !DIExpression()), !dbg !2004
  call void @llvm.dbg.value(metadata i32 undef, metadata !1981, metadata !DIExpression()), !dbg !2003
  call void @llvm.dbg.value(metadata i32 undef, metadata !1980, metadata !DIExpression()), !dbg !2002
  call void @llvm.dbg.value(metadata i32 undef, metadata !1979, metadata !DIExpression()), !dbg !2001
  call void @llvm.dbg.value(metadata i32 0, metadata !1986, metadata !DIExpression()), !dbg !2017
  call void @llvm.dbg.value(metadata i32* %51, metadata !1971, metadata !DIExpression()), !dbg !1991
  call void @llvm.dbg.value(metadata i64 0, metadata !1986, metadata !DIExpression()), !dbg !2017
  call void @llvm.dbg.value(metadata i32* %51, metadata !1971, metadata !DIExpression()), !dbg !1991
  %54 = load i32, i32* %51, align 4, !dbg !2018, !tbaa !1043
  call void @llvm.dbg.value(metadata i32 %54, metadata !1812, metadata !DIExpression()) #10, !dbg !2022
  %55 = tail call i32 @llvm.bswap.i32(i32 %54) #10, !dbg !2024
  store i32 %55, i32* %29, align 16, !dbg !2025, !tbaa !1043
  %56 = getelementptr inbounds i32, i32* %51, i64 1, !dbg !2026
  call void @llvm.dbg.value(metadata i32 undef, metadata !1986, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2017
  call void @llvm.dbg.value(metadata i32* %56, metadata !1971, metadata !DIExpression()), !dbg !1991
  call void @llvm.dbg.value(metadata i64 1, metadata !1986, metadata !DIExpression()), !dbg !2017
  call void @llvm.dbg.value(metadata i32* %56, metadata !1971, metadata !DIExpression()), !dbg !1991
  %57 = load i32, i32* %56, align 4, !dbg !2018, !tbaa !1043
  call void @llvm.dbg.value(metadata i32 %57, metadata !1812, metadata !DIExpression()) #10, !dbg !2022
  %58 = tail call i32 @llvm.bswap.i32(i32 %57) #10, !dbg !2024
  store i32 %58, i32* %30, align 4, !dbg !2025, !tbaa !1043
  %59 = getelementptr inbounds i32, i32* %51, i64 2, !dbg !2026
  call void @llvm.dbg.value(metadata i32 undef, metadata !1986, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2017
  call void @llvm.dbg.value(metadata i32* %59, metadata !1971, metadata !DIExpression()), !dbg !1991
  call void @llvm.dbg.value(metadata i64 2, metadata !1986, metadata !DIExpression()), !dbg !2017
  call void @llvm.dbg.value(metadata i32* %59, metadata !1971, metadata !DIExpression()), !dbg !1991
  call void @llvm.dbg.value(metadata i32 undef, metadata !1812, metadata !DIExpression()) #10, !dbg !2022
  call void @llvm.dbg.value(metadata i32 undef, metadata !1986, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2017
  call void @llvm.dbg.value(metadata i32* %51, metadata !1971, metadata !DIExpression(DW_OP_plus_uconst, 12, DW_OP_stack_value)), !dbg !1991
  call void @llvm.dbg.value(metadata i64 3, metadata !1986, metadata !DIExpression()), !dbg !2017
  call void @llvm.dbg.value(metadata i32* %51, metadata !1971, metadata !DIExpression(DW_OP_plus_uconst, 12, DW_OP_stack_value)), !dbg !1991
  call void @llvm.dbg.value(metadata i32 undef, metadata !1812, metadata !DIExpression()) #10, !dbg !2022
  call void @llvm.dbg.value(metadata i32 undef, metadata !1986, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2017
  call void @llvm.dbg.value(metadata i32* %51, metadata !1971, metadata !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value)), !dbg !1991
  call void @llvm.dbg.value(metadata i64 4, metadata !1986, metadata !DIExpression()), !dbg !2017
  call void @llvm.dbg.value(metadata i32* %51, metadata !1971, metadata !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value)), !dbg !1991
  call void @llvm.dbg.value(metadata i32 undef, metadata !1812, metadata !DIExpression()) #10, !dbg !2022
  call void @llvm.dbg.value(metadata i32 undef, metadata !1986, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2017
  call void @llvm.dbg.value(metadata i32* %51, metadata !1971, metadata !DIExpression(DW_OP_plus_uconst, 20, DW_OP_stack_value)), !dbg !1991
  call void @llvm.dbg.value(metadata i64 5, metadata !1986, metadata !DIExpression()), !dbg !2017
  call void @llvm.dbg.value(metadata i32* %51, metadata !1971, metadata !DIExpression(DW_OP_plus_uconst, 20, DW_OP_stack_value)), !dbg !1991
  %60 = bitcast i32* %59 to <4 x i32>*, !dbg !2018
  %61 = load <4 x i32>, <4 x i32>* %60, align 4, !dbg !2018, !tbaa !1043
  call void @llvm.dbg.value(metadata i32 undef, metadata !1812, metadata !DIExpression()) #10, !dbg !2022
  %62 = call <4 x i32> @llvm.bswap.v4i32(<4 x i32> %61), !dbg !2024
  store <4 x i32> %62, <4 x i32>* %45, align 8, !dbg !2025, !tbaa !1043
  %63 = getelementptr inbounds i32, i32* %51, i64 6, !dbg !2026
  call void @llvm.dbg.value(metadata i32 undef, metadata !1986, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2017
  call void @llvm.dbg.value(metadata i32* %63, metadata !1971, metadata !DIExpression()), !dbg !1991
  call void @llvm.dbg.value(metadata i64 6, metadata !1986, metadata !DIExpression()), !dbg !2017
  call void @llvm.dbg.value(metadata i32* %63, metadata !1971, metadata !DIExpression()), !dbg !1991
  call void @llvm.dbg.value(metadata i32 undef, metadata !1812, metadata !DIExpression()) #10, !dbg !2022
  call void @llvm.dbg.value(metadata i32 undef, metadata !1986, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2017
  call void @llvm.dbg.value(metadata i32* %51, metadata !1971, metadata !DIExpression(DW_OP_plus_uconst, 28, DW_OP_stack_value)), !dbg !1991
  call void @llvm.dbg.value(metadata i64 7, metadata !1986, metadata !DIExpression()), !dbg !2017
  call void @llvm.dbg.value(metadata i32* %51, metadata !1971, metadata !DIExpression(DW_OP_plus_uconst, 28, DW_OP_stack_value)), !dbg !1991
  call void @llvm.dbg.value(metadata i32 undef, metadata !1812, metadata !DIExpression()) #10, !dbg !2022
  call void @llvm.dbg.value(metadata i32 undef, metadata !1986, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2017
  call void @llvm.dbg.value(metadata i32* %51, metadata !1971, metadata !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value)), !dbg !1991
  call void @llvm.dbg.value(metadata i64 8, metadata !1986, metadata !DIExpression()), !dbg !2017
  call void @llvm.dbg.value(metadata i32* %51, metadata !1971, metadata !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value)), !dbg !1991
  call void @llvm.dbg.value(metadata i32 undef, metadata !1812, metadata !DIExpression()) #10, !dbg !2022
  call void @llvm.dbg.value(metadata i32 undef, metadata !1986, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2017
  call void @llvm.dbg.value(metadata i32* %51, metadata !1971, metadata !DIExpression(DW_OP_plus_uconst, 36, DW_OP_stack_value)), !dbg !1991
  call void @llvm.dbg.value(metadata i64 9, metadata !1986, metadata !DIExpression()), !dbg !2017
  call void @llvm.dbg.value(metadata i32* %51, metadata !1971, metadata !DIExpression(DW_OP_plus_uconst, 36, DW_OP_stack_value)), !dbg !1991
  %64 = bitcast i32* %63 to <4 x i32>*, !dbg !2018
  %65 = load <4 x i32>, <4 x i32>* %64, align 4, !dbg !2018, !tbaa !1043
  call void @llvm.dbg.value(metadata i32 undef, metadata !1812, metadata !DIExpression()) #10, !dbg !2022
  %66 = call <4 x i32> @llvm.bswap.v4i32(<4 x i32> %65), !dbg !2024
  store <4 x i32> %66, <4 x i32>* %46, align 8, !dbg !2025, !tbaa !1043
  %67 = getelementptr inbounds i32, i32* %51, i64 10, !dbg !2026
  call void @llvm.dbg.value(metadata i32 undef, metadata !1986, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2017
  call void @llvm.dbg.value(metadata i32* %67, metadata !1971, metadata !DIExpression()), !dbg !1991
  call void @llvm.dbg.value(metadata i64 10, metadata !1986, metadata !DIExpression()), !dbg !2017
  call void @llvm.dbg.value(metadata i32* %67, metadata !1971, metadata !DIExpression()), !dbg !1991
  call void @llvm.dbg.value(metadata i32 undef, metadata !1812, metadata !DIExpression()) #10, !dbg !2022
  call void @llvm.dbg.value(metadata i32 undef, metadata !1986, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2017
  call void @llvm.dbg.value(metadata i32* %51, metadata !1971, metadata !DIExpression(DW_OP_plus_uconst, 44, DW_OP_stack_value)), !dbg !1991
  call void @llvm.dbg.value(metadata i64 11, metadata !1986, metadata !DIExpression()), !dbg !2017
  call void @llvm.dbg.value(metadata i32* %51, metadata !1971, metadata !DIExpression(DW_OP_plus_uconst, 44, DW_OP_stack_value)), !dbg !1991
  call void @llvm.dbg.value(metadata i32 undef, metadata !1812, metadata !DIExpression()) #10, !dbg !2022
  call void @llvm.dbg.value(metadata i32 undef, metadata !1986, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2017
  call void @llvm.dbg.value(metadata i32* %51, metadata !1971, metadata !DIExpression(DW_OP_plus_uconst, 48, DW_OP_stack_value)), !dbg !1991
  call void @llvm.dbg.value(metadata i64 12, metadata !1986, metadata !DIExpression()), !dbg !2017
  call void @llvm.dbg.value(metadata i32* %51, metadata !1971, metadata !DIExpression(DW_OP_plus_uconst, 48, DW_OP_stack_value)), !dbg !1991
  call void @llvm.dbg.value(metadata i32 undef, metadata !1812, metadata !DIExpression()) #10, !dbg !2022
  call void @llvm.dbg.value(metadata i32 undef, metadata !1986, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2017
  call void @llvm.dbg.value(metadata i32* %51, metadata !1971, metadata !DIExpression(DW_OP_plus_uconst, 52, DW_OP_stack_value)), !dbg !1991
  call void @llvm.dbg.value(metadata i64 13, metadata !1986, metadata !DIExpression()), !dbg !2017
  call void @llvm.dbg.value(metadata i32* %51, metadata !1971, metadata !DIExpression(DW_OP_plus_uconst, 52, DW_OP_stack_value)), !dbg !1991
  %68 = bitcast i32* %67 to <4 x i32>*, !dbg !2018
  %69 = load <4 x i32>, <4 x i32>* %68, align 4, !dbg !2018, !tbaa !1043
  call void @llvm.dbg.value(metadata i32 undef, metadata !1812, metadata !DIExpression()) #10, !dbg !2022
  %70 = call <4 x i32> @llvm.bswap.v4i32(<4 x i32> %69), !dbg !2024
  store <4 x i32> %70, <4 x i32>* %47, align 8, !dbg !2025, !tbaa !1043
  %71 = getelementptr inbounds i32, i32* %51, i64 14, !dbg !2026
  call void @llvm.dbg.value(metadata i32 undef, metadata !1986, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2017
  call void @llvm.dbg.value(metadata i32* %71, metadata !1971, metadata !DIExpression()), !dbg !1991
  call void @llvm.dbg.value(metadata i64 14, metadata !1986, metadata !DIExpression()), !dbg !2017
  call void @llvm.dbg.value(metadata i32* %71, metadata !1971, metadata !DIExpression()), !dbg !1991
  %72 = load i32, i32* %71, align 4, !dbg !2018, !tbaa !1043
  call void @llvm.dbg.value(metadata i32 %72, metadata !1812, metadata !DIExpression()) #10, !dbg !2022
  %73 = tail call i32 @llvm.bswap.i32(i32 %72) #10, !dbg !2024
  store i32 %73, i32* %43, align 8, !dbg !2025, !tbaa !1043
  %74 = getelementptr inbounds i32, i32* %51, i64 15, !dbg !2026
  call void @llvm.dbg.value(metadata i32 undef, metadata !1986, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2017
  call void @llvm.dbg.value(metadata i32* %74, metadata !1971, metadata !DIExpression()), !dbg !1991
  call void @llvm.dbg.value(metadata i64 15, metadata !1986, metadata !DIExpression()), !dbg !2017
  call void @llvm.dbg.value(metadata i32* %74, metadata !1971, metadata !DIExpression()), !dbg !1991
  %75 = load i32, i32* %74, align 4, !dbg !2018, !tbaa !1043
  call void @llvm.dbg.value(metadata i32 %75, metadata !1812, metadata !DIExpression()) #10, !dbg !2022
  %76 = tail call i32 @llvm.bswap.i32(i32 %75) #10, !dbg !2024
  store i32 %76, i32* %44, align 4, !dbg !2025, !tbaa !1043
  call void @llvm.dbg.value(metadata i32 undef, metadata !1986, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2017
  %77 = getelementptr i32, i32* %51, i64 16, !dbg !2027
  %78 = shl i32 %52, 5, !dbg !2028
  %79 = lshr i32 %52, 27, !dbg !2028
  %80 = or i32 %78, %79, !dbg !2028
  %81 = extractelement <4 x i32> %53, i32 1, !dbg !2028
  %82 = extractelement <4 x i32> %53, i32 2, !dbg !2028
  %83 = xor i32 %81, %82, !dbg !2028
  %84 = extractelement <4 x i32> %53, i32 3, !dbg !2028
  %85 = and i32 %83, %84, !dbg !2028
  %86 = xor i32 %85, %81, !dbg !2028
  %87 = extractelement <4 x i32> %53, i32 0, !dbg !2028
  %88 = add i32 %87, 1518500249, !dbg !2028
  %89 = add i32 %88, %86, !dbg !2028
  %90 = add i32 %89, %80, !dbg !2028
  %91 = add i32 %90, %55, !dbg !2028
  call void @llvm.dbg.value(metadata i32 %91, metadata !1982, metadata !DIExpression()), !dbg !2004
  %92 = shl i32 %84, 30, !dbg !2028
  %93 = lshr i32 %84, 2, !dbg !2028
  %94 = or i32 %92, %93, !dbg !2028
  call void @llvm.dbg.value(metadata i32 %94, metadata !1979, metadata !DIExpression()), !dbg !2001
  %95 = shl i32 %91, 5, !dbg !2030
  %96 = lshr i32 %91, 27, !dbg !2030
  %97 = or i32 %95, %96, !dbg !2030
  %98 = xor i32 %94, %82, !dbg !2030
  %99 = and i32 %52, %98, !dbg !2030
  %100 = xor i32 %99, %82, !dbg !2030
  %101 = add i32 %81, 1518500249, !dbg !2030
  %102 = add i32 %101, %100, !dbg !2030
  %103 = add i32 %102, %58, !dbg !2030
  %104 = add i32 %103, %97, !dbg !2030
  call void @llvm.dbg.value(metadata i32 %104, metadata !1981, metadata !DIExpression()), !dbg !2003
  %105 = shl i32 %52, 30, !dbg !2030
  %106 = lshr i32 %52, 2, !dbg !2030
  %107 = or i32 %105, %106, !dbg !2030
  call void @llvm.dbg.value(metadata i32 %107, metadata !1978, metadata !DIExpression()), !dbg !1999
  %108 = shl i32 %104, 5, !dbg !2032
  %109 = lshr i32 %104, 27, !dbg !2032
  %110 = or i32 %108, %109, !dbg !2032
  %111 = xor i32 %107, %94, !dbg !2032
  %112 = and i32 %91, %111, !dbg !2032
  %113 = xor i32 %112, %94, !dbg !2032
  %114 = add i32 %82, 1518500249, !dbg !2032
  %115 = extractelement <4 x i32> %62, i32 0, !dbg !2032
  %116 = add i32 %114, %115, !dbg !2032
  %117 = add i32 %116, %113, !dbg !2032
  %118 = add i32 %117, %110, !dbg !2032
  call void @llvm.dbg.value(metadata i32 %118, metadata !1980, metadata !DIExpression()), !dbg !2002
  %119 = shl i32 %91, 30, !dbg !2032
  %120 = lshr i32 %91, 2, !dbg !2032
  %121 = or i32 %119, %120, !dbg !2032
  call void @llvm.dbg.value(metadata i32 %121, metadata !1982, metadata !DIExpression()), !dbg !2004
  %122 = shl i32 %118, 5, !dbg !2034
  %123 = lshr i32 %118, 27, !dbg !2034
  %124 = or i32 %122, %123, !dbg !2034
  %125 = xor i32 %121, %107, !dbg !2034
  %126 = and i32 %104, %125, !dbg !2034
  %127 = xor i32 %126, %107, !dbg !2034
  %128 = add i32 %94, 1518500249, !dbg !2034
  %129 = extractelement <4 x i32> %62, i32 1, !dbg !2034
  %130 = add i32 %128, %129, !dbg !2034
  %131 = add i32 %130, %127, !dbg !2034
  %132 = add i32 %131, %124, !dbg !2034
  call void @llvm.dbg.value(metadata i32 %132, metadata !1979, metadata !DIExpression()), !dbg !2001
  %133 = shl i32 %104, 30, !dbg !2034
  %134 = lshr i32 %104, 2, !dbg !2034
  %135 = or i32 %133, %134, !dbg !2034
  call void @llvm.dbg.value(metadata i32 %135, metadata !1981, metadata !DIExpression()), !dbg !2003
  %136 = shl i32 %132, 5, !dbg !2036
  %137 = lshr i32 %132, 27, !dbg !2036
  %138 = or i32 %136, %137, !dbg !2036
  %139 = xor i32 %135, %121, !dbg !2036
  %140 = and i32 %118, %139, !dbg !2036
  %141 = xor i32 %140, %121, !dbg !2036
  %142 = load i32, i32* %33, align 16, !dbg !2036, !tbaa !1043
  %143 = add i32 %107, 1518500249, !dbg !2036
  %144 = add i32 %143, %142, !dbg !2036
  %145 = add i32 %144, %141, !dbg !2036
  %146 = add i32 %145, %138, !dbg !2036
  call void @llvm.dbg.value(metadata i32 %146, metadata !1978, metadata !DIExpression()), !dbg !1999
  %147 = shl i32 %118, 30, !dbg !2036
  %148 = lshr i32 %118, 2, !dbg !2036
  %149 = or i32 %147, %148, !dbg !2036
  call void @llvm.dbg.value(metadata i32 %149, metadata !1980, metadata !DIExpression()), !dbg !2002
  %150 = shl i32 %146, 5, !dbg !2038
  %151 = lshr i32 %146, 27, !dbg !2038
  %152 = or i32 %150, %151, !dbg !2038
  %153 = xor i32 %149, %135, !dbg !2038
  %154 = and i32 %132, %153, !dbg !2038
  %155 = xor i32 %154, %135, !dbg !2038
  %156 = load i32, i32* %34, align 4, !dbg !2038, !tbaa !1043
  %157 = add i32 %121, 1518500249, !dbg !2038
  %158 = add i32 %157, %156, !dbg !2038
  %159 = add i32 %158, %155, !dbg !2038
  %160 = add i32 %159, %152, !dbg !2038
  call void @llvm.dbg.value(metadata i32 %160, metadata !1982, metadata !DIExpression()), !dbg !2004
  %161 = shl i32 %132, 30, !dbg !2038
  %162 = lshr i32 %132, 2, !dbg !2038
  %163 = or i32 %161, %162, !dbg !2038
  call void @llvm.dbg.value(metadata i32 %163, metadata !1979, metadata !DIExpression()), !dbg !2001
  %164 = shl i32 %160, 5, !dbg !2040
  %165 = lshr i32 %160, 27, !dbg !2040
  %166 = or i32 %164, %165, !dbg !2040
  %167 = xor i32 %163, %149, !dbg !2040
  %168 = and i32 %146, %167, !dbg !2040
  %169 = xor i32 %168, %149, !dbg !2040
  %170 = load i32, i32* %35, align 8, !dbg !2040, !tbaa !1043
  %171 = add i32 %170, 1518500249, !dbg !2040
  %172 = add i32 %171, %135, !dbg !2040
  %173 = add i32 %172, %169, !dbg !2040
  %174 = add i32 %173, %166, !dbg !2040
  call void @llvm.dbg.value(metadata i32 %174, metadata !1981, metadata !DIExpression()), !dbg !2003
  %175 = shl i32 %146, 30, !dbg !2040
  %176 = lshr i32 %146, 2, !dbg !2040
  %177 = or i32 %175, %176, !dbg !2040
  call void @llvm.dbg.value(metadata i32 %177, metadata !1978, metadata !DIExpression()), !dbg !1999
  %178 = shl i32 %174, 5, !dbg !2042
  %179 = lshr i32 %174, 27, !dbg !2042
  %180 = or i32 %178, %179, !dbg !2042
  %181 = xor i32 %177, %163, !dbg !2042
  %182 = and i32 %160, %181, !dbg !2042
  %183 = xor i32 %182, %163, !dbg !2042
  %184 = load i32, i32* %36, align 4, !dbg !2042, !tbaa !1043
  %185 = add i32 %184, 1518500249, !dbg !2042
  %186 = add i32 %185, %149, !dbg !2042
  %187 = add i32 %186, %183, !dbg !2042
  %188 = add i32 %187, %180, !dbg !2042
  call void @llvm.dbg.value(metadata i32 %188, metadata !1980, metadata !DIExpression()), !dbg !2002
  %189 = shl i32 %160, 30, !dbg !2042
  %190 = lshr i32 %160, 2, !dbg !2042
  %191 = or i32 %189, %190, !dbg !2042
  call void @llvm.dbg.value(metadata i32 %191, metadata !1982, metadata !DIExpression()), !dbg !2004
  %192 = shl i32 %188, 5, !dbg !2044
  %193 = lshr i32 %188, 27, !dbg !2044
  %194 = or i32 %192, %193, !dbg !2044
  %195 = xor i32 %191, %177, !dbg !2044
  %196 = and i32 %174, %195, !dbg !2044
  %197 = xor i32 %196, %177, !dbg !2044
  %198 = load i32, i32* %37, align 16, !dbg !2044, !tbaa !1043
  %199 = add i32 %198, 1518500249, !dbg !2044
  %200 = add i32 %199, %163, !dbg !2044
  %201 = add i32 %200, %197, !dbg !2044
  %202 = add i32 %201, %194, !dbg !2044
  call void @llvm.dbg.value(metadata i32 %202, metadata !1979, metadata !DIExpression()), !dbg !2001
  %203 = shl i32 %174, 30, !dbg !2044
  %204 = lshr i32 %174, 2, !dbg !2044
  %205 = or i32 %203, %204, !dbg !2044
  call void @llvm.dbg.value(metadata i32 %205, metadata !1981, metadata !DIExpression()), !dbg !2003
  %206 = shl i32 %202, 5, !dbg !2046
  %207 = lshr i32 %202, 27, !dbg !2046
  %208 = or i32 %206, %207, !dbg !2046
  %209 = xor i32 %205, %191, !dbg !2046
  %210 = and i32 %188, %209, !dbg !2046
  %211 = xor i32 %210, %191, !dbg !2046
  %212 = load i32, i32* %38, align 4, !dbg !2046, !tbaa !1043
  %213 = add i32 %212, 1518500249, !dbg !2046
  %214 = add i32 %213, %177, !dbg !2046
  %215 = add i32 %214, %211, !dbg !2046
  %216 = add i32 %215, %208, !dbg !2046
  call void @llvm.dbg.value(metadata i32 %216, metadata !1978, metadata !DIExpression()), !dbg !1999
  %217 = shl i32 %188, 30, !dbg !2046
  %218 = lshr i32 %188, 2, !dbg !2046
  %219 = or i32 %217, %218, !dbg !2046
  call void @llvm.dbg.value(metadata i32 %219, metadata !1980, metadata !DIExpression()), !dbg !2002
  %220 = shl i32 %216, 5, !dbg !2048
  %221 = lshr i32 %216, 27, !dbg !2048
  %222 = or i32 %220, %221, !dbg !2048
  %223 = xor i32 %219, %205, !dbg !2048
  %224 = and i32 %202, %223, !dbg !2048
  %225 = xor i32 %224, %205, !dbg !2048
  %226 = load i32, i32* %39, align 8, !dbg !2048, !tbaa !1043
  %227 = add i32 %226, 1518500249, !dbg !2048
  %228 = add i32 %227, %191, !dbg !2048
  %229 = add i32 %228, %225, !dbg !2048
  %230 = add i32 %229, %222, !dbg !2048
  call void @llvm.dbg.value(metadata i32 %230, metadata !1982, metadata !DIExpression()), !dbg !2004
  %231 = shl i32 %202, 30, !dbg !2048
  %232 = lshr i32 %202, 2, !dbg !2048
  %233 = or i32 %231, %232, !dbg !2048
  call void @llvm.dbg.value(metadata i32 %233, metadata !1979, metadata !DIExpression()), !dbg !2001
  %234 = shl i32 %230, 5, !dbg !2050
  %235 = lshr i32 %230, 27, !dbg !2050
  %236 = or i32 %234, %235, !dbg !2050
  %237 = xor i32 %233, %219, !dbg !2050
  %238 = and i32 %216, %237, !dbg !2050
  %239 = xor i32 %238, %219, !dbg !2050
  %240 = load i32, i32* %40, align 4, !dbg !2050, !tbaa !1043
  %241 = add i32 %240, 1518500249, !dbg !2050
  %242 = add i32 %241, %205, !dbg !2050
  %243 = add i32 %242, %239, !dbg !2050
  %244 = add i32 %243, %236, !dbg !2050
  call void @llvm.dbg.value(metadata i32 %244, metadata !1981, metadata !DIExpression()), !dbg !2003
  %245 = shl i32 %216, 30, !dbg !2050
  %246 = lshr i32 %216, 2, !dbg !2050
  %247 = or i32 %245, %246, !dbg !2050
  call void @llvm.dbg.value(metadata i32 %247, metadata !1978, metadata !DIExpression()), !dbg !1999
  %248 = shl i32 %244, 5, !dbg !2052
  %249 = lshr i32 %244, 27, !dbg !2052
  %250 = or i32 %248, %249, !dbg !2052
  %251 = xor i32 %247, %233, !dbg !2052
  %252 = and i32 %230, %251, !dbg !2052
  %253 = xor i32 %252, %233, !dbg !2052
  %254 = load i32, i32* %41, align 16, !dbg !2052, !tbaa !1043
  %255 = add i32 %254, 1518500249, !dbg !2052
  %256 = add i32 %255, %219, !dbg !2052
  %257 = add i32 %256, %253, !dbg !2052
  %258 = add i32 %257, %250, !dbg !2052
  call void @llvm.dbg.value(metadata i32 %258, metadata !1980, metadata !DIExpression()), !dbg !2002
  %259 = shl i32 %230, 30, !dbg !2052
  %260 = lshr i32 %230, 2, !dbg !2052
  %261 = or i32 %259, %260, !dbg !2052
  call void @llvm.dbg.value(metadata i32 %261, metadata !1982, metadata !DIExpression()), !dbg !2004
  %262 = shl i32 %258, 5, !dbg !2054
  %263 = lshr i32 %258, 27, !dbg !2054
  %264 = or i32 %262, %263, !dbg !2054
  %265 = xor i32 %261, %247, !dbg !2054
  %266 = and i32 %244, %265, !dbg !2054
  %267 = xor i32 %266, %247, !dbg !2054
  %268 = load i32, i32* %42, align 4, !dbg !2054, !tbaa !1043
  %269 = add i32 %268, 1518500249, !dbg !2054
  %270 = add i32 %269, %233, !dbg !2054
  %271 = add i32 %270, %267, !dbg !2054
  %272 = add i32 %271, %264, !dbg !2054
  call void @llvm.dbg.value(metadata i32 %272, metadata !1979, metadata !DIExpression()), !dbg !2001
  %273 = shl i32 %244, 30, !dbg !2054
  %274 = lshr i32 %244, 2, !dbg !2054
  %275 = or i32 %273, %274, !dbg !2054
  call void @llvm.dbg.value(metadata i32 %275, metadata !1981, metadata !DIExpression()), !dbg !2003
  %276 = shl i32 %272, 5, !dbg !2056
  %277 = lshr i32 %272, 27, !dbg !2056
  %278 = or i32 %276, %277, !dbg !2056
  %279 = xor i32 %275, %261, !dbg !2056
  %280 = and i32 %258, %279, !dbg !2056
  %281 = xor i32 %280, %261, !dbg !2056
  %282 = load i32, i32* %43, align 8, !dbg !2056, !tbaa !1043
  %283 = add i32 %282, 1518500249, !dbg !2056
  %284 = add i32 %283, %247, !dbg !2056
  %285 = add i32 %284, %281, !dbg !2056
  %286 = add i32 %285, %278, !dbg !2056
  call void @llvm.dbg.value(metadata i32 %286, metadata !1978, metadata !DIExpression()), !dbg !1999
  %287 = shl i32 %258, 30, !dbg !2056
  %288 = lshr i32 %258, 2, !dbg !2056
  %289 = or i32 %287, %288, !dbg !2056
  call void @llvm.dbg.value(metadata i32 %289, metadata !1980, metadata !DIExpression()), !dbg !2002
  %290 = shl i32 %286, 5, !dbg !2058
  %291 = lshr i32 %286, 27, !dbg !2058
  %292 = or i32 %290, %291, !dbg !2058
  %293 = xor i32 %289, %275, !dbg !2058
  %294 = and i32 %272, %293, !dbg !2058
  %295 = xor i32 %294, %275, !dbg !2058
  %296 = load i32, i32* %44, align 4, !dbg !2058, !tbaa !1043
  %297 = add i32 %296, 1518500249, !dbg !2058
  %298 = add i32 %297, %261, !dbg !2058
  %299 = add i32 %298, %295, !dbg !2058
  %300 = add i32 %299, %292, !dbg !2058
  call void @llvm.dbg.value(metadata i32 %300, metadata !1982, metadata !DIExpression()), !dbg !2004
  %301 = shl i32 %272, 30, !dbg !2058
  %302 = lshr i32 %272, 2, !dbg !2058
  %303 = or i32 %301, %302, !dbg !2058
  call void @llvm.dbg.value(metadata i32 %303, metadata !1979, metadata !DIExpression()), !dbg !2001
  %304 = shl i32 %300, 5, !dbg !2060
  %305 = lshr i32 %300, 27, !dbg !2060
  %306 = or i32 %304, %305, !dbg !2060
  %307 = xor i32 %303, %289, !dbg !2060
  %308 = and i32 %286, %307, !dbg !2060
  %309 = xor i32 %308, %289, !dbg !2060
  %310 = xor i32 %115, %55, !dbg !2060
  %311 = xor i32 %310, %198, !dbg !2060
  %312 = xor i32 %311, %268, !dbg !2060
  call void @llvm.dbg.value(metadata i32 %312, metadata !1984, metadata !DIExpression()), !dbg !2062
  %313 = shl i32 %312, 1, !dbg !2060
  %314 = lshr i32 %312, 31, !dbg !2060
  %315 = or i32 %313, %314, !dbg !2060
  store i32 %315, i32* %29, align 16, !dbg !2060, !tbaa !1043
  %316 = add i32 %315, 1518500249, !dbg !2060
  %317 = add i32 %316, %275, !dbg !2060
  %318 = add i32 %317, %309, !dbg !2060
  %319 = add i32 %318, %306, !dbg !2060
  call void @llvm.dbg.value(metadata i32 %319, metadata !1981, metadata !DIExpression()), !dbg !2003
  %320 = shl i32 %286, 30, !dbg !2060
  %321 = lshr i32 %286, 2, !dbg !2060
  %322 = or i32 %320, %321, !dbg !2060
  call void @llvm.dbg.value(metadata i32 %322, metadata !1978, metadata !DIExpression()), !dbg !1999
  %323 = shl i32 %319, 5, !dbg !2063
  %324 = lshr i32 %319, 27, !dbg !2063
  %325 = or i32 %323, %324, !dbg !2063
  %326 = xor i32 %322, %303, !dbg !2063
  %327 = and i32 %300, %326, !dbg !2063
  %328 = xor i32 %327, %303, !dbg !2063
  %329 = xor i32 %129, %58, !dbg !2063
  %330 = xor i32 %329, %212, !dbg !2063
  %331 = xor i32 %330, %282, !dbg !2063
  call void @llvm.dbg.value(metadata i32 %331, metadata !1984, metadata !DIExpression()), !dbg !2062
  %332 = shl i32 %331, 1, !dbg !2063
  %333 = lshr i32 %331, 31, !dbg !2063
  %334 = or i32 %332, %333, !dbg !2063
  store i32 %334, i32* %30, align 4, !dbg !2063, !tbaa !1043
  %335 = add i32 %334, 1518500249, !dbg !2063
  %336 = add i32 %335, %289, !dbg !2063
  %337 = add i32 %336, %328, !dbg !2063
  %338 = add i32 %337, %325, !dbg !2063
  call void @llvm.dbg.value(metadata i32 %338, metadata !1980, metadata !DIExpression()), !dbg !2002
  %339 = shl i32 %300, 30, !dbg !2063
  %340 = lshr i32 %300, 2, !dbg !2063
  %341 = or i32 %339, %340, !dbg !2063
  call void @llvm.dbg.value(metadata i32 %341, metadata !1982, metadata !DIExpression()), !dbg !2004
  %342 = shl i32 %338, 5, !dbg !2065
  %343 = lshr i32 %338, 27, !dbg !2065
  %344 = or i32 %342, %343, !dbg !2065
  %345 = xor i32 %341, %322, !dbg !2065
  %346 = and i32 %319, %345, !dbg !2065
  %347 = xor i32 %346, %322, !dbg !2065
  %348 = xor i32 %142, %115, !dbg !2065
  %349 = xor i32 %348, %226, !dbg !2065
  %350 = xor i32 %349, %296, !dbg !2065
  call void @llvm.dbg.value(metadata i32 %350, metadata !1984, metadata !DIExpression()), !dbg !2062
  %351 = shl i32 %350, 1, !dbg !2065
  %352 = lshr i32 %350, 31, !dbg !2065
  %353 = or i32 %351, %352, !dbg !2065
  store i32 %353, i32* %31, align 8, !dbg !2065, !tbaa !1043
  %354 = add i32 %353, 1518500249, !dbg !2065
  %355 = add i32 %354, %303, !dbg !2065
  %356 = add i32 %355, %347, !dbg !2065
  %357 = add i32 %356, %344, !dbg !2065
  call void @llvm.dbg.value(metadata i32 %357, metadata !1979, metadata !DIExpression()), !dbg !2001
  %358 = shl i32 %319, 30, !dbg !2065
  %359 = lshr i32 %319, 2, !dbg !2065
  %360 = or i32 %358, %359, !dbg !2065
  call void @llvm.dbg.value(metadata i32 %360, metadata !1981, metadata !DIExpression()), !dbg !2003
  %361 = shl i32 %357, 5, !dbg !2067
  %362 = lshr i32 %357, 27, !dbg !2067
  %363 = or i32 %361, %362, !dbg !2067
  %364 = xor i32 %360, %341, !dbg !2067
  %365 = and i32 %338, %364, !dbg !2067
  %366 = xor i32 %365, %341, !dbg !2067
  %367 = xor i32 %156, %129, !dbg !2067
  %368 = xor i32 %367, %240, !dbg !2067
  %369 = xor i32 %368, %315, !dbg !2067
  call void @llvm.dbg.value(metadata i32 %369, metadata !1984, metadata !DIExpression()), !dbg !2062
  %370 = shl i32 %369, 1, !dbg !2067
  %371 = lshr i32 %369, 31, !dbg !2067
  %372 = or i32 %370, %371, !dbg !2067
  store i32 %372, i32* %32, align 4, !dbg !2067, !tbaa !1043
  %373 = add i32 %372, 1518500249, !dbg !2067
  %374 = add i32 %373, %322, !dbg !2067
  %375 = add i32 %374, %366, !dbg !2067
  %376 = add i32 %375, %363, !dbg !2067
  call void @llvm.dbg.value(metadata i32 %376, metadata !1978, metadata !DIExpression()), !dbg !1999
  %377 = shl i32 %338, 30, !dbg !2067
  %378 = lshr i32 %338, 2, !dbg !2067
  %379 = or i32 %377, %378, !dbg !2067
  call void @llvm.dbg.value(metadata i32 %379, metadata !1980, metadata !DIExpression()), !dbg !2002
  %380 = shl i32 %376, 5, !dbg !2069
  %381 = lshr i32 %376, 27, !dbg !2069
  %382 = or i32 %380, %381, !dbg !2069
  %383 = xor i32 %379, %360, !dbg !2069
  %384 = xor i32 %383, %357, !dbg !2069
  %385 = xor i32 %170, %142, !dbg !2069
  %386 = xor i32 %385, %254, !dbg !2069
  %387 = xor i32 %386, %334, !dbg !2069
  call void @llvm.dbg.value(metadata i32 %387, metadata !1984, metadata !DIExpression()), !dbg !2062
  %388 = shl i32 %387, 1, !dbg !2069
  %389 = lshr i32 %387, 31, !dbg !2069
  %390 = or i32 %388, %389, !dbg !2069
  store i32 %390, i32* %33, align 16, !dbg !2069, !tbaa !1043
  %391 = add i32 %390, 1859775393, !dbg !2069
  %392 = add i32 %391, %341, !dbg !2069
  %393 = add i32 %392, %384, !dbg !2069
  %394 = add i32 %393, %382, !dbg !2069
  call void @llvm.dbg.value(metadata i32 %394, metadata !1982, metadata !DIExpression()), !dbg !2004
  %395 = shl i32 %357, 30, !dbg !2069
  %396 = lshr i32 %357, 2, !dbg !2069
  %397 = or i32 %395, %396, !dbg !2069
  call void @llvm.dbg.value(metadata i32 %397, metadata !1979, metadata !DIExpression()), !dbg !2001
  %398 = shl i32 %394, 5, !dbg !2071
  %399 = lshr i32 %394, 27, !dbg !2071
  %400 = or i32 %398, %399, !dbg !2071
  %401 = xor i32 %397, %379, !dbg !2071
  %402 = xor i32 %401, %376, !dbg !2071
  %403 = xor i32 %184, %156, !dbg !2071
  %404 = xor i32 %403, %268, !dbg !2071
  %405 = xor i32 %404, %353, !dbg !2071
  call void @llvm.dbg.value(metadata i32 %405, metadata !1984, metadata !DIExpression()), !dbg !2062
  %406 = shl i32 %405, 1, !dbg !2071
  %407 = lshr i32 %405, 31, !dbg !2071
  %408 = or i32 %406, %407, !dbg !2071
  store i32 %408, i32* %34, align 4, !dbg !2071, !tbaa !1043
  %409 = add i32 %408, 1859775393, !dbg !2071
  %410 = add i32 %409, %360, !dbg !2071
  %411 = add i32 %410, %402, !dbg !2071
  %412 = add i32 %411, %400, !dbg !2071
  call void @llvm.dbg.value(metadata i32 %412, metadata !1981, metadata !DIExpression()), !dbg !2003
  %413 = shl i32 %376, 30, !dbg !2071
  %414 = lshr i32 %376, 2, !dbg !2071
  %415 = or i32 %413, %414, !dbg !2071
  call void @llvm.dbg.value(metadata i32 %415, metadata !1978, metadata !DIExpression()), !dbg !1999
  %416 = shl i32 %412, 5, !dbg !2073
  %417 = lshr i32 %412, 27, !dbg !2073
  %418 = or i32 %416, %417, !dbg !2073
  %419 = xor i32 %415, %397, !dbg !2073
  %420 = xor i32 %419, %394, !dbg !2073
  %421 = xor i32 %198, %170, !dbg !2073
  %422 = xor i32 %421, %282, !dbg !2073
  %423 = xor i32 %422, %372, !dbg !2073
  call void @llvm.dbg.value(metadata i32 %423, metadata !1984, metadata !DIExpression()), !dbg !2062
  %424 = shl i32 %423, 1, !dbg !2073
  %425 = lshr i32 %423, 31, !dbg !2073
  %426 = or i32 %424, %425, !dbg !2073
  store i32 %426, i32* %35, align 8, !dbg !2073, !tbaa !1043
  %427 = add i32 %426, 1859775393, !dbg !2073
  %428 = add i32 %427, %379, !dbg !2073
  %429 = add i32 %428, %420, !dbg !2073
  %430 = add i32 %429, %418, !dbg !2073
  call void @llvm.dbg.value(metadata i32 %430, metadata !1980, metadata !DIExpression()), !dbg !2002
  %431 = shl i32 %394, 30, !dbg !2073
  %432 = lshr i32 %394, 2, !dbg !2073
  %433 = or i32 %431, %432, !dbg !2073
  call void @llvm.dbg.value(metadata i32 %433, metadata !1982, metadata !DIExpression()), !dbg !2004
  %434 = shl i32 %430, 5, !dbg !2075
  %435 = lshr i32 %430, 27, !dbg !2075
  %436 = or i32 %434, %435, !dbg !2075
  %437 = xor i32 %433, %415, !dbg !2075
  %438 = xor i32 %437, %412, !dbg !2075
  %439 = xor i32 %212, %184, !dbg !2075
  %440 = xor i32 %439, %296, !dbg !2075
  %441 = xor i32 %440, %390, !dbg !2075
  call void @llvm.dbg.value(metadata i32 %441, metadata !1984, metadata !DIExpression()), !dbg !2062
  %442 = shl i32 %441, 1, !dbg !2075
  %443 = lshr i32 %441, 31, !dbg !2075
  %444 = or i32 %442, %443, !dbg !2075
  store i32 %444, i32* %36, align 4, !dbg !2075, !tbaa !1043
  %445 = add i32 %444, 1859775393, !dbg !2075
  %446 = add i32 %445, %397, !dbg !2075
  %447 = add i32 %446, %438, !dbg !2075
  %448 = add i32 %447, %436, !dbg !2075
  call void @llvm.dbg.value(metadata i32 %448, metadata !1979, metadata !DIExpression()), !dbg !2001
  %449 = shl i32 %412, 30, !dbg !2075
  %450 = lshr i32 %412, 2, !dbg !2075
  %451 = or i32 %449, %450, !dbg !2075
  call void @llvm.dbg.value(metadata i32 %451, metadata !1981, metadata !DIExpression()), !dbg !2003
  %452 = shl i32 %448, 5, !dbg !2077
  %453 = lshr i32 %448, 27, !dbg !2077
  %454 = or i32 %452, %453, !dbg !2077
  %455 = xor i32 %451, %433, !dbg !2077
  %456 = xor i32 %455, %430, !dbg !2077
  %457 = xor i32 %226, %198, !dbg !2077
  %458 = xor i32 %457, %315, !dbg !2077
  %459 = xor i32 %458, %408, !dbg !2077
  call void @llvm.dbg.value(metadata i32 %459, metadata !1984, metadata !DIExpression()), !dbg !2062
  %460 = shl i32 %459, 1, !dbg !2077
  %461 = lshr i32 %459, 31, !dbg !2077
  %462 = or i32 %460, %461, !dbg !2077
  store i32 %462, i32* %37, align 16, !dbg !2077, !tbaa !1043
  %463 = add i32 %462, 1859775393, !dbg !2077
  %464 = add i32 %463, %415, !dbg !2077
  %465 = add i32 %464, %456, !dbg !2077
  %466 = add i32 %465, %454, !dbg !2077
  call void @llvm.dbg.value(metadata i32 %466, metadata !1978, metadata !DIExpression()), !dbg !1999
  %467 = shl i32 %430, 30, !dbg !2077
  %468 = lshr i32 %430, 2, !dbg !2077
  %469 = or i32 %467, %468, !dbg !2077
  call void @llvm.dbg.value(metadata i32 %469, metadata !1980, metadata !DIExpression()), !dbg !2002
  %470 = shl i32 %466, 5, !dbg !2079
  %471 = lshr i32 %466, 27, !dbg !2079
  %472 = or i32 %470, %471, !dbg !2079
  %473 = xor i32 %469, %451, !dbg !2079
  %474 = xor i32 %473, %448, !dbg !2079
  %475 = xor i32 %240, %212, !dbg !2079
  %476 = xor i32 %475, %334, !dbg !2079
  %477 = xor i32 %476, %426, !dbg !2079
  call void @llvm.dbg.value(metadata i32 %477, metadata !1984, metadata !DIExpression()), !dbg !2062
  %478 = shl i32 %477, 1, !dbg !2079
  %479 = lshr i32 %477, 31, !dbg !2079
  %480 = or i32 %478, %479, !dbg !2079
  store i32 %480, i32* %38, align 4, !dbg !2079, !tbaa !1043
  %481 = add i32 %480, 1859775393, !dbg !2079
  %482 = add i32 %481, %433, !dbg !2079
  %483 = add i32 %482, %474, !dbg !2079
  %484 = add i32 %483, %472, !dbg !2079
  call void @llvm.dbg.value(metadata i32 %484, metadata !1982, metadata !DIExpression()), !dbg !2004
  %485 = shl i32 %448, 30, !dbg !2079
  %486 = lshr i32 %448, 2, !dbg !2079
  %487 = or i32 %485, %486, !dbg !2079
  call void @llvm.dbg.value(metadata i32 %487, metadata !1979, metadata !DIExpression()), !dbg !2001
  %488 = shl i32 %484, 5, !dbg !2081
  %489 = lshr i32 %484, 27, !dbg !2081
  %490 = or i32 %488, %489, !dbg !2081
  %491 = xor i32 %487, %469, !dbg !2081
  %492 = xor i32 %491, %466, !dbg !2081
  %493 = xor i32 %254, %226, !dbg !2081
  %494 = xor i32 %493, %353, !dbg !2081
  %495 = xor i32 %494, %444, !dbg !2081
  call void @llvm.dbg.value(metadata i32 %495, metadata !1984, metadata !DIExpression()), !dbg !2062
  %496 = shl i32 %495, 1, !dbg !2081
  %497 = lshr i32 %495, 31, !dbg !2081
  %498 = or i32 %496, %497, !dbg !2081
  store i32 %498, i32* %39, align 8, !dbg !2081, !tbaa !1043
  %499 = add i32 %498, 1859775393, !dbg !2081
  %500 = add i32 %499, %451, !dbg !2081
  %501 = add i32 %500, %492, !dbg !2081
  %502 = add i32 %501, %490, !dbg !2081
  call void @llvm.dbg.value(metadata i32 %502, metadata !1981, metadata !DIExpression()), !dbg !2003
  %503 = shl i32 %466, 30, !dbg !2081
  %504 = lshr i32 %466, 2, !dbg !2081
  %505 = or i32 %503, %504, !dbg !2081
  call void @llvm.dbg.value(metadata i32 %505, metadata !1978, metadata !DIExpression()), !dbg !1999
  %506 = shl i32 %502, 5, !dbg !2083
  %507 = lshr i32 %502, 27, !dbg !2083
  %508 = or i32 %506, %507, !dbg !2083
  %509 = xor i32 %505, %487, !dbg !2083
  %510 = xor i32 %509, %484, !dbg !2083
  %511 = xor i32 %268, %240, !dbg !2083
  %512 = xor i32 %511, %372, !dbg !2083
  %513 = xor i32 %512, %462, !dbg !2083
  call void @llvm.dbg.value(metadata i32 %513, metadata !1984, metadata !DIExpression()), !dbg !2062
  %514 = shl i32 %513, 1, !dbg !2083
  %515 = lshr i32 %513, 31, !dbg !2083
  %516 = or i32 %514, %515, !dbg !2083
  store i32 %516, i32* %40, align 4, !dbg !2083, !tbaa !1043
  %517 = add i32 %516, 1859775393, !dbg !2083
  %518 = add i32 %517, %469, !dbg !2083
  %519 = add i32 %518, %510, !dbg !2083
  %520 = add i32 %519, %508, !dbg !2083
  call void @llvm.dbg.value(metadata i32 %520, metadata !1980, metadata !DIExpression()), !dbg !2002
  %521 = shl i32 %484, 30, !dbg !2083
  %522 = lshr i32 %484, 2, !dbg !2083
  %523 = or i32 %521, %522, !dbg !2083
  call void @llvm.dbg.value(metadata i32 %523, metadata !1982, metadata !DIExpression()), !dbg !2004
  %524 = shl i32 %520, 5, !dbg !2085
  %525 = lshr i32 %520, 27, !dbg !2085
  %526 = or i32 %524, %525, !dbg !2085
  %527 = xor i32 %523, %505, !dbg !2085
  %528 = xor i32 %527, %502, !dbg !2085
  %529 = xor i32 %282, %254, !dbg !2085
  %530 = xor i32 %529, %390, !dbg !2085
  %531 = xor i32 %530, %480, !dbg !2085
  call void @llvm.dbg.value(metadata i32 %531, metadata !1984, metadata !DIExpression()), !dbg !2062
  %532 = shl i32 %531, 1, !dbg !2085
  %533 = lshr i32 %531, 31, !dbg !2085
  %534 = or i32 %532, %533, !dbg !2085
  store i32 %534, i32* %41, align 16, !dbg !2085, !tbaa !1043
  %535 = add i32 %534, 1859775393, !dbg !2085
  %536 = add i32 %535, %487, !dbg !2085
  %537 = add i32 %536, %528, !dbg !2085
  %538 = add i32 %537, %526, !dbg !2085
  call void @llvm.dbg.value(metadata i32 %538, metadata !1979, metadata !DIExpression()), !dbg !2001
  %539 = shl i32 %502, 30, !dbg !2085
  %540 = lshr i32 %502, 2, !dbg !2085
  %541 = or i32 %539, %540, !dbg !2085
  call void @llvm.dbg.value(metadata i32 %541, metadata !1981, metadata !DIExpression()), !dbg !2003
  %542 = shl i32 %538, 5, !dbg !2087
  %543 = lshr i32 %538, 27, !dbg !2087
  %544 = or i32 %542, %543, !dbg !2087
  %545 = xor i32 %541, %523, !dbg !2087
  %546 = xor i32 %545, %520, !dbg !2087
  %547 = xor i32 %296, %268, !dbg !2087
  %548 = xor i32 %547, %408, !dbg !2087
  %549 = xor i32 %548, %498, !dbg !2087
  call void @llvm.dbg.value(metadata i32 %549, metadata !1984, metadata !DIExpression()), !dbg !2062
  %550 = shl i32 %549, 1, !dbg !2087
  %551 = lshr i32 %549, 31, !dbg !2087
  %552 = or i32 %550, %551, !dbg !2087
  store i32 %552, i32* %42, align 4, !dbg !2087, !tbaa !1043
  %553 = add i32 %552, 1859775393, !dbg !2087
  %554 = add i32 %553, %505, !dbg !2087
  %555 = add i32 %554, %546, !dbg !2087
  %556 = add i32 %555, %544, !dbg !2087
  call void @llvm.dbg.value(metadata i32 %556, metadata !1978, metadata !DIExpression()), !dbg !1999
  %557 = shl i32 %520, 30, !dbg !2087
  %558 = lshr i32 %520, 2, !dbg !2087
  %559 = or i32 %557, %558, !dbg !2087
  call void @llvm.dbg.value(metadata i32 %559, metadata !1980, metadata !DIExpression()), !dbg !2002
  %560 = shl i32 %556, 5, !dbg !2089
  %561 = lshr i32 %556, 27, !dbg !2089
  %562 = or i32 %560, %561, !dbg !2089
  %563 = xor i32 %559, %541, !dbg !2089
  %564 = xor i32 %563, %538, !dbg !2089
  %565 = xor i32 %315, %282, !dbg !2089
  %566 = xor i32 %565, %426, !dbg !2089
  %567 = xor i32 %566, %516, !dbg !2089
  call void @llvm.dbg.value(metadata i32 %567, metadata !1984, metadata !DIExpression()), !dbg !2062
  %568 = shl i32 %567, 1, !dbg !2089
  %569 = lshr i32 %567, 31, !dbg !2089
  %570 = or i32 %568, %569, !dbg !2089
  store i32 %570, i32* %43, align 8, !dbg !2089, !tbaa !1043
  %571 = add i32 %570, 1859775393, !dbg !2089
  %572 = add i32 %571, %523, !dbg !2089
  %573 = add i32 %572, %564, !dbg !2089
  %574 = add i32 %573, %562, !dbg !2089
  call void @llvm.dbg.value(metadata i32 %574, metadata !1982, metadata !DIExpression()), !dbg !2004
  %575 = shl i32 %538, 30, !dbg !2089
  %576 = lshr i32 %538, 2, !dbg !2089
  %577 = or i32 %575, %576, !dbg !2089
  call void @llvm.dbg.value(metadata i32 %577, metadata !1979, metadata !DIExpression()), !dbg !2001
  %578 = shl i32 %574, 5, !dbg !2091
  %579 = lshr i32 %574, 27, !dbg !2091
  %580 = or i32 %578, %579, !dbg !2091
  %581 = xor i32 %577, %559, !dbg !2091
  %582 = xor i32 %581, %556, !dbg !2091
  %583 = xor i32 %334, %296, !dbg !2091
  %584 = xor i32 %583, %444, !dbg !2091
  %585 = xor i32 %584, %534, !dbg !2091
  call void @llvm.dbg.value(metadata i32 %585, metadata !1984, metadata !DIExpression()), !dbg !2062
  %586 = shl i32 %585, 1, !dbg !2091
  %587 = lshr i32 %585, 31, !dbg !2091
  %588 = or i32 %586, %587, !dbg !2091
  store i32 %588, i32* %44, align 4, !dbg !2091, !tbaa !1043
  %589 = add i32 %588, 1859775393, !dbg !2091
  %590 = add i32 %589, %541, !dbg !2091
  %591 = add i32 %590, %582, !dbg !2091
  %592 = add i32 %591, %580, !dbg !2091
  call void @llvm.dbg.value(metadata i32 %592, metadata !1981, metadata !DIExpression()), !dbg !2003
  %593 = shl i32 %556, 30, !dbg !2091
  %594 = lshr i32 %556, 2, !dbg !2091
  %595 = or i32 %593, %594, !dbg !2091
  call void @llvm.dbg.value(metadata i32 %595, metadata !1978, metadata !DIExpression()), !dbg !1999
  %596 = shl i32 %592, 5, !dbg !2093
  %597 = lshr i32 %592, 27, !dbg !2093
  %598 = or i32 %596, %597, !dbg !2093
  %599 = xor i32 %595, %577, !dbg !2093
  %600 = xor i32 %599, %574, !dbg !2093
  %601 = xor i32 %353, %315, !dbg !2093
  %602 = xor i32 %601, %462, !dbg !2093
  %603 = xor i32 %602, %552, !dbg !2093
  call void @llvm.dbg.value(metadata i32 %603, metadata !1984, metadata !DIExpression()), !dbg !2062
  %604 = shl i32 %603, 1, !dbg !2093
  %605 = lshr i32 %603, 31, !dbg !2093
  %606 = or i32 %604, %605, !dbg !2093
  store i32 %606, i32* %29, align 16, !dbg !2093, !tbaa !1043
  %607 = add i32 %606, 1859775393, !dbg !2093
  %608 = add i32 %607, %559, !dbg !2093
  %609 = add i32 %608, %600, !dbg !2093
  %610 = add i32 %609, %598, !dbg !2093
  call void @llvm.dbg.value(metadata i32 %610, metadata !1980, metadata !DIExpression()), !dbg !2002
  %611 = shl i32 %574, 30, !dbg !2093
  %612 = lshr i32 %574, 2, !dbg !2093
  %613 = or i32 %611, %612, !dbg !2093
  call void @llvm.dbg.value(metadata i32 %613, metadata !1982, metadata !DIExpression()), !dbg !2004
  %614 = shl i32 %610, 5, !dbg !2095
  %615 = lshr i32 %610, 27, !dbg !2095
  %616 = or i32 %614, %615, !dbg !2095
  %617 = xor i32 %613, %595, !dbg !2095
  %618 = xor i32 %617, %592, !dbg !2095
  %619 = xor i32 %372, %334, !dbg !2095
  %620 = xor i32 %619, %480, !dbg !2095
  %621 = xor i32 %620, %570, !dbg !2095
  call void @llvm.dbg.value(metadata i32 %621, metadata !1984, metadata !DIExpression()), !dbg !2062
  %622 = shl i32 %621, 1, !dbg !2095
  %623 = lshr i32 %621, 31, !dbg !2095
  %624 = or i32 %622, %623, !dbg !2095
  store i32 %624, i32* %30, align 4, !dbg !2095, !tbaa !1043
  %625 = add i32 %624, 1859775393, !dbg !2095
  %626 = add i32 %625, %577, !dbg !2095
  %627 = add i32 %626, %618, !dbg !2095
  %628 = add i32 %627, %616, !dbg !2095
  call void @llvm.dbg.value(metadata i32 %628, metadata !1979, metadata !DIExpression()), !dbg !2001
  %629 = shl i32 %592, 30, !dbg !2095
  %630 = lshr i32 %592, 2, !dbg !2095
  %631 = or i32 %629, %630, !dbg !2095
  call void @llvm.dbg.value(metadata i32 %631, metadata !1981, metadata !DIExpression()), !dbg !2003
  %632 = shl i32 %628, 5, !dbg !2097
  %633 = lshr i32 %628, 27, !dbg !2097
  %634 = or i32 %632, %633, !dbg !2097
  %635 = xor i32 %631, %613, !dbg !2097
  %636 = xor i32 %635, %610, !dbg !2097
  %637 = xor i32 %390, %353, !dbg !2097
  %638 = xor i32 %637, %498, !dbg !2097
  %639 = xor i32 %638, %588, !dbg !2097
  call void @llvm.dbg.value(metadata i32 %639, metadata !1984, metadata !DIExpression()), !dbg !2062
  %640 = shl i32 %639, 1, !dbg !2097
  %641 = lshr i32 %639, 31, !dbg !2097
  %642 = or i32 %640, %641, !dbg !2097
  store i32 %642, i32* %31, align 8, !dbg !2097, !tbaa !1043
  %643 = add i32 %642, 1859775393, !dbg !2097
  %644 = add i32 %643, %595, !dbg !2097
  %645 = add i32 %644, %636, !dbg !2097
  %646 = add i32 %645, %634, !dbg !2097
  call void @llvm.dbg.value(metadata i32 %646, metadata !1978, metadata !DIExpression()), !dbg !1999
  %647 = shl i32 %610, 30, !dbg !2097
  %648 = lshr i32 %610, 2, !dbg !2097
  %649 = or i32 %647, %648, !dbg !2097
  call void @llvm.dbg.value(metadata i32 %649, metadata !1980, metadata !DIExpression()), !dbg !2002
  %650 = shl i32 %646, 5, !dbg !2099
  %651 = lshr i32 %646, 27, !dbg !2099
  %652 = or i32 %650, %651, !dbg !2099
  %653 = xor i32 %649, %631, !dbg !2099
  %654 = xor i32 %653, %628, !dbg !2099
  %655 = xor i32 %408, %372, !dbg !2099
  %656 = xor i32 %655, %516, !dbg !2099
  %657 = xor i32 %656, %606, !dbg !2099
  call void @llvm.dbg.value(metadata i32 %657, metadata !1984, metadata !DIExpression()), !dbg !2062
  %658 = shl i32 %657, 1, !dbg !2099
  %659 = lshr i32 %657, 31, !dbg !2099
  %660 = or i32 %658, %659, !dbg !2099
  store i32 %660, i32* %32, align 4, !dbg !2099, !tbaa !1043
  %661 = add i32 %660, 1859775393, !dbg !2099
  %662 = add i32 %661, %613, !dbg !2099
  %663 = add i32 %662, %654, !dbg !2099
  %664 = add i32 %663, %652, !dbg !2099
  call void @llvm.dbg.value(metadata i32 %664, metadata !1982, metadata !DIExpression()), !dbg !2004
  %665 = shl i32 %628, 30, !dbg !2099
  %666 = lshr i32 %628, 2, !dbg !2099
  %667 = or i32 %665, %666, !dbg !2099
  call void @llvm.dbg.value(metadata i32 %667, metadata !1979, metadata !DIExpression()), !dbg !2001
  %668 = shl i32 %664, 5, !dbg !2101
  %669 = lshr i32 %664, 27, !dbg !2101
  %670 = or i32 %668, %669, !dbg !2101
  %671 = xor i32 %667, %649, !dbg !2101
  %672 = xor i32 %671, %646, !dbg !2101
  %673 = xor i32 %426, %390, !dbg !2101
  %674 = xor i32 %673, %534, !dbg !2101
  %675 = xor i32 %674, %624, !dbg !2101
  call void @llvm.dbg.value(metadata i32 %675, metadata !1984, metadata !DIExpression()), !dbg !2062
  %676 = shl i32 %675, 1, !dbg !2101
  %677 = lshr i32 %675, 31, !dbg !2101
  %678 = or i32 %676, %677, !dbg !2101
  store i32 %678, i32* %33, align 16, !dbg !2101, !tbaa !1043
  %679 = add i32 %678, 1859775393, !dbg !2101
  %680 = add i32 %679, %631, !dbg !2101
  %681 = add i32 %680, %672, !dbg !2101
  %682 = add i32 %681, %670, !dbg !2101
  call void @llvm.dbg.value(metadata i32 %682, metadata !1981, metadata !DIExpression()), !dbg !2003
  %683 = shl i32 %646, 30, !dbg !2101
  %684 = lshr i32 %646, 2, !dbg !2101
  %685 = or i32 %683, %684, !dbg !2101
  call void @llvm.dbg.value(metadata i32 %685, metadata !1978, metadata !DIExpression()), !dbg !1999
  %686 = shl i32 %682, 5, !dbg !2103
  %687 = lshr i32 %682, 27, !dbg !2103
  %688 = or i32 %686, %687, !dbg !2103
  %689 = xor i32 %685, %667, !dbg !2103
  %690 = xor i32 %689, %664, !dbg !2103
  %691 = xor i32 %444, %408, !dbg !2103
  %692 = xor i32 %691, %552, !dbg !2103
  %693 = xor i32 %692, %642, !dbg !2103
  call void @llvm.dbg.value(metadata i32 %693, metadata !1984, metadata !DIExpression()), !dbg !2062
  %694 = shl i32 %693, 1, !dbg !2103
  %695 = lshr i32 %693, 31, !dbg !2103
  %696 = or i32 %694, %695, !dbg !2103
  store i32 %696, i32* %34, align 4, !dbg !2103, !tbaa !1043
  %697 = add i32 %696, 1859775393, !dbg !2103
  %698 = add i32 %697, %649, !dbg !2103
  %699 = add i32 %698, %690, !dbg !2103
  %700 = add i32 %699, %688, !dbg !2103
  call void @llvm.dbg.value(metadata i32 %700, metadata !1980, metadata !DIExpression()), !dbg !2002
  %701 = shl i32 %664, 30, !dbg !2103
  %702 = lshr i32 %664, 2, !dbg !2103
  %703 = or i32 %701, %702, !dbg !2103
  call void @llvm.dbg.value(metadata i32 %703, metadata !1982, metadata !DIExpression()), !dbg !2004
  %704 = shl i32 %700, 5, !dbg !2105
  %705 = lshr i32 %700, 27, !dbg !2105
  %706 = or i32 %704, %705, !dbg !2105
  %707 = xor i32 %703, %685, !dbg !2105
  %708 = xor i32 %707, %682, !dbg !2105
  %709 = xor i32 %462, %426, !dbg !2105
  %710 = xor i32 %709, %570, !dbg !2105
  %711 = xor i32 %710, %660, !dbg !2105
  call void @llvm.dbg.value(metadata i32 %711, metadata !1984, metadata !DIExpression()), !dbg !2062
  %712 = shl i32 %711, 1, !dbg !2105
  %713 = lshr i32 %711, 31, !dbg !2105
  %714 = or i32 %712, %713, !dbg !2105
  store i32 %714, i32* %35, align 8, !dbg !2105, !tbaa !1043
  %715 = add i32 %714, 1859775393, !dbg !2105
  %716 = add i32 %715, %667, !dbg !2105
  %717 = add i32 %716, %708, !dbg !2105
  %718 = add i32 %717, %706, !dbg !2105
  call void @llvm.dbg.value(metadata i32 %718, metadata !1979, metadata !DIExpression()), !dbg !2001
  %719 = shl i32 %682, 30, !dbg !2105
  %720 = lshr i32 %682, 2, !dbg !2105
  %721 = or i32 %719, %720, !dbg !2105
  call void @llvm.dbg.value(metadata i32 %721, metadata !1981, metadata !DIExpression()), !dbg !2003
  %722 = shl i32 %718, 5, !dbg !2107
  %723 = lshr i32 %718, 27, !dbg !2107
  %724 = or i32 %722, %723, !dbg !2107
  %725 = xor i32 %721, %703, !dbg !2107
  %726 = xor i32 %725, %700, !dbg !2107
  %727 = xor i32 %480, %444, !dbg !2107
  %728 = xor i32 %727, %588, !dbg !2107
  %729 = xor i32 %728, %678, !dbg !2107
  call void @llvm.dbg.value(metadata i32 %729, metadata !1984, metadata !DIExpression()), !dbg !2062
  %730 = shl i32 %729, 1, !dbg !2107
  %731 = lshr i32 %729, 31, !dbg !2107
  %732 = or i32 %730, %731, !dbg !2107
  store i32 %732, i32* %36, align 4, !dbg !2107, !tbaa !1043
  %733 = add i32 %732, 1859775393, !dbg !2107
  %734 = add i32 %733, %685, !dbg !2107
  %735 = add i32 %734, %726, !dbg !2107
  %736 = add i32 %735, %724, !dbg !2107
  call void @llvm.dbg.value(metadata i32 %736, metadata !1978, metadata !DIExpression()), !dbg !1999
  %737 = shl i32 %700, 30, !dbg !2107
  %738 = lshr i32 %700, 2, !dbg !2107
  %739 = or i32 %737, %738, !dbg !2107
  call void @llvm.dbg.value(metadata i32 %739, metadata !1980, metadata !DIExpression()), !dbg !2002
  %740 = shl i32 %736, 5, !dbg !2109
  %741 = lshr i32 %736, 27, !dbg !2109
  %742 = or i32 %740, %741, !dbg !2109
  %743 = and i32 %718, %739, !dbg !2109
  %744 = or i32 %718, %739, !dbg !2109
  %745 = and i32 %744, %721, !dbg !2109
  %746 = or i32 %745, %743, !dbg !2109
  %747 = xor i32 %498, %462, !dbg !2109
  %748 = xor i32 %747, %606, !dbg !2109
  %749 = xor i32 %748, %696, !dbg !2109
  call void @llvm.dbg.value(metadata i32 %749, metadata !1984, metadata !DIExpression()), !dbg !2062
  %750 = shl i32 %749, 1, !dbg !2109
  %751 = lshr i32 %749, 31, !dbg !2109
  %752 = or i32 %750, %751, !dbg !2109
  store i32 %752, i32* %37, align 16, !dbg !2109, !tbaa !1043
  %753 = add i32 %752, -1894007588, !dbg !2109
  %754 = add i32 %753, %703, !dbg !2109
  %755 = add i32 %754, %746, !dbg !2109
  %756 = add i32 %755, %742, !dbg !2109
  call void @llvm.dbg.value(metadata i32 %756, metadata !1982, metadata !DIExpression()), !dbg !2004
  %757 = shl i32 %718, 30, !dbg !2109
  %758 = lshr i32 %718, 2, !dbg !2109
  %759 = or i32 %757, %758, !dbg !2109
  call void @llvm.dbg.value(metadata i32 %759, metadata !1979, metadata !DIExpression()), !dbg !2001
  %760 = shl i32 %756, 5, !dbg !2111
  %761 = lshr i32 %756, 27, !dbg !2111
  %762 = or i32 %760, %761, !dbg !2111
  %763 = and i32 %736, %759, !dbg !2111
  %764 = or i32 %736, %759, !dbg !2111
  %765 = and i32 %764, %739, !dbg !2111
  %766 = or i32 %765, %763, !dbg !2111
  %767 = xor i32 %516, %480, !dbg !2111
  %768 = xor i32 %767, %624, !dbg !2111
  %769 = xor i32 %768, %714, !dbg !2111
  call void @llvm.dbg.value(metadata i32 %769, metadata !1984, metadata !DIExpression()), !dbg !2062
  %770 = shl i32 %769, 1, !dbg !2111
  %771 = lshr i32 %769, 31, !dbg !2111
  %772 = or i32 %770, %771, !dbg !2111
  store i32 %772, i32* %38, align 4, !dbg !2111, !tbaa !1043
  %773 = add i32 %772, -1894007588, !dbg !2111
  %774 = add i32 %773, %721, !dbg !2111
  %775 = add i32 %774, %766, !dbg !2111
  %776 = add i32 %775, %762, !dbg !2111
  call void @llvm.dbg.value(metadata i32 %776, metadata !1981, metadata !DIExpression()), !dbg !2003
  %777 = shl i32 %736, 30, !dbg !2111
  %778 = lshr i32 %736, 2, !dbg !2111
  %779 = or i32 %777, %778, !dbg !2111
  call void @llvm.dbg.value(metadata i32 %779, metadata !1978, metadata !DIExpression()), !dbg !1999
  %780 = shl i32 %776, 5, !dbg !2113
  %781 = lshr i32 %776, 27, !dbg !2113
  %782 = or i32 %780, %781, !dbg !2113
  %783 = and i32 %756, %779, !dbg !2113
  %784 = or i32 %756, %779, !dbg !2113
  %785 = and i32 %784, %759, !dbg !2113
  %786 = or i32 %785, %783, !dbg !2113
  %787 = xor i32 %534, %498, !dbg !2113
  %788 = xor i32 %787, %642, !dbg !2113
  %789 = xor i32 %788, %732, !dbg !2113
  call void @llvm.dbg.value(metadata i32 %789, metadata !1984, metadata !DIExpression()), !dbg !2062
  %790 = shl i32 %789, 1, !dbg !2113
  %791 = lshr i32 %789, 31, !dbg !2113
  %792 = or i32 %790, %791, !dbg !2113
  store i32 %792, i32* %39, align 8, !dbg !2113, !tbaa !1043
  %793 = add i32 %792, -1894007588, !dbg !2113
  %794 = add i32 %793, %739, !dbg !2113
  %795 = add i32 %794, %786, !dbg !2113
  %796 = add i32 %795, %782, !dbg !2113
  call void @llvm.dbg.value(metadata i32 %796, metadata !1980, metadata !DIExpression()), !dbg !2002
  %797 = shl i32 %756, 30, !dbg !2113
  %798 = lshr i32 %756, 2, !dbg !2113
  %799 = or i32 %797, %798, !dbg !2113
  call void @llvm.dbg.value(metadata i32 %799, metadata !1982, metadata !DIExpression()), !dbg !2004
  %800 = shl i32 %796, 5, !dbg !2115
  %801 = lshr i32 %796, 27, !dbg !2115
  %802 = or i32 %800, %801, !dbg !2115
  %803 = and i32 %776, %799, !dbg !2115
  %804 = or i32 %776, %799, !dbg !2115
  %805 = and i32 %804, %779, !dbg !2115
  %806 = or i32 %805, %803, !dbg !2115
  %807 = xor i32 %552, %516, !dbg !2115
  %808 = xor i32 %807, %660, !dbg !2115
  %809 = xor i32 %808, %752, !dbg !2115
  call void @llvm.dbg.value(metadata i32 %809, metadata !1984, metadata !DIExpression()), !dbg !2062
  %810 = shl i32 %809, 1, !dbg !2115
  %811 = lshr i32 %809, 31, !dbg !2115
  %812 = or i32 %810, %811, !dbg !2115
  store i32 %812, i32* %40, align 4, !dbg !2115, !tbaa !1043
  %813 = add i32 %812, -1894007588, !dbg !2115
  %814 = add i32 %813, %759, !dbg !2115
  %815 = add i32 %814, %806, !dbg !2115
  %816 = add i32 %815, %802, !dbg !2115
  call void @llvm.dbg.value(metadata i32 %816, metadata !1979, metadata !DIExpression()), !dbg !2001
  %817 = shl i32 %776, 30, !dbg !2115
  %818 = lshr i32 %776, 2, !dbg !2115
  %819 = or i32 %817, %818, !dbg !2115
  call void @llvm.dbg.value(metadata i32 %819, metadata !1981, metadata !DIExpression()), !dbg !2003
  %820 = shl i32 %816, 5, !dbg !2117
  %821 = lshr i32 %816, 27, !dbg !2117
  %822 = or i32 %820, %821, !dbg !2117
  %823 = and i32 %796, %819, !dbg !2117
  %824 = or i32 %796, %819, !dbg !2117
  %825 = and i32 %824, %799, !dbg !2117
  %826 = or i32 %825, %823, !dbg !2117
  %827 = xor i32 %570, %534, !dbg !2117
  %828 = xor i32 %827, %678, !dbg !2117
  %829 = xor i32 %828, %772, !dbg !2117
  call void @llvm.dbg.value(metadata i32 %829, metadata !1984, metadata !DIExpression()), !dbg !2062
  %830 = shl i32 %829, 1, !dbg !2117
  %831 = lshr i32 %829, 31, !dbg !2117
  %832 = or i32 %830, %831, !dbg !2117
  store i32 %832, i32* %41, align 16, !dbg !2117, !tbaa !1043
  %833 = add i32 %832, -1894007588, !dbg !2117
  %834 = add i32 %833, %779, !dbg !2117
  %835 = add i32 %834, %826, !dbg !2117
  %836 = add i32 %835, %822, !dbg !2117
  call void @llvm.dbg.value(metadata i32 %836, metadata !1978, metadata !DIExpression()), !dbg !1999
  %837 = shl i32 %796, 30, !dbg !2117
  %838 = lshr i32 %796, 2, !dbg !2117
  %839 = or i32 %837, %838, !dbg !2117
  call void @llvm.dbg.value(metadata i32 %839, metadata !1980, metadata !DIExpression()), !dbg !2002
  %840 = shl i32 %836, 5, !dbg !2119
  %841 = lshr i32 %836, 27, !dbg !2119
  %842 = or i32 %840, %841, !dbg !2119
  %843 = and i32 %816, %839, !dbg !2119
  %844 = or i32 %816, %839, !dbg !2119
  %845 = and i32 %844, %819, !dbg !2119
  %846 = or i32 %845, %843, !dbg !2119
  %847 = xor i32 %588, %552, !dbg !2119
  %848 = xor i32 %847, %696, !dbg !2119
  %849 = xor i32 %848, %792, !dbg !2119
  call void @llvm.dbg.value(metadata i32 %849, metadata !1984, metadata !DIExpression()), !dbg !2062
  %850 = shl i32 %849, 1, !dbg !2119
  %851 = lshr i32 %849, 31, !dbg !2119
  %852 = or i32 %850, %851, !dbg !2119
  store i32 %852, i32* %42, align 4, !dbg !2119, !tbaa !1043
  %853 = add i32 %852, -1894007588, !dbg !2119
  %854 = add i32 %853, %799, !dbg !2119
  %855 = add i32 %854, %846, !dbg !2119
  %856 = add i32 %855, %842, !dbg !2119
  call void @llvm.dbg.value(metadata i32 %856, metadata !1982, metadata !DIExpression()), !dbg !2004
  %857 = shl i32 %816, 30, !dbg !2119
  %858 = lshr i32 %816, 2, !dbg !2119
  %859 = or i32 %857, %858, !dbg !2119
  call void @llvm.dbg.value(metadata i32 %859, metadata !1979, metadata !DIExpression()), !dbg !2001
  %860 = shl i32 %856, 5, !dbg !2121
  %861 = lshr i32 %856, 27, !dbg !2121
  %862 = or i32 %860, %861, !dbg !2121
  %863 = and i32 %836, %859, !dbg !2121
  %864 = or i32 %836, %859, !dbg !2121
  %865 = and i32 %864, %839, !dbg !2121
  %866 = or i32 %865, %863, !dbg !2121
  %867 = xor i32 %606, %570, !dbg !2121
  %868 = xor i32 %867, %714, !dbg !2121
  %869 = xor i32 %868, %812, !dbg !2121
  call void @llvm.dbg.value(metadata i32 %869, metadata !1984, metadata !DIExpression()), !dbg !2062
  %870 = shl i32 %869, 1, !dbg !2121
  %871 = lshr i32 %869, 31, !dbg !2121
  %872 = or i32 %870, %871, !dbg !2121
  store i32 %872, i32* %43, align 8, !dbg !2121, !tbaa !1043
  %873 = add i32 %872, -1894007588, !dbg !2121
  %874 = add i32 %873, %819, !dbg !2121
  %875 = add i32 %874, %866, !dbg !2121
  %876 = add i32 %875, %862, !dbg !2121
  call void @llvm.dbg.value(metadata i32 %876, metadata !1981, metadata !DIExpression()), !dbg !2003
  %877 = shl i32 %836, 30, !dbg !2121
  %878 = lshr i32 %836, 2, !dbg !2121
  %879 = or i32 %877, %878, !dbg !2121
  call void @llvm.dbg.value(metadata i32 %879, metadata !1978, metadata !DIExpression()), !dbg !1999
  %880 = shl i32 %876, 5, !dbg !2123
  %881 = lshr i32 %876, 27, !dbg !2123
  %882 = or i32 %880, %881, !dbg !2123
  %883 = and i32 %856, %879, !dbg !2123
  %884 = or i32 %856, %879, !dbg !2123
  %885 = and i32 %884, %859, !dbg !2123
  %886 = or i32 %885, %883, !dbg !2123
  %887 = xor i32 %624, %588, !dbg !2123
  %888 = xor i32 %887, %732, !dbg !2123
  %889 = xor i32 %888, %832, !dbg !2123
  call void @llvm.dbg.value(metadata i32 %889, metadata !1984, metadata !DIExpression()), !dbg !2062
  %890 = shl i32 %889, 1, !dbg !2123
  %891 = lshr i32 %889, 31, !dbg !2123
  %892 = or i32 %890, %891, !dbg !2123
  store i32 %892, i32* %44, align 4, !dbg !2123, !tbaa !1043
  %893 = add i32 %892, -1894007588, !dbg !2123
  %894 = add i32 %893, %839, !dbg !2123
  %895 = add i32 %894, %886, !dbg !2123
  %896 = add i32 %895, %882, !dbg !2123
  call void @llvm.dbg.value(metadata i32 %896, metadata !1980, metadata !DIExpression()), !dbg !2002
  %897 = shl i32 %856, 30, !dbg !2123
  %898 = lshr i32 %856, 2, !dbg !2123
  %899 = or i32 %897, %898, !dbg !2123
  call void @llvm.dbg.value(metadata i32 %899, metadata !1982, metadata !DIExpression()), !dbg !2004
  %900 = shl i32 %896, 5, !dbg !2125
  %901 = lshr i32 %896, 27, !dbg !2125
  %902 = or i32 %900, %901, !dbg !2125
  %903 = and i32 %876, %899, !dbg !2125
  %904 = or i32 %876, %899, !dbg !2125
  %905 = and i32 %904, %879, !dbg !2125
  %906 = or i32 %905, %903, !dbg !2125
  %907 = xor i32 %642, %606, !dbg !2125
  %908 = xor i32 %907, %752, !dbg !2125
  %909 = xor i32 %908, %852, !dbg !2125
  call void @llvm.dbg.value(metadata i32 %909, metadata !1984, metadata !DIExpression()), !dbg !2062
  %910 = shl i32 %909, 1, !dbg !2125
  %911 = lshr i32 %909, 31, !dbg !2125
  %912 = or i32 %910, %911, !dbg !2125
  store i32 %912, i32* %29, align 16, !dbg !2125, !tbaa !1043
  %913 = add i32 %912, -1894007588, !dbg !2125
  %914 = add i32 %913, %859, !dbg !2125
  %915 = add i32 %914, %906, !dbg !2125
  %916 = add i32 %915, %902, !dbg !2125
  call void @llvm.dbg.value(metadata i32 %916, metadata !1979, metadata !DIExpression()), !dbg !2001
  %917 = shl i32 %876, 30, !dbg !2125
  %918 = lshr i32 %876, 2, !dbg !2125
  %919 = or i32 %917, %918, !dbg !2125
  call void @llvm.dbg.value(metadata i32 %919, metadata !1981, metadata !DIExpression()), !dbg !2003
  %920 = shl i32 %916, 5, !dbg !2127
  %921 = lshr i32 %916, 27, !dbg !2127
  %922 = or i32 %920, %921, !dbg !2127
  %923 = and i32 %896, %919, !dbg !2127
  %924 = or i32 %896, %919, !dbg !2127
  %925 = and i32 %924, %899, !dbg !2127
  %926 = or i32 %925, %923, !dbg !2127
  %927 = xor i32 %660, %624, !dbg !2127
  %928 = xor i32 %927, %772, !dbg !2127
  %929 = xor i32 %928, %872, !dbg !2127
  call void @llvm.dbg.value(metadata i32 %929, metadata !1984, metadata !DIExpression()), !dbg !2062
  %930 = shl i32 %929, 1, !dbg !2127
  %931 = lshr i32 %929, 31, !dbg !2127
  %932 = or i32 %930, %931, !dbg !2127
  store i32 %932, i32* %30, align 4, !dbg !2127, !tbaa !1043
  %933 = add i32 %932, -1894007588, !dbg !2127
  %934 = add i32 %933, %879, !dbg !2127
  %935 = add i32 %934, %926, !dbg !2127
  %936 = add i32 %935, %922, !dbg !2127
  call void @llvm.dbg.value(metadata i32 %936, metadata !1978, metadata !DIExpression()), !dbg !1999
  %937 = shl i32 %896, 30, !dbg !2127
  %938 = lshr i32 %896, 2, !dbg !2127
  %939 = or i32 %937, %938, !dbg !2127
  call void @llvm.dbg.value(metadata i32 %939, metadata !1980, metadata !DIExpression()), !dbg !2002
  %940 = shl i32 %936, 5, !dbg !2129
  %941 = lshr i32 %936, 27, !dbg !2129
  %942 = or i32 %940, %941, !dbg !2129
  %943 = and i32 %916, %939, !dbg !2129
  %944 = or i32 %916, %939, !dbg !2129
  %945 = and i32 %944, %919, !dbg !2129
  %946 = or i32 %945, %943, !dbg !2129
  %947 = xor i32 %678, %642, !dbg !2129
  %948 = xor i32 %947, %792, !dbg !2129
  %949 = xor i32 %948, %892, !dbg !2129
  call void @llvm.dbg.value(metadata i32 %949, metadata !1984, metadata !DIExpression()), !dbg !2062
  %950 = shl i32 %949, 1, !dbg !2129
  %951 = lshr i32 %949, 31, !dbg !2129
  %952 = or i32 %950, %951, !dbg !2129
  store i32 %952, i32* %31, align 8, !dbg !2129, !tbaa !1043
  %953 = add i32 %952, -1894007588, !dbg !2129
  %954 = add i32 %953, %899, !dbg !2129
  %955 = add i32 %954, %946, !dbg !2129
  %956 = add i32 %955, %942, !dbg !2129
  call void @llvm.dbg.value(metadata i32 %956, metadata !1982, metadata !DIExpression()), !dbg !2004
  %957 = shl i32 %916, 30, !dbg !2129
  %958 = lshr i32 %916, 2, !dbg !2129
  %959 = or i32 %957, %958, !dbg !2129
  call void @llvm.dbg.value(metadata i32 %959, metadata !1979, metadata !DIExpression()), !dbg !2001
  %960 = shl i32 %956, 5, !dbg !2131
  %961 = lshr i32 %956, 27, !dbg !2131
  %962 = or i32 %960, %961, !dbg !2131
  %963 = and i32 %936, %959, !dbg !2131
  %964 = or i32 %936, %959, !dbg !2131
  %965 = and i32 %964, %939, !dbg !2131
  %966 = or i32 %965, %963, !dbg !2131
  %967 = xor i32 %696, %660, !dbg !2131
  %968 = xor i32 %967, %812, !dbg !2131
  %969 = xor i32 %968, %912, !dbg !2131
  call void @llvm.dbg.value(metadata i32 %969, metadata !1984, metadata !DIExpression()), !dbg !2062
  %970 = shl i32 %969, 1, !dbg !2131
  %971 = lshr i32 %969, 31, !dbg !2131
  %972 = or i32 %970, %971, !dbg !2131
  store i32 %972, i32* %32, align 4, !dbg !2131, !tbaa !1043
  %973 = add i32 %972, -1894007588, !dbg !2131
  %974 = add i32 %973, %919, !dbg !2131
  %975 = add i32 %974, %966, !dbg !2131
  %976 = add i32 %975, %962, !dbg !2131
  call void @llvm.dbg.value(metadata i32 %976, metadata !1981, metadata !DIExpression()), !dbg !2003
  %977 = shl i32 %936, 30, !dbg !2131
  %978 = lshr i32 %936, 2, !dbg !2131
  %979 = or i32 %977, %978, !dbg !2131
  call void @llvm.dbg.value(metadata i32 %979, metadata !1978, metadata !DIExpression()), !dbg !1999
  %980 = shl i32 %976, 5, !dbg !2133
  %981 = lshr i32 %976, 27, !dbg !2133
  %982 = or i32 %980, %981, !dbg !2133
  %983 = and i32 %956, %979, !dbg !2133
  %984 = or i32 %956, %979, !dbg !2133
  %985 = and i32 %984, %959, !dbg !2133
  %986 = or i32 %985, %983, !dbg !2133
  %987 = xor i32 %714, %678, !dbg !2133
  %988 = xor i32 %987, %832, !dbg !2133
  %989 = xor i32 %988, %932, !dbg !2133
  call void @llvm.dbg.value(metadata i32 %989, metadata !1984, metadata !DIExpression()), !dbg !2062
  %990 = shl i32 %989, 1, !dbg !2133
  %991 = lshr i32 %989, 31, !dbg !2133
  %992 = or i32 %990, %991, !dbg !2133
  store i32 %992, i32* %33, align 16, !dbg !2133, !tbaa !1043
  %993 = add i32 %992, -1894007588, !dbg !2133
  %994 = add i32 %993, %939, !dbg !2133
  %995 = add i32 %994, %986, !dbg !2133
  %996 = add i32 %995, %982, !dbg !2133
  call void @llvm.dbg.value(metadata i32 %996, metadata !1980, metadata !DIExpression()), !dbg !2002
  %997 = shl i32 %956, 30, !dbg !2133
  %998 = lshr i32 %956, 2, !dbg !2133
  %999 = or i32 %997, %998, !dbg !2133
  call void @llvm.dbg.value(metadata i32 %999, metadata !1982, metadata !DIExpression()), !dbg !2004
  %1000 = shl i32 %996, 5, !dbg !2135
  %1001 = lshr i32 %996, 27, !dbg !2135
  %1002 = or i32 %1000, %1001, !dbg !2135
  %1003 = and i32 %976, %999, !dbg !2135
  %1004 = or i32 %976, %999, !dbg !2135
  %1005 = and i32 %1004, %979, !dbg !2135
  %1006 = or i32 %1005, %1003, !dbg !2135
  %1007 = xor i32 %732, %696, !dbg !2135
  %1008 = xor i32 %1007, %852, !dbg !2135
  %1009 = xor i32 %1008, %952, !dbg !2135
  call void @llvm.dbg.value(metadata i32 %1009, metadata !1984, metadata !DIExpression()), !dbg !2062
  %1010 = shl i32 %1009, 1, !dbg !2135
  %1011 = lshr i32 %1009, 31, !dbg !2135
  %1012 = or i32 %1010, %1011, !dbg !2135
  store i32 %1012, i32* %34, align 4, !dbg !2135, !tbaa !1043
  %1013 = add i32 %1012, -1894007588, !dbg !2135
  %1014 = add i32 %1013, %959, !dbg !2135
  %1015 = add i32 %1014, %1006, !dbg !2135
  %1016 = add i32 %1015, %1002, !dbg !2135
  call void @llvm.dbg.value(metadata i32 %1016, metadata !1979, metadata !DIExpression()), !dbg !2001
  %1017 = shl i32 %976, 30, !dbg !2135
  %1018 = lshr i32 %976, 2, !dbg !2135
  %1019 = or i32 %1017, %1018, !dbg !2135
  call void @llvm.dbg.value(metadata i32 %1019, metadata !1981, metadata !DIExpression()), !dbg !2003
  %1020 = shl i32 %1016, 5, !dbg !2137
  %1021 = lshr i32 %1016, 27, !dbg !2137
  %1022 = or i32 %1020, %1021, !dbg !2137
  %1023 = and i32 %996, %1019, !dbg !2137
  %1024 = or i32 %996, %1019, !dbg !2137
  %1025 = and i32 %1024, %999, !dbg !2137
  %1026 = or i32 %1025, %1023, !dbg !2137
  %1027 = xor i32 %752, %714, !dbg !2137
  %1028 = xor i32 %1027, %872, !dbg !2137
  %1029 = xor i32 %1028, %972, !dbg !2137
  call void @llvm.dbg.value(metadata i32 %1029, metadata !1984, metadata !DIExpression()), !dbg !2062
  %1030 = shl i32 %1029, 1, !dbg !2137
  %1031 = lshr i32 %1029, 31, !dbg !2137
  %1032 = or i32 %1030, %1031, !dbg !2137
  store i32 %1032, i32* %35, align 8, !dbg !2137, !tbaa !1043
  %1033 = add i32 %1032, -1894007588, !dbg !2137
  %1034 = add i32 %1033, %979, !dbg !2137
  %1035 = add i32 %1034, %1026, !dbg !2137
  %1036 = add i32 %1035, %1022, !dbg !2137
  call void @llvm.dbg.value(metadata i32 %1036, metadata !1978, metadata !DIExpression()), !dbg !1999
  %1037 = shl i32 %996, 30, !dbg !2137
  %1038 = lshr i32 %996, 2, !dbg !2137
  %1039 = or i32 %1037, %1038, !dbg !2137
  call void @llvm.dbg.value(metadata i32 %1039, metadata !1980, metadata !DIExpression()), !dbg !2002
  %1040 = shl i32 %1036, 5, !dbg !2139
  %1041 = lshr i32 %1036, 27, !dbg !2139
  %1042 = or i32 %1040, %1041, !dbg !2139
  %1043 = and i32 %1016, %1039, !dbg !2139
  %1044 = or i32 %1016, %1039, !dbg !2139
  %1045 = and i32 %1044, %1019, !dbg !2139
  %1046 = or i32 %1045, %1043, !dbg !2139
  %1047 = xor i32 %772, %732, !dbg !2139
  %1048 = xor i32 %1047, %892, !dbg !2139
  %1049 = xor i32 %1048, %992, !dbg !2139
  call void @llvm.dbg.value(metadata i32 %1049, metadata !1984, metadata !DIExpression()), !dbg !2062
  %1050 = shl i32 %1049, 1, !dbg !2139
  %1051 = lshr i32 %1049, 31, !dbg !2139
  %1052 = or i32 %1050, %1051, !dbg !2139
  store i32 %1052, i32* %36, align 4, !dbg !2139, !tbaa !1043
  %1053 = add i32 %1052, -1894007588, !dbg !2139
  %1054 = add i32 %1053, %999, !dbg !2139
  %1055 = add i32 %1054, %1046, !dbg !2139
  %1056 = add i32 %1055, %1042, !dbg !2139
  call void @llvm.dbg.value(metadata i32 %1056, metadata !1982, metadata !DIExpression()), !dbg !2004
  %1057 = shl i32 %1016, 30, !dbg !2139
  %1058 = lshr i32 %1016, 2, !dbg !2139
  %1059 = or i32 %1057, %1058, !dbg !2139
  call void @llvm.dbg.value(metadata i32 %1059, metadata !1979, metadata !DIExpression()), !dbg !2001
  %1060 = shl i32 %1056, 5, !dbg !2141
  %1061 = lshr i32 %1056, 27, !dbg !2141
  %1062 = or i32 %1060, %1061, !dbg !2141
  %1063 = and i32 %1036, %1059, !dbg !2141
  %1064 = or i32 %1036, %1059, !dbg !2141
  %1065 = and i32 %1064, %1039, !dbg !2141
  %1066 = or i32 %1065, %1063, !dbg !2141
  %1067 = xor i32 %792, %752, !dbg !2141
  %1068 = xor i32 %1067, %912, !dbg !2141
  %1069 = xor i32 %1068, %1012, !dbg !2141
  call void @llvm.dbg.value(metadata i32 %1069, metadata !1984, metadata !DIExpression()), !dbg !2062
  %1070 = shl i32 %1069, 1, !dbg !2141
  %1071 = lshr i32 %1069, 31, !dbg !2141
  %1072 = or i32 %1070, %1071, !dbg !2141
  store i32 %1072, i32* %37, align 16, !dbg !2141, !tbaa !1043
  %1073 = add i32 %1072, -1894007588, !dbg !2141
  %1074 = add i32 %1073, %1019, !dbg !2141
  %1075 = add i32 %1074, %1066, !dbg !2141
  %1076 = add i32 %1075, %1062, !dbg !2141
  call void @llvm.dbg.value(metadata i32 %1076, metadata !1981, metadata !DIExpression()), !dbg !2003
  %1077 = shl i32 %1036, 30, !dbg !2141
  %1078 = lshr i32 %1036, 2, !dbg !2141
  %1079 = or i32 %1077, %1078, !dbg !2141
  call void @llvm.dbg.value(metadata i32 %1079, metadata !1978, metadata !DIExpression()), !dbg !1999
  %1080 = shl i32 %1076, 5, !dbg !2143
  %1081 = lshr i32 %1076, 27, !dbg !2143
  %1082 = or i32 %1080, %1081, !dbg !2143
  %1083 = and i32 %1056, %1079, !dbg !2143
  %1084 = or i32 %1056, %1079, !dbg !2143
  %1085 = and i32 %1084, %1059, !dbg !2143
  %1086 = or i32 %1085, %1083, !dbg !2143
  %1087 = xor i32 %812, %772, !dbg !2143
  %1088 = xor i32 %1087, %932, !dbg !2143
  %1089 = xor i32 %1088, %1032, !dbg !2143
  call void @llvm.dbg.value(metadata i32 %1089, metadata !1984, metadata !DIExpression()), !dbg !2062
  %1090 = shl i32 %1089, 1, !dbg !2143
  %1091 = lshr i32 %1089, 31, !dbg !2143
  %1092 = or i32 %1090, %1091, !dbg !2143
  store i32 %1092, i32* %38, align 4, !dbg !2143, !tbaa !1043
  %1093 = add i32 %1092, -1894007588, !dbg !2143
  %1094 = add i32 %1093, %1039, !dbg !2143
  %1095 = add i32 %1094, %1086, !dbg !2143
  %1096 = add i32 %1095, %1082, !dbg !2143
  call void @llvm.dbg.value(metadata i32 %1096, metadata !1980, metadata !DIExpression()), !dbg !2002
  %1097 = shl i32 %1056, 30, !dbg !2143
  %1098 = lshr i32 %1056, 2, !dbg !2143
  %1099 = or i32 %1097, %1098, !dbg !2143
  call void @llvm.dbg.value(metadata i32 %1099, metadata !1982, metadata !DIExpression()), !dbg !2004
  %1100 = shl i32 %1096, 5, !dbg !2145
  %1101 = lshr i32 %1096, 27, !dbg !2145
  %1102 = or i32 %1100, %1101, !dbg !2145
  %1103 = and i32 %1076, %1099, !dbg !2145
  %1104 = or i32 %1076, %1099, !dbg !2145
  %1105 = and i32 %1104, %1079, !dbg !2145
  %1106 = or i32 %1105, %1103, !dbg !2145
  %1107 = xor i32 %832, %792, !dbg !2145
  %1108 = xor i32 %1107, %952, !dbg !2145
  %1109 = xor i32 %1108, %1052, !dbg !2145
  call void @llvm.dbg.value(metadata i32 %1109, metadata !1984, metadata !DIExpression()), !dbg !2062
  %1110 = shl i32 %1109, 1, !dbg !2145
  %1111 = lshr i32 %1109, 31, !dbg !2145
  %1112 = or i32 %1110, %1111, !dbg !2145
  store i32 %1112, i32* %39, align 8, !dbg !2145, !tbaa !1043
  %1113 = add i32 %1112, -1894007588, !dbg !2145
  %1114 = add i32 %1113, %1059, !dbg !2145
  %1115 = add i32 %1114, %1106, !dbg !2145
  %1116 = add i32 %1115, %1102, !dbg !2145
  call void @llvm.dbg.value(metadata i32 %1116, metadata !1979, metadata !DIExpression()), !dbg !2001
  %1117 = shl i32 %1076, 30, !dbg !2145
  %1118 = lshr i32 %1076, 2, !dbg !2145
  %1119 = or i32 %1117, %1118, !dbg !2145
  call void @llvm.dbg.value(metadata i32 %1119, metadata !1981, metadata !DIExpression()), !dbg !2003
  %1120 = shl i32 %1116, 5, !dbg !2147
  %1121 = lshr i32 %1116, 27, !dbg !2147
  %1122 = or i32 %1120, %1121, !dbg !2147
  %1123 = and i32 %1096, %1119, !dbg !2147
  %1124 = or i32 %1096, %1119, !dbg !2147
  %1125 = and i32 %1124, %1099, !dbg !2147
  %1126 = or i32 %1125, %1123, !dbg !2147
  %1127 = xor i32 %852, %812, !dbg !2147
  %1128 = xor i32 %1127, %972, !dbg !2147
  %1129 = xor i32 %1128, %1072, !dbg !2147
  call void @llvm.dbg.value(metadata i32 %1129, metadata !1984, metadata !DIExpression()), !dbg !2062
  %1130 = shl i32 %1129, 1, !dbg !2147
  %1131 = lshr i32 %1129, 31, !dbg !2147
  %1132 = or i32 %1130, %1131, !dbg !2147
  store i32 %1132, i32* %40, align 4, !dbg !2147, !tbaa !1043
  %1133 = add i32 %1132, -1894007588, !dbg !2147
  %1134 = add i32 %1133, %1079, !dbg !2147
  %1135 = add i32 %1134, %1126, !dbg !2147
  %1136 = add i32 %1135, %1122, !dbg !2147
  call void @llvm.dbg.value(metadata i32 %1136, metadata !1978, metadata !DIExpression()), !dbg !1999
  %1137 = shl i32 %1096, 30, !dbg !2147
  %1138 = lshr i32 %1096, 2, !dbg !2147
  %1139 = or i32 %1137, %1138, !dbg !2147
  call void @llvm.dbg.value(metadata i32 %1139, metadata !1980, metadata !DIExpression()), !dbg !2002
  %1140 = shl i32 %1136, 5, !dbg !2149
  %1141 = lshr i32 %1136, 27, !dbg !2149
  %1142 = or i32 %1140, %1141, !dbg !2149
  %1143 = xor i32 %1139, %1119, !dbg !2149
  %1144 = xor i32 %1143, %1116, !dbg !2149
  %1145 = xor i32 %872, %832, !dbg !2149
  %1146 = xor i32 %1145, %992, !dbg !2149
  %1147 = xor i32 %1146, %1092, !dbg !2149
  call void @llvm.dbg.value(metadata i32 %1147, metadata !1984, metadata !DIExpression()), !dbg !2062
  %1148 = shl i32 %1147, 1, !dbg !2149
  %1149 = lshr i32 %1147, 31, !dbg !2149
  %1150 = or i32 %1148, %1149, !dbg !2149
  store i32 %1150, i32* %41, align 16, !dbg !2149, !tbaa !1043
  %1151 = add i32 %1150, -899497514, !dbg !2149
  %1152 = add i32 %1151, %1099, !dbg !2149
  %1153 = add i32 %1152, %1144, !dbg !2149
  %1154 = add i32 %1153, %1142, !dbg !2149
  call void @llvm.dbg.value(metadata i32 %1154, metadata !1982, metadata !DIExpression()), !dbg !2004
  %1155 = shl i32 %1116, 30, !dbg !2149
  %1156 = lshr i32 %1116, 2, !dbg !2149
  %1157 = or i32 %1155, %1156, !dbg !2149
  call void @llvm.dbg.value(metadata i32 %1157, metadata !1979, metadata !DIExpression()), !dbg !2001
  %1158 = shl i32 %1154, 5, !dbg !2151
  %1159 = lshr i32 %1154, 27, !dbg !2151
  %1160 = or i32 %1158, %1159, !dbg !2151
  %1161 = xor i32 %1157, %1139, !dbg !2151
  %1162 = xor i32 %1161, %1136, !dbg !2151
  %1163 = xor i32 %892, %852, !dbg !2151
  %1164 = xor i32 %1163, %1012, !dbg !2151
  %1165 = xor i32 %1164, %1112, !dbg !2151
  call void @llvm.dbg.value(metadata i32 %1165, metadata !1984, metadata !DIExpression()), !dbg !2062
  %1166 = shl i32 %1165, 1, !dbg !2151
  %1167 = lshr i32 %1165, 31, !dbg !2151
  %1168 = or i32 %1166, %1167, !dbg !2151
  store i32 %1168, i32* %42, align 4, !dbg !2151, !tbaa !1043
  %1169 = add i32 %1168, -899497514, !dbg !2151
  %1170 = add i32 %1169, %1119, !dbg !2151
  %1171 = add i32 %1170, %1162, !dbg !2151
  %1172 = add i32 %1171, %1160, !dbg !2151
  call void @llvm.dbg.value(metadata i32 %1172, metadata !1981, metadata !DIExpression()), !dbg !2003
  %1173 = shl i32 %1136, 30, !dbg !2151
  %1174 = lshr i32 %1136, 2, !dbg !2151
  %1175 = or i32 %1173, %1174, !dbg !2151
  call void @llvm.dbg.value(metadata i32 %1175, metadata !1978, metadata !DIExpression()), !dbg !1999
  %1176 = shl i32 %1172, 5, !dbg !2153
  %1177 = lshr i32 %1172, 27, !dbg !2153
  %1178 = or i32 %1176, %1177, !dbg !2153
  %1179 = xor i32 %1175, %1157, !dbg !2153
  %1180 = xor i32 %1179, %1154, !dbg !2153
  %1181 = xor i32 %912, %872, !dbg !2153
  %1182 = xor i32 %1181, %1032, !dbg !2153
  %1183 = xor i32 %1182, %1132, !dbg !2153
  call void @llvm.dbg.value(metadata i32 %1183, metadata !1984, metadata !DIExpression()), !dbg !2062
  %1184 = shl i32 %1183, 1, !dbg !2153
  %1185 = lshr i32 %1183, 31, !dbg !2153
  %1186 = or i32 %1184, %1185, !dbg !2153
  store i32 %1186, i32* %43, align 8, !dbg !2153, !tbaa !1043
  %1187 = add i32 %1186, -899497514, !dbg !2153
  %1188 = add i32 %1187, %1139, !dbg !2153
  %1189 = add i32 %1188, %1180, !dbg !2153
  %1190 = add i32 %1189, %1178, !dbg !2153
  call void @llvm.dbg.value(metadata i32 %1190, metadata !1980, metadata !DIExpression()), !dbg !2002
  %1191 = shl i32 %1154, 30, !dbg !2153
  %1192 = lshr i32 %1154, 2, !dbg !2153
  %1193 = or i32 %1191, %1192, !dbg !2153
  call void @llvm.dbg.value(metadata i32 %1193, metadata !1982, metadata !DIExpression()), !dbg !2004
  %1194 = shl i32 %1190, 5, !dbg !2155
  %1195 = lshr i32 %1190, 27, !dbg !2155
  %1196 = or i32 %1194, %1195, !dbg !2155
  %1197 = xor i32 %1193, %1175, !dbg !2155
  %1198 = xor i32 %1197, %1172, !dbg !2155
  %1199 = xor i32 %932, %892, !dbg !2155
  %1200 = xor i32 %1199, %1052, !dbg !2155
  %1201 = xor i32 %1200, %1150, !dbg !2155
  call void @llvm.dbg.value(metadata i32 %1201, metadata !1984, metadata !DIExpression()), !dbg !2062
  %1202 = shl i32 %1201, 1, !dbg !2155
  %1203 = lshr i32 %1201, 31, !dbg !2155
  %1204 = or i32 %1202, %1203, !dbg !2155
  store i32 %1204, i32* %44, align 4, !dbg !2155, !tbaa !1043
  %1205 = add i32 %1204, -899497514, !dbg !2155
  %1206 = add i32 %1205, %1157, !dbg !2155
  %1207 = add i32 %1206, %1198, !dbg !2155
  %1208 = add i32 %1207, %1196, !dbg !2155
  call void @llvm.dbg.value(metadata i32 %1208, metadata !1979, metadata !DIExpression()), !dbg !2001
  %1209 = shl i32 %1172, 30, !dbg !2155
  %1210 = lshr i32 %1172, 2, !dbg !2155
  %1211 = or i32 %1209, %1210, !dbg !2155
  call void @llvm.dbg.value(metadata i32 %1211, metadata !1981, metadata !DIExpression()), !dbg !2003
  %1212 = shl i32 %1208, 5, !dbg !2157
  %1213 = lshr i32 %1208, 27, !dbg !2157
  %1214 = or i32 %1212, %1213, !dbg !2157
  %1215 = xor i32 %1211, %1193, !dbg !2157
  %1216 = xor i32 %1215, %1190, !dbg !2157
  %1217 = xor i32 %952, %912, !dbg !2157
  %1218 = xor i32 %1217, %1072, !dbg !2157
  %1219 = xor i32 %1218, %1168, !dbg !2157
  call void @llvm.dbg.value(metadata i32 %1219, metadata !1984, metadata !DIExpression()), !dbg !2062
  %1220 = shl i32 %1219, 1, !dbg !2157
  %1221 = lshr i32 %1219, 31, !dbg !2157
  %1222 = or i32 %1220, %1221, !dbg !2157
  store i32 %1222, i32* %29, align 16, !dbg !2157, !tbaa !1043
  %1223 = add i32 %1222, -899497514, !dbg !2157
  %1224 = add i32 %1223, %1175, !dbg !2157
  %1225 = add i32 %1224, %1216, !dbg !2157
  %1226 = add i32 %1225, %1214, !dbg !2157
  call void @llvm.dbg.value(metadata i32 %1226, metadata !1978, metadata !DIExpression()), !dbg !1999
  %1227 = shl i32 %1190, 30, !dbg !2157
  %1228 = lshr i32 %1190, 2, !dbg !2157
  %1229 = or i32 %1227, %1228, !dbg !2157
  call void @llvm.dbg.value(metadata i32 %1229, metadata !1980, metadata !DIExpression()), !dbg !2002
  %1230 = shl i32 %1226, 5, !dbg !2159
  %1231 = lshr i32 %1226, 27, !dbg !2159
  %1232 = or i32 %1230, %1231, !dbg !2159
  %1233 = xor i32 %1229, %1211, !dbg !2159
  %1234 = xor i32 %1233, %1208, !dbg !2159
  %1235 = xor i32 %972, %932, !dbg !2159
  %1236 = xor i32 %1235, %1092, !dbg !2159
  %1237 = xor i32 %1236, %1186, !dbg !2159
  call void @llvm.dbg.value(metadata i32 %1237, metadata !1984, metadata !DIExpression()), !dbg !2062
  %1238 = shl i32 %1237, 1, !dbg !2159
  %1239 = lshr i32 %1237, 31, !dbg !2159
  %1240 = or i32 %1238, %1239, !dbg !2159
  store i32 %1240, i32* %30, align 4, !dbg !2159, !tbaa !1043
  %1241 = add i32 %1240, -899497514, !dbg !2159
  %1242 = add i32 %1241, %1193, !dbg !2159
  %1243 = add i32 %1242, %1234, !dbg !2159
  %1244 = add i32 %1243, %1232, !dbg !2159
  call void @llvm.dbg.value(metadata i32 %1244, metadata !1982, metadata !DIExpression()), !dbg !2004
  %1245 = shl i32 %1208, 30, !dbg !2159
  %1246 = lshr i32 %1208, 2, !dbg !2159
  %1247 = or i32 %1245, %1246, !dbg !2159
  call void @llvm.dbg.value(metadata i32 %1247, metadata !1979, metadata !DIExpression()), !dbg !2001
  %1248 = shl i32 %1244, 5, !dbg !2161
  %1249 = lshr i32 %1244, 27, !dbg !2161
  %1250 = or i32 %1248, %1249, !dbg !2161
  %1251 = xor i32 %1247, %1229, !dbg !2161
  %1252 = xor i32 %1251, %1226, !dbg !2161
  %1253 = xor i32 %992, %952, !dbg !2161
  %1254 = xor i32 %1253, %1112, !dbg !2161
  %1255 = xor i32 %1254, %1204, !dbg !2161
  call void @llvm.dbg.value(metadata i32 %1255, metadata !1984, metadata !DIExpression()), !dbg !2062
  %1256 = shl i32 %1255, 1, !dbg !2161
  %1257 = lshr i32 %1255, 31, !dbg !2161
  %1258 = or i32 %1256, %1257, !dbg !2161
  store i32 %1258, i32* %31, align 8, !dbg !2161, !tbaa !1043
  %1259 = add i32 %1258, -899497514, !dbg !2161
  %1260 = add i32 %1259, %1211, !dbg !2161
  %1261 = add i32 %1260, %1252, !dbg !2161
  %1262 = add i32 %1261, %1250, !dbg !2161
  call void @llvm.dbg.value(metadata i32 %1262, metadata !1981, metadata !DIExpression()), !dbg !2003
  %1263 = shl i32 %1226, 30, !dbg !2161
  %1264 = lshr i32 %1226, 2, !dbg !2161
  %1265 = or i32 %1263, %1264, !dbg !2161
  call void @llvm.dbg.value(metadata i32 %1265, metadata !1978, metadata !DIExpression()), !dbg !1999
  %1266 = shl i32 %1262, 5, !dbg !2163
  %1267 = lshr i32 %1262, 27, !dbg !2163
  %1268 = or i32 %1266, %1267, !dbg !2163
  %1269 = xor i32 %1265, %1247, !dbg !2163
  %1270 = xor i32 %1269, %1244, !dbg !2163
  %1271 = xor i32 %1012, %972, !dbg !2163
  %1272 = xor i32 %1271, %1132, !dbg !2163
  %1273 = xor i32 %1272, %1222, !dbg !2163
  call void @llvm.dbg.value(metadata i32 %1273, metadata !1984, metadata !DIExpression()), !dbg !2062
  %1274 = shl i32 %1273, 1, !dbg !2163
  %1275 = lshr i32 %1273, 31, !dbg !2163
  %1276 = or i32 %1274, %1275, !dbg !2163
  store i32 %1276, i32* %32, align 4, !dbg !2163, !tbaa !1043
  %1277 = add i32 %1276, -899497514, !dbg !2163
  %1278 = add i32 %1277, %1229, !dbg !2163
  %1279 = add i32 %1278, %1270, !dbg !2163
  %1280 = add i32 %1279, %1268, !dbg !2163
  call void @llvm.dbg.value(metadata i32 %1280, metadata !1980, metadata !DIExpression()), !dbg !2002
  %1281 = shl i32 %1244, 30, !dbg !2163
  %1282 = lshr i32 %1244, 2, !dbg !2163
  %1283 = or i32 %1281, %1282, !dbg !2163
  call void @llvm.dbg.value(metadata i32 %1283, metadata !1982, metadata !DIExpression()), !dbg !2004
  %1284 = shl i32 %1280, 5, !dbg !2165
  %1285 = lshr i32 %1280, 27, !dbg !2165
  %1286 = or i32 %1284, %1285, !dbg !2165
  %1287 = xor i32 %1283, %1265, !dbg !2165
  %1288 = xor i32 %1287, %1262, !dbg !2165
  %1289 = xor i32 %1032, %992, !dbg !2165
  %1290 = xor i32 %1289, %1150, !dbg !2165
  %1291 = xor i32 %1290, %1240, !dbg !2165
  call void @llvm.dbg.value(metadata i32 %1291, metadata !1984, metadata !DIExpression()), !dbg !2062
  %1292 = shl i32 %1291, 1, !dbg !2165
  %1293 = lshr i32 %1291, 31, !dbg !2165
  %1294 = or i32 %1292, %1293, !dbg !2165
  store i32 %1294, i32* %33, align 16, !dbg !2165, !tbaa !1043
  %1295 = add i32 %1294, -899497514, !dbg !2165
  %1296 = add i32 %1295, %1247, !dbg !2165
  %1297 = add i32 %1296, %1288, !dbg !2165
  %1298 = add i32 %1297, %1286, !dbg !2165
  call void @llvm.dbg.value(metadata i32 %1298, metadata !1979, metadata !DIExpression()), !dbg !2001
  %1299 = shl i32 %1262, 30, !dbg !2165
  %1300 = lshr i32 %1262, 2, !dbg !2165
  %1301 = or i32 %1299, %1300, !dbg !2165
  call void @llvm.dbg.value(metadata i32 %1301, metadata !1981, metadata !DIExpression()), !dbg !2003
  %1302 = shl i32 %1298, 5, !dbg !2167
  %1303 = lshr i32 %1298, 27, !dbg !2167
  %1304 = or i32 %1302, %1303, !dbg !2167
  %1305 = xor i32 %1301, %1283, !dbg !2167
  %1306 = xor i32 %1305, %1280, !dbg !2167
  %1307 = xor i32 %1052, %1012, !dbg !2167
  %1308 = xor i32 %1307, %1168, !dbg !2167
  %1309 = xor i32 %1308, %1258, !dbg !2167
  call void @llvm.dbg.value(metadata i32 %1309, metadata !1984, metadata !DIExpression()), !dbg !2062
  %1310 = shl i32 %1309, 1, !dbg !2167
  %1311 = lshr i32 %1309, 31, !dbg !2167
  %1312 = or i32 %1310, %1311, !dbg !2167
  store i32 %1312, i32* %34, align 4, !dbg !2167, !tbaa !1043
  %1313 = add i32 %1312, -899497514, !dbg !2167
  %1314 = add i32 %1313, %1265, !dbg !2167
  %1315 = add i32 %1314, %1306, !dbg !2167
  %1316 = add i32 %1315, %1304, !dbg !2167
  call void @llvm.dbg.value(metadata i32 %1316, metadata !1978, metadata !DIExpression()), !dbg !1999
  %1317 = shl i32 %1280, 30, !dbg !2167
  %1318 = lshr i32 %1280, 2, !dbg !2167
  %1319 = or i32 %1317, %1318, !dbg !2167
  call void @llvm.dbg.value(metadata i32 %1319, metadata !1980, metadata !DIExpression()), !dbg !2002
  %1320 = shl i32 %1316, 5, !dbg !2169
  %1321 = lshr i32 %1316, 27, !dbg !2169
  %1322 = or i32 %1320, %1321, !dbg !2169
  %1323 = xor i32 %1319, %1301, !dbg !2169
  %1324 = xor i32 %1323, %1298, !dbg !2169
  %1325 = xor i32 %1072, %1032, !dbg !2169
  %1326 = xor i32 %1325, %1186, !dbg !2169
  %1327 = xor i32 %1326, %1276, !dbg !2169
  call void @llvm.dbg.value(metadata i32 %1327, metadata !1984, metadata !DIExpression()), !dbg !2062
  %1328 = shl i32 %1327, 1, !dbg !2169
  %1329 = lshr i32 %1327, 31, !dbg !2169
  %1330 = or i32 %1328, %1329, !dbg !2169
  store i32 %1330, i32* %35, align 8, !dbg !2169, !tbaa !1043
  %1331 = add i32 %1330, -899497514, !dbg !2169
  %1332 = add i32 %1331, %1283, !dbg !2169
  %1333 = add i32 %1332, %1324, !dbg !2169
  %1334 = add i32 %1333, %1322, !dbg !2169
  call void @llvm.dbg.value(metadata i32 %1334, metadata !1982, metadata !DIExpression()), !dbg !2004
  %1335 = shl i32 %1298, 30, !dbg !2169
  %1336 = lshr i32 %1298, 2, !dbg !2169
  %1337 = or i32 %1335, %1336, !dbg !2169
  call void @llvm.dbg.value(metadata i32 %1337, metadata !1979, metadata !DIExpression()), !dbg !2001
  %1338 = shl i32 %1334, 5, !dbg !2171
  %1339 = lshr i32 %1334, 27, !dbg !2171
  %1340 = or i32 %1338, %1339, !dbg !2171
  %1341 = xor i32 %1337, %1319, !dbg !2171
  %1342 = xor i32 %1341, %1316, !dbg !2171
  %1343 = xor i32 %1092, %1052, !dbg !2171
  %1344 = xor i32 %1343, %1204, !dbg !2171
  %1345 = xor i32 %1344, %1294, !dbg !2171
  call void @llvm.dbg.value(metadata i32 %1345, metadata !1984, metadata !DIExpression()), !dbg !2062
  %1346 = shl i32 %1345, 1, !dbg !2171
  %1347 = lshr i32 %1345, 31, !dbg !2171
  %1348 = or i32 %1346, %1347, !dbg !2171
  store i32 %1348, i32* %36, align 4, !dbg !2171, !tbaa !1043
  %1349 = add i32 %1348, -899497514, !dbg !2171
  %1350 = add i32 %1349, %1301, !dbg !2171
  %1351 = add i32 %1350, %1342, !dbg !2171
  %1352 = add i32 %1351, %1340, !dbg !2171
  call void @llvm.dbg.value(metadata i32 %1352, metadata !1981, metadata !DIExpression()), !dbg !2003
  %1353 = shl i32 %1316, 30, !dbg !2171
  %1354 = lshr i32 %1316, 2, !dbg !2171
  %1355 = or i32 %1353, %1354, !dbg !2171
  call void @llvm.dbg.value(metadata i32 %1355, metadata !1978, metadata !DIExpression()), !dbg !1999
  %1356 = shl i32 %1352, 5, !dbg !2173
  %1357 = lshr i32 %1352, 27, !dbg !2173
  %1358 = or i32 %1356, %1357, !dbg !2173
  %1359 = xor i32 %1355, %1337, !dbg !2173
  %1360 = xor i32 %1359, %1334, !dbg !2173
  %1361 = xor i32 %1112, %1072, !dbg !2173
  %1362 = xor i32 %1361, %1222, !dbg !2173
  %1363 = xor i32 %1362, %1312, !dbg !2173
  call void @llvm.dbg.value(metadata i32 %1363, metadata !1984, metadata !DIExpression()), !dbg !2062
  %1364 = shl i32 %1363, 1, !dbg !2173
  %1365 = lshr i32 %1363, 31, !dbg !2173
  %1366 = or i32 %1364, %1365, !dbg !2173
  store i32 %1366, i32* %37, align 16, !dbg !2173, !tbaa !1043
  %1367 = add i32 %1366, -899497514, !dbg !2173
  %1368 = add i32 %1367, %1319, !dbg !2173
  %1369 = add i32 %1368, %1360, !dbg !2173
  %1370 = add i32 %1369, %1358, !dbg !2173
  call void @llvm.dbg.value(metadata i32 %1370, metadata !1980, metadata !DIExpression()), !dbg !2002
  %1371 = shl i32 %1334, 30, !dbg !2173
  %1372 = lshr i32 %1334, 2, !dbg !2173
  %1373 = or i32 %1371, %1372, !dbg !2173
  call void @llvm.dbg.value(metadata i32 %1373, metadata !1982, metadata !DIExpression()), !dbg !2004
  %1374 = shl i32 %1370, 5, !dbg !2175
  %1375 = lshr i32 %1370, 27, !dbg !2175
  %1376 = or i32 %1374, %1375, !dbg !2175
  %1377 = xor i32 %1373, %1355, !dbg !2175
  %1378 = xor i32 %1377, %1352, !dbg !2175
  %1379 = xor i32 %1132, %1092, !dbg !2175
  %1380 = xor i32 %1379, %1240, !dbg !2175
  %1381 = xor i32 %1380, %1330, !dbg !2175
  call void @llvm.dbg.value(metadata i32 %1381, metadata !1984, metadata !DIExpression()), !dbg !2062
  %1382 = shl i32 %1381, 1, !dbg !2175
  %1383 = lshr i32 %1381, 31, !dbg !2175
  %1384 = or i32 %1382, %1383, !dbg !2175
  store i32 %1384, i32* %38, align 4, !dbg !2175, !tbaa !1043
  %1385 = add i32 %1384, -899497514, !dbg !2175
  %1386 = add i32 %1385, %1337, !dbg !2175
  %1387 = add i32 %1386, %1378, !dbg !2175
  %1388 = add i32 %1387, %1376, !dbg !2175
  call void @llvm.dbg.value(metadata i32 %1388, metadata !1979, metadata !DIExpression()), !dbg !2001
  %1389 = shl i32 %1352, 30, !dbg !2175
  %1390 = lshr i32 %1352, 2, !dbg !2175
  %1391 = or i32 %1389, %1390, !dbg !2175
  call void @llvm.dbg.value(metadata i32 %1391, metadata !1981, metadata !DIExpression()), !dbg !2003
  %1392 = shl i32 %1388, 5, !dbg !2177
  %1393 = lshr i32 %1388, 27, !dbg !2177
  %1394 = or i32 %1392, %1393, !dbg !2177
  %1395 = xor i32 %1391, %1373, !dbg !2177
  %1396 = xor i32 %1395, %1370, !dbg !2177
  %1397 = xor i32 %1150, %1112, !dbg !2177
  %1398 = xor i32 %1397, %1258, !dbg !2177
  %1399 = xor i32 %1398, %1348, !dbg !2177
  call void @llvm.dbg.value(metadata i32 %1399, metadata !1984, metadata !DIExpression()), !dbg !2062
  %1400 = shl i32 %1399, 1, !dbg !2177
  %1401 = lshr i32 %1399, 31, !dbg !2177
  %1402 = or i32 %1400, %1401, !dbg !2177
  store i32 %1402, i32* %39, align 8, !dbg !2177, !tbaa !1043
  %1403 = add i32 %1402, -899497514, !dbg !2177
  %1404 = add i32 %1403, %1355, !dbg !2177
  %1405 = add i32 %1404, %1396, !dbg !2177
  %1406 = add i32 %1405, %1394, !dbg !2177
  call void @llvm.dbg.value(metadata i32 %1406, metadata !1978, metadata !DIExpression()), !dbg !1999
  %1407 = shl i32 %1370, 30, !dbg !2177
  %1408 = lshr i32 %1370, 2, !dbg !2177
  %1409 = or i32 %1407, %1408, !dbg !2177
  call void @llvm.dbg.value(metadata i32 %1409, metadata !1980, metadata !DIExpression()), !dbg !2002
  %1410 = shl i32 %1406, 5, !dbg !2179
  %1411 = lshr i32 %1406, 27, !dbg !2179
  %1412 = or i32 %1410, %1411, !dbg !2179
  %1413 = xor i32 %1409, %1391, !dbg !2179
  %1414 = xor i32 %1413, %1388, !dbg !2179
  %1415 = xor i32 %1168, %1132, !dbg !2179
  %1416 = xor i32 %1415, %1276, !dbg !2179
  %1417 = xor i32 %1416, %1366, !dbg !2179
  call void @llvm.dbg.value(metadata i32 %1417, metadata !1984, metadata !DIExpression()), !dbg !2062
  %1418 = shl i32 %1417, 1, !dbg !2179
  %1419 = lshr i32 %1417, 31, !dbg !2179
  %1420 = or i32 %1418, %1419, !dbg !2179
  store i32 %1420, i32* %40, align 4, !dbg !2179, !tbaa !1043
  %1421 = add i32 %1420, -899497514, !dbg !2179
  %1422 = add i32 %1421, %1373, !dbg !2179
  %1423 = add i32 %1422, %1414, !dbg !2179
  %1424 = add i32 %1423, %1412, !dbg !2179
  call void @llvm.dbg.value(metadata i32 %1424, metadata !1982, metadata !DIExpression()), !dbg !2004
  %1425 = shl i32 %1388, 30, !dbg !2179
  %1426 = lshr i32 %1388, 2, !dbg !2179
  %1427 = or i32 %1425, %1426, !dbg !2179
  call void @llvm.dbg.value(metadata i32 %1427, metadata !1979, metadata !DIExpression()), !dbg !2001
  %1428 = shl i32 %1424, 5, !dbg !2181
  %1429 = lshr i32 %1424, 27, !dbg !2181
  %1430 = or i32 %1428, %1429, !dbg !2181
  %1431 = xor i32 %1427, %1409, !dbg !2181
  %1432 = xor i32 %1431, %1406, !dbg !2181
  %1433 = xor i32 %1186, %1150, !dbg !2181
  %1434 = xor i32 %1433, %1294, !dbg !2181
  %1435 = xor i32 %1434, %1384, !dbg !2181
  call void @llvm.dbg.value(metadata i32 %1435, metadata !1984, metadata !DIExpression()), !dbg !2062
  %1436 = shl i32 %1435, 1, !dbg !2181
  %1437 = lshr i32 %1435, 31, !dbg !2181
  %1438 = or i32 %1436, %1437, !dbg !2181
  store i32 %1438, i32* %41, align 16, !dbg !2181, !tbaa !1043
  %1439 = add i32 %1438, -899497514, !dbg !2181
  %1440 = add i32 %1439, %1391, !dbg !2181
  %1441 = add i32 %1440, %1432, !dbg !2181
  %1442 = add i32 %1441, %1430, !dbg !2181
  call void @llvm.dbg.value(metadata i32 %1442, metadata !1981, metadata !DIExpression()), !dbg !2003
  %1443 = shl i32 %1406, 30, !dbg !2181
  %1444 = lshr i32 %1406, 2, !dbg !2181
  %1445 = or i32 %1443, %1444, !dbg !2181
  call void @llvm.dbg.value(metadata i32 %1445, metadata !1978, metadata !DIExpression()), !dbg !1999
  %1446 = shl i32 %1442, 5, !dbg !2183
  %1447 = lshr i32 %1442, 27, !dbg !2183
  %1448 = or i32 %1446, %1447, !dbg !2183
  %1449 = xor i32 %1445, %1427, !dbg !2183
  %1450 = xor i32 %1449, %1424, !dbg !2183
  %1451 = xor i32 %1204, %1168, !dbg !2183
  %1452 = xor i32 %1451, %1312, !dbg !2183
  %1453 = xor i32 %1452, %1402, !dbg !2183
  call void @llvm.dbg.value(metadata i32 %1453, metadata !1984, metadata !DIExpression()), !dbg !2062
  %1454 = shl i32 %1453, 1, !dbg !2183
  %1455 = lshr i32 %1453, 31, !dbg !2183
  %1456 = or i32 %1454, %1455, !dbg !2183
  store i32 %1456, i32* %42, align 4, !dbg !2183, !tbaa !1043
  %1457 = add i32 %1456, -899497514, !dbg !2183
  %1458 = add i32 %1457, %1409, !dbg !2183
  %1459 = add i32 %1458, %1450, !dbg !2183
  %1460 = add i32 %1459, %1448, !dbg !2183
  call void @llvm.dbg.value(metadata i32 %1460, metadata !1980, metadata !DIExpression()), !dbg !2002
  %1461 = shl i32 %1424, 30, !dbg !2183
  %1462 = lshr i32 %1424, 2, !dbg !2183
  %1463 = or i32 %1461, %1462, !dbg !2183
  call void @llvm.dbg.value(metadata i32 %1463, metadata !1982, metadata !DIExpression()), !dbg !2004
  %1464 = shl i32 %1460, 5, !dbg !2185
  %1465 = lshr i32 %1460, 27, !dbg !2185
  %1466 = or i32 %1464, %1465, !dbg !2185
  %1467 = xor i32 %1463, %1445, !dbg !2185
  %1468 = xor i32 %1467, %1442, !dbg !2185
  %1469 = xor i32 %1222, %1186, !dbg !2185
  %1470 = xor i32 %1469, %1330, !dbg !2185
  %1471 = xor i32 %1470, %1420, !dbg !2185
  call void @llvm.dbg.value(metadata i32 %1471, metadata !1984, metadata !DIExpression()), !dbg !2062
  %1472 = shl i32 %1471, 1, !dbg !2185
  %1473 = lshr i32 %1471, 31, !dbg !2185
  %1474 = or i32 %1472, %1473, !dbg !2185
  store i32 %1474, i32* %43, align 8, !dbg !2185, !tbaa !1043
  %1475 = add i32 %1474, -899497514, !dbg !2185
  %1476 = add i32 %1475, %1427, !dbg !2185
  %1477 = add i32 %1476, %1468, !dbg !2185
  %1478 = add i32 %1477, %1466, !dbg !2185
  call void @llvm.dbg.value(metadata i32 %1478, metadata !1979, metadata !DIExpression()), !dbg !2001
  %1479 = shl i32 %1442, 30, !dbg !2185
  %1480 = lshr i32 %1442, 2, !dbg !2185
  %1481 = or i32 %1479, %1480, !dbg !2185
  call void @llvm.dbg.value(metadata i32 %1481, metadata !1981, metadata !DIExpression()), !dbg !2003
  %1482 = shl i32 %1478, 5, !dbg !2187
  %1483 = lshr i32 %1478, 27, !dbg !2187
  %1484 = or i32 %1482, %1483, !dbg !2187
  %1485 = xor i32 %1481, %1463, !dbg !2187
  %1486 = xor i32 %1485, %1460, !dbg !2187
  %1487 = xor i32 %1240, %1204, !dbg !2187
  %1488 = xor i32 %1487, %1348, !dbg !2187
  %1489 = xor i32 %1488, %1438, !dbg !2187
  call void @llvm.dbg.value(metadata i32 %1489, metadata !1984, metadata !DIExpression()), !dbg !2062
  %1490 = shl i32 %1489, 1, !dbg !2187
  %1491 = lshr i32 %1489, 31, !dbg !2187
  %1492 = or i32 %1490, %1491, !dbg !2187
  store i32 %1492, i32* %44, align 4, !dbg !2187, !tbaa !1043
  call void @llvm.dbg.value(metadata i32 undef, metadata !1978, metadata !DIExpression()), !dbg !1999
  %1493 = shl i32 %1460, 30, !dbg !2187
  %1494 = lshr i32 %1460, 2, !dbg !2187
  %1495 = or i32 %1493, %1494, !dbg !2187
  call void @llvm.dbg.value(metadata i32 %1495, metadata !1980, metadata !DIExpression()), !dbg !2002
  %1496 = load i32, i32* %9, align 4, !dbg !2189, !tbaa !1810
  %1497 = add i32 %1492, -899497514, !dbg !2187
  %1498 = add i32 %1497, %1496, !dbg !2187
  %1499 = add i32 %1498, %1445, !dbg !2187
  %1500 = add i32 %1499, %1486, !dbg !2187
  %1501 = add i32 %1500, %1484, !dbg !2189
  store i32 %1501, i32* %9, align 4, !dbg !2189, !tbaa !1810
  %1502 = load <4 x i32>, <4 x i32>* %48, align 4, !dbg !2190, !tbaa !1043
  %1503 = insertelement <4 x i32> undef, i32 %1478, i32 0, !dbg !2190
  %1504 = insertelement <4 x i32> %1503, i32 %1495, i32 1, !dbg !2190
  %1505 = insertelement <4 x i32> %1504, i32 %1481, i32 2, !dbg !2190
  %1506 = insertelement <4 x i32> %1505, i32 %1463, i32 3, !dbg !2190
  %1507 = add <4 x i32> %1506, %1502, !dbg !2190
  store <4 x i32> %1507, <4 x i32>* %49, align 4, !dbg !2190, !tbaa !1043
  call void @llvm.dbg.value(metadata i32* %56, metadata !1971, metadata !DIExpression()), !dbg !1991
  call void @llvm.dbg.value(metadata i32 %1501, metadata !1978, metadata !DIExpression()), !dbg !1999
  call void @llvm.dbg.value(metadata i32 undef, metadata !1982, metadata !DIExpression()), !dbg !2004
  call void @llvm.dbg.value(metadata i32 undef, metadata !1981, metadata !DIExpression()), !dbg !2003
  call void @llvm.dbg.value(metadata i32 undef, metadata !1980, metadata !DIExpression()), !dbg !2002
  call void @llvm.dbg.value(metadata i32 undef, metadata !1979, metadata !DIExpression()), !dbg !2001
  %1508 = icmp ult i32* %77, %7, !dbg !2015
  %1509 = shufflevector <4 x i32> %1507, <4 x i32> undef, <4 x i32> <i32 3, i32 2, i32 1, i32 0>, !dbg !2016
  br i1 %1508, label %50, label %1510, !dbg !2016, !llvm.loop !2191

; <label>:1510:                                   ; preds = %50, %3
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %8) #10, !dbg !2193
  ret void, !dbg !2193
}

; Function Attrs: nounwind readnone speculatable
declare <4 x i32> @llvm.bswap.v4i32(<4 x i32>) #1

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @sha1_stream(%struct._IO_FILE* nocapture, i8* nocapture) local_unnamed_addr #7 !dbg !2194 {
  %3 = alloca %struct.sha1_ctx, align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2232, metadata !DIExpression()), !dbg !2239
  call void @llvm.dbg.value(metadata i8* %1, metadata !2233, metadata !DIExpression()), !dbg !2240
  %4 = tail call noalias i8* @malloc(i64 32840) #10, !dbg !2241
  call void @llvm.dbg.value(metadata i8* %4, metadata !2234, metadata !DIExpression()), !dbg !2242
  %5 = icmp eq i8* %4, null, !dbg !2243
  br i1 %5, label %79, label %6, !dbg !2245

; <label>:6:                                      ; preds = %2
  %7 = bitcast %struct.sha1_ctx* %3 to i8*, !dbg !2246
  call void @llvm.lifetime.start.p0i8(i64 160, i8* nonnull %7) #10, !dbg !2246
  call void @llvm.dbg.value(metadata %struct.sha1_ctx* %3, metadata !2235, metadata !DIExpression(DW_OP_deref)), !dbg !2247
  call void @llvm.dbg.value(metadata %struct.sha1_ctx* %3, metadata !1791, metadata !DIExpression()), !dbg !2248
  %8 = bitcast %struct.sha1_ctx* %3 to <4 x i32>*, !dbg !2250
  store <4 x i32> <i32 1732584193, i32 -271733879, i32 -1732584194, i32 271733878>, <4 x i32>* %8, align 16, !dbg !2250, !tbaa !1043
  %9 = getelementptr inbounds %struct.sha1_ctx, %struct.sha1_ctx* %3, i64 0, i32 4, !dbg !2251
  %10 = getelementptr inbounds %struct.sha1_ctx, %struct.sha1_ctx* %3, i64 0, i32 5, i64 1, !dbg !2252
  %11 = getelementptr inbounds %struct.sha1_ctx, %struct.sha1_ctx* %3, i64 0, i32 5, i64 0, !dbg !2253
  %12 = getelementptr inbounds %struct.sha1_ctx, %struct.sha1_ctx* %3, i64 0, i32 6, !dbg !2254
  %13 = bitcast i32* %9 to <4 x i32>*, !dbg !2255
  store <4 x i32> <i32 -1009589776, i32 0, i32 0, i32 0>, <4 x i32>* %13, align 16, !dbg !2255, !tbaa !1043
  %14 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0
  br label %15, !dbg !2256

; <label>:15:                                     ; preds = %28, %6
  %16 = phi i64 [ 0, %6 ], [ %29, %28 ], !dbg !2257
  call void @llvm.dbg.value(metadata i64 %16, metadata !2236, metadata !DIExpression()), !dbg !2259
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2260, metadata !DIExpression()), !dbg !2265
  %17 = load i32, i32* %14, align 8, !dbg !2268, !tbaa !1474
  %18 = and i32 %17, 16, !dbg !2268
  %19 = icmp eq i32 %18, 0, !dbg !2269
  br i1 %19, label %20, label %36, !dbg !2270

; <label>:20:                                     ; preds = %15
  %21 = getelementptr inbounds i8, i8* %4, i64 %16, !dbg !2271
  %22 = sub i64 32768, %16, !dbg !2271
  %23 = tail call i64 @fread_unlocked(i8* nonnull %21, i64 1, i64 %22, %struct._IO_FILE* nonnull %0), !dbg !2271
  call void @llvm.dbg.value(metadata i64 %23, metadata !2237, metadata !DIExpression()), !dbg !2272
  %24 = add i64 %23, %16, !dbg !2273
  call void @llvm.dbg.value(metadata i64 %24, metadata !2236, metadata !DIExpression()), !dbg !2259
  %25 = icmp eq i64 %24, 32768, !dbg !2274
  br i1 %25, label %35, label %26, !dbg !2276

; <label>:26:                                     ; preds = %20
  %27 = icmp eq i64 %23, 0, !dbg !2277
  br i1 %27, label %30, label %28, !dbg !2279

; <label>:28:                                     ; preds = %26, %35
  %29 = phi i64 [ %24, %26 ], [ 0, %35 ]
  br label %15, !dbg !2259, !llvm.loop !2280

; <label>:30:                                     ; preds = %26
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2283, metadata !DIExpression()), !dbg !2286
  %31 = load i32, i32* %14, align 8, !dbg !2290, !tbaa !1474
  %32 = and i32 %31, 32, !dbg !2290
  %33 = icmp eq i32 %32, 0, !dbg !2291
  br i1 %33, label %36, label %34, !dbg !2292

; <label>:34:                                     ; preds = %30
  tail call void @free(i8* %4) #10, !dbg !2293
  call void @llvm.dbg.value(metadata i64 %24, metadata !2236, metadata !DIExpression()), !dbg !2259
  br label %77

; <label>:35:                                     ; preds = %20
  call void @llvm.dbg.value(metadata %struct.sha1_ctx* %3, metadata !2235, metadata !DIExpression(DW_OP_deref)), !dbg !2247
  call void @sha1_process_block(i8* nonnull %4, i64 32768, %struct.sha1_ctx* nonnull %3), !dbg !2295
  call void @llvm.dbg.value(metadata i64 %24, metadata !2236, metadata !DIExpression()), !dbg !2259
  br label %28

; <label>:36:                                     ; preds = %15, %30
  %37 = phi i64 [ %24, %30 ], [ %16, %15 ]
  call void @llvm.dbg.value(metadata i64 %24, metadata !2236, metadata !DIExpression()), !dbg !2259
  %38 = icmp eq i64 %37, 0, !dbg !2296
  br i1 %38, label %40, label %39, !dbg !2298

; <label>:39:                                     ; preds = %36
  call void @llvm.dbg.value(metadata %struct.sha1_ctx* %3, metadata !2235, metadata !DIExpression(DW_OP_deref)), !dbg !2247
  call void @sha1_process_bytes(i8* nonnull %4, i64 %37, %struct.sha1_ctx* nonnull %3), !dbg !2299
  br label %40, !dbg !2299

; <label>:40:                                     ; preds = %36, %39
  call void @llvm.dbg.value(metadata %struct.sha1_ctx* %3, metadata !2235, metadata !DIExpression(DW_OP_deref)), !dbg !2247
  call void @llvm.dbg.value(metadata %struct.sha1_ctx* %3, metadata !1876, metadata !DIExpression()) #10, !dbg !2300
  call void @llvm.dbg.value(metadata i8* %1, metadata !1877, metadata !DIExpression()) #10, !dbg !2302
  %41 = load i32, i32* %12, align 4, !dbg !2303, !tbaa !1883
  call void @llvm.dbg.value(metadata i32 %41, metadata !1878, metadata !DIExpression()) #10, !dbg !2304
  %42 = icmp ult i32 %41, 56, !dbg !2305
  %43 = select i1 %42, i64 16, i64 32, !dbg !2306
  call void @llvm.dbg.value(metadata i64 %43, metadata !1879, metadata !DIExpression()) #10, !dbg !2307
  %44 = load i32, i32* %11, align 4, !dbg !2308, !tbaa !1043
  %45 = add i32 %44, %41, !dbg !2308
  store i32 %45, i32* %11, align 4, !dbg !2308, !tbaa !1043
  %46 = icmp ult i32 %45, %41, !dbg !2309
  %47 = load i32, i32* %10, align 4, !dbg !2310, !tbaa !1043
  br i1 %46, label %48, label %50, !dbg !2311

; <label>:48:                                     ; preds = %40
  %49 = add i32 %47, 1, !dbg !2312
  store i32 %49, i32* %10, align 4, !dbg !2312, !tbaa !1043
  br label %50, !dbg !2312

; <label>:50:                                     ; preds = %40, %48
  %51 = phi i32 [ %49, %48 ], [ %47, %40 ], !dbg !2313
  %52 = shl i32 %51, 3, !dbg !2313
  %53 = lshr i32 %45, 29, !dbg !2313
  %54 = or i32 %52, %53, !dbg !2313
  call void @llvm.dbg.value(metadata i32 %54, metadata !1812, metadata !DIExpression()) #10, !dbg !2314
  %55 = call i32 @llvm.bswap.i32(i32 %54) #10, !dbg !2316
  %56 = add nsw i64 %43, -2, !dbg !2317
  %57 = getelementptr inbounds %struct.sha1_ctx, %struct.sha1_ctx* %3, i64 0, i32 7, i64 %56, !dbg !2318
  store i32 %55, i32* %57, align 8, !dbg !2319, !tbaa !1043
  %58 = shl i32 %45, 3, !dbg !2320
  call void @llvm.dbg.value(metadata i32 %58, metadata !1812, metadata !DIExpression()) #10, !dbg !2321
  %59 = call i32 @llvm.bswap.i32(i32 %58) #10, !dbg !2323
  %60 = add nsw i64 %43, -1, !dbg !2324
  %61 = getelementptr inbounds %struct.sha1_ctx, %struct.sha1_ctx* %3, i64 0, i32 7, i64 %60, !dbg !2325
  store i32 %59, i32* %61, align 4, !dbg !2326, !tbaa !1043
  %62 = getelementptr inbounds %struct.sha1_ctx, %struct.sha1_ctx* %3, i64 0, i32 7, i64 0, !dbg !2327
  %63 = bitcast i32* %62 to i8*, !dbg !2327
  %64 = zext i32 %41 to i64, !dbg !2327
  %65 = getelementptr inbounds i8, i8* %63, i64 %64, !dbg !2327
  %66 = shl nsw i64 %56, 2, !dbg !2328
  %67 = sub nsw i64 %66, %64, !dbg !2329
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %65, i8* align 16 getelementptr inbounds (<{ i8, [63 x i8] }>, <{ i8, [63 x i8] }>* @fillbuf, i64 0, i32 0), i64 %67, i1 false) #10, !dbg !2330
  %68 = shl nuw nsw i64 %43, 2, !dbg !2331
  call void @sha1_process_block(i8* nonnull %63, i64 %68, %struct.sha1_ctx* nonnull %3) #10, !dbg !2332
  call void @llvm.dbg.value(metadata %struct.sha1_ctx* %3, metadata !1803, metadata !DIExpression()) #10, !dbg !2333
  call void @llvm.dbg.value(metadata i8* %1, metadata !1804, metadata !DIExpression()) #10, !dbg !2335
  call void @llvm.dbg.value(metadata i8* %1, metadata !1805, metadata !DIExpression()) #10, !dbg !2336
  call void @llvm.dbg.value(metadata i32 undef, metadata !1812, metadata !DIExpression()) #10, !dbg !2337
  call void @llvm.dbg.value(metadata i8* %1, metadata !1821, metadata !DIExpression()) #10, !dbg !2339
  call void @llvm.dbg.value(metadata i32 undef, metadata !1826, metadata !DIExpression()) #10, !dbg !2341
  call void @llvm.dbg.value(metadata i32 undef, metadata !1812, metadata !DIExpression()) #10, !dbg !2342
  call void @llvm.dbg.value(metadata i8* %1, metadata !1821, metadata !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value)) #10, !dbg !2344
  call void @llvm.dbg.value(metadata i32 undef, metadata !1826, metadata !DIExpression()) #10, !dbg !2346
  call void @llvm.dbg.value(metadata i32 undef, metadata !1812, metadata !DIExpression()) #10, !dbg !2347
  call void @llvm.dbg.value(metadata i8* %1, metadata !1821, metadata !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value)) #10, !dbg !2349
  call void @llvm.dbg.value(metadata i32 undef, metadata !1826, metadata !DIExpression()) #10, !dbg !2351
  %69 = bitcast %struct.sha1_ctx* %3 to <4 x i32>*, !dbg !2352
  %70 = load <4 x i32>, <4 x i32>* %69, align 16, !dbg !2352, !tbaa !1043
  call void @llvm.dbg.value(metadata i32 undef, metadata !1812, metadata !DIExpression()) #10, !dbg !2353
  %71 = call <4 x i32> @llvm.bswap.v4i32(<4 x i32> %70), !dbg !2355
  call void @llvm.dbg.value(metadata i8* %1, metadata !1821, metadata !DIExpression(DW_OP_plus_uconst, 12, DW_OP_stack_value)) #10, !dbg !2356
  call void @llvm.dbg.value(metadata i32 undef, metadata !1826, metadata !DIExpression()) #10, !dbg !2358
  %72 = bitcast i8* %1 to <4 x i32>*, !dbg !2359
  store <4 x i32> %71, <4 x i32>* %72, align 1, !dbg !2359
  %73 = getelementptr inbounds i8, i8* %1, i64 16, !dbg !2360
  %74 = load i32, i32* %9, align 16, !dbg !2361, !tbaa !1863
  call void @llvm.dbg.value(metadata i32 %74, metadata !1812, metadata !DIExpression()) #10, !dbg !2362
  %75 = call i32 @llvm.bswap.i32(i32 %74) #10, !dbg !2364
  call void @llvm.dbg.value(metadata i8* %73, metadata !1821, metadata !DIExpression()) #10, !dbg !2365
  call void @llvm.dbg.value(metadata i32 %75, metadata !1826, metadata !DIExpression()) #10, !dbg !2367
  %76 = bitcast i8* %73 to i32*, !dbg !2368
  store i32 %75, i32* %76, align 1, !dbg !2368
  call void @free(i8* %4) #10, !dbg !2369
  br label %77, !dbg !2370

; <label>:77:                                     ; preds = %34, %50
  %78 = phi i32 [ 0, %50 ], [ 1, %34 ]
  call void @llvm.lifetime.end.p0i8(i64 160, i8* nonnull %7) #10, !dbg !2371
  br label %79

; <label>:79:                                     ; preds = %77, %2
  %80 = phi i32 [ %78, %77 ], [ 1, %2 ]
  ret i32 %80, !dbg !2371
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) local_unnamed_addr #2

; Function Attrs: nounwind
declare i64 @fread_unlocked(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @sha1_process_bytes(i8*, i64, %struct.sha1_ctx*) local_unnamed_addr #7 !dbg !2372 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2374, metadata !DIExpression()), !dbg !2384
  call void @llvm.dbg.value(metadata i64 %1, metadata !2375, metadata !DIExpression()), !dbg !2385
  call void @llvm.dbg.value(metadata %struct.sha1_ctx* %2, metadata !2376, metadata !DIExpression()), !dbg !2386
  %4 = getelementptr inbounds %struct.sha1_ctx, %struct.sha1_ctx* %2, i64 0, i32 6, !dbg !2387
  %5 = load i32, i32* %4, align 4, !dbg !2387, !tbaa !1883
  %6 = icmp eq i32 %5, 0, !dbg !2388
  br i1 %6, label %30, label %7, !dbg !2389

; <label>:7:                                      ; preds = %3
  %8 = zext i32 %5 to i64, !dbg !2390
  call void @llvm.dbg.value(metadata i64 %8, metadata !2377, metadata !DIExpression()), !dbg !2391
  %9 = sub nsw i64 128, %8, !dbg !2392
  %10 = icmp ugt i64 %9, %1, !dbg !2393
  %11 = select i1 %10, i64 %1, i64 %9, !dbg !2394
  call void @llvm.dbg.value(metadata i64 %11, metadata !2380, metadata !DIExpression()), !dbg !2395
  %12 = getelementptr inbounds %struct.sha1_ctx, %struct.sha1_ctx* %2, i64 0, i32 7, i64 0, !dbg !2396
  %13 = bitcast i32* %12 to i8*, !dbg !2396
  %14 = getelementptr inbounds i8, i8* %13, i64 %8, !dbg !2396
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %14, i8* align 1 %0, i64 %11, i1 false), !dbg !2397
  %15 = trunc i64 %11 to i32, !dbg !2398
  %16 = add i32 %5, %15, !dbg !2398
  store i32 %16, i32* %4, align 4, !dbg !2398, !tbaa !1883
  %17 = icmp ugt i32 %16, 64, !dbg !2399
  br i1 %17, label %18, label %27, !dbg !2401

; <label>:18:                                     ; preds = %7
  %19 = and i32 %16, -64, !dbg !2402
  %20 = zext i32 %19 to i64, !dbg !2404
  tail call void @sha1_process_block(i8* nonnull %13, i64 %20, %struct.sha1_ctx* nonnull %2), !dbg !2405
  %21 = load i32, i32* %4, align 4, !dbg !2406, !tbaa !1883
  %22 = and i32 %21, 63, !dbg !2406
  store i32 %22, i32* %4, align 4, !dbg !2406, !tbaa !1883
  %23 = add i64 %11, %8, !dbg !2407
  %24 = and i64 %23, -64, !dbg !2408
  %25 = getelementptr inbounds i8, i8* %13, i64 %24, !dbg !2409
  %26 = zext i32 %22 to i64, !dbg !2410
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 4 %13, i8* align 1 %25, i64 %26, i1 false), !dbg !2411
  br label %27, !dbg !2412

; <label>:27:                                     ; preds = %18, %7
  %28 = getelementptr inbounds i8, i8* %0, i64 %11, !dbg !2413
  call void @llvm.dbg.value(metadata i8* %28, metadata !2374, metadata !DIExpression()), !dbg !2384
  %29 = sub i64 %1, %11, !dbg !2414
  call void @llvm.dbg.value(metadata i64 %29, metadata !2375, metadata !DIExpression()), !dbg !2385
  br label %30, !dbg !2415

; <label>:30:                                     ; preds = %3, %27
  %31 = phi i64 [ %29, %27 ], [ %1, %3 ]
  %32 = phi i8* [ %28, %27 ], [ %0, %3 ]
  call void @llvm.dbg.value(metadata i8* %32, metadata !2374, metadata !DIExpression()), !dbg !2384
  call void @llvm.dbg.value(metadata i64 %31, metadata !2375, metadata !DIExpression()), !dbg !2385
  %33 = icmp ugt i64 %31, 63, !dbg !2416
  br i1 %33, label %34, label %57, !dbg !2418

; <label>:34:                                     ; preds = %30
  %35 = ptrtoint i8* %32 to i64, !dbg !2419
  %36 = and i64 %35, 3, !dbg !2419
  %37 = icmp eq i64 %36, 0, !dbg !2419
  br i1 %37, label %53, label %38, !dbg !2422

; <label>:38:                                     ; preds = %34
  call void @llvm.dbg.value(metadata i8* %32, metadata !2374, metadata !DIExpression()), !dbg !2384
  call void @llvm.dbg.value(metadata i64 %31, metadata !2375, metadata !DIExpression()), !dbg !2385
  %39 = icmp ugt i64 %31, 64, !dbg !2423
  br i1 %39, label %40, label %64, !dbg !2424

; <label>:40:                                     ; preds = %38
  %41 = getelementptr inbounds %struct.sha1_ctx, %struct.sha1_ctx* %2, i64 0, i32 7, i64 0
  %42 = bitcast i32* %41 to i8*
  %43 = add i64 %31, -65, !dbg !2424
  %44 = and i64 %43, -64, !dbg !2424
  %45 = add i64 %44, 64, !dbg !2424
  %46 = add i64 %31, -64, !dbg !2424
  br label %47, !dbg !2424

; <label>:47:                                     ; preds = %40, %47
  %48 = phi i8* [ %32, %40 ], [ %50, %47 ]
  %49 = phi i64 [ %31, %40 ], [ %51, %47 ]
  call void @llvm.dbg.value(metadata i8* %48, metadata !2374, metadata !DIExpression()), !dbg !2384
  call void @llvm.dbg.value(metadata i64 %49, metadata !2375, metadata !DIExpression()), !dbg !2385
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 4 %42, i8* align 1 %48, i64 64, i1 false), !dbg !2425
  tail call void @sha1_process_block(i8* nonnull %42, i64 64, %struct.sha1_ctx* nonnull %2), !dbg !2427
  %50 = getelementptr inbounds i8, i8* %48, i64 64, !dbg !2428
  %51 = add i64 %49, -64, !dbg !2429
  call void @llvm.dbg.value(metadata i8* %50, metadata !2374, metadata !DIExpression()), !dbg !2384
  call void @llvm.dbg.value(metadata i64 %51, metadata !2375, metadata !DIExpression()), !dbg !2385
  %52 = icmp ugt i64 %51, 64, !dbg !2423
  br i1 %52, label %47, label %61, !dbg !2424, !llvm.loop !2430

; <label>:53:                                     ; preds = %34
  %54 = and i64 %31, -64, !dbg !2432
  tail call void @sha1_process_block(i8* %32, i64 %54, %struct.sha1_ctx* nonnull %2), !dbg !2434
  %55 = getelementptr inbounds i8, i8* %32, i64 %54, !dbg !2435
  call void @llvm.dbg.value(metadata i8* %55, metadata !2374, metadata !DIExpression()), !dbg !2384
  %56 = and i64 %31, 63, !dbg !2436
  call void @llvm.dbg.value(metadata i64 %56, metadata !2375, metadata !DIExpression()), !dbg !2385
  br label %57

; <label>:57:                                     ; preds = %53, %30
  %58 = phi i64 [ %56, %53 ], [ %31, %30 ], !dbg !2437
  %59 = phi i8* [ %55, %53 ], [ %32, %30 ], !dbg !2437
  call void @llvm.dbg.value(metadata i8* %59, metadata !2374, metadata !DIExpression()), !dbg !2384
  call void @llvm.dbg.value(metadata i64 %58, metadata !2375, metadata !DIExpression()), !dbg !2385
  %60 = icmp eq i64 %58, 0, !dbg !2438
  br i1 %60, label %81, label %64, !dbg !2439

; <label>:61:                                     ; preds = %47
  %62 = getelementptr i8, i8* %32, i64 %45, !dbg !2424
  %63 = sub i64 %46, %44, !dbg !2424
  br label %64, !dbg !2440

; <label>:64:                                     ; preds = %61, %38, %57
  %65 = phi i8* [ %59, %57 ], [ %32, %38 ], [ %62, %61 ]
  %66 = phi i64 [ %58, %57 ], [ 64, %38 ], [ %63, %61 ]
  %67 = load i32, i32* %4, align 4, !dbg !2440, !tbaa !1883
  %68 = zext i32 %67 to i64, !dbg !2441
  call void @llvm.dbg.value(metadata i64 %68, metadata !2381, metadata !DIExpression()), !dbg !2442
  %69 = getelementptr inbounds %struct.sha1_ctx, %struct.sha1_ctx* %2, i64 0, i32 7, !dbg !2443
  %70 = bitcast [32 x i32]* %69 to i8*, !dbg !2444
  %71 = getelementptr inbounds i8, i8* %70, i64 %68, !dbg !2444
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %71, i8* align 1 %65, i64 %66, i1 false), !dbg !2445
  %72 = add i64 %66, %68, !dbg !2446
  call void @llvm.dbg.value(metadata i64 %72, metadata !2381, metadata !DIExpression()), !dbg !2442
  %73 = icmp ugt i64 %72, 63, !dbg !2447
  br i1 %73, label %74, label %78, !dbg !2449

; <label>:74:                                     ; preds = %64
  tail call void @sha1_process_block(i8* nonnull %70, i64 64, %struct.sha1_ctx* nonnull %2), !dbg !2450
  %75 = add i64 %72, -64, !dbg !2452
  call void @llvm.dbg.value(metadata i64 %75, metadata !2381, metadata !DIExpression()), !dbg !2442
  %76 = getelementptr inbounds %struct.sha1_ctx, %struct.sha1_ctx* %2, i64 0, i32 7, i64 16, !dbg !2453
  %77 = bitcast i32* %76 to i8*, !dbg !2454
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 4 %70, i8* nonnull align 4 %77, i64 %75, i1 false), !dbg !2454
  br label %78, !dbg !2455

; <label>:78:                                     ; preds = %74, %64
  %79 = phi i64 [ %75, %74 ], [ %72, %64 ], !dbg !2456
  call void @llvm.dbg.value(metadata i64 %79, metadata !2381, metadata !DIExpression()), !dbg !2442
  %80 = trunc i64 %79 to i32, !dbg !2457
  store i32 %80, i32* %4, align 4, !dbg !2458, !tbaa !1883
  br label %81, !dbg !2459

; <label>:81:                                     ; preds = %57, %78
  ret void, !dbg !2460
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @sha1_buffer(i8*, i64, i8* returned) local_unnamed_addr #7 !dbg !2461 {
  %4 = alloca %struct.sha1_ctx, align 16
  call void @llvm.dbg.value(metadata i8* %0, metadata !2465, metadata !DIExpression()), !dbg !2469
  call void @llvm.dbg.value(metadata i64 %1, metadata !2466, metadata !DIExpression()), !dbg !2470
  call void @llvm.dbg.value(metadata i8* %2, metadata !2467, metadata !DIExpression()), !dbg !2471
  %5 = bitcast %struct.sha1_ctx* %4 to i8*, !dbg !2472
  call void @llvm.lifetime.start.p0i8(i64 160, i8* nonnull %5) #10, !dbg !2472
  call void @llvm.dbg.value(metadata %struct.sha1_ctx* %4, metadata !2468, metadata !DIExpression(DW_OP_deref)), !dbg !2473
  call void @llvm.dbg.value(metadata %struct.sha1_ctx* %4, metadata !1791, metadata !DIExpression()), !dbg !2474
  %6 = bitcast %struct.sha1_ctx* %4 to <4 x i32>*, !dbg !2476
  store <4 x i32> <i32 1732584193, i32 -271733879, i32 -1732584194, i32 271733878>, <4 x i32>* %6, align 16, !dbg !2476, !tbaa !1043
  %7 = getelementptr inbounds %struct.sha1_ctx, %struct.sha1_ctx* %4, i64 0, i32 4, !dbg !2477
  %8 = getelementptr inbounds %struct.sha1_ctx, %struct.sha1_ctx* %4, i64 0, i32 5, i64 1, !dbg !2478
  %9 = getelementptr inbounds %struct.sha1_ctx, %struct.sha1_ctx* %4, i64 0, i32 5, i64 0, !dbg !2479
  %10 = getelementptr inbounds %struct.sha1_ctx, %struct.sha1_ctx* %4, i64 0, i32 6, !dbg !2480
  %11 = bitcast i32* %7 to <4 x i32>*, !dbg !2481
  store <4 x i32> <i32 -1009589776, i32 0, i32 0, i32 0>, <4 x i32>* %11, align 16, !dbg !2481, !tbaa !1043
  call void @llvm.dbg.value(metadata %struct.sha1_ctx* %4, metadata !2468, metadata !DIExpression(DW_OP_deref)), !dbg !2473
  call void @sha1_process_bytes(i8* %0, i64 %1, %struct.sha1_ctx* nonnull %4), !dbg !2482
  call void @llvm.dbg.value(metadata %struct.sha1_ctx* %4, metadata !2468, metadata !DIExpression(DW_OP_deref)), !dbg !2473
  call void @llvm.dbg.value(metadata %struct.sha1_ctx* %4, metadata !1876, metadata !DIExpression()) #10, !dbg !2483
  call void @llvm.dbg.value(metadata i8* %2, metadata !1877, metadata !DIExpression()) #10, !dbg !2485
  %12 = load i32, i32* %10, align 4, !dbg !2486, !tbaa !1883
  call void @llvm.dbg.value(metadata i32 %12, metadata !1878, metadata !DIExpression()) #10, !dbg !2487
  %13 = icmp ult i32 %12, 56, !dbg !2488
  %14 = select i1 %13, i64 16, i64 32, !dbg !2489
  call void @llvm.dbg.value(metadata i64 %14, metadata !1879, metadata !DIExpression()) #10, !dbg !2490
  %15 = load i32, i32* %9, align 4, !dbg !2491, !tbaa !1043
  %16 = add i32 %15, %12, !dbg !2491
  store i32 %16, i32* %9, align 4, !dbg !2491, !tbaa !1043
  %17 = icmp ult i32 %16, %12, !dbg !2492
  %18 = load i32, i32* %8, align 4, !dbg !2493, !tbaa !1043
  br i1 %17, label %19, label %21, !dbg !2494

; <label>:19:                                     ; preds = %3
  %20 = add i32 %18, 1, !dbg !2495
  store i32 %20, i32* %8, align 4, !dbg !2495, !tbaa !1043
  br label %21, !dbg !2495

; <label>:21:                                     ; preds = %3, %19
  %22 = phi i32 [ %20, %19 ], [ %18, %3 ], !dbg !2496
  %23 = shl i32 %22, 3, !dbg !2496
  %24 = lshr i32 %16, 29, !dbg !2496
  %25 = or i32 %23, %24, !dbg !2496
  call void @llvm.dbg.value(metadata i32 %25, metadata !1812, metadata !DIExpression()) #10, !dbg !2497
  %26 = call i32 @llvm.bswap.i32(i32 %25) #10, !dbg !2499
  %27 = add nsw i64 %14, -2, !dbg !2500
  %28 = getelementptr inbounds %struct.sha1_ctx, %struct.sha1_ctx* %4, i64 0, i32 7, i64 %27, !dbg !2501
  store i32 %26, i32* %28, align 8, !dbg !2502, !tbaa !1043
  %29 = shl i32 %16, 3, !dbg !2503
  call void @llvm.dbg.value(metadata i32 %29, metadata !1812, metadata !DIExpression()) #10, !dbg !2504
  %30 = call i32 @llvm.bswap.i32(i32 %29) #10, !dbg !2506
  %31 = add nsw i64 %14, -1, !dbg !2507
  %32 = getelementptr inbounds %struct.sha1_ctx, %struct.sha1_ctx* %4, i64 0, i32 7, i64 %31, !dbg !2508
  store i32 %30, i32* %32, align 4, !dbg !2509, !tbaa !1043
  %33 = getelementptr inbounds %struct.sha1_ctx, %struct.sha1_ctx* %4, i64 0, i32 7, i64 0, !dbg !2510
  %34 = bitcast i32* %33 to i8*, !dbg !2510
  %35 = zext i32 %12 to i64, !dbg !2510
  %36 = getelementptr inbounds i8, i8* %34, i64 %35, !dbg !2510
  %37 = shl nsw i64 %27, 2, !dbg !2511
  %38 = sub nsw i64 %37, %35, !dbg !2512
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %36, i8* align 16 getelementptr inbounds (<{ i8, [63 x i8] }>, <{ i8, [63 x i8] }>* @fillbuf, i64 0, i32 0), i64 %38, i1 false) #10, !dbg !2513
  %39 = shl nuw nsw i64 %14, 2, !dbg !2514
  call void @sha1_process_block(i8* nonnull %34, i64 %39, %struct.sha1_ctx* nonnull %4) #10, !dbg !2515
  call void @llvm.dbg.value(metadata %struct.sha1_ctx* %4, metadata !1803, metadata !DIExpression()) #10, !dbg !2516
  call void @llvm.dbg.value(metadata i8* %2, metadata !1804, metadata !DIExpression()) #10, !dbg !2518
  call void @llvm.dbg.value(metadata i8* %2, metadata !1805, metadata !DIExpression()) #10, !dbg !2519
  call void @llvm.dbg.value(metadata i32 undef, metadata !1812, metadata !DIExpression()) #10, !dbg !2520
  call void @llvm.dbg.value(metadata i8* %2, metadata !1821, metadata !DIExpression()) #10, !dbg !2522
  call void @llvm.dbg.value(metadata i32 undef, metadata !1826, metadata !DIExpression()) #10, !dbg !2524
  call void @llvm.dbg.value(metadata i32 undef, metadata !1812, metadata !DIExpression()) #10, !dbg !2525
  call void @llvm.dbg.value(metadata i8* %2, metadata !1821, metadata !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value)) #10, !dbg !2527
  call void @llvm.dbg.value(metadata i32 undef, metadata !1826, metadata !DIExpression()) #10, !dbg !2529
  call void @llvm.dbg.value(metadata i32 undef, metadata !1812, metadata !DIExpression()) #10, !dbg !2530
  call void @llvm.dbg.value(metadata i8* %2, metadata !1821, metadata !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value)) #10, !dbg !2532
  call void @llvm.dbg.value(metadata i32 undef, metadata !1826, metadata !DIExpression()) #10, !dbg !2534
  %40 = bitcast %struct.sha1_ctx* %4 to <4 x i32>*, !dbg !2535
  %41 = load <4 x i32>, <4 x i32>* %40, align 16, !dbg !2535, !tbaa !1043
  call void @llvm.dbg.value(metadata i32 undef, metadata !1812, metadata !DIExpression()) #10, !dbg !2536
  %42 = call <4 x i32> @llvm.bswap.v4i32(<4 x i32> %41), !dbg !2538
  call void @llvm.dbg.value(metadata i8* %2, metadata !1821, metadata !DIExpression(DW_OP_plus_uconst, 12, DW_OP_stack_value)) #10, !dbg !2539
  call void @llvm.dbg.value(metadata i32 undef, metadata !1826, metadata !DIExpression()) #10, !dbg !2541
  %43 = bitcast i8* %2 to <4 x i32>*, !dbg !2542
  store <4 x i32> %42, <4 x i32>* %43, align 1, !dbg !2542
  %44 = getelementptr inbounds i8, i8* %2, i64 16, !dbg !2543
  %45 = load i32, i32* %7, align 16, !dbg !2544, !tbaa !1863
  call void @llvm.dbg.value(metadata i32 %45, metadata !1812, metadata !DIExpression()) #10, !dbg !2545
  %46 = call i32 @llvm.bswap.i32(i32 %45) #10, !dbg !2547
  call void @llvm.dbg.value(metadata i8* %44, metadata !1821, metadata !DIExpression()) #10, !dbg !2548
  call void @llvm.dbg.value(metadata i32 %46, metadata !1826, metadata !DIExpression()) #10, !dbg !2550
  %47 = bitcast i8* %44 to i32*, !dbg !2551
  store i32 %46, i32* %47, align 1, !dbg !2551
  call void @llvm.lifetime.end.p0i8(i64 160, i8* nonnull %5) #10, !dbg !2552
  ret i8* %2, !dbg !2553
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @fdadvise(i32, i64, i64, i32) local_unnamed_addr #7 !dbg !2554 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2562, metadata !DIExpression()), !dbg !2568
  call void @llvm.dbg.value(metadata i64 %1, metadata !2563, metadata !DIExpression()), !dbg !2569
  call void @llvm.dbg.value(metadata i64 %2, metadata !2564, metadata !DIExpression()), !dbg !2570
  call void @llvm.dbg.value(metadata i32 %3, metadata !2565, metadata !DIExpression()), !dbg !2571
  %5 = tail call i32 @posix_fadvise(i32 %0, i64 %1, i64 %2, i32 %3) #10, !dbg !2572
  call void @llvm.dbg.value(metadata i32 %5, metadata !2566, metadata !DIExpression()), !dbg !2572
  ret void, !dbg !2573
}

; Function Attrs: nounwind
declare i32 @posix_fadvise(i32, i64, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @fadvise(%struct._IO_FILE*, i32) local_unnamed_addr #7 !dbg !2574 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2612, metadata !DIExpression()), !dbg !2614
  call void @llvm.dbg.value(metadata i32 %1, metadata !2613, metadata !DIExpression()), !dbg !2615
  %3 = icmp eq %struct._IO_FILE* %0, null, !dbg !2616
  br i1 %3, label %7, label %4, !dbg !2618

; <label>:4:                                      ; preds = %2
  %5 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #10, !dbg !2619
  call void @llvm.dbg.value(metadata i32 %5, metadata !2562, metadata !DIExpression()) #10, !dbg !2620
  call void @llvm.dbg.value(metadata i64 0, metadata !2563, metadata !DIExpression()) #10, !dbg !2622
  call void @llvm.dbg.value(metadata i64 0, metadata !2564, metadata !DIExpression()) #10, !dbg !2623
  call void @llvm.dbg.value(metadata i32 %1, metadata !2565, metadata !DIExpression()) #10, !dbg !2624
  %6 = tail call i32 @posix_fadvise(i32 %5, i64 0, i64 0, i32 %1) #10, !dbg !2625
  call void @llvm.dbg.value(metadata i32 %6, metadata !2566, metadata !DIExpression()) #10, !dbg !2625
  br label %7, !dbg !2626

; <label>:7:                                      ; preds = %2, %4
  ret void, !dbg !2627
}

; Function Attrs: nounwind
declare i32 @fileno(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local %struct._IO_FILE* @fopen_safer(i8* nocapture readonly, i8* nocapture readonly) local_unnamed_addr #7 !dbg !2628 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2667, metadata !DIExpression()), !dbg !2682
  call void @llvm.dbg.value(metadata i8* %1, metadata !2668, metadata !DIExpression()), !dbg !2683
  %3 = tail call %struct._IO_FILE* @fopen(i8* %0, i8* %1), !dbg !2684
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %3, metadata !2669, metadata !DIExpression()), !dbg !2685
  %4 = icmp eq %struct._IO_FILE* %3, null, !dbg !2686
  br i1 %4, label %25, label %5, !dbg !2687

; <label>:5:                                      ; preds = %2
  %6 = tail call i32 @fileno(%struct._IO_FILE* nonnull %3) #10, !dbg !2688
  call void @llvm.dbg.value(metadata i32 %6, metadata !2670, metadata !DIExpression()), !dbg !2689
  %7 = icmp ult i32 %6, 3, !dbg !2690
  br i1 %7, label %8, label %25, !dbg !2690

; <label>:8:                                      ; preds = %5
  %9 = tail call i32 @dup_safer(i32 %6) #10, !dbg !2691
  call void @llvm.dbg.value(metadata i32 %9, metadata !2673, metadata !DIExpression()), !dbg !2692
  %10 = icmp slt i32 %9, 0, !dbg !2693
  br i1 %10, label %11, label %15, !dbg !2694

; <label>:11:                                     ; preds = %8
  %12 = tail call i32* @__errno_location() #17, !dbg !2695
  %13 = load i32, i32* %12, align 4, !dbg !2695, !tbaa !1043
  call void @llvm.dbg.value(metadata i32 %13, metadata !2676, metadata !DIExpression()), !dbg !2696
  %14 = tail call i32 @rpl_fclose(%struct._IO_FILE* nonnull %3) #10, !dbg !2697
  store i32 %13, i32* %12, align 4, !dbg !2698, !tbaa !1043
  br label %25

; <label>:15:                                     ; preds = %8
  %16 = tail call i32 @rpl_fclose(%struct._IO_FILE* nonnull %3) #10, !dbg !2699
  %17 = icmp eq i32 %16, 0, !dbg !2700
  br i1 %17, label %18, label %21, !dbg !2701

; <label>:18:                                     ; preds = %15
  %19 = tail call %struct._IO_FILE* @fdopen(i32 %9, i8* %1) #10, !dbg !2702
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %19, metadata !2669, metadata !DIExpression()), !dbg !2685
  %20 = icmp eq %struct._IO_FILE* %19, null, !dbg !2703
  br i1 %20, label %21, label %25, !dbg !2704

; <label>:21:                                     ; preds = %18, %15
  %22 = tail call i32* @__errno_location() #17, !dbg !2705
  %23 = load i32, i32* %22, align 4, !dbg !2705, !tbaa !1043
  call void @llvm.dbg.value(metadata i32 %23, metadata !2679, metadata !DIExpression()), !dbg !2706
  %24 = tail call i32 @close(i32 %9) #10, !dbg !2707
  store i32 %23, i32* %22, align 4, !dbg !2708, !tbaa !1043
  br label %25

; <label>:25:                                     ; preds = %5, %18, %2, %21, %11
  %26 = phi %struct._IO_FILE* [ null, %11 ], [ null, %21 ], [ null, %2 ], [ %19, %18 ], [ %3, %5 ], !dbg !2709
  ret %struct._IO_FILE* %26, !dbg !2710
}

; Function Attrs: nounwind
declare noalias %struct._IO_FILE* @fopen(i8* nocapture readonly, i8* nocapture readonly) local_unnamed_addr #2

; Function Attrs: nounwind
declare noalias %struct._IO_FILE* @fdopen(i32, i8* nocapture readonly) local_unnamed_addr #2

declare i32 @close(i32) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_program_name(i8*) local_unnamed_addr #7 !dbg !2711 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2713, metadata !DIExpression()), !dbg !2716
  %2 = icmp eq i8* %0, null, !dbg !2717
  br i1 %2, label %3, label %6, !dbg !2719

; <label>:3:                                      ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2720, !tbaa !835
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.101, i64 0, i64 0), i64 55, i64 1, %struct._IO_FILE* %4) #18, !dbg !2722
  tail call void @abort() #15, !dbg !2723
  unreachable, !dbg !2723

; <label>:6:                                      ; preds = %1
  %7 = tail call i8* @strrchr(i8* nonnull %0, i32 47) #14, !dbg !2724
  call void @llvm.dbg.value(metadata i8* %7, metadata !2714, metadata !DIExpression()), !dbg !2725
  %8 = icmp eq i8* %7, null, !dbg !2726
  %9 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !2727
  %10 = select i1 %8, i8* %0, i8* %9, !dbg !2728
  call void @llvm.dbg.value(metadata i8* %10, metadata !2715, metadata !DIExpression()), !dbg !2729
  %11 = ptrtoint i8* %10 to i64, !dbg !2730
  %12 = ptrtoint i8* %0 to i64, !dbg !2730
  %13 = sub i64 %11, %12, !dbg !2730
  %14 = icmp sgt i64 %13, 6, !dbg !2732
  br i1 %14, label %15, label %24, !dbg !2733

; <label>:15:                                     ; preds = %6
  %16 = getelementptr inbounds i8, i8* %10, i64 -7, !dbg !2734
  %17 = tail call i32 @strncmp(i8* nonnull %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.102, i64 0, i64 0), i64 7) #14, !dbg !2735
  %18 = icmp eq i32 %17, 0, !dbg !2736
  br i1 %18, label %19, label %24, !dbg !2737

; <label>:19:                                     ; preds = %15
  call void @llvm.dbg.value(metadata i8* %10, metadata !2713, metadata !DIExpression()), !dbg !2716
  %20 = tail call i32 @strncmp(i8* nonnull %10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.103, i64 0, i64 0), i64 3) #14, !dbg !2738
  %21 = icmp eq i32 %20, 0, !dbg !2741
  br i1 %21, label %22, label %24, !dbg !2742

; <label>:22:                                     ; preds = %19
  %23 = getelementptr inbounds i8, i8* %10, i64 3, !dbg !2743
  call void @llvm.dbg.value(metadata i8* %23, metadata !2713, metadata !DIExpression()), !dbg !2716
  store i8* %23, i8** @program_invocation_short_name, align 8, !dbg !2745, !tbaa !835
  br label %24, !dbg !2746

; <label>:24:                                     ; preds = %19, %22, %15, %6
  %25 = phi i8* [ %23, %22 ], [ %10, %19 ], [ %0, %15 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i8* %25, metadata !2713, metadata !DIExpression()), !dbg !2716
  store i8* %25, i8** @program_name, align 8, !dbg !2747, !tbaa !835
  store i8* %25, i8** @program_invocation_name, align 8, !dbg !2748, !tbaa !835
  ret void, !dbg !2749
}

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) local_unnamed_addr #10

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #6

; Function Attrs: nounwind readonly
declare i8* @strrchr(i8*, i32) local_unnamed_addr #5

; Function Attrs: nounwind sspstrong uwtable
define dso_local %struct.quoting_options* @clone_quoting_options(%struct.quoting_options*) local_unnamed_addr #7 !dbg !2750 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2755, metadata !DIExpression()), !dbg !2758
  %2 = tail call i32* @__errno_location() #17, !dbg !2759
  %3 = load i32, i32* %2, align 4, !dbg !2759, !tbaa !1043
  call void @llvm.dbg.value(metadata i32 %3, metadata !2756, metadata !DIExpression()), !dbg !2760
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !2761
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2761
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2761
  %7 = tail call i8* @xmemdup(i8* %6, i64 56) #10, !dbg !2762
  %8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !2762
  call void @llvm.dbg.value(metadata %struct.quoting_options* %8, metadata !2757, metadata !DIExpression()), !dbg !2763
  store i32 %3, i32* %2, align 4, !dbg !2764, !tbaa !1043
  ret %struct.quoting_options* %8, !dbg !2765
}

; Function Attrs: nounwind readonly sspstrong uwtable
define dso_local i32 @get_quoting_style(%struct.quoting_options* readonly) local_unnamed_addr #11 !dbg !2766 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2772, metadata !DIExpression()), !dbg !2773
  %2 = icmp eq %struct.quoting_options* %0, null, !dbg !2774
  %3 = select i1 %2, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2774
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2775
  %5 = load i32, i32* %4, align 8, !dbg !2775, !tbaa !2776
  ret i32 %5, !dbg !2778
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_quoting_style(%struct.quoting_options*, i32) local_unnamed_addr #7 !dbg !2779 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2783, metadata !DIExpression()), !dbg !2785
  call void @llvm.dbg.value(metadata i32 %1, metadata !2784, metadata !DIExpression()), !dbg !2786
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !2787
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2787
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2788
  store i32 %1, i32* %5, align 8, !dbg !2789, !tbaa !2776
  ret void, !dbg !2790
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @set_char_quoting(%struct.quoting_options*, i8 signext, i32) local_unnamed_addr #7 !dbg !2791 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2795, metadata !DIExpression()), !dbg !2803
  call void @llvm.dbg.value(metadata i8 %1, metadata !2796, metadata !DIExpression()), !dbg !2804
  call void @llvm.dbg.value(metadata i32 %2, metadata !2797, metadata !DIExpression()), !dbg !2805
  call void @llvm.dbg.value(metadata i8 %1, metadata !2798, metadata !DIExpression()), !dbg !2806
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !2807
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2807
  %6 = lshr i8 %1, 5, !dbg !2808
  %7 = zext i8 %6 to i64, !dbg !2808
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !2809
  call void @llvm.dbg.value(metadata i32* %8, metadata !2799, metadata !DIExpression()), !dbg !2810
  %9 = and i8 %1, 31, !dbg !2811
  %10 = zext i8 %9 to i32, !dbg !2811
  call void @llvm.dbg.value(metadata i32 %10, metadata !2801, metadata !DIExpression()), !dbg !2812
  %11 = load i32, i32* %8, align 4, !dbg !2813, !tbaa !1043
  %12 = lshr i32 %11, %10, !dbg !2814
  %13 = and i32 %12, 1, !dbg !2815
  call void @llvm.dbg.value(metadata i32 %13, metadata !2802, metadata !DIExpression()), !dbg !2816
  %14 = and i32 %2, 1, !dbg !2817
  %15 = xor i32 %13, %14, !dbg !2818
  %16 = shl i32 %15, %10, !dbg !2819
  %17 = xor i32 %16, %11, !dbg !2820
  store i32 %17, i32* %8, align 4, !dbg !2820, !tbaa !1043
  ret i32 %13, !dbg !2821
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @set_quoting_flags(%struct.quoting_options*, i32) local_unnamed_addr #7 !dbg !2822 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2826, metadata !DIExpression()), !dbg !2829
  call void @llvm.dbg.value(metadata i32 %1, metadata !2827, metadata !DIExpression()), !dbg !2830
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !2831
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2833
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2826, metadata !DIExpression()), !dbg !2829
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !2834
  %6 = load i32, i32* %5, align 4, !dbg !2834, !tbaa !2835
  call void @llvm.dbg.value(metadata i32 %6, metadata !2828, metadata !DIExpression()), !dbg !2836
  store i32 %1, i32* %5, align 4, !dbg !2837, !tbaa !2835
  ret i32 %6, !dbg !2838
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_custom_quoting(%struct.quoting_options*, i8*, i8*) local_unnamed_addr #7 !dbg !2839 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2843, metadata !DIExpression()), !dbg !2846
  call void @llvm.dbg.value(metadata i8* %1, metadata !2844, metadata !DIExpression()), !dbg !2847
  call void @llvm.dbg.value(metadata i8* %2, metadata !2845, metadata !DIExpression()), !dbg !2848
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !2849
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2851
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2843, metadata !DIExpression()), !dbg !2846
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2852
  store i32 10, i32* %6, align 8, !dbg !2853, !tbaa !2776
  %7 = icmp ne i8* %1, null, !dbg !2854
  %8 = icmp ne i8* %2, null, !dbg !2856
  %9 = and i1 %7, %8, !dbg !2857
  br i1 %9, label %11, label %10, !dbg !2857

; <label>:10:                                     ; preds = %3
  tail call void @abort() #15, !dbg !2858
  unreachable, !dbg !2858

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2859
  store i8* %1, i8** %12, align 8, !dbg !2860, !tbaa !2861
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2862
  store i8* %2, i8** %13, align 8, !dbg !2863, !tbaa !2864
  ret void, !dbg !2865
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @quotearg_buffer(i8*, i64, i8*, i64, %struct.quoting_options* readonly) local_unnamed_addr #7 !dbg !2866 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2870, metadata !DIExpression()), !dbg !2878
  call void @llvm.dbg.value(metadata i64 %1, metadata !2871, metadata !DIExpression()), !dbg !2879
  call void @llvm.dbg.value(metadata i8* %2, metadata !2872, metadata !DIExpression()), !dbg !2880
  call void @llvm.dbg.value(metadata i64 %3, metadata !2873, metadata !DIExpression()), !dbg !2881
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2874, metadata !DIExpression()), !dbg !2882
  %6 = icmp eq %struct.quoting_options* %4, null, !dbg !2883
  %7 = select i1 %6, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %4, !dbg !2883
  call void @llvm.dbg.value(metadata %struct.quoting_options* %7, metadata !2875, metadata !DIExpression()), !dbg !2884
  %8 = tail call i32* @__errno_location() #17, !dbg !2885
  %9 = load i32, i32* %8, align 4, !dbg !2885, !tbaa !1043
  call void @llvm.dbg.value(metadata i32 %9, metadata !2876, metadata !DIExpression()), !dbg !2886
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !2887
  %11 = load i32, i32* %10, align 8, !dbg !2887, !tbaa !2776
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !2888
  %13 = load i32, i32* %12, align 4, !dbg !2888, !tbaa !2835
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !2889
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !2890
  %16 = load i8*, i8** %15, align 8, !dbg !2890, !tbaa !2861
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !2891
  %18 = load i8*, i8** %17, align 8, !dbg !2891, !tbaa !2864
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %11, i32 %13, i32* nonnull %14, i8* %16, i8* %18), !dbg !2892
  call void @llvm.dbg.value(metadata i64 %19, metadata !2877, metadata !DIExpression()), !dbg !2893
  store i32 %9, i32* %8, align 4, !dbg !2894, !tbaa !1043
  ret i64 %19, !dbg !2895
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8*, i64, i8*, i64, i32, i32, i32* readonly, i8* readonly, i8* readonly) unnamed_addr #7 !dbg !2896 {
  %10 = alloca i64, align 8
  %11 = bitcast i64* %10 to %struct.__mbstate_t*
  %12 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !2902, metadata !DIExpression()), !dbg !2966
  call void @llvm.dbg.value(metadata i64 %1, metadata !2903, metadata !DIExpression()), !dbg !2967
  call void @llvm.dbg.value(metadata i8* %2, metadata !2904, metadata !DIExpression()), !dbg !2968
  call void @llvm.dbg.value(metadata i64 %3, metadata !2905, metadata !DIExpression()), !dbg !2969
  call void @llvm.dbg.value(metadata i32 %4, metadata !2906, metadata !DIExpression()), !dbg !2970
  call void @llvm.dbg.value(metadata i32 %5, metadata !2907, metadata !DIExpression()), !dbg !2971
  call void @llvm.dbg.value(metadata i32* %6, metadata !2908, metadata !DIExpression()), !dbg !2972
  call void @llvm.dbg.value(metadata i8* %7, metadata !2909, metadata !DIExpression()), !dbg !2973
  call void @llvm.dbg.value(metadata i8* %8, metadata !2910, metadata !DIExpression()), !dbg !2974
  call void @llvm.dbg.value(metadata i64 0, metadata !2912, metadata !DIExpression()), !dbg !2975
  call void @llvm.dbg.value(metadata i64 0, metadata !2913, metadata !DIExpression()), !dbg !2976
  call void @llvm.dbg.value(metadata i8* null, metadata !2914, metadata !DIExpression()), !dbg !2977
  call void @llvm.dbg.value(metadata i64 0, metadata !2915, metadata !DIExpression()), !dbg !2978
  call void @llvm.dbg.value(metadata i8 0, metadata !2916, metadata !DIExpression()), !dbg !2979
  %13 = tail call i64 @__ctype_get_mb_cur_max() #10, !dbg !2980
  %14 = icmp eq i64 %13, 1, !dbg !2981
  %15 = lshr i32 %5, 1, !dbg !2982
  %16 = trunc i32 %15 to i8, !dbg !2982
  %17 = and i8 %16, 1, !dbg !2982
  call void @llvm.dbg.value(metadata i8 %17, metadata !2918, metadata !DIExpression()), !dbg !2982
  call void @llvm.dbg.value(metadata i8 0, metadata !2919, metadata !DIExpression()), !dbg !2983
  call void @llvm.dbg.value(metadata i8 0, metadata !2920, metadata !DIExpression()), !dbg !2984
  call void @llvm.dbg.value(metadata i8 1, metadata !2921, metadata !DIExpression()), !dbg !2985
  %18 = icmp ne i32* %6, null
  %19 = bitcast i64* %10 to i8*
  %20 = icmp eq i32* %6, null
  %21 = and i32 %5, 1
  %22 = icmp eq i32 %21, 0
  %23 = and i32 %5, 4
  %24 = icmp eq i32 %23, 0
  %25 = getelementptr inbounds i8, i8* %2, i64 1
  %26 = bitcast i32* %12 to i8*
  br label %27, !dbg !2986

; <label>:27:                                     ; preds = %634, %9
  %28 = phi i32 [ %4, %9 ], [ %94, %634 ]
  %29 = phi i8* [ %7, %9 ], [ %95, %634 ]
  %30 = phi i8* [ %8, %9 ], [ %96, %634 ]
  %31 = phi i64 [ 0, %9 ], [ %124, %634 ], !dbg !2976
  %32 = phi i8* [ null, %9 ], [ %98, %634 ], !dbg !2977
  %33 = phi i64 [ 0, %9 ], [ %99, %634 ], !dbg !2978
  %34 = phi i8 [ 0, %9 ], [ %100, %634 ], !dbg !2979
  %35 = phi i64 [ %3, %9 ], [ %618, %634 ]
  %36 = phi i8 [ %17, %9 ], [ %101, %634 ], !dbg !2987
  %37 = phi i8 [ 0, %9 ], [ %126, %634 ], !dbg !2983
  %38 = phi i8 [ 0, %9 ], [ %127, %634 ], !dbg !2984
  %39 = phi i8 [ 1, %9 ], [ %128, %634 ], !dbg !2985
  %40 = phi i64 [ %1, %9 ], [ %124, %634 ]
  call void @llvm.dbg.value(metadata i64 %40, metadata !2903, metadata !DIExpression()), !dbg !2967
  call void @llvm.dbg.value(metadata i8 %39, metadata !2921, metadata !DIExpression()), !dbg !2985
  call void @llvm.dbg.value(metadata i8 %38, metadata !2920, metadata !DIExpression()), !dbg !2984
  call void @llvm.dbg.value(metadata i8 %37, metadata !2919, metadata !DIExpression()), !dbg !2983
  call void @llvm.dbg.value(metadata i8 %36, metadata !2918, metadata !DIExpression()), !dbg !2982
  call void @llvm.dbg.value(metadata i64 %35, metadata !2905, metadata !DIExpression()), !dbg !2969
  call void @llvm.dbg.value(metadata i8 %34, metadata !2916, metadata !DIExpression()), !dbg !2979
  call void @llvm.dbg.value(metadata i64 %33, metadata !2915, metadata !DIExpression()), !dbg !2978
  call void @llvm.dbg.value(metadata i8* %32, metadata !2914, metadata !DIExpression()), !dbg !2977
  call void @llvm.dbg.value(metadata i64 %31, metadata !2913, metadata !DIExpression()), !dbg !2976
  call void @llvm.dbg.value(metadata i64 0, metadata !2912, metadata !DIExpression()), !dbg !2975
  call void @llvm.dbg.value(metadata i8* %30, metadata !2910, metadata !DIExpression()), !dbg !2974
  call void @llvm.dbg.value(metadata i8* %29, metadata !2909, metadata !DIExpression()), !dbg !2973
  call void @llvm.dbg.value(metadata i32 %28, metadata !2906, metadata !DIExpression()), !dbg !2970
  switch i32 %28, label %92 [
    i32 6, label %41
    i32 5, label %42
    i32 7, label %93
    i32 0, label %91
    i32 2, label %83
    i32 4, label %77
    i32 3, label %74
    i32 1, label %75
    i32 10, label %51
    i32 8, label %48
    i32 9, label %48
  ], !dbg !2989

; <label>:41:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i32 5, metadata !2906, metadata !DIExpression()), !dbg !2970
  call void @llvm.dbg.value(metadata i8 1, metadata !2918, metadata !DIExpression()), !dbg !2982
  call void @llvm.dbg.value(metadata i8 %36, metadata !2918, metadata !DIExpression()), !dbg !2982
  call void @llvm.dbg.value(metadata i32 5, metadata !2906, metadata !DIExpression()), !dbg !2970
  br label %93, !dbg !2990

; <label>:42:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 %36, metadata !2918, metadata !DIExpression()), !dbg !2982
  call void @llvm.dbg.value(metadata i32 5, metadata !2906, metadata !DIExpression()), !dbg !2970
  %43 = and i8 %36, 1, !dbg !2991
  %44 = icmp eq i8 %43, 0, !dbg !2991
  br i1 %44, label %45, label %93, !dbg !2990

; <label>:45:                                     ; preds = %42
  %46 = icmp eq i64 %40, 0, !dbg !2993
  br i1 %46, label %93, label %47, !dbg !2996

; <label>:47:                                     ; preds = %45
  store i8 34, i8* %0, align 1, !dbg !2993, !tbaa !1129
  br label %93, !dbg !2993

; <label>:48:                                     ; preds = %27, %27
  %49 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.114, i64 0, i64 0), i32 %28), !dbg !2997
  call void @llvm.dbg.value(metadata i8* %49, metadata !2909, metadata !DIExpression()), !dbg !2973
  %50 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.115, i64 0, i64 0), i32 %28), !dbg !3001
  call void @llvm.dbg.value(metadata i8* %50, metadata !2910, metadata !DIExpression()), !dbg !2974
  br label %51, !dbg !3002

; <label>:51:                                     ; preds = %27, %48
  %52 = phi i8* [ %49, %48 ], [ %29, %27 ]
  %53 = phi i8* [ %50, %48 ], [ %30, %27 ]
  call void @llvm.dbg.value(metadata i8* %53, metadata !2910, metadata !DIExpression()), !dbg !2974
  call void @llvm.dbg.value(metadata i8* %52, metadata !2909, metadata !DIExpression()), !dbg !2973
  %54 = and i8 %36, 1, !dbg !3003
  %55 = icmp eq i8 %54, 0, !dbg !3003
  br i1 %55, label %56, label %71, !dbg !3005

; <label>:56:                                     ; preds = %51
  call void @llvm.dbg.value(metadata i8* %52, metadata !2914, metadata !DIExpression()), !dbg !2977
  call void @llvm.dbg.value(metadata i64 0, metadata !2912, metadata !DIExpression()), !dbg !2975
  %57 = load i8, i8* %52, align 1, !dbg !3006, !tbaa !1129
  %58 = icmp eq i8 %57, 0, !dbg !3009
  br i1 %58, label %71, label %59, !dbg !3009

; <label>:59:                                     ; preds = %56, %66
  %60 = phi i8 [ %69, %66 ], [ %57, %56 ]
  %61 = phi i8* [ %68, %66 ], [ %52, %56 ]
  %62 = phi i64 [ %67, %66 ], [ 0, %56 ]
  call void @llvm.dbg.value(metadata i8* %61, metadata !2914, metadata !DIExpression()), !dbg !2977
  call void @llvm.dbg.value(metadata i64 %62, metadata !2912, metadata !DIExpression()), !dbg !2975
  %63 = icmp ult i64 %62, %40, !dbg !3010
  br i1 %63, label %64, label %66, !dbg !3013

; <label>:64:                                     ; preds = %59
  %65 = getelementptr inbounds i8, i8* %0, i64 %62, !dbg !3010
  store i8 %60, i8* %65, align 1, !dbg !3010, !tbaa !1129
  br label %66, !dbg !3010

; <label>:66:                                     ; preds = %64, %59
  %67 = add i64 %62, 1, !dbg !3013
  %68 = getelementptr inbounds i8, i8* %61, i64 1, !dbg !3014
  call void @llvm.dbg.value(metadata i8* %68, metadata !2914, metadata !DIExpression()), !dbg !2977
  call void @llvm.dbg.value(metadata i64 %67, metadata !2912, metadata !DIExpression()), !dbg !2975
  %69 = load i8, i8* %68, align 1, !dbg !3006, !tbaa !1129
  %70 = icmp eq i8 %69, 0, !dbg !3009
  br i1 %70, label %71, label %59, !dbg !3009, !llvm.loop !3015

; <label>:71:                                     ; preds = %66, %56, %51
  %72 = phi i64 [ 0, %51 ], [ 0, %56 ], [ %67, %66 ], !dbg !2975
  call void @llvm.dbg.value(metadata i64 %72, metadata !2912, metadata !DIExpression()), !dbg !2975
  call void @llvm.dbg.value(metadata i8 1, metadata !2916, metadata !DIExpression()), !dbg !2979
  call void @llvm.dbg.value(metadata i8* %53, metadata !2914, metadata !DIExpression()), !dbg !2977
  %73 = call i64 @strlen(i8* %53) #14, !dbg !3017
  call void @llvm.dbg.value(metadata i64 %73, metadata !2915, metadata !DIExpression()), !dbg !2978
  br label %93, !dbg !3018

; <label>:74:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 1, metadata !2916, metadata !DIExpression()), !dbg !2979
  br label %75, !dbg !3019

; <label>:75:                                     ; preds = %27, %74
  %76 = phi i8 [ %34, %27 ], [ 1, %74 ], !dbg !2987
  call void @llvm.dbg.value(metadata i8 %76, metadata !2916, metadata !DIExpression()), !dbg !2979
  call void @llvm.dbg.value(metadata i8 1, metadata !2918, metadata !DIExpression()), !dbg !2982
  br label %77, !dbg !3020

; <label>:77:                                     ; preds = %27, %75
  %78 = phi i8 [ %34, %27 ], [ %76, %75 ], !dbg !2979
  %79 = phi i8 [ %36, %27 ], [ 1, %75 ], !dbg !2987
  call void @llvm.dbg.value(metadata i8 %79, metadata !2918, metadata !DIExpression()), !dbg !2982
  call void @llvm.dbg.value(metadata i8 %78, metadata !2916, metadata !DIExpression()), !dbg !2979
  %80 = and i8 %79, 1, !dbg !3021
  %81 = icmp eq i8 %80, 0, !dbg !3021
  %82 = select i1 %81, i8 1, i8 %78, !dbg !3023
  br label %83, !dbg !3023

; <label>:83:                                     ; preds = %77, %27
  %84 = phi i8 [ %34, %27 ], [ %82, %77 ], !dbg !3024
  %85 = phi i8 [ %36, %27 ], [ %79, %77 ], !dbg !2982
  call void @llvm.dbg.value(metadata i8 %85, metadata !2918, metadata !DIExpression()), !dbg !2982
  call void @llvm.dbg.value(metadata i8 %84, metadata !2916, metadata !DIExpression()), !dbg !2979
  call void @llvm.dbg.value(metadata i32 2, metadata !2906, metadata !DIExpression()), !dbg !2970
  %86 = and i8 %85, 1, !dbg !3025
  %87 = icmp eq i8 %86, 0, !dbg !3025
  br i1 %87, label %88, label %93, !dbg !3027

; <label>:88:                                     ; preds = %83
  %89 = icmp eq i64 %40, 0, !dbg !3028
  br i1 %89, label %93, label %90, !dbg !3031

; <label>:90:                                     ; preds = %88
  store i8 39, i8* %0, align 1, !dbg !3028, !tbaa !1129
  br label %93, !dbg !3028

; <label>:91:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 0, metadata !2918, metadata !DIExpression()), !dbg !2982
  br label %93, !dbg !3032

; <label>:92:                                     ; preds = %27
  call void @abort() #15, !dbg !3033
  unreachable, !dbg !3033

; <label>:93:                                     ; preds = %41, %83, %88, %90, %27, %42, %45, %47, %91, %71
  %94 = phi i32 [ 0, %91 ], [ %28, %71 ], [ 5, %47 ], [ 5, %45 ], [ 5, %42 ], [ %28, %27 ], [ 2, %90 ], [ 2, %88 ], [ 2, %83 ], [ 5, %41 ]
  %95 = phi i8* [ %29, %91 ], [ %52, %71 ], [ %29, %47 ], [ %29, %45 ], [ %29, %42 ], [ %29, %27 ], [ %29, %90 ], [ %29, %88 ], [ %29, %83 ], [ %29, %41 ]
  %96 = phi i8* [ %30, %91 ], [ %53, %71 ], [ %30, %47 ], [ %30, %45 ], [ %30, %42 ], [ %30, %27 ], [ %30, %90 ], [ %30, %88 ], [ %30, %83 ], [ %30, %41 ]
  %97 = phi i64 [ 0, %91 ], [ %72, %71 ], [ 1, %47 ], [ 1, %45 ], [ 0, %42 ], [ 0, %27 ], [ 1, %90 ], [ 1, %88 ], [ 0, %83 ], [ 0, %41 ], !dbg !2975
  %98 = phi i8* [ %32, %91 ], [ %53, %71 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.116, i64 0, i64 0), %47 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.116, i64 0, i64 0), %45 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.116, i64 0, i64 0), %42 ], [ %32, %27 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.115, i64 0, i64 0), %90 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.115, i64 0, i64 0), %88 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.115, i64 0, i64 0), %83 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.116, i64 0, i64 0), %41 ], !dbg !2987
  %99 = phi i64 [ %33, %91 ], [ %73, %71 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ %33, %27 ], [ 1, %90 ], [ 1, %88 ], [ 1, %83 ], [ 1, %41 ], !dbg !2987
  %100 = phi i8 [ %34, %91 ], [ 1, %71 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ 1, %27 ], [ %84, %90 ], [ %84, %88 ], [ %84, %83 ], [ 1, %41 ], !dbg !2987
  %101 = phi i8 [ 0, %91 ], [ %36, %71 ], [ %36, %47 ], [ %36, %45 ], [ %36, %42 ], [ 0, %27 ], [ %85, %90 ], [ %85, %88 ], [ %85, %83 ], [ 1, %41 ], !dbg !3034
  call void @llvm.dbg.value(metadata i8 %101, metadata !2918, metadata !DIExpression()), !dbg !2982
  call void @llvm.dbg.value(metadata i8 %100, metadata !2916, metadata !DIExpression()), !dbg !2979
  call void @llvm.dbg.value(metadata i64 %99, metadata !2915, metadata !DIExpression()), !dbg !2978
  call void @llvm.dbg.value(metadata i8* %98, metadata !2914, metadata !DIExpression()), !dbg !2977
  call void @llvm.dbg.value(metadata i64 %97, metadata !2912, metadata !DIExpression()), !dbg !2975
  call void @llvm.dbg.value(metadata i8* %96, metadata !2910, metadata !DIExpression()), !dbg !2974
  call void @llvm.dbg.value(metadata i8* %95, metadata !2909, metadata !DIExpression()), !dbg !2973
  call void @llvm.dbg.value(metadata i32 %94, metadata !2906, metadata !DIExpression()), !dbg !2970
  call void @llvm.dbg.value(metadata i64 0, metadata !2911, metadata !DIExpression()), !dbg !3035
  %102 = and i8 %100, 1
  %103 = icmp ne i8 %102, 0
  %104 = icmp ne i32 %94, 2
  %105 = and i1 %104, %103
  %106 = icmp ne i64 %99, 0
  %107 = and i1 %106, %105
  %108 = icmp ugt i64 %99, 1
  %109 = and i8 %101, 1
  %110 = icmp eq i8 %109, 0
  %111 = icmp ne i8 %109, 0
  %112 = and i1 %18, %111
  %113 = or i1 %104, %110
  %114 = icmp eq i32 %94, 2
  %115 = xor i1 %103, true
  %116 = and i1 %114, %111
  %117 = and i8 %100, %101
  %118 = and i8 %117, 1
  %119 = icmp ne i8 %118, 0
  %120 = and i1 %119, %106
  br label %121, !dbg !3036

; <label>:121:                                    ; preds = %607, %93
  %122 = phi i64 [ 0, %93 ], [ %616, %607 ], !dbg !3037
  %123 = phi i64 [ %97, %93 ], [ %609, %607 ], !dbg !2975
  %124 = phi i64 [ %31, %93 ], [ %610, %607 ], !dbg !2976
  %125 = phi i64 [ %35, %93 ], [ %611, %607 ]
  %126 = phi i8 [ %37, %93 ], [ %612, %607 ], !dbg !2983
  %127 = phi i8 [ %38, %93 ], [ %613, %607 ], !dbg !2984
  %128 = phi i8 [ %39, %93 ], [ %614, %607 ], !dbg !2985
  %129 = phi i64 [ %40, %93 ], [ %615, %607 ]
  call void @llvm.dbg.value(metadata i64 %129, metadata !2903, metadata !DIExpression()), !dbg !2967
  call void @llvm.dbg.value(metadata i8 %128, metadata !2921, metadata !DIExpression()), !dbg !2985
  call void @llvm.dbg.value(metadata i8 %127, metadata !2920, metadata !DIExpression()), !dbg !2984
  call void @llvm.dbg.value(metadata i8 %126, metadata !2919, metadata !DIExpression()), !dbg !2983
  call void @llvm.dbg.value(metadata i64 %125, metadata !2905, metadata !DIExpression()), !dbg !2969
  call void @llvm.dbg.value(metadata i64 %124, metadata !2913, metadata !DIExpression()), !dbg !2976
  call void @llvm.dbg.value(metadata i64 %123, metadata !2912, metadata !DIExpression()), !dbg !2975
  call void @llvm.dbg.value(metadata i64 %122, metadata !2911, metadata !DIExpression()), !dbg !3035
  %130 = icmp eq i64 %125, -1, !dbg !3038
  br i1 %130, label %131, label %135, !dbg !3039

; <label>:131:                                    ; preds = %121
  %132 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !3040
  %133 = load i8, i8* %132, align 1, !dbg !3040, !tbaa !1129
  %134 = icmp eq i8 %133, 0, !dbg !3041
  br i1 %134, label %617, label %137, !dbg !3042

; <label>:135:                                    ; preds = %121
  %136 = icmp eq i64 %122, %125, !dbg !3043
  br i1 %136, label %617, label %137, !dbg !3042

; <label>:137:                                    ; preds = %131, %135
  call void @llvm.dbg.value(metadata i8 0, metadata !2927, metadata !DIExpression()), !dbg !3044
  call void @llvm.dbg.value(metadata i8 0, metadata !2928, metadata !DIExpression()), !dbg !3045
  call void @llvm.dbg.value(metadata i8 0, metadata !2929, metadata !DIExpression()), !dbg !3046
  br i1 %107, label %138, label %153, !dbg !3047

; <label>:138:                                    ; preds = %137
  %139 = add i64 %122, %99, !dbg !3049
  %140 = and i1 %108, %130, !dbg !3050
  br i1 %140, label %141, label %143, !dbg !3050

; <label>:141:                                    ; preds = %138
  %142 = call i64 @strlen(i8* %2) #14, !dbg !3051
  call void @llvm.dbg.value(metadata i64 %142, metadata !2905, metadata !DIExpression()), !dbg !2969
  br label %143, !dbg !3052

; <label>:143:                                    ; preds = %138, %141
  %144 = phi i64 [ %142, %141 ], [ %125, %138 ]
  call void @llvm.dbg.value(metadata i64 %144, metadata !2905, metadata !DIExpression()), !dbg !2969
  %145 = icmp ugt i64 %139, %144, !dbg !3053
  br i1 %145, label %153, label %146, !dbg !3054

; <label>:146:                                    ; preds = %143
  %147 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !3055
  %148 = call i32 @memcmp(i8* %147, i8* %98, i64 %99) #14, !dbg !3056
  %149 = icmp ne i32 %148, 0, !dbg !3057
  %150 = or i1 %149, %110, !dbg !3058
  %151 = xor i1 %149, true, !dbg !3058
  %152 = zext i1 %151 to i8, !dbg !3058
  br i1 %150, label %153, label %661, !dbg !3058

; <label>:153:                                    ; preds = %146, %143, %137
  %154 = phi i64 [ %144, %146 ], [ %144, %143 ], [ %125, %137 ]
  %155 = phi i8 [ %152, %146 ], [ 0, %143 ], [ 0, %137 ], !dbg !3059
  call void @llvm.dbg.value(metadata i8 %155, metadata !2927, metadata !DIExpression()), !dbg !3044
  call void @llvm.dbg.value(metadata i64 %154, metadata !2905, metadata !DIExpression()), !dbg !2969
  %156 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !3060
  %157 = load i8, i8* %156, align 1, !dbg !3060, !tbaa !1129
  call void @llvm.dbg.value(metadata i8 %157, metadata !2922, metadata !DIExpression()), !dbg !3061
  switch i8 %157, label %296 [
    i8 0, label %158
    i8 63, label %208
    i8 7, label %255
    i8 8, label %245
    i8 12, label %246
    i8 10, label %253
    i8 13, label %247
    i8 9, label %248
    i8 11, label %249
    i8 92, label %250
    i8 123, label %257
    i8 125, label %257
    i8 35, label %268
    i8 126, label %268
    i8 32, label %270
    i8 33, label %271
    i8 34, label %271
    i8 36, label %271
    i8 38, label %271
    i8 40, label %271
    i8 41, label %271
    i8 42, label %271
    i8 59, label %271
    i8 60, label %271
    i8 61, label %271
    i8 62, label %271
    i8 91, label %271
    i8 94, label %271
    i8 96, label %271
    i8 124, label %271
    i8 39, label %273
    i8 37, label %467
    i8 43, label %467
    i8 44, label %467
    i8 45, label %467
    i8 46, label %467
    i8 47, label %467
    i8 48, label %467
    i8 49, label %467
    i8 50, label %467
    i8 51, label %467
    i8 52, label %467
    i8 53, label %467
    i8 54, label %467
    i8 55, label %467
    i8 56, label %467
    i8 57, label %467
    i8 58, label %467
    i8 65, label %467
    i8 66, label %467
    i8 67, label %467
    i8 68, label %467
    i8 69, label %467
    i8 70, label %467
    i8 71, label %467
    i8 72, label %467
    i8 73, label %467
    i8 74, label %467
    i8 75, label %467
    i8 76, label %467
    i8 77, label %467
    i8 78, label %467
    i8 79, label %467
    i8 80, label %467
    i8 81, label %467
    i8 82, label %467
    i8 83, label %467
    i8 84, label %467
    i8 85, label %467
    i8 86, label %467
    i8 87, label %467
    i8 88, label %467
    i8 89, label %467
    i8 90, label %467
    i8 93, label %467
    i8 95, label %467
    i8 97, label %467
    i8 98, label %467
    i8 99, label %467
    i8 100, label %467
    i8 101, label %467
    i8 102, label %467
    i8 103, label %467
    i8 104, label %467
    i8 105, label %467
    i8 106, label %467
    i8 107, label %467
    i8 108, label %467
    i8 109, label %467
    i8 110, label %467
    i8 111, label %467
    i8 112, label %467
    i8 113, label %467
    i8 114, label %467
    i8 115, label %467
    i8 116, label %467
    i8 117, label %467
    i8 118, label %467
    i8 119, label %467
    i8 120, label %467
    i8 121, label %467
    i8 122, label %467
  ], !dbg !3062

; <label>:158:                                    ; preds = %153
  br i1 %103, label %159, label %207, !dbg !3063

; <label>:159:                                    ; preds = %158
  br i1 %110, label %160, label %661, !dbg !3064

; <label>:160:                                    ; preds = %159
  call void @llvm.dbg.value(metadata i8 1, metadata !2928, metadata !DIExpression()), !dbg !3045
  %161 = and i8 %126, 1, !dbg !3068
  %162 = icmp eq i8 %161, 0, !dbg !3068
  %163 = and i1 %114, %162, !dbg !3068
  br i1 %163, label %164, label %180, !dbg !3068

; <label>:164:                                    ; preds = %160
  %165 = icmp ult i64 %123, %129, !dbg !3070
  br i1 %165, label %166, label %168, !dbg !3074

; <label>:166:                                    ; preds = %164
  %167 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !3070
  store i8 39, i8* %167, align 1, !dbg !3070, !tbaa !1129
  br label %168, !dbg !3070

; <label>:168:                                    ; preds = %166, %164
  %169 = add i64 %123, 1, !dbg !3074
  call void @llvm.dbg.value(metadata i64 %169, metadata !2912, metadata !DIExpression()), !dbg !2975
  %170 = icmp ult i64 %169, %129, !dbg !3075
  br i1 %170, label %171, label %173, !dbg !3078

; <label>:171:                                    ; preds = %168
  %172 = getelementptr inbounds i8, i8* %0, i64 %169, !dbg !3075
  store i8 36, i8* %172, align 1, !dbg !3075, !tbaa !1129
  br label %173, !dbg !3075

; <label>:173:                                    ; preds = %171, %168
  %174 = add i64 %123, 2, !dbg !3078
  call void @llvm.dbg.value(metadata i64 %174, metadata !2912, metadata !DIExpression()), !dbg !2975
  %175 = icmp ult i64 %174, %129, !dbg !3079
  br i1 %175, label %176, label %178, !dbg !3082

; <label>:176:                                    ; preds = %173
  %177 = getelementptr inbounds i8, i8* %0, i64 %174, !dbg !3079
  store i8 39, i8* %177, align 1, !dbg !3079, !tbaa !1129
  br label %178, !dbg !3079

; <label>:178:                                    ; preds = %176, %173
  %179 = add i64 %123, 3, !dbg !3082
  call void @llvm.dbg.value(metadata i64 %179, metadata !2912, metadata !DIExpression()), !dbg !2975
  call void @llvm.dbg.value(metadata i8 1, metadata !2919, metadata !DIExpression()), !dbg !2983
  br label %180, !dbg !3083

; <label>:180:                                    ; preds = %160, %178
  %181 = phi i64 [ %179, %178 ], [ %123, %160 ], !dbg !3034
  %182 = phi i8 [ 1, %178 ], [ %126, %160 ], !dbg !3034
  call void @llvm.dbg.value(metadata i8 %182, metadata !2919, metadata !DIExpression()), !dbg !2983
  call void @llvm.dbg.value(metadata i64 %181, metadata !2912, metadata !DIExpression()), !dbg !2975
  %183 = icmp ult i64 %181, %129, !dbg !3084
  br i1 %183, label %184, label %186, !dbg !3087

; <label>:184:                                    ; preds = %180
  %185 = getelementptr inbounds i8, i8* %0, i64 %181, !dbg !3084
  store i8 92, i8* %185, align 1, !dbg !3084, !tbaa !1129
  br label %186, !dbg !3084

; <label>:186:                                    ; preds = %184, %180
  %187 = add i64 %181, 1, !dbg !3087
  call void @llvm.dbg.value(metadata i64 %187, metadata !2912, metadata !DIExpression()), !dbg !2975
  br i1 %104, label %188, label %478, !dbg !3088

; <label>:188:                                    ; preds = %186
  %189 = add i64 %122, 1, !dbg !3090
  %190 = icmp ult i64 %189, %154, !dbg !3091
  br i1 %190, label %191, label %467, !dbg !3092

; <label>:191:                                    ; preds = %188
  %192 = getelementptr inbounds i8, i8* %2, i64 %189, !dbg !3093
  %193 = load i8, i8* %192, align 1, !dbg !3093, !tbaa !1129
  %194 = add i8 %193, -48, !dbg !3094
  %195 = icmp ult i8 %194, 10, !dbg !3094
  br i1 %195, label %196, label %467, !dbg !3094

; <label>:196:                                    ; preds = %191
  %197 = icmp ult i64 %187, %129, !dbg !3095
  br i1 %197, label %198, label %200, !dbg !3099

; <label>:198:                                    ; preds = %196
  %199 = getelementptr inbounds i8, i8* %0, i64 %187, !dbg !3095
  store i8 48, i8* %199, align 1, !dbg !3095, !tbaa !1129
  br label %200, !dbg !3095

; <label>:200:                                    ; preds = %198, %196
  %201 = add i64 %181, 2, !dbg !3099
  call void @llvm.dbg.value(metadata i64 %201, metadata !2912, metadata !DIExpression()), !dbg !2975
  %202 = icmp ult i64 %201, %129, !dbg !3100
  br i1 %202, label %203, label %205, !dbg !3103

; <label>:203:                                    ; preds = %200
  %204 = getelementptr inbounds i8, i8* %0, i64 %201, !dbg !3100
  store i8 48, i8* %204, align 1, !dbg !3100, !tbaa !1129
  br label %205, !dbg !3100

; <label>:205:                                    ; preds = %203, %200
  %206 = add i64 %181, 3, !dbg !3103
  call void @llvm.dbg.value(metadata i64 %206, metadata !2912, metadata !DIExpression()), !dbg !2975
  br label %467, !dbg !3104

; <label>:207:                                    ; preds = %158
  br i1 %22, label %478, label %607, !dbg !3105

; <label>:208:                                    ; preds = %153
  switch i32 %94, label %467 [
    i32 2, label %209
    i32 5, label %210
  ], !dbg !3106

; <label>:209:                                    ; preds = %208
  br i1 %110, label %467, label %661, !dbg !3107

; <label>:210:                                    ; preds = %208
  br i1 %24, label %467, label %211, !dbg !3109

; <label>:211:                                    ; preds = %210
  %212 = add i64 %122, 2, !dbg !3111
  %213 = icmp ult i64 %212, %154, !dbg !3112
  br i1 %213, label %214, label %467, !dbg !3113

; <label>:214:                                    ; preds = %211
  %215 = add i64 %122, 1, !dbg !3114
  %216 = getelementptr inbounds i8, i8* %2, i64 %215, !dbg !3115
  %217 = load i8, i8* %216, align 1, !dbg !3115, !tbaa !1129
  %218 = icmp eq i8 %217, 63, !dbg !3116
  br i1 %218, label %219, label %467, !dbg !3117

; <label>:219:                                    ; preds = %214
  %220 = getelementptr inbounds i8, i8* %2, i64 %212, !dbg !3118
  %221 = load i8, i8* %220, align 1, !dbg !3118, !tbaa !1129
  %222 = sext i8 %221 to i32, !dbg !3118
  switch i32 %222, label %467 [
    i32 33, label %223
    i32 39, label %223
    i32 40, label %223
    i32 41, label %223
    i32 45, label %223
    i32 47, label %223
    i32 60, label %223
    i32 61, label %223
    i32 62, label %223
  ], !dbg !3119

; <label>:223:                                    ; preds = %219, %219, %219, %219, %219, %219, %219, %219, %219
  br i1 %110, label %224, label %661, !dbg !3120

; <label>:224:                                    ; preds = %223
  call void @llvm.dbg.value(metadata i8 %221, metadata !2922, metadata !DIExpression()), !dbg !3061
  call void @llvm.dbg.value(metadata i64 %212, metadata !2911, metadata !DIExpression()), !dbg !3035
  %225 = icmp ult i64 %123, %129, !dbg !3122
  br i1 %225, label %226, label %228, !dbg !3125

; <label>:226:                                    ; preds = %224
  %227 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !3122
  store i8 63, i8* %227, align 1, !dbg !3122, !tbaa !1129
  br label %228, !dbg !3122

; <label>:228:                                    ; preds = %226, %224
  %229 = add i64 %123, 1, !dbg !3125
  call void @llvm.dbg.value(metadata i64 %229, metadata !2912, metadata !DIExpression()), !dbg !2975
  %230 = icmp ult i64 %229, %129, !dbg !3126
  br i1 %230, label %231, label %233, !dbg !3129

; <label>:231:                                    ; preds = %228
  %232 = getelementptr inbounds i8, i8* %0, i64 %229, !dbg !3126
  store i8 34, i8* %232, align 1, !dbg !3126, !tbaa !1129
  br label %233, !dbg !3126

; <label>:233:                                    ; preds = %231, %228
  %234 = add i64 %123, 2, !dbg !3129
  call void @llvm.dbg.value(metadata i64 %234, metadata !2912, metadata !DIExpression()), !dbg !2975
  %235 = icmp ult i64 %234, %129, !dbg !3130
  br i1 %235, label %236, label %238, !dbg !3133

; <label>:236:                                    ; preds = %233
  %237 = getelementptr inbounds i8, i8* %0, i64 %234, !dbg !3130
  store i8 34, i8* %237, align 1, !dbg !3130, !tbaa !1129
  br label %238, !dbg !3130

; <label>:238:                                    ; preds = %236, %233
  %239 = add i64 %123, 3, !dbg !3133
  call void @llvm.dbg.value(metadata i64 %239, metadata !2912, metadata !DIExpression()), !dbg !2975
  %240 = icmp ult i64 %239, %129, !dbg !3134
  br i1 %240, label %241, label %243, !dbg !3137

; <label>:241:                                    ; preds = %238
  %242 = getelementptr inbounds i8, i8* %0, i64 %239, !dbg !3134
  store i8 63, i8* %242, align 1, !dbg !3134, !tbaa !1129
  br label %243, !dbg !3134

; <label>:243:                                    ; preds = %241, %238
  %244 = add i64 %123, 4, !dbg !3137
  call void @llvm.dbg.value(metadata i64 %244, metadata !2912, metadata !DIExpression()), !dbg !2975
  br label %467, !dbg !3138

; <label>:245:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 98, metadata !2926, metadata !DIExpression()), !dbg !3139
  br label %255, !dbg !3140

; <label>:246:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 102, metadata !2926, metadata !DIExpression()), !dbg !3139
  br label %255, !dbg !3141

; <label>:247:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 114, metadata !2926, metadata !DIExpression()), !dbg !3139
  br label %253, !dbg !3142

; <label>:248:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 116, metadata !2926, metadata !DIExpression()), !dbg !3139
  br label %253, !dbg !3143

; <label>:249:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 118, metadata !2926, metadata !DIExpression()), !dbg !3139
  br label %255, !dbg !3144

; <label>:250:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 %157, metadata !2926, metadata !DIExpression()), !dbg !3139
  br i1 %114, label %251, label %252, !dbg !3145

; <label>:251:                                    ; preds = %250
  br i1 %110, label %562, label %661, !dbg !3146

; <label>:252:                                    ; preds = %250
  br i1 %120, label %562, label %253, !dbg !3149

; <label>:253:                                    ; preds = %252, %153, %248, %247
  %254 = phi i8 [ 92, %252 ], [ 116, %248 ], [ 114, %247 ], [ 110, %153 ], !dbg !3151
  call void @llvm.dbg.value(metadata i8 %254, metadata !2926, metadata !DIExpression()), !dbg !3139
  br i1 %113, label %255, label %661, !dbg !3152

; <label>:255:                                    ; preds = %253, %153, %249, %246, %245
  %256 = phi i8 [ %254, %253 ], [ 118, %249 ], [ 102, %246 ], [ 98, %245 ], [ 97, %153 ], !dbg !3151
  call void @llvm.dbg.value(metadata i8 %256, metadata !2926, metadata !DIExpression()), !dbg !3139
  br i1 %103, label %524, label %478, !dbg !3154

; <label>:257:                                    ; preds = %153, %153
  %258 = icmp eq i64 %154, -1, !dbg !3155
  br i1 %258, label %259, label %264, !dbg !3157

; <label>:259:                                    ; preds = %257
  %260 = load i8, i8* %25, align 1, !dbg !3158, !tbaa !1129
  %261 = icmp ne i8 %260, 0, !dbg !3159
  %262 = icmp ne i64 %122, 0, !dbg !3160
  %263 = or i1 %262, %261, !dbg !3162
  br i1 %263, label %467, label %270, !dbg !3162

; <label>:264:                                    ; preds = %257
  %265 = icmp ne i64 %154, 1, !dbg !3163
  %266 = icmp ne i64 %122, 0, !dbg !3160
  %267 = or i1 %266, %265, !dbg !3157
  br i1 %267, label %467, label %270, !dbg !3157

; <label>:268:                                    ; preds = %153, %153
  %269 = icmp eq i64 %122, 0, !dbg !3160
  br i1 %269, label %270, label %467, !dbg !3164

; <label>:270:                                    ; preds = %268, %264, %259, %153
  call void @llvm.dbg.value(metadata i8 1, metadata !2929, metadata !DIExpression()), !dbg !3046
  br label %271, !dbg !3165

; <label>:271:                                    ; preds = %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %270
  %272 = phi i8 [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 1, %270 ], !dbg !3151
  call void @llvm.dbg.value(metadata i8 %272, metadata !2929, metadata !DIExpression()), !dbg !3046
  br i1 %113, label %467, label %661, !dbg !3166

; <label>:273:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 1, metadata !2920, metadata !DIExpression()), !dbg !2984
  call void @llvm.dbg.value(metadata i8 1, metadata !2929, metadata !DIExpression()), !dbg !3046
  br i1 %114, label %274, label %467, !dbg !3168

; <label>:274:                                    ; preds = %273
  br i1 %110, label %275, label %661, !dbg !3169

; <label>:275:                                    ; preds = %274
  %276 = icmp eq i64 %129, 0, !dbg !3172
  %277 = icmp ne i64 %124, 0, !dbg !3174
  %278 = or i1 %277, %276, !dbg !3175
  %279 = select i1 %278, i64 %124, i64 %129, !dbg !3175
  %280 = select i1 %278, i64 %129, i64 0, !dbg !3175
  call void @llvm.dbg.value(metadata i64 %280, metadata !2903, metadata !DIExpression()), !dbg !2967
  call void @llvm.dbg.value(metadata i64 %279, metadata !2913, metadata !DIExpression()), !dbg !2976
  %281 = icmp ult i64 %123, %280, !dbg !3176
  br i1 %281, label %282, label %284, !dbg !3179

; <label>:282:                                    ; preds = %275
  %283 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !3176
  store i8 39, i8* %283, align 1, !dbg !3176, !tbaa !1129
  br label %284, !dbg !3176

; <label>:284:                                    ; preds = %282, %275
  %285 = add i64 %123, 1, !dbg !3179
  call void @llvm.dbg.value(metadata i64 %285, metadata !2912, metadata !DIExpression()), !dbg !2975
  %286 = icmp ult i64 %285, %280, !dbg !3180
  br i1 %286, label %287, label %289, !dbg !3183

; <label>:287:                                    ; preds = %284
  %288 = getelementptr inbounds i8, i8* %0, i64 %285, !dbg !3180
  store i8 92, i8* %288, align 1, !dbg !3180, !tbaa !1129
  br label %289, !dbg !3180

; <label>:289:                                    ; preds = %287, %284
  %290 = add i64 %123, 2, !dbg !3183
  call void @llvm.dbg.value(metadata i64 %290, metadata !2912, metadata !DIExpression()), !dbg !2975
  %291 = icmp ult i64 %290, %280, !dbg !3184
  br i1 %291, label %292, label %294, !dbg !3187

; <label>:292:                                    ; preds = %289
  %293 = getelementptr inbounds i8, i8* %0, i64 %290, !dbg !3184
  store i8 39, i8* %293, align 1, !dbg !3184, !tbaa !1129
  br label %294, !dbg !3184

; <label>:294:                                    ; preds = %292, %289
  %295 = add i64 %123, 3, !dbg !3187
  call void @llvm.dbg.value(metadata i64 %295, metadata !2912, metadata !DIExpression()), !dbg !2975
  call void @llvm.dbg.value(metadata i8 0, metadata !2919, metadata !DIExpression()), !dbg !2983
  br label %467, !dbg !3188

; <label>:296:                                    ; preds = %153
  br i1 %14, label %297, label %306, !dbg !3189

; <label>:297:                                    ; preds = %296
  call void @llvm.dbg.value(metadata i64 1, metadata !2930, metadata !DIExpression()), !dbg !3190
  %298 = tail call i16** @__ctype_b_loc() #17, !dbg !3191
  %299 = load i16*, i16** %298, align 8, !dbg !3191, !tbaa !835
  %300 = zext i8 %157 to i64, !dbg !3191
  %301 = getelementptr inbounds i16, i16* %299, i64 %300, !dbg !3191
  %302 = load i16, i16* %301, align 2, !dbg !3191, !tbaa !1288
  %303 = lshr i16 %302, 14, !dbg !3193
  %304 = trunc i16 %303 to i8, !dbg !3193
  %305 = and i8 %304, 1, !dbg !3193
  call void @llvm.dbg.value(metadata i8 %305, metadata !2933, metadata !DIExpression()), !dbg !3194
  br label %359, !dbg !3195

; <label>:306:                                    ; preds = %296
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %19) #10, !dbg !3196
  store i64 0, i64* %10, align 8, !dbg !3197
  call void @llvm.dbg.value(metadata i64 0, metadata !2930, metadata !DIExpression()), !dbg !3190
  call void @llvm.dbg.value(metadata i8 1, metadata !2933, metadata !DIExpression()), !dbg !3194
  %307 = icmp eq i64 %154, -1, !dbg !3198
  br i1 %307, label %308, label %310, !dbg !3200

; <label>:308:                                    ; preds = %306
  %309 = call i64 @strlen(i8* nonnull %2) #14, !dbg !3201
  call void @llvm.dbg.value(metadata i64 %309, metadata !2905, metadata !DIExpression()), !dbg !2969
  br label %310, !dbg !3202

; <label>:310:                                    ; preds = %308, %306
  %311 = phi i64 [ %309, %308 ], [ %154, %306 ], !dbg !3203
  call void @llvm.dbg.value(metadata i64 %311, metadata !2905, metadata !DIExpression()), !dbg !2969
  br label %312, !dbg !3204

; <label>:312:                                    ; preds = %347, %310
  %313 = phi i64 [ 0, %310 ], [ %352, %347 ], !dbg !3205
  %314 = phi i8 [ 1, %310 ], [ %351, %347 ], !dbg !3206
  call void @llvm.dbg.value(metadata i8 %314, metadata !2933, metadata !DIExpression()), !dbg !3194
  call void @llvm.dbg.value(metadata i64 %313, metadata !2930, metadata !DIExpression()), !dbg !3190
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %26) #10, !dbg !3207
  %315 = add i64 %313, %122, !dbg !3208
  %316 = getelementptr inbounds i8, i8* %2, i64 %315, !dbg !3209
  %317 = sub i64 %311, %315, !dbg !3210
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, metadata !2934, metadata !DIExpression(DW_OP_deref)), !dbg !3211
  call void @llvm.dbg.value(metadata i32* %12, metadata !2952, metadata !DIExpression(DW_OP_deref)), !dbg !3212
  %318 = call i64 @rpl_mbrtowc(i32* nonnull %12, i8* %316, i64 %317, %struct.__mbstate_t* nonnull %11) #10, !dbg !3213
  call void @llvm.dbg.value(metadata i64 %318, metadata !2955, metadata !DIExpression()), !dbg !3214
  switch i64 %318, label %331 [
    i64 0, label %343
    i64 -1, label %344
    i64 -2, label %319
  ], !dbg !3215

; <label>:319:                                    ; preds = %312
  call void @llvm.dbg.value(metadata i64 %313, metadata !2930, metadata !DIExpression()), !dbg !3190
  call void @llvm.dbg.value(metadata i64 %313, metadata !2930, metadata !DIExpression()), !dbg !3190
  call void @llvm.dbg.value(metadata i64 %313, metadata !2930, metadata !DIExpression()), !dbg !3190
  call void @llvm.dbg.value(metadata i64 %313, metadata !2930, metadata !DIExpression()), !dbg !3190
  call void @llvm.dbg.value(metadata i64 %313, metadata !2930, metadata !DIExpression()), !dbg !3190
  call void @llvm.dbg.value(metadata i64 %313, metadata !2930, metadata !DIExpression()), !dbg !3190
  %320 = icmp ugt i64 %311, %315, !dbg !3216
  br i1 %320, label %321, label %344, !dbg !3218

; <label>:321:                                    ; preds = %319, %327
  %322 = phi i64 [ %329, %327 ], [ %315, %319 ]
  %323 = phi i64 [ %328, %327 ], [ %313, %319 ]
  call void @llvm.dbg.value(metadata i64 %323, metadata !2930, metadata !DIExpression()), !dbg !3190
  %324 = getelementptr inbounds i8, i8* %2, i64 %322, !dbg !3219
  %325 = load i8, i8* %324, align 1, !dbg !3219, !tbaa !1129
  %326 = icmp eq i8 %325, 0, !dbg !3218
  br i1 %326, label %344, label %327, !dbg !3220

; <label>:327:                                    ; preds = %321
  %328 = add i64 %323, 1, !dbg !3221
  call void @llvm.dbg.value(metadata i64 %328, metadata !2930, metadata !DIExpression()), !dbg !3190
  %329 = add i64 %328, %122, !dbg !3222
  %330 = icmp ult i64 %329, %311, !dbg !3216
  br i1 %330, label %321, label %344, !dbg !3218, !llvm.loop !3223

; <label>:331:                                    ; preds = %312
  %332 = icmp ugt i64 %318, 1, !dbg !3224
  %333 = and i1 %116, %332, !dbg !3227
  call void @llvm.dbg.value(metadata i64 1, metadata !2956, metadata !DIExpression()), !dbg !3228
  br i1 %333, label %334, label %347, !dbg !3227

; <label>:334:                                    ; preds = %331, %340
  %335 = phi i64 [ %341, %340 ], [ 1, %331 ]
  call void @llvm.dbg.value(metadata i64 %335, metadata !2956, metadata !DIExpression()), !dbg !3228
  %336 = add i64 %335, %315, !dbg !3229
  %337 = getelementptr inbounds i8, i8* %2, i64 %336, !dbg !3230
  %338 = load i8, i8* %337, align 1, !dbg !3230, !tbaa !1129
  %339 = sext i8 %338 to i32, !dbg !3230
  switch i32 %339, label %340 [
    i32 91, label %358
    i32 92, label %358
    i32 94, label %358
    i32 96, label %358
    i32 124, label %358
  ], !dbg !3231

; <label>:340:                                    ; preds = %334
  %341 = add nuw i64 %335, 1, !dbg !3232
  call void @llvm.dbg.value(metadata i64 %341, metadata !2956, metadata !DIExpression()), !dbg !3228
  %342 = icmp ult i64 %341, %318, !dbg !3224
  br i1 %342, label %334, label %347, !dbg !3233, !llvm.loop !3234

; <label>:343:                                    ; preds = %312
  call void @llvm.dbg.value(metadata i64 %313, metadata !2930, metadata !DIExpression()), !dbg !3190
  call void @llvm.dbg.value(metadata i8 %314, metadata !2933, metadata !DIExpression()), !dbg !3194
  call void @llvm.dbg.value(metadata i64 %313, metadata !2930, metadata !DIExpression()), !dbg !3190
  call void @llvm.dbg.value(metadata i8 %314, metadata !2933, metadata !DIExpression()), !dbg !3194
  br label %344, !dbg !3236

; <label>:344:                                    ; preds = %327, %321, %312, %343, %319
  %345 = phi i64 [ %313, %319 ], [ %313, %343 ], [ %313, %312 ], [ %323, %321 ], [ %328, %327 ]
  %346 = phi i8 [ 0, %319 ], [ %314, %343 ], [ 0, %312 ], [ 0, %321 ], [ 0, %327 ]
  call void @llvm.dbg.value(metadata i8 %351, metadata !2933, metadata !DIExpression()), !dbg !3194
  call void @llvm.dbg.value(metadata i64 %352, metadata !2930, metadata !DIExpression()), !dbg !3190
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %26) #10, !dbg !3236
  br label %355

; <label>:347:                                    ; preds = %340, %331
  %348 = load i32, i32* %12, align 4, !dbg !3237, !tbaa !1043
  call void @llvm.dbg.value(metadata i32 %348, metadata !2952, metadata !DIExpression()), !dbg !3212
  %349 = call i32 @iswprint(i32 %348) #10, !dbg !3239
  %350 = icmp eq i32 %349, 0, !dbg !3239
  %351 = select i1 %350, i8 0, i8 %314, !dbg !3240
  call void @llvm.dbg.value(metadata i8 %351, metadata !2933, metadata !DIExpression()), !dbg !3194
  %352 = add i64 %318, %313, !dbg !3241
  call void @llvm.dbg.value(metadata i64 %352, metadata !2930, metadata !DIExpression()), !dbg !3190
  call void @llvm.dbg.value(metadata i8 %351, metadata !2933, metadata !DIExpression()), !dbg !3194
  call void @llvm.dbg.value(metadata i64 %352, metadata !2930, metadata !DIExpression()), !dbg !3190
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %26) #10, !dbg !3236
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, metadata !2934, metadata !DIExpression(DW_OP_deref)), !dbg !3211
  %353 = call i32 @mbsinit(%struct.__mbstate_t* nonnull %11) #14, !dbg !3242
  %354 = icmp eq i32 %353, 0, !dbg !3243
  br i1 %354, label %312, label %355, !dbg !3244, !llvm.loop !3245

; <label>:355:                                    ; preds = %347, %344
  %356 = phi i8 [ %346, %344 ], [ %351, %347 ]
  %357 = phi i64 [ %345, %344 ], [ %352, %347 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %19) #10, !dbg !3247
  br label %359

; <label>:358:                                    ; preds = %334, %334, %334, %334, %334
  call void @llvm.dbg.value(metadata i8* %95, metadata !2909, metadata !DIExpression()), !dbg !2973
  call void @llvm.dbg.value(metadata i8* %95, metadata !2909, metadata !DIExpression()), !dbg !2973
  call void @llvm.dbg.value(metadata i8* %95, metadata !2909, metadata !DIExpression()), !dbg !2973
  call void @llvm.dbg.value(metadata i8* %95, metadata !2909, metadata !DIExpression()), !dbg !2973
  call void @llvm.dbg.value(metadata i8* %95, metadata !2909, metadata !DIExpression()), !dbg !2973
  call void @llvm.dbg.value(metadata i8* %96, metadata !2910, metadata !DIExpression()), !dbg !2974
  call void @llvm.dbg.value(metadata i8* %96, metadata !2910, metadata !DIExpression()), !dbg !2974
  call void @llvm.dbg.value(metadata i8* %96, metadata !2910, metadata !DIExpression()), !dbg !2974
  call void @llvm.dbg.value(metadata i8* %96, metadata !2910, metadata !DIExpression()), !dbg !2974
  call void @llvm.dbg.value(metadata i8* %96, metadata !2910, metadata !DIExpression()), !dbg !2974
  call void @llvm.dbg.value(metadata i64 %129, metadata !2903, metadata !DIExpression()), !dbg !2967
  call void @llvm.dbg.value(metadata i64 %129, metadata !2903, metadata !DIExpression()), !dbg !2967
  call void @llvm.dbg.value(metadata i64 %129, metadata !2903, metadata !DIExpression()), !dbg !2967
  call void @llvm.dbg.value(metadata i64 %129, metadata !2903, metadata !DIExpression()), !dbg !2967
  call void @llvm.dbg.value(metadata i64 %129, metadata !2903, metadata !DIExpression()), !dbg !2967
  call void @llvm.dbg.value(metadata i64 %311, metadata !2905, metadata !DIExpression()), !dbg !2969
  call void @llvm.dbg.value(metadata i64 %311, metadata !2905, metadata !DIExpression()), !dbg !2969
  call void @llvm.dbg.value(metadata i64 %311, metadata !2905, metadata !DIExpression()), !dbg !2969
  call void @llvm.dbg.value(metadata i64 %311, metadata !2905, metadata !DIExpression()), !dbg !2969
  call void @llvm.dbg.value(metadata i64 %311, metadata !2905, metadata !DIExpression()), !dbg !2969
  call void @llvm.dbg.value(metadata i8* %95, metadata !2909, metadata !DIExpression()), !dbg !2973
  call void @llvm.dbg.value(metadata i8* %95, metadata !2909, metadata !DIExpression()), !dbg !2973
  call void @llvm.dbg.value(metadata i8* %95, metadata !2909, metadata !DIExpression()), !dbg !2973
  call void @llvm.dbg.value(metadata i8* %95, metadata !2909, metadata !DIExpression()), !dbg !2973
  call void @llvm.dbg.value(metadata i8* %95, metadata !2909, metadata !DIExpression()), !dbg !2973
  call void @llvm.dbg.value(metadata i8* %96, metadata !2910, metadata !DIExpression()), !dbg !2974
  call void @llvm.dbg.value(metadata i8* %96, metadata !2910, metadata !DIExpression()), !dbg !2974
  call void @llvm.dbg.value(metadata i8* %96, metadata !2910, metadata !DIExpression()), !dbg !2974
  call void @llvm.dbg.value(metadata i8* %96, metadata !2910, metadata !DIExpression()), !dbg !2974
  call void @llvm.dbg.value(metadata i8* %96, metadata !2910, metadata !DIExpression()), !dbg !2974
  call void @llvm.dbg.value(metadata i64 %129, metadata !2903, metadata !DIExpression()), !dbg !2967
  call void @llvm.dbg.value(metadata i64 %129, metadata !2903, metadata !DIExpression()), !dbg !2967
  call void @llvm.dbg.value(metadata i64 %129, metadata !2903, metadata !DIExpression()), !dbg !2967
  call void @llvm.dbg.value(metadata i64 %129, metadata !2903, metadata !DIExpression()), !dbg !2967
  call void @llvm.dbg.value(metadata i64 %129, metadata !2903, metadata !DIExpression()), !dbg !2967
  call void @llvm.dbg.value(metadata i64 %311, metadata !2905, metadata !DIExpression()), !dbg !2969
  call void @llvm.dbg.value(metadata i64 %311, metadata !2905, metadata !DIExpression()), !dbg !2969
  call void @llvm.dbg.value(metadata i64 %311, metadata !2905, metadata !DIExpression()), !dbg !2969
  call void @llvm.dbg.value(metadata i64 %311, metadata !2905, metadata !DIExpression()), !dbg !2969
  call void @llvm.dbg.value(metadata i64 %311, metadata !2905, metadata !DIExpression()), !dbg !2969
  call void @llvm.dbg.value(metadata i8* %95, metadata !2909, metadata !DIExpression()), !dbg !2973
  call void @llvm.dbg.value(metadata i8* %95, metadata !2909, metadata !DIExpression()), !dbg !2973
  call void @llvm.dbg.value(metadata i8* %95, metadata !2909, metadata !DIExpression()), !dbg !2973
  call void @llvm.dbg.value(metadata i8* %95, metadata !2909, metadata !DIExpression()), !dbg !2973
  call void @llvm.dbg.value(metadata i8* %95, metadata !2909, metadata !DIExpression()), !dbg !2973
  call void @llvm.dbg.value(metadata i8* %96, metadata !2910, metadata !DIExpression()), !dbg !2974
  call void @llvm.dbg.value(metadata i8* %96, metadata !2910, metadata !DIExpression()), !dbg !2974
  call void @llvm.dbg.value(metadata i8* %96, metadata !2910, metadata !DIExpression()), !dbg !2974
  call void @llvm.dbg.value(metadata i8* %96, metadata !2910, metadata !DIExpression()), !dbg !2974
  call void @llvm.dbg.value(metadata i8* %96, metadata !2910, metadata !DIExpression()), !dbg !2974
  call void @llvm.dbg.value(metadata i64 %129, metadata !2903, metadata !DIExpression()), !dbg !2967
  call void @llvm.dbg.value(metadata i64 %129, metadata !2903, metadata !DIExpression()), !dbg !2967
  call void @llvm.dbg.value(metadata i64 %129, metadata !2903, metadata !DIExpression()), !dbg !2967
  call void @llvm.dbg.value(metadata i64 %129, metadata !2903, metadata !DIExpression()), !dbg !2967
  call void @llvm.dbg.value(metadata i64 %129, metadata !2903, metadata !DIExpression()), !dbg !2967
  call void @llvm.dbg.value(metadata i64 %311, metadata !2905, metadata !DIExpression()), !dbg !2969
  call void @llvm.dbg.value(metadata i64 %311, metadata !2905, metadata !DIExpression()), !dbg !2969
  call void @llvm.dbg.value(metadata i64 %311, metadata !2905, metadata !DIExpression()), !dbg !2969
  call void @llvm.dbg.value(metadata i64 %311, metadata !2905, metadata !DIExpression()), !dbg !2969
  call void @llvm.dbg.value(metadata i64 %311, metadata !2905, metadata !DIExpression()), !dbg !2969
  call void @llvm.dbg.value(metadata i8* %95, metadata !2909, metadata !DIExpression()), !dbg !2973
  call void @llvm.dbg.value(metadata i8* %95, metadata !2909, metadata !DIExpression()), !dbg !2973
  call void @llvm.dbg.value(metadata i8* %95, metadata !2909, metadata !DIExpression()), !dbg !2973
  call void @llvm.dbg.value(metadata i8* %95, metadata !2909, metadata !DIExpression()), !dbg !2973
  call void @llvm.dbg.value(metadata i8* %95, metadata !2909, metadata !DIExpression()), !dbg !2973
  call void @llvm.dbg.value(metadata i8* %96, metadata !2910, metadata !DIExpression()), !dbg !2974
  call void @llvm.dbg.value(metadata i8* %96, metadata !2910, metadata !DIExpression()), !dbg !2974
  call void @llvm.dbg.value(metadata i8* %96, metadata !2910, metadata !DIExpression()), !dbg !2974
  call void @llvm.dbg.value(metadata i8* %96, metadata !2910, metadata !DIExpression()), !dbg !2974
  call void @llvm.dbg.value(metadata i8* %96, metadata !2910, metadata !DIExpression()), !dbg !2974
  call void @llvm.dbg.value(metadata i64 %129, metadata !2903, metadata !DIExpression()), !dbg !2967
  call void @llvm.dbg.value(metadata i64 %129, metadata !2903, metadata !DIExpression()), !dbg !2967
  call void @llvm.dbg.value(metadata i64 %129, metadata !2903, metadata !DIExpression()), !dbg !2967
  call void @llvm.dbg.value(metadata i64 %129, metadata !2903, metadata !DIExpression()), !dbg !2967
  call void @llvm.dbg.value(metadata i64 %129, metadata !2903, metadata !DIExpression()), !dbg !2967
  call void @llvm.dbg.value(metadata i64 %311, metadata !2905, metadata !DIExpression()), !dbg !2969
  call void @llvm.dbg.value(metadata i64 %311, metadata !2905, metadata !DIExpression()), !dbg !2969
  call void @llvm.dbg.value(metadata i64 %311, metadata !2905, metadata !DIExpression()), !dbg !2969
  call void @llvm.dbg.value(metadata i64 %311, metadata !2905, metadata !DIExpression()), !dbg !2969
  call void @llvm.dbg.value(metadata i64 %311, metadata !2905, metadata !DIExpression()), !dbg !2969
  call void @llvm.dbg.value(metadata i32 2, metadata !2906, metadata !DIExpression()), !dbg !2970
  call void @llvm.dbg.value(metadata i32 2, metadata !2906, metadata !DIExpression()), !dbg !2970
  call void @llvm.dbg.value(metadata i32 2, metadata !2906, metadata !DIExpression()), !dbg !2970
  call void @llvm.dbg.value(metadata i32 2, metadata !2906, metadata !DIExpression()), !dbg !2970
  call void @llvm.dbg.value(metadata i32 2, metadata !2906, metadata !DIExpression()), !dbg !2970
  call void @llvm.dbg.value(metadata i8* %95, metadata !2909, metadata !DIExpression()), !dbg !2973
  call void @llvm.dbg.value(metadata i8* %95, metadata !2909, metadata !DIExpression()), !dbg !2973
  call void @llvm.dbg.value(metadata i8* %95, metadata !2909, metadata !DIExpression()), !dbg !2973
  call void @llvm.dbg.value(metadata i8* %95, metadata !2909, metadata !DIExpression()), !dbg !2973
  call void @llvm.dbg.value(metadata i8* %95, metadata !2909, metadata !DIExpression()), !dbg !2973
  call void @llvm.dbg.value(metadata i8* %96, metadata !2910, metadata !DIExpression()), !dbg !2974
  call void @llvm.dbg.value(metadata i8* %96, metadata !2910, metadata !DIExpression()), !dbg !2974
  call void @llvm.dbg.value(metadata i8* %96, metadata !2910, metadata !DIExpression()), !dbg !2974
  call void @llvm.dbg.value(metadata i8* %96, metadata !2910, metadata !DIExpression()), !dbg !2974
  call void @llvm.dbg.value(metadata i8* %96, metadata !2910, metadata !DIExpression()), !dbg !2974
  call void @llvm.dbg.value(metadata i8 %100, metadata !2916, metadata !DIExpression()), !dbg !2979
  call void @llvm.dbg.value(metadata i8 %100, metadata !2916, metadata !DIExpression()), !dbg !2979
  call void @llvm.dbg.value(metadata i8 %100, metadata !2916, metadata !DIExpression()), !dbg !2979
  call void @llvm.dbg.value(metadata i8 %100, metadata !2916, metadata !DIExpression()), !dbg !2979
  call void @llvm.dbg.value(metadata i8 %100, metadata !2916, metadata !DIExpression()), !dbg !2979
  call void @llvm.dbg.value(metadata i64 %129, metadata !2903, metadata !DIExpression()), !dbg !2967
  call void @llvm.dbg.value(metadata i64 %129, metadata !2903, metadata !DIExpression()), !dbg !2967
  call void @llvm.dbg.value(metadata i64 %129, metadata !2903, metadata !DIExpression()), !dbg !2967
  call void @llvm.dbg.value(metadata i64 %129, metadata !2903, metadata !DIExpression()), !dbg !2967
  call void @llvm.dbg.value(metadata i64 %129, metadata !2903, metadata !DIExpression()), !dbg !2967
  call void @llvm.dbg.value(metadata i64 %311, metadata !2905, metadata !DIExpression()), !dbg !2969
  call void @llvm.dbg.value(metadata i64 %311, metadata !2905, metadata !DIExpression()), !dbg !2969
  call void @llvm.dbg.value(metadata i64 %311, metadata !2905, metadata !DIExpression()), !dbg !2969
  call void @llvm.dbg.value(metadata i64 %311, metadata !2905, metadata !DIExpression()), !dbg !2969
  call void @llvm.dbg.value(metadata i64 %311, metadata !2905, metadata !DIExpression()), !dbg !2969
  call void @llvm.dbg.value(metadata i32 %94, metadata !2906, metadata !DIExpression()), !dbg !2970
  call void @llvm.dbg.value(metadata i32 %94, metadata !2906, metadata !DIExpression()), !dbg !2970
  call void @llvm.dbg.value(metadata i32 %94, metadata !2906, metadata !DIExpression()), !dbg !2970
  call void @llvm.dbg.value(metadata i32 %94, metadata !2906, metadata !DIExpression()), !dbg !2970
  call void @llvm.dbg.value(metadata i32 %94, metadata !2906, metadata !DIExpression()), !dbg !2970
  call void @llvm.dbg.value(metadata i8* %95, metadata !2909, metadata !DIExpression()), !dbg !2973
  call void @llvm.dbg.value(metadata i8* %95, metadata !2909, metadata !DIExpression()), !dbg !2973
  call void @llvm.dbg.value(metadata i8* %95, metadata !2909, metadata !DIExpression()), !dbg !2973
  call void @llvm.dbg.value(metadata i8* %95, metadata !2909, metadata !DIExpression()), !dbg !2973
  call void @llvm.dbg.value(metadata i8* %95, metadata !2909, metadata !DIExpression()), !dbg !2973
  call void @llvm.dbg.value(metadata i8* %96, metadata !2910, metadata !DIExpression()), !dbg !2974
  call void @llvm.dbg.value(metadata i8* %96, metadata !2910, metadata !DIExpression()), !dbg !2974
  call void @llvm.dbg.value(metadata i8* %96, metadata !2910, metadata !DIExpression()), !dbg !2974
  call void @llvm.dbg.value(metadata i8* %96, metadata !2910, metadata !DIExpression()), !dbg !2974
  call void @llvm.dbg.value(metadata i8* %96, metadata !2910, metadata !DIExpression()), !dbg !2974
  call void @llvm.dbg.value(metadata i8 %100, metadata !2916, metadata !DIExpression()), !dbg !2979
  call void @llvm.dbg.value(metadata i8 %100, metadata !2916, metadata !DIExpression()), !dbg !2979
  call void @llvm.dbg.value(metadata i8 %100, metadata !2916, metadata !DIExpression()), !dbg !2979
  call void @llvm.dbg.value(metadata i8 %100, metadata !2916, metadata !DIExpression()), !dbg !2979
  call void @llvm.dbg.value(metadata i8 %100, metadata !2916, metadata !DIExpression()), !dbg !2979
  call void @llvm.dbg.value(metadata i64 %129, metadata !2903, metadata !DIExpression()), !dbg !2967
  call void @llvm.dbg.value(metadata i64 %129, metadata !2903, metadata !DIExpression()), !dbg !2967
  call void @llvm.dbg.value(metadata i64 %129, metadata !2903, metadata !DIExpression()), !dbg !2967
  call void @llvm.dbg.value(metadata i64 %129, metadata !2903, metadata !DIExpression()), !dbg !2967
  call void @llvm.dbg.value(metadata i64 %129, metadata !2903, metadata !DIExpression()), !dbg !2967
  call void @llvm.dbg.value(metadata i64 %311, metadata !2905, metadata !DIExpression()), !dbg !2969
  call void @llvm.dbg.value(metadata i64 %311, metadata !2905, metadata !DIExpression()), !dbg !2969
  call void @llvm.dbg.value(metadata i64 %311, metadata !2905, metadata !DIExpression()), !dbg !2969
  call void @llvm.dbg.value(metadata i64 %311, metadata !2905, metadata !DIExpression()), !dbg !2969
  call void @llvm.dbg.value(metadata i64 %311, metadata !2905, metadata !DIExpression()), !dbg !2969
  call void @llvm.dbg.value(metadata i8 %351, metadata !2933, metadata !DIExpression()), !dbg !3194
  call void @llvm.dbg.value(metadata i64 %352, metadata !2930, metadata !DIExpression()), !dbg !3190
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %26) #10, !dbg !3236
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %19) #10, !dbg !3247
  br label %661

; <label>:359:                                    ; preds = %355, %297
  %360 = phi i64 [ %154, %297 ], [ %311, %355 ], !dbg !3248
  %361 = phi i64 [ 1, %297 ], [ %357, %355 ], !dbg !3249
  %362 = phi i8 [ %305, %297 ], [ %356, %355 ], !dbg !3249
  call void @llvm.dbg.value(metadata i8 %362, metadata !2933, metadata !DIExpression()), !dbg !3194
  call void @llvm.dbg.value(metadata i64 %361, metadata !2930, metadata !DIExpression()), !dbg !3190
  call void @llvm.dbg.value(metadata i64 %360, metadata !2905, metadata !DIExpression()), !dbg !2969
  %363 = and i8 %362, 1, !dbg !3250
  %364 = icmp ne i8 %363, 0, !dbg !3250
  call void @llvm.dbg.value(metadata i8 %363, metadata !2929, metadata !DIExpression()), !dbg !3046
  %365 = icmp ult i64 %361, 2, !dbg !3251
  %366 = or i1 %364, %115, !dbg !3252
  %367 = and i1 %365, %366, !dbg !3253
  br i1 %367, label %467, label %368, !dbg !3253

; <label>:368:                                    ; preds = %359
  %369 = add i64 %361, %122, !dbg !3254
  call void @llvm.dbg.value(metadata i64 %369, metadata !2963, metadata !DIExpression()), !dbg !3255
  br label %370, !dbg !3256

; <label>:370:                                    ; preds = %463, %368
  %371 = phi i64 [ %122, %368 ], [ %438, %463 ], !dbg !3257
  %372 = phi i64 [ %123, %368 ], [ %464, %463 ], !dbg !3261
  %373 = phi i8 [ %126, %368 ], [ %459, %463 ], !dbg !2983
  %374 = phi i8 [ %157, %368 ], [ %466, %463 ], !dbg !3257
  %375 = phi i8 [ %155, %368 ], [ %436, %463 ], !dbg !3263
  %376 = phi i8 [ 0, %368 ], [ %437, %463 ], !dbg !3045
  call void @llvm.dbg.value(metadata i8 %376, metadata !2928, metadata !DIExpression()), !dbg !3045
  call void @llvm.dbg.value(metadata i8 %375, metadata !2927, metadata !DIExpression()), !dbg !3044
  call void @llvm.dbg.value(metadata i8 %374, metadata !2922, metadata !DIExpression()), !dbg !3061
  call void @llvm.dbg.value(metadata i8 %373, metadata !2919, metadata !DIExpression()), !dbg !2983
  call void @llvm.dbg.value(metadata i64 %372, metadata !2912, metadata !DIExpression()), !dbg !2975
  call void @llvm.dbg.value(metadata i64 %371, metadata !2911, metadata !DIExpression()), !dbg !3035
  br i1 %366, label %423, label %377, !dbg !3267

; <label>:377:                                    ; preds = %370
  br i1 %110, label %378, label %661, !dbg !3268

; <label>:378:                                    ; preds = %377
  call void @llvm.dbg.value(metadata i8 1, metadata !2928, metadata !DIExpression()), !dbg !3045
  %379 = and i8 %373, 1, !dbg !3271
  %380 = icmp eq i8 %379, 0, !dbg !3271
  %381 = and i1 %114, %380, !dbg !3271
  br i1 %381, label %382, label %398, !dbg !3271

; <label>:382:                                    ; preds = %378
  %383 = icmp ult i64 %372, %129, !dbg !3273
  br i1 %383, label %384, label %386, !dbg !3277

; <label>:384:                                    ; preds = %382
  %385 = getelementptr inbounds i8, i8* %0, i64 %372, !dbg !3273
  store i8 39, i8* %385, align 1, !dbg !3273, !tbaa !1129
  br label %386, !dbg !3273

; <label>:386:                                    ; preds = %384, %382
  %387 = add i64 %372, 1, !dbg !3277
  call void @llvm.dbg.value(metadata i64 %387, metadata !2912, metadata !DIExpression()), !dbg !2975
  %388 = icmp ult i64 %387, %129, !dbg !3278
  br i1 %388, label %389, label %391, !dbg !3281

; <label>:389:                                    ; preds = %386
  %390 = getelementptr inbounds i8, i8* %0, i64 %387, !dbg !3278
  store i8 36, i8* %390, align 1, !dbg !3278, !tbaa !1129
  br label %391, !dbg !3278

; <label>:391:                                    ; preds = %389, %386
  %392 = add i64 %372, 2, !dbg !3281
  call void @llvm.dbg.value(metadata i64 %392, metadata !2912, metadata !DIExpression()), !dbg !2975
  %393 = icmp ult i64 %392, %129, !dbg !3282
  br i1 %393, label %394, label %396, !dbg !3285

; <label>:394:                                    ; preds = %391
  %395 = getelementptr inbounds i8, i8* %0, i64 %392, !dbg !3282
  store i8 39, i8* %395, align 1, !dbg !3282, !tbaa !1129
  br label %396, !dbg !3282

; <label>:396:                                    ; preds = %394, %391
  %397 = add i64 %372, 3, !dbg !3285
  call void @llvm.dbg.value(metadata i64 %397, metadata !2912, metadata !DIExpression()), !dbg !2975
  call void @llvm.dbg.value(metadata i8 1, metadata !2919, metadata !DIExpression()), !dbg !2983
  br label %398, !dbg !3286

; <label>:398:                                    ; preds = %378, %396
  %399 = phi i64 [ %397, %396 ], [ %372, %378 ], !dbg !3034
  %400 = phi i8 [ 1, %396 ], [ %373, %378 ], !dbg !3034
  call void @llvm.dbg.value(metadata i8 %400, metadata !2919, metadata !DIExpression()), !dbg !2983
  call void @llvm.dbg.value(metadata i64 %399, metadata !2912, metadata !DIExpression()), !dbg !2975
  %401 = icmp ult i64 %399, %129, !dbg !3287
  br i1 %401, label %402, label %404, !dbg !3290

; <label>:402:                                    ; preds = %398
  %403 = getelementptr inbounds i8, i8* %0, i64 %399, !dbg !3287
  store i8 92, i8* %403, align 1, !dbg !3287, !tbaa !1129
  br label %404, !dbg !3287

; <label>:404:                                    ; preds = %402, %398
  %405 = add i64 %399, 1, !dbg !3290
  call void @llvm.dbg.value(metadata i64 %405, metadata !2912, metadata !DIExpression()), !dbg !2975
  %406 = icmp ult i64 %405, %129, !dbg !3291
  br i1 %406, label %407, label %411, !dbg !3294

; <label>:407:                                    ; preds = %404
  %408 = lshr i8 %374, 6, !dbg !3291
  %409 = or i8 %408, 48, !dbg !3291
  %410 = getelementptr inbounds i8, i8* %0, i64 %405, !dbg !3291
  store i8 %409, i8* %410, align 1, !dbg !3291, !tbaa !1129
  br label %411, !dbg !3291

; <label>:411:                                    ; preds = %407, %404
  %412 = add i64 %399, 2, !dbg !3294
  call void @llvm.dbg.value(metadata i64 %412, metadata !2912, metadata !DIExpression()), !dbg !2975
  %413 = icmp ult i64 %412, %129, !dbg !3295
  br i1 %413, label %414, label %419, !dbg !3298

; <label>:414:                                    ; preds = %411
  %415 = lshr i8 %374, 3, !dbg !3295
  %416 = and i8 %415, 7, !dbg !3295
  %417 = or i8 %416, 48, !dbg !3295
  %418 = getelementptr inbounds i8, i8* %0, i64 %412, !dbg !3295
  store i8 %417, i8* %418, align 1, !dbg !3295, !tbaa !1129
  br label %419, !dbg !3295

; <label>:419:                                    ; preds = %414, %411
  %420 = add i64 %399, 3, !dbg !3298
  call void @llvm.dbg.value(metadata i64 %420, metadata !2912, metadata !DIExpression()), !dbg !2975
  %421 = and i8 %374, 7, !dbg !3299
  %422 = or i8 %421, 48, !dbg !3300
  call void @llvm.dbg.value(metadata i8 %422, metadata !2922, metadata !DIExpression()), !dbg !3061
  br label %432, !dbg !3301

; <label>:423:                                    ; preds = %370
  %424 = and i8 %375, 1, !dbg !3302
  %425 = icmp eq i8 %424, 0, !dbg !3302
  br i1 %425, label %432, label %426, !dbg !3303

; <label>:426:                                    ; preds = %423
  %427 = icmp ult i64 %372, %129, !dbg !3304
  br i1 %427, label %428, label %430, !dbg !3307

; <label>:428:                                    ; preds = %426
  %429 = getelementptr inbounds i8, i8* %0, i64 %372, !dbg !3304
  store i8 92, i8* %429, align 1, !dbg !3304, !tbaa !1129
  br label %430, !dbg !3304

; <label>:430:                                    ; preds = %428, %426
  %431 = add i64 %372, 1, !dbg !3307
  call void @llvm.dbg.value(metadata i64 %431, metadata !2912, metadata !DIExpression()), !dbg !2975
  call void @llvm.dbg.value(metadata i8 0, metadata !2927, metadata !DIExpression()), !dbg !3044
  br label %432, !dbg !3308

; <label>:432:                                    ; preds = %423, %430, %419
  %433 = phi i64 [ %431, %430 ], [ %372, %423 ], [ %420, %419 ], !dbg !3309
  %434 = phi i8 [ %373, %430 ], [ %373, %423 ], [ %400, %419 ], !dbg !2983
  %435 = phi i8 [ %374, %430 ], [ %374, %423 ], [ %422, %419 ], !dbg !3310
  %436 = phi i8 [ 0, %430 ], [ %375, %423 ], [ %375, %419 ], !dbg !3311
  %437 = phi i8 [ %376, %430 ], [ %376, %423 ], [ 1, %419 ], !dbg !3313
  call void @llvm.dbg.value(metadata i8 %437, metadata !2928, metadata !DIExpression()), !dbg !3045
  call void @llvm.dbg.value(metadata i8 %436, metadata !2927, metadata !DIExpression()), !dbg !3044
  call void @llvm.dbg.value(metadata i8 %435, metadata !2922, metadata !DIExpression()), !dbg !3061
  call void @llvm.dbg.value(metadata i8 %434, metadata !2919, metadata !DIExpression()), !dbg !2983
  call void @llvm.dbg.value(metadata i64 %433, metadata !2912, metadata !DIExpression()), !dbg !2975
  %438 = add i64 %371, 1, !dbg !3314
  %439 = icmp ugt i64 %369, %438, !dbg !3316
  br i1 %439, label %440, label %562, !dbg !3317

; <label>:440:                                    ; preds = %432
  %441 = and i8 %434, 1, !dbg !3318
  %442 = icmp ne i8 %441, 0, !dbg !3318
  %443 = and i8 %437, 1, !dbg !3318
  %444 = icmp eq i8 %443, 0, !dbg !3318
  %445 = and i1 %442, %444, !dbg !3318
  br i1 %445, label %446, label %457, !dbg !3318

; <label>:446:                                    ; preds = %440
  %447 = icmp ult i64 %433, %129, !dbg !3321
  br i1 %447, label %448, label %450, !dbg !3325

; <label>:448:                                    ; preds = %446
  %449 = getelementptr inbounds i8, i8* %0, i64 %433, !dbg !3321
  store i8 39, i8* %449, align 1, !dbg !3321, !tbaa !1129
  br label %450, !dbg !3321

; <label>:450:                                    ; preds = %448, %446
  %451 = add i64 %433, 1, !dbg !3325
  call void @llvm.dbg.value(metadata i64 %451, metadata !2912, metadata !DIExpression()), !dbg !2975
  %452 = icmp ult i64 %451, %129, !dbg !3326
  br i1 %452, label %453, label %455, !dbg !3329

; <label>:453:                                    ; preds = %450
  %454 = getelementptr inbounds i8, i8* %0, i64 %451, !dbg !3326
  store i8 39, i8* %454, align 1, !dbg !3326, !tbaa !1129
  br label %455, !dbg !3326

; <label>:455:                                    ; preds = %453, %450
  %456 = add i64 %433, 2, !dbg !3329
  call void @llvm.dbg.value(metadata i64 %456, metadata !2912, metadata !DIExpression()), !dbg !2975
  call void @llvm.dbg.value(metadata i8 0, metadata !2919, metadata !DIExpression()), !dbg !2983
  br label %457, !dbg !3330

; <label>:457:                                    ; preds = %440, %455
  %458 = phi i64 [ %456, %455 ], [ %433, %440 ], !dbg !3331
  %459 = phi i8 [ 0, %455 ], [ %434, %440 ], !dbg !3034
  call void @llvm.dbg.value(metadata i8 %459, metadata !2919, metadata !DIExpression()), !dbg !2983
  call void @llvm.dbg.value(metadata i64 %458, metadata !2912, metadata !DIExpression()), !dbg !2975
  %460 = icmp ult i64 %458, %129, !dbg !3332
  br i1 %460, label %461, label %463, !dbg !3334

; <label>:461:                                    ; preds = %457
  %462 = getelementptr inbounds i8, i8* %0, i64 %458, !dbg !3332
  store i8 %435, i8* %462, align 1, !dbg !3332, !tbaa !1129
  br label %463, !dbg !3332

; <label>:463:                                    ; preds = %461, %457
  %464 = add i64 %458, 1, !dbg !3334
  call void @llvm.dbg.value(metadata i64 %464, metadata !2912, metadata !DIExpression()), !dbg !2975
  call void @llvm.dbg.value(metadata i64 %438, metadata !2911, metadata !DIExpression()), !dbg !3035
  %465 = getelementptr inbounds i8, i8* %2, i64 %438, !dbg !3335
  %466 = load i8, i8* %465, align 1, !dbg !3335, !tbaa !1129
  call void @llvm.dbg.value(metadata i8 %466, metadata !2922, metadata !DIExpression()), !dbg !3061
  br label %370, !dbg !3336, !llvm.loop !3337

; <label>:467:                                    ; preds = %359, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %271, %188, %191, %205, %209, %210, %268, %264, %259, %273, %294, %243, %219, %214, %211, %208
  %468 = phi i64 [ %122, %294 ], [ %122, %273 ], [ %122, %271 ], [ %122, %268 ], [ %122, %259 ], [ %122, %264 ], [ %122, %208 ], [ %122, %219 ], [ %212, %243 ], [ %122, %214 ], [ %122, %211 ], [ %122, %210 ], [ %122, %209 ], [ %122, %205 ], [ %122, %191 ], [ %122, %188 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %359 ], !dbg !3340
  %469 = phi i64 [ %295, %294 ], [ %123, %273 ], [ %123, %271 ], [ %123, %268 ], [ %123, %259 ], [ %123, %264 ], [ %123, %208 ], [ %123, %219 ], [ %244, %243 ], [ %123, %214 ], [ %123, %211 ], [ %123, %210 ], [ %123, %209 ], [ %206, %205 ], [ %187, %191 ], [ %187, %188 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %359 ], !dbg !3034
  %470 = phi i64 [ %279, %294 ], [ %124, %273 ], [ %124, %271 ], [ %124, %268 ], [ %124, %259 ], [ %124, %264 ], [ %124, %208 ], [ %124, %219 ], [ %124, %243 ], [ %124, %214 ], [ %124, %211 ], [ %124, %210 ], [ %124, %209 ], [ %124, %205 ], [ %124, %191 ], [ %124, %188 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %359 ], !dbg !2976
  %471 = phi i64 [ %154, %294 ], [ %154, %273 ], [ %154, %271 ], [ %154, %268 ], [ -1, %259 ], [ %154, %264 ], [ %154, %208 ], [ %154, %219 ], [ %154, %243 ], [ %154, %214 ], [ %154, %211 ], [ %154, %210 ], [ %154, %209 ], [ %154, %205 ], [ %154, %191 ], [ %154, %188 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %360, %359 ], !dbg !3341
  %472 = phi i8 [ 0, %294 ], [ %126, %273 ], [ %126, %271 ], [ %126, %268 ], [ %126, %259 ], [ %126, %264 ], [ %126, %208 ], [ %126, %219 ], [ %126, %243 ], [ %126, %214 ], [ %126, %211 ], [ %126, %210 ], [ %126, %209 ], [ %182, %205 ], [ %182, %191 ], [ %182, %188 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %359 ], !dbg !3034
  %473 = phi i8 [ 1, %294 ], [ 1, %273 ], [ %127, %271 ], [ %127, %268 ], [ %127, %259 ], [ %127, %264 ], [ %127, %208 ], [ %127, %219 ], [ %127, %243 ], [ %127, %214 ], [ %127, %211 ], [ %127, %210 ], [ %127, %209 ], [ %127, %205 ], [ %127, %191 ], [ %127, %188 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %359 ], !dbg !3034
  %474 = phi i8 [ 39, %294 ], [ 39, %273 ], [ %157, %271 ], [ %157, %268 ], [ %157, %259 ], [ %157, %264 ], [ 63, %208 ], [ 63, %219 ], [ %221, %243 ], [ 63, %214 ], [ 63, %211 ], [ 63, %210 ], [ 63, %209 ], [ 48, %205 ], [ 48, %191 ], [ 48, %188 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %359 ], !dbg !3059
  %475 = phi i8 [ 0, %294 ], [ 0, %273 ], [ 0, %271 ], [ 0, %268 ], [ 0, %259 ], [ 0, %264 ], [ 0, %208 ], [ 0, %219 ], [ 0, %243 ], [ 0, %214 ], [ 0, %211 ], [ 0, %210 ], [ 0, %209 ], [ 1, %205 ], [ 1, %191 ], [ 1, %188 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %359 ], !dbg !3059
  %476 = phi i8 [ 1, %294 ], [ 1, %273 ], [ %272, %271 ], [ 0, %268 ], [ 0, %259 ], [ 0, %264 ], [ 0, %208 ], [ 0, %219 ], [ 0, %243 ], [ 0, %214 ], [ 0, %211 ], [ 0, %210 ], [ 0, %209 ], [ 0, %205 ], [ 0, %191 ], [ 0, %188 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ %363, %359 ], !dbg !3059
  %477 = phi i64 [ %280, %294 ], [ %129, %273 ], [ %129, %271 ], [ %129, %268 ], [ %129, %259 ], [ %129, %264 ], [ %129, %208 ], [ %129, %219 ], [ %129, %243 ], [ %129, %214 ], [ %129, %211 ], [ %129, %210 ], [ %129, %209 ], [ %129, %205 ], [ %129, %191 ], [ %129, %188 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %359 ]
  call void @llvm.dbg.value(metadata i64 %477, metadata !2903, metadata !DIExpression()), !dbg !2967
  call void @llvm.dbg.value(metadata i8 %476, metadata !2929, metadata !DIExpression()), !dbg !3046
  call void @llvm.dbg.value(metadata i8 %475, metadata !2928, metadata !DIExpression()), !dbg !3045
  call void @llvm.dbg.value(metadata i8 %155, metadata !2927, metadata !DIExpression()), !dbg !3044
  call void @llvm.dbg.value(metadata i8 %474, metadata !2922, metadata !DIExpression()), !dbg !3061
  call void @llvm.dbg.value(metadata i8 %473, metadata !2920, metadata !DIExpression()), !dbg !2984
  call void @llvm.dbg.value(metadata i8 %472, metadata !2919, metadata !DIExpression()), !dbg !2983
  call void @llvm.dbg.value(metadata i64 %471, metadata !2905, metadata !DIExpression()), !dbg !2969
  call void @llvm.dbg.value(metadata i64 %470, metadata !2913, metadata !DIExpression()), !dbg !2976
  call void @llvm.dbg.value(metadata i64 %469, metadata !2912, metadata !DIExpression()), !dbg !2975
  call void @llvm.dbg.value(metadata i64 %468, metadata !2911, metadata !DIExpression()), !dbg !3035
  br i1 %105, label %489, label %478, !dbg !3342

; <label>:478:                                    ; preds = %255, %207, %186, %467
  %479 = phi i64 [ %477, %467 ], [ %129, %186 ], [ %129, %207 ], [ %129, %255 ]
  %480 = phi i8 [ %476, %467 ], [ 0, %186 ], [ 0, %207 ], [ 0, %255 ]
  %481 = phi i8 [ %475, %467 ], [ 1, %186 ], [ 0, %207 ], [ 0, %255 ]
  %482 = phi i8 [ %474, %467 ], [ 48, %186 ], [ 0, %207 ], [ %157, %255 ]
  %483 = phi i8 [ %473, %467 ], [ %127, %186 ], [ %127, %207 ], [ %127, %255 ]
  %484 = phi i8 [ %472, %467 ], [ %182, %186 ], [ %126, %207 ], [ %126, %255 ]
  %485 = phi i64 [ %471, %467 ], [ %154, %186 ], [ %154, %207 ], [ %154, %255 ]
  %486 = phi i64 [ %470, %467 ], [ %124, %186 ], [ %124, %207 ], [ %124, %255 ]
  %487 = phi i64 [ %469, %467 ], [ %187, %186 ], [ %123, %207 ], [ %123, %255 ]
  %488 = phi i64 [ %468, %467 ], [ %122, %186 ], [ %122, %207 ], [ %122, %255 ]
  br i1 %112, label %490, label %512, !dbg !3344

; <label>:489:                                    ; preds = %467
  br i1 %20, label %512, label %490, !dbg !3345

; <label>:490:                                    ; preds = %489, %478
  %491 = phi i64 [ %477, %489 ], [ %479, %478 ]
  %492 = phi i8 [ %476, %489 ], [ %480, %478 ]
  %493 = phi i8 [ %475, %489 ], [ %481, %478 ]
  %494 = phi i8 [ %474, %489 ], [ %482, %478 ]
  %495 = phi i8 [ %473, %489 ], [ %483, %478 ]
  %496 = phi i8 [ %472, %489 ], [ %484, %478 ]
  %497 = phi i64 [ %471, %489 ], [ %485, %478 ]
  %498 = phi i64 [ %470, %489 ], [ %486, %478 ]
  %499 = phi i64 [ %469, %489 ], [ %487, %478 ]
  %500 = phi i64 [ %468, %489 ], [ %488, %478 ]
  %501 = lshr i8 %494, 5, !dbg !3346
  %502 = zext i8 %501 to i64, !dbg !3346
  %503 = getelementptr inbounds i32, i32* %6, i64 %502, !dbg !3347
  %504 = load i32, i32* %503, align 4, !dbg !3347, !tbaa !1043
  %505 = and i8 %494, 31, !dbg !3348
  %506 = zext i8 %505 to i32, !dbg !3348
  %507 = shl i32 1, %506, !dbg !3349
  %508 = and i32 %504, %507, !dbg !3349
  %509 = icmp eq i32 %508, 0, !dbg !3349
  %510 = icmp eq i8 %155, 0, !dbg !3350
  %511 = and i1 %510, %509, !dbg !3351
  br i1 %511, label %562, label %524, !dbg !3351

; <label>:512:                                    ; preds = %489, %478
  %513 = phi i64 [ %477, %489 ], [ %479, %478 ]
  %514 = phi i8 [ %476, %489 ], [ %480, %478 ]
  %515 = phi i8 [ %475, %489 ], [ %481, %478 ]
  %516 = phi i8 [ %474, %489 ], [ %482, %478 ]
  %517 = phi i8 [ %473, %489 ], [ %483, %478 ]
  %518 = phi i8 [ %472, %489 ], [ %484, %478 ]
  %519 = phi i64 [ %471, %489 ], [ %485, %478 ]
  %520 = phi i64 [ %470, %489 ], [ %486, %478 ]
  %521 = phi i64 [ %469, %489 ], [ %487, %478 ]
  %522 = phi i64 [ %468, %489 ], [ %488, %478 ]
  %523 = icmp eq i8 %155, 0, !dbg !3350
  br i1 %523, label %562, label %524, !dbg !3352

; <label>:524:                                    ; preds = %255, %490, %512
  %525 = phi i64 [ %500, %490 ], [ %522, %512 ], [ %122, %255 ], !dbg !3353
  %526 = phi i64 [ %499, %490 ], [ %521, %512 ], [ %123, %255 ], !dbg !3034
  %527 = phi i64 [ %498, %490 ], [ %520, %512 ], [ %124, %255 ], !dbg !2976
  %528 = phi i64 [ %497, %490 ], [ %519, %512 ], [ %154, %255 ], !dbg !3341
  %529 = phi i8 [ %496, %490 ], [ %518, %512 ], [ %126, %255 ], !dbg !2983
  %530 = phi i8 [ %495, %490 ], [ %517, %512 ], [ %127, %255 ], !dbg !2984
  %531 = phi i8 [ %494, %490 ], [ %516, %512 ], [ %256, %255 ], !dbg !3354
  %532 = phi i8 [ %492, %490 ], [ %514, %512 ], [ 0, %255 ], !dbg !3059
  %533 = phi i64 [ %491, %490 ], [ %513, %512 ], [ %129, %255 ]
  call void @llvm.dbg.value(metadata i64 %533, metadata !2903, metadata !DIExpression()), !dbg !2967
  call void @llvm.dbg.value(metadata i8 %532, metadata !2929, metadata !DIExpression()), !dbg !3046
  call void @llvm.dbg.value(metadata i8 %531, metadata !2922, metadata !DIExpression()), !dbg !3061
  call void @llvm.dbg.value(metadata i8 %530, metadata !2920, metadata !DIExpression()), !dbg !2984
  call void @llvm.dbg.value(metadata i8 %529, metadata !2919, metadata !DIExpression()), !dbg !2983
  call void @llvm.dbg.value(metadata i64 %528, metadata !2905, metadata !DIExpression()), !dbg !2969
  call void @llvm.dbg.value(metadata i64 %527, metadata !2913, metadata !DIExpression()), !dbg !2976
  call void @llvm.dbg.value(metadata i64 %526, metadata !2912, metadata !DIExpression()), !dbg !2975
  call void @llvm.dbg.value(metadata i64 %525, metadata !2911, metadata !DIExpression()), !dbg !3035
  br i1 %110, label %534, label %661, !dbg !3357

; <label>:534:                                    ; preds = %524
  call void @llvm.dbg.value(metadata i8 1, metadata !2928, metadata !DIExpression()), !dbg !3045
  %535 = and i8 %529, 1, !dbg !3359
  %536 = icmp eq i8 %535, 0, !dbg !3359
  %537 = and i1 %114, %536, !dbg !3359
  br i1 %537, label %538, label %554, !dbg !3359

; <label>:538:                                    ; preds = %534
  %539 = icmp ult i64 %526, %533, !dbg !3361
  br i1 %539, label %540, label %542, !dbg !3365

; <label>:540:                                    ; preds = %538
  %541 = getelementptr inbounds i8, i8* %0, i64 %526, !dbg !3361
  store i8 39, i8* %541, align 1, !dbg !3361, !tbaa !1129
  br label %542, !dbg !3361

; <label>:542:                                    ; preds = %540, %538
  %543 = add i64 %526, 1, !dbg !3365
  call void @llvm.dbg.value(metadata i64 %543, metadata !2912, metadata !DIExpression()), !dbg !2975
  %544 = icmp ult i64 %543, %533, !dbg !3366
  br i1 %544, label %545, label %547, !dbg !3369

; <label>:545:                                    ; preds = %542
  %546 = getelementptr inbounds i8, i8* %0, i64 %543, !dbg !3366
  store i8 36, i8* %546, align 1, !dbg !3366, !tbaa !1129
  br label %547, !dbg !3366

; <label>:547:                                    ; preds = %545, %542
  %548 = add i64 %526, 2, !dbg !3369
  call void @llvm.dbg.value(metadata i64 %548, metadata !2912, metadata !DIExpression()), !dbg !2975
  %549 = icmp ult i64 %548, %533, !dbg !3370
  br i1 %549, label %550, label %552, !dbg !3373

; <label>:550:                                    ; preds = %547
  %551 = getelementptr inbounds i8, i8* %0, i64 %548, !dbg !3370
  store i8 39, i8* %551, align 1, !dbg !3370, !tbaa !1129
  br label %552, !dbg !3370

; <label>:552:                                    ; preds = %550, %547
  %553 = add i64 %526, 3, !dbg !3373
  call void @llvm.dbg.value(metadata i64 %553, metadata !2912, metadata !DIExpression()), !dbg !2975
  call void @llvm.dbg.value(metadata i8 1, metadata !2919, metadata !DIExpression()), !dbg !2983
  br label %554, !dbg !3374

; <label>:554:                                    ; preds = %534, %552
  %555 = phi i64 [ %553, %552 ], [ %526, %534 ], !dbg !3331
  %556 = phi i8 [ 1, %552 ], [ %529, %534 ], !dbg !3034
  call void @llvm.dbg.value(metadata i8 %556, metadata !2919, metadata !DIExpression()), !dbg !2983
  call void @llvm.dbg.value(metadata i64 %555, metadata !2912, metadata !DIExpression()), !dbg !2975
  %557 = icmp ult i64 %555, %533, !dbg !3375
  br i1 %557, label %558, label %560, !dbg !3378

; <label>:558:                                    ; preds = %554
  %559 = getelementptr inbounds i8, i8* %0, i64 %555, !dbg !3375
  store i8 92, i8* %559, align 1, !dbg !3375, !tbaa !1129
  br label %560, !dbg !3375

; <label>:560:                                    ; preds = %554, %558
  %561 = add i64 %555, 1, !dbg !3378
  call void @llvm.dbg.value(metadata i64 %561, metadata !2912, metadata !DIExpression()), !dbg !2975
  call void @llvm.dbg.value(metadata i64 %572, metadata !2903, metadata !DIExpression()), !dbg !2967
  call void @llvm.dbg.value(metadata i8 %571, metadata !2929, metadata !DIExpression()), !dbg !3046
  call void @llvm.dbg.value(metadata i8 %570, metadata !2928, metadata !DIExpression()), !dbg !3045
  call void @llvm.dbg.value(metadata i8 %569, metadata !2922, metadata !DIExpression()), !dbg !3061
  call void @llvm.dbg.value(metadata i8 %568, metadata !2920, metadata !DIExpression()), !dbg !2984
  call void @llvm.dbg.value(metadata i8 %567, metadata !2919, metadata !DIExpression()), !dbg !2983
  call void @llvm.dbg.value(metadata i64 %566, metadata !2905, metadata !DIExpression()), !dbg !2969
  call void @llvm.dbg.value(metadata i64 %565, metadata !2913, metadata !DIExpression()), !dbg !2976
  call void @llvm.dbg.value(metadata i64 %564, metadata !2912, metadata !DIExpression()), !dbg !2975
  call void @llvm.dbg.value(metadata i64 %563, metadata !2911, metadata !DIExpression()), !dbg !3035
  br label %589, !dbg !3379

; <label>:562:                                    ; preds = %432, %252, %490, %251, %512
  %563 = phi i64 [ %522, %512 ], [ %122, %251 ], [ %500, %490 ], [ %122, %252 ], [ %371, %432 ], !dbg !3353
  %564 = phi i64 [ %521, %512 ], [ %123, %251 ], [ %499, %490 ], [ %123, %252 ], [ %433, %432 ], !dbg !3034
  %565 = phi i64 [ %520, %512 ], [ %124, %251 ], [ %498, %490 ], [ %124, %252 ], [ %124, %432 ], !dbg !2976
  %566 = phi i64 [ %519, %512 ], [ %154, %251 ], [ %497, %490 ], [ %154, %252 ], [ %360, %432 ], !dbg !3341
  %567 = phi i8 [ %518, %512 ], [ %126, %251 ], [ %496, %490 ], [ %126, %252 ], [ %434, %432 ], !dbg !2983
  %568 = phi i8 [ %517, %512 ], [ %127, %251 ], [ %495, %490 ], [ %127, %252 ], [ %127, %432 ], !dbg !2984
  %569 = phi i8 [ %516, %512 ], [ 92, %251 ], [ %494, %490 ], [ 92, %252 ], [ %435, %432 ], !dbg !3382
  %570 = phi i8 [ %515, %512 ], [ 0, %251 ], [ %493, %490 ], [ 0, %252 ], [ %437, %432 ], !dbg !3059
  %571 = phi i8 [ %514, %512 ], [ 0, %251 ], [ %492, %490 ], [ 0, %252 ], [ %363, %432 ], !dbg !3059
  %572 = phi i64 [ %513, %512 ], [ %129, %251 ], [ %491, %490 ], [ %129, %252 ], [ %129, %432 ]
  call void @llvm.dbg.value(metadata i64 %572, metadata !2903, metadata !DIExpression()), !dbg !2967
  call void @llvm.dbg.value(metadata i8 %571, metadata !2929, metadata !DIExpression()), !dbg !3046
  call void @llvm.dbg.value(metadata i8 %570, metadata !2928, metadata !DIExpression()), !dbg !3045
  call void @llvm.dbg.value(metadata i8 %569, metadata !2922, metadata !DIExpression()), !dbg !3061
  call void @llvm.dbg.value(metadata i8 %568, metadata !2920, metadata !DIExpression()), !dbg !2984
  call void @llvm.dbg.value(metadata i8 %567, metadata !2919, metadata !DIExpression()), !dbg !2983
  call void @llvm.dbg.value(metadata i64 %566, metadata !2905, metadata !DIExpression()), !dbg !2969
  call void @llvm.dbg.value(metadata i64 %565, metadata !2913, metadata !DIExpression()), !dbg !2976
  call void @llvm.dbg.value(metadata i64 %564, metadata !2912, metadata !DIExpression()), !dbg !2975
  call void @llvm.dbg.value(metadata i64 %563, metadata !2911, metadata !DIExpression()), !dbg !3035
  %573 = and i8 %567, 1, !dbg !3379
  %574 = icmp ne i8 %573, 0, !dbg !3379
  %575 = and i8 %570, 1, !dbg !3379
  %576 = icmp eq i8 %575, 0, !dbg !3379
  %577 = and i1 %574, %576, !dbg !3379
  br i1 %577, label %578, label %589, !dbg !3379

; <label>:578:                                    ; preds = %562
  %579 = icmp ult i64 %564, %572, !dbg !3383
  br i1 %579, label %580, label %582, !dbg !3387

; <label>:580:                                    ; preds = %578
  %581 = getelementptr inbounds i8, i8* %0, i64 %564, !dbg !3383
  store i8 39, i8* %581, align 1, !dbg !3383, !tbaa !1129
  br label %582, !dbg !3383

; <label>:582:                                    ; preds = %580, %578
  %583 = add i64 %564, 1, !dbg !3387
  call void @llvm.dbg.value(metadata i64 %583, metadata !2912, metadata !DIExpression()), !dbg !2975
  %584 = icmp ult i64 %583, %572, !dbg !3388
  br i1 %584, label %585, label %587, !dbg !3391

; <label>:585:                                    ; preds = %582
  %586 = getelementptr inbounds i8, i8* %0, i64 %583, !dbg !3388
  store i8 39, i8* %586, align 1, !dbg !3388, !tbaa !1129
  br label %587, !dbg !3388

; <label>:587:                                    ; preds = %585, %582
  %588 = add i64 %564, 2, !dbg !3391
  call void @llvm.dbg.value(metadata i64 %588, metadata !2912, metadata !DIExpression()), !dbg !2975
  call void @llvm.dbg.value(metadata i8 0, metadata !2919, metadata !DIExpression()), !dbg !2983
  br label %589, !dbg !3392

; <label>:589:                                    ; preds = %560, %562, %587
  %590 = phi i64 [ %572, %587 ], [ %572, %562 ], [ %533, %560 ]
  %591 = phi i8 [ %571, %587 ], [ %571, %562 ], [ %532, %560 ]
  %592 = phi i8 [ %569, %587 ], [ %569, %562 ], [ %531, %560 ]
  %593 = phi i8 [ %568, %587 ], [ %568, %562 ], [ %530, %560 ]
  %594 = phi i64 [ %566, %587 ], [ %566, %562 ], [ %528, %560 ]
  %595 = phi i64 [ %565, %587 ], [ %565, %562 ], [ %527, %560 ]
  %596 = phi i64 [ %563, %587 ], [ %563, %562 ], [ %525, %560 ]
  %597 = phi i64 [ %588, %587 ], [ %564, %562 ], [ %561, %560 ], !dbg !3331
  %598 = phi i8 [ 0, %587 ], [ %567, %562 ], [ %556, %560 ], !dbg !3034
  call void @llvm.dbg.value(metadata i8 %598, metadata !2919, metadata !DIExpression()), !dbg !2983
  call void @llvm.dbg.value(metadata i64 %597, metadata !2912, metadata !DIExpression()), !dbg !2975
  %599 = icmp ult i64 %597, %590, !dbg !3393
  br i1 %599, label %600, label %602, !dbg !3396

; <label>:600:                                    ; preds = %589
  %601 = getelementptr inbounds i8, i8* %0, i64 %597, !dbg !3393
  store i8 %592, i8* %601, align 1, !dbg !3393, !tbaa !1129
  br label %602, !dbg !3393

; <label>:602:                                    ; preds = %600, %589
  %603 = add i64 %597, 1, !dbg !3396
  call void @llvm.dbg.value(metadata i64 %603, metadata !2912, metadata !DIExpression()), !dbg !2975
  %604 = and i8 %591, 1, !dbg !3397
  %605 = icmp eq i8 %604, 0, !dbg !3397
  %606 = select i1 %605, i8 0, i8 %128, !dbg !3399
  call void @llvm.dbg.value(metadata i8 %606, metadata !2921, metadata !DIExpression()), !dbg !2985
  br label %607, !dbg !3400

; <label>:607:                                    ; preds = %602, %207
  %608 = phi i64 [ %596, %602 ], [ %122, %207 ], !dbg !3353
  %609 = phi i64 [ %603, %602 ], [ %123, %207 ], !dbg !3034
  %610 = phi i64 [ %595, %602 ], [ %124, %207 ], !dbg !2976
  %611 = phi i64 [ %594, %602 ], [ %154, %207 ], !dbg !3341
  %612 = phi i8 [ %598, %602 ], [ %126, %207 ], !dbg !2983
  %613 = phi i8 [ %593, %602 ], [ %127, %207 ], !dbg !3034
  %614 = phi i8 [ %606, %602 ], [ %128, %207 ], !dbg !2985
  %615 = phi i64 [ %590, %602 ], [ %129, %207 ]
  call void @llvm.dbg.value(metadata i64 %615, metadata !2903, metadata !DIExpression()), !dbg !2967
  call void @llvm.dbg.value(metadata i8 %614, metadata !2921, metadata !DIExpression()), !dbg !2985
  call void @llvm.dbg.value(metadata i8 %613, metadata !2920, metadata !DIExpression()), !dbg !2984
  call void @llvm.dbg.value(metadata i8 %612, metadata !2919, metadata !DIExpression()), !dbg !2983
  call void @llvm.dbg.value(metadata i64 %611, metadata !2905, metadata !DIExpression()), !dbg !2969
  call void @llvm.dbg.value(metadata i64 %610, metadata !2913, metadata !DIExpression()), !dbg !2976
  call void @llvm.dbg.value(metadata i64 %609, metadata !2912, metadata !DIExpression()), !dbg !2975
  call void @llvm.dbg.value(metadata i64 %608, metadata !2911, metadata !DIExpression()), !dbg !3035
  %616 = add i64 %608, 1, !dbg !3401
  call void @llvm.dbg.value(metadata i64 %616, metadata !2911, metadata !DIExpression()), !dbg !3035
  br label %121, !dbg !3402, !llvm.loop !3403

; <label>:617:                                    ; preds = %131, %135
  %618 = phi i64 [ -1, %131 ], [ %122, %135 ]
  call void @llvm.dbg.value(metadata i64 %123, metadata !2912, metadata !DIExpression()), !dbg !2975
  call void @llvm.dbg.value(metadata i64 %123, metadata !2912, metadata !DIExpression()), !dbg !2975
  call void @llvm.dbg.value(metadata i64 %124, metadata !2913, metadata !DIExpression()), !dbg !2976
  call void @llvm.dbg.value(metadata i64 %124, metadata !2913, metadata !DIExpression()), !dbg !2976
  call void @llvm.dbg.value(metadata i8 %126, metadata !2919, metadata !DIExpression()), !dbg !2983
  call void @llvm.dbg.value(metadata i8 %126, metadata !2919, metadata !DIExpression()), !dbg !2983
  call void @llvm.dbg.value(metadata i8 %127, metadata !2920, metadata !DIExpression()), !dbg !2984
  call void @llvm.dbg.value(metadata i8 %127, metadata !2920, metadata !DIExpression()), !dbg !2984
  call void @llvm.dbg.value(metadata i8 %128, metadata !2921, metadata !DIExpression()), !dbg !2985
  call void @llvm.dbg.value(metadata i8 %128, metadata !2921, metadata !DIExpression()), !dbg !2985
  call void @llvm.dbg.value(metadata i64 %129, metadata !2903, metadata !DIExpression()), !dbg !2967
  call void @llvm.dbg.value(metadata i64 %129, metadata !2903, metadata !DIExpression()), !dbg !2967
  call void @llvm.dbg.value(metadata i64 %123, metadata !2912, metadata !DIExpression()), !dbg !2975
  call void @llvm.dbg.value(metadata i64 %123, metadata !2912, metadata !DIExpression()), !dbg !2975
  call void @llvm.dbg.value(metadata i64 %124, metadata !2913, metadata !DIExpression()), !dbg !2976
  call void @llvm.dbg.value(metadata i64 %124, metadata !2913, metadata !DIExpression()), !dbg !2976
  call void @llvm.dbg.value(metadata i8 %126, metadata !2919, metadata !DIExpression()), !dbg !2983
  call void @llvm.dbg.value(metadata i8 %126, metadata !2919, metadata !DIExpression()), !dbg !2983
  call void @llvm.dbg.value(metadata i8 %127, metadata !2920, metadata !DIExpression()), !dbg !2984
  call void @llvm.dbg.value(metadata i8 %127, metadata !2920, metadata !DIExpression()), !dbg !2984
  call void @llvm.dbg.value(metadata i8 %128, metadata !2921, metadata !DIExpression()), !dbg !2985
  call void @llvm.dbg.value(metadata i8 %128, metadata !2921, metadata !DIExpression()), !dbg !2985
  call void @llvm.dbg.value(metadata i64 %129, metadata !2903, metadata !DIExpression()), !dbg !2967
  call void @llvm.dbg.value(metadata i64 %129, metadata !2903, metadata !DIExpression()), !dbg !2967
  call void @llvm.dbg.value(metadata i64 %123, metadata !2912, metadata !DIExpression()), !dbg !2975
  call void @llvm.dbg.value(metadata i64 %123, metadata !2912, metadata !DIExpression()), !dbg !2975
  call void @llvm.dbg.value(metadata i64 %124, metadata !2913, metadata !DIExpression()), !dbg !2976
  call void @llvm.dbg.value(metadata i64 %124, metadata !2913, metadata !DIExpression()), !dbg !2976
  call void @llvm.dbg.value(metadata i8 %126, metadata !2919, metadata !DIExpression()), !dbg !2983
  call void @llvm.dbg.value(metadata i8 %126, metadata !2919, metadata !DIExpression()), !dbg !2983
  call void @llvm.dbg.value(metadata i8 %127, metadata !2920, metadata !DIExpression()), !dbg !2984
  call void @llvm.dbg.value(metadata i8 %127, metadata !2920, metadata !DIExpression()), !dbg !2984
  call void @llvm.dbg.value(metadata i8 %128, metadata !2921, metadata !DIExpression()), !dbg !2985
  call void @llvm.dbg.value(metadata i8 %128, metadata !2921, metadata !DIExpression()), !dbg !2985
  call void @llvm.dbg.value(metadata i64 %129, metadata !2903, metadata !DIExpression()), !dbg !2967
  call void @llvm.dbg.value(metadata i64 %129, metadata !2903, metadata !DIExpression()), !dbg !2967
  call void @llvm.dbg.value(metadata i64 %123, metadata !2912, metadata !DIExpression()), !dbg !2975
  call void @llvm.dbg.value(metadata i64 %123, metadata !2912, metadata !DIExpression()), !dbg !2975
  call void @llvm.dbg.value(metadata i64 %124, metadata !2913, metadata !DIExpression()), !dbg !2976
  call void @llvm.dbg.value(metadata i64 %124, metadata !2913, metadata !DIExpression()), !dbg !2976
  call void @llvm.dbg.value(metadata i8 %126, metadata !2919, metadata !DIExpression()), !dbg !2983
  call void @llvm.dbg.value(metadata i8 %126, metadata !2919, metadata !DIExpression()), !dbg !2983
  call void @llvm.dbg.value(metadata i8 %127, metadata !2920, metadata !DIExpression()), !dbg !2984
  call void @llvm.dbg.value(metadata i8 %127, metadata !2920, metadata !DIExpression()), !dbg !2984
  call void @llvm.dbg.value(metadata i8 %128, metadata !2921, metadata !DIExpression()), !dbg !2985
  call void @llvm.dbg.value(metadata i8 %128, metadata !2921, metadata !DIExpression()), !dbg !2985
  call void @llvm.dbg.value(metadata i64 %129, metadata !2903, metadata !DIExpression()), !dbg !2967
  call void @llvm.dbg.value(metadata i64 %129, metadata !2903, metadata !DIExpression()), !dbg !2967
  call void @llvm.dbg.value(metadata i64 %123, metadata !2912, metadata !DIExpression()), !dbg !2975
  call void @llvm.dbg.value(metadata i64 %123, metadata !2912, metadata !DIExpression()), !dbg !2975
  call void @llvm.dbg.value(metadata i64 %124, metadata !2913, metadata !DIExpression()), !dbg !2976
  call void @llvm.dbg.value(metadata i64 %124, metadata !2913, metadata !DIExpression()), !dbg !2976
  call void @llvm.dbg.value(metadata i64 %618, metadata !2905, metadata !DIExpression()), !dbg !2969
  call void @llvm.dbg.value(metadata i64 %618, metadata !2905, metadata !DIExpression()), !dbg !2969
  call void @llvm.dbg.value(metadata i8 %126, metadata !2919, metadata !DIExpression()), !dbg !2983
  call void @llvm.dbg.value(metadata i8 %126, metadata !2919, metadata !DIExpression()), !dbg !2983
  call void @llvm.dbg.value(metadata i8 %127, metadata !2920, metadata !DIExpression()), !dbg !2984
  call void @llvm.dbg.value(metadata i8 %127, metadata !2920, metadata !DIExpression()), !dbg !2984
  call void @llvm.dbg.value(metadata i8 %128, metadata !2921, metadata !DIExpression()), !dbg !2985
  call void @llvm.dbg.value(metadata i8 %128, metadata !2921, metadata !DIExpression()), !dbg !2985
  call void @llvm.dbg.value(metadata i64 %129, metadata !2903, metadata !DIExpression()), !dbg !2967
  call void @llvm.dbg.value(metadata i64 %129, metadata !2903, metadata !DIExpression()), !dbg !2967
  call void @llvm.dbg.value(metadata i64 %123, metadata !2912, metadata !DIExpression()), !dbg !2975
  call void @llvm.dbg.value(metadata i64 %123, metadata !2912, metadata !DIExpression()), !dbg !2975
  call void @llvm.dbg.value(metadata i64 %124, metadata !2913, metadata !DIExpression()), !dbg !2976
  call void @llvm.dbg.value(metadata i64 %124, metadata !2913, metadata !DIExpression()), !dbg !2976
  call void @llvm.dbg.value(metadata i64 %125, metadata !2905, metadata !DIExpression()), !dbg !2969
  call void @llvm.dbg.value(metadata i64 %125, metadata !2905, metadata !DIExpression()), !dbg !2969
  call void @llvm.dbg.value(metadata i8 %126, metadata !2919, metadata !DIExpression()), !dbg !2983
  call void @llvm.dbg.value(metadata i8 %126, metadata !2919, metadata !DIExpression()), !dbg !2983
  call void @llvm.dbg.value(metadata i8 %127, metadata !2920, metadata !DIExpression()), !dbg !2984
  call void @llvm.dbg.value(metadata i8 %127, metadata !2920, metadata !DIExpression()), !dbg !2984
  call void @llvm.dbg.value(metadata i8 %128, metadata !2921, metadata !DIExpression()), !dbg !2985
  call void @llvm.dbg.value(metadata i8 %128, metadata !2921, metadata !DIExpression()), !dbg !2985
  call void @llvm.dbg.value(metadata i64 %129, metadata !2903, metadata !DIExpression()), !dbg !2967
  call void @llvm.dbg.value(metadata i64 %129, metadata !2903, metadata !DIExpression()), !dbg !2967
  %619 = icmp eq i64 %123, 0, !dbg !3405
  %620 = and i1 %114, %619, !dbg !3407
  %621 = xor i1 %620, true, !dbg !3407
  %622 = or i1 %110, %621, !dbg !3407
  br i1 %622, label %623, label %661, !dbg !3407

; <label>:623:                                    ; preds = %617
  %624 = and i1 %114, %110, !dbg !3408
  %625 = xor i1 %624, true, !dbg !3408
  %626 = and i8 %127, 1, !dbg !3410
  %627 = icmp eq i8 %626, 0, !dbg !3410
  %628 = or i1 %627, %625, !dbg !3408
  br i1 %628, label %638, label %629, !dbg !3408

; <label>:629:                                    ; preds = %623
  %630 = and i8 %128, 1, !dbg !3411
  %631 = icmp eq i8 %630, 0, !dbg !3411
  br i1 %631, label %634, label %632, !dbg !3414

; <label>:632:                                    ; preds = %629
  call void @llvm.dbg.value(metadata i64 %618, metadata !2905, metadata !DIExpression()), !dbg !2969
  call void @llvm.dbg.value(metadata i8* %95, metadata !2909, metadata !DIExpression()), !dbg !2973
  call void @llvm.dbg.value(metadata i8* %96, metadata !2910, metadata !DIExpression()), !dbg !2974
  call void @llvm.dbg.value(metadata i64 %124, metadata !2913, metadata !DIExpression()), !dbg !2976
  call void @llvm.dbg.value(metadata i64 %618, metadata !2905, metadata !DIExpression()), !dbg !2969
  call void @llvm.dbg.value(metadata i8* %95, metadata !2909, metadata !DIExpression()), !dbg !2973
  call void @llvm.dbg.value(metadata i8* %96, metadata !2910, metadata !DIExpression()), !dbg !2974
  call void @llvm.dbg.value(metadata i64 %124, metadata !2913, metadata !DIExpression()), !dbg !2976
  call void @llvm.dbg.value(metadata i64 %618, metadata !2905, metadata !DIExpression()), !dbg !2969
  call void @llvm.dbg.value(metadata i8* %95, metadata !2909, metadata !DIExpression()), !dbg !2973
  call void @llvm.dbg.value(metadata i8* %96, metadata !2910, metadata !DIExpression()), !dbg !2974
  call void @llvm.dbg.value(metadata i64 %124, metadata !2913, metadata !DIExpression()), !dbg !2976
  call void @llvm.dbg.value(metadata i64 %618, metadata !2905, metadata !DIExpression()), !dbg !2969
  call void @llvm.dbg.value(metadata i8* %95, metadata !2909, metadata !DIExpression()), !dbg !2973
  call void @llvm.dbg.value(metadata i8* %96, metadata !2910, metadata !DIExpression()), !dbg !2974
  call void @llvm.dbg.value(metadata i64 %124, metadata !2913, metadata !DIExpression()), !dbg !2976
  call void @llvm.dbg.value(metadata i8* %95, metadata !2909, metadata !DIExpression()), !dbg !2973
  call void @llvm.dbg.value(metadata i8* %96, metadata !2910, metadata !DIExpression()), !dbg !2974
  call void @llvm.dbg.value(metadata i64 %124, metadata !2913, metadata !DIExpression()), !dbg !2976
  call void @llvm.dbg.value(metadata i64 %618, metadata !2905, metadata !DIExpression()), !dbg !2969
  call void @llvm.dbg.value(metadata i8* %95, metadata !2909, metadata !DIExpression()), !dbg !2973
  call void @llvm.dbg.value(metadata i8* %96, metadata !2910, metadata !DIExpression()), !dbg !2974
  call void @llvm.dbg.value(metadata i64 %124, metadata !2913, metadata !DIExpression()), !dbg !2976
  call void @llvm.dbg.value(metadata i64 %125, metadata !2905, metadata !DIExpression()), !dbg !2969
  %633 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %124, i8* %2, i64 %618, i32 5, i32 %5, i32* %6, i8* %95, i8* %96), !dbg !3415
  br label %671, !dbg !3416

; <label>:634:                                    ; preds = %629
  %635 = icmp eq i64 %129, 0, !dbg !3417
  %636 = icmp ne i64 %124, 0, !dbg !3419
  %637 = and i1 %636, %635, !dbg !3420
  br i1 %637, label %27, label %638, !dbg !3420

; <label>:638:                                    ; preds = %623, %634
  call void @llvm.dbg.value(metadata i8* %98, metadata !2914, metadata !DIExpression()), !dbg !2977
  call void @llvm.dbg.value(metadata i8* %98, metadata !2914, metadata !DIExpression()), !dbg !2977
  call void @llvm.dbg.value(metadata i64 %123, metadata !2912, metadata !DIExpression()), !dbg !2975
  call void @llvm.dbg.value(metadata i64 %123, metadata !2912, metadata !DIExpression()), !dbg !2975
  call void @llvm.dbg.value(metadata i64 %129, metadata !2903, metadata !DIExpression()), !dbg !2967
  call void @llvm.dbg.value(metadata i64 %129, metadata !2903, metadata !DIExpression()), !dbg !2967
  call void @llvm.dbg.value(metadata i8* %98, metadata !2914, metadata !DIExpression()), !dbg !2977
  call void @llvm.dbg.value(metadata i8* %98, metadata !2914, metadata !DIExpression()), !dbg !2977
  call void @llvm.dbg.value(metadata i64 %123, metadata !2912, metadata !DIExpression()), !dbg !2975
  call void @llvm.dbg.value(metadata i64 %123, metadata !2912, metadata !DIExpression()), !dbg !2975
  call void @llvm.dbg.value(metadata i64 %129, metadata !2903, metadata !DIExpression()), !dbg !2967
  call void @llvm.dbg.value(metadata i64 %129, metadata !2903, metadata !DIExpression()), !dbg !2967
  call void @llvm.dbg.value(metadata i8* %98, metadata !2914, metadata !DIExpression()), !dbg !2977
  call void @llvm.dbg.value(metadata i8* %98, metadata !2914, metadata !DIExpression()), !dbg !2977
  call void @llvm.dbg.value(metadata i64 %123, metadata !2912, metadata !DIExpression()), !dbg !2975
  call void @llvm.dbg.value(metadata i64 %123, metadata !2912, metadata !DIExpression()), !dbg !2975
  call void @llvm.dbg.value(metadata i64 %129, metadata !2903, metadata !DIExpression()), !dbg !2967
  call void @llvm.dbg.value(metadata i64 %129, metadata !2903, metadata !DIExpression()), !dbg !2967
  call void @llvm.dbg.value(metadata i8* %98, metadata !2914, metadata !DIExpression()), !dbg !2977
  call void @llvm.dbg.value(metadata i8* %98, metadata !2914, metadata !DIExpression()), !dbg !2977
  call void @llvm.dbg.value(metadata i64 %123, metadata !2912, metadata !DIExpression()), !dbg !2975
  call void @llvm.dbg.value(metadata i64 %123, metadata !2912, metadata !DIExpression()), !dbg !2975
  call void @llvm.dbg.value(metadata i64 %129, metadata !2903, metadata !DIExpression()), !dbg !2967
  call void @llvm.dbg.value(metadata i64 %129, metadata !2903, metadata !DIExpression()), !dbg !2967
  call void @llvm.dbg.value(metadata i8* %98, metadata !2914, metadata !DIExpression()), !dbg !2977
  call void @llvm.dbg.value(metadata i8* %98, metadata !2914, metadata !DIExpression()), !dbg !2977
  call void @llvm.dbg.value(metadata i64 %123, metadata !2912, metadata !DIExpression()), !dbg !2975
  call void @llvm.dbg.value(metadata i64 %123, metadata !2912, metadata !DIExpression()), !dbg !2975
  call void @llvm.dbg.value(metadata i64 %129, metadata !2903, metadata !DIExpression()), !dbg !2967
  call void @llvm.dbg.value(metadata i64 %129, metadata !2903, metadata !DIExpression()), !dbg !2967
  call void @llvm.dbg.value(metadata i8* %98, metadata !2914, metadata !DIExpression()), !dbg !2977
  call void @llvm.dbg.value(metadata i8* %98, metadata !2914, metadata !DIExpression()), !dbg !2977
  call void @llvm.dbg.value(metadata i64 %123, metadata !2912, metadata !DIExpression()), !dbg !2975
  call void @llvm.dbg.value(metadata i64 %123, metadata !2912, metadata !DIExpression()), !dbg !2975
  call void @llvm.dbg.value(metadata i64 %129, metadata !2903, metadata !DIExpression()), !dbg !2967
  call void @llvm.dbg.value(metadata i64 %129, metadata !2903, metadata !DIExpression()), !dbg !2967
  %639 = icmp ne i8* %98, null, !dbg !3421
  %640 = and i1 %639, %110, !dbg !3423
  br i1 %640, label %641, label %656, !dbg !3423

; <label>:641:                                    ; preds = %638
  call void @llvm.dbg.value(metadata i8* %98, metadata !2914, metadata !DIExpression()), !dbg !2977
  call void @llvm.dbg.value(metadata i64 %123, metadata !2912, metadata !DIExpression()), !dbg !2975
  %642 = load i8, i8* %98, align 1, !dbg !3424, !tbaa !1129
  %643 = icmp eq i8 %642, 0, !dbg !3427
  br i1 %643, label %656, label %644, !dbg !3427

; <label>:644:                                    ; preds = %641, %651
  %645 = phi i8 [ %654, %651 ], [ %642, %641 ]
  %646 = phi i8* [ %653, %651 ], [ %98, %641 ]
  %647 = phi i64 [ %652, %651 ], [ %123, %641 ]
  call void @llvm.dbg.value(metadata i8* %646, metadata !2914, metadata !DIExpression()), !dbg !2977
  call void @llvm.dbg.value(metadata i64 %647, metadata !2912, metadata !DIExpression()), !dbg !2975
  %648 = icmp ult i64 %647, %129, !dbg !3428
  br i1 %648, label %649, label %651, !dbg !3431

; <label>:649:                                    ; preds = %644
  %650 = getelementptr inbounds i8, i8* %0, i64 %647, !dbg !3428
  store i8 %645, i8* %650, align 1, !dbg !3428, !tbaa !1129
  br label %651, !dbg !3428

; <label>:651:                                    ; preds = %649, %644
  %652 = add i64 %647, 1, !dbg !3431
  %653 = getelementptr inbounds i8, i8* %646, i64 1, !dbg !3432
  call void @llvm.dbg.value(metadata i8* %653, metadata !2914, metadata !DIExpression()), !dbg !2977
  call void @llvm.dbg.value(metadata i64 %652, metadata !2912, metadata !DIExpression()), !dbg !2975
  %654 = load i8, i8* %653, align 1, !dbg !3424, !tbaa !1129
  %655 = icmp eq i8 %654, 0, !dbg !3427
  br i1 %655, label %656, label %644, !dbg !3427, !llvm.loop !3433

; <label>:656:                                    ; preds = %651, %641, %638
  %657 = phi i64 [ %123, %638 ], [ %123, %641 ], [ %652, %651 ], !dbg !2975
  call void @llvm.dbg.value(metadata i64 %657, metadata !2912, metadata !DIExpression()), !dbg !2975
  %658 = icmp ult i64 %657, %129, !dbg !3435
  br i1 %658, label %659, label %671, !dbg !3437

; <label>:659:                                    ; preds = %656
  %660 = getelementptr inbounds i8, i8* %0, i64 %657, !dbg !3438
  store i8 0, i8* %660, align 1, !dbg !3439, !tbaa !1129
  br label %671, !dbg !3438

; <label>:661:                                    ; preds = %617, %524, %274, %271, %253, %251, %223, %209, %159, %146, %377, %358
  %662 = phi i32 [ 2, %358 ], [ %94, %377 ], [ %94, %146 ], [ %94, %159 ], [ 2, %209 ], [ 5, %223 ], [ 2, %251 ], [ 2, %253 ], [ 2, %271 ], [ 2, %274 ], [ %94, %524 ], [ %94, %617 ]
  %663 = phi i64 [ %311, %358 ], [ %360, %377 ], [ %144, %146 ], [ %154, %159 ], [ %154, %209 ], [ %154, %223 ], [ %154, %251 ], [ %154, %253 ], [ %154, %271 ], [ %154, %274 ], [ %528, %524 ], [ %618, %617 ]
  %664 = phi i64 [ %129, %358 ], [ %129, %377 ], [ %129, %146 ], [ %129, %159 ], [ %129, %209 ], [ %129, %223 ], [ %129, %251 ], [ %129, %253 ], [ %129, %271 ], [ %129, %274 ], [ %533, %524 ], [ %129, %617 ]
  call void @llvm.dbg.value(metadata i64 %664, metadata !2903, metadata !DIExpression()), !dbg !2967
  call void @llvm.dbg.value(metadata i64 %663, metadata !2905, metadata !DIExpression()), !dbg !2969
  %665 = icmp ne i32 %662, 2, !dbg !3440
  %666 = icmp eq i8 %102, 0, !dbg !3442
  %667 = or i1 %665, %666, !dbg !3443
  call void @llvm.dbg.value(metadata i32 4, metadata !2906, metadata !DIExpression()), !dbg !2970
  %668 = select i1 %667, i32 %662, i32 4, !dbg !3443
  call void @llvm.dbg.value(metadata i32 %668, metadata !2906, metadata !DIExpression()), !dbg !2970
  %669 = and i32 %5, -3, !dbg !3444
  %670 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %664, i8* %2, i64 %663, i32 %668, i32 %669, i32* null, i8* %95, i8* %96), !dbg !3445
  br label %671, !dbg !3446

; <label>:671:                                    ; preds = %656, %659, %661, %632
  %672 = phi i64 [ %670, %661 ], [ %633, %632 ], [ %657, %659 ], [ %657, %656 ]
  ret i64 %672, !dbg !3447
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @gettext_quote(i8*, i32) unnamed_addr #7 !dbg !3448 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3452, metadata !DIExpression()), !dbg !3456
  call void @llvm.dbg.value(metadata i32 %1, metadata !3453, metadata !DIExpression()), !dbg !3457
  %3 = tail call i8* @dcgettext(i8* null, i8* %0, i32 5) #10, !dbg !3458
  call void @llvm.dbg.value(metadata i8* %3, metadata !3454, metadata !DIExpression()), !dbg !3459
  %4 = icmp eq i8* %3, %0, !dbg !3460
  br i1 %4, label %5, label %71, !dbg !3462

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @locale_charset() #10, !dbg !3463
  call void @llvm.dbg.value(metadata i8* %6, metadata !3455, metadata !DIExpression()), !dbg !3464
  call void @llvm.dbg.value(metadata i8* %6, metadata !3465, metadata !DIExpression()), !dbg !3481
  call void @llvm.dbg.value(metadata i8* null, metadata !3471, metadata !DIExpression()), !dbg !3484
  call void @llvm.dbg.value(metadata i8 85, metadata !3472, metadata !DIExpression()), !dbg !3485
  call void @llvm.dbg.value(metadata i8 84, metadata !3473, metadata !DIExpression()), !dbg !3486
  call void @llvm.dbg.value(metadata i8 70, metadata !3474, metadata !DIExpression()), !dbg !3487
  call void @llvm.dbg.value(metadata i8 45, metadata !3475, metadata !DIExpression()), !dbg !3488
  call void @llvm.dbg.value(metadata i8 56, metadata !3476, metadata !DIExpression()), !dbg !3489
  call void @llvm.dbg.value(metadata i8 0, metadata !3477, metadata !DIExpression()), !dbg !3490
  call void @llvm.dbg.value(metadata i8 0, metadata !3478, metadata !DIExpression()), !dbg !3491
  call void @llvm.dbg.value(metadata i8 0, metadata !3479, metadata !DIExpression()), !dbg !3492
  call void @llvm.dbg.value(metadata i8 0, metadata !3480, metadata !DIExpression()), !dbg !3493
  %7 = load i8, i8* %6, align 1, !dbg !3494, !tbaa !1129
  %8 = and i8 %7, -33, !dbg !3494
  switch i8 %8, label %68 [
    i8 85, label %9
    i8 71, label %35
  ], !dbg !3494

; <label>:9:                                      ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !3496, metadata !DIExpression()), !dbg !3510
  call void @llvm.dbg.value(metadata i8* null, metadata !3501, metadata !DIExpression()), !dbg !3514
  call void @llvm.dbg.value(metadata i8 84, metadata !3502, metadata !DIExpression()), !dbg !3515
  call void @llvm.dbg.value(metadata i8 70, metadata !3503, metadata !DIExpression()), !dbg !3516
  call void @llvm.dbg.value(metadata i8 45, metadata !3504, metadata !DIExpression()), !dbg !3517
  call void @llvm.dbg.value(metadata i8 56, metadata !3505, metadata !DIExpression()), !dbg !3518
  call void @llvm.dbg.value(metadata i8 0, metadata !3506, metadata !DIExpression()), !dbg !3519
  call void @llvm.dbg.value(metadata i8 0, metadata !3507, metadata !DIExpression()), !dbg !3520
  call void @llvm.dbg.value(metadata i8 0, metadata !3508, metadata !DIExpression()), !dbg !3521
  call void @llvm.dbg.value(metadata i8 0, metadata !3509, metadata !DIExpression()), !dbg !3522
  %10 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !3523
  %11 = load i8, i8* %10, align 1, !dbg !3523, !tbaa !1129
  %12 = and i8 %11, -33, !dbg !3523
  %13 = icmp eq i8 %12, 84, !dbg !3523
  br i1 %13, label %14, label %68, !dbg !3523

; <label>:14:                                     ; preds = %9
  call void @llvm.dbg.value(metadata i8* %6, metadata !3525, metadata !DIExpression()), !dbg !3538
  call void @llvm.dbg.value(metadata i8* null, metadata !3530, metadata !DIExpression()), !dbg !3542
  call void @llvm.dbg.value(metadata i8 70, metadata !3531, metadata !DIExpression()), !dbg !3543
  call void @llvm.dbg.value(metadata i8 45, metadata !3532, metadata !DIExpression()), !dbg !3544
  call void @llvm.dbg.value(metadata i8 56, metadata !3533, metadata !DIExpression()), !dbg !3545
  call void @llvm.dbg.value(metadata i8 0, metadata !3534, metadata !DIExpression()), !dbg !3546
  call void @llvm.dbg.value(metadata i8 0, metadata !3535, metadata !DIExpression()), !dbg !3547
  call void @llvm.dbg.value(metadata i8 0, metadata !3536, metadata !DIExpression()), !dbg !3548
  call void @llvm.dbg.value(metadata i8 0, metadata !3537, metadata !DIExpression()), !dbg !3549
  %15 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !3550
  %16 = load i8, i8* %15, align 1, !dbg !3550, !tbaa !1129
  %17 = and i8 %16, -33, !dbg !3550
  %18 = icmp eq i8 %17, 70, !dbg !3550
  br i1 %18, label %19, label %68, !dbg !3550

; <label>:19:                                     ; preds = %14
  call void @llvm.dbg.value(metadata i8* %6, metadata !3552, metadata !DIExpression()), !dbg !3564
  call void @llvm.dbg.value(metadata i8* null, metadata !3557, metadata !DIExpression()), !dbg !3568
  call void @llvm.dbg.value(metadata i8 45, metadata !3558, metadata !DIExpression()), !dbg !3569
  call void @llvm.dbg.value(metadata i8 56, metadata !3559, metadata !DIExpression()), !dbg !3570
  call void @llvm.dbg.value(metadata i8 0, metadata !3560, metadata !DIExpression()), !dbg !3571
  call void @llvm.dbg.value(metadata i8 0, metadata !3561, metadata !DIExpression()), !dbg !3572
  call void @llvm.dbg.value(metadata i8 0, metadata !3562, metadata !DIExpression()), !dbg !3573
  call void @llvm.dbg.value(metadata i8 0, metadata !3563, metadata !DIExpression()), !dbg !3574
  %20 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !3575
  %21 = load i8, i8* %20, align 1, !dbg !3575, !tbaa !1129
  %22 = icmp eq i8 %21, 45, !dbg !3575
  br i1 %22, label %23, label %68, !dbg !3577

; <label>:23:                                     ; preds = %19
  call void @llvm.dbg.value(metadata i8* %6, metadata !3578, metadata !DIExpression()), !dbg !3589
  call void @llvm.dbg.value(metadata i8* null, metadata !3583, metadata !DIExpression()), !dbg !3593
  call void @llvm.dbg.value(metadata i8 56, metadata !3584, metadata !DIExpression()), !dbg !3594
  call void @llvm.dbg.value(metadata i8 0, metadata !3585, metadata !DIExpression()), !dbg !3595
  call void @llvm.dbg.value(metadata i8 0, metadata !3586, metadata !DIExpression()), !dbg !3596
  call void @llvm.dbg.value(metadata i8 0, metadata !3587, metadata !DIExpression()), !dbg !3597
  call void @llvm.dbg.value(metadata i8 0, metadata !3588, metadata !DIExpression()), !dbg !3598
  %24 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !3599
  %25 = load i8, i8* %24, align 1, !dbg !3599, !tbaa !1129
  %26 = icmp eq i8 %25, 56, !dbg !3599
  br i1 %26, label %27, label %68, !dbg !3601

; <label>:27:                                     ; preds = %23
  call void @llvm.dbg.value(metadata i8* %6, metadata !3602, metadata !DIExpression()), !dbg !3612
  call void @llvm.dbg.value(metadata i8* null, metadata !3607, metadata !DIExpression()), !dbg !3616
  call void @llvm.dbg.value(metadata i8 0, metadata !3608, metadata !DIExpression()), !dbg !3617
  call void @llvm.dbg.value(metadata i8 0, metadata !3609, metadata !DIExpression()), !dbg !3618
  call void @llvm.dbg.value(metadata i8 0, metadata !3610, metadata !DIExpression()), !dbg !3619
  call void @llvm.dbg.value(metadata i8 0, metadata !3611, metadata !DIExpression()), !dbg !3620
  %28 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !3621
  %29 = load i8, i8* %28, align 1, !dbg !3621, !tbaa !1129
  %30 = icmp eq i8 %29, 0, !dbg !3621
  br i1 %30, label %31, label %68, !dbg !3623

; <label>:31:                                     ; preds = %27
  %32 = load i8, i8* %0, align 1, !dbg !3624, !tbaa !1129
  %33 = icmp eq i8 %32, 96, !dbg !3625
  %34 = select i1 %33, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14.117, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15.118, i64 0, i64 0), !dbg !3624
  br label %71, !dbg !3626

; <label>:35:                                     ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !3496, metadata !DIExpression()), !dbg !3627
  call void @llvm.dbg.value(metadata i8* null, metadata !3501, metadata !DIExpression()), !dbg !3631
  call void @llvm.dbg.value(metadata i8 66, metadata !3502, metadata !DIExpression()), !dbg !3632
  call void @llvm.dbg.value(metadata i8 49, metadata !3503, metadata !DIExpression()), !dbg !3633
  call void @llvm.dbg.value(metadata i8 56, metadata !3504, metadata !DIExpression()), !dbg !3634
  call void @llvm.dbg.value(metadata i8 48, metadata !3505, metadata !DIExpression()), !dbg !3635
  call void @llvm.dbg.value(metadata i8 51, metadata !3506, metadata !DIExpression()), !dbg !3636
  call void @llvm.dbg.value(metadata i8 48, metadata !3507, metadata !DIExpression()), !dbg !3637
  call void @llvm.dbg.value(metadata i8 0, metadata !3508, metadata !DIExpression()), !dbg !3638
  call void @llvm.dbg.value(metadata i8 0, metadata !3509, metadata !DIExpression()), !dbg !3639
  %36 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !3640
  %37 = load i8, i8* %36, align 1, !dbg !3640, !tbaa !1129
  %38 = and i8 %37, -33, !dbg !3640
  %39 = icmp eq i8 %38, 66, !dbg !3640
  br i1 %39, label %40, label %68, !dbg !3640

; <label>:40:                                     ; preds = %35
  call void @llvm.dbg.value(metadata i8* %6, metadata !3525, metadata !DIExpression()), !dbg !3641
  call void @llvm.dbg.value(metadata i8* null, metadata !3530, metadata !DIExpression()), !dbg !3643
  call void @llvm.dbg.value(metadata i8 49, metadata !3531, metadata !DIExpression()), !dbg !3644
  call void @llvm.dbg.value(metadata i8 56, metadata !3532, metadata !DIExpression()), !dbg !3645
  call void @llvm.dbg.value(metadata i8 48, metadata !3533, metadata !DIExpression()), !dbg !3646
  call void @llvm.dbg.value(metadata i8 51, metadata !3534, metadata !DIExpression()), !dbg !3647
  call void @llvm.dbg.value(metadata i8 48, metadata !3535, metadata !DIExpression()), !dbg !3648
  call void @llvm.dbg.value(metadata i8 0, metadata !3536, metadata !DIExpression()), !dbg !3649
  call void @llvm.dbg.value(metadata i8 0, metadata !3537, metadata !DIExpression()), !dbg !3650
  %41 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !3651
  %42 = load i8, i8* %41, align 1, !dbg !3651, !tbaa !1129
  %43 = icmp eq i8 %42, 49, !dbg !3651
  br i1 %43, label %44, label %68, !dbg !3652

; <label>:44:                                     ; preds = %40
  call void @llvm.dbg.value(metadata i8* %6, metadata !3552, metadata !DIExpression()), !dbg !3653
  call void @llvm.dbg.value(metadata i8* null, metadata !3557, metadata !DIExpression()), !dbg !3655
  call void @llvm.dbg.value(metadata i8 56, metadata !3558, metadata !DIExpression()), !dbg !3656
  call void @llvm.dbg.value(metadata i8 48, metadata !3559, metadata !DIExpression()), !dbg !3657
  call void @llvm.dbg.value(metadata i8 51, metadata !3560, metadata !DIExpression()), !dbg !3658
  call void @llvm.dbg.value(metadata i8 48, metadata !3561, metadata !DIExpression()), !dbg !3659
  call void @llvm.dbg.value(metadata i8 0, metadata !3562, metadata !DIExpression()), !dbg !3660
  call void @llvm.dbg.value(metadata i8 0, metadata !3563, metadata !DIExpression()), !dbg !3661
  %45 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !3662
  %46 = load i8, i8* %45, align 1, !dbg !3662, !tbaa !1129
  %47 = icmp eq i8 %46, 56, !dbg !3662
  br i1 %47, label %48, label %68, !dbg !3663

; <label>:48:                                     ; preds = %44
  call void @llvm.dbg.value(metadata i8* %6, metadata !3578, metadata !DIExpression()), !dbg !3664
  call void @llvm.dbg.value(metadata i8* null, metadata !3583, metadata !DIExpression()), !dbg !3666
  call void @llvm.dbg.value(metadata i8 48, metadata !3584, metadata !DIExpression()), !dbg !3667
  call void @llvm.dbg.value(metadata i8 51, metadata !3585, metadata !DIExpression()), !dbg !3668
  call void @llvm.dbg.value(metadata i8 48, metadata !3586, metadata !DIExpression()), !dbg !3669
  call void @llvm.dbg.value(metadata i8 0, metadata !3587, metadata !DIExpression()), !dbg !3670
  call void @llvm.dbg.value(metadata i8 0, metadata !3588, metadata !DIExpression()), !dbg !3671
  %49 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !3672
  %50 = load i8, i8* %49, align 1, !dbg !3672, !tbaa !1129
  %51 = icmp eq i8 %50, 48, !dbg !3672
  br i1 %51, label %52, label %68, !dbg !3673

; <label>:52:                                     ; preds = %48
  call void @llvm.dbg.value(metadata i8* %6, metadata !3602, metadata !DIExpression()), !dbg !3674
  call void @llvm.dbg.value(metadata i8* null, metadata !3607, metadata !DIExpression()), !dbg !3676
  call void @llvm.dbg.value(metadata i8 51, metadata !3608, metadata !DIExpression()), !dbg !3677
  call void @llvm.dbg.value(metadata i8 48, metadata !3609, metadata !DIExpression()), !dbg !3678
  call void @llvm.dbg.value(metadata i8 0, metadata !3610, metadata !DIExpression()), !dbg !3679
  call void @llvm.dbg.value(metadata i8 0, metadata !3611, metadata !DIExpression()), !dbg !3680
  %53 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !3681
  %54 = load i8, i8* %53, align 1, !dbg !3681, !tbaa !1129
  %55 = icmp eq i8 %54, 51, !dbg !3681
  br i1 %55, label %56, label %68, !dbg !3682

; <label>:56:                                     ; preds = %52
  call void @llvm.dbg.value(metadata i8* %6, metadata !3683, metadata !DIExpression()), !dbg !3692
  call void @llvm.dbg.value(metadata i8* null, metadata !3688, metadata !DIExpression()), !dbg !3696
  call void @llvm.dbg.value(metadata i8 48, metadata !3689, metadata !DIExpression()), !dbg !3697
  call void @llvm.dbg.value(metadata i8 0, metadata !3690, metadata !DIExpression()), !dbg !3698
  call void @llvm.dbg.value(metadata i8 0, metadata !3691, metadata !DIExpression()), !dbg !3699
  %57 = getelementptr inbounds i8, i8* %6, i64 6, !dbg !3700
  %58 = load i8, i8* %57, align 1, !dbg !3700, !tbaa !1129
  %59 = icmp eq i8 %58, 48, !dbg !3700
  br i1 %59, label %60, label %68, !dbg !3702

; <label>:60:                                     ; preds = %56
  call void @llvm.dbg.value(metadata i8* %6, metadata !3703, metadata !DIExpression()), !dbg !3711
  call void @llvm.dbg.value(metadata i8* null, metadata !3708, metadata !DIExpression()), !dbg !3715
  call void @llvm.dbg.value(metadata i8 0, metadata !3709, metadata !DIExpression()), !dbg !3716
  call void @llvm.dbg.value(metadata i8 0, metadata !3710, metadata !DIExpression()), !dbg !3717
  %61 = getelementptr inbounds i8, i8* %6, i64 7, !dbg !3718
  %62 = load i8, i8* %61, align 1, !dbg !3718, !tbaa !1129
  %63 = icmp eq i8 %62, 0, !dbg !3718
  br i1 %63, label %64, label %68, !dbg !3720

; <label>:64:                                     ; preds = %60
  %65 = load i8, i8* %0, align 1, !dbg !3721, !tbaa !1129
  %66 = icmp eq i8 %65, 96, !dbg !3722
  %67 = select i1 %66, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17.119, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18.120, i64 0, i64 0), !dbg !3721
  br label %71, !dbg !3723

; <label>:68:                                     ; preds = %60, %5, %27, %23, %19, %14, %9, %56, %52, %48, %44, %40, %35
  %69 = icmp eq i32 %1, 9, !dbg !3724
  %70 = select i1 %69, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.116, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.115, i64 0, i64 0), !dbg !3725
  br label %71, !dbg !3726

; <label>:71:                                     ; preds = %2, %68, %64, %31
  %72 = phi i8* [ %34, %31 ], [ %67, %64 ], [ %70, %68 ], [ %3, %2 ], !dbg !3727
  ret i8* %72, !dbg !3728
}

; Function Attrs: argmemonly nounwind readonly
declare i64 @strlen(i8* nocapture) local_unnamed_addr #12

; Function Attrs: nounwind readonly
declare i32 @memcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #5

; Function Attrs: nounwind
declare i32 @iswprint(i32) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @mbsinit(%struct.__mbstate_t*) local_unnamed_addr #5

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_alloc(i8*, i64, %struct.quoting_options*) local_unnamed_addr #7 !dbg !3729 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3733, metadata !DIExpression()), !dbg !3736
  call void @llvm.dbg.value(metadata i64 %1, metadata !3734, metadata !DIExpression()), !dbg !3737
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !3735, metadata !DIExpression()), !dbg !3738
  call void @llvm.dbg.value(metadata i8* %0, metadata !3739, metadata !DIExpression()) #10, !dbg !3752
  call void @llvm.dbg.value(metadata i64 %1, metadata !3744, metadata !DIExpression()) #10, !dbg !3754
  call void @llvm.dbg.value(metadata i64* null, metadata !3745, metadata !DIExpression()) #10, !dbg !3755
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !3746, metadata !DIExpression()) #10, !dbg !3756
  %4 = icmp eq %struct.quoting_options* %2, null, !dbg !3757
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %2, !dbg !3757
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !3747, metadata !DIExpression()) #10, !dbg !3758
  %6 = tail call i32* @__errno_location() #17, !dbg !3759
  %7 = load i32, i32* %6, align 4, !dbg !3759, !tbaa !1043
  call void @llvm.dbg.value(metadata i32 %7, metadata !3748, metadata !DIExpression()) #10, !dbg !3760
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !3761
  %9 = load i32, i32* %8, align 4, !dbg !3761, !tbaa !2835
  %10 = or i32 %9, 1, !dbg !3762
  call void @llvm.dbg.value(metadata i32 %10, metadata !3749, metadata !DIExpression()) #10, !dbg !3763
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3764
  %12 = load i32, i32* %11, align 8, !dbg !3764, !tbaa !2776
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !3765
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3766
  %15 = load i8*, i8** %14, align 8, !dbg !3766, !tbaa !2861
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3767
  %17 = load i8*, i8** %16, align 8, !dbg !3767, !tbaa !2864
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %12, i32 %10, i32* nonnull %13, i8* %15, i8* %17) #10, !dbg !3768
  %19 = add i64 %18, 1, !dbg !3769
  call void @llvm.dbg.value(metadata i64 %19, metadata !3750, metadata !DIExpression()) #10, !dbg !3770
  call void @llvm.dbg.value(metadata i64 %19, metadata !3771, metadata !DIExpression()) #10, !dbg !3776
  %20 = tail call noalias i8* @xmalloc(i64 %19) #10, !dbg !3778
  call void @llvm.dbg.value(metadata i8* %20, metadata !3751, metadata !DIExpression()) #10, !dbg !3779
  %21 = load i32, i32* %11, align 8, !dbg !3780, !tbaa !2776
  %22 = load i8*, i8** %14, align 8, !dbg !3781, !tbaa !2861
  %23 = load i8*, i8** %16, align 8, !dbg !3782, !tbaa !2864
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %20, i64 %19, i8* %0, i64 %1, i32 %21, i32 %10, i32* nonnull %13, i8* %22, i8* %23) #10, !dbg !3783
  store i32 %7, i32* %6, align 4, !dbg !3784, !tbaa !1043
  ret i8* %20, !dbg !3785
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_alloc_mem(i8*, i64, i64*, %struct.quoting_options*) local_unnamed_addr #7 !dbg !3740 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3739, metadata !DIExpression()), !dbg !3786
  call void @llvm.dbg.value(metadata i64 %1, metadata !3744, metadata !DIExpression()), !dbg !3787
  call void @llvm.dbg.value(metadata i64* %2, metadata !3745, metadata !DIExpression()), !dbg !3788
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !3746, metadata !DIExpression()), !dbg !3789
  %5 = icmp eq %struct.quoting_options* %3, null, !dbg !3790
  %6 = select i1 %5, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %3, !dbg !3790
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !3747, metadata !DIExpression()), !dbg !3791
  %7 = tail call i32* @__errno_location() #17, !dbg !3792
  %8 = load i32, i32* %7, align 4, !dbg !3792, !tbaa !1043
  call void @llvm.dbg.value(metadata i32 %8, metadata !3748, metadata !DIExpression()), !dbg !3793
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !3794
  %10 = load i32, i32* %9, align 4, !dbg !3794, !tbaa !2835
  %11 = icmp ne i64* %2, null, !dbg !3795
  %12 = xor i1 %11, true, !dbg !3795
  %13 = zext i1 %12 to i32, !dbg !3795
  %14 = or i32 %10, %13, !dbg !3796
  call void @llvm.dbg.value(metadata i32 %14, metadata !3749, metadata !DIExpression()), !dbg !3797
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !3798
  %16 = load i32, i32* %15, align 8, !dbg !3798, !tbaa !2776
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !3799
  %18 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !3800
  %19 = load i8*, i8** %18, align 8, !dbg !3800, !tbaa !2861
  %20 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !3801
  %21 = load i8*, i8** %20, align 8, !dbg !3801, !tbaa !2864
  %22 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %16, i32 %14, i32* nonnull %17, i8* %19, i8* %21), !dbg !3802
  %23 = add i64 %22, 1, !dbg !3803
  call void @llvm.dbg.value(metadata i64 %23, metadata !3750, metadata !DIExpression()), !dbg !3804
  call void @llvm.dbg.value(metadata i64 %23, metadata !3771, metadata !DIExpression()) #10, !dbg !3805
  %24 = tail call noalias i8* @xmalloc(i64 %23) #10, !dbg !3807
  call void @llvm.dbg.value(metadata i8* %24, metadata !3751, metadata !DIExpression()), !dbg !3808
  %25 = load i32, i32* %15, align 8, !dbg !3809, !tbaa !2776
  %26 = load i8*, i8** %18, align 8, !dbg !3810, !tbaa !2861
  %27 = load i8*, i8** %20, align 8, !dbg !3811, !tbaa !2864
  %28 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %24, i64 %23, i8* %0, i64 %1, i32 %25, i32 %14, i32* nonnull %17, i8* %26, i8* %27), !dbg !3812
  store i32 %8, i32* %7, align 4, !dbg !3813, !tbaa !1043
  br i1 %11, label %29, label %30, !dbg !3814

; <label>:29:                                     ; preds = %4
  store i64 %22, i64* %2, align 8, !dbg !3815, !tbaa !1101
  br label %30, !dbg !3817

; <label>:30:                                     ; preds = %29, %4
  ret i8* %24, !dbg !3818
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @quotearg_free() local_unnamed_addr #7 !dbg !3819 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !3823, !tbaa !835
  call void @llvm.dbg.value(metadata %struct.slotvec* %1, metadata !3821, metadata !DIExpression()), !dbg !3824
  call void @llvm.dbg.value(metadata i32 1, metadata !3822, metadata !DIExpression()), !dbg !3825
  %2 = load i32, i32* @nslots, align 4, !dbg !3826, !tbaa !1043
  %3 = icmp sgt i32 %2, 1, !dbg !3829
  br i1 %3, label %4, label %12, !dbg !3830

; <label>:4:                                      ; preds = %0, %4
  %5 = phi i64 [ %8, %4 ], [ 1, %0 ]
  call void @llvm.dbg.value(metadata i64 %5, metadata !3822, metadata !DIExpression()), !dbg !3825
  %6 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %5, i32 1, !dbg !3831
  %7 = load i8*, i8** %6, align 8, !dbg !3831, !tbaa !3832
  tail call void @free(i8* %7) #10, !dbg !3834
  %8 = add nuw nsw i64 %5, 1, !dbg !3835
  call void @llvm.dbg.value(metadata i32 undef, metadata !3822, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !3825
  %9 = load i32, i32* @nslots, align 4, !dbg !3826, !tbaa !1043
  %10 = sext i32 %9 to i64, !dbg !3829
  %11 = icmp slt i64 %8, %10, !dbg !3829
  br i1 %11, label %4, label %12, !dbg !3830, !llvm.loop !3836

; <label>:12:                                     ; preds = %4, %0
  %13 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1, !dbg !3838
  %14 = load i8*, i8** %13, align 8, !dbg !3838, !tbaa !3832
  %15 = icmp eq i8* %14, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !3840
  br i1 %15, label %17, label %16, !dbg !3841

; <label>:16:                                     ; preds = %12
  tail call void @free(i8* %14) #10, !dbg !3842
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !dbg !3844, !tbaa !3845
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !dbg !3846, !tbaa !3832
  br label %17, !dbg !3847

; <label>:17:                                     ; preds = %12, %16
  %18 = icmp eq %struct.slotvec* %1, @slotvec0, !dbg !3848
  br i1 %18, label %21, label %19, !dbg !3850

; <label>:19:                                     ; preds = %17
  %20 = bitcast %struct.slotvec* %1 to i8*, !dbg !3851
  tail call void @free(i8* %20) #10, !dbg !3853
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !3854, !tbaa !835
  br label %21, !dbg !3855

; <label>:21:                                     ; preds = %17, %19
  store i32 1, i32* @nslots, align 4, !dbg !3856, !tbaa !1043
  ret void, !dbg !3857
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n(i32, i8*) local_unnamed_addr #7 !dbg !3858 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3862, metadata !DIExpression()), !dbg !3864
  call void @llvm.dbg.value(metadata i8* %1, metadata !3863, metadata !DIExpression()), !dbg !3865
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @default_quoting_options), !dbg !3866
  ret i8* %3, !dbg !3867
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @quotearg_n_options(i32, i8*, i64, %struct.quoting_options*) unnamed_addr #7 !dbg !3868 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3872, metadata !DIExpression()), !dbg !3887
  call void @llvm.dbg.value(metadata i8* %1, metadata !3873, metadata !DIExpression()), !dbg !3888
  call void @llvm.dbg.value(metadata i64 %2, metadata !3874, metadata !DIExpression()), !dbg !3889
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !3875, metadata !DIExpression()), !dbg !3890
  %5 = tail call i32* @__errno_location() #17, !dbg !3891
  %6 = load i32, i32* %5, align 4, !dbg !3891, !tbaa !1043
  call void @llvm.dbg.value(metadata i32 %6, metadata !3876, metadata !DIExpression()), !dbg !3892
  %7 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !3893, !tbaa !835
  call void @llvm.dbg.value(metadata %struct.slotvec* %7, metadata !3877, metadata !DIExpression()), !dbg !3894
  %8 = icmp slt i32 %0, 0, !dbg !3895
  br i1 %8, label %9, label %10, !dbg !3897

; <label>:9:                                      ; preds = %4
  tail call void @abort() #15, !dbg !3898
  unreachable, !dbg !3898

; <label>:10:                                     ; preds = %4
  %11 = load i32, i32* @nslots, align 4, !dbg !3899, !tbaa !1043
  %12 = icmp sgt i32 %11, %0, !dbg !3900
  br i1 %12, label %34, label %13, !dbg !3901

; <label>:13:                                     ; preds = %10
  %14 = icmp eq %struct.slotvec* %7, @slotvec0, !dbg !3902
  call void @llvm.dbg.value(metadata i32 2147483646, metadata !3881, metadata !DIExpression()), !dbg !3903
  %15 = icmp eq i32 %0, 2147483647, !dbg !3904
  br i1 %15, label %16, label %17, !dbg !3906

; <label>:16:                                     ; preds = %13
  tail call void @xalloc_die() #15, !dbg !3907
  unreachable, !dbg !3907

; <label>:17:                                     ; preds = %13
  %18 = select i1 %14, %struct.slotvec* null, %struct.slotvec* %7, !dbg !3908
  %19 = bitcast %struct.slotvec* %18 to i8*, !dbg !3908
  %20 = add nsw i32 %0, 1, !dbg !3909
  %21 = sext i32 %20 to i64, !dbg !3910
  %22 = shl nsw i64 %21, 4, !dbg !3911
  %23 = tail call i8* @xrealloc(i8* %19, i64 %22) #10, !dbg !3912
  %24 = bitcast i8* %23 to %struct.slotvec*, !dbg !3912
  call void @llvm.dbg.value(metadata %struct.slotvec* %24, metadata !3877, metadata !DIExpression()), !dbg !3894
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !dbg !3913, !tbaa !835
  br i1 %14, label %25, label %26, !dbg !3914

; <label>:25:                                     ; preds = %17
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %23, i8* align 8 bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i1 false), !dbg !3915, !tbaa.struct !3917
  br label %26, !dbg !3918

; <label>:26:                                     ; preds = %25, %17
  %27 = load i32, i32* @nslots, align 4, !dbg !3919, !tbaa !1043
  %28 = sext i32 %27 to i64, !dbg !3920
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28, !dbg !3920
  %30 = bitcast %struct.slotvec* %29 to i8*, !dbg !3921
  %31 = sub nsw i32 %20, %27, !dbg !3922
  %32 = sext i32 %31 to i64, !dbg !3923
  %33 = shl nsw i64 %32, 4, !dbg !3924
  tail call void @llvm.memset.p0i8.i64(i8* align 8 %30, i8 0, i64 %33, i1 false), !dbg !3921
  store i32 %20, i32* @nslots, align 4, !dbg !3925, !tbaa !1043
  br label %34, !dbg !3926

; <label>:34:                                     ; preds = %10, %26
  %35 = phi %struct.slotvec* [ %24, %26 ], [ %7, %10 ], !dbg !3927
  call void @llvm.dbg.value(metadata %struct.slotvec* %35, metadata !3877, metadata !DIExpression()), !dbg !3894
  %36 = sext i32 %0 to i64, !dbg !3928
  %37 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 0, !dbg !3929
  %38 = load i64, i64* %37, align 8, !dbg !3929, !tbaa !3845
  call void @llvm.dbg.value(metadata i64 %38, metadata !3882, metadata !DIExpression()), !dbg !3930
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 1, !dbg !3931
  %40 = load i8*, i8** %39, align 8, !dbg !3931, !tbaa !3832
  call void @llvm.dbg.value(metadata i8* %40, metadata !3884, metadata !DIExpression()), !dbg !3932
  %41 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !3933
  %42 = load i32, i32* %41, align 4, !dbg !3933, !tbaa !2835
  %43 = or i32 %42, 1, !dbg !3934
  call void @llvm.dbg.value(metadata i32 %43, metadata !3885, metadata !DIExpression()), !dbg !3935
  %44 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !3936
  %45 = load i32, i32* %44, align 8, !dbg !3936, !tbaa !2776
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !3937
  %47 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !3938
  %48 = load i8*, i8** %47, align 8, !dbg !3938, !tbaa !2861
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !3939
  %50 = load i8*, i8** %49, align 8, !dbg !3939, !tbaa !2864
  %51 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %40, i64 %38, i8* %1, i64 %2, i32 %45, i32 %43, i32* nonnull %46, i8* %48, i8* %50), !dbg !3940
  call void @llvm.dbg.value(metadata i64 %51, metadata !3886, metadata !DIExpression()), !dbg !3941
  %52 = icmp ugt i64 %38, %51, !dbg !3942
  br i1 %52, label %63, label %53, !dbg !3944

; <label>:53:                                     ; preds = %34
  %54 = add i64 %51, 1, !dbg !3945
  call void @llvm.dbg.value(metadata i64 %54, metadata !3882, metadata !DIExpression()), !dbg !3930
  store i64 %54, i64* %37, align 8, !dbg !3947, !tbaa !3845
  %55 = icmp eq i8* %40, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !3948
  br i1 %55, label %57, label %56, !dbg !3950

; <label>:56:                                     ; preds = %53
  tail call void @free(i8* %40) #10, !dbg !3951
  br label %57, !dbg !3951

; <label>:57:                                     ; preds = %53, %56
  call void @llvm.dbg.value(metadata i64 %54, metadata !3771, metadata !DIExpression()) #10, !dbg !3952
  %58 = tail call noalias i8* @xmalloc(i64 %54) #10, !dbg !3954
  call void @llvm.dbg.value(metadata i8* %58, metadata !3884, metadata !DIExpression()), !dbg !3932
  store i8* %58, i8** %39, align 8, !dbg !3955, !tbaa !3832
  %59 = load i32, i32* %44, align 8, !dbg !3956, !tbaa !2776
  %60 = load i8*, i8** %47, align 8, !dbg !3957, !tbaa !2861
  %61 = load i8*, i8** %49, align 8, !dbg !3958, !tbaa !2864
  %62 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %58, i64 %54, i8* %1, i64 %2, i32 %59, i32 %43, i32* nonnull %46, i8* %60, i8* %61), !dbg !3959
  br label %63, !dbg !3960

; <label>:63:                                     ; preds = %34, %57
  %64 = phi i8* [ %58, %57 ], [ %40, %34 ], !dbg !3961
  call void @llvm.dbg.value(metadata i8* %64, metadata !3884, metadata !DIExpression()), !dbg !3932
  store i32 %6, i32* %5, align 4, !dbg !3962, !tbaa !1043
  ret i8* %64, !dbg !3963
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1) #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_mem(i32, i8*, i64) local_unnamed_addr #7 !dbg !3964 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3968, metadata !DIExpression()), !dbg !3971
  call void @llvm.dbg.value(metadata i8* %1, metadata !3969, metadata !DIExpression()), !dbg !3972
  call void @llvm.dbg.value(metadata i64 %2, metadata !3970, metadata !DIExpression()), !dbg !3973
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @default_quoting_options), !dbg !3974
  ret i8* %4, !dbg !3975
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg(i8*) local_unnamed_addr #7 !dbg !3976 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3980, metadata !DIExpression()), !dbg !3981
  call void @llvm.dbg.value(metadata i32 0, metadata !3862, metadata !DIExpression()) #10, !dbg !3982
  call void @llvm.dbg.value(metadata i8* %0, metadata !3863, metadata !DIExpression()) #10, !dbg !3984
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @default_quoting_options) #10, !dbg !3985
  ret i8* %2, !dbg !3986
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_mem(i8*, i64) local_unnamed_addr #7 !dbg !3987 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3991, metadata !DIExpression()), !dbg !3993
  call void @llvm.dbg.value(metadata i64 %1, metadata !3992, metadata !DIExpression()), !dbg !3994
  call void @llvm.dbg.value(metadata i32 0, metadata !3968, metadata !DIExpression()) #10, !dbg !3995
  call void @llvm.dbg.value(metadata i8* %0, metadata !3969, metadata !DIExpression()) #10, !dbg !3997
  call void @llvm.dbg.value(metadata i64 %1, metadata !3970, metadata !DIExpression()) #10, !dbg !3998
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @default_quoting_options) #10, !dbg !3999
  ret i8* %3, !dbg !4000
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style(i32, i32, i8*) local_unnamed_addr #7 !dbg !4001 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !4005, metadata !DIExpression()), !dbg !4009
  call void @llvm.dbg.value(metadata i32 %1, metadata !4006, metadata !DIExpression()), !dbg !4010
  call void @llvm.dbg.value(metadata i8* %2, metadata !4007, metadata !DIExpression()), !dbg !4011
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !4012
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #10, !dbg !4012
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !4008, metadata !DIExpression(DW_OP_deref)), !dbg !4013
  call void @llvm.dbg.value(metadata i32 %1, metadata !4014, metadata !DIExpression()) #10, !dbg !4020
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %5, i8 0, i64 56, i1 false) #10, !dbg !4022, !alias.scope !4023
  %6 = icmp eq i32 %1, 10, !dbg !4026
  br i1 %6, label %7, label %8, !dbg !4028

; <label>:7:                                      ; preds = %3
  tail call void @abort() #15, !dbg !4029, !noalias !4023
  unreachable, !dbg !4029

; <label>:8:                                      ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !4030
  store i32 %1, i32* %9, align 8, !dbg !4031, !tbaa !2776, !alias.scope !4023
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !4008, metadata !DIExpression(DW_OP_deref)), !dbg !4013
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !4019, metadata !DIExpression(DW_OP_deref)), !dbg !4022
  %10 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !4032
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #10, !dbg !4033
  ret i8* %10, !dbg !4034
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_mem(i32, i32, i8*, i64) local_unnamed_addr #7 !dbg !4035 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !4039, metadata !DIExpression()), !dbg !4044
  call void @llvm.dbg.value(metadata i32 %1, metadata !4040, metadata !DIExpression()), !dbg !4045
  call void @llvm.dbg.value(metadata i8* %2, metadata !4041, metadata !DIExpression()), !dbg !4046
  call void @llvm.dbg.value(metadata i64 %3, metadata !4042, metadata !DIExpression()), !dbg !4047
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !4048
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #10, !dbg !4048
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !4043, metadata !DIExpression(DW_OP_deref)), !dbg !4049
  call void @llvm.dbg.value(metadata i32 %1, metadata !4014, metadata !DIExpression()) #10, !dbg !4050
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %6, i8 0, i64 56, i1 false) #10, !dbg !4052, !alias.scope !4053
  %7 = icmp eq i32 %1, 10, !dbg !4056
  br i1 %7, label %8, label %9, !dbg !4057

; <label>:8:                                      ; preds = %4
  tail call void @abort() #15, !dbg !4058, !noalias !4053
  unreachable, !dbg !4058

; <label>:9:                                      ; preds = %4
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !4059
  store i32 %1, i32* %10, align 8, !dbg !4060, !tbaa !2776, !alias.scope !4053
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !4043, metadata !DIExpression(DW_OP_deref)), !dbg !4049
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !4019, metadata !DIExpression(DW_OP_deref)), !dbg !4052
  %11 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5), !dbg !4061
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #10, !dbg !4062
  ret i8* %11, !dbg !4063
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style(i32, i8*) local_unnamed_addr #7 !dbg !4064 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !4068, metadata !DIExpression()), !dbg !4070
  call void @llvm.dbg.value(metadata i8* %1, metadata !4069, metadata !DIExpression()), !dbg !4071
  call void @llvm.dbg.value(metadata i32 0, metadata !4005, metadata !DIExpression()) #10, !dbg !4072
  call void @llvm.dbg.value(metadata i32 %0, metadata !4006, metadata !DIExpression()) #10, !dbg !4074
  call void @llvm.dbg.value(metadata i8* %1, metadata !4007, metadata !DIExpression()) #10, !dbg !4075
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !4076
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #10, !dbg !4076
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !4008, metadata !DIExpression(DW_OP_deref)) #10, !dbg !4077
  call void @llvm.dbg.value(metadata i32 %0, metadata !4014, metadata !DIExpression()) #10, !dbg !4078
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %4, i8 0, i64 56, i1 false) #10, !dbg !4080, !alias.scope !4081
  %5 = icmp eq i32 %0, 10, !dbg !4084
  br i1 %5, label %6, label %7, !dbg !4085

; <label>:6:                                      ; preds = %2
  tail call void @abort() #15, !dbg !4086, !noalias !4081
  unreachable, !dbg !4086

; <label>:7:                                      ; preds = %2
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !4087
  store i32 %0, i32* %8, align 8, !dbg !4088, !tbaa !2776, !alias.scope !4081
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !4008, metadata !DIExpression(DW_OP_deref)) #10, !dbg !4077
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !4019, metadata !DIExpression(DW_OP_deref)) #10, !dbg !4080
  %9 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 -1, %struct.quoting_options* nonnull %3) #10, !dbg !4089
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #10, !dbg !4090
  ret i8* %9, !dbg !4091
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style_mem(i32, i8*, i64) local_unnamed_addr #7 !dbg !4092 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !4096, metadata !DIExpression()), !dbg !4099
  call void @llvm.dbg.value(metadata i8* %1, metadata !4097, metadata !DIExpression()), !dbg !4100
  call void @llvm.dbg.value(metadata i64 %2, metadata !4098, metadata !DIExpression()), !dbg !4101
  call void @llvm.dbg.value(metadata i32 0, metadata !4039, metadata !DIExpression()) #10, !dbg !4102
  call void @llvm.dbg.value(metadata i32 %0, metadata !4040, metadata !DIExpression()) #10, !dbg !4104
  call void @llvm.dbg.value(metadata i8* %1, metadata !4041, metadata !DIExpression()) #10, !dbg !4105
  call void @llvm.dbg.value(metadata i64 %2, metadata !4042, metadata !DIExpression()) #10, !dbg !4106
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !4107
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #10, !dbg !4107
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !4043, metadata !DIExpression(DW_OP_deref)) #10, !dbg !4108
  call void @llvm.dbg.value(metadata i32 %0, metadata !4014, metadata !DIExpression()) #10, !dbg !4109
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %5, i8 0, i64 56, i1 false) #10, !dbg !4111, !alias.scope !4112
  %6 = icmp eq i32 %0, 10, !dbg !4115
  br i1 %6, label %7, label %8, !dbg !4116

; <label>:7:                                      ; preds = %3
  tail call void @abort() #15, !dbg !4117, !noalias !4112
  unreachable, !dbg !4117

; <label>:8:                                      ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !4118
  store i32 %0, i32* %9, align 8, !dbg !4119, !tbaa !2776, !alias.scope !4112
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !4043, metadata !DIExpression(DW_OP_deref)) #10, !dbg !4108
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !4019, metadata !DIExpression(DW_OP_deref)) #10, !dbg !4111
  %10 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 %2, %struct.quoting_options* nonnull %4) #10, !dbg !4120
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #10, !dbg !4121
  ret i8* %10, !dbg !4122
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char_mem(i8*, i64, i8 signext) local_unnamed_addr #7 !dbg !4123 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !4127, metadata !DIExpression()), !dbg !4131
  call void @llvm.dbg.value(metadata i64 %1, metadata !4128, metadata !DIExpression()), !dbg !4132
  call void @llvm.dbg.value(metadata i8 %2, metadata !4129, metadata !DIExpression()), !dbg !4133
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !4134
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #10, !dbg !4134
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %5, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !4135, !tbaa.struct !4136
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !4130, metadata !DIExpression(DW_OP_deref)), !dbg !4137
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2795, metadata !DIExpression()), !dbg !4138
  call void @llvm.dbg.value(metadata i8 %2, metadata !2796, metadata !DIExpression()), !dbg !4140
  call void @llvm.dbg.value(metadata i32 1, metadata !2797, metadata !DIExpression()), !dbg !4141
  call void @llvm.dbg.value(metadata i8 %2, metadata !2798, metadata !DIExpression()), !dbg !4142
  %6 = lshr i8 %2, 5, !dbg !4143
  %7 = zext i8 %6 to i64, !dbg !4143
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !4144
  call void @llvm.dbg.value(metadata i32* %8, metadata !2799, metadata !DIExpression()), !dbg !4145
  %9 = and i8 %2, 31, !dbg !4146
  %10 = zext i8 %9 to i32, !dbg !4146
  call void @llvm.dbg.value(metadata i32 %10, metadata !2801, metadata !DIExpression()), !dbg !4147
  %11 = load i32, i32* %8, align 4, !dbg !4148, !tbaa !1043
  %12 = lshr i32 %11, %10, !dbg !4149
  %13 = and i32 %12, 1, !dbg !4150
  call void @llvm.dbg.value(metadata i32 %13, metadata !2802, metadata !DIExpression()), !dbg !4151
  %14 = xor i32 %13, 1, !dbg !4152
  %15 = shl i32 %14, %10, !dbg !4153
  %16 = xor i32 %15, %11, !dbg !4154
  store i32 %16, i32* %8, align 4, !dbg !4154, !tbaa !1043
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !4130, metadata !DIExpression(DW_OP_deref)), !dbg !4137
  %17 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %4), !dbg !4155
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #10, !dbg !4156
  ret i8* %17, !dbg !4157
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char(i8*, i8 signext) local_unnamed_addr #7 !dbg !4158 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !4162, metadata !DIExpression()), !dbg !4164
  call void @llvm.dbg.value(metadata i8 %1, metadata !4163, metadata !DIExpression()), !dbg !4165
  call void @llvm.dbg.value(metadata i8* %0, metadata !4127, metadata !DIExpression()) #10, !dbg !4166
  call void @llvm.dbg.value(metadata i64 -1, metadata !4128, metadata !DIExpression()) #10, !dbg !4168
  call void @llvm.dbg.value(metadata i8 %1, metadata !4129, metadata !DIExpression()) #10, !dbg !4169
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !4170
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #10, !dbg !4170
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %4, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #10, !dbg !4171, !tbaa.struct !4136
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !4130, metadata !DIExpression(DW_OP_deref)) #10, !dbg !4172
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2795, metadata !DIExpression()) #10, !dbg !4173
  call void @llvm.dbg.value(metadata i8 %1, metadata !2796, metadata !DIExpression()) #10, !dbg !4175
  call void @llvm.dbg.value(metadata i32 1, metadata !2797, metadata !DIExpression()) #10, !dbg !4176
  call void @llvm.dbg.value(metadata i8 %1, metadata !2798, metadata !DIExpression()) #10, !dbg !4177
  %5 = lshr i8 %1, 5, !dbg !4178
  %6 = zext i8 %5 to i64, !dbg !4178
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !4179
  call void @llvm.dbg.value(metadata i32* %7, metadata !2799, metadata !DIExpression()) #10, !dbg !4180
  %8 = and i8 %1, 31, !dbg !4181
  %9 = zext i8 %8 to i32, !dbg !4181
  call void @llvm.dbg.value(metadata i32 %9, metadata !2801, metadata !DIExpression()) #10, !dbg !4182
  %10 = load i32, i32* %7, align 4, !dbg !4183, !tbaa !1043
  %11 = lshr i32 %10, %9, !dbg !4184
  %12 = and i32 %11, 1, !dbg !4185
  call void @llvm.dbg.value(metadata i32 %12, metadata !2802, metadata !DIExpression()) #10, !dbg !4186
  %13 = xor i32 %12, 1, !dbg !4187
  %14 = shl i32 %13, %9, !dbg !4188
  %15 = xor i32 %14, %10, !dbg !4189
  store i32 %15, i32* %7, align 4, !dbg !4189, !tbaa !1043
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !4130, metadata !DIExpression(DW_OP_deref)) #10, !dbg !4172
  %16 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %3) #10, !dbg !4190
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #10, !dbg !4191
  ret i8* %16, !dbg !4192
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon(i8*) local_unnamed_addr #7 !dbg !4193 {
  %2 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !4195, metadata !DIExpression()), !dbg !4196
  call void @llvm.dbg.value(metadata i8* %0, metadata !4162, metadata !DIExpression()) #10, !dbg !4197
  call void @llvm.dbg.value(metadata i8 58, metadata !4163, metadata !DIExpression()) #10, !dbg !4199
  call void @llvm.dbg.value(metadata i8* %0, metadata !4127, metadata !DIExpression()) #10, !dbg !4200
  call void @llvm.dbg.value(metadata i64 -1, metadata !4128, metadata !DIExpression()) #10, !dbg !4202
  call void @llvm.dbg.value(metadata i8 58, metadata !4129, metadata !DIExpression()) #10, !dbg !4203
  %3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !4204
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %3) #10, !dbg !4204
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %3, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #10, !dbg !4205, !tbaa.struct !4136
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !4130, metadata !DIExpression(DW_OP_deref)) #10, !dbg !4206
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2795, metadata !DIExpression()) #10, !dbg !4207
  call void @llvm.dbg.value(metadata i8 58, metadata !2796, metadata !DIExpression()) #10, !dbg !4209
  call void @llvm.dbg.value(metadata i32 1, metadata !2797, metadata !DIExpression()) #10, !dbg !4210
  call void @llvm.dbg.value(metadata i8 58, metadata !2798, metadata !DIExpression()) #10, !dbg !4211
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !4212
  call void @llvm.dbg.value(metadata i32* %4, metadata !2799, metadata !DIExpression()) #10, !dbg !4213
  call void @llvm.dbg.value(metadata i32 26, metadata !2801, metadata !DIExpression()) #10, !dbg !4214
  %5 = load i32, i32* %4, align 4, !dbg !4215, !tbaa !1043
  %6 = or i32 %5, 67108864, !dbg !4216
  store i32 %6, i32* %4, align 4, !dbg !4216, !tbaa !1043
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !4130, metadata !DIExpression(DW_OP_deref)) #10, !dbg !4206
  %7 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %2) #10, !dbg !4217
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %3) #10, !dbg !4218
  ret i8* %7, !dbg !4219
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon_mem(i8*, i64) local_unnamed_addr #7 !dbg !4220 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !4222, metadata !DIExpression()), !dbg !4224
  call void @llvm.dbg.value(metadata i64 %1, metadata !4223, metadata !DIExpression()), !dbg !4225
  call void @llvm.dbg.value(metadata i8* %0, metadata !4127, metadata !DIExpression()) #10, !dbg !4226
  call void @llvm.dbg.value(metadata i64 %1, metadata !4128, metadata !DIExpression()) #10, !dbg !4228
  call void @llvm.dbg.value(metadata i8 58, metadata !4129, metadata !DIExpression()) #10, !dbg !4229
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !4230
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #10, !dbg !4230
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %4, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #10, !dbg !4231, !tbaa.struct !4136
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !4130, metadata !DIExpression(DW_OP_deref)) #10, !dbg !4232
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2795, metadata !DIExpression()) #10, !dbg !4233
  call void @llvm.dbg.value(metadata i8 58, metadata !2796, metadata !DIExpression()) #10, !dbg !4235
  call void @llvm.dbg.value(metadata i32 1, metadata !2797, metadata !DIExpression()) #10, !dbg !4236
  call void @llvm.dbg.value(metadata i8 58, metadata !2798, metadata !DIExpression()) #10, !dbg !4237
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !4238
  call void @llvm.dbg.value(metadata i32* %5, metadata !2799, metadata !DIExpression()) #10, !dbg !4239
  call void @llvm.dbg.value(metadata i32 26, metadata !2801, metadata !DIExpression()) #10, !dbg !4240
  %6 = load i32, i32* %5, align 4, !dbg !4241, !tbaa !1043
  %7 = or i32 %6, 67108864, !dbg !4242
  store i32 %7, i32* %5, align 4, !dbg !4242, !tbaa !1043
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !4130, metadata !DIExpression(DW_OP_deref)) #10, !dbg !4232
  %8 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %3) #10, !dbg !4243
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #10, !dbg !4244
  ret i8* %8, !dbg !4245
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_colon(i32, i32, i8*) local_unnamed_addr #7 !dbg !4246 {
  %4 = alloca %struct.quoting_options, align 8
  %5 = alloca [52 x i8], align 4
  call void @llvm.dbg.declare(metadata [52 x i8]* %5, metadata !4019, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416)), !dbg !4252
  call void @llvm.dbg.value(metadata i32 %0, metadata !4248, metadata !DIExpression()), !dbg !4254
  call void @llvm.dbg.value(metadata i32 %1, metadata !4249, metadata !DIExpression()), !dbg !4255
  call void @llvm.dbg.value(metadata i8* %2, metadata !4250, metadata !DIExpression()), !dbg !4256
  %6 = bitcast %struct.quoting_options* %4 to i8*, !dbg !4257
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #10, !dbg !4257
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %5, i64 0, i64 0, !dbg !4258
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %7), !dbg !4258
  call void @llvm.dbg.value(metadata i32 %1, metadata !4014, metadata !DIExpression()) #10, !dbg !4259
  call void @llvm.dbg.value(metadata i32 0, metadata !4019, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !4252
  call void @llvm.memset.p0i8.i64(i8* nonnull align 4 %7, i8 0, i64 52, i1 false), !dbg !4252, !alias.scope !4260
  %8 = icmp eq i32 %1, 10, !dbg !4263
  br i1 %8, label %9, label %10, !dbg !4264

; <label>:9:                                      ; preds = %3
  tail call void @abort() #15, !dbg !4265, !noalias !4260
  unreachable, !dbg !4265

; <label>:10:                                     ; preds = %3
  call void @llvm.dbg.value(metadata i32 %1, metadata !4019, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !4252
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !4258
  store i32 %1, i32* %11, align 8, !dbg !4258
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !4258
  %13 = bitcast i32* %12 to i8*, !dbg !4258
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 4 %13, i8* nonnull align 4 %7, i64 52, i1 false), !dbg !4258
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %7), !dbg !4258
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !4251, metadata !DIExpression(DW_OP_deref)), !dbg !4266
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2795, metadata !DIExpression()), !dbg !4267
  call void @llvm.dbg.value(metadata i8 58, metadata !2796, metadata !DIExpression()), !dbg !4269
  call void @llvm.dbg.value(metadata i32 1, metadata !2797, metadata !DIExpression()), !dbg !4270
  call void @llvm.dbg.value(metadata i8 58, metadata !2798, metadata !DIExpression()), !dbg !4271
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 1, !dbg !4272
  call void @llvm.dbg.value(metadata i32* %14, metadata !2799, metadata !DIExpression()), !dbg !4273
  call void @llvm.dbg.value(metadata i32 26, metadata !2801, metadata !DIExpression()), !dbg !4274
  %15 = load i32, i32* %14, align 4, !dbg !4275, !tbaa !1043
  %16 = or i32 %15, 67108864, !dbg !4276
  store i32 %16, i32* %14, align 4, !dbg !4276, !tbaa !1043
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !4251, metadata !DIExpression(DW_OP_deref)), !dbg !4266
  %17 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !4277
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #10, !dbg !4278
  ret i8* %17, !dbg !4279
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom(i32, i8*, i8*, i8*) local_unnamed_addr #7 !dbg !4280 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !4284, metadata !DIExpression()), !dbg !4288
  call void @llvm.dbg.value(metadata i8* %1, metadata !4285, metadata !DIExpression()), !dbg !4289
  call void @llvm.dbg.value(metadata i8* %2, metadata !4286, metadata !DIExpression()), !dbg !4290
  call void @llvm.dbg.value(metadata i8* %3, metadata !4287, metadata !DIExpression()), !dbg !4291
  call void @llvm.dbg.value(metadata i32 %0, metadata !4292, metadata !DIExpression()) #10, !dbg !4302
  call void @llvm.dbg.value(metadata i8* %1, metadata !4297, metadata !DIExpression()) #10, !dbg !4304
  call void @llvm.dbg.value(metadata i8* %2, metadata !4298, metadata !DIExpression()) #10, !dbg !4305
  call void @llvm.dbg.value(metadata i8* %3, metadata !4299, metadata !DIExpression()) #10, !dbg !4306
  call void @llvm.dbg.value(metadata i64 -1, metadata !4300, metadata !DIExpression()) #10, !dbg !4307
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !4308
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #10, !dbg !4308
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %6, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #10, !dbg !4309, !tbaa.struct !4136
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !4301, metadata !DIExpression(DW_OP_deref)) #10, !dbg !4310
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2843, metadata !DIExpression()) #10, !dbg !4311
  call void @llvm.dbg.value(metadata i8* %1, metadata !2844, metadata !DIExpression()) #10, !dbg !4313
  call void @llvm.dbg.value(metadata i8* %2, metadata !2845, metadata !DIExpression()) #10, !dbg !4314
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2843, metadata !DIExpression()) #10, !dbg !4311
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !4315
  store i32 10, i32* %7, align 8, !dbg !4316, !tbaa !2776
  %8 = icmp ne i8* %1, null, !dbg !4317
  %9 = icmp ne i8* %2, null, !dbg !4318
  %10 = and i1 %8, %9, !dbg !4319
  br i1 %10, label %12, label %11, !dbg !4319

; <label>:11:                                     ; preds = %4
  tail call void @abort() #15, !dbg !4320
  unreachable, !dbg !4320

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !4321
  store i8* %1, i8** %13, align 8, !dbg !4322, !tbaa !2861
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !4323
  store i8* %2, i8** %14, align 8, !dbg !4324, !tbaa !2864
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !4301, metadata !DIExpression(DW_OP_deref)) #10, !dbg !4310
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 -1, %struct.quoting_options* nonnull %5) #10, !dbg !4325
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #10, !dbg !4326
  ret i8* %15, !dbg !4327
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom_mem(i32, i8*, i8*, i8*, i64) local_unnamed_addr #7 !dbg !4293 {
  %6 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !4292, metadata !DIExpression()), !dbg !4328
  call void @llvm.dbg.value(metadata i8* %1, metadata !4297, metadata !DIExpression()), !dbg !4329
  call void @llvm.dbg.value(metadata i8* %2, metadata !4298, metadata !DIExpression()), !dbg !4330
  call void @llvm.dbg.value(metadata i8* %3, metadata !4299, metadata !DIExpression()), !dbg !4331
  call void @llvm.dbg.value(metadata i64 %4, metadata !4300, metadata !DIExpression()), !dbg !4332
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !4333
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #10, !dbg !4333
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %7, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !4334, !tbaa.struct !4136
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !4301, metadata !DIExpression(DW_OP_deref)), !dbg !4335
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !2843, metadata !DIExpression()) #10, !dbg !4336
  call void @llvm.dbg.value(metadata i8* %1, metadata !2844, metadata !DIExpression()) #10, !dbg !4338
  call void @llvm.dbg.value(metadata i8* %2, metadata !2845, metadata !DIExpression()) #10, !dbg !4339
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !2843, metadata !DIExpression()) #10, !dbg !4336
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !4340
  store i32 10, i32* %8, align 8, !dbg !4341, !tbaa !2776
  %9 = icmp ne i8* %1, null, !dbg !4342
  %10 = icmp ne i8* %2, null, !dbg !4343
  %11 = and i1 %9, %10, !dbg !4344
  br i1 %11, label %13, label %12, !dbg !4344

; <label>:12:                                     ; preds = %5
  tail call void @abort() #15, !dbg !4345
  unreachable, !dbg !4345

; <label>:13:                                     ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !4346
  store i8* %1, i8** %14, align 8, !dbg !4347, !tbaa !2861
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !4348
  store i8* %2, i8** %15, align 8, !dbg !4349, !tbaa !2864
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !4301, metadata !DIExpression(DW_OP_deref)), !dbg !4335
  %16 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 %4, %struct.quoting_options* nonnull %6), !dbg !4350
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #10, !dbg !4351
  ret i8* %16, !dbg !4352
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom(i8*, i8*, i8*) local_unnamed_addr #7 !dbg !4353 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !4357, metadata !DIExpression()), !dbg !4360
  call void @llvm.dbg.value(metadata i8* %1, metadata !4358, metadata !DIExpression()), !dbg !4361
  call void @llvm.dbg.value(metadata i8* %2, metadata !4359, metadata !DIExpression()), !dbg !4362
  call void @llvm.dbg.value(metadata i32 0, metadata !4284, metadata !DIExpression()) #10, !dbg !4363
  call void @llvm.dbg.value(metadata i8* %0, metadata !4285, metadata !DIExpression()) #10, !dbg !4365
  call void @llvm.dbg.value(metadata i8* %1, metadata !4286, metadata !DIExpression()) #10, !dbg !4366
  call void @llvm.dbg.value(metadata i8* %2, metadata !4287, metadata !DIExpression()) #10, !dbg !4367
  call void @llvm.dbg.value(metadata i32 0, metadata !4292, metadata !DIExpression()) #10, !dbg !4368
  call void @llvm.dbg.value(metadata i8* %0, metadata !4297, metadata !DIExpression()) #10, !dbg !4370
  call void @llvm.dbg.value(metadata i8* %1, metadata !4298, metadata !DIExpression()) #10, !dbg !4371
  call void @llvm.dbg.value(metadata i8* %2, metadata !4299, metadata !DIExpression()) #10, !dbg !4372
  call void @llvm.dbg.value(metadata i64 -1, metadata !4300, metadata !DIExpression()) #10, !dbg !4373
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !4374
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #10, !dbg !4374
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %5, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #10, !dbg !4375, !tbaa.struct !4136
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !4301, metadata !DIExpression(DW_OP_deref)) #10, !dbg !4376
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2843, metadata !DIExpression()) #10, !dbg !4377
  call void @llvm.dbg.value(metadata i8* %0, metadata !2844, metadata !DIExpression()) #10, !dbg !4379
  call void @llvm.dbg.value(metadata i8* %1, metadata !2845, metadata !DIExpression()) #10, !dbg !4380
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2843, metadata !DIExpression()) #10, !dbg !4377
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !4381
  store i32 10, i32* %6, align 8, !dbg !4382, !tbaa !2776
  %7 = icmp ne i8* %0, null, !dbg !4383
  %8 = icmp ne i8* %1, null, !dbg !4384
  %9 = and i1 %7, %8, !dbg !4385
  br i1 %9, label %11, label %10, !dbg !4385

; <label>:10:                                     ; preds = %3
  tail call void @abort() #15, !dbg !4386
  unreachable, !dbg !4386

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !4387
  store i8* %0, i8** %12, align 8, !dbg !4388, !tbaa !2861
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !4389
  store i8* %1, i8** %13, align 8, !dbg !4390, !tbaa !2864
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !4301, metadata !DIExpression(DW_OP_deref)) #10, !dbg !4376
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4) #10, !dbg !4391
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #10, !dbg !4392
  ret i8* %14, !dbg !4393
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom_mem(i8*, i8*, i8*, i64) local_unnamed_addr #7 !dbg !4394 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !4398, metadata !DIExpression()), !dbg !4402
  call void @llvm.dbg.value(metadata i8* %1, metadata !4399, metadata !DIExpression()), !dbg !4403
  call void @llvm.dbg.value(metadata i8* %2, metadata !4400, metadata !DIExpression()), !dbg !4404
  call void @llvm.dbg.value(metadata i64 %3, metadata !4401, metadata !DIExpression()), !dbg !4405
  call void @llvm.dbg.value(metadata i32 0, metadata !4292, metadata !DIExpression()) #10, !dbg !4406
  call void @llvm.dbg.value(metadata i8* %0, metadata !4297, metadata !DIExpression()) #10, !dbg !4408
  call void @llvm.dbg.value(metadata i8* %1, metadata !4298, metadata !DIExpression()) #10, !dbg !4409
  call void @llvm.dbg.value(metadata i8* %2, metadata !4299, metadata !DIExpression()) #10, !dbg !4410
  call void @llvm.dbg.value(metadata i64 %3, metadata !4300, metadata !DIExpression()) #10, !dbg !4411
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !4412
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #10, !dbg !4412
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %6, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #10, !dbg !4413, !tbaa.struct !4136
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !4301, metadata !DIExpression(DW_OP_deref)) #10, !dbg !4414
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2843, metadata !DIExpression()) #10, !dbg !4415
  call void @llvm.dbg.value(metadata i8* %0, metadata !2844, metadata !DIExpression()) #10, !dbg !4417
  call void @llvm.dbg.value(metadata i8* %1, metadata !2845, metadata !DIExpression()) #10, !dbg !4418
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2843, metadata !DIExpression()) #10, !dbg !4415
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !4419
  store i32 10, i32* %7, align 8, !dbg !4420, !tbaa !2776
  %8 = icmp ne i8* %0, null, !dbg !4421
  %9 = icmp ne i8* %1, null, !dbg !4422
  %10 = and i1 %8, %9, !dbg !4423
  br i1 %10, label %12, label %11, !dbg !4423

; <label>:11:                                     ; preds = %4
  tail call void @abort() #15, !dbg !4424
  unreachable, !dbg !4424

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !4425
  store i8* %0, i8** %13, align 8, !dbg !4426, !tbaa !2861
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !4427
  store i8* %1, i8** %14, align 8, !dbg !4428, !tbaa !2864
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !4301, metadata !DIExpression(DW_OP_deref)) #10, !dbg !4414
  %15 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5) #10, !dbg !4429
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #10, !dbg !4430
  ret i8* %15, !dbg !4431
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n_mem(i32, i8*, i64) local_unnamed_addr #7 !dbg !4432 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4436, metadata !DIExpression()), !dbg !4439
  call void @llvm.dbg.value(metadata i8* %1, metadata !4437, metadata !DIExpression()), !dbg !4440
  call void @llvm.dbg.value(metadata i64 %2, metadata !4438, metadata !DIExpression()), !dbg !4441
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @quote_quoting_options), !dbg !4442
  ret i8* %4, !dbg !4443
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_mem(i8*, i64) local_unnamed_addr #7 !dbg !4444 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4448, metadata !DIExpression()), !dbg !4450
  call void @llvm.dbg.value(metadata i64 %1, metadata !4449, metadata !DIExpression()), !dbg !4451
  call void @llvm.dbg.value(metadata i32 0, metadata !4436, metadata !DIExpression()) #10, !dbg !4452
  call void @llvm.dbg.value(metadata i8* %0, metadata !4437, metadata !DIExpression()) #10, !dbg !4454
  call void @llvm.dbg.value(metadata i64 %1, metadata !4438, metadata !DIExpression()) #10, !dbg !4455
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @quote_quoting_options) #10, !dbg !4456
  ret i8* %3, !dbg !4457
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n(i32, i8*) local_unnamed_addr #7 !dbg !4458 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4462, metadata !DIExpression()), !dbg !4464
  call void @llvm.dbg.value(metadata i8* %1, metadata !4463, metadata !DIExpression()), !dbg !4465
  call void @llvm.dbg.value(metadata i32 %0, metadata !4436, metadata !DIExpression()) #10, !dbg !4466
  call void @llvm.dbg.value(metadata i8* %1, metadata !4437, metadata !DIExpression()) #10, !dbg !4468
  call void @llvm.dbg.value(metadata i64 -1, metadata !4438, metadata !DIExpression()) #10, !dbg !4469
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #10, !dbg !4470
  ret i8* %3, !dbg !4471
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote(i8*) local_unnamed_addr #7 !dbg !4472 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4476, metadata !DIExpression()), !dbg !4477
  call void @llvm.dbg.value(metadata i32 0, metadata !4462, metadata !DIExpression()) #10, !dbg !4478
  call void @llvm.dbg.value(metadata i8* %0, metadata !4463, metadata !DIExpression()) #10, !dbg !4480
  call void @llvm.dbg.value(metadata i32 0, metadata !4436, metadata !DIExpression()) #10, !dbg !4481
  call void @llvm.dbg.value(metadata i8* %0, metadata !4437, metadata !DIExpression()) #10, !dbg !4483
  call void @llvm.dbg.value(metadata i64 -1, metadata !4438, metadata !DIExpression()) #10, !dbg !4484
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #10, !dbg !4485
  ret i8* %2, !dbg !4486
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @dup_safer(i32) local_unnamed_addr #7 !dbg !4487 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4490, metadata !DIExpression()), !dbg !4491
  %2 = tail call i32 (i32, i32, ...) @rpl_fcntl(i32 %0, i32 0, i32 3) #10, !dbg !4492
  ret i32 %2, !dbg !4493
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_arn(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly, i64) local_unnamed_addr #7 !dbg !4494 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4533, metadata !DIExpression()), !dbg !4539
  call void @llvm.dbg.value(metadata i8* %1, metadata !4534, metadata !DIExpression()), !dbg !4540
  call void @llvm.dbg.value(metadata i8* %2, metadata !4535, metadata !DIExpression()), !dbg !4541
  call void @llvm.dbg.value(metadata i8* %3, metadata !4536, metadata !DIExpression()), !dbg !4542
  call void @llvm.dbg.value(metadata i8** %4, metadata !4537, metadata !DIExpression()), !dbg !4543
  call void @llvm.dbg.value(metadata i64 %5, metadata !4538, metadata !DIExpression()), !dbg !4544
  %7 = icmp eq i8* %1, null, !dbg !4545
  br i1 %7, label %10, label %8, !dbg !4547

; <label>:8:                                      ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.127, i64 0, i64 0), i8* nonnull %1, i8* %2, i8* %3) #10, !dbg !4548
  br label %12, !dbg !4548

; <label>:10:                                     ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.128, i64 0, i64 0), i8* %2, i8* %3) #10, !dbg !4549
  br label %12

; <label>:12:                                     ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.129, i64 0, i64 0), i32 5) #10, !dbg !4550
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* %13, i32 2018) #10, !dbg !4550
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([204 x i8], [204 x i8]* @.str.3.130, i64 0, i64 0), i32 5) #10, !dbg !4551
  %16 = tail call i32 @fputs_unlocked(i8* %15, %struct._IO_FILE* %0), !dbg !4551
  switch i64 %5, label %126 [
    i64 0, label %17
    i64 1, label %18
    i64 2, label %22
    i64 3, label %28
    i64 4, label %36
    i64 5, label %46
    i64 6, label %58
    i64 7, label %72
    i64 8, label %88
    i64 9, label %106
  ], !dbg !4552

; <label>:17:                                     ; preds = %12
  tail call void @abort() #15, !dbg !4553
  unreachable, !dbg !4553

; <label>:18:                                     ; preds = %12
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4.131, i64 0, i64 0), i32 5) #10, !dbg !4555
  %20 = load i8*, i8** %4, align 8, !dbg !4555, !tbaa !835
  %21 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %19, i8* %20) #10, !dbg !4555
  br label %146, !dbg !4556

; <label>:22:                                     ; preds = %12
  %23 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5.132, i64 0, i64 0), i32 5) #10, !dbg !4557
  %24 = load i8*, i8** %4, align 8, !dbg !4557, !tbaa !835
  %25 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4557
  %26 = load i8*, i8** %25, align 8, !dbg !4557, !tbaa !835
  %27 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %23, i8* %24, i8* %26) #10, !dbg !4557
  br label %146, !dbg !4558

; <label>:28:                                     ; preds = %12
  %29 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6.133, i64 0, i64 0), i32 5) #10, !dbg !4559
  %30 = load i8*, i8** %4, align 8, !dbg !4559, !tbaa !835
  %31 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4559
  %32 = load i8*, i8** %31, align 8, !dbg !4559, !tbaa !835
  %33 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !4559
  %34 = load i8*, i8** %33, align 8, !dbg !4559, !tbaa !835
  %35 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %29, i8* %30, i8* %32, i8* %34) #10, !dbg !4559
  br label %146, !dbg !4560

; <label>:36:                                     ; preds = %12
  %37 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7.134, i64 0, i64 0), i32 5) #10, !dbg !4561
  %38 = load i8*, i8** %4, align 8, !dbg !4561, !tbaa !835
  %39 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4561
  %40 = load i8*, i8** %39, align 8, !dbg !4561, !tbaa !835
  %41 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !4561
  %42 = load i8*, i8** %41, align 8, !dbg !4561, !tbaa !835
  %43 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !4561
  %44 = load i8*, i8** %43, align 8, !dbg !4561, !tbaa !835
  %45 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %37, i8* %38, i8* %40, i8* %42, i8* %44) #10, !dbg !4561
  br label %146, !dbg !4562

; <label>:46:                                     ; preds = %12
  %47 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8.135, i64 0, i64 0), i32 5) #10, !dbg !4563
  %48 = load i8*, i8** %4, align 8, !dbg !4563, !tbaa !835
  %49 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4563
  %50 = load i8*, i8** %49, align 8, !dbg !4563, !tbaa !835
  %51 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !4563
  %52 = load i8*, i8** %51, align 8, !dbg !4563, !tbaa !835
  %53 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !4563
  %54 = load i8*, i8** %53, align 8, !dbg !4563, !tbaa !835
  %55 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !4563
  %56 = load i8*, i8** %55, align 8, !dbg !4563, !tbaa !835
  %57 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %47, i8* %48, i8* %50, i8* %52, i8* %54, i8* %56) #10, !dbg !4563
  br label %146, !dbg !4564

; <label>:58:                                     ; preds = %12
  %59 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9.136, i64 0, i64 0), i32 5) #10, !dbg !4565
  %60 = load i8*, i8** %4, align 8, !dbg !4565, !tbaa !835
  %61 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4565
  %62 = load i8*, i8** %61, align 8, !dbg !4565, !tbaa !835
  %63 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !4565
  %64 = load i8*, i8** %63, align 8, !dbg !4565, !tbaa !835
  %65 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !4565
  %66 = load i8*, i8** %65, align 8, !dbg !4565, !tbaa !835
  %67 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !4565
  %68 = load i8*, i8** %67, align 8, !dbg !4565, !tbaa !835
  %69 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !4565
  %70 = load i8*, i8** %69, align 8, !dbg !4565, !tbaa !835
  %71 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %59, i8* %60, i8* %62, i8* %64, i8* %66, i8* %68, i8* %70) #10, !dbg !4565
  br label %146, !dbg !4566

; <label>:72:                                     ; preds = %12
  %73 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.10.137, i64 0, i64 0), i32 5) #10, !dbg !4567
  %74 = load i8*, i8** %4, align 8, !dbg !4567, !tbaa !835
  %75 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4567
  %76 = load i8*, i8** %75, align 8, !dbg !4567, !tbaa !835
  %77 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !4567
  %78 = load i8*, i8** %77, align 8, !dbg !4567, !tbaa !835
  %79 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !4567
  %80 = load i8*, i8** %79, align 8, !dbg !4567, !tbaa !835
  %81 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !4567
  %82 = load i8*, i8** %81, align 8, !dbg !4567, !tbaa !835
  %83 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !4567
  %84 = load i8*, i8** %83, align 8, !dbg !4567, !tbaa !835
  %85 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !4567
  %86 = load i8*, i8** %85, align 8, !dbg !4567, !tbaa !835
  %87 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %73, i8* %74, i8* %76, i8* %78, i8* %80, i8* %82, i8* %84, i8* %86) #10, !dbg !4567
  br label %146, !dbg !4568

; <label>:88:                                     ; preds = %12
  %89 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.11.138, i64 0, i64 0), i32 5) #10, !dbg !4569
  %90 = load i8*, i8** %4, align 8, !dbg !4569, !tbaa !835
  %91 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4569
  %92 = load i8*, i8** %91, align 8, !dbg !4569, !tbaa !835
  %93 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !4569
  %94 = load i8*, i8** %93, align 8, !dbg !4569, !tbaa !835
  %95 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !4569
  %96 = load i8*, i8** %95, align 8, !dbg !4569, !tbaa !835
  %97 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !4569
  %98 = load i8*, i8** %97, align 8, !dbg !4569, !tbaa !835
  %99 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !4569
  %100 = load i8*, i8** %99, align 8, !dbg !4569, !tbaa !835
  %101 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !4569
  %102 = load i8*, i8** %101, align 8, !dbg !4569, !tbaa !835
  %103 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !4569
  %104 = load i8*, i8** %103, align 8, !dbg !4569, !tbaa !835
  %105 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %89, i8* %90, i8* %92, i8* %94, i8* %96, i8* %98, i8* %100, i8* %102, i8* %104) #10, !dbg !4569
  br label %146, !dbg !4570

; <label>:106:                                    ; preds = %12
  %107 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.12.139, i64 0, i64 0), i32 5) #10, !dbg !4571
  %108 = load i8*, i8** %4, align 8, !dbg !4571, !tbaa !835
  %109 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4571
  %110 = load i8*, i8** %109, align 8, !dbg !4571, !tbaa !835
  %111 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !4571
  %112 = load i8*, i8** %111, align 8, !dbg !4571, !tbaa !835
  %113 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !4571
  %114 = load i8*, i8** %113, align 8, !dbg !4571, !tbaa !835
  %115 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !4571
  %116 = load i8*, i8** %115, align 8, !dbg !4571, !tbaa !835
  %117 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !4571
  %118 = load i8*, i8** %117, align 8, !dbg !4571, !tbaa !835
  %119 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !4571
  %120 = load i8*, i8** %119, align 8, !dbg !4571, !tbaa !835
  %121 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !4571
  %122 = load i8*, i8** %121, align 8, !dbg !4571, !tbaa !835
  %123 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !4571
  %124 = load i8*, i8** %123, align 8, !dbg !4571, !tbaa !835
  %125 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %107, i8* %108, i8* %110, i8* %112, i8* %114, i8* %116, i8* %118, i8* %120, i8* %122, i8* %124) #10, !dbg !4571
  br label %146, !dbg !4572

; <label>:126:                                    ; preds = %12
  %127 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.13.140, i64 0, i64 0), i32 5) #10, !dbg !4573
  %128 = load i8*, i8** %4, align 8, !dbg !4573, !tbaa !835
  %129 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4573
  %130 = load i8*, i8** %129, align 8, !dbg !4573, !tbaa !835
  %131 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !4573
  %132 = load i8*, i8** %131, align 8, !dbg !4573, !tbaa !835
  %133 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !4573
  %134 = load i8*, i8** %133, align 8, !dbg !4573, !tbaa !835
  %135 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !4573
  %136 = load i8*, i8** %135, align 8, !dbg !4573, !tbaa !835
  %137 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !4573
  %138 = load i8*, i8** %137, align 8, !dbg !4573, !tbaa !835
  %139 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !4573
  %140 = load i8*, i8** %139, align 8, !dbg !4573, !tbaa !835
  %141 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !4573
  %142 = load i8*, i8** %141, align 8, !dbg !4573, !tbaa !835
  %143 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !4573
  %144 = load i8*, i8** %143, align 8, !dbg !4573, !tbaa !835
  %145 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %127, i8* %128, i8* %130, i8* %132, i8* %134, i8* %136, i8* %138, i8* %140, i8* %142, i8* %144) #10, !dbg !4573
  br label %146, !dbg !4574

; <label>:146:                                    ; preds = %126, %106, %88, %72, %58, %46, %36, %28, %22, %18
  ret void, !dbg !4575
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_ar(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly) local_unnamed_addr #7 !dbg !4576 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4580, metadata !DIExpression()), !dbg !4586
  call void @llvm.dbg.value(metadata i8* %1, metadata !4581, metadata !DIExpression()), !dbg !4587
  call void @llvm.dbg.value(metadata i8* %2, metadata !4582, metadata !DIExpression()), !dbg !4588
  call void @llvm.dbg.value(metadata i8* %3, metadata !4583, metadata !DIExpression()), !dbg !4589
  call void @llvm.dbg.value(metadata i8** %4, metadata !4584, metadata !DIExpression()), !dbg !4590
  call void @llvm.dbg.value(metadata i64 0, metadata !4585, metadata !DIExpression()), !dbg !4591
  br label %6, !dbg !4592

; <label>:6:                                      ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !4594
  call void @llvm.dbg.value(metadata i64 %7, metadata !4585, metadata !DIExpression()), !dbg !4591
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7, !dbg !4596
  %9 = load i8*, i8** %8, align 8, !dbg !4596, !tbaa !835
  %10 = icmp eq i8* %9, null, !dbg !4597
  %11 = add i64 %7, 1, !dbg !4598
  call void @llvm.dbg.value(metadata i64 %11, metadata !4585, metadata !DIExpression()), !dbg !4591
  br i1 %10, label %12, label %6, !dbg !4597, !llvm.loop !4599

; <label>:12:                                     ; preds = %6
  call void @llvm.dbg.value(metadata i64 %7, metadata !4585, metadata !DIExpression()), !dbg !4591
  call void @llvm.dbg.value(metadata i64 %7, metadata !4585, metadata !DIExpression()), !dbg !4591
  call void @llvm.dbg.value(metadata i64 %7, metadata !4585, metadata !DIExpression()), !dbg !4591
  call void @llvm.dbg.value(metadata i64 %7, metadata !4585, metadata !DIExpression()), !dbg !4591
  call void @llvm.dbg.value(metadata i64 %7, metadata !4585, metadata !DIExpression()), !dbg !4591
  call void @llvm.dbg.value(metadata i64 %7, metadata !4585, metadata !DIExpression()), !dbg !4591
  tail call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %4, i64 %7), !dbg !4601
  ret void, !dbg !4602
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_va(%struct._IO_FILE*, i8*, i8*, i8*, %struct.__va_list_tag* nocapture) local_unnamed_addr #7 !dbg !4603 {
  %6 = alloca [10 x i8*], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4614, metadata !DIExpression()), !dbg !4622
  call void @llvm.dbg.value(metadata i8* %1, metadata !4615, metadata !DIExpression()), !dbg !4623
  call void @llvm.dbg.value(metadata i8* %2, metadata !4616, metadata !DIExpression()), !dbg !4624
  call void @llvm.dbg.value(metadata i8* %3, metadata !4617, metadata !DIExpression()), !dbg !4625
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %4, metadata !4618, metadata !DIExpression()), !dbg !4626
  %7 = bitcast [10 x i8*]* %6 to i8*, !dbg !4627
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %7) #10, !dbg !4627
  call void @llvm.dbg.declare(metadata [10 x i8*]* %6, metadata !4620, metadata !DIExpression()), !dbg !4628
  call void @llvm.dbg.value(metadata i64 0, metadata !4619, metadata !DIExpression()), !dbg !4629
  %8 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 0
  %9 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 3
  %10 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 2
  call void @llvm.dbg.value(metadata i64 0, metadata !4619, metadata !DIExpression()), !dbg !4629
  %11 = load i32, i32* %8, align 8, !dbg !4630
  %12 = icmp ult i32 %11, 41, !dbg !4630
  br i1 %12, label %13, label %18, !dbg !4630

; <label>:13:                                     ; preds = %5
  %14 = load i8*, i8** %9, align 8, !dbg !4630
  %15 = sext i32 %11 to i64, !dbg !4630
  %16 = getelementptr i8, i8* %14, i64 %15, !dbg !4630
  %17 = add i32 %11, 8, !dbg !4630
  store i32 %17, i32* %8, align 8, !dbg !4630
  br label %21, !dbg !4630

; <label>:18:                                     ; preds = %5
  %19 = load i8*, i8** %10, align 8, !dbg !4630
  %20 = getelementptr i8, i8* %19, i64 8, !dbg !4630
  store i8* %20, i8** %10, align 8, !dbg !4630
  br label %21, !dbg !4630

; <label>:21:                                     ; preds = %18, %13
  %22 = phi i32 [ %17, %13 ], [ %11, %18 ]
  %23 = phi i8* [ %16, %13 ], [ %19, %18 ]
  %24 = bitcast i8* %23 to i8**, !dbg !4630
  %25 = load i8*, i8** %24, align 8, !dbg !4630
  %26 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !4633
  store i8* %25, i8** %26, align 16, !dbg !4634, !tbaa !835
  %27 = icmp eq i8* %25, null, !dbg !4635
  br i1 %27, label %30, label %28, !dbg !4636

; <label>:28:                                     ; preds = %21
  call void @llvm.dbg.value(metadata i64 1, metadata !4619, metadata !DIExpression()), !dbg !4629
  call void @llvm.dbg.value(metadata i64 1, metadata !4619, metadata !DIExpression()), !dbg !4629
  %29 = icmp ult i32 %22, 41, !dbg !4630
  br i1 %29, label %35, label %32, !dbg !4630

; <label>:30:                                     ; preds = %135, %128, %121, %114, %108, %91, %74, %57, %40, %21
  %31 = phi i64 [ 0, %21 ], [ 1, %40 ], [ 2, %57 ], [ 3, %74 ], [ 4, %91 ], [ 5, %108 ], [ 6, %114 ], [ 7, %121 ], [ 8, %128 ], [ %142, %135 ], !dbg !4637
  call void @llvm.dbg.value(metadata i64 %31, metadata !4619, metadata !DIExpression()), !dbg !4629
  call void @llvm.dbg.value(metadata i64 %31, metadata !4619, metadata !DIExpression()), !dbg !4629
  call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %26, i64 %31), !dbg !4638
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %7) #10, !dbg !4639
  ret void, !dbg !4639

; <label>:32:                                     ; preds = %28
  %33 = load i8*, i8** %10, align 8, !dbg !4630
  %34 = getelementptr i8, i8* %33, i64 8, !dbg !4630
  store i8* %34, i8** %10, align 8, !dbg !4630
  br label %40, !dbg !4630

; <label>:35:                                     ; preds = %28
  %36 = load i8*, i8** %9, align 8, !dbg !4630
  %37 = sext i32 %22 to i64, !dbg !4630
  %38 = getelementptr i8, i8* %36, i64 %37, !dbg !4630
  %39 = add i32 %22, 8, !dbg !4630
  store i32 %39, i32* %8, align 8, !dbg !4630
  br label %40, !dbg !4630

; <label>:40:                                     ; preds = %35, %32
  %41 = phi i32 [ %39, %35 ], [ %22, %32 ]
  %42 = phi i8* [ %38, %35 ], [ %33, %32 ]
  %43 = bitcast i8* %42 to i8**, !dbg !4630
  %44 = load i8*, i8** %43, align 8, !dbg !4630
  %45 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !4633
  store i8* %44, i8** %45, align 8, !dbg !4634, !tbaa !835
  %46 = icmp eq i8* %44, null, !dbg !4635
  br i1 %46, label %30, label %47, !dbg !4636

; <label>:47:                                     ; preds = %40
  call void @llvm.dbg.value(metadata i64 2, metadata !4619, metadata !DIExpression()), !dbg !4629
  call void @llvm.dbg.value(metadata i64 2, metadata !4619, metadata !DIExpression()), !dbg !4629
  %48 = icmp ult i32 %41, 41, !dbg !4630
  br i1 %48, label %52, label %49, !dbg !4630

; <label>:49:                                     ; preds = %47
  %50 = load i8*, i8** %10, align 8, !dbg !4630
  %51 = getelementptr i8, i8* %50, i64 8, !dbg !4630
  store i8* %51, i8** %10, align 8, !dbg !4630
  br label %57, !dbg !4630

; <label>:52:                                     ; preds = %47
  %53 = load i8*, i8** %9, align 8, !dbg !4630
  %54 = sext i32 %41 to i64, !dbg !4630
  %55 = getelementptr i8, i8* %53, i64 %54, !dbg !4630
  %56 = add i32 %41, 8, !dbg !4630
  store i32 %56, i32* %8, align 8, !dbg !4630
  br label %57, !dbg !4630

; <label>:57:                                     ; preds = %52, %49
  %58 = phi i32 [ %56, %52 ], [ %41, %49 ]
  %59 = phi i8* [ %55, %52 ], [ %50, %49 ]
  %60 = bitcast i8* %59 to i8**, !dbg !4630
  %61 = load i8*, i8** %60, align 8, !dbg !4630
  %62 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !4633
  store i8* %61, i8** %62, align 16, !dbg !4634, !tbaa !835
  %63 = icmp eq i8* %61, null, !dbg !4635
  br i1 %63, label %30, label %64, !dbg !4636

; <label>:64:                                     ; preds = %57
  call void @llvm.dbg.value(metadata i64 3, metadata !4619, metadata !DIExpression()), !dbg !4629
  call void @llvm.dbg.value(metadata i64 3, metadata !4619, metadata !DIExpression()), !dbg !4629
  %65 = icmp ult i32 %58, 41, !dbg !4630
  br i1 %65, label %69, label %66, !dbg !4630

; <label>:66:                                     ; preds = %64
  %67 = load i8*, i8** %10, align 8, !dbg !4630
  %68 = getelementptr i8, i8* %67, i64 8, !dbg !4630
  store i8* %68, i8** %10, align 8, !dbg !4630
  br label %74, !dbg !4630

; <label>:69:                                     ; preds = %64
  %70 = load i8*, i8** %9, align 8, !dbg !4630
  %71 = sext i32 %58 to i64, !dbg !4630
  %72 = getelementptr i8, i8* %70, i64 %71, !dbg !4630
  %73 = add i32 %58, 8, !dbg !4630
  store i32 %73, i32* %8, align 8, !dbg !4630
  br label %74, !dbg !4630

; <label>:74:                                     ; preds = %69, %66
  %75 = phi i32 [ %73, %69 ], [ %58, %66 ]
  %76 = phi i8* [ %72, %69 ], [ %67, %66 ]
  %77 = bitcast i8* %76 to i8**, !dbg !4630
  %78 = load i8*, i8** %77, align 8, !dbg !4630
  %79 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !4633
  store i8* %78, i8** %79, align 8, !dbg !4634, !tbaa !835
  %80 = icmp eq i8* %78, null, !dbg !4635
  br i1 %80, label %30, label %81, !dbg !4636

; <label>:81:                                     ; preds = %74
  call void @llvm.dbg.value(metadata i64 4, metadata !4619, metadata !DIExpression()), !dbg !4629
  call void @llvm.dbg.value(metadata i64 4, metadata !4619, metadata !DIExpression()), !dbg !4629
  %82 = icmp ult i32 %75, 41, !dbg !4630
  br i1 %82, label %86, label %83, !dbg !4630

; <label>:83:                                     ; preds = %81
  %84 = load i8*, i8** %10, align 8, !dbg !4630
  %85 = getelementptr i8, i8* %84, i64 8, !dbg !4630
  store i8* %85, i8** %10, align 8, !dbg !4630
  br label %91, !dbg !4630

; <label>:86:                                     ; preds = %81
  %87 = load i8*, i8** %9, align 8, !dbg !4630
  %88 = sext i32 %75 to i64, !dbg !4630
  %89 = getelementptr i8, i8* %87, i64 %88, !dbg !4630
  %90 = add i32 %75, 8, !dbg !4630
  store i32 %90, i32* %8, align 8, !dbg !4630
  br label %91, !dbg !4630

; <label>:91:                                     ; preds = %86, %83
  %92 = phi i32 [ %90, %86 ], [ %75, %83 ]
  %93 = phi i8* [ %89, %86 ], [ %84, %83 ]
  %94 = bitcast i8* %93 to i8**, !dbg !4630
  %95 = load i8*, i8** %94, align 8, !dbg !4630
  %96 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !4633
  store i8* %95, i8** %96, align 16, !dbg !4634, !tbaa !835
  %97 = icmp eq i8* %95, null, !dbg !4635
  br i1 %97, label %30, label %98, !dbg !4636

; <label>:98:                                     ; preds = %91
  call void @llvm.dbg.value(metadata i64 5, metadata !4619, metadata !DIExpression()), !dbg !4629
  call void @llvm.dbg.value(metadata i64 5, metadata !4619, metadata !DIExpression()), !dbg !4629
  %99 = icmp ult i32 %92, 41, !dbg !4630
  br i1 %99, label %103, label %100, !dbg !4630

; <label>:100:                                    ; preds = %98
  %101 = load i8*, i8** %10, align 8, !dbg !4630
  %102 = getelementptr i8, i8* %101, i64 8, !dbg !4630
  store i8* %102, i8** %10, align 8, !dbg !4630
  br label %108, !dbg !4630

; <label>:103:                                    ; preds = %98
  %104 = load i8*, i8** %9, align 8, !dbg !4630
  %105 = sext i32 %92 to i64, !dbg !4630
  %106 = getelementptr i8, i8* %104, i64 %105, !dbg !4630
  %107 = add i32 %92, 8, !dbg !4630
  store i32 %107, i32* %8, align 8, !dbg !4630
  br label %108, !dbg !4630

; <label>:108:                                    ; preds = %103, %100
  %109 = phi i8* [ %106, %103 ], [ %101, %100 ]
  %110 = bitcast i8* %109 to i8**, !dbg !4630
  %111 = load i8*, i8** %110, align 8, !dbg !4630
  %112 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !4633
  store i8* %111, i8** %112, align 8, !dbg !4634, !tbaa !835
  %113 = icmp eq i8* %111, null, !dbg !4635
  br i1 %113, label %30, label %114, !dbg !4636

; <label>:114:                                    ; preds = %108
  call void @llvm.dbg.value(metadata i64 6, metadata !4619, metadata !DIExpression()), !dbg !4629
  call void @llvm.dbg.value(metadata i64 6, metadata !4619, metadata !DIExpression()), !dbg !4629
  %115 = load i8*, i8** %10, align 8, !dbg !4630
  %116 = getelementptr i8, i8* %115, i64 8, !dbg !4630
  store i8* %116, i8** %10, align 8, !dbg !4630
  %117 = bitcast i8* %115 to i8**, !dbg !4630
  %118 = load i8*, i8** %117, align 8, !dbg !4630
  %119 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !4633
  store i8* %118, i8** %119, align 16, !dbg !4634, !tbaa !835
  %120 = icmp eq i8* %118, null, !dbg !4635
  br i1 %120, label %30, label %121, !dbg !4636

; <label>:121:                                    ; preds = %114
  call void @llvm.dbg.value(metadata i64 7, metadata !4619, metadata !DIExpression()), !dbg !4629
  call void @llvm.dbg.value(metadata i64 7, metadata !4619, metadata !DIExpression()), !dbg !4629
  %122 = load i8*, i8** %10, align 8, !dbg !4630
  %123 = getelementptr i8, i8* %122, i64 8, !dbg !4630
  store i8* %123, i8** %10, align 8, !dbg !4630
  %124 = bitcast i8* %122 to i8**, !dbg !4630
  %125 = load i8*, i8** %124, align 8, !dbg !4630
  %126 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !4633
  store i8* %125, i8** %126, align 8, !dbg !4634, !tbaa !835
  %127 = icmp eq i8* %125, null, !dbg !4635
  br i1 %127, label %30, label %128, !dbg !4636

; <label>:128:                                    ; preds = %121
  call void @llvm.dbg.value(metadata i64 8, metadata !4619, metadata !DIExpression()), !dbg !4629
  call void @llvm.dbg.value(metadata i64 8, metadata !4619, metadata !DIExpression()), !dbg !4629
  %129 = load i8*, i8** %10, align 8, !dbg !4630
  %130 = getelementptr i8, i8* %129, i64 8, !dbg !4630
  store i8* %130, i8** %10, align 8, !dbg !4630
  %131 = bitcast i8* %129 to i8**, !dbg !4630
  %132 = load i8*, i8** %131, align 8, !dbg !4630
  %133 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !4633
  store i8* %132, i8** %133, align 16, !dbg !4634, !tbaa !835
  %134 = icmp eq i8* %132, null, !dbg !4635
  br i1 %134, label %30, label %135, !dbg !4636

; <label>:135:                                    ; preds = %128
  call void @llvm.dbg.value(metadata i64 9, metadata !4619, metadata !DIExpression()), !dbg !4629
  call void @llvm.dbg.value(metadata i64 9, metadata !4619, metadata !DIExpression()), !dbg !4629
  %136 = load i8*, i8** %10, align 8, !dbg !4630
  %137 = getelementptr i8, i8* %136, i64 8, !dbg !4630
  store i8* %137, i8** %10, align 8, !dbg !4630
  %138 = bitcast i8* %136 to i8**, !dbg !4630
  %139 = load i8*, i8** %138, align 8, !dbg !4630
  %140 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9, !dbg !4633
  store i8* %139, i8** %140, align 8, !dbg !4634, !tbaa !835
  %141 = icmp eq i8* %139, null, !dbg !4635
  %142 = select i1 %141, i64 9, i64 10, !dbg !4636
  br label %30, !dbg !4636
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc(%struct._IO_FILE*, i8*, i8*, i8*, ...) local_unnamed_addr #7 !dbg !4640 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4644, metadata !DIExpression()), !dbg !4653
  call void @llvm.dbg.value(metadata i8* %1, metadata !4645, metadata !DIExpression()), !dbg !4654
  call void @llvm.dbg.value(metadata i8* %2, metadata !4646, metadata !DIExpression()), !dbg !4655
  call void @llvm.dbg.value(metadata i8* %3, metadata !4647, metadata !DIExpression()), !dbg !4656
  %6 = bitcast [1 x %struct.__va_list_tag]* %5 to i8*, !dbg !4657
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %6) #10, !dbg !4657
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %5, metadata !4648, metadata !DIExpression()), !dbg !4658
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0, !dbg !4659
  call void @llvm.va_start(i8* nonnull %6), !dbg !4659
  call void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nonnull %7), !dbg !4660
  call void @llvm.va_end(i8* nonnull %6), !dbg !4661
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %6) #10, !dbg !4662
  ret void, !dbg !4662
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #10

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #10

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #7 !dbg !4663 {
  %1 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14.143, i64 0, i64 0), i32 5) #10, !dbg !4664
  %2 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.15.144, i64 0, i64 0)) #10, !dbg !4664
  %3 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16.145, i64 0, i64 0), i32 5) #10, !dbg !4665
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %3, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17.146, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.18.147, i64 0, i64 0)) #10, !dbg !4665
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.19.148, i64 0, i64 0), i32 5) #10, !dbg !4666
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !4666, !tbaa !835
  %7 = tail call i32 @fputs_unlocked(i8* %5, %struct._IO_FILE* %6), !dbg !4666
  ret void, !dbg !4667
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnmalloc(i64, i64) local_unnamed_addr #13 !dbg !4668 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4672, metadata !DIExpression()), !dbg !4674
  call void @llvm.dbg.value(metadata i64 %1, metadata !4673, metadata !DIExpression()), !dbg !4675
  %3 = udiv i64 9223372036854775807, %1, !dbg !4676
  %4 = icmp ult i64 %3, %0, !dbg !4676
  br i1 %4, label %5, label %6, !dbg !4678

; <label>:5:                                      ; preds = %2
  tail call void @xalloc_die() #15, !dbg !4679
  unreachable, !dbg !4679

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !4680
  call void @llvm.dbg.value(metadata i64 %7, metadata !4681, metadata !DIExpression()) #10, !dbg !4688
  %8 = tail call noalias i8* @malloc(i64 %7) #10, !dbg !4690
  call void @llvm.dbg.value(metadata i8* %8, metadata !4687, metadata !DIExpression()) #10, !dbg !4691
  %9 = icmp eq i8* %8, null, !dbg !4692
  %10 = icmp ne i64 %7, 0, !dbg !4694
  %11 = and i1 %10, %9, !dbg !4695
  br i1 %11, label %12, label %13, !dbg !4695

; <label>:12:                                     ; preds = %6
  tail call void @xalloc_die() #15, !dbg !4696
  unreachable, !dbg !4696

; <label>:13:                                     ; preds = %6
  ret i8* %8, !dbg !4697
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xmalloc(i64) local_unnamed_addr #7 !dbg !4682 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4681, metadata !DIExpression()), !dbg !4698
  %2 = tail call noalias i8* @malloc(i64 %0) #10, !dbg !4699
  call void @llvm.dbg.value(metadata i8* %2, metadata !4687, metadata !DIExpression()), !dbg !4700
  %3 = icmp eq i8* %2, null, !dbg !4701
  %4 = icmp ne i64 %0, 0, !dbg !4702
  %5 = and i1 %4, %3, !dbg !4703
  br i1 %5, label %6, label %7, !dbg !4703

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !4704
  unreachable, !dbg !4704

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !4705
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnrealloc(i8*, i64, i64) local_unnamed_addr #13 !dbg !4706 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4710, metadata !DIExpression()), !dbg !4713
  call void @llvm.dbg.value(metadata i64 %1, metadata !4711, metadata !DIExpression()), !dbg !4714
  call void @llvm.dbg.value(metadata i64 %2, metadata !4712, metadata !DIExpression()), !dbg !4715
  %4 = udiv i64 9223372036854775807, %2, !dbg !4716
  %5 = icmp ult i64 %4, %1, !dbg !4716
  br i1 %5, label %6, label %7, !dbg !4718

; <label>:6:                                      ; preds = %3
  tail call void @xalloc_die() #15, !dbg !4719
  unreachable, !dbg !4719

; <label>:7:                                      ; preds = %3
  %8 = mul i64 %2, %1, !dbg !4720
  call void @llvm.dbg.value(metadata i8* %0, metadata !4721, metadata !DIExpression()) #10, !dbg !4727
  call void @llvm.dbg.value(metadata i64 %8, metadata !4726, metadata !DIExpression()) #10, !dbg !4729
  %9 = icmp eq i64 %8, 0, !dbg !4730
  %10 = icmp ne i8* %0, null, !dbg !4732
  %11 = and i1 %10, %9, !dbg !4733
  br i1 %11, label %12, label %13, !dbg !4733

; <label>:12:                                     ; preds = %7
  tail call void @free(i8* nonnull %0) #10, !dbg !4734
  br label %19, !dbg !4736

; <label>:13:                                     ; preds = %7
  %14 = tail call i8* @realloc(i8* %0, i64 %8) #10, !dbg !4737
  call void @llvm.dbg.value(metadata i8* %14, metadata !4721, metadata !DIExpression()) #10, !dbg !4727
  %15 = icmp eq i8* %14, null, !dbg !4738
  %16 = icmp ne i64 %8, 0, !dbg !4740
  %17 = and i1 %16, %15, !dbg !4741
  br i1 %17, label %18, label %19, !dbg !4741

; <label>:18:                                     ; preds = %13
  tail call void @xalloc_die() #15, !dbg !4742
  unreachable, !dbg !4742

; <label>:19:                                     ; preds = %12, %13
  %20 = phi i8* [ null, %12 ], [ %14, %13 ], !dbg !4743
  ret i8* %20, !dbg !4744
}

; Function Attrs: nounwind
declare noalias i8* @realloc(i8* nocapture, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xrealloc(i8*, i64) local_unnamed_addr #7 !dbg !4722 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4721, metadata !DIExpression()), !dbg !4745
  call void @llvm.dbg.value(metadata i64 %1, metadata !4726, metadata !DIExpression()), !dbg !4746
  %3 = icmp eq i64 %1, 0, !dbg !4747
  %4 = icmp ne i8* %0, null, !dbg !4748
  %5 = and i1 %4, %3, !dbg !4749
  br i1 %5, label %6, label %7, !dbg !4749

; <label>:6:                                      ; preds = %2
  tail call void @free(i8* nonnull %0) #10, !dbg !4750
  br label %13, !dbg !4751

; <label>:7:                                      ; preds = %2
  %8 = tail call i8* @realloc(i8* %0, i64 %1) #10, !dbg !4752
  call void @llvm.dbg.value(metadata i8* %8, metadata !4721, metadata !DIExpression()), !dbg !4745
  %9 = icmp eq i8* %8, null, !dbg !4753
  %10 = icmp ne i64 %1, 0, !dbg !4754
  %11 = and i1 %10, %9, !dbg !4755
  br i1 %11, label %12, label %13, !dbg !4755

; <label>:12:                                     ; preds = %7
  tail call void @xalloc_die() #15, !dbg !4756
  unreachable, !dbg !4756

; <label>:13:                                     ; preds = %7, %6
  %14 = phi i8* [ null, %6 ], [ %8, %7 ], !dbg !4757
  ret i8* %14, !dbg !4758
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @x2nrealloc(i8*, i64* nocapture, i64) local_unnamed_addr #13 !dbg !379 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !384, metadata !DIExpression()), !dbg !4759
  call void @llvm.dbg.value(metadata i64* %1, metadata !385, metadata !DIExpression()), !dbg !4760
  call void @llvm.dbg.value(metadata i64 %2, metadata !386, metadata !DIExpression()), !dbg !4761
  %4 = load i64, i64* %1, align 8, !dbg !4762, !tbaa !1101
  call void @llvm.dbg.value(metadata i64 %4, metadata !387, metadata !DIExpression()), !dbg !4763
  %5 = icmp eq i8* %0, null, !dbg !4764
  br i1 %5, label %6, label %20, !dbg !4766

; <label>:6:                                      ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !4767
  br i1 %7, label %8, label %13, !dbg !4770

; <label>:8:                                      ; preds = %6
  %9 = udiv i64 128, %2, !dbg !4771
  call void @llvm.dbg.value(metadata i64 %9, metadata !387, metadata !DIExpression()), !dbg !4763
  %10 = icmp ugt i64 %2, 128, !dbg !4773
  %11 = zext i1 %10 to i64, !dbg !4773
  %12 = add nuw nsw i64 %9, %11, !dbg !4774
  call void @llvm.dbg.value(metadata i64 %12, metadata !387, metadata !DIExpression()), !dbg !4763
  br label %13, !dbg !4775

; <label>:13:                                     ; preds = %6, %8
  %14 = phi i64 [ %4, %6 ], [ %12, %8 ], !dbg !4776
  call void @llvm.dbg.value(metadata i64 %14, metadata !387, metadata !DIExpression()), !dbg !4763
  %15 = udiv i64 9223372036854775807, %2, !dbg !4777
  %16 = icmp ult i64 %15, %14, !dbg !4777
  br i1 %16, label %19, label %17, !dbg !4779

; <label>:17:                                     ; preds = %13
  call void @llvm.dbg.value(metadata i64 %27, metadata !387, metadata !DIExpression()), !dbg !4763
  store i64 %14, i64* %1, align 8, !dbg !4780, !tbaa !1101
  %18 = mul i64 %14, %2, !dbg !4781
  call void @llvm.dbg.value(metadata i8* %0, metadata !4721, metadata !DIExpression()) #10, !dbg !4782
  call void @llvm.dbg.value(metadata i64 %28, metadata !4726, metadata !DIExpression()) #10, !dbg !4784
  br label %31, !dbg !4785

; <label>:19:                                     ; preds = %13
  tail call void @xalloc_die() #15, !dbg !4786
  unreachable, !dbg !4786

; <label>:20:                                     ; preds = %3
  %21 = udiv i64 6148914691236517204, %2, !dbg !4787
  %22 = icmp ugt i64 %21, %4, !dbg !4790
  br i1 %22, label %24, label %23, !dbg !4791

; <label>:23:                                     ; preds = %20
  tail call void @xalloc_die() #15, !dbg !4792
  unreachable, !dbg !4792

; <label>:24:                                     ; preds = %20
  %25 = lshr i64 %4, 1, !dbg !4793
  %26 = add i64 %4, 1, !dbg !4794
  %27 = add i64 %26, %25, !dbg !4795
  call void @llvm.dbg.value(metadata i64 %27, metadata !387, metadata !DIExpression()), !dbg !4763
  call void @llvm.dbg.value(metadata i64 %27, metadata !387, metadata !DIExpression()), !dbg !4763
  store i64 %27, i64* %1, align 8, !dbg !4780, !tbaa !1101
  %28 = mul i64 %27, %2, !dbg !4781
  call void @llvm.dbg.value(metadata i8* %0, metadata !4721, metadata !DIExpression()) #10, !dbg !4782
  call void @llvm.dbg.value(metadata i64 %28, metadata !4726, metadata !DIExpression()) #10, !dbg !4784
  %29 = icmp eq i64 %28, 0, !dbg !4796
  br i1 %29, label %30, label %31, !dbg !4785

; <label>:30:                                     ; preds = %24
  tail call void @free(i8* nonnull %0) #10, !dbg !4797
  br label %38, !dbg !4798

; <label>:31:                                     ; preds = %17, %24
  %32 = phi i64 [ %18, %17 ], [ %28, %24 ]
  %33 = tail call i8* @realloc(i8* %0, i64 %32) #10, !dbg !4799
  call void @llvm.dbg.value(metadata i8* %33, metadata !4721, metadata !DIExpression()) #10, !dbg !4782
  %34 = icmp eq i8* %33, null, !dbg !4800
  %35 = icmp ne i64 %32, 0, !dbg !4801
  %36 = and i1 %35, %34, !dbg !4802
  br i1 %36, label %37, label %38, !dbg !4802

; <label>:37:                                     ; preds = %31
  tail call void @xalloc_die() #15, !dbg !4803
  unreachable, !dbg !4803

; <label>:38:                                     ; preds = %30, %31
  %39 = phi i8* [ null, %30 ], [ %33, %31 ], !dbg !4804
  ret i8* %39, !dbg !4805
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xcharalloc(i64) local_unnamed_addr #13 !dbg !4806 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4808, metadata !DIExpression()), !dbg !4809
  call void @llvm.dbg.value(metadata i64 %0, metadata !4681, metadata !DIExpression()) #10, !dbg !4810
  %2 = tail call noalias i8* @malloc(i64 %0) #10, !dbg !4812
  call void @llvm.dbg.value(metadata i8* %2, metadata !4687, metadata !DIExpression()) #10, !dbg !4813
  %3 = icmp eq i8* %2, null, !dbg !4814
  %4 = icmp ne i64 %0, 0, !dbg !4815
  %5 = and i1 %4, %3, !dbg !4816
  br i1 %5, label %6, label %7, !dbg !4816

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !4817
  unreachable, !dbg !4817

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !4818
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @x2realloc(i8*, i64* nocapture) local_unnamed_addr #7 !dbg !4819 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4823, metadata !DIExpression()), !dbg !4825
  call void @llvm.dbg.value(metadata i64* %1, metadata !4824, metadata !DIExpression()), !dbg !4826
  call void @llvm.dbg.value(metadata i8* %0, metadata !384, metadata !DIExpression()) #10, !dbg !4827
  call void @llvm.dbg.value(metadata i64* %1, metadata !385, metadata !DIExpression()) #10, !dbg !4829
  call void @llvm.dbg.value(metadata i64 1, metadata !386, metadata !DIExpression()) #10, !dbg !4830
  %3 = load i64, i64* %1, align 8, !dbg !4831, !tbaa !1101
  call void @llvm.dbg.value(metadata i64 %3, metadata !387, metadata !DIExpression()) #10, !dbg !4832
  %4 = icmp eq i8* %0, null, !dbg !4833
  br i1 %4, label %5, label %12, !dbg !4834

; <label>:5:                                      ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !4835
  br i1 %6, label %9, label %7, !dbg !4836

; <label>:7:                                      ; preds = %5
  call void @llvm.dbg.value(metadata i64 %3, metadata !387, metadata !DIExpression()) #10, !dbg !4832
  %8 = icmp slt i64 %3, 0, !dbg !4837
  br i1 %8, label %11, label %9, !dbg !4838

; <label>:9:                                      ; preds = %5, %7
  %10 = phi i64 [ %3, %7 ], [ 128, %5 ]
  call void @llvm.dbg.value(metadata i64 %18, metadata !387, metadata !DIExpression()) #10, !dbg !4832
  store i64 %10, i64* %1, align 8, !dbg !4839, !tbaa !1101
  call void @llvm.dbg.value(metadata i8* %0, metadata !4721, metadata !DIExpression()) #10, !dbg !4840
  call void @llvm.dbg.value(metadata i64 %18, metadata !4726, metadata !DIExpression()) #10, !dbg !4842
  br label %21, !dbg !4843

; <label>:11:                                     ; preds = %7
  tail call void @xalloc_die() #15, !dbg !4844
  unreachable, !dbg !4844

; <label>:12:                                     ; preds = %2
  %13 = icmp ult i64 %3, 6148914691236517204, !dbg !4845
  br i1 %13, label %15, label %14, !dbg !4846

; <label>:14:                                     ; preds = %12
  tail call void @xalloc_die() #15, !dbg !4847
  unreachable, !dbg !4847

; <label>:15:                                     ; preds = %12
  %16 = lshr i64 %3, 1, !dbg !4848
  %17 = add i64 %3, 1, !dbg !4849
  %18 = add i64 %17, %16, !dbg !4850
  call void @llvm.dbg.value(metadata i64 %18, metadata !387, metadata !DIExpression()) #10, !dbg !4832
  call void @llvm.dbg.value(metadata i64 %18, metadata !387, metadata !DIExpression()) #10, !dbg !4832
  store i64 %18, i64* %1, align 8, !dbg !4839, !tbaa !1101
  call void @llvm.dbg.value(metadata i8* %0, metadata !4721, metadata !DIExpression()) #10, !dbg !4840
  call void @llvm.dbg.value(metadata i64 %18, metadata !4726, metadata !DIExpression()) #10, !dbg !4842
  %19 = icmp eq i64 %18, 0, !dbg !4851
  br i1 %19, label %20, label %21, !dbg !4843

; <label>:20:                                     ; preds = %15
  tail call void @free(i8* nonnull %0) #10, !dbg !4852
  br label %28, !dbg !4853

; <label>:21:                                     ; preds = %15, %9
  %22 = phi i64 [ %10, %9 ], [ %18, %15 ]
  %23 = tail call i8* @realloc(i8* %0, i64 %22) #10, !dbg !4854
  call void @llvm.dbg.value(metadata i8* %23, metadata !4721, metadata !DIExpression()) #10, !dbg !4840
  %24 = icmp eq i8* %23, null, !dbg !4855
  %25 = icmp ne i64 %22, 0, !dbg !4856
  %26 = and i1 %25, %24, !dbg !4857
  br i1 %26, label %27, label %28, !dbg !4857

; <label>:27:                                     ; preds = %21
  tail call void @xalloc_die() #15, !dbg !4858
  unreachable, !dbg !4858

; <label>:28:                                     ; preds = %20, %21
  %29 = phi i8* [ null, %20 ], [ %23, %21 ], !dbg !4859
  ret i8* %29, !dbg !4860
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xzalloc(i64) local_unnamed_addr #7 !dbg !4861 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4863, metadata !DIExpression()), !dbg !4864
  call void @llvm.dbg.value(metadata i64 %0, metadata !4681, metadata !DIExpression()) #10, !dbg !4865
  %2 = tail call noalias i8* @malloc(i64 %0) #10, !dbg !4867
  call void @llvm.dbg.value(metadata i8* %2, metadata !4687, metadata !DIExpression()) #10, !dbg !4868
  %3 = icmp eq i8* %2, null, !dbg !4869
  %4 = icmp ne i64 %0, 0, !dbg !4870
  %5 = and i1 %4, %3, !dbg !4871
  br i1 %5, label %6, label %7, !dbg !4871

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !4872
  unreachable, !dbg !4872

; <label>:7:                                      ; preds = %1
  tail call void @llvm.memset.p0i8.i64(i8* align 1 %2, i8 0, i64 %0, i1 false), !dbg !4873
  ret i8* %2, !dbg !4874
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xcalloc(i64, i64) local_unnamed_addr #7 !dbg !4875 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4877, metadata !DIExpression()), !dbg !4880
  call void @llvm.dbg.value(metadata i64 %1, metadata !4878, metadata !DIExpression()), !dbg !4881
  %3 = udiv i64 9223372036854775807, %1, !dbg !4882
  %4 = icmp ult i64 %3, %0, !dbg !4882
  br i1 %4, label %8, label %5, !dbg !4884

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @rpl_calloc(i64 %0, i64 %1) #10, !dbg !4885
  call void @llvm.dbg.value(metadata i8* %6, metadata !4879, metadata !DIExpression()), !dbg !4886
  %7 = icmp eq i8* %6, null, !dbg !4887
  br i1 %7, label %8, label %9, !dbg !4888

; <label>:8:                                      ; preds = %5, %2
  tail call void @xalloc_die() #15, !dbg !4889
  unreachable, !dbg !4889

; <label>:9:                                      ; preds = %5
  ret i8* %6, !dbg !4890
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xmemdup(i8* nocapture readonly, i64) local_unnamed_addr #7 !dbg !4891 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4893, metadata !DIExpression()), !dbg !4895
  call void @llvm.dbg.value(metadata i64 %1, metadata !4894, metadata !DIExpression()), !dbg !4896
  call void @llvm.dbg.value(metadata i64 %1, metadata !4681, metadata !DIExpression()) #10, !dbg !4897
  %3 = tail call noalias i8* @malloc(i64 %1) #10, !dbg !4899
  call void @llvm.dbg.value(metadata i8* %3, metadata !4687, metadata !DIExpression()) #10, !dbg !4900
  %4 = icmp eq i8* %3, null, !dbg !4901
  %5 = icmp ne i64 %1, 0, !dbg !4902
  %6 = and i1 %5, %4, !dbg !4903
  br i1 %6, label %7, label %8, !dbg !4903

; <label>:7:                                      ; preds = %2
  tail call void @xalloc_die() #15, !dbg !4904
  unreachable, !dbg !4904

; <label>:8:                                      ; preds = %2
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %3, i8* align 1 %0, i64 %1, i1 false), !dbg !4905
  ret i8* %3, !dbg !4906
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xstrdup(i8* nocapture readonly) local_unnamed_addr #7 !dbg !4907 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4909, metadata !DIExpression()), !dbg !4910
  %2 = tail call i64 @strlen(i8* %0) #14, !dbg !4911
  %3 = add i64 %2, 1, !dbg !4912
  call void @llvm.dbg.value(metadata i8* %0, metadata !4893, metadata !DIExpression()) #10, !dbg !4913
  call void @llvm.dbg.value(metadata i64 %3, metadata !4894, metadata !DIExpression()) #10, !dbg !4915
  call void @llvm.dbg.value(metadata i64 %3, metadata !4681, metadata !DIExpression()) #10, !dbg !4916
  %4 = tail call noalias i8* @malloc(i64 %3) #10, !dbg !4918
  call void @llvm.dbg.value(metadata i8* %4, metadata !4687, metadata !DIExpression()) #10, !dbg !4919
  %5 = icmp eq i8* %4, null, !dbg !4920
  %6 = icmp ne i64 %3, 0, !dbg !4921
  %7 = and i1 %6, %5, !dbg !4922
  br i1 %7, label %8, label %9, !dbg !4922

; <label>:8:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !4923
  unreachable, !dbg !4923

; <label>:9:                                      ; preds = %1
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %4, i8* align 1 %0, i64 %3, i1 false) #10, !dbg !4924
  ret i8* %4, !dbg !4925
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !4926 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !4928, !tbaa !1043
  %2 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.159, i64 0, i64 0), i32 5) #10, !dbg !4929
  tail call void (i32, i32, i8*, ...) @error(i32 %1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.160, i64 0, i64 0), i8* %2) #10, !dbg !4930
  tail call void @abort() #15, !dbg !4931
  unreachable, !dbg !4931
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @rpl_calloc(i64, i64) local_unnamed_addr #7 !dbg !4932 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4935, metadata !DIExpression()), !dbg !4941
  call void @llvm.dbg.value(metadata i64 %1, metadata !4936, metadata !DIExpression()), !dbg !4942
  %3 = icmp eq i64 %0, 0, !dbg !4943
  %4 = icmp eq i64 %1, 0, !dbg !4944
  %5 = or i1 %3, %4, !dbg !4945
  br i1 %5, label %12, label %6, !dbg !4945

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !4946
  call void @llvm.dbg.value(metadata i64 %7, metadata !4938, metadata !DIExpression()), !dbg !4947
  %8 = udiv i64 %7, %1, !dbg !4948
  %9 = icmp eq i64 %8, %0, !dbg !4950
  br i1 %9, label %12, label %10, !dbg !4951

; <label>:10:                                     ; preds = %6
  %11 = tail call i32* @__errno_location() #17, !dbg !4952
  store i32 12, i32* %11, align 4, !dbg !4954, !tbaa !1043
  br label %16

; <label>:12:                                     ; preds = %6, %2
  %13 = phi i64 [ 1, %2 ], [ %1, %6 ]
  %14 = phi i64 [ 1, %2 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i64 %14, metadata !4935, metadata !DIExpression()), !dbg !4941
  call void @llvm.dbg.value(metadata i64 %13, metadata !4936, metadata !DIExpression()), !dbg !4942
  %15 = tail call noalias i8* @calloc(i64 %14, i64 %13) #10, !dbg !4955
  call void @llvm.dbg.value(metadata i8* %15, metadata !4937, metadata !DIExpression()), !dbg !4956
  br label %16, !dbg !4957

; <label>:16:                                     ; preds = %10, %12
  %17 = phi i8* [ %15, %12 ], [ null, %10 ], !dbg !4958
  ret i8* %17, !dbg !4959
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fclose(%struct._IO_FILE* nonnull) local_unnamed_addr #7 !dbg !4960 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4999, metadata !DIExpression()), !dbg !5003
  call void @llvm.dbg.value(metadata i32 0, metadata !5000, metadata !DIExpression()), !dbg !5004
  call void @llvm.dbg.value(metadata i32 0, metadata !5002, metadata !DIExpression()), !dbg !5005
  %2 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #10, !dbg !5006
  call void @llvm.dbg.value(metadata i32 %2, metadata !5001, metadata !DIExpression()), !dbg !5007
  %3 = icmp slt i32 %2, 0, !dbg !5008
  br i1 %3, label %4, label %6, !dbg !5010

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !5011
  br label %24, !dbg !5012

; <label>:6:                                      ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #10, !dbg !5013
  %8 = icmp eq i32 %7, 0, !dbg !5013
  br i1 %8, label %13, label %9, !dbg !5015

; <label>:9:                                      ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #10, !dbg !5016
  %11 = tail call i64 @lseek(i32 %10, i64 0, i32 1) #10, !dbg !5017
  %12 = icmp eq i64 %11, -1, !dbg !5018
  br i1 %12, label %16, label %13, !dbg !5019

; <label>:13:                                     ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* nonnull %0) #10, !dbg !5020
  %15 = icmp eq i32 %14, 0, !dbg !5020
  br i1 %15, label %16, label %18, !dbg !5021

; <label>:16:                                     ; preds = %13, %9
  call void @llvm.dbg.value(metadata i32 %20, metadata !5000, metadata !DIExpression()), !dbg !5004
  %17 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !5022
  call void @llvm.dbg.value(metadata i32 %21, metadata !5002, metadata !DIExpression()), !dbg !5005
  br label %24, !dbg !5023

; <label>:18:                                     ; preds = %13
  %19 = tail call i32* @__errno_location() #17, !dbg !5024
  %20 = load i32, i32* %19, align 4, !dbg !5024, !tbaa !1043
  call void @llvm.dbg.value(metadata i32 %20, metadata !5000, metadata !DIExpression()), !dbg !5004
  call void @llvm.dbg.value(metadata i32 %20, metadata !5000, metadata !DIExpression()), !dbg !5004
  %21 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !5022
  call void @llvm.dbg.value(metadata i32 %21, metadata !5002, metadata !DIExpression()), !dbg !5005
  %22 = icmp eq i32 %20, 0, !dbg !5025
  br i1 %22, label %24, label %23, !dbg !5023

; <label>:23:                                     ; preds = %18
  store i32 %20, i32* %19, align 4, !dbg !5027, !tbaa !1043
  call void @llvm.dbg.value(metadata i32 -1, metadata !5002, metadata !DIExpression()), !dbg !5005
  br label %24, !dbg !5029

; <label>:24:                                     ; preds = %16, %23, %18, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !5030
  ret i32 %25, !dbg !5031
}

; Function Attrs: nounwind
declare i32 @fclose(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @__freading(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i64 @lseek(i32, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fcntl(i32, i32, ...) local_unnamed_addr #7 !dbg !326 {
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !334, metadata !DIExpression()), !dbg !5032
  call void @llvm.dbg.value(metadata i32 %1, metadata !335, metadata !DIExpression()), !dbg !5033
  %4 = bitcast [1 x %struct.__va_list_tag]* %3 to i8*, !dbg !5034
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %4) #10, !dbg !5034
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %3, metadata !336, metadata !DIExpression()), !dbg !5035
  call void @llvm.dbg.value(metadata i32 -1, metadata !347, metadata !DIExpression()), !dbg !5036
  call void @llvm.va_start(i8* nonnull %4), !dbg !5037
  %5 = icmp eq i32 %1, 1030, !dbg !5038
  %6 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 0, !dbg !5039
  %7 = load i32, i32* %6, align 16, !dbg !5039
  %8 = icmp ult i32 %7, 41, !dbg !5039
  br i1 %5, label %9, label %58, !dbg !5038

; <label>:9:                                      ; preds = %2
  br i1 %8, label %10, label %16, !dbg !5040

; <label>:10:                                     ; preds = %9
  %11 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 3, !dbg !5040
  %12 = load i8*, i8** %11, align 16, !dbg !5040
  %13 = sext i32 %7 to i64, !dbg !5040
  %14 = getelementptr i8, i8* %12, i64 %13, !dbg !5040
  %15 = add i32 %7, 8, !dbg !5040
  store i32 %15, i32* %6, align 16, !dbg !5040
  br label %20, !dbg !5040

; <label>:16:                                     ; preds = %9
  %17 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 2, !dbg !5040
  %18 = load i8*, i8** %17, align 8, !dbg !5040
  %19 = getelementptr i8, i8* %18, i64 8, !dbg !5040
  store i8* %19, i8** %17, align 8, !dbg !5040
  br label %20, !dbg !5040

; <label>:20:                                     ; preds = %16, %10
  %21 = phi i8* [ %14, %10 ], [ %18, %16 ]
  %22 = bitcast i8* %21 to i32*, !dbg !5040
  %23 = load i32, i32* %22, align 4, !dbg !5040
  call void @llvm.dbg.value(metadata i32 %23, metadata !348, metadata !DIExpression()), !dbg !5041
  %24 = load i32, i32* @rpl_fcntl.have_dupfd_cloexec, align 4, !dbg !5042, !tbaa !1043
  %25 = icmp sgt i32 %24, -1, !dbg !5044
  br i1 %25, label %26, label %38, !dbg !5045

; <label>:26:                                     ; preds = %20
  %27 = call i32 (i32, i32, ...) @fcntl(i32 %0, i32 1030, i32 %23) #10, !dbg !5046
  call void @llvm.dbg.value(metadata i32 %27, metadata !347, metadata !DIExpression()), !dbg !5036
  %28 = icmp sgt i32 %27, -1, !dbg !5048
  br i1 %28, label %33, label %29, !dbg !5050

; <label>:29:                                     ; preds = %26
  %30 = tail call i32* @__errno_location() #17, !dbg !5051
  %31 = load i32, i32* %30, align 4, !dbg !5051, !tbaa !1043
  %32 = icmp eq i32 %31, 22, !dbg !5052
  br i1 %32, label %34, label %33, !dbg !5053

; <label>:33:                                     ; preds = %26, %29
  store i32 1, i32* @rpl_fcntl.have_dupfd_cloexec, align 4, !dbg !5054, !tbaa !1043
  call void @llvm.dbg.value(metadata i32 %44, metadata !347, metadata !DIExpression()), !dbg !5036
  br label %74, !dbg !5056

; <label>:34:                                     ; preds = %29
  %35 = call i32 (i32, i32, ...) @rpl_fcntl(i32 %0, i32 0, i32 %23), !dbg !5057
  call void @llvm.dbg.value(metadata i32 %35, metadata !347, metadata !DIExpression()), !dbg !5036
  %36 = icmp slt i32 %35, 0, !dbg !5059
  br i1 %36, label %74, label %37, !dbg !5061

; <label>:37:                                     ; preds = %34
  store i32 -1, i32* @rpl_fcntl.have_dupfd_cloexec, align 4, !dbg !5062, !tbaa !1043
  br label %42

; <label>:38:                                     ; preds = %20
  %39 = call i32 (i32, i32, ...) @rpl_fcntl(i32 %0, i32 0, i32 %23), !dbg !5063
  call void @llvm.dbg.value(metadata i32 %39, metadata !347, metadata !DIExpression()), !dbg !5036
  %40 = load i32, i32* @rpl_fcntl.have_dupfd_cloexec, align 4, !dbg !5064
  %41 = icmp eq i32 %40, -1
  br label %42

; <label>:42:                                     ; preds = %37, %38
  %43 = phi i1 [ true, %37 ], [ %41, %38 ]
  %44 = phi i32 [ %35, %37 ], [ %39, %38 ], !dbg !5065
  call void @llvm.dbg.value(metadata i32 %44, metadata !347, metadata !DIExpression()), !dbg !5036
  %45 = icmp sgt i32 %44, -1, !dbg !5066
  %46 = and i1 %45, %43, !dbg !5056
  br i1 %46, label %47, label %74, !dbg !5056

; <label>:47:                                     ; preds = %42
  %48 = call i32 (i32, i32, ...) @fcntl(i32 %44, i32 1) #10, !dbg !5067
  call void @llvm.dbg.value(metadata i32 %48, metadata !351, metadata !DIExpression()), !dbg !5068
  %49 = icmp slt i32 %48, 0, !dbg !5069
  br i1 %49, label %54, label %50, !dbg !5070

; <label>:50:                                     ; preds = %47
  %51 = or i32 %48, 1, !dbg !5071
  %52 = call i32 (i32, i32, ...) @fcntl(i32 %44, i32 2, i32 %51) #10, !dbg !5072
  %53 = icmp eq i32 %52, -1, !dbg !5073
  br i1 %53, label %54, label %74, !dbg !5074

; <label>:54:                                     ; preds = %50, %47
  %55 = tail call i32* @__errno_location() #17, !dbg !5075
  %56 = load i32, i32* %55, align 4, !dbg !5075, !tbaa !1043
  call void @llvm.dbg.value(metadata i32 %56, metadata !354, metadata !DIExpression()), !dbg !5076
  %57 = call i32 @close(i32 %44) #10, !dbg !5077
  store i32 %56, i32* %55, align 4, !dbg !5078, !tbaa !1043
  call void @llvm.dbg.value(metadata i32 -1, metadata !347, metadata !DIExpression()), !dbg !5036
  br label %74, !dbg !5079

; <label>:58:                                     ; preds = %2
  br i1 %8, label %59, label %65, !dbg !5080

; <label>:59:                                     ; preds = %58
  %60 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 3, !dbg !5080
  %61 = load i8*, i8** %60, align 16, !dbg !5080
  %62 = sext i32 %7 to i64, !dbg !5080
  %63 = getelementptr i8, i8* %61, i64 %62, !dbg !5080
  %64 = add i32 %7, 8, !dbg !5080
  store i32 %64, i32* %6, align 16, !dbg !5080
  br label %69, !dbg !5080

; <label>:65:                                     ; preds = %58
  %66 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 2, !dbg !5080
  %67 = load i8*, i8** %66, align 8, !dbg !5080
  %68 = getelementptr i8, i8* %67, i64 8, !dbg !5080
  store i8* %68, i8** %66, align 8, !dbg !5080
  br label %69, !dbg !5080

; <label>:69:                                     ; preds = %65, %59
  %70 = phi i8* [ %63, %59 ], [ %67, %65 ]
  %71 = bitcast i8* %70 to i8**, !dbg !5080
  %72 = load i8*, i8** %71, align 8, !dbg !5080
  call void @llvm.dbg.value(metadata i8* %72, metadata !357, metadata !DIExpression()), !dbg !5081
  %73 = call i32 (i32, i32, ...) @fcntl(i32 %0, i32 %1, i8* %72) #10, !dbg !5082
  call void @llvm.dbg.value(metadata i32 %73, metadata !347, metadata !DIExpression()), !dbg !5036
  br label %74

; <label>:74:                                     ; preds = %33, %34, %50, %54, %42, %69
  %75 = phi i32 [ %73, %69 ], [ %35, %34 ], [ %44, %42 ], [ -1, %54 ], [ %44, %50 ], [ %27, %33 ], !dbg !5039
  call void @llvm.dbg.value(metadata i32 %75, metadata !347, metadata !DIExpression()), !dbg !5036
  call void @llvm.va_end(i8* nonnull %4), !dbg !5083
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %4) #10, !dbg !5084
  ret i32 %75, !dbg !5085
}

declare i32 @fcntl(i32, i32, ...) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fflush(%struct._IO_FILE*) local_unnamed_addr #7 !dbg !5086 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !5125, metadata !DIExpression()), !dbg !5126
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !5127
  br i1 %2, label %6, label %3, !dbg !5129

; <label>:3:                                      ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #10, !dbg !5130
  %5 = icmp eq i32 %4, 0, !dbg !5130
  br i1 %5, label %6, label %8, !dbg !5131

; <label>:6:                                      ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* %0), !dbg !5132
  br label %17, !dbg !5133

; <label>:8:                                      ; preds = %3
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !5134, metadata !DIExpression()) #10, !dbg !5139
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !5141
  %10 = load i32, i32* %9, align 8, !dbg !5141, !tbaa !1474
  %11 = and i32 %10, 256, !dbg !5143
  %12 = icmp eq i32 %11, 0, !dbg !5143
  br i1 %12, label %15, label %13, !dbg !5144

; <label>:13:                                     ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* nonnull %0, i64 0, i32 1) #10, !dbg !5145
  br label %15, !dbg !5145

; <label>:15:                                     ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* nonnull %0), !dbg !5146
  br label %17, !dbg !5147

; <label>:17:                                     ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ], !dbg !5148
  ret i32 %18, !dbg !5149
}

; Function Attrs: nounwind
declare i32 @fflush(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fseeko(%struct._IO_FILE* nocapture nonnull, i64, i32) local_unnamed_addr #7 !dbg !5150 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !5189, metadata !DIExpression()), !dbg !5195
  call void @llvm.dbg.value(metadata i64 %1, metadata !5190, metadata !DIExpression()), !dbg !5196
  call void @llvm.dbg.value(metadata i32 %2, metadata !5191, metadata !DIExpression()), !dbg !5197
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !5198
  %5 = load i8*, i8** %4, align 8, !dbg !5198, !tbaa !5199
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !5200
  %7 = load i8*, i8** %6, align 8, !dbg !5200, !tbaa !5201
  %8 = icmp eq i8* %5, %7, !dbg !5202
  br i1 %8, label %9, label %28, !dbg !5203

; <label>:9:                                      ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !5204
  %11 = load i8*, i8** %10, align 8, !dbg !5204, !tbaa !1405
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !5205
  %13 = load i8*, i8** %12, align 8, !dbg !5205, !tbaa !5206
  %14 = icmp eq i8* %11, %13, !dbg !5207
  br i1 %14, label %15, label %28, !dbg !5208

; <label>:15:                                     ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !5209
  %17 = load i8*, i8** %16, align 8, !dbg !5209, !tbaa !5210
  %18 = icmp eq i8* %17, null, !dbg !5211
  br i1 %18, label %19, label %28, !dbg !5212

; <label>:19:                                     ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #10, !dbg !5213
  %21 = tail call i64 @lseek(i32 %20, i64 %1, i32 %2) #10, !dbg !5214
  call void @llvm.dbg.value(metadata i64 %21, metadata !5192, metadata !DIExpression()), !dbg !5215
  %22 = icmp eq i64 %21, -1, !dbg !5216
  br i1 %22, label %30, label %23, !dbg !5218

; <label>:23:                                     ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !5219
  %25 = load i32, i32* %24, align 8, !dbg !5220, !tbaa !1474
  %26 = and i32 %25, -17, !dbg !5220
  store i32 %26, i32* %24, align 8, !dbg !5220, !tbaa !1474
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !5221
  store i64 %21, i64* %27, align 8, !dbg !5222, !tbaa !5223
  br label %30, !dbg !5224

; <label>:28:                                     ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* nonnull %0, i64 %1, i32 %2), !dbg !5225
  br label %30, !dbg !5226

; <label>:30:                                     ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ], !dbg !5227
  ret i32 %31, !dbg !5228
}

; Function Attrs: nounwind
declare i32 @fseeko(%struct._IO_FILE* nocapture, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rpl_mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #7 !dbg !5229 {
  %5 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32* %0, metadata !5246, metadata !DIExpression()), !dbg !5255
  call void @llvm.dbg.value(metadata i8* %1, metadata !5247, metadata !DIExpression()), !dbg !5256
  call void @llvm.dbg.value(metadata i64 %2, metadata !5248, metadata !DIExpression()), !dbg !5257
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %3, metadata !5249, metadata !DIExpression()), !dbg !5258
  %6 = bitcast i32* %5 to i8*, !dbg !5259
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #10, !dbg !5259
  %7 = icmp eq i32* %0, null, !dbg !5260
  %8 = select i1 %7, i32* %5, i32* %0, !dbg !5262
  call void @llvm.dbg.value(metadata i32* %8, metadata !5246, metadata !DIExpression()), !dbg !5255
  %9 = call i64 @mbrtowc(i32* %8, i8* %1, i64 %2, %struct.__mbstate_t* %3) #10, !dbg !5263
  call void @llvm.dbg.value(metadata i64 %9, metadata !5250, metadata !DIExpression()), !dbg !5264
  %10 = icmp ugt i64 %9, -3, !dbg !5265
  %11 = icmp ne i64 %2, 0, !dbg !5266
  %12 = and i1 %11, %10, !dbg !5267
  br i1 %12, label %13, label %18, !dbg !5267

; <label>:13:                                     ; preds = %4
  %14 = call zeroext i1 @hard_locale(i32 0) #10, !dbg !5268
  br i1 %14, label %18, label %15, !dbg !5269

; <label>:15:                                     ; preds = %13
  %16 = load i8, i8* %1, align 1, !dbg !5270, !tbaa !1129
  call void @llvm.dbg.value(metadata i8 %16, metadata !5252, metadata !DIExpression()), !dbg !5271
  %17 = zext i8 %16 to i32, !dbg !5272
  store i32 %17, i32* %8, align 4, !dbg !5273, !tbaa !1043
  br label %18

; <label>:18:                                     ; preds = %4, %13, %15
  %19 = phi i64 [ 1, %15 ], [ %9, %13 ], [ %9, %4 ], !dbg !5274
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #10, !dbg !5275
  ret i64 %19, !dbg !5275
}

; Function Attrs: nounwind
declare i64 @mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @close_stream(%struct._IO_FILE*) local_unnamed_addr #7 !dbg !5276 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !5315, metadata !DIExpression()), !dbg !5320
  %2 = tail call i64 @__fpending(%struct._IO_FILE* %0) #10, !dbg !5321
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !5322, metadata !DIExpression()), !dbg !5325
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !5327
  %4 = load i32, i32* %3, align 8, !dbg !5327, !tbaa !1474
  %5 = and i32 %4, 32, !dbg !5327
  %6 = icmp eq i32 %5, 0, !dbg !5328
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* %0) #10, !dbg !5329
  %8 = icmp ne i32 %7, 0, !dbg !5330
  br i1 %6, label %9, label %19, !dbg !5331

; <label>:9:                                      ; preds = %1
  %10 = icmp ne i64 %2, 0, !dbg !5333
  %11 = xor i1 %8, true, !dbg !5334
  %12 = or i1 %10, %11, !dbg !5334
  %13 = sext i1 %8 to i32, !dbg !5334
  br i1 %12, label %22, label %14, !dbg !5334

; <label>:14:                                     ; preds = %9
  %15 = tail call i32* @__errno_location() #17, !dbg !5335
  %16 = load i32, i32* %15, align 4, !dbg !5335, !tbaa !1043
  %17 = icmp ne i32 %16, 9, !dbg !5336
  %18 = sext i1 %17 to i32, !dbg !5337
  br label %22, !dbg !5337

; <label>:19:                                     ; preds = %1
  br i1 %8, label %22, label %20, !dbg !5338

; <label>:20:                                     ; preds = %19
  %21 = tail call i32* @__errno_location() #17, !dbg !5340
  store i32 0, i32* %21, align 4, !dbg !5342, !tbaa !1043
  br label %22, !dbg !5340

; <label>:22:                                     ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ], !dbg !5343
  ret i32 %23, !dbg !5344
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local zeroext i1 @hard_locale(i32) local_unnamed_addr #7 !dbg !5345 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5350, metadata !DIExpression()), !dbg !5353
  call void @llvm.dbg.value(metadata i8 1, metadata !5351, metadata !DIExpression()), !dbg !5354
  %2 = tail call i8* @setlocale(i32 %0, i8* null) #10, !dbg !5355
  call void @llvm.dbg.value(metadata i8* %2, metadata !5352, metadata !DIExpression()), !dbg !5356
  %3 = icmp eq i8* %2, null, !dbg !5357
  br i1 %3, label %11, label %4, !dbg !5359

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @strcmp(i8* nonnull %2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.177, i64 0, i64 0)) #14, !dbg !5360
  %6 = icmp eq i32 %5, 0, !dbg !5365
  br i1 %6, label %10, label %7, !dbg !5366

; <label>:7:                                      ; preds = %4
  %8 = tail call i32 @strcmp(i8* nonnull %2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.178, i64 0, i64 0)) #14, !dbg !5367
  %9 = icmp eq i32 %8, 0, !dbg !5368
  br i1 %9, label %10, label %11, !dbg !5369

; <label>:10:                                     ; preds = %7, %4
  call void @llvm.dbg.value(metadata i8 0, metadata !5351, metadata !DIExpression()), !dbg !5354
  br label %11, !dbg !5370

; <label>:11:                                     ; preds = %1, %7, %10
  %12 = phi i1 [ false, %10 ], [ true, %7 ], [ true, %1 ]
  ret i1 %12, !dbg !5371
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @locale_charset() local_unnamed_addr #7 !dbg !5372 {
  %1 = tail call i8* @nl_langinfo(i32 14) #10, !dbg !5378
  call void @llvm.dbg.value(metadata i8* %1, metadata !5377, metadata !DIExpression()), !dbg !5379
  %2 = icmp eq i8* %1, null, !dbg !5380
  %3 = select i1 %2, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.181, i64 0, i64 0), i8* %1, !dbg !5382
  call void @llvm.dbg.value(metadata i8* %3, metadata !5377, metadata !DIExpression()), !dbg !5379
  %4 = load i8, i8* %3, align 1, !dbg !5383, !tbaa !1129
  %5 = icmp eq i8 %4, 0, !dbg !5387
  %6 = select i1 %5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.182, i64 0, i64 0), i8* %3, !dbg !5388
  call void @llvm.dbg.value(metadata i8* %6, metadata !5377, metadata !DIExpression()), !dbg !5379
  ret i8* %6, !dbg !5389
}

; Function Attrs: nounwind
declare i8* @nl_langinfo(i32) local_unnamed_addr #2

attributes #0 = { noreturn nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { argmemonly nounwind }
attributes #5 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #10 = { nounwind }
attributes #11 = { nounwind readonly sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #12 = { argmemonly nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #13 = { inlinehint nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #14 = { nounwind readonly }
attributes #15 = { noreturn nounwind }
attributes #16 = { noreturn }
attributes #17 = { nounwind readnone }
attributes #18 = { cold }

!llvm.dbg.cu = !{!2, !221, !227, !235, !250, !359, !362, !257, !264, !364, !366, !317, !374, !391, !393, !395, !330, !397, !399, !401, !404, !406, !408}
!llvm.ident = !{!797, !797, !797, !797, !797, !797, !797, !797, !797, !797, !797, !797, !797, !797, !797, !797, !797, !797, !797, !797, !797, !797, !797}
!llvm.module.flags = !{!798, !799, !800, !801, !802}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "long_options", scope: !2, file: !3, line: 202, type: !198, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !58, globals: !68)
!3 = !DIFile(filename: "src/md5sum.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!4 = !{!5, !20, !35, !49}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !6, line: 32, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./lib/quotearg.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
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
!21 = !DIFile(filename: "/usr/include/ctype.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
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
!36 = !DIFile(filename: "src/system.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!37 = distinct !DISubprogram(name: "select_plural", scope: !36, file: !36, line: 183, type: !38, isLocal: true, isDefinition: true, scopeLine: 184, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !45)
!38 = !DISubroutineType(types: !39)
!39 = !{!40, !41}
!40 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!41 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !42, line: 102, baseType: !43)
!42 = !DIFile(filename: "/usr/include/stdint.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!43 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !44, line: 72, baseType: !40)
!44 = !DIFile(filename: "/usr/include/bits/types.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!45 = !{!46}
!46 = !DILocalVariable(name: "n", arg: 1, scope: !37, file: !36, line: 183, type: !41)
!47 = !{!48}
!48 = !DIEnumerator(name: "PLURAL_REDUCER", value: 1000000, isUnsigned: true)
!49 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !50, line: 45, baseType: !7, size: 32, elements: !51)
!50 = !DIFile(filename: "./lib/fadvise.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
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
!62 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !63, line: 62, baseType: !40)
!63 = !DIFile(filename: "/usr/lib/clang/7.0.0/include/stddef.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
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
!90 = distinct !DISubprogram(name: "digest_check", scope: !3, file: !3, line: 652, type: !91, isLocal: true, isDefinition: true, scopeLine: 653, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !95)
!91 = !DISubroutineType(types: !92)
!92 = !{!71, !93}
!93 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !94, size: 64)
!94 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !60)
!95 = !{!96, !97, !152, !153, !154, !155, !156, !157, !158, !162, !163, !164, !165, !166, !167, !169, !170, !171, !175, !178, !179, !180, !184, !185, !191}
!96 = !DILocalVariable(name: "checkfile_name", arg: 1, scope: !90, file: !3, line: 652, type: !93)
!97 = !DILocalVariable(name: "checkfile_stream", scope: !90, file: !3, line: 654, type: !98)
!98 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !99, size: 64)
!99 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !100, line: 7, baseType: !101)
!100 = !DIFile(filename: "/usr/include/bits/types/FILE.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!101 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !102, line: 49, size: 1728, elements: !103)
!102 = !DIFile(filename: "/usr/include/bits/types/struct_FILE.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
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
!124 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !44, line: 150, baseType: !125)
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
!137 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !44, line: 151, baseType: !125)
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
!173 = !DIFile(filename: "/usr/include/sys/types.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!174 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !44, line: 191, baseType: !125)
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
!201 = !DIFile(filename: "/usr/include/bits/getopt_ext.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!202 = !{!203, !204, !205, !207}
!203 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !200, file: !201, line: 52, baseType: !93, size: 64)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !200, file: !201, line: 55, baseType: !64, size: 32, offset: 64)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !200, file: !201, line: 56, baseType: !206, size: 64, offset: 128)
!206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !64, size: 64)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !200, file: !201, line: 57, baseType: !64, size: 32, offset: 192)
!208 = !{!209}
!209 = !DISubrange(count: 13)
!210 = !DIGlobalVariableExpression(var: !77, expr: !DIExpression(DW_OP_deref, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!211 = !DIGlobalVariableExpression(var: !79, expr: !DIExpression(DW_OP_deref, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!212 = !DIGlobalVariableExpression(var: !81, expr: !DIExpression(DW_OP_deref, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!213 = !DIGlobalVariableExpression(var: !83, expr: !DIExpression(DW_OP_deref, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!214 = !DIGlobalVariableExpression(var: !85, expr: !DIExpression(DW_OP_deref, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!215 = !DIGlobalVariableExpression(var: !87, expr: !DIExpression(DW_OP_deref, DW_OP_constu, 18446744073709551606, DW_OP_mul, DW_OP_constu, 10, DW_OP_plus, DW_OP_stack_value))
!216 = !DIGlobalVariableExpression(var: !73, expr: !DIExpression(DW_OP_deref, DW_OP_constu, 42, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!217 = !DIGlobalVariableExpression(var: !75, expr: !DIExpression(DW_OP_deref, DW_OP_constu, 40, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!218 = !DIGlobalVariableExpression(var: !70, expr: !DIExpression(DW_OP_deref, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!219 = !DIGlobalVariableExpression(var: !220, expr: !DIExpression())
!220 = distinct !DIGlobalVariable(name: "Version", scope: !221, file: !222, line: 2, type: !93, isLocal: false, isDefinition: true)
!221 = distinct !DICompileUnit(language: DW_LANG_C99, file: !222, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !223, globals: !224)
!222 = !DIFile(filename: "src/version.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!223 = !{}
!224 = !{!219}
!225 = !DIGlobalVariableExpression(var: !226, expr: !DIExpression())
!226 = distinct !DIGlobalVariable(name: "file_name", scope: !227, file: !232, line: 46, type: !93, isLocal: true, isDefinition: true)
!227 = distinct !DICompileUnit(language: DW_LANG_C99, file: !228, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !223, globals: !229)
!228 = !DIFile(filename: "./lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!229 = !{!225, !230}
!230 = !DIGlobalVariableExpression(var: !231, expr: !DIExpression())
!231 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !227, file: !232, line: 56, type: !71, isLocal: true, isDefinition: true)
!232 = !DIFile(filename: "lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!233 = !DIGlobalVariableExpression(var: !234, expr: !DIExpression())
!234 = distinct !DIGlobalVariable(name: "fillbuf", scope: !235, file: !243, line: 55, type: !244, isLocal: true, isDefinition: true)
!235 = distinct !DICompileUnit(language: DW_LANG_C99, file: !236, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !223, retainedTypes: !237, globals: !242)
!236 = !DIFile(filename: "./lib/sha1.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!237 = !{!59, !93, !238, !239}
!238 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !42, line: 90, baseType: !40)
!239 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !240, line: 26, baseType: !241)
!240 = !DIFile(filename: "/usr/include/bits/stdint-uintn.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!241 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !44, line: 41, baseType: !7)
!242 = !{!233}
!243 = !DIFile(filename: "lib/sha1.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!244 = !DICompositeType(tag: DW_TAG_array_type, baseType: !245, size: 512, elements: !246)
!245 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !66)
!246 = !{!247}
!247 = !DISubrange(count: 64)
!248 = !DIGlobalVariableExpression(var: !249, expr: !DIExpression())
!249 = distinct !DIGlobalVariable(name: "exit_failure", scope: !250, file: !253, line: 24, type: !254, isLocal: false, isDefinition: true)
!250 = distinct !DICompileUnit(language: DW_LANG_C99, file: !251, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !223, globals: !252)
!251 = !DIFile(filename: "./lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!252 = !{!248}
!253 = !DIFile(filename: "lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!254 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !64)
!255 = !DIGlobalVariableExpression(var: !256, expr: !DIExpression())
!256 = distinct !DIGlobalVariable(name: "program_name", scope: !257, file: !261, line: 33, type: !93, isLocal: false, isDefinition: true)
!257 = distinct !DICompileUnit(language: DW_LANG_C99, file: !258, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !223, retainedTypes: !259, globals: !260)
!258 = !DIFile(filename: "./lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!259 = !{!61, !59}
!260 = !{!255}
!261 = !DIFile(filename: "lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!262 = !DIGlobalVariableExpression(var: !263, expr: !DIExpression())
!263 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !264, file: !276, line: 85, type: !311, isLocal: false, isDefinition: true)
!264 = distinct !DICompileUnit(language: DW_LANG_C99, file: !265, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !266, retainedTypes: !272, globals: !273)
!265 = !DIFile(filename: "./lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!266 = !{!5, !267, !20}
!267 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !6, line: 242, baseType: !7, size: 32, elements: !268)
!268 = !{!269, !270, !271}
!269 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1, isUnsigned: true)
!270 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2, isUnsigned: true)
!271 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4, isUnsigned: true)
!272 = !{!64, !67, !62, !59}
!273 = !{!262, !274, !281, !293, !295, !300, !307, !309}
!274 = !DIGlobalVariableExpression(var: !275, expr: !DIExpression())
!275 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !264, file: !276, line: 101, type: !277, isLocal: false, isDefinition: true)
!276 = !DIFile(filename: "lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!277 = !DICompositeType(tag: DW_TAG_array_type, baseType: !278, size: 320, elements: !279)
!278 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5)
!279 = !{!280}
!280 = !DISubrange(count: 10)
!281 = !DIGlobalVariableExpression(var: !282, expr: !DIExpression())
!282 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !264, file: !276, line: 1052, type: !283, isLocal: false, isDefinition: true)
!283 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !276, line: 65, size: 448, elements: !284)
!284 = !{!285, !286, !287, !291, !292}
!285 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !283, file: !276, line: 68, baseType: !5, size: 32)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !283, file: !276, line: 71, baseType: !64, size: 32, offset: 32)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !283, file: !276, line: 75, baseType: !288, size: 256, offset: 64)
!288 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 256, elements: !289)
!289 = !{!290}
!290 = !DISubrange(count: 8)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !283, file: !276, line: 78, baseType: !93, size: 64, offset: 320)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !283, file: !276, line: 81, baseType: !93, size: 64, offset: 384)
!293 = !DIGlobalVariableExpression(var: !294, expr: !DIExpression())
!294 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !264, file: !276, line: 116, type: !283, isLocal: true, isDefinition: true)
!295 = !DIGlobalVariableExpression(var: !296, expr: !DIExpression())
!296 = distinct !DIGlobalVariable(name: "slot0", scope: !264, file: !276, line: 842, type: !297, isLocal: true, isDefinition: true)
!297 = !DICompositeType(tag: DW_TAG_array_type, baseType: !60, size: 2048, elements: !298)
!298 = !{!299}
!299 = !DISubrange(count: 256)
!300 = !DIGlobalVariableExpression(var: !301, expr: !DIExpression())
!301 = distinct !DIGlobalVariable(name: "slotvec", scope: !264, file: !276, line: 845, type: !302, isLocal: true, isDefinition: true)
!302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !303, size: 64)
!303 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !276, line: 834, size: 128, elements: !304)
!304 = !{!305, !306}
!305 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !303, file: !276, line: 836, baseType: !62, size: 64)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !303, file: !276, line: 837, baseType: !59, size: 64, offset: 64)
!307 = !DIGlobalVariableExpression(var: !308, expr: !DIExpression())
!308 = distinct !DIGlobalVariable(name: "nslots", scope: !264, file: !276, line: 843, type: !64, isLocal: true, isDefinition: true)
!309 = !DIGlobalVariableExpression(var: !310, expr: !DIExpression())
!310 = distinct !DIGlobalVariable(name: "slotvec0", scope: !264, file: !276, line: 844, type: !303, isLocal: true, isDefinition: true)
!311 = !DICompositeType(tag: DW_TAG_array_type, baseType: !312, size: 704, elements: !313)
!312 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !93)
!313 = !{!314}
!314 = !DISubrange(count: 11)
!315 = !DIGlobalVariableExpression(var: !316, expr: !DIExpression())
!316 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !317, file: !320, line: 26, type: !321, isLocal: false, isDefinition: true)
!317 = distinct !DICompileUnit(language: DW_LANG_C99, file: !318, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !223, globals: !319)
!318 = !DIFile(filename: "./lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!319 = !{!315}
!320 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!321 = !DICompositeType(tag: DW_TAG_array_type, baseType: !94, size: 376, elements: !322)
!322 = !{!323}
!323 = !DISubrange(count: 47)
!324 = !DIGlobalVariableExpression(var: !325, expr: !DIExpression())
!325 = distinct !DIGlobalVariable(name: "have_dupfd_cloexec", scope: !326, file: !327, line: 339, type: !64, isLocal: true, isDefinition: true)
!326 = distinct !DISubprogram(name: "rpl_fcntl", scope: !327, file: !327, line: 276, type: !328, isLocal: false, isDefinition: true, scopeLine: 277, flags: DIFlagPrototyped, isOptimized: true, unit: !330, retainedNodes: !333)
!327 = !DIFile(filename: "lib/fcntl.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!328 = !DISubroutineType(types: !329)
!329 = !{!64, !64, !64, null}
!330 = distinct !DICompileUnit(language: DW_LANG_C99, file: !331, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !223, globals: !332)
!331 = !DIFile(filename: "./lib/fcntl.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!332 = !{!324}
!333 = !{!334, !335, !336, !347, !348, !351, !354, !357}
!334 = !DILocalVariable(name: "fd", arg: 1, scope: !326, file: !327, line: 276, type: !64)
!335 = !DILocalVariable(name: "action", arg: 2, scope: !326, file: !327, line: 276, type: !64)
!336 = !DILocalVariable(name: "arg", scope: !326, file: !327, line: 278, type: !337)
!337 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !338, line: 30, baseType: !339)
!338 = !DIFile(filename: "/usr/lib/clang/7.0.0/include/stdarg.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!339 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !331, line: 278, baseType: !340)
!340 = !DICompositeType(tag: DW_TAG_array_type, baseType: !341, size: 192, elements: !131)
!341 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !331, line: 278, size: 192, elements: !342)
!342 = !{!343, !344, !345, !346}
!343 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !341, file: !331, line: 278, baseType: !7, size: 32)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !341, file: !331, line: 278, baseType: !7, size: 32, offset: 32)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !341, file: !331, line: 278, baseType: !61, size: 64, offset: 64)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !341, file: !331, line: 278, baseType: !61, size: 64, offset: 128)
!347 = !DILocalVariable(name: "result", scope: !326, file: !327, line: 279, type: !64)
!348 = !DILocalVariable(name: "target", scope: !349, file: !327, line: 326, type: !64)
!349 = distinct !DILexicalBlock(scope: !350, file: !327, line: 325, column: 7)
!350 = distinct !DILexicalBlock(scope: !326, file: !327, line: 282, column: 5)
!351 = !DILocalVariable(name: "flags", scope: !352, file: !327, line: 363, type: !64)
!352 = distinct !DILexicalBlock(scope: !353, file: !327, line: 362, column: 11)
!353 = distinct !DILexicalBlock(scope: !349, file: !327, line: 361, column: 13)
!354 = !DILocalVariable(name: "saved_errno", scope: !355, file: !327, line: 366, type: !64)
!355 = distinct !DILexicalBlock(scope: !356, file: !327, line: 365, column: 15)
!356 = distinct !DILexicalBlock(scope: !352, file: !327, line: 364, column: 17)
!357 = !DILocalVariable(name: "p", scope: !358, file: !327, line: 408, type: !61)
!358 = distinct !DILexicalBlock(scope: !350, file: !327, line: 406, column: 7)
!359 = distinct !DICompileUnit(language: DW_LANG_C99, file: !360, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !361)
!360 = !DIFile(filename: "./lib/fadvise.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!361 = !{!49}
!362 = distinct !DICompileUnit(language: DW_LANG_C99, file: !363, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !223)
!363 = !DIFile(filename: "./lib/fopen-safer.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!364 = distinct !DICompileUnit(language: DW_LANG_C99, file: !365, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !223)
!365 = !DIFile(filename: "./lib/dup-safer.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!366 = distinct !DICompileUnit(language: DW_LANG_C99, file: !367, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !368, retainedTypes: !373)
!367 = !DIFile(filename: "./lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!368 = !{!369}
!369 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !370, line: 41, baseType: !7, size: 32, elements: !371)
!370 = !DIFile(filename: "lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!371 = !{!372}
!372 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2018, isUnsigned: true)
!373 = !{!61}
!374 = distinct !DICompileUnit(language: DW_LANG_C99, file: !375, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !376, retainedTypes: !390)
!375 = !DIFile(filename: "./lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!376 = !{!377}
!377 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !379, file: !378, line: 186, baseType: !7, size: 32, elements: !388)
!378 = !DIFile(filename: "./lib/xalloc.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!379 = distinct !DISubprogram(name: "x2nrealloc", scope: !378, file: !378, line: 174, type: !380, isLocal: false, isDefinition: true, scopeLine: 175, flags: DIFlagPrototyped, isOptimized: true, unit: !374, retainedNodes: !383)
!380 = !DISubroutineType(types: !381)
!381 = !{!61, !61, !382, !62}
!382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !62, size: 64)
!383 = !{!384, !385, !386, !387}
!384 = !DILocalVariable(name: "p", arg: 1, scope: !379, file: !378, line: 174, type: !61)
!385 = !DILocalVariable(name: "pn", arg: 2, scope: !379, file: !378, line: 174, type: !382)
!386 = !DILocalVariable(name: "s", arg: 3, scope: !379, file: !378, line: 174, type: !62)
!387 = !DILocalVariable(name: "n", scope: !379, file: !378, line: 176, type: !62)
!388 = !{!389}
!389 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128, isUnsigned: true)
!390 = !{!62, !59, !61}
!391 = distinct !DICompileUnit(language: DW_LANG_C99, file: !392, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !223)
!392 = !DIFile(filename: "./lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!393 = distinct !DICompileUnit(language: DW_LANG_C99, file: !394, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !223, retainedTypes: !373)
!394 = !DIFile(filename: "./lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!395 = distinct !DICompileUnit(language: DW_LANG_C99, file: !396, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !223)
!396 = !DIFile(filename: "./lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!397 = distinct !DICompileUnit(language: DW_LANG_C99, file: !398, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !223, retainedTypes: !373)
!398 = !DIFile(filename: "./lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!399 = distinct !DICompileUnit(language: DW_LANG_C99, file: !400, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !223, retainedTypes: !373)
!400 = !DIFile(filename: "./lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!401 = distinct !DICompileUnit(language: DW_LANG_C99, file: !402, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !223, retainedTypes: !403)
!402 = !DIFile(filename: "./lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!403 = !{!62}
!404 = distinct !DICompileUnit(language: DW_LANG_C99, file: !405, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !223)
!405 = !DIFile(filename: "./lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!406 = distinct !DICompileUnit(language: DW_LANG_C99, file: !407, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !223)
!407 = !DIFile(filename: "./lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!408 = distinct !DICompileUnit(language: DW_LANG_C99, file: !409, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !410, retainedTypes: !373)
!409 = !DIFile(filename: "./lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!410 = !{!411}
!411 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !412, line: 41, baseType: !7, size: 32, elements: !413)
!412 = !DIFile(filename: "/usr/include/langinfo.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!413 = !{!414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558, !559, !560, !561, !562, !563, !564, !565, !566, !567, !568, !569, !570, !571, !572, !573, !574, !575, !576, !577, !578, !579, !580, !581, !582, !583, !584, !585, !586, !587, !588, !589, !590, !591, !592, !593, !594, !595, !596, !597, !598, !599, !600, !601, !602, !603, !604, !605, !606, !607, !608, !609, !610, !611, !612, !613, !614, !615, !616, !617, !618, !619, !620, !621, !622, !623, !624, !625, !626, !627, !628, !629, !630, !631, !632, !633, !634, !635, !636, !637, !638, !639, !640, !641, !642, !643, !644, !645, !646, !647, !648, !649, !650, !651, !652, !653, !654, !655, !656, !657, !658, !659, !660, !661, !662, !663, !664, !665, !666, !667, !668, !669, !670, !671, !672, !673, !674, !675, !676, !677, !678, !679, !680, !681, !682, !683, !684, !685, !686, !687, !688, !689, !690, !691, !692, !693, !694, !695, !696, !697, !698, !699, !700, !701, !702, !703, !704, !705, !706, !707, !708, !709, !710, !711, !712, !713, !714, !715, !716, !717, !718, !719, !720, !721, !722, !723, !724, !725, !726, !727, !728, !729, !730, !731, !732, !733, !734, !735, !736, !737, !738, !739, !740, !741, !742, !743, !744, !745, !746, !747, !748, !749, !750, !751, !752, !753, !754, !755, !756, !757, !758, !759, !760, !761, !762, !763, !764, !765, !766, !767, !768, !769, !770, !771, !772, !773, !774, !775, !776, !777, !778, !779, !780, !781, !782, !783, !784, !785, !786, !787, !788, !789, !790, !791, !792, !793, !794, !795, !796}
!414 = !DIEnumerator(name: "ABDAY_1", value: 131072, isUnsigned: true)
!415 = !DIEnumerator(name: "ABDAY_2", value: 131073, isUnsigned: true)
!416 = !DIEnumerator(name: "ABDAY_3", value: 131074, isUnsigned: true)
!417 = !DIEnumerator(name: "ABDAY_4", value: 131075, isUnsigned: true)
!418 = !DIEnumerator(name: "ABDAY_5", value: 131076, isUnsigned: true)
!419 = !DIEnumerator(name: "ABDAY_6", value: 131077, isUnsigned: true)
!420 = !DIEnumerator(name: "ABDAY_7", value: 131078, isUnsigned: true)
!421 = !DIEnumerator(name: "DAY_1", value: 131079, isUnsigned: true)
!422 = !DIEnumerator(name: "DAY_2", value: 131080, isUnsigned: true)
!423 = !DIEnumerator(name: "DAY_3", value: 131081, isUnsigned: true)
!424 = !DIEnumerator(name: "DAY_4", value: 131082, isUnsigned: true)
!425 = !DIEnumerator(name: "DAY_5", value: 131083, isUnsigned: true)
!426 = !DIEnumerator(name: "DAY_6", value: 131084, isUnsigned: true)
!427 = !DIEnumerator(name: "DAY_7", value: 131085, isUnsigned: true)
!428 = !DIEnumerator(name: "ABMON_1", value: 131086, isUnsigned: true)
!429 = !DIEnumerator(name: "ABMON_2", value: 131087, isUnsigned: true)
!430 = !DIEnumerator(name: "ABMON_3", value: 131088, isUnsigned: true)
!431 = !DIEnumerator(name: "ABMON_4", value: 131089, isUnsigned: true)
!432 = !DIEnumerator(name: "ABMON_5", value: 131090, isUnsigned: true)
!433 = !DIEnumerator(name: "ABMON_6", value: 131091, isUnsigned: true)
!434 = !DIEnumerator(name: "ABMON_7", value: 131092, isUnsigned: true)
!435 = !DIEnumerator(name: "ABMON_8", value: 131093, isUnsigned: true)
!436 = !DIEnumerator(name: "ABMON_9", value: 131094, isUnsigned: true)
!437 = !DIEnumerator(name: "ABMON_10", value: 131095, isUnsigned: true)
!438 = !DIEnumerator(name: "ABMON_11", value: 131096, isUnsigned: true)
!439 = !DIEnumerator(name: "ABMON_12", value: 131097, isUnsigned: true)
!440 = !DIEnumerator(name: "MON_1", value: 131098, isUnsigned: true)
!441 = !DIEnumerator(name: "MON_2", value: 131099, isUnsigned: true)
!442 = !DIEnumerator(name: "MON_3", value: 131100, isUnsigned: true)
!443 = !DIEnumerator(name: "MON_4", value: 131101, isUnsigned: true)
!444 = !DIEnumerator(name: "MON_5", value: 131102, isUnsigned: true)
!445 = !DIEnumerator(name: "MON_6", value: 131103, isUnsigned: true)
!446 = !DIEnumerator(name: "MON_7", value: 131104, isUnsigned: true)
!447 = !DIEnumerator(name: "MON_8", value: 131105, isUnsigned: true)
!448 = !DIEnumerator(name: "MON_9", value: 131106, isUnsigned: true)
!449 = !DIEnumerator(name: "MON_10", value: 131107, isUnsigned: true)
!450 = !DIEnumerator(name: "MON_11", value: 131108, isUnsigned: true)
!451 = !DIEnumerator(name: "MON_12", value: 131109, isUnsigned: true)
!452 = !DIEnumerator(name: "AM_STR", value: 131110, isUnsigned: true)
!453 = !DIEnumerator(name: "PM_STR", value: 131111, isUnsigned: true)
!454 = !DIEnumerator(name: "D_T_FMT", value: 131112, isUnsigned: true)
!455 = !DIEnumerator(name: "D_FMT", value: 131113, isUnsigned: true)
!456 = !DIEnumerator(name: "T_FMT", value: 131114, isUnsigned: true)
!457 = !DIEnumerator(name: "T_FMT_AMPM", value: 131115, isUnsigned: true)
!458 = !DIEnumerator(name: "ERA", value: 131116, isUnsigned: true)
!459 = !DIEnumerator(name: "__ERA_YEAR", value: 131117, isUnsigned: true)
!460 = !DIEnumerator(name: "ERA_D_FMT", value: 131118, isUnsigned: true)
!461 = !DIEnumerator(name: "ALT_DIGITS", value: 131119, isUnsigned: true)
!462 = !DIEnumerator(name: "ERA_D_T_FMT", value: 131120, isUnsigned: true)
!463 = !DIEnumerator(name: "ERA_T_FMT", value: 131121, isUnsigned: true)
!464 = !DIEnumerator(name: "_NL_TIME_ERA_NUM_ENTRIES", value: 131122, isUnsigned: true)
!465 = !DIEnumerator(name: "_NL_TIME_ERA_ENTRIES", value: 131123, isUnsigned: true)
!466 = !DIEnumerator(name: "_NL_WABDAY_1", value: 131124, isUnsigned: true)
!467 = !DIEnumerator(name: "_NL_WABDAY_2", value: 131125, isUnsigned: true)
!468 = !DIEnumerator(name: "_NL_WABDAY_3", value: 131126, isUnsigned: true)
!469 = !DIEnumerator(name: "_NL_WABDAY_4", value: 131127, isUnsigned: true)
!470 = !DIEnumerator(name: "_NL_WABDAY_5", value: 131128, isUnsigned: true)
!471 = !DIEnumerator(name: "_NL_WABDAY_6", value: 131129, isUnsigned: true)
!472 = !DIEnumerator(name: "_NL_WABDAY_7", value: 131130, isUnsigned: true)
!473 = !DIEnumerator(name: "_NL_WDAY_1", value: 131131, isUnsigned: true)
!474 = !DIEnumerator(name: "_NL_WDAY_2", value: 131132, isUnsigned: true)
!475 = !DIEnumerator(name: "_NL_WDAY_3", value: 131133, isUnsigned: true)
!476 = !DIEnumerator(name: "_NL_WDAY_4", value: 131134, isUnsigned: true)
!477 = !DIEnumerator(name: "_NL_WDAY_5", value: 131135, isUnsigned: true)
!478 = !DIEnumerator(name: "_NL_WDAY_6", value: 131136, isUnsigned: true)
!479 = !DIEnumerator(name: "_NL_WDAY_7", value: 131137, isUnsigned: true)
!480 = !DIEnumerator(name: "_NL_WABMON_1", value: 131138, isUnsigned: true)
!481 = !DIEnumerator(name: "_NL_WABMON_2", value: 131139, isUnsigned: true)
!482 = !DIEnumerator(name: "_NL_WABMON_3", value: 131140, isUnsigned: true)
!483 = !DIEnumerator(name: "_NL_WABMON_4", value: 131141, isUnsigned: true)
!484 = !DIEnumerator(name: "_NL_WABMON_5", value: 131142, isUnsigned: true)
!485 = !DIEnumerator(name: "_NL_WABMON_6", value: 131143, isUnsigned: true)
!486 = !DIEnumerator(name: "_NL_WABMON_7", value: 131144, isUnsigned: true)
!487 = !DIEnumerator(name: "_NL_WABMON_8", value: 131145, isUnsigned: true)
!488 = !DIEnumerator(name: "_NL_WABMON_9", value: 131146, isUnsigned: true)
!489 = !DIEnumerator(name: "_NL_WABMON_10", value: 131147, isUnsigned: true)
!490 = !DIEnumerator(name: "_NL_WABMON_11", value: 131148, isUnsigned: true)
!491 = !DIEnumerator(name: "_NL_WABMON_12", value: 131149, isUnsigned: true)
!492 = !DIEnumerator(name: "_NL_WMON_1", value: 131150, isUnsigned: true)
!493 = !DIEnumerator(name: "_NL_WMON_2", value: 131151, isUnsigned: true)
!494 = !DIEnumerator(name: "_NL_WMON_3", value: 131152, isUnsigned: true)
!495 = !DIEnumerator(name: "_NL_WMON_4", value: 131153, isUnsigned: true)
!496 = !DIEnumerator(name: "_NL_WMON_5", value: 131154, isUnsigned: true)
!497 = !DIEnumerator(name: "_NL_WMON_6", value: 131155, isUnsigned: true)
!498 = !DIEnumerator(name: "_NL_WMON_7", value: 131156, isUnsigned: true)
!499 = !DIEnumerator(name: "_NL_WMON_8", value: 131157, isUnsigned: true)
!500 = !DIEnumerator(name: "_NL_WMON_9", value: 131158, isUnsigned: true)
!501 = !DIEnumerator(name: "_NL_WMON_10", value: 131159, isUnsigned: true)
!502 = !DIEnumerator(name: "_NL_WMON_11", value: 131160, isUnsigned: true)
!503 = !DIEnumerator(name: "_NL_WMON_12", value: 131161, isUnsigned: true)
!504 = !DIEnumerator(name: "_NL_WAM_STR", value: 131162, isUnsigned: true)
!505 = !DIEnumerator(name: "_NL_WPM_STR", value: 131163, isUnsigned: true)
!506 = !DIEnumerator(name: "_NL_WD_T_FMT", value: 131164, isUnsigned: true)
!507 = !DIEnumerator(name: "_NL_WD_FMT", value: 131165, isUnsigned: true)
!508 = !DIEnumerator(name: "_NL_WT_FMT", value: 131166, isUnsigned: true)
!509 = !DIEnumerator(name: "_NL_WT_FMT_AMPM", value: 131167, isUnsigned: true)
!510 = !DIEnumerator(name: "_NL_WERA_YEAR", value: 131168, isUnsigned: true)
!511 = !DIEnumerator(name: "_NL_WERA_D_FMT", value: 131169, isUnsigned: true)
!512 = !DIEnumerator(name: "_NL_WALT_DIGITS", value: 131170, isUnsigned: true)
!513 = !DIEnumerator(name: "_NL_WERA_D_T_FMT", value: 131171, isUnsigned: true)
!514 = !DIEnumerator(name: "_NL_WERA_T_FMT", value: 131172, isUnsigned: true)
!515 = !DIEnumerator(name: "_NL_TIME_WEEK_NDAYS", value: 131173, isUnsigned: true)
!516 = !DIEnumerator(name: "_NL_TIME_WEEK_1STDAY", value: 131174, isUnsigned: true)
!517 = !DIEnumerator(name: "_NL_TIME_WEEK_1STWEEK", value: 131175, isUnsigned: true)
!518 = !DIEnumerator(name: "_NL_TIME_FIRST_WEEKDAY", value: 131176, isUnsigned: true)
!519 = !DIEnumerator(name: "_NL_TIME_FIRST_WORKDAY", value: 131177, isUnsigned: true)
!520 = !DIEnumerator(name: "_NL_TIME_CAL_DIRECTION", value: 131178, isUnsigned: true)
!521 = !DIEnumerator(name: "_NL_TIME_TIMEZONE", value: 131179, isUnsigned: true)
!522 = !DIEnumerator(name: "_DATE_FMT", value: 131180, isUnsigned: true)
!523 = !DIEnumerator(name: "_NL_W_DATE_FMT", value: 131181, isUnsigned: true)
!524 = !DIEnumerator(name: "_NL_TIME_CODESET", value: 131182, isUnsigned: true)
!525 = !DIEnumerator(name: "__ALTMON_1", value: 131183, isUnsigned: true)
!526 = !DIEnumerator(name: "__ALTMON_2", value: 131184, isUnsigned: true)
!527 = !DIEnumerator(name: "__ALTMON_3", value: 131185, isUnsigned: true)
!528 = !DIEnumerator(name: "__ALTMON_4", value: 131186, isUnsigned: true)
!529 = !DIEnumerator(name: "__ALTMON_5", value: 131187, isUnsigned: true)
!530 = !DIEnumerator(name: "__ALTMON_6", value: 131188, isUnsigned: true)
!531 = !DIEnumerator(name: "__ALTMON_7", value: 131189, isUnsigned: true)
!532 = !DIEnumerator(name: "__ALTMON_8", value: 131190, isUnsigned: true)
!533 = !DIEnumerator(name: "__ALTMON_9", value: 131191, isUnsigned: true)
!534 = !DIEnumerator(name: "__ALTMON_10", value: 131192, isUnsigned: true)
!535 = !DIEnumerator(name: "__ALTMON_11", value: 131193, isUnsigned: true)
!536 = !DIEnumerator(name: "__ALTMON_12", value: 131194, isUnsigned: true)
!537 = !DIEnumerator(name: "_NL_WALTMON_1", value: 131195, isUnsigned: true)
!538 = !DIEnumerator(name: "_NL_WALTMON_2", value: 131196, isUnsigned: true)
!539 = !DIEnumerator(name: "_NL_WALTMON_3", value: 131197, isUnsigned: true)
!540 = !DIEnumerator(name: "_NL_WALTMON_4", value: 131198, isUnsigned: true)
!541 = !DIEnumerator(name: "_NL_WALTMON_5", value: 131199, isUnsigned: true)
!542 = !DIEnumerator(name: "_NL_WALTMON_6", value: 131200, isUnsigned: true)
!543 = !DIEnumerator(name: "_NL_WALTMON_7", value: 131201, isUnsigned: true)
!544 = !DIEnumerator(name: "_NL_WALTMON_8", value: 131202, isUnsigned: true)
!545 = !DIEnumerator(name: "_NL_WALTMON_9", value: 131203, isUnsigned: true)
!546 = !DIEnumerator(name: "_NL_WALTMON_10", value: 131204, isUnsigned: true)
!547 = !DIEnumerator(name: "_NL_WALTMON_11", value: 131205, isUnsigned: true)
!548 = !DIEnumerator(name: "_NL_WALTMON_12", value: 131206, isUnsigned: true)
!549 = !DIEnumerator(name: "_NL_ABALTMON_1", value: 131207, isUnsigned: true)
!550 = !DIEnumerator(name: "_NL_ABALTMON_2", value: 131208, isUnsigned: true)
!551 = !DIEnumerator(name: "_NL_ABALTMON_3", value: 131209, isUnsigned: true)
!552 = !DIEnumerator(name: "_NL_ABALTMON_4", value: 131210, isUnsigned: true)
!553 = !DIEnumerator(name: "_NL_ABALTMON_5", value: 131211, isUnsigned: true)
!554 = !DIEnumerator(name: "_NL_ABALTMON_6", value: 131212, isUnsigned: true)
!555 = !DIEnumerator(name: "_NL_ABALTMON_7", value: 131213, isUnsigned: true)
!556 = !DIEnumerator(name: "_NL_ABALTMON_8", value: 131214, isUnsigned: true)
!557 = !DIEnumerator(name: "_NL_ABALTMON_9", value: 131215, isUnsigned: true)
!558 = !DIEnumerator(name: "_NL_ABALTMON_10", value: 131216, isUnsigned: true)
!559 = !DIEnumerator(name: "_NL_ABALTMON_11", value: 131217, isUnsigned: true)
!560 = !DIEnumerator(name: "_NL_ABALTMON_12", value: 131218, isUnsigned: true)
!561 = !DIEnumerator(name: "_NL_WABALTMON_1", value: 131219, isUnsigned: true)
!562 = !DIEnumerator(name: "_NL_WABALTMON_2", value: 131220, isUnsigned: true)
!563 = !DIEnumerator(name: "_NL_WABALTMON_3", value: 131221, isUnsigned: true)
!564 = !DIEnumerator(name: "_NL_WABALTMON_4", value: 131222, isUnsigned: true)
!565 = !DIEnumerator(name: "_NL_WABALTMON_5", value: 131223, isUnsigned: true)
!566 = !DIEnumerator(name: "_NL_WABALTMON_6", value: 131224, isUnsigned: true)
!567 = !DIEnumerator(name: "_NL_WABALTMON_7", value: 131225, isUnsigned: true)
!568 = !DIEnumerator(name: "_NL_WABALTMON_8", value: 131226, isUnsigned: true)
!569 = !DIEnumerator(name: "_NL_WABALTMON_9", value: 131227, isUnsigned: true)
!570 = !DIEnumerator(name: "_NL_WABALTMON_10", value: 131228, isUnsigned: true)
!571 = !DIEnumerator(name: "_NL_WABALTMON_11", value: 131229, isUnsigned: true)
!572 = !DIEnumerator(name: "_NL_WABALTMON_12", value: 131230, isUnsigned: true)
!573 = !DIEnumerator(name: "_NL_NUM_LC_TIME", value: 131231, isUnsigned: true)
!574 = !DIEnumerator(name: "_NL_COLLATE_NRULES", value: 196608, isUnsigned: true)
!575 = !DIEnumerator(name: "_NL_COLLATE_RULESETS", value: 196609, isUnsigned: true)
!576 = !DIEnumerator(name: "_NL_COLLATE_TABLEMB", value: 196610, isUnsigned: true)
!577 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTMB", value: 196611, isUnsigned: true)
!578 = !DIEnumerator(name: "_NL_COLLATE_EXTRAMB", value: 196612, isUnsigned: true)
!579 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTMB", value: 196613, isUnsigned: true)
!580 = !DIEnumerator(name: "_NL_COLLATE_GAP1", value: 196614, isUnsigned: true)
!581 = !DIEnumerator(name: "_NL_COLLATE_GAP2", value: 196615, isUnsigned: true)
!582 = !DIEnumerator(name: "_NL_COLLATE_GAP3", value: 196616, isUnsigned: true)
!583 = !DIEnumerator(name: "_NL_COLLATE_TABLEWC", value: 196617, isUnsigned: true)
!584 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTWC", value: 196618, isUnsigned: true)
!585 = !DIEnumerator(name: "_NL_COLLATE_EXTRAWC", value: 196619, isUnsigned: true)
!586 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTWC", value: 196620, isUnsigned: true)
!587 = !DIEnumerator(name: "_NL_COLLATE_SYMB_HASH_SIZEMB", value: 196621, isUnsigned: true)
!588 = !DIEnumerator(name: "_NL_COLLATE_SYMB_TABLEMB", value: 196622, isUnsigned: true)
!589 = !DIEnumerator(name: "_NL_COLLATE_SYMB_EXTRAMB", value: 196623, isUnsigned: true)
!590 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQMB", value: 196624, isUnsigned: true)
!591 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQWC", value: 196625, isUnsigned: true)
!592 = !DIEnumerator(name: "_NL_COLLATE_CODESET", value: 196626, isUnsigned: true)
!593 = !DIEnumerator(name: "_NL_NUM_LC_COLLATE", value: 196627, isUnsigned: true)
!594 = !DIEnumerator(name: "_NL_CTYPE_CLASS", value: 0, isUnsigned: true)
!595 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER", value: 1, isUnsigned: true)
!596 = !DIEnumerator(name: "_NL_CTYPE_GAP1", value: 2, isUnsigned: true)
!597 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER", value: 3, isUnsigned: true)
!598 = !DIEnumerator(name: "_NL_CTYPE_GAP2", value: 4, isUnsigned: true)
!599 = !DIEnumerator(name: "_NL_CTYPE_CLASS32", value: 5, isUnsigned: true)
!600 = !DIEnumerator(name: "_NL_CTYPE_GAP3", value: 6, isUnsigned: true)
!601 = !DIEnumerator(name: "_NL_CTYPE_GAP4", value: 7, isUnsigned: true)
!602 = !DIEnumerator(name: "_NL_CTYPE_GAP5", value: 8, isUnsigned: true)
!603 = !DIEnumerator(name: "_NL_CTYPE_GAP6", value: 9, isUnsigned: true)
!604 = !DIEnumerator(name: "_NL_CTYPE_CLASS_NAMES", value: 10, isUnsigned: true)
!605 = !DIEnumerator(name: "_NL_CTYPE_MAP_NAMES", value: 11, isUnsigned: true)
!606 = !DIEnumerator(name: "_NL_CTYPE_WIDTH", value: 12, isUnsigned: true)
!607 = !DIEnumerator(name: "_NL_CTYPE_MB_CUR_MAX", value: 13, isUnsigned: true)
!608 = !DIEnumerator(name: "_NL_CTYPE_CODESET_NAME", value: 14, isUnsigned: true)
!609 = !DIEnumerator(name: "CODESET", value: 14, isUnsigned: true)
!610 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER32", value: 15, isUnsigned: true)
!611 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER32", value: 16, isUnsigned: true)
!612 = !DIEnumerator(name: "_NL_CTYPE_CLASS_OFFSET", value: 17, isUnsigned: true)
!613 = !DIEnumerator(name: "_NL_CTYPE_MAP_OFFSET", value: 18, isUnsigned: true)
!614 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_MB_LEN", value: 19, isUnsigned: true)
!615 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_MB", value: 20, isUnsigned: true)
!616 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_MB", value: 21, isUnsigned: true)
!617 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_MB", value: 22, isUnsigned: true)
!618 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_MB", value: 23, isUnsigned: true)
!619 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_MB", value: 24, isUnsigned: true)
!620 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_MB", value: 25, isUnsigned: true)
!621 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_MB", value: 26, isUnsigned: true)
!622 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_MB", value: 27, isUnsigned: true)
!623 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_MB", value: 28, isUnsigned: true)
!624 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_MB", value: 29, isUnsigned: true)
!625 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_WC_LEN", value: 30, isUnsigned: true)
!626 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_WC", value: 31, isUnsigned: true)
!627 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_WC", value: 32, isUnsigned: true)
!628 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_WC", value: 33, isUnsigned: true)
!629 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_WC", value: 34, isUnsigned: true)
!630 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_WC", value: 35, isUnsigned: true)
!631 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_WC", value: 36, isUnsigned: true)
!632 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_WC", value: 37, isUnsigned: true)
!633 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_WC", value: 38, isUnsigned: true)
!634 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_WC", value: 39, isUnsigned: true)
!635 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_WC", value: 40, isUnsigned: true)
!636 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_MB", value: 41, isUnsigned: true)
!637 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_MB", value: 42, isUnsigned: true)
!638 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_MB", value: 43, isUnsigned: true)
!639 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_MB", value: 44, isUnsigned: true)
!640 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_MB", value: 45, isUnsigned: true)
!641 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_MB", value: 46, isUnsigned: true)
!642 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_MB", value: 47, isUnsigned: true)
!643 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_MB", value: 48, isUnsigned: true)
!644 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_MB", value: 49, isUnsigned: true)
!645 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_MB", value: 50, isUnsigned: true)
!646 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_WC", value: 51, isUnsigned: true)
!647 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_WC", value: 52, isUnsigned: true)
!648 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_WC", value: 53, isUnsigned: true)
!649 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_WC", value: 54, isUnsigned: true)
!650 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_WC", value: 55, isUnsigned: true)
!651 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_WC", value: 56, isUnsigned: true)
!652 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_WC", value: 57, isUnsigned: true)
!653 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_WC", value: 58, isUnsigned: true)
!654 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_WC", value: 59, isUnsigned: true)
!655 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_WC", value: 60, isUnsigned: true)
!656 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TAB_SIZE", value: 61, isUnsigned: true)
!657 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_IDX", value: 62, isUnsigned: true)
!658 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_TBL", value: 63, isUnsigned: true)
!659 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_IDX", value: 64, isUnsigned: true)
!660 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_TBL", value: 65, isUnsigned: true)
!661 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING_LEN", value: 66, isUnsigned: true)
!662 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING", value: 67, isUnsigned: true)
!663 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE_LEN", value: 68, isUnsigned: true)
!664 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE", value: 69, isUnsigned: true)
!665 = !DIEnumerator(name: "_NL_CTYPE_MAP_TO_NONASCII", value: 70, isUnsigned: true)
!666 = !DIEnumerator(name: "_NL_CTYPE_NONASCII_CASE", value: 71, isUnsigned: true)
!667 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_1", value: 72, isUnsigned: true)
!668 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_2", value: 73, isUnsigned: true)
!669 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_3", value: 74, isUnsigned: true)
!670 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_4", value: 75, isUnsigned: true)
!671 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_5", value: 76, isUnsigned: true)
!672 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_6", value: 77, isUnsigned: true)
!673 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_7", value: 78, isUnsigned: true)
!674 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_8", value: 79, isUnsigned: true)
!675 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_9", value: 80, isUnsigned: true)
!676 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_10", value: 81, isUnsigned: true)
!677 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_11", value: 82, isUnsigned: true)
!678 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_12", value: 83, isUnsigned: true)
!679 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_13", value: 84, isUnsigned: true)
!680 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_14", value: 85, isUnsigned: true)
!681 = !DIEnumerator(name: "_NL_NUM_LC_CTYPE", value: 86, isUnsigned: true)
!682 = !DIEnumerator(name: "__INT_CURR_SYMBOL", value: 262144, isUnsigned: true)
!683 = !DIEnumerator(name: "__CURRENCY_SYMBOL", value: 262145, isUnsigned: true)
!684 = !DIEnumerator(name: "__MON_DECIMAL_POINT", value: 262146, isUnsigned: true)
!685 = !DIEnumerator(name: "__MON_THOUSANDS_SEP", value: 262147, isUnsigned: true)
!686 = !DIEnumerator(name: "__MON_GROUPING", value: 262148, isUnsigned: true)
!687 = !DIEnumerator(name: "__POSITIVE_SIGN", value: 262149, isUnsigned: true)
!688 = !DIEnumerator(name: "__NEGATIVE_SIGN", value: 262150, isUnsigned: true)
!689 = !DIEnumerator(name: "__INT_FRAC_DIGITS", value: 262151, isUnsigned: true)
!690 = !DIEnumerator(name: "__FRAC_DIGITS", value: 262152, isUnsigned: true)
!691 = !DIEnumerator(name: "__P_CS_PRECEDES", value: 262153, isUnsigned: true)
!692 = !DIEnumerator(name: "__P_SEP_BY_SPACE", value: 262154, isUnsigned: true)
!693 = !DIEnumerator(name: "__N_CS_PRECEDES", value: 262155, isUnsigned: true)
!694 = !DIEnumerator(name: "__N_SEP_BY_SPACE", value: 262156, isUnsigned: true)
!695 = !DIEnumerator(name: "__P_SIGN_POSN", value: 262157, isUnsigned: true)
!696 = !DIEnumerator(name: "__N_SIGN_POSN", value: 262158, isUnsigned: true)
!697 = !DIEnumerator(name: "_NL_MONETARY_CRNCYSTR", value: 262159, isUnsigned: true)
!698 = !DIEnumerator(name: "__INT_P_CS_PRECEDES", value: 262160, isUnsigned: true)
!699 = !DIEnumerator(name: "__INT_P_SEP_BY_SPACE", value: 262161, isUnsigned: true)
!700 = !DIEnumerator(name: "__INT_N_CS_PRECEDES", value: 262162, isUnsigned: true)
!701 = !DIEnumerator(name: "__INT_N_SEP_BY_SPACE", value: 262163, isUnsigned: true)
!702 = !DIEnumerator(name: "__INT_P_SIGN_POSN", value: 262164, isUnsigned: true)
!703 = !DIEnumerator(name: "__INT_N_SIGN_POSN", value: 262165, isUnsigned: true)
!704 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_CURR_SYMBOL", value: 262166, isUnsigned: true)
!705 = !DIEnumerator(name: "_NL_MONETARY_DUO_CURRENCY_SYMBOL", value: 262167, isUnsigned: true)
!706 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_FRAC_DIGITS", value: 262168, isUnsigned: true)
!707 = !DIEnumerator(name: "_NL_MONETARY_DUO_FRAC_DIGITS", value: 262169, isUnsigned: true)
!708 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_CS_PRECEDES", value: 262170, isUnsigned: true)
!709 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SEP_BY_SPACE", value: 262171, isUnsigned: true)
!710 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_CS_PRECEDES", value: 262172, isUnsigned: true)
!711 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SEP_BY_SPACE", value: 262173, isUnsigned: true)
!712 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_CS_PRECEDES", value: 262174, isUnsigned: true)
!713 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SEP_BY_SPACE", value: 262175, isUnsigned: true)
!714 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_CS_PRECEDES", value: 262176, isUnsigned: true)
!715 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SEP_BY_SPACE", value: 262177, isUnsigned: true)
!716 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SIGN_POSN", value: 262178, isUnsigned: true)
!717 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SIGN_POSN", value: 262179, isUnsigned: true)
!718 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SIGN_POSN", value: 262180, isUnsigned: true)
!719 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SIGN_POSN", value: 262181, isUnsigned: true)
!720 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_FROM", value: 262182, isUnsigned: true)
!721 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_TO", value: 262183, isUnsigned: true)
!722 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_FROM", value: 262184, isUnsigned: true)
!723 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_TO", value: 262185, isUnsigned: true)
!724 = !DIEnumerator(name: "_NL_MONETARY_CONVERSION_RATE", value: 262186, isUnsigned: true)
!725 = !DIEnumerator(name: "_NL_MONETARY_DECIMAL_POINT_WC", value: 262187, isUnsigned: true)
!726 = !DIEnumerator(name: "_NL_MONETARY_THOUSANDS_SEP_WC", value: 262188, isUnsigned: true)
!727 = !DIEnumerator(name: "_NL_MONETARY_CODESET", value: 262189, isUnsigned: true)
!728 = !DIEnumerator(name: "_NL_NUM_LC_MONETARY", value: 262190, isUnsigned: true)
!729 = !DIEnumerator(name: "__DECIMAL_POINT", value: 65536, isUnsigned: true)
!730 = !DIEnumerator(name: "RADIXCHAR", value: 65536, isUnsigned: true)
!731 = !DIEnumerator(name: "__THOUSANDS_SEP", value: 65537, isUnsigned: true)
!732 = !DIEnumerator(name: "THOUSEP", value: 65537, isUnsigned: true)
!733 = !DIEnumerator(name: "__GROUPING", value: 65538, isUnsigned: true)
!734 = !DIEnumerator(name: "_NL_NUMERIC_DECIMAL_POINT_WC", value: 65539, isUnsigned: true)
!735 = !DIEnumerator(name: "_NL_NUMERIC_THOUSANDS_SEP_WC", value: 65540, isUnsigned: true)
!736 = !DIEnumerator(name: "_NL_NUMERIC_CODESET", value: 65541, isUnsigned: true)
!737 = !DIEnumerator(name: "_NL_NUM_LC_NUMERIC", value: 65542, isUnsigned: true)
!738 = !DIEnumerator(name: "__YESEXPR", value: 327680, isUnsigned: true)
!739 = !DIEnumerator(name: "__NOEXPR", value: 327681, isUnsigned: true)
!740 = !DIEnumerator(name: "__YESSTR", value: 327682, isUnsigned: true)
!741 = !DIEnumerator(name: "__NOSTR", value: 327683, isUnsigned: true)
!742 = !DIEnumerator(name: "_NL_MESSAGES_CODESET", value: 327684, isUnsigned: true)
!743 = !DIEnumerator(name: "_NL_NUM_LC_MESSAGES", value: 327685, isUnsigned: true)
!744 = !DIEnumerator(name: "_NL_PAPER_HEIGHT", value: 458752, isUnsigned: true)
!745 = !DIEnumerator(name: "_NL_PAPER_WIDTH", value: 458753, isUnsigned: true)
!746 = !DIEnumerator(name: "_NL_PAPER_CODESET", value: 458754, isUnsigned: true)
!747 = !DIEnumerator(name: "_NL_NUM_LC_PAPER", value: 458755, isUnsigned: true)
!748 = !DIEnumerator(name: "_NL_NAME_NAME_FMT", value: 524288, isUnsigned: true)
!749 = !DIEnumerator(name: "_NL_NAME_NAME_GEN", value: 524289, isUnsigned: true)
!750 = !DIEnumerator(name: "_NL_NAME_NAME_MR", value: 524290, isUnsigned: true)
!751 = !DIEnumerator(name: "_NL_NAME_NAME_MRS", value: 524291, isUnsigned: true)
!752 = !DIEnumerator(name: "_NL_NAME_NAME_MISS", value: 524292, isUnsigned: true)
!753 = !DIEnumerator(name: "_NL_NAME_NAME_MS", value: 524293, isUnsigned: true)
!754 = !DIEnumerator(name: "_NL_NAME_CODESET", value: 524294, isUnsigned: true)
!755 = !DIEnumerator(name: "_NL_NUM_LC_NAME", value: 524295, isUnsigned: true)
!756 = !DIEnumerator(name: "_NL_ADDRESS_POSTAL_FMT", value: 589824, isUnsigned: true)
!757 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NAME", value: 589825, isUnsigned: true)
!758 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_POST", value: 589826, isUnsigned: true)
!759 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB2", value: 589827, isUnsigned: true)
!760 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB3", value: 589828, isUnsigned: true)
!761 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_CAR", value: 589829, isUnsigned: true)
!762 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NUM", value: 589830, isUnsigned: true)
!763 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_ISBN", value: 589831, isUnsigned: true)
!764 = !DIEnumerator(name: "_NL_ADDRESS_LANG_NAME", value: 589832, isUnsigned: true)
!765 = !DIEnumerator(name: "_NL_ADDRESS_LANG_AB", value: 589833, isUnsigned: true)
!766 = !DIEnumerator(name: "_NL_ADDRESS_LANG_TERM", value: 589834, isUnsigned: true)
!767 = !DIEnumerator(name: "_NL_ADDRESS_LANG_LIB", value: 589835, isUnsigned: true)
!768 = !DIEnumerator(name: "_NL_ADDRESS_CODESET", value: 589836, isUnsigned: true)
!769 = !DIEnumerator(name: "_NL_NUM_LC_ADDRESS", value: 589837, isUnsigned: true)
!770 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_INT_FMT", value: 655360, isUnsigned: true)
!771 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_DOM_FMT", value: 655361, isUnsigned: true)
!772 = !DIEnumerator(name: "_NL_TELEPHONE_INT_SELECT", value: 655362, isUnsigned: true)
!773 = !DIEnumerator(name: "_NL_TELEPHONE_INT_PREFIX", value: 655363, isUnsigned: true)
!774 = !DIEnumerator(name: "_NL_TELEPHONE_CODESET", value: 655364, isUnsigned: true)
!775 = !DIEnumerator(name: "_NL_NUM_LC_TELEPHONE", value: 655365, isUnsigned: true)
!776 = !DIEnumerator(name: "_NL_MEASUREMENT_MEASUREMENT", value: 720896, isUnsigned: true)
!777 = !DIEnumerator(name: "_NL_MEASUREMENT_CODESET", value: 720897, isUnsigned: true)
!778 = !DIEnumerator(name: "_NL_NUM_LC_MEASUREMENT", value: 720898, isUnsigned: true)
!779 = !DIEnumerator(name: "_NL_IDENTIFICATION_TITLE", value: 786432, isUnsigned: true)
!780 = !DIEnumerator(name: "_NL_IDENTIFICATION_SOURCE", value: 786433, isUnsigned: true)
!781 = !DIEnumerator(name: "_NL_IDENTIFICATION_ADDRESS", value: 786434, isUnsigned: true)
!782 = !DIEnumerator(name: "_NL_IDENTIFICATION_CONTACT", value: 786435, isUnsigned: true)
!783 = !DIEnumerator(name: "_NL_IDENTIFICATION_EMAIL", value: 786436, isUnsigned: true)
!784 = !DIEnumerator(name: "_NL_IDENTIFICATION_TEL", value: 786437, isUnsigned: true)
!785 = !DIEnumerator(name: "_NL_IDENTIFICATION_FAX", value: 786438, isUnsigned: true)
!786 = !DIEnumerator(name: "_NL_IDENTIFICATION_LANGUAGE", value: 786439, isUnsigned: true)
!787 = !DIEnumerator(name: "_NL_IDENTIFICATION_TERRITORY", value: 786440, isUnsigned: true)
!788 = !DIEnumerator(name: "_NL_IDENTIFICATION_AUDIENCE", value: 786441, isUnsigned: true)
!789 = !DIEnumerator(name: "_NL_IDENTIFICATION_APPLICATION", value: 786442, isUnsigned: true)
!790 = !DIEnumerator(name: "_NL_IDENTIFICATION_ABBREVIATION", value: 786443, isUnsigned: true)
!791 = !DIEnumerator(name: "_NL_IDENTIFICATION_REVISION", value: 786444, isUnsigned: true)
!792 = !DIEnumerator(name: "_NL_IDENTIFICATION_DATE", value: 786445, isUnsigned: true)
!793 = !DIEnumerator(name: "_NL_IDENTIFICATION_CATEGORY", value: 786446, isUnsigned: true)
!794 = !DIEnumerator(name: "_NL_IDENTIFICATION_CODESET", value: 786447, isUnsigned: true)
!795 = !DIEnumerator(name: "_NL_NUM_LC_IDENTIFICATION", value: 786448, isUnsigned: true)
!796 = !DIEnumerator(name: "_NL_NUM", value: 786449, isUnsigned: true)
!797 = !{!"clang version 7.0.0 (tags/RELEASE_700/final)"}
!798 = !{i32 2, !"Dwarf Version", i32 4}
!799 = !{i32 2, !"Debug Info Version", i32 3}
!800 = !{i32 1, !"wchar_size", i32 4}
!801 = !{i32 7, !"PIC Level", i32 2}
!802 = !{i32 7, !"PIE Level", i32 2}
!803 = distinct !DISubprogram(name: "usage", scope: !3, file: !3, line: 223, type: !804, isLocal: false, isDefinition: true, scopeLine: 224, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !2, retainedNodes: !806)
!804 = !DISubroutineType(types: !805)
!805 = !{null, !64}
!806 = !{!807}
!807 = !DILocalVariable(name: "status", arg: 1, scope: !803, file: !3, line: 223, type: !64)
!808 = !DILocalVariable(name: "infomap", scope: !809, file: !36, line: 632, type: !823)
!809 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !36, file: !36, line: 630, type: !810, isLocal: true, isDefinition: true, scopeLine: 631, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !812)
!810 = !DISubroutineType(types: !811)
!811 = !{null, !93}
!812 = !{!813, !808, !814, !815, !822}
!813 = !DILocalVariable(name: "program", arg: 1, scope: !809, file: !36, line: 630, type: !93)
!814 = !DILocalVariable(name: "node", scope: !809, file: !36, line: 642, type: !93)
!815 = !DILocalVariable(name: "map_prog", scope: !809, file: !36, line: 643, type: !816)
!816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !817, size: 64)
!817 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !818)
!818 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !809, file: !36, line: 632, size: 128, elements: !819)
!819 = !{!820, !821}
!820 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !818, file: !36, line: 632, baseType: !93, size: 64)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !818, file: !36, line: 632, baseType: !93, size: 64, offset: 64)
!822 = !DILocalVariable(name: "lc_messages", scope: !809, file: !36, line: 655, type: !93)
!823 = !DICompositeType(tag: DW_TAG_array_type, baseType: !817, size: 896, elements: !824)
!824 = !{!825}
!825 = !DISubrange(count: 7)
!826 = !DILocation(line: 632, column: 67, scope: !809, inlinedAt: !827)
!827 = distinct !DILocation(line: 292, column: 7, scope: !828)
!828 = distinct !DILexicalBlock(scope: !829, file: !3, line: 228, column: 5)
!829 = distinct !DILexicalBlock(scope: !803, file: !3, line: 225, column: 7)
!830 = !DILocation(line: 223, column: 12, scope: !803)
!831 = !DILocation(line: 225, column: 14, scope: !829)
!832 = !DILocation(line: 225, column: 7, scope: !803)
!833 = !DILocation(line: 226, column: 5, scope: !834)
!834 = distinct !DILexicalBlock(scope: !829, file: !3, line: 226, column: 5)
!835 = !{!836, !836, i64 0}
!836 = !{!"any pointer", !837, i64 0}
!837 = !{!"omnipotent char", !838, i64 0}
!838 = !{!"Simple C/C++ TBAA"}
!839 = !DILocation(line: 229, column: 7, scope: !828)
!840 = !DILocation(line: 580, column: 3, scope: !841, inlinedAt: !844)
!841 = distinct !DISubprogram(name: "emit_stdin_note", scope: !36, file: !36, line: 578, type: !842, isLocal: true, isDefinition: true, scopeLine: 579, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !223)
!842 = !DISubroutineType(types: !843)
!843 = !{null}
!844 = distinct !DILocation(line: 237, column: 7, scope: !828)
!845 = !DILocation(line: 244, column: 9, scope: !846)
!846 = distinct !DILexicalBlock(scope: !828, file: !3, line: 238, column: 11)
!847 = !DILocation(line: 249, column: 7, scope: !828)
!848 = !DILocation(line: 258, column: 7, scope: !828)
!849 = !DILocation(line: 266, column: 9, scope: !850)
!850 = distinct !DILexicalBlock(scope: !828, file: !3, line: 261, column: 11)
!851 = !DILocation(line: 269, column: 7, scope: !828)
!852 = !DILocation(line: 273, column: 7, scope: !828)
!853 = !DILocation(line: 283, column: 7, scope: !828)
!854 = !DILocation(line: 284, column: 7, scope: !828)
!855 = !DILocation(line: 285, column: 7, scope: !828)
!856 = !DILocation(line: 632, column: 3, scope: !809, inlinedAt: !827)
!857 = !DILocation(line: 643, column: 36, scope: !809, inlinedAt: !827)
!858 = !DILocation(line: 643, column: 25, scope: !809, inlinedAt: !827)
!859 = !DILocation(line: 645, column: 33, scope: !809, inlinedAt: !827)
!860 = !DILocation(line: 645, column: 3, scope: !809, inlinedAt: !827)
!861 = !DILocation(line: 646, column: 13, scope: !809, inlinedAt: !827)
!862 = !DILocation(line: 645, column: 20, scope: !809, inlinedAt: !827)
!863 = !{!864, !836, i64 0}
!864 = !{!"infomap", !836, i64 0, !836, i64 8}
!865 = !DILocation(line: 645, column: 10, scope: !809, inlinedAt: !827)
!866 = !DILocation(line: 645, column: 28, scope: !809, inlinedAt: !827)
!867 = distinct !{!867, !868, !869}
!868 = !DILocation(line: 645, column: 3, scope: !809)
!869 = !DILocation(line: 646, column: 13, scope: !809)
!870 = !DILocation(line: 648, column: 17, scope: !871, inlinedAt: !827)
!871 = distinct !DILexicalBlock(scope: !809, file: !36, line: 648, column: 7)
!872 = !{!864, !836, i64 8}
!873 = !DILocation(line: 648, column: 7, scope: !871, inlinedAt: !827)
!874 = !DILocation(line: 648, column: 7, scope: !809, inlinedAt: !827)
!875 = !DILocation(line: 642, column: 15, scope: !809, inlinedAt: !827)
!876 = !DILocation(line: 651, column: 3, scope: !809, inlinedAt: !827)
!877 = !DILocation(line: 655, column: 29, scope: !809, inlinedAt: !827)
!878 = !DILocation(line: 655, column: 15, scope: !809, inlinedAt: !827)
!879 = !DILocation(line: 656, column: 7, scope: !880, inlinedAt: !827)
!880 = distinct !DILexicalBlock(scope: !809, file: !36, line: 656, column: 7)
!881 = !DILocation(line: 656, column: 19, scope: !880, inlinedAt: !827)
!882 = !DILocation(line: 656, column: 22, scope: !880, inlinedAt: !827)
!883 = !DILocation(line: 656, column: 7, scope: !809, inlinedAt: !827)
!884 = !DILocation(line: 662, column: 7, scope: !885, inlinedAt: !827)
!885 = distinct !DILexicalBlock(scope: !880, file: !36, line: 657, column: 5)
!886 = !DILocation(line: 664, column: 5, scope: !885, inlinedAt: !827)
!887 = !DILocation(line: 665, column: 3, scope: !809, inlinedAt: !827)
!888 = !DILocation(line: 667, column: 3, scope: !809, inlinedAt: !827)
!889 = !DILocation(line: 669, column: 1, scope: !809, inlinedAt: !827)
!890 = !DILocation(line: 295, column: 3, scope: !803)
!891 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 861, type: !892, isLocal: false, isDefinition: true, scopeLine: 862, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !895)
!892 = !DISubroutineType(types: !893)
!893 = !{!64, !64, !894}
!894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64)
!895 = !{!896, !897, !898, !899, !900, !901, !902, !903, !904, !905, !906, !907, !909, !912, !915, !916, !919}
!896 = !DILocalVariable(name: "argc", arg: 1, scope: !891, file: !3, line: 861, type: !64)
!897 = !DILocalVariable(name: "argv", arg: 2, scope: !891, file: !3, line: 861, type: !894)
!898 = !DILocalVariable(name: "bin_buffer_unaligned", scope: !891, file: !3, line: 863, type: !159)
!899 = !DILocalVariable(name: "bin_buffer", scope: !891, file: !3, line: 865, type: !65)
!900 = !DILocalVariable(name: "do_check", scope: !891, file: !3, line: 866, type: !71)
!901 = !DILocalVariable(name: "opt", scope: !891, file: !3, line: 867, type: !64)
!902 = !DILocalVariable(name: "ok", scope: !891, file: !3, line: 868, type: !71)
!903 = !DILocalVariable(name: "binary", scope: !891, file: !3, line: 869, type: !64)
!904 = !DILocalVariable(name: "prefix_tag", scope: !891, file: !3, line: 870, type: !71)
!905 = !DILocalVariable(name: "short_opts", scope: !891, file: !3, line: 889, type: !93)
!906 = !DILocalVariable(name: "operand_lim", scope: !891, file: !3, line: 1038, type: !894)
!907 = !DILocalVariable(name: "operandp", scope: !908, file: !3, line: 1042, type: !894)
!908 = distinct !DILexicalBlock(scope: !891, file: !3, line: 1042, column: 3)
!909 = !DILocalVariable(name: "file", scope: !910, file: !3, line: 1044, type: !59)
!910 = distinct !DILexicalBlock(scope: !911, file: !3, line: 1043, column: 5)
!911 = distinct !DILexicalBlock(scope: !908, file: !3, line: 1042, column: 3)
!912 = !DILocalVariable(name: "file_is_binary", scope: !913, file: !3, line: 1050, type: !64)
!913 = distinct !DILexicalBlock(scope: !914, file: !3, line: 1049, column: 9)
!914 = distinct !DILexicalBlock(scope: !910, file: !3, line: 1046, column: 11)
!915 = !DILocalVariable(name: "missing", scope: !913, file: !3, line: 1051, type: !71)
!916 = !DILocalVariable(name: "needs_escape", scope: !917, file: !3, line: 1064, type: !71)
!917 = distinct !DILexicalBlock(scope: !918, file: !3, line: 1056, column: 13)
!918 = distinct !DILexicalBlock(scope: !913, file: !3, line: 1053, column: 15)
!919 = !DILocalVariable(name: "i", scope: !920, file: !3, line: 1089, type: !62)
!920 = distinct !DILexicalBlock(scope: !917, file: !3, line: 1089, column: 15)
!921 = !DILocation(line: 661, column: 17, scope: !90, inlinedAt: !922)
!922 = distinct !DILocation(line: 1047, column: 15, scope: !914)
!923 = !DILocation(line: 861, column: 11, scope: !891)
!924 = !DILocation(line: 861, column: 24, scope: !891)
!925 = !DILocation(line: 863, column: 3, scope: !891)
!926 = !DILocation(line: 863, column: 17, scope: !891)
!927 = !DILocalVariable(name: "ptr", arg: 1, scope: !928, file: !36, line: 498, type: !931)
!928 = distinct !DISubprogram(name: "ptr_align", scope: !36, file: !36, line: 498, type: !929, isLocal: true, isDefinition: true, scopeLine: 499, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !933)
!929 = !DISubroutineType(types: !930)
!930 = !{!61, !931, !62}
!931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !932, size: 64)
!932 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!933 = !{!927, !934, !935, !936}
!934 = !DILocalVariable(name: "alignment", arg: 2, scope: !928, file: !36, line: 498, type: !62)
!935 = !DILocalVariable(name: "p0", scope: !928, file: !36, line: 500, type: !93)
!936 = !DILocalVariable(name: "p1", scope: !928, file: !36, line: 501, type: !93)
!937 = !DILocation(line: 498, column: 24, scope: !928, inlinedAt: !938)
!938 = distinct !DILocation(line: 865, column: 31, scope: !891)
!939 = !DILocation(line: 498, column: 36, scope: !928, inlinedAt: !938)
!940 = !DILocation(line: 500, column: 15, scope: !928, inlinedAt: !938)
!941 = !DILocation(line: 501, column: 35, scope: !928, inlinedAt: !938)
!942 = !DILocation(line: 501, column: 15, scope: !928, inlinedAt: !938)
!943 = !DILocation(line: 502, column: 25, scope: !928, inlinedAt: !938)
!944 = !DILocation(line: 502, column: 37, scope: !928, inlinedAt: !938)
!945 = !DILocation(line: 502, column: 23, scope: !928, inlinedAt: !938)
!946 = !DILocation(line: 865, column: 18, scope: !891)
!947 = !DILocation(line: 866, column: 8, scope: !891)
!948 = !DILocation(line: 868, column: 8, scope: !891)
!949 = !DILocation(line: 869, column: 7, scope: !891)
!950 = !DILocation(line: 870, column: 8, scope: !891)
!951 = !DILocation(line: 874, column: 21, scope: !891)
!952 = !DILocation(line: 874, column: 3, scope: !891)
!953 = !DILocation(line: 875, column: 3, scope: !891)
!954 = !DILocation(line: 876, column: 3, scope: !891)
!955 = !DILocation(line: 877, column: 3, scope: !891)
!956 = !DILocation(line: 879, column: 3, scope: !891)
!957 = !DILocation(line: 883, column: 12, scope: !891)
!958 = !DILocation(line: 883, column: 3, scope: !891)
!959 = !DILocation(line: 892, column: 3, scope: !891)
!960 = !DILocation(line: 892, column: 17, scope: !891)
!961 = !DILocation(line: 867, column: 7, scope: !891)
!962 = distinct !{!962, !959, !963}
!963 = !DILocation(line: 948, column: 7, scope: !891)
!964 = !DILocation(line: 912, column: 9, scope: !965)
!965 = distinct !DILexicalBlock(scope: !891, file: !3, line: 894, column: 7)
!966 = !DILocation(line: 917, column: 9, scope: !965)
!967 = !DILocation(line: 920, column: 9, scope: !965)
!968 = !DILocation(line: 925, column: 9, scope: !965)
!969 = !DILocation(line: 928, column: 9, scope: !965)
!970 = !DILocation(line: 933, column: 9, scope: !965)
!971 = !DILocation(line: 936, column: 9, scope: !965)
!972 = !DILocation(line: 940, column: 9, scope: !965)
!973 = !DILocation(line: 943, column: 9, scope: !965)
!974 = !DILocation(line: 944, column: 7, scope: !965)
!975 = !DILocation(line: 945, column: 7, scope: !965)
!976 = !DILocation(line: 947, column: 9, scope: !965)
!977 = !DILocation(line: 967, column: 7, scope: !978)
!978 = distinct !DILexicalBlock(scope: !891, file: !3, line: 967, column: 7)
!979 = !DILocation(line: 967, column: 18, scope: !978)
!980 = !DILocation(line: 967, column: 22, scope: !978)
!981 = !DILocation(line: 974, column: 19, scope: !982)
!982 = distinct !DILexicalBlock(scope: !978, file: !3, line: 968, column: 4)
!983 = !DILocation(line: 974, column: 6, scope: !982)
!984 = !DILocation(line: 975, column: 6, scope: !982)
!985 = !DILocation(line: 978, column: 21, scope: !986)
!986 = distinct !DILexicalBlock(scope: !891, file: !3, line: 978, column: 7)
!987 = !DILocation(line: 978, column: 24, scope: !986)
!988 = !DILocation(line: 980, column: 20, scope: !989)
!989 = distinct !DILexicalBlock(scope: !986, file: !3, line: 979, column: 5)
!990 = !DILocation(line: 980, column: 7, scope: !989)
!991 = !DILocation(line: 982, column: 7, scope: !989)
!992 = !DILocation(line: 985, column: 18, scope: !993)
!993 = distinct !DILexicalBlock(scope: !891, file: !3, line: 985, column: 7)
!994 = !DILocation(line: 987, column: 20, scope: !995)
!995 = distinct !DILexicalBlock(scope: !993, file: !3, line: 986, column: 5)
!996 = !DILocation(line: 987, column: 7, scope: !995)
!997 = !DILocation(line: 989, column: 7, scope: !995)
!998 = !DILocation(line: 992, column: 9, scope: !999)
!999 = distinct !DILexicalBlock(scope: !891, file: !3, line: 992, column: 7)
!1000 = !DILocation(line: 992, column: 19, scope: !999)
!1001 = !DILocation(line: 994, column: 20, scope: !1002)
!1002 = distinct !DILexicalBlock(scope: !999, file: !3, line: 993, column: 5)
!1003 = !DILocation(line: 994, column: 7, scope: !1002)
!1004 = !DILocation(line: 996, column: 7, scope: !1002)
!1005 = !DILocation(line: 999, column: 22, scope: !1006)
!1006 = distinct !DILexicalBlock(scope: !891, file: !3, line: 999, column: 7)
!1007 = !DILocation(line: 1002, column: 14, scope: !1008)
!1008 = distinct !DILexicalBlock(scope: !1006, file: !3, line: 1000, column: 5)
!1009 = !DILocation(line: 1001, column: 7, scope: !1008)
!1010 = !DILocation(line: 1004, column: 7, scope: !1008)
!1011 = !DILocation(line: 1007, column: 19, scope: !1012)
!1012 = distinct !DILexicalBlock(scope: !891, file: !3, line: 1007, column: 7)
!1013 = !DILocation(line: 1010, column: 8, scope: !1014)
!1014 = distinct !DILexicalBlock(scope: !1012, file: !3, line: 1008, column: 5)
!1015 = !DILocation(line: 1009, column: 7, scope: !1014)
!1016 = !DILocation(line: 1011, column: 7, scope: !1014)
!1017 = !DILocation(line: 1014, column: 12, scope: !1018)
!1018 = distinct !DILexicalBlock(scope: !891, file: !3, line: 1014, column: 7)
!1019 = !DILocation(line: 1017, column: 8, scope: !1020)
!1020 = distinct !DILexicalBlock(scope: !1018, file: !3, line: 1015, column: 5)
!1021 = !DILocation(line: 1016, column: 7, scope: !1020)
!1022 = !DILocation(line: 1018, column: 7, scope: !1020)
!1023 = !DILocation(line: 1021, column: 13, scope: !1024)
!1024 = distinct !DILexicalBlock(scope: !891, file: !3, line: 1021, column: 7)
!1025 = !DILocation(line: 1024, column: 8, scope: !1026)
!1026 = distinct !DILexicalBlock(scope: !1024, file: !3, line: 1022, column: 5)
!1027 = !DILocation(line: 1023, column: 7, scope: !1026)
!1028 = !DILocation(line: 1025, column: 7, scope: !1026)
!1029 = !DILocation(line: 1028, column: 17, scope: !1030)
!1030 = distinct !DILexicalBlock(scope: !891, file: !3, line: 1028, column: 7)
!1031 = !DILocation(line: 1028, column: 16, scope: !1030)
!1032 = !DILocation(line: 1028, column: 14, scope: !1030)
!1033 = !DILocation(line: 1028, column: 7, scope: !891)
!1034 = !DILocation(line: 1031, column: 9, scope: !1035)
!1035 = distinct !DILexicalBlock(scope: !1030, file: !3, line: 1029, column: 4)
!1036 = !DILocation(line: 1030, column: 6, scope: !1035)
!1037 = !DILocation(line: 1032, column: 6, scope: !1035)
!1038 = !DILocation(line: 1035, column: 7, scope: !891)
!1039 = !DILocation(line: 1038, column: 29, scope: !891)
!1040 = !DILocation(line: 1038, column: 10, scope: !891)
!1041 = !DILocation(line: 1039, column: 7, scope: !1042)
!1042 = distinct !DILexicalBlock(scope: !891, file: !3, line: 1039, column: 7)
!1043 = !{!1044, !1044, i64 0}
!1044 = !{!"int", !837, i64 0}
!1045 = !DILocation(line: 1039, column: 14, scope: !1042)
!1046 = !DILocation(line: 1039, column: 7, scope: !891)
!1047 = !DILocation(line: 1040, column: 17, scope: !1042)
!1048 = !DILocation(line: 1040, column: 20, scope: !1042)
!1049 = !DILocation(line: 1040, column: 5, scope: !1042)
!1050 = !DILocation(line: 0, scope: !891)
!1051 = !DILocation(line: 1042, column: 31, scope: !908)
!1052 = !DILocation(line: 1042, column: 15, scope: !908)
!1053 = !DILocation(line: 1042, column: 50, scope: !911)
!1054 = !DILocation(line: 1042, column: 3, scope: !908)
!1055 = !DILocation(line: 0, scope: !914)
!1056 = !DILocation(line: 1106, column: 23, scope: !1057)
!1057 = distinct !DILexicalBlock(scope: !891, file: !3, line: 1106, column: 7)
!1058 = !DILocation(line: 1044, column: 20, scope: !910)
!1059 = !DILocation(line: 1044, column: 13, scope: !910)
!1060 = !DILocation(line: 1046, column: 11, scope: !910)
!1061 = !DILocation(line: 652, column: 27, scope: !90, inlinedAt: !922)
!1062 = !DILocation(line: 655, column: 13, scope: !90, inlinedAt: !922)
!1063 = !DILocation(line: 656, column: 13, scope: !90, inlinedAt: !922)
!1064 = !DILocation(line: 657, column: 13, scope: !90, inlinedAt: !922)
!1065 = !DILocation(line: 658, column: 13, scope: !90, inlinedAt: !922)
!1066 = !DILocation(line: 659, column: 8, scope: !90, inlinedAt: !922)
!1067 = !DILocation(line: 660, column: 8, scope: !90, inlinedAt: !922)
!1068 = !DILocation(line: 661, column: 3, scope: !90, inlinedAt: !922)
!1069 = !DILocation(line: 498, column: 24, scope: !928, inlinedAt: !1070)
!1070 = distinct !DILocation(line: 663, column: 31, scope: !90, inlinedAt: !922)
!1071 = !DILocation(line: 498, column: 36, scope: !928, inlinedAt: !1070)
!1072 = !DILocation(line: 500, column: 15, scope: !928, inlinedAt: !1070)
!1073 = !DILocation(line: 501, column: 15, scope: !928, inlinedAt: !1070)
!1074 = !DILocation(line: 663, column: 18, scope: !90, inlinedAt: !922)
!1075 = !DILocation(line: 665, column: 3, scope: !90, inlinedAt: !922)
!1076 = !DILocation(line: 666, column: 3, scope: !90, inlinedAt: !922)
!1077 = !DILocation(line: 667, column: 19, scope: !90, inlinedAt: !922)
!1078 = !DILocation(line: 669, column: 7, scope: !90, inlinedAt: !922)
!1079 = !DILocation(line: 672, column: 24, scope: !1080, inlinedAt: !922)
!1080 = distinct !DILexicalBlock(scope: !1081, file: !3, line: 670, column: 5)
!1081 = distinct !DILexicalBlock(scope: !90, file: !3, line: 669, column: 7)
!1082 = !DILocation(line: 673, column: 26, scope: !1080, inlinedAt: !922)
!1083 = !DILocation(line: 654, column: 9, scope: !90, inlinedAt: !922)
!1084 = !DILocation(line: 674, column: 5, scope: !1080, inlinedAt: !922)
!1085 = !DILocation(line: 677, column: 26, scope: !1086, inlinedAt: !922)
!1086 = distinct !DILexicalBlock(scope: !1081, file: !3, line: 676, column: 5)
!1087 = !DILocation(line: 678, column: 28, scope: !1088, inlinedAt: !922)
!1088 = distinct !DILexicalBlock(scope: !1086, file: !3, line: 678, column: 11)
!1089 = !DILocation(line: 678, column: 11, scope: !1086, inlinedAt: !922)
!1090 = !DILocation(line: 680, column: 21, scope: !1091, inlinedAt: !922)
!1091 = distinct !DILexicalBlock(scope: !1088, file: !3, line: 679, column: 9)
!1092 = !DILocation(line: 680, column: 34, scope: !1091, inlinedAt: !922)
!1093 = !DILocation(line: 680, column: 11, scope: !1091, inlinedAt: !922)
!1094 = !DILocation(line: 681, column: 11, scope: !1091, inlinedAt: !922)
!1095 = !DILocation(line: 0, scope: !1086, inlinedAt: !922)
!1096 = !DILocation(line: 664, column: 13, scope: !90, inlinedAt: !922)
!1097 = !DILocation(line: 665, column: 9, scope: !90, inlinedAt: !922)
!1098 = !DILocation(line: 686, column: 8, scope: !90, inlinedAt: !922)
!1099 = !DILocation(line: 666, column: 10, scope: !90, inlinedAt: !922)
!1100 = !DILocation(line: 687, column: 24, scope: !90, inlinedAt: !922)
!1101 = !{!1102, !1102, i64 0}
!1102 = !{!"long", !837, i64 0}
!1103 = !DILocation(line: 688, column: 3, scope: !90, inlinedAt: !922)
!1104 = !DILocation(line: 0, scope: !168, inlinedAt: !922)
!1105 = !DILocation(line: 695, column: 7, scope: !168, inlinedAt: !922)
!1106 = !DILocation(line: 696, column: 23, scope: !1107, inlinedAt: !922)
!1107 = distinct !DILexicalBlock(scope: !168, file: !3, line: 696, column: 11)
!1108 = !DILocation(line: 696, column: 11, scope: !168, inlinedAt: !922)
!1109 = !DILocation(line: 697, column: 9, scope: !1107, inlinedAt: !922)
!1110 = !DILocalVariable(name: "__lineptr", arg: 1, scope: !1111, file: !1112, line: 118, type: !894)
!1111 = distinct !DISubprogram(name: "getline", scope: !1112, file: !1112, line: 118, type: !1113, isLocal: false, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1115)
!1112 = !DIFile(filename: "/usr/include/bits/stdio.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!1113 = !DISubroutineType(types: !1114)
!1114 = !{!174, !894, !382, !98}
!1115 = !{!1110, !1116, !1117}
!1116 = !DILocalVariable(name: "__n", arg: 2, scope: !1111, file: !1112, line: 118, type: !382)
!1117 = !DILocalVariable(name: "__stream", arg: 3, scope: !1111, file: !1112, line: 118, type: !98)
!1118 = !DILocation(line: 118, column: 17, scope: !1111, inlinedAt: !1119)
!1119 = distinct !DILocation(line: 700, column: 21, scope: !168, inlinedAt: !922)
!1120 = !DILocation(line: 118, column: 36, scope: !1111, inlinedAt: !1119)
!1121 = !DILocation(line: 118, column: 47, scope: !1111, inlinedAt: !1119)
!1122 = !DILocation(line: 120, column: 10, scope: !1111, inlinedAt: !1119)
!1123 = !DILocation(line: 693, column: 15, scope: !168, inlinedAt: !922)
!1124 = !DILocation(line: 701, column: 23, scope: !1125, inlinedAt: !922)
!1125 = distinct !DILexicalBlock(scope: !168, file: !3, line: 701, column: 11)
!1126 = !DILocation(line: 701, column: 11, scope: !168, inlinedAt: !922)
!1127 = !DILocation(line: 705, column: 11, scope: !1128, inlinedAt: !922)
!1128 = distinct !DILexicalBlock(scope: !168, file: !3, line: 705, column: 11)
!1129 = !{!837, !837, i64 0}
!1130 = !DILocation(line: 705, column: 19, scope: !1128, inlinedAt: !922)
!1131 = !DILocation(line: 705, column: 11, scope: !168, inlinedAt: !922)
!1132 = !DILocation(line: 709, column: 28, scope: !1133, inlinedAt: !922)
!1133 = distinct !DILexicalBlock(scope: !168, file: !3, line: 709, column: 11)
!1134 = !DILocation(line: 709, column: 11, scope: !1133, inlinedAt: !922)
!1135 = !DILocation(line: 709, column: 33, scope: !1133, inlinedAt: !922)
!1136 = !DILocation(line: 709, column: 11, scope: !168, inlinedAt: !922)
!1137 = !DILocation(line: 710, column: 29, scope: !1133, inlinedAt: !922)
!1138 = !DILocation(line: 712, column: 23, scope: !177, inlinedAt: !922)
!1139 = !DILocation(line: 710, column: 9, scope: !1133, inlinedAt: !922)
!1140 = !DILocalVariable(name: "s", arg: 1, scope: !1141, file: !3, line: 416, type: !59)
!1141 = distinct !DISubprogram(name: "split_3", scope: !3, file: !3, line: 416, type: !1142, isLocal: true, isDefinition: true, scopeLine: 418, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1145)
!1142 = !DISubroutineType(types: !1143)
!1143 = !{!71, !59, !62, !1144, !206, !894}
!1144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !65, size: 64)
!1145 = !{!1140, !1146, !1147, !1148, !1149, !1150, !1151, !1152}
!1146 = !DILocalVariable(name: "s_len", arg: 2, scope: !1141, file: !3, line: 416, type: !62)
!1147 = !DILocalVariable(name: "hex_digest", arg: 3, scope: !1141, file: !3, line: 417, type: !1144)
!1148 = !DILocalVariable(name: "binary", arg: 4, scope: !1141, file: !3, line: 417, type: !206)
!1149 = !DILocalVariable(name: "file_name", arg: 5, scope: !1141, file: !3, line: 417, type: !894)
!1150 = !DILocalVariable(name: "escaped_filename", scope: !1141, file: !3, line: 419, type: !71)
!1151 = !DILocalVariable(name: "algo_name_len", scope: !1141, file: !3, line: 420, type: !62)
!1152 = !DILocalVariable(name: "i", scope: !1141, file: !3, line: 422, type: !62)
!1153 = !DILocation(line: 416, column: 16, scope: !1141, inlinedAt: !1154)
!1154 = distinct !DILocation(line: 712, column: 14, scope: !177, inlinedAt: !922)
!1155 = !DILocation(line: 416, column: 26, scope: !1141, inlinedAt: !1154)
!1156 = !DILocation(line: 419, column: 8, scope: !1141, inlinedAt: !1154)
!1157 = !DILocation(line: 422, column: 10, scope: !1141, inlinedAt: !1154)
!1158 = !DILocation(line: 423, column: 3, scope: !1141, inlinedAt: !1154)
!1159 = !DILocation(line: 0, scope: !1141, inlinedAt: !1154)
!1160 = !DILocation(line: 423, column: 10, scope: !1141, inlinedAt: !1154)
!1161 = !DILocation(line: 424, column: 5, scope: !1141, inlinedAt: !1154)
!1162 = distinct !{!1162, !1163, !1164}
!1163 = !DILocation(line: 423, column: 3, scope: !1141)
!1164 = !DILocation(line: 424, column: 7, scope: !1141)
!1165 = !DILocation(line: 428, column: 7, scope: !1166, inlinedAt: !1154)
!1166 = distinct !DILexicalBlock(scope: !1167, file: !3, line: 427, column: 5)
!1167 = distinct !DILexicalBlock(scope: !1141, file: !3, line: 426, column: 7)
!1168 = !DILocation(line: 430, column: 5, scope: !1166, inlinedAt: !1154)
!1169 = !DILocation(line: 435, column: 7, scope: !1170, inlinedAt: !1154)
!1170 = distinct !DILexicalBlock(scope: !1141, file: !3, line: 435, column: 7)
!1171 = !DILocation(line: 420, column: 10, scope: !1141, inlinedAt: !1154)
!1172 = !DILocation(line: 435, column: 7, scope: !1141, inlinedAt: !1154)
!1173 = !DILocation(line: 437, column: 9, scope: !1174, inlinedAt: !1154)
!1174 = distinct !DILexicalBlock(scope: !1170, file: !3, line: 436, column: 5)
!1175 = !DILocation(line: 473, column: 11, scope: !1176, inlinedAt: !1154)
!1176 = distinct !DILexicalBlock(scope: !1174, file: !3, line: 473, column: 11)
!1177 = !DILocation(line: 473, column: 16, scope: !1176, inlinedAt: !1154)
!1178 = !DILocation(line: 474, column: 9, scope: !1176, inlinedAt: !1154)
!1179 = !DILocation(line: 473, column: 11, scope: !1174, inlinedAt: !1154)
!1180 = !DILocation(line: 475, column: 11, scope: !1181, inlinedAt: !1154)
!1181 = distinct !DILexicalBlock(scope: !1174, file: !3, line: 475, column: 11)
!1182 = !DILocation(line: 475, column: 16, scope: !1181, inlinedAt: !1154)
!1183 = !DILocation(line: 475, column: 11, scope: !1174, inlinedAt: !1154)
!1184 = !DILocation(line: 477, column: 11, scope: !1185, inlinedAt: !1154)
!1185 = distinct !DILexicalBlock(scope: !1181, file: !3, line: 476, column: 9)
!1186 = !DILocation(line: 479, column: 33, scope: !1185, inlinedAt: !1154)
!1187 = !DILocation(line: 479, column: 44, scope: !1185, inlinedAt: !1154)
!1188 = !DILocalVariable(name: "s", arg: 1, scope: !1189, file: !3, line: 372, type: !59)
!1189 = distinct !DISubprogram(name: "bsd_split_3", scope: !3, file: !3, line: 372, type: !1190, isLocal: true, isDefinition: true, scopeLine: 374, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1192)
!1190 = !DISubroutineType(types: !1191)
!1191 = !{!71, !59, !62, !1144, !894, !71}
!1192 = !{!1188, !1193, !1194, !1195, !1196, !1197}
!1193 = !DILocalVariable(name: "s_len", arg: 2, scope: !1189, file: !3, line: 372, type: !62)
!1194 = !DILocalVariable(name: "hex_digest", arg: 3, scope: !1189, file: !3, line: 372, type: !1144)
!1195 = !DILocalVariable(name: "file_name", arg: 4, scope: !1189, file: !3, line: 373, type: !894)
!1196 = !DILocalVariable(name: "escaped_filename", arg: 5, scope: !1189, file: !3, line: 373, type: !71)
!1197 = !DILocalVariable(name: "i", scope: !1189, file: !3, line: 375, type: !62)
!1198 = !DILocation(line: 372, column: 20, scope: !1189, inlinedAt: !1199)
!1199 = distinct !DILocation(line: 479, column: 18, scope: !1185, inlinedAt: !1154)
!1200 = !DILocation(line: 372, column: 30, scope: !1189, inlinedAt: !1199)
!1201 = !DILocation(line: 373, column: 37, scope: !1189, inlinedAt: !1199)
!1202 = !DILocation(line: 377, column: 13, scope: !1203, inlinedAt: !1199)
!1203 = distinct !DILexicalBlock(scope: !1189, file: !3, line: 377, column: 7)
!1204 = !DILocation(line: 377, column: 7, scope: !1189, inlinedAt: !1199)
!1205 = !DILocation(line: 0, scope: !1189, inlinedAt: !1199)
!1206 = !DILocation(line: 375, column: 10, scope: !1189, inlinedAt: !1199)
!1207 = !DILocation(line: 382, column: 10, scope: !1189, inlinedAt: !1199)
!1208 = !DILocation(line: 382, column: 12, scope: !1189, inlinedAt: !1199)
!1209 = !DILocation(line: 382, column: 15, scope: !1189, inlinedAt: !1199)
!1210 = !DILocation(line: 382, column: 20, scope: !1189, inlinedAt: !1199)
!1211 = !DILocation(line: 382, column: 3, scope: !1189, inlinedAt: !1199)
!1212 = distinct !{!1212, !1213, !1214}
!1213 = !DILocation(line: 382, column: 3, scope: !1189)
!1214 = !DILocation(line: 383, column: 6, scope: !1189)
!1215 = !DILocation(line: 385, column: 7, scope: !1216, inlinedAt: !1199)
!1216 = distinct !DILexicalBlock(scope: !1189, file: !3, line: 385, column: 7)
!1217 = !DILocation(line: 385, column: 7, scope: !1189, inlinedAt: !1199)
!1218 = !DILocation(line: 390, column: 24, scope: !1219, inlinedAt: !1199)
!1219 = distinct !DILexicalBlock(scope: !1189, file: !3, line: 390, column: 7)
!1220 = !DILocalVariable(name: "s", arg: 1, scope: !1221, file: !3, line: 309, type: !59)
!1221 = distinct !DISubprogram(name: "filename_unescape", scope: !3, file: !3, line: 309, type: !1222, isLocal: true, isDefinition: true, scopeLine: 310, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1224)
!1222 = !DISubroutineType(types: !1223)
!1223 = !{!59, !59, !62}
!1224 = !{!1220, !1225, !1226, !1227}
!1225 = !DILocalVariable(name: "s_len", arg: 2, scope: !1221, file: !3, line: 309, type: !62)
!1226 = !DILocalVariable(name: "dst", scope: !1221, file: !3, line: 311, type: !59)
!1227 = !DILocalVariable(name: "i", scope: !1228, file: !3, line: 313, type: !62)
!1228 = distinct !DILexicalBlock(scope: !1221, file: !3, line: 313, column: 3)
!1229 = !DILocation(line: 309, column: 26, scope: !1221, inlinedAt: !1230)
!1230 = distinct !DILocation(line: 390, column: 27, scope: !1219, inlinedAt: !1199)
!1231 = !DILocation(line: 309, column: 36, scope: !1221, inlinedAt: !1230)
!1232 = !DILocation(line: 311, column: 9, scope: !1221, inlinedAt: !1230)
!1233 = !DILocation(line: 313, column: 15, scope: !1228, inlinedAt: !1230)
!1234 = !DILocation(line: 313, column: 3, scope: !1228, inlinedAt: !1230)
!1235 = !DILocation(line: 315, column: 15, scope: !1236, inlinedAt: !1230)
!1236 = distinct !DILexicalBlock(scope: !1237, file: !3, line: 314, column: 5)
!1237 = distinct !DILexicalBlock(scope: !1228, file: !3, line: 313, column: 3)
!1238 = !DILocation(line: 315, column: 7, scope: !1236, inlinedAt: !1230)
!1239 = !DILocation(line: 318, column: 17, scope: !1240, inlinedAt: !1230)
!1240 = distinct !DILexicalBlock(scope: !1241, file: !3, line: 318, column: 15)
!1241 = distinct !DILexicalBlock(scope: !1236, file: !3, line: 316, column: 9)
!1242 = !DILocation(line: 318, column: 15, scope: !1241, inlinedAt: !1230)
!1243 = !DILocation(line: 323, column: 11, scope: !1241, inlinedAt: !1230)
!1244 = !DILocation(line: 324, column: 19, scope: !1241, inlinedAt: !1230)
!1245 = !DILocation(line: 324, column: 11, scope: !1241, inlinedAt: !1230)
!1246 = !DILocation(line: 331, column: 15, scope: !1247, inlinedAt: !1230)
!1247 = distinct !DILexicalBlock(scope: !1241, file: !3, line: 325, column: 13)
!1248 = !DILocation(line: 0, scope: !1241, inlinedAt: !1230)
!1249 = !DILocation(line: 0, scope: !1185, inlinedAt: !1154)
!1250 = !DILocation(line: 0, scope: !1247, inlinedAt: !1230)
!1251 = !DILocation(line: 313, column: 34, scope: !1237, inlinedAt: !1230)
!1252 = !DILocation(line: 313, column: 24, scope: !1237, inlinedAt: !1230)
!1253 = distinct !{!1253, !1254, !1255}
!1254 = !DILocation(line: 313, column: 3, scope: !1228)
!1255 = !DILocation(line: 346, column: 5, scope: !1228)
!1256 = !DILocation(line: 347, column: 11, scope: !1257, inlinedAt: !1230)
!1257 = distinct !DILexicalBlock(scope: !1221, file: !3, line: 347, column: 7)
!1258 = !DILocation(line: 347, column: 7, scope: !1221, inlinedAt: !1230)
!1259 = !DILocation(line: 348, column: 10, scope: !1257, inlinedAt: !1230)
!1260 = !DILocation(line: 348, column: 5, scope: !1257, inlinedAt: !1230)
!1261 = !DILocation(line: 393, column: 10, scope: !1189, inlinedAt: !1199)
!1262 = !DILocation(line: 395, column: 3, scope: !1189, inlinedAt: !1199)
!1263 = !DILocation(line: 395, column: 10, scope: !1189, inlinedAt: !1199)
!1264 = !DILocation(line: 396, column: 6, scope: !1189, inlinedAt: !1199)
!1265 = distinct !{!1265, !1266, !1267}
!1266 = !DILocation(line: 395, column: 3, scope: !1189)
!1267 = !DILocation(line: 396, column: 6, scope: !1189)
!1268 = !DILocation(line: 403, column: 10, scope: !1189, inlinedAt: !1199)
!1269 = distinct !{!1269, !1270, !1271}
!1270 = !DILocation(line: 403, column: 3, scope: !1189)
!1271 = !DILocation(line: 404, column: 6, scope: !1189)
!1272 = !DILocalVariable(name: "s", arg: 1, scope: !1273, file: !3, line: 356, type: !1276)
!1273 = distinct !DISubprogram(name: "hex_digits", scope: !3, file: !3, line: 356, type: !1274, isLocal: true, isDefinition: true, scopeLine: 357, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1277)
!1274 = !DISubroutineType(types: !1275)
!1275 = !{!71, !1276}
!1276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !245, size: 64)
!1277 = !{!1272, !1278}
!1278 = !DILocalVariable(name: "i", scope: !1279, file: !3, line: 358, type: !7)
!1279 = distinct !DILexicalBlock(scope: !1273, file: !3, line: 358, column: 3)
!1280 = !DILocation(line: 356, column: 34, scope: !1273, inlinedAt: !1281)
!1281 = distinct !DILocation(line: 408, column: 10, scope: !1189, inlinedAt: !1199)
!1282 = !DILocation(line: 358, column: 21, scope: !1279, inlinedAt: !1281)
!1283 = !DILocation(line: 358, column: 3, scope: !1279, inlinedAt: !1281)
!1284 = !DILocation(line: 360, column: 12, scope: !1285, inlinedAt: !1281)
!1285 = distinct !DILexicalBlock(scope: !1286, file: !3, line: 360, column: 11)
!1286 = distinct !DILexicalBlock(scope: !1287, file: !3, line: 359, column: 5)
!1287 = distinct !DILexicalBlock(scope: !1279, file: !3, line: 358, column: 3)
!1288 = !{!1289, !1289, i64 0}
!1289 = !{!"short", !837, i64 0}
!1290 = !DILocation(line: 360, column: 11, scope: !1286, inlinedAt: !1281)
!1291 = !DILocation(line: 362, column: 7, scope: !1286, inlinedAt: !1281)
!1292 = !DILocation(line: 489, column: 13, scope: !1293, inlinedAt: !1154)
!1293 = distinct !DILexicalBlock(scope: !1141, file: !3, line: 489, column: 7)
!1294 = !DILocation(line: 489, column: 45, scope: !1293, inlinedAt: !1154)
!1295 = !DILocation(line: 489, column: 50, scope: !1293, inlinedAt: !1154)
!1296 = !DILocation(line: 489, column: 44, scope: !1293, inlinedAt: !1154)
!1297 = !DILocation(line: 489, column: 42, scope: !1293, inlinedAt: !1154)
!1298 = !DILocation(line: 489, column: 17, scope: !1293, inlinedAt: !1154)
!1299 = !DILocation(line: 489, column: 7, scope: !1141, inlinedAt: !1154)
!1300 = !DILocation(line: 509, column: 5, scope: !1141, inlinedAt: !1154)
!1301 = !DILocation(line: 510, column: 8, scope: !1302, inlinedAt: !1154)
!1302 = distinct !DILexicalBlock(scope: !1141, file: !3, line: 510, column: 7)
!1303 = !DILocation(line: 513, column: 6, scope: !1141, inlinedAt: !1154)
!1304 = !DILocation(line: 513, column: 10, scope: !1141, inlinedAt: !1154)
!1305 = !DILocation(line: 356, column: 34, scope: !1273, inlinedAt: !1306)
!1306 = distinct !DILocation(line: 515, column: 9, scope: !1307, inlinedAt: !1154)
!1307 = distinct !DILexicalBlock(scope: !1141, file: !3, line: 515, column: 7)
!1308 = !DILocation(line: 358, column: 21, scope: !1279, inlinedAt: !1306)
!1309 = !DILocation(line: 358, column: 3, scope: !1279, inlinedAt: !1306)
!1310 = !DILocation(line: 360, column: 12, scope: !1285, inlinedAt: !1306)
!1311 = !DILocation(line: 360, column: 11, scope: !1286, inlinedAt: !1306)
!1312 = !DILocation(line: 362, column: 7, scope: !1286, inlinedAt: !1306)
!1313 = !DILocation(line: 364, column: 10, scope: !1273, inlinedAt: !1306)
!1314 = !DILocation(line: 364, column: 13, scope: !1273, inlinedAt: !1306)
!1315 = !DILocation(line: 515, column: 7, scope: !1141, inlinedAt: !1154)
!1316 = !DILocation(line: 519, column: 14, scope: !1317, inlinedAt: !1154)
!1317 = distinct !DILexicalBlock(scope: !1141, file: !3, line: 519, column: 7)
!1318 = !DILocation(line: 519, column: 18, scope: !1317, inlinedAt: !1154)
!1319 = !DILocation(line: 519, column: 24, scope: !1317, inlinedAt: !1154)
!1320 = !DILocation(line: 519, column: 28, scope: !1317, inlinedAt: !1154)
!1321 = !DILocation(line: 519, column: 40, scope: !1317, inlinedAt: !1154)
!1322 = !DILocation(line: 527, column: 11, scope: !1323, inlinedAt: !1154)
!1323 = distinct !DILexicalBlock(scope: !1324, file: !3, line: 527, column: 11)
!1324 = distinct !DILexicalBlock(scope: !1317, file: !3, line: 520, column: 5)
!1325 = !DILocation(line: 527, column: 24, scope: !1323, inlinedAt: !1154)
!1326 = !DILocation(line: 527, column: 11, scope: !1324, inlinedAt: !1154)
!1327 = !DILocation(line: 529, column: 20, scope: !1324, inlinedAt: !1154)
!1328 = !DILocation(line: 530, column: 5, scope: !1324, inlinedAt: !1154)
!1329 = !DILocation(line: 531, column: 12, scope: !1330, inlinedAt: !1154)
!1330 = distinct !DILexicalBlock(scope: !1317, file: !3, line: 531, column: 12)
!1331 = !DILocation(line: 531, column: 25, scope: !1330, inlinedAt: !1154)
!1332 = !DILocation(line: 531, column: 12, scope: !1317, inlinedAt: !1154)
!1333 = !DILocation(line: 533, column: 20, scope: !1334, inlinedAt: !1154)
!1334 = distinct !DILexicalBlock(scope: !1330, file: !3, line: 532, column: 5)
!1335 = !DILocation(line: 534, column: 21, scope: !1334, inlinedAt: !1154)
!1336 = !DILocation(line: 535, column: 5, scope: !1334, inlinedAt: !1154)
!1337 = !DILocation(line: 539, column: 17, scope: !1141, inlinedAt: !1154)
!1338 = !DILocation(line: 541, column: 7, scope: !1141, inlinedAt: !1154)
!1339 = !DILocation(line: 542, column: 44, scope: !1340, inlinedAt: !1154)
!1340 = distinct !DILexicalBlock(scope: !1141, file: !3, line: 541, column: 7)
!1341 = !DILocation(line: 309, column: 26, scope: !1221, inlinedAt: !1342)
!1342 = distinct !DILocation(line: 542, column: 12, scope: !1340, inlinedAt: !1154)
!1343 = !DILocation(line: 309, column: 36, scope: !1221, inlinedAt: !1342)
!1344 = !DILocation(line: 311, column: 9, scope: !1221, inlinedAt: !1342)
!1345 = !DILocation(line: 313, column: 15, scope: !1228, inlinedAt: !1342)
!1346 = !DILocation(line: 313, column: 24, scope: !1237, inlinedAt: !1342)
!1347 = !DILocation(line: 313, column: 3, scope: !1228, inlinedAt: !1342)
!1348 = !DILocation(line: 315, column: 15, scope: !1236, inlinedAt: !1342)
!1349 = !DILocation(line: 315, column: 7, scope: !1236, inlinedAt: !1342)
!1350 = !DILocation(line: 318, column: 17, scope: !1240, inlinedAt: !1342)
!1351 = !DILocation(line: 318, column: 15, scope: !1241, inlinedAt: !1342)
!1352 = !DILocation(line: 323, column: 11, scope: !1241, inlinedAt: !1342)
!1353 = !DILocation(line: 324, column: 19, scope: !1241, inlinedAt: !1342)
!1354 = !DILocation(line: 324, column: 11, scope: !1241, inlinedAt: !1342)
!1355 = !DILocation(line: 331, column: 15, scope: !1247, inlinedAt: !1342)
!1356 = !DILocation(line: 0, scope: !1241, inlinedAt: !1342)
!1357 = !DILocation(line: 0, scope: !177, inlinedAt: !922)
!1358 = !DILocation(line: 0, scope: !1247, inlinedAt: !1342)
!1359 = !DILocation(line: 313, column: 34, scope: !1237, inlinedAt: !1342)
!1360 = !DILocation(line: 347, column: 15, scope: !1257, inlinedAt: !1342)
!1361 = !DILocation(line: 347, column: 11, scope: !1257, inlinedAt: !1342)
!1362 = !DILocation(line: 347, column: 7, scope: !1221, inlinedAt: !1342)
!1363 = !DILocation(line: 348, column: 10, scope: !1257, inlinedAt: !1342)
!1364 = !DILocation(line: 348, column: 5, scope: !1257, inlinedAt: !1342)
!1365 = !DILocation(line: 542, column: 49, scope: !1340, inlinedAt: !1154)
!1366 = !DILocation(line: 713, column: 14, scope: !177, inlinedAt: !922)
!1367 = !DILocation(line: 364, column: 10, scope: !1273, inlinedAt: !1281)
!1368 = !DILocation(line: 364, column: 13, scope: !1273, inlinedAt: !1281)
!1369 = !DILocation(line: 713, column: 29, scope: !177, inlinedAt: !922)
!1370 = !DILocation(line: 713, column: 32, scope: !177, inlinedAt: !922)
!1371 = !DILocation(line: 712, column: 11, scope: !168, inlinedAt: !922)
!1372 = !DILocation(line: 715, column: 11, scope: !1373, inlinedAt: !922)
!1373 = distinct !DILexicalBlock(scope: !177, file: !3, line: 714, column: 9)
!1374 = !DILocation(line: 717, column: 15, scope: !1373, inlinedAt: !922)
!1375 = !DILocation(line: 720, column: 22, scope: !1376, inlinedAt: !922)
!1376 = distinct !DILexicalBlock(scope: !1377, file: !3, line: 718, column: 13)
!1377 = distinct !DILexicalBlock(scope: !1373, file: !3, line: 717, column: 15)
!1378 = !DILocation(line: 722, column: 22, scope: !1376, inlinedAt: !922)
!1379 = !DILocation(line: 719, column: 15, scope: !1376, inlinedAt: !922)
!1380 = !DILocation(line: 724, column: 13, scope: !1376, inlinedAt: !922)
!1381 = !DILocation(line: 726, column: 11, scope: !1373, inlinedAt: !922)
!1382 = !DILocation(line: 727, column: 9, scope: !1373, inlinedAt: !922)
!1383 = !DILocation(line: 735, column: 16, scope: !176, inlinedAt: !922)
!1384 = !DILocation(line: 735, column: 11, scope: !176, inlinedAt: !922)
!1385 = !DILocation(line: 738, column: 45, scope: !176, inlinedAt: !922)
!1386 = !DILocation(line: 738, column: 48, scope: !176, inlinedAt: !922)
!1387 = !DILocation(line: 0, scope: !176, inlinedAt: !922)
!1388 = !DILocation(line: 742, column: 16, scope: !176, inlinedAt: !922)
!1389 = !DILocation(line: 744, column: 15, scope: !176, inlinedAt: !922)
!1390 = !DILocation(line: 746, column: 15, scope: !1391, inlinedAt: !922)
!1391 = distinct !DILexicalBlock(scope: !183, file: !3, line: 745, column: 13)
!1392 = !DILocation(line: 747, column: 19, scope: !1391, inlinedAt: !922)
!1393 = !DILocation(line: 749, column: 23, scope: !1394, inlinedAt: !922)
!1394 = distinct !DILexicalBlock(scope: !1395, file: !3, line: 748, column: 17)
!1395 = distinct !DILexicalBlock(scope: !1391, file: !3, line: 747, column: 19)
!1396 = !DILocalVariable(name: "__c", arg: 1, scope: !1397, file: !1112, line: 108, type: !64)
!1397 = distinct !DISubprogram(name: "putchar_unlocked", scope: !1112, file: !1112, line: 108, type: !1398, isLocal: false, isDefinition: true, scopeLine: 109, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1400)
!1398 = !DISubroutineType(types: !1399)
!1399 = !{!64, !64}
!1400 = !{!1396}
!1401 = !DILocation(line: 108, column: 23, scope: !1397, inlinedAt: !1402)
!1402 = distinct !DILocation(line: 750, column: 21, scope: !1403, inlinedAt: !922)
!1403 = distinct !DILexicalBlock(scope: !1394, file: !3, line: 749, column: 23)
!1404 = !DILocation(line: 110, column: 10, scope: !1397, inlinedAt: !1402)
!1405 = !{!1406, !836, i64 40}
!1406 = !{!"_IO_FILE", !1044, i64 0, !836, i64 8, !836, i64 16, !836, i64 24, !836, i64 32, !836, i64 40, !836, i64 48, !836, i64 56, !836, i64 64, !836, i64 72, !836, i64 80, !836, i64 88, !836, i64 96, !836, i64 104, !1044, i64 112, !1044, i64 116, !1102, i64 120, !1289, i64 128, !837, i64 130, !837, i64 131, !836, i64 136, !1102, i64 144, !836, i64 152, !836, i64 160, !836, i64 168, !836, i64 176, !1102, i64 184, !1044, i64 192, !837, i64 196}
!1407 = !{!1406, !836, i64 48}
!1408 = !{!"branch_weights", i32 2000, i32 1}
!1409 = !DILocation(line: 751, column: 19, scope: !1394, inlinedAt: !922)
!1410 = !DILocation(line: 752, column: 19, scope: !1394, inlinedAt: !922)
!1411 = !DILocation(line: 753, column: 17, scope: !1394, inlinedAt: !922)
!1412 = !DILocation(line: 755, column: 35, scope: !182, inlinedAt: !922)
!1413 = !DILocation(line: 755, column: 38, scope: !182, inlinedAt: !922)
!1414 = !DILocation(line: 762, column: 58, scope: !181, inlinedAt: !922)
!1415 = !DILocation(line: 762, column: 22, scope: !181, inlinedAt: !922)
!1416 = !DILocation(line: 763, column: 22, scope: !181, inlinedAt: !922)
!1417 = !DILocation(line: 767, column: 15, scope: !190, inlinedAt: !922)
!1418 = !DILocation(line: 769, column: 23, scope: !1419, inlinedAt: !922)
!1419 = distinct !DILexicalBlock(scope: !186, file: !3, line: 769, column: 23)
!1420 = !DILocation(line: 769, column: 23, scope: !186, inlinedAt: !922)
!1421 = !DILocation(line: 770, column: 34, scope: !187, inlinedAt: !922)
!1422 = !DILocation(line: 770, column: 50, scope: !187, inlinedAt: !922)
!1423 = !DILocation(line: 770, column: 26, scope: !187, inlinedAt: !922)
!1424 = !DILocation(line: 770, column: 23, scope: !187, inlinedAt: !922)
!1425 = !DILocation(line: 771, column: 23, scope: !187, inlinedAt: !922)
!1426 = !DILocation(line: 771, column: 27, scope: !1427, inlinedAt: !922)
!1427 = distinct !DILexicalBlock(scope: !192, file: !3, line: 771, column: 27)
!1428 = !DILocation(line: 771, column: 27, scope: !192, inlinedAt: !922)
!1429 = !DILocation(line: 772, column: 55, scope: !187, inlinedAt: !922)
!1430 = !DILocation(line: 772, column: 31, scope: !187, inlinedAt: !922)
!1431 = !DILocation(line: 772, column: 30, scope: !187, inlinedAt: !922)
!1432 = !DILocation(line: 772, column: 27, scope: !187, inlinedAt: !922)
!1433 = !DILocation(line: 769, column: 23, scope: !188, inlinedAt: !922)
!1434 = !DILocation(line: 767, column: 53, scope: !189, inlinedAt: !922)
!1435 = !DILocation(line: 767, column: 33, scope: !189, inlinedAt: !922)
!1436 = distinct !{!1436, !1437, !1438}
!1437 = !DILocation(line: 767, column: 15, scope: !190)
!1438 = !DILocation(line: 774, column: 17, scope: !190)
!1439 = !DILocation(line: 0, scope: !189, inlinedAt: !922)
!1440 = !DILocation(line: 775, column: 23, scope: !1441, inlinedAt: !922)
!1441 = distinct !DILexicalBlock(scope: !181, file: !3, line: 775, column: 19)
!1442 = !DILocation(line: 776, column: 17, scope: !1441, inlinedAt: !922)
!1443 = !DILocation(line: 775, column: 19, scope: !181, inlinedAt: !922)
!1444 = !DILocation(line: 780, column: 19, scope: !181, inlinedAt: !922)
!1445 = !DILocation(line: 782, column: 47, scope: !1446, inlinedAt: !922)
!1446 = distinct !DILexicalBlock(scope: !1447, file: !3, line: 782, column: 23)
!1447 = distinct !DILexicalBlock(scope: !1448, file: !3, line: 781, column: 17)
!1448 = distinct !DILexicalBlock(scope: !181, file: !3, line: 780, column: 19)
!1449 = !DILocation(line: 782, column: 23, scope: !1447, inlinedAt: !922)
!1450 = !DILocation(line: 784, column: 27, scope: !1451, inlinedAt: !922)
!1451 = distinct !DILexicalBlock(scope: !1446, file: !3, line: 783, column: 21)
!1452 = !DILocation(line: 108, column: 23, scope: !1397, inlinedAt: !1453)
!1453 = distinct !DILocation(line: 785, column: 25, scope: !1454, inlinedAt: !922)
!1454 = distinct !DILexicalBlock(scope: !1451, file: !3, line: 784, column: 27)
!1455 = !DILocation(line: 110, column: 10, scope: !1397, inlinedAt: !1453)
!1456 = !DILocation(line: 786, column: 23, scope: !1451, inlinedAt: !922)
!1457 = !DILocation(line: 789, column: 23, scope: !1447, inlinedAt: !922)
!1458 = !DILocation(line: 790, column: 21, scope: !1459, inlinedAt: !922)
!1459 = distinct !DILexicalBlock(scope: !1447, file: !3, line: 789, column: 23)
!1460 = !DILocation(line: 791, column: 28, scope: !1459, inlinedAt: !922)
!1461 = !DILocation(line: 792, column: 21, scope: !1462, inlinedAt: !922)
!1462 = distinct !DILexicalBlock(scope: !1459, file: !3, line: 791, column: 28)
!1463 = !DILocation(line: 0, scope: !1391, inlinedAt: !922)
!1464 = !DILocation(line: 0, scope: !90, inlinedAt: !922)
!1465 = !DILocation(line: 795, column: 9, scope: !177, inlinedAt: !922)
!1466 = !DILocalVariable(name: "__stream", arg: 1, scope: !1467, file: !1112, line: 128, type: !98)
!1467 = distinct !DISubprogram(name: "feof_unlocked", scope: !1112, file: !1112, line: 128, type: !1468, isLocal: false, isDefinition: true, scopeLine: 129, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1470)
!1468 = !DISubroutineType(types: !1469)
!1469 = !{!64, !98}
!1470 = !{!1466}
!1471 = !DILocation(line: 128, column: 1, scope: !1467, inlinedAt: !1472)
!1472 = distinct !DILocation(line: 797, column: 11, scope: !90, inlinedAt: !922)
!1473 = !DILocation(line: 130, column: 10, scope: !1467, inlinedAt: !1472)
!1474 = !{!1406, !1044, i64 0}
!1475 = !DILocation(line: 797, column: 35, scope: !90, inlinedAt: !922)
!1476 = !DILocalVariable(name: "__stream", arg: 1, scope: !1477, file: !1112, line: 135, type: !98)
!1477 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1112, file: !1112, line: 135, type: !1468, isLocal: false, isDefinition: true, scopeLine: 136, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1478)
!1478 = !{!1476}
!1479 = !DILocation(line: 135, column: 1, scope: !1477, inlinedAt: !1480)
!1480 = distinct !DILocation(line: 797, column: 39, scope: !90, inlinedAt: !922)
!1481 = distinct !{!1481, !1482, !1483}
!1482 = !DILocation(line: 688, column: 3, scope: !90)
!1483 = !DILocation(line: 797, column: 64, scope: !90)
!1484 = !DILocation(line: 799, column: 9, scope: !90, inlinedAt: !922)
!1485 = !DILocation(line: 799, column: 3, scope: !90, inlinedAt: !922)
!1486 = !DILocation(line: 135, column: 1, scope: !1477, inlinedAt: !1487)
!1487 = distinct !DILocation(line: 801, column: 7, scope: !1488, inlinedAt: !922)
!1488 = distinct !DILexicalBlock(scope: !90, file: !3, line: 801, column: 7)
!1489 = !DILocation(line: 137, column: 10, scope: !1477, inlinedAt: !1487)
!1490 = !DILocation(line: 801, column: 7, scope: !1488, inlinedAt: !922)
!1491 = !DILocation(line: 801, column: 7, scope: !90, inlinedAt: !922)
!1492 = !DILocation(line: 803, column: 20, scope: !1493, inlinedAt: !922)
!1493 = distinct !DILexicalBlock(scope: !1488, file: !3, line: 802, column: 5)
!1494 = !DILocation(line: 803, column: 41, scope: !1493, inlinedAt: !922)
!1495 = !DILocation(line: 803, column: 7, scope: !1493, inlinedAt: !922)
!1496 = !DILocation(line: 804, column: 7, scope: !1493, inlinedAt: !922)
!1497 = !DILocation(line: 807, column: 17, scope: !1498, inlinedAt: !922)
!1498 = distinct !DILexicalBlock(scope: !90, file: !3, line: 807, column: 7)
!1499 = !DILocation(line: 807, column: 20, scope: !1498, inlinedAt: !922)
!1500 = !DILocation(line: 807, column: 46, scope: !1498, inlinedAt: !922)
!1501 = !DILocation(line: 807, column: 7, scope: !90, inlinedAt: !922)
!1502 = !DILocation(line: 809, column: 17, scope: !1503, inlinedAt: !922)
!1503 = distinct !DILexicalBlock(scope: !1498, file: !3, line: 808, column: 5)
!1504 = !DILocation(line: 809, column: 30, scope: !1503, inlinedAt: !922)
!1505 = !DILocation(line: 809, column: 7, scope: !1503, inlinedAt: !922)
!1506 = !DILocation(line: 810, column: 7, scope: !1503, inlinedAt: !922)
!1507 = !DILocation(line: 813, column: 9, scope: !1508, inlinedAt: !922)
!1508 = distinct !DILexicalBlock(scope: !90, file: !3, line: 813, column: 7)
!1509 = !DILocation(line: 813, column: 7, scope: !90, inlinedAt: !922)
!1510 = !DILocation(line: 821, column: 11, scope: !1511, inlinedAt: !922)
!1511 = distinct !DILexicalBlock(scope: !1508, file: !3, line: 820, column: 5)
!1512 = !DILocation(line: 854, column: 14, scope: !90, inlinedAt: !922)
!1513 = !DILocation(line: 823, column: 36, scope: !1514, inlinedAt: !922)
!1514 = distinct !DILexicalBlock(scope: !1515, file: !3, line: 823, column: 15)
!1515 = distinct !DILexicalBlock(scope: !1516, file: !3, line: 822, column: 9)
!1516 = distinct !DILexicalBlock(scope: !1511, file: !3, line: 821, column: 11)
!1517 = !DILocation(line: 823, column: 15, scope: !1515, inlinedAt: !922)
!1518 = !DILocation(line: 825, column: 21, scope: !1514, inlinedAt: !922)
!1519 = !DILocation(line: 824, column: 13, scope: !1514, inlinedAt: !922)
!1520 = !DILocation(line: 831, column: 39, scope: !1521, inlinedAt: !922)
!1521 = distinct !DILexicalBlock(scope: !1515, file: !3, line: 831, column: 15)
!1522 = !DILocation(line: 831, column: 15, scope: !1515, inlinedAt: !922)
!1523 = !DILocation(line: 833, column: 21, scope: !1521, inlinedAt: !922)
!1524 = !DILocation(line: 832, column: 13, scope: !1521, inlinedAt: !922)
!1525 = !DILocation(line: 839, column: 38, scope: !1526, inlinedAt: !922)
!1526 = distinct !DILexicalBlock(scope: !1515, file: !3, line: 839, column: 15)
!1527 = !DILocation(line: 839, column: 15, scope: !1515, inlinedAt: !922)
!1528 = !DILocation(line: 841, column: 21, scope: !1526, inlinedAt: !922)
!1529 = !DILocation(line: 840, column: 13, scope: !1526, inlinedAt: !922)
!1530 = !DILocation(line: 847, column: 35, scope: !1531, inlinedAt: !922)
!1531 = distinct !DILexicalBlock(scope: !1515, file: !3, line: 847, column: 15)
!1532 = !DILocation(line: 847, column: 30, scope: !1531, inlinedAt: !922)
!1533 = !DILocation(line: 848, column: 26, scope: !1531, inlinedAt: !922)
!1534 = !DILocation(line: 849, column: 20, scope: !1531, inlinedAt: !922)
!1535 = !DILocation(line: 848, column: 13, scope: !1531, inlinedAt: !922)
!1536 = !DILocation(line: 855, column: 11, scope: !90, inlinedAt: !922)
!1537 = !DILocation(line: 816, column: 20, scope: !1538, inlinedAt: !922)
!1538 = distinct !DILexicalBlock(scope: !1508, file: !3, line: 814, column: 5)
!1539 = !DILocation(line: 817, column: 14, scope: !1538, inlinedAt: !922)
!1540 = !DILocation(line: 816, column: 7, scope: !1538, inlinedAt: !922)
!1541 = !DILocation(line: 857, column: 55, scope: !90, inlinedAt: !922)
!1542 = !DILocation(line: 857, column: 23, scope: !90, inlinedAt: !922)
!1543 = !DILocation(line: 0, scope: !1091, inlinedAt: !922)
!1544 = !DILocation(line: 858, column: 1, scope: !90, inlinedAt: !922)
!1545 = !DILocation(line: 1047, column: 15, scope: !914)
!1546 = !DILocation(line: 1047, column: 12, scope: !914)
!1547 = !DILocation(line: 1047, column: 9, scope: !914)
!1548 = !DILocation(line: 1051, column: 16, scope: !913)
!1549 = !DILocation(line: 1051, column: 11, scope: !913)
!1550 = !DILocation(line: 1053, column: 17, scope: !918)
!1551 = !DILocation(line: 1053, column: 15, scope: !913)
!1552 = !DILocation(line: 1064, column: 36, scope: !917)
!1553 = !DILocation(line: 1064, column: 56, scope: !917)
!1554 = !DILocation(line: 1064, column: 59, scope: !917)
!1555 = !DILocation(line: 1065, column: 35, scope: !917)
!1556 = !DILocation(line: 1065, column: 44, scope: !917)
!1557 = !DILocation(line: 0, scope: !917)
!1558 = !DILocation(line: 1067, column: 19, scope: !917)
!1559 = !DILocation(line: 1069, column: 23, scope: !1560)
!1560 = distinct !DILexicalBlock(scope: !1561, file: !3, line: 1068, column: 17)
!1561 = distinct !DILexicalBlock(scope: !917, file: !3, line: 1067, column: 19)
!1562 = !DILocation(line: 108, column: 23, scope: !1397, inlinedAt: !1563)
!1563 = distinct !DILocation(line: 1070, column: 21, scope: !1564)
!1564 = distinct !DILexicalBlock(scope: !1560, file: !3, line: 1069, column: 23)
!1565 = !DILocation(line: 110, column: 10, scope: !1397, inlinedAt: !1563)
!1566 = !DILocation(line: 1077, column: 19, scope: !1560)
!1567 = !DILocation(line: 1079, column: 19, scope: !1560)
!1568 = !DILocation(line: 1080, column: 19, scope: !1560)
!1569 = !DILocation(line: 1081, column: 19, scope: !1560)
!1570 = !DILocation(line: 1086, column: 31, scope: !1571)
!1571 = distinct !DILexicalBlock(scope: !917, file: !3, line: 1086, column: 19)
!1572 = !DILocation(line: 1086, column: 19, scope: !917)
!1573 = !DILocation(line: 108, column: 23, scope: !1397, inlinedAt: !1574)
!1574 = distinct !DILocation(line: 1087, column: 17, scope: !1571)
!1575 = !DILocation(line: 110, column: 10, scope: !1397, inlinedAt: !1574)
!1576 = !DILocation(line: 1089, column: 27, scope: !920)
!1577 = !DILocation(line: 1089, column: 15, scope: !920)
!1578 = !DILocation(line: 1092, column: 19, scope: !917)
!1579 = !DILocation(line: 1090, column: 17, scope: !1580)
!1580 = distinct !DILexicalBlock(scope: !920, file: !3, line: 1089, column: 15)
!1581 = !DILocation(line: 1089, column: 62, scope: !1580)
!1582 = !DILocation(line: 1089, column: 56, scope: !1580)
!1583 = !DILocation(line: 1089, column: 36, scope: !1580)
!1584 = distinct !{!1584, !1577, !1585}
!1585 = !DILocation(line: 1090, column: 17, scope: !920)
!1586 = !DILocation(line: 108, column: 23, scope: !1397, inlinedAt: !1587)
!1587 = distinct !DILocation(line: 1094, column: 19, scope: !1588)
!1588 = distinct !DILexicalBlock(scope: !1589, file: !3, line: 1093, column: 17)
!1589 = distinct !DILexicalBlock(scope: !917, file: !3, line: 1092, column: 19)
!1590 = !DILocation(line: 110, column: 10, scope: !1397, inlinedAt: !1587)
!1591 = !DILocation(line: 108, column: 23, scope: !1397, inlinedAt: !1592)
!1592 = distinct !DILocation(line: 1096, column: 19, scope: !1588)
!1593 = !DILocation(line: 110, column: 10, scope: !1397, inlinedAt: !1592)
!1594 = !DILocation(line: 1098, column: 19, scope: !1588)
!1595 = !DILocation(line: 1099, column: 17, scope: !1588)
!1596 = !DILocation(line: 1101, column: 15, scope: !917)
!1597 = !DILocation(line: 108, column: 23, scope: !1397, inlinedAt: !1598)
!1598 = distinct !DILocation(line: 1101, column: 15, scope: !917)
!1599 = !DILocation(line: 110, column: 10, scope: !1397, inlinedAt: !1598)
!1600 = !DILocation(line: 0, scope: !918)
!1601 = !DILocation(line: 1103, column: 9, scope: !914)
!1602 = !DILocation(line: 1042, column: 73, scope: !911)
!1603 = distinct !{!1603, !1054, !1604}
!1604 = !DILocation(line: 1104, column: 5, scope: !908)
!1605 = !DILocation(line: 1106, column: 34, scope: !1057)
!1606 = !DILocation(line: 1106, column: 26, scope: !1057)
!1607 = !DILocation(line: 1106, column: 41, scope: !1057)
!1608 = !DILocation(line: 1106, column: 7, scope: !891)
!1609 = !DILocation(line: 1107, column: 5, scope: !1057)
!1610 = !DILocation(line: 1109, column: 10, scope: !891)
!1611 = !DILocation(line: 1110, column: 1, scope: !891)
!1612 = !DILocation(line: 358, column: 51, scope: !1287, inlinedAt: !1306)
!1613 = !DILocation(line: 358, column: 30, scope: !1287, inlinedAt: !1306)
!1614 = distinct !{!1614, !1615, !1616}
!1615 = !DILocation(line: 358, column: 3, scope: !1279)
!1616 = !DILocation(line: 363, column: 5, scope: !1279)
!1617 = !DILocation(line: 358, column: 51, scope: !1287, inlinedAt: !1281)
!1618 = !DILocation(line: 358, column: 30, scope: !1287, inlinedAt: !1281)
!1619 = distinct !DISubprogram(name: "digest_file", scope: !3, file: !3, line: 591, type: !1620, isLocal: true, isDefinition: true, scopeLine: 593, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1623)
!1620 = !DISubroutineType(types: !1621)
!1621 = !{!71, !93, !206, !65, !1622}
!1622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !71, size: 64)
!1623 = !{!1624, !1625, !1626, !1627, !1628, !1629, !1630}
!1624 = !DILocalVariable(name: "filename", arg: 1, scope: !1619, file: !3, line: 591, type: !93)
!1625 = !DILocalVariable(name: "binary", arg: 2, scope: !1619, file: !3, line: 591, type: !206)
!1626 = !DILocalVariable(name: "bin_result", arg: 3, scope: !1619, file: !3, line: 591, type: !65)
!1627 = !DILocalVariable(name: "missing", arg: 4, scope: !1619, file: !3, line: 592, type: !1622)
!1628 = !DILocalVariable(name: "fp", scope: !1619, file: !3, line: 594, type: !98)
!1629 = !DILocalVariable(name: "err", scope: !1619, file: !3, line: 595, type: !64)
!1630 = !DILocalVariable(name: "is_stdin", scope: !1619, file: !3, line: 596, type: !71)
!1631 = !DILocation(line: 591, column: 26, scope: !1619)
!1632 = !DILocation(line: 591, column: 41, scope: !1619)
!1633 = !DILocation(line: 591, column: 64, scope: !1619)
!1634 = !DILocation(line: 592, column: 20, scope: !1619)
!1635 = !DILocation(line: 596, column: 19, scope: !1619)
!1636 = !DILocation(line: 598, column: 12, scope: !1619)
!1637 = !{!1638, !1638, i64 0}
!1638 = !{!"_Bool", !837, i64 0}
!1639 = !DILocation(line: 600, column: 7, scope: !1619)
!1640 = !DILocation(line: 603, column: 12, scope: !1641)
!1641 = distinct !DILexicalBlock(scope: !1642, file: !3, line: 601, column: 5)
!1642 = distinct !DILexicalBlock(scope: !1619, file: !3, line: 600, column: 7)
!1643 = !DILocation(line: 594, column: 9, scope: !1619)
!1644 = !DILocation(line: 611, column: 5, scope: !1641)
!1645 = !DILocation(line: 614, column: 12, scope: !1646)
!1646 = distinct !DILexicalBlock(scope: !1642, file: !3, line: 613, column: 5)
!1647 = !DILocation(line: 615, column: 14, scope: !1648)
!1648 = distinct !DILexicalBlock(scope: !1646, file: !3, line: 615, column: 11)
!1649 = !DILocation(line: 615, column: 11, scope: !1646)
!1650 = !DILocation(line: 0, scope: !1651)
!1651 = distinct !DILexicalBlock(scope: !1648, file: !3, line: 616, column: 9)
!1652 = !DILocation(line: 617, column: 30, scope: !1653)
!1653 = distinct !DILexicalBlock(scope: !1651, file: !3, line: 617, column: 15)
!1654 = !DILocation(line: 617, column: 33, scope: !1653)
!1655 = !DILocation(line: 617, column: 39, scope: !1653)
!1656 = !DILocation(line: 617, column: 15, scope: !1651)
!1657 = !DILocation(line: 619, column: 24, scope: !1658)
!1658 = distinct !DILexicalBlock(scope: !1653, file: !3, line: 618, column: 13)
!1659 = !DILocation(line: 620, column: 15, scope: !1658)
!1660 = !DILocation(line: 622, column: 21, scope: !1651)
!1661 = !DILocation(line: 622, column: 34, scope: !1651)
!1662 = !DILocation(line: 622, column: 11, scope: !1651)
!1663 = !DILocation(line: 623, column: 11, scope: !1651)
!1664 = !DILocation(line: 0, scope: !1646)
!1665 = !DILocation(line: 627, column: 3, scope: !1619)
!1666 = !DILocation(line: 632, column: 9, scope: !1619)
!1667 = !DILocation(line: 595, column: 7, scope: !1619)
!1668 = !DILocation(line: 634, column: 7, scope: !1669)
!1669 = distinct !DILexicalBlock(scope: !1619, file: !3, line: 634, column: 7)
!1670 = !DILocation(line: 634, column: 7, scope: !1619)
!1671 = !DILocation(line: 636, column: 17, scope: !1672)
!1672 = distinct !DILexicalBlock(scope: !1669, file: !3, line: 635, column: 5)
!1673 = !DILocation(line: 636, column: 30, scope: !1672)
!1674 = !DILocation(line: 636, column: 7, scope: !1672)
!1675 = !DILocation(line: 637, column: 17, scope: !1676)
!1676 = distinct !DILexicalBlock(scope: !1672, file: !3, line: 637, column: 11)
!1677 = !DILocation(line: 637, column: 14, scope: !1676)
!1678 = !DILocation(line: 637, column: 11, scope: !1672)
!1679 = !DILocation(line: 638, column: 9, scope: !1676)
!1680 = !DILocation(line: 642, column: 17, scope: !1681)
!1681 = distinct !DILexicalBlock(scope: !1619, file: !3, line: 642, column: 7)
!1682 = !DILocation(line: 642, column: 20, scope: !1681)
!1683 = !DILocation(line: 642, column: 32, scope: !1681)
!1684 = !DILocation(line: 642, column: 7, scope: !1619)
!1685 = !DILocation(line: 644, column: 17, scope: !1686)
!1686 = distinct !DILexicalBlock(scope: !1681, file: !3, line: 643, column: 5)
!1687 = !DILocation(line: 644, column: 30, scope: !1686)
!1688 = !DILocation(line: 644, column: 7, scope: !1686)
!1689 = !DILocation(line: 645, column: 7, scope: !1686)
!1690 = !DILocation(line: 649, column: 1, scope: !1619)
!1691 = distinct !DISubprogram(name: "print_filename", scope: !3, file: !3, line: 550, type: !1692, isLocal: true, isDefinition: true, scopeLine: 551, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1694)
!1692 = !DISubroutineType(types: !1693)
!1693 = !{null, !93, !71}
!1694 = !{!1695, !1696}
!1695 = !DILocalVariable(name: "file", arg: 1, scope: !1691, file: !3, line: 550, type: !93)
!1696 = !DILocalVariable(name: "escape", arg: 2, scope: !1691, file: !3, line: 550, type: !71)
!1697 = !DILocation(line: 550, column: 29, scope: !1691)
!1698 = !DILocation(line: 550, column: 40, scope: !1691)
!1699 = !DILocation(line: 552, column: 7, scope: !1691)
!1700 = !DILocation(line: 558, column: 10, scope: !1691)
!1701 = !DILocation(line: 558, column: 3, scope: !1691)
!1702 = !DILocation(line: 554, column: 7, scope: !1703)
!1703 = distinct !DILexicalBlock(scope: !1704, file: !3, line: 553, column: 5)
!1704 = distinct !DILexicalBlock(scope: !1691, file: !3, line: 552, column: 7)
!1705 = !DILocation(line: 555, column: 7, scope: !1703)
!1706 = !DILocation(line: 560, column: 15, scope: !1707)
!1707 = distinct !DILexicalBlock(scope: !1691, file: !3, line: 559, column: 5)
!1708 = !DILocation(line: 560, column: 7, scope: !1707)
!1709 = !DILocation(line: 563, column: 11, scope: !1710)
!1710 = distinct !DILexicalBlock(scope: !1707, file: !3, line: 561, column: 9)
!1711 = !DILocation(line: 564, column: 11, scope: !1710)
!1712 = !DILocation(line: 567, column: 11, scope: !1710)
!1713 = !DILocation(line: 568, column: 11, scope: !1710)
!1714 = !DILocation(line: 108, column: 23, scope: !1397, inlinedAt: !1715)
!1715 = distinct !DILocation(line: 571, column: 11, scope: !1710)
!1716 = !DILocation(line: 110, column: 10, scope: !1397, inlinedAt: !1715)
!1717 = !DILocation(line: 574, column: 11, scope: !1707)
!1718 = distinct !{!1718, !1701, !1719}
!1719 = !DILocation(line: 575, column: 5, scope: !1691)
!1720 = !DILocation(line: 576, column: 1, scope: !1691)
!1721 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !232, file: !232, line: 51, type: !810, isLocal: false, isDefinition: true, scopeLine: 52, flags: DIFlagPrototyped, isOptimized: true, unit: !227, retainedNodes: !1722)
!1722 = !{!1723}
!1723 = !DILocalVariable(name: "file", arg: 1, scope: !1721, file: !232, line: 51, type: !93)
!1724 = !DILocation(line: 51, column: 41, scope: !1721)
!1725 = !DILocation(line: 53, column: 13, scope: !1721)
!1726 = !DILocation(line: 54, column: 1, scope: !1721)
!1727 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !232, file: !232, line: 88, type: !1728, isLocal: false, isDefinition: true, scopeLine: 89, flags: DIFlagPrototyped, isOptimized: true, unit: !227, retainedNodes: !1730)
!1728 = !DISubroutineType(types: !1729)
!1729 = !{null, !71}
!1730 = !{!1731}
!1731 = !DILocalVariable(name: "ignore", arg: 1, scope: !1727, file: !232, line: 88, type: !71)
!1732 = !DILocation(line: 88, column: 37, scope: !1727)
!1733 = !DILocation(line: 90, column: 16, scope: !1727)
!1734 = !DILocation(line: 91, column: 1, scope: !1727)
!1735 = distinct !DISubprogram(name: "close_stdout", scope: !232, file: !232, line: 117, type: !842, isLocal: false, isDefinition: true, scopeLine: 118, flags: DIFlagPrototyped, isOptimized: true, unit: !227, retainedNodes: !1736)
!1736 = !{!1737}
!1737 = !DILocalVariable(name: "write_error", scope: !1738, file: !232, line: 122, type: !93)
!1738 = distinct !DILexicalBlock(scope: !1739, file: !232, line: 121, column: 5)
!1739 = distinct !DILexicalBlock(scope: !1735, file: !232, line: 119, column: 7)
!1740 = !DILocation(line: 119, column: 21, scope: !1739)
!1741 = !DILocation(line: 119, column: 7, scope: !1739)
!1742 = !DILocation(line: 119, column: 29, scope: !1739)
!1743 = !DILocation(line: 120, column: 7, scope: !1739)
!1744 = !DILocation(line: 120, column: 12, scope: !1739)
!1745 = !{i8 0, i8 2}
!1746 = !DILocation(line: 120, column: 25, scope: !1739)
!1747 = !DILocation(line: 120, column: 28, scope: !1739)
!1748 = !DILocation(line: 120, column: 34, scope: !1739)
!1749 = !DILocation(line: 119, column: 7, scope: !1735)
!1750 = !DILocation(line: 122, column: 33, scope: !1738)
!1751 = !DILocation(line: 122, column: 19, scope: !1738)
!1752 = !DILocation(line: 123, column: 11, scope: !1753)
!1753 = distinct !DILexicalBlock(scope: !1738, file: !232, line: 123, column: 11)
!1754 = !DILocation(line: 0, scope: !1753)
!1755 = !DILocation(line: 123, column: 11, scope: !1738)
!1756 = !DILocation(line: 124, column: 36, scope: !1753)
!1757 = !DILocation(line: 124, column: 9, scope: !1753)
!1758 = !DILocation(line: 127, column: 9, scope: !1753)
!1759 = !DILocation(line: 129, column: 14, scope: !1738)
!1760 = !DILocation(line: 129, column: 7, scope: !1738)
!1761 = !DILocation(line: 134, column: 42, scope: !1762)
!1762 = distinct !DILexicalBlock(scope: !1735, file: !232, line: 134, column: 7)
!1763 = !DILocation(line: 134, column: 28, scope: !1762)
!1764 = !DILocation(line: 134, column: 50, scope: !1762)
!1765 = !DILocation(line: 134, column: 7, scope: !1735)
!1766 = !DILocation(line: 135, column: 12, scope: !1762)
!1767 = !DILocation(line: 135, column: 5, scope: !1762)
!1768 = !DILocation(line: 136, column: 1, scope: !1735)
!1769 = distinct !DISubprogram(name: "sha1_init_ctx", scope: !243, file: !243, line: 62, type: !1770, isLocal: false, isDefinition: true, scopeLine: 63, flags: DIFlagPrototyped, isOptimized: true, unit: !235, retainedNodes: !1790)
!1770 = !DISubroutineType(types: !1771)
!1771 = !{null, !1772}
!1772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1773, size: 64)
!1773 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sha1_ctx", file: !1774, line: 40, size: 1280, elements: !1775)
!1774 = !DIFile(filename: "./lib/sha1.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!1775 = !{!1776, !1777, !1778, !1779, !1780, !1781, !1785, !1786}
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "A", scope: !1773, file: !1774, line: 42, baseType: !239, size: 32)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "B", scope: !1773, file: !1774, line: 43, baseType: !239, size: 32, offset: 32)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "C", scope: !1773, file: !1774, line: 44, baseType: !239, size: 32, offset: 64)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "D", scope: !1773, file: !1774, line: 45, baseType: !239, size: 32, offset: 96)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "E", scope: !1773, file: !1774, line: 46, baseType: !239, size: 32, offset: 128)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "total", scope: !1773, file: !1774, line: 48, baseType: !1782, size: 64, offset: 160)
!1782 = !DICompositeType(tag: DW_TAG_array_type, baseType: !239, size: 64, elements: !1783)
!1783 = !{!1784}
!1784 = !DISubrange(count: 2)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !1773, file: !1774, line: 49, baseType: !239, size: 32, offset: 224)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !1773, file: !1774, line: 50, baseType: !1787, size: 1024, offset: 256)
!1787 = !DICompositeType(tag: DW_TAG_array_type, baseType: !239, size: 1024, elements: !1788)
!1788 = !{!1789}
!1789 = !DISubrange(count: 32)
!1790 = !{!1791}
!1791 = !DILocalVariable(name: "ctx", arg: 1, scope: !1769, file: !243, line: 62, type: !1772)
!1792 = !DILocation(line: 62, column: 33, scope: !1769)
!1793 = !DILocation(line: 64, column: 10, scope: !1769)
!1794 = !DILocation(line: 68, column: 8, scope: !1769)
!1795 = !DILocation(line: 68, column: 10, scope: !1769)
!1796 = !DILocation(line: 72, column: 1, scope: !1769)
!1797 = distinct !DISubprogram(name: "sha1_read_ctx", scope: !243, file: !243, line: 86, type: !1798, isLocal: false, isDefinition: true, scopeLine: 87, flags: DIFlagPrototyped, isOptimized: true, unit: !235, retainedNodes: !1802)
!1798 = !DISubroutineType(types: !1799)
!1799 = !{!61, !1800, !61}
!1800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1801, size: 64)
!1801 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1773)
!1802 = !{!1803, !1804, !1805}
!1803 = !DILocalVariable(name: "ctx", arg: 1, scope: !1797, file: !243, line: 86, type: !1800)
!1804 = !DILocalVariable(name: "resbuf", arg: 2, scope: !1797, file: !243, line: 86, type: !61)
!1805 = !DILocalVariable(name: "r", scope: !1797, file: !243, line: 88, type: !59)
!1806 = !DILocation(line: 86, column: 39, scope: !1797)
!1807 = !DILocation(line: 86, column: 50, scope: !1797)
!1808 = !DILocation(line: 88, column: 9, scope: !1797)
!1809 = !DILocation(line: 89, column: 38, scope: !1797)
!1810 = !{!1811, !1044, i64 0}
!1811 = !{!"sha1_ctx", !1044, i64 0, !1044, i64 4, !1044, i64 8, !1044, i64 12, !1044, i64 16, !837, i64 20, !1044, i64 28, !837, i64 32}
!1812 = !DILocalVariable(name: "__bsx", arg: 1, scope: !1813, file: !1814, line: 49, type: !241)
!1813 = distinct !DISubprogram(name: "__bswap_32", scope: !1814, file: !1814, line: 49, type: !1815, isLocal: true, isDefinition: true, scopeLine: 50, flags: DIFlagPrototyped, isOptimized: true, unit: !235, retainedNodes: !1817)
!1814 = !DIFile(filename: "/usr/include/bits/byteswap.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!1815 = !DISubroutineType(types: !1816)
!1816 = !{!241, !241}
!1817 = !{!1812}
!1818 = !DILocation(line: 49, column: 24, scope: !1813, inlinedAt: !1819)
!1819 = distinct !DILocation(line: 89, column: 38, scope: !1797)
!1820 = !DILocation(line: 54, column: 10, scope: !1813, inlinedAt: !1819)
!1821 = !DILocalVariable(name: "cp", arg: 1, scope: !1822, file: !243, line: 78, type: !59)
!1822 = distinct !DISubprogram(name: "set_uint32", scope: !243, file: !243, line: 78, type: !1823, isLocal: true, isDefinition: true, scopeLine: 79, flags: DIFlagPrototyped, isOptimized: true, unit: !235, retainedNodes: !1825)
!1823 = !DISubroutineType(types: !1824)
!1824 = !{null, !59, !239}
!1825 = !{!1821, !1826}
!1826 = !DILocalVariable(name: "v", arg: 2, scope: !1822, file: !243, line: 78, type: !239)
!1827 = !DILocation(line: 78, column: 19, scope: !1822, inlinedAt: !1828)
!1828 = distinct !DILocation(line: 89, column: 3, scope: !1797)
!1829 = !DILocation(line: 78, column: 32, scope: !1822, inlinedAt: !1828)
!1830 = !DILocation(line: 80, column: 3, scope: !1822, inlinedAt: !1828)
!1831 = !DILocation(line: 90, column: 17, scope: !1797)
!1832 = !DILocation(line: 90, column: 38, scope: !1797)
!1833 = !{!1811, !1044, i64 4}
!1834 = !DILocation(line: 49, column: 24, scope: !1813, inlinedAt: !1835)
!1835 = distinct !DILocation(line: 90, column: 38, scope: !1797)
!1836 = !DILocation(line: 54, column: 10, scope: !1813, inlinedAt: !1835)
!1837 = !DILocation(line: 78, column: 19, scope: !1822, inlinedAt: !1838)
!1838 = distinct !DILocation(line: 90, column: 3, scope: !1797)
!1839 = !DILocation(line: 78, column: 32, scope: !1822, inlinedAt: !1838)
!1840 = !DILocation(line: 80, column: 3, scope: !1822, inlinedAt: !1838)
!1841 = !DILocation(line: 91, column: 17, scope: !1797)
!1842 = !DILocation(line: 91, column: 38, scope: !1797)
!1843 = !{!1811, !1044, i64 8}
!1844 = !DILocation(line: 49, column: 24, scope: !1813, inlinedAt: !1845)
!1845 = distinct !DILocation(line: 91, column: 38, scope: !1797)
!1846 = !DILocation(line: 54, column: 10, scope: !1813, inlinedAt: !1845)
!1847 = !DILocation(line: 78, column: 19, scope: !1822, inlinedAt: !1848)
!1848 = distinct !DILocation(line: 91, column: 3, scope: !1797)
!1849 = !DILocation(line: 78, column: 32, scope: !1822, inlinedAt: !1848)
!1850 = !DILocation(line: 80, column: 3, scope: !1822, inlinedAt: !1848)
!1851 = !DILocation(line: 92, column: 17, scope: !1797)
!1852 = !DILocation(line: 92, column: 38, scope: !1797)
!1853 = !{!1811, !1044, i64 12}
!1854 = !DILocation(line: 49, column: 24, scope: !1813, inlinedAt: !1855)
!1855 = distinct !DILocation(line: 92, column: 38, scope: !1797)
!1856 = !DILocation(line: 54, column: 10, scope: !1813, inlinedAt: !1855)
!1857 = !DILocation(line: 78, column: 19, scope: !1822, inlinedAt: !1858)
!1858 = distinct !DILocation(line: 92, column: 3, scope: !1797)
!1859 = !DILocation(line: 78, column: 32, scope: !1822, inlinedAt: !1858)
!1860 = !DILocation(line: 80, column: 3, scope: !1822, inlinedAt: !1858)
!1861 = !DILocation(line: 93, column: 17, scope: !1797)
!1862 = !DILocation(line: 93, column: 38, scope: !1797)
!1863 = !{!1811, !1044, i64 16}
!1864 = !DILocation(line: 49, column: 24, scope: !1813, inlinedAt: !1865)
!1865 = distinct !DILocation(line: 93, column: 38, scope: !1797)
!1866 = !DILocation(line: 54, column: 10, scope: !1813, inlinedAt: !1865)
!1867 = !DILocation(line: 78, column: 19, scope: !1822, inlinedAt: !1868)
!1868 = distinct !DILocation(line: 93, column: 3, scope: !1797)
!1869 = !DILocation(line: 78, column: 32, scope: !1822, inlinedAt: !1868)
!1870 = !DILocation(line: 80, column: 3, scope: !1822, inlinedAt: !1868)
!1871 = !DILocation(line: 95, column: 3, scope: !1797)
!1872 = distinct !DISubprogram(name: "sha1_finish_ctx", scope: !243, file: !243, line: 101, type: !1873, isLocal: false, isDefinition: true, scopeLine: 102, flags: DIFlagPrototyped, isOptimized: true, unit: !235, retainedNodes: !1875)
!1873 = !DISubroutineType(types: !1874)
!1874 = !{!61, !1772, !61}
!1875 = !{!1876, !1877, !1878, !1879}
!1876 = !DILocalVariable(name: "ctx", arg: 1, scope: !1872, file: !243, line: 101, type: !1772)
!1877 = !DILocalVariable(name: "resbuf", arg: 2, scope: !1872, file: !243, line: 101, type: !61)
!1878 = !DILocalVariable(name: "bytes", scope: !1872, file: !243, line: 104, type: !239)
!1879 = !DILocalVariable(name: "size", scope: !1872, file: !243, line: 105, type: !62)
!1880 = !DILocation(line: 101, column: 35, scope: !1872)
!1881 = !DILocation(line: 101, column: 46, scope: !1872)
!1882 = !DILocation(line: 104, column: 25, scope: !1872)
!1883 = !{!1811, !1044, i64 28}
!1884 = !DILocation(line: 104, column: 12, scope: !1872)
!1885 = !DILocation(line: 105, column: 24, scope: !1872)
!1886 = !DILocation(line: 105, column: 17, scope: !1872)
!1887 = !DILocation(line: 105, column: 10, scope: !1872)
!1888 = !DILocation(line: 108, column: 3, scope: !1872)
!1889 = !DILocation(line: 108, column: 17, scope: !1872)
!1890 = !DILocation(line: 109, column: 21, scope: !1891)
!1891 = distinct !DILexicalBlock(scope: !1872, file: !243, line: 109, column: 7)
!1892 = !DILocation(line: 0, scope: !1872)
!1893 = !DILocation(line: 109, column: 7, scope: !1872)
!1894 = !DILocation(line: 110, column: 5, scope: !1891)
!1895 = !DILocation(line: 113, column: 27, scope: !1872)
!1896 = !DILocation(line: 49, column: 24, scope: !1813, inlinedAt: !1897)
!1897 = distinct !DILocation(line: 113, column: 27, scope: !1872)
!1898 = !DILocation(line: 54, column: 10, scope: !1813, inlinedAt: !1897)
!1899 = !DILocation(line: 113, column: 20, scope: !1872)
!1900 = !DILocation(line: 113, column: 3, scope: !1872)
!1901 = !DILocation(line: 113, column: 25, scope: !1872)
!1902 = !DILocation(line: 114, column: 27, scope: !1872)
!1903 = !DILocation(line: 49, column: 24, scope: !1813, inlinedAt: !1904)
!1904 = distinct !DILocation(line: 114, column: 27, scope: !1872)
!1905 = !DILocation(line: 54, column: 10, scope: !1813, inlinedAt: !1904)
!1906 = !DILocation(line: 114, column: 20, scope: !1872)
!1907 = !DILocation(line: 114, column: 3, scope: !1872)
!1908 = !DILocation(line: 114, column: 25, scope: !1872)
!1909 = !DILocation(line: 116, column: 12, scope: !1872)
!1910 = !DILocation(line: 116, column: 63, scope: !1872)
!1911 = !DILocation(line: 116, column: 67, scope: !1872)
!1912 = !DILocation(line: 116, column: 3, scope: !1872)
!1913 = !DILocation(line: 119, column: 41, scope: !1872)
!1914 = !DILocation(line: 119, column: 3, scope: !1872)
!1915 = !DILocation(line: 86, column: 39, scope: !1797, inlinedAt: !1916)
!1916 = distinct !DILocation(line: 121, column: 10, scope: !1872)
!1917 = !DILocation(line: 86, column: 50, scope: !1797, inlinedAt: !1916)
!1918 = !DILocation(line: 88, column: 9, scope: !1797, inlinedAt: !1916)
!1919 = !DILocation(line: 89, column: 38, scope: !1797, inlinedAt: !1916)
!1920 = !DILocation(line: 49, column: 24, scope: !1813, inlinedAt: !1921)
!1921 = distinct !DILocation(line: 89, column: 38, scope: !1797, inlinedAt: !1916)
!1922 = !DILocation(line: 54, column: 10, scope: !1813, inlinedAt: !1921)
!1923 = !DILocation(line: 78, column: 19, scope: !1822, inlinedAt: !1924)
!1924 = distinct !DILocation(line: 89, column: 3, scope: !1797, inlinedAt: !1916)
!1925 = !DILocation(line: 78, column: 32, scope: !1822, inlinedAt: !1924)
!1926 = !DILocation(line: 80, column: 3, scope: !1822, inlinedAt: !1924)
!1927 = !DILocation(line: 90, column: 17, scope: !1797, inlinedAt: !1916)
!1928 = !DILocation(line: 90, column: 38, scope: !1797, inlinedAt: !1916)
!1929 = !DILocation(line: 49, column: 24, scope: !1813, inlinedAt: !1930)
!1930 = distinct !DILocation(line: 90, column: 38, scope: !1797, inlinedAt: !1916)
!1931 = !DILocation(line: 54, column: 10, scope: !1813, inlinedAt: !1930)
!1932 = !DILocation(line: 78, column: 19, scope: !1822, inlinedAt: !1933)
!1933 = distinct !DILocation(line: 90, column: 3, scope: !1797, inlinedAt: !1916)
!1934 = !DILocation(line: 78, column: 32, scope: !1822, inlinedAt: !1933)
!1935 = !DILocation(line: 80, column: 3, scope: !1822, inlinedAt: !1933)
!1936 = !DILocation(line: 91, column: 17, scope: !1797, inlinedAt: !1916)
!1937 = !DILocation(line: 91, column: 38, scope: !1797, inlinedAt: !1916)
!1938 = !DILocation(line: 49, column: 24, scope: !1813, inlinedAt: !1939)
!1939 = distinct !DILocation(line: 91, column: 38, scope: !1797, inlinedAt: !1916)
!1940 = !DILocation(line: 54, column: 10, scope: !1813, inlinedAt: !1939)
!1941 = !DILocation(line: 78, column: 19, scope: !1822, inlinedAt: !1942)
!1942 = distinct !DILocation(line: 91, column: 3, scope: !1797, inlinedAt: !1916)
!1943 = !DILocation(line: 78, column: 32, scope: !1822, inlinedAt: !1942)
!1944 = !DILocation(line: 80, column: 3, scope: !1822, inlinedAt: !1942)
!1945 = !DILocation(line: 92, column: 17, scope: !1797, inlinedAt: !1916)
!1946 = !DILocation(line: 92, column: 38, scope: !1797, inlinedAt: !1916)
!1947 = !DILocation(line: 49, column: 24, scope: !1813, inlinedAt: !1948)
!1948 = distinct !DILocation(line: 92, column: 38, scope: !1797, inlinedAt: !1916)
!1949 = !DILocation(line: 54, column: 10, scope: !1813, inlinedAt: !1948)
!1950 = !DILocation(line: 78, column: 19, scope: !1822, inlinedAt: !1951)
!1951 = distinct !DILocation(line: 92, column: 3, scope: !1797, inlinedAt: !1916)
!1952 = !DILocation(line: 78, column: 32, scope: !1822, inlinedAt: !1951)
!1953 = !DILocation(line: 80, column: 3, scope: !1822, inlinedAt: !1951)
!1954 = !DILocation(line: 93, column: 17, scope: !1797, inlinedAt: !1916)
!1955 = !DILocation(line: 93, column: 38, scope: !1797, inlinedAt: !1916)
!1956 = !DILocation(line: 49, column: 24, scope: !1813, inlinedAt: !1957)
!1957 = distinct !DILocation(line: 93, column: 38, scope: !1797, inlinedAt: !1916)
!1958 = !DILocation(line: 54, column: 10, scope: !1813, inlinedAt: !1957)
!1959 = !DILocation(line: 78, column: 19, scope: !1822, inlinedAt: !1960)
!1960 = distinct !DILocation(line: 93, column: 3, scope: !1797, inlinedAt: !1916)
!1961 = !DILocation(line: 78, column: 32, scope: !1822, inlinedAt: !1960)
!1962 = !DILocation(line: 80, column: 3, scope: !1822, inlinedAt: !1960)
!1963 = !DILocation(line: 121, column: 3, scope: !1872)
!1964 = distinct !DISubprogram(name: "sha1_process_block", scope: !243, file: !243, line: 317, type: !1965, isLocal: false, isDefinition: true, scopeLine: 318, flags: DIFlagPrototyped, isOptimized: true, unit: !235, retainedNodes: !1967)
!1965 = !DISubroutineType(types: !1966)
!1966 = !{null, !931, !62, !1772}
!1967 = !{!1968, !1969, !1970, !1971, !1974, !1975, !1976, !1978, !1979, !1980, !1981, !1982, !1983, !1984, !1986}
!1968 = !DILocalVariable(name: "buffer", arg: 1, scope: !1964, file: !243, line: 317, type: !931)
!1969 = !DILocalVariable(name: "len", arg: 2, scope: !1964, file: !243, line: 317, type: !62)
!1970 = !DILocalVariable(name: "ctx", arg: 3, scope: !1964, file: !243, line: 317, type: !1772)
!1971 = !DILocalVariable(name: "words", scope: !1964, file: !243, line: 319, type: !1972)
!1972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1973, size: 64)
!1973 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !239)
!1974 = !DILocalVariable(name: "nwords", scope: !1964, file: !243, line: 320, type: !62)
!1975 = !DILocalVariable(name: "endp", scope: !1964, file: !243, line: 321, type: !1972)
!1976 = !DILocalVariable(name: "x", scope: !1964, file: !243, line: 322, type: !1977)
!1977 = !DICompositeType(tag: DW_TAG_array_type, baseType: !239, size: 512, elements: !194)
!1978 = !DILocalVariable(name: "a", scope: !1964, file: !243, line: 323, type: !239)
!1979 = !DILocalVariable(name: "b", scope: !1964, file: !243, line: 324, type: !239)
!1980 = !DILocalVariable(name: "c", scope: !1964, file: !243, line: 325, type: !239)
!1981 = !DILocalVariable(name: "d", scope: !1964, file: !243, line: 326, type: !239)
!1982 = !DILocalVariable(name: "e", scope: !1964, file: !243, line: 327, type: !239)
!1983 = !DILocalVariable(name: "lolen", scope: !1964, file: !243, line: 328, type: !239)
!1984 = !DILocalVariable(name: "tm", scope: !1985, file: !243, line: 351, type: !239)
!1985 = distinct !DILexicalBlock(scope: !1964, file: !243, line: 350, column: 5)
!1986 = !DILocalVariable(name: "t", scope: !1985, file: !243, line: 352, type: !64)
!1987 = !DILocation(line: 317, column: 33, scope: !1964)
!1988 = !DILocation(line: 317, column: 48, scope: !1964)
!1989 = !DILocation(line: 317, column: 70, scope: !1964)
!1990 = !DILocation(line: 319, column: 27, scope: !1964)
!1991 = !DILocation(line: 319, column: 19, scope: !1964)
!1992 = !DILocation(line: 320, column: 23, scope: !1964)
!1993 = !DILocation(line: 320, column: 10, scope: !1964)
!1994 = !DILocation(line: 321, column: 32, scope: !1964)
!1995 = !DILocation(line: 321, column: 19, scope: !1964)
!1996 = !DILocation(line: 322, column: 3, scope: !1964)
!1997 = !DILocation(line: 322, column: 12, scope: !1964)
!1998 = !DILocation(line: 323, column: 21, scope: !1964)
!1999 = !DILocation(line: 323, column: 12, scope: !1964)
!2000 = !DILocation(line: 324, column: 21, scope: !1964)
!2001 = !DILocation(line: 324, column: 12, scope: !1964)
!2002 = !DILocation(line: 325, column: 12, scope: !1964)
!2003 = !DILocation(line: 326, column: 12, scope: !1964)
!2004 = !DILocation(line: 327, column: 12, scope: !1964)
!2005 = !DILocation(line: 328, column: 20, scope: !1964)
!2006 = !DILocation(line: 328, column: 12, scope: !1964)
!2007 = !DILocation(line: 333, column: 3, scope: !1964)
!2008 = !DILocation(line: 333, column: 17, scope: !1964)
!2009 = !DILocation(line: 334, column: 25, scope: !1964)
!2010 = !DILocation(line: 334, column: 54, scope: !1964)
!2011 = !DILocation(line: 334, column: 39, scope: !1964)
!2012 = !DILocation(line: 334, column: 37, scope: !1964)
!2013 = !DILocation(line: 334, column: 3, scope: !1964)
!2014 = !DILocation(line: 334, column: 17, scope: !1964)
!2015 = !DILocation(line: 349, column: 16, scope: !1964)
!2016 = !DILocation(line: 349, column: 3, scope: !1964)
!2017 = !DILocation(line: 352, column: 11, scope: !1985)
!2018 = !DILocation(line: 355, column: 18, scope: !2019)
!2019 = distinct !DILexicalBlock(scope: !2020, file: !243, line: 354, column: 9)
!2020 = distinct !DILexicalBlock(scope: !2021, file: !243, line: 353, column: 7)
!2021 = distinct !DILexicalBlock(scope: !1985, file: !243, line: 353, column: 7)
!2022 = !DILocation(line: 49, column: 24, scope: !1813, inlinedAt: !2023)
!2023 = distinct !DILocation(line: 355, column: 18, scope: !2019)
!2024 = !DILocation(line: 54, column: 10, scope: !1813, inlinedAt: !2023)
!2025 = !DILocation(line: 355, column: 16, scope: !2019)
!2026 = !DILocation(line: 356, column: 16, scope: !2019)
!2027 = !DILocation(line: 353, column: 7, scope: !2021)
!2028 = !DILocation(line: 359, column: 7, scope: !2029)
!2029 = distinct !DILexicalBlock(scope: !1985, file: !243, line: 359, column: 7)
!2030 = !DILocation(line: 360, column: 7, scope: !2031)
!2031 = distinct !DILexicalBlock(scope: !1985, file: !243, line: 360, column: 7)
!2032 = !DILocation(line: 361, column: 7, scope: !2033)
!2033 = distinct !DILexicalBlock(scope: !1985, file: !243, line: 361, column: 7)
!2034 = !DILocation(line: 362, column: 7, scope: !2035)
!2035 = distinct !DILexicalBlock(scope: !1985, file: !243, line: 362, column: 7)
!2036 = !DILocation(line: 363, column: 7, scope: !2037)
!2037 = distinct !DILexicalBlock(scope: !1985, file: !243, line: 363, column: 7)
!2038 = !DILocation(line: 364, column: 7, scope: !2039)
!2039 = distinct !DILexicalBlock(scope: !1985, file: !243, line: 364, column: 7)
!2040 = !DILocation(line: 365, column: 7, scope: !2041)
!2041 = distinct !DILexicalBlock(scope: !1985, file: !243, line: 365, column: 7)
!2042 = !DILocation(line: 366, column: 7, scope: !2043)
!2043 = distinct !DILexicalBlock(scope: !1985, file: !243, line: 366, column: 7)
!2044 = !DILocation(line: 367, column: 7, scope: !2045)
!2045 = distinct !DILexicalBlock(scope: !1985, file: !243, line: 367, column: 7)
!2046 = !DILocation(line: 368, column: 7, scope: !2047)
!2047 = distinct !DILexicalBlock(scope: !1985, file: !243, line: 368, column: 7)
!2048 = !DILocation(line: 369, column: 7, scope: !2049)
!2049 = distinct !DILexicalBlock(scope: !1985, file: !243, line: 369, column: 7)
!2050 = !DILocation(line: 370, column: 7, scope: !2051)
!2051 = distinct !DILexicalBlock(scope: !1985, file: !243, line: 370, column: 7)
!2052 = !DILocation(line: 371, column: 7, scope: !2053)
!2053 = distinct !DILexicalBlock(scope: !1985, file: !243, line: 371, column: 7)
!2054 = !DILocation(line: 372, column: 7, scope: !2055)
!2055 = distinct !DILexicalBlock(scope: !1985, file: !243, line: 372, column: 7)
!2056 = !DILocation(line: 373, column: 7, scope: !2057)
!2057 = distinct !DILexicalBlock(scope: !1985, file: !243, line: 373, column: 7)
!2058 = !DILocation(line: 374, column: 7, scope: !2059)
!2059 = distinct !DILexicalBlock(scope: !1985, file: !243, line: 374, column: 7)
!2060 = !DILocation(line: 375, column: 7, scope: !2061)
!2061 = distinct !DILexicalBlock(scope: !1985, file: !243, line: 375, column: 7)
!2062 = !DILocation(line: 351, column: 16, scope: !1985)
!2063 = !DILocation(line: 376, column: 7, scope: !2064)
!2064 = distinct !DILexicalBlock(scope: !1985, file: !243, line: 376, column: 7)
!2065 = !DILocation(line: 377, column: 7, scope: !2066)
!2066 = distinct !DILexicalBlock(scope: !1985, file: !243, line: 377, column: 7)
!2067 = !DILocation(line: 378, column: 7, scope: !2068)
!2068 = distinct !DILexicalBlock(scope: !1985, file: !243, line: 378, column: 7)
!2069 = !DILocation(line: 379, column: 7, scope: !2070)
!2070 = distinct !DILexicalBlock(scope: !1985, file: !243, line: 379, column: 7)
!2071 = !DILocation(line: 380, column: 7, scope: !2072)
!2072 = distinct !DILexicalBlock(scope: !1985, file: !243, line: 380, column: 7)
!2073 = !DILocation(line: 381, column: 7, scope: !2074)
!2074 = distinct !DILexicalBlock(scope: !1985, file: !243, line: 381, column: 7)
!2075 = !DILocation(line: 382, column: 7, scope: !2076)
!2076 = distinct !DILexicalBlock(scope: !1985, file: !243, line: 382, column: 7)
!2077 = !DILocation(line: 383, column: 7, scope: !2078)
!2078 = distinct !DILexicalBlock(scope: !1985, file: !243, line: 383, column: 7)
!2079 = !DILocation(line: 384, column: 7, scope: !2080)
!2080 = distinct !DILexicalBlock(scope: !1985, file: !243, line: 384, column: 7)
!2081 = !DILocation(line: 385, column: 7, scope: !2082)
!2082 = distinct !DILexicalBlock(scope: !1985, file: !243, line: 385, column: 7)
!2083 = !DILocation(line: 386, column: 7, scope: !2084)
!2084 = distinct !DILexicalBlock(scope: !1985, file: !243, line: 386, column: 7)
!2085 = !DILocation(line: 387, column: 7, scope: !2086)
!2086 = distinct !DILexicalBlock(scope: !1985, file: !243, line: 387, column: 7)
!2087 = !DILocation(line: 388, column: 7, scope: !2088)
!2088 = distinct !DILexicalBlock(scope: !1985, file: !243, line: 388, column: 7)
!2089 = !DILocation(line: 389, column: 7, scope: !2090)
!2090 = distinct !DILexicalBlock(scope: !1985, file: !243, line: 389, column: 7)
!2091 = !DILocation(line: 390, column: 7, scope: !2092)
!2092 = distinct !DILexicalBlock(scope: !1985, file: !243, line: 390, column: 7)
!2093 = !DILocation(line: 391, column: 7, scope: !2094)
!2094 = distinct !DILexicalBlock(scope: !1985, file: !243, line: 391, column: 7)
!2095 = !DILocation(line: 392, column: 7, scope: !2096)
!2096 = distinct !DILexicalBlock(scope: !1985, file: !243, line: 392, column: 7)
!2097 = !DILocation(line: 393, column: 7, scope: !2098)
!2098 = distinct !DILexicalBlock(scope: !1985, file: !243, line: 393, column: 7)
!2099 = !DILocation(line: 394, column: 7, scope: !2100)
!2100 = distinct !DILexicalBlock(scope: !1985, file: !243, line: 394, column: 7)
!2101 = !DILocation(line: 395, column: 7, scope: !2102)
!2102 = distinct !DILexicalBlock(scope: !1985, file: !243, line: 395, column: 7)
!2103 = !DILocation(line: 396, column: 7, scope: !2104)
!2104 = distinct !DILexicalBlock(scope: !1985, file: !243, line: 396, column: 7)
!2105 = !DILocation(line: 397, column: 7, scope: !2106)
!2106 = distinct !DILexicalBlock(scope: !1985, file: !243, line: 397, column: 7)
!2107 = !DILocation(line: 398, column: 7, scope: !2108)
!2108 = distinct !DILexicalBlock(scope: !1985, file: !243, line: 398, column: 7)
!2109 = !DILocation(line: 399, column: 7, scope: !2110)
!2110 = distinct !DILexicalBlock(scope: !1985, file: !243, line: 399, column: 7)
!2111 = !DILocation(line: 400, column: 7, scope: !2112)
!2112 = distinct !DILexicalBlock(scope: !1985, file: !243, line: 400, column: 7)
!2113 = !DILocation(line: 401, column: 7, scope: !2114)
!2114 = distinct !DILexicalBlock(scope: !1985, file: !243, line: 401, column: 7)
!2115 = !DILocation(line: 402, column: 7, scope: !2116)
!2116 = distinct !DILexicalBlock(scope: !1985, file: !243, line: 402, column: 7)
!2117 = !DILocation(line: 403, column: 7, scope: !2118)
!2118 = distinct !DILexicalBlock(scope: !1985, file: !243, line: 403, column: 7)
!2119 = !DILocation(line: 404, column: 7, scope: !2120)
!2120 = distinct !DILexicalBlock(scope: !1985, file: !243, line: 404, column: 7)
!2121 = !DILocation(line: 405, column: 7, scope: !2122)
!2122 = distinct !DILexicalBlock(scope: !1985, file: !243, line: 405, column: 7)
!2123 = !DILocation(line: 406, column: 7, scope: !2124)
!2124 = distinct !DILexicalBlock(scope: !1985, file: !243, line: 406, column: 7)
!2125 = !DILocation(line: 407, column: 7, scope: !2126)
!2126 = distinct !DILexicalBlock(scope: !1985, file: !243, line: 407, column: 7)
!2127 = !DILocation(line: 408, column: 7, scope: !2128)
!2128 = distinct !DILexicalBlock(scope: !1985, file: !243, line: 408, column: 7)
!2129 = !DILocation(line: 409, column: 7, scope: !2130)
!2130 = distinct !DILexicalBlock(scope: !1985, file: !243, line: 409, column: 7)
!2131 = !DILocation(line: 410, column: 7, scope: !2132)
!2132 = distinct !DILexicalBlock(scope: !1985, file: !243, line: 410, column: 7)
!2133 = !DILocation(line: 411, column: 7, scope: !2134)
!2134 = distinct !DILexicalBlock(scope: !1985, file: !243, line: 411, column: 7)
!2135 = !DILocation(line: 412, column: 7, scope: !2136)
!2136 = distinct !DILexicalBlock(scope: !1985, file: !243, line: 412, column: 7)
!2137 = !DILocation(line: 413, column: 7, scope: !2138)
!2138 = distinct !DILexicalBlock(scope: !1985, file: !243, line: 413, column: 7)
!2139 = !DILocation(line: 414, column: 7, scope: !2140)
!2140 = distinct !DILexicalBlock(scope: !1985, file: !243, line: 414, column: 7)
!2141 = !DILocation(line: 415, column: 7, scope: !2142)
!2142 = distinct !DILexicalBlock(scope: !1985, file: !243, line: 415, column: 7)
!2143 = !DILocation(line: 416, column: 7, scope: !2144)
!2144 = distinct !DILexicalBlock(scope: !1985, file: !243, line: 416, column: 7)
!2145 = !DILocation(line: 417, column: 7, scope: !2146)
!2146 = distinct !DILexicalBlock(scope: !1985, file: !243, line: 417, column: 7)
!2147 = !DILocation(line: 418, column: 7, scope: !2148)
!2148 = distinct !DILexicalBlock(scope: !1985, file: !243, line: 418, column: 7)
!2149 = !DILocation(line: 419, column: 7, scope: !2150)
!2150 = distinct !DILexicalBlock(scope: !1985, file: !243, line: 419, column: 7)
!2151 = !DILocation(line: 420, column: 7, scope: !2152)
!2152 = distinct !DILexicalBlock(scope: !1985, file: !243, line: 420, column: 7)
!2153 = !DILocation(line: 421, column: 7, scope: !2154)
!2154 = distinct !DILexicalBlock(scope: !1985, file: !243, line: 421, column: 7)
!2155 = !DILocation(line: 422, column: 7, scope: !2156)
!2156 = distinct !DILexicalBlock(scope: !1985, file: !243, line: 422, column: 7)
!2157 = !DILocation(line: 423, column: 7, scope: !2158)
!2158 = distinct !DILexicalBlock(scope: !1985, file: !243, line: 423, column: 7)
!2159 = !DILocation(line: 424, column: 7, scope: !2160)
!2160 = distinct !DILexicalBlock(scope: !1985, file: !243, line: 424, column: 7)
!2161 = !DILocation(line: 425, column: 7, scope: !2162)
!2162 = distinct !DILexicalBlock(scope: !1985, file: !243, line: 425, column: 7)
!2163 = !DILocation(line: 426, column: 7, scope: !2164)
!2164 = distinct !DILexicalBlock(scope: !1985, file: !243, line: 426, column: 7)
!2165 = !DILocation(line: 427, column: 7, scope: !2166)
!2166 = distinct !DILexicalBlock(scope: !1985, file: !243, line: 427, column: 7)
!2167 = !DILocation(line: 428, column: 7, scope: !2168)
!2168 = distinct !DILexicalBlock(scope: !1985, file: !243, line: 428, column: 7)
!2169 = !DILocation(line: 429, column: 7, scope: !2170)
!2170 = distinct !DILexicalBlock(scope: !1985, file: !243, line: 429, column: 7)
!2171 = !DILocation(line: 430, column: 7, scope: !2172)
!2172 = distinct !DILexicalBlock(scope: !1985, file: !243, line: 430, column: 7)
!2173 = !DILocation(line: 431, column: 7, scope: !2174)
!2174 = distinct !DILexicalBlock(scope: !1985, file: !243, line: 431, column: 7)
!2175 = !DILocation(line: 432, column: 7, scope: !2176)
!2176 = distinct !DILexicalBlock(scope: !1985, file: !243, line: 432, column: 7)
!2177 = !DILocation(line: 433, column: 7, scope: !2178)
!2178 = distinct !DILexicalBlock(scope: !1985, file: !243, line: 433, column: 7)
!2179 = !DILocation(line: 434, column: 7, scope: !2180)
!2180 = distinct !DILexicalBlock(scope: !1985, file: !243, line: 434, column: 7)
!2181 = !DILocation(line: 435, column: 7, scope: !2182)
!2182 = distinct !DILexicalBlock(scope: !1985, file: !243, line: 435, column: 7)
!2183 = !DILocation(line: 436, column: 7, scope: !2184)
!2184 = distinct !DILexicalBlock(scope: !1985, file: !243, line: 436, column: 7)
!2185 = !DILocation(line: 437, column: 7, scope: !2186)
!2186 = distinct !DILexicalBlock(scope: !1985, file: !243, line: 437, column: 7)
!2187 = !DILocation(line: 438, column: 7, scope: !2188)
!2188 = distinct !DILexicalBlock(scope: !1985, file: !243, line: 438, column: 7)
!2189 = !DILocation(line: 440, column: 18, scope: !1985)
!2190 = !DILocation(line: 441, column: 18, scope: !1985)
!2191 = distinct !{!2191, !2016, !2192}
!2192 = !DILocation(line: 445, column: 5, scope: !1964)
!2193 = !DILocation(line: 446, column: 1, scope: !1964)
!2194 = distinct !DISubprogram(name: "sha1_stream", scope: !243, file: !243, line: 133, type: !2195, isLocal: false, isDefinition: true, scopeLine: 134, flags: DIFlagPrototyped, isOptimized: true, unit: !235, retainedNodes: !2231)
!2195 = !DISubroutineType(types: !2196)
!2196 = !{!64, !2197, !61}
!2197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2198, size: 64)
!2198 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !100, line: 7, baseType: !2199)
!2199 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !102, line: 49, size: 1728, elements: !2200)
!2200 = !{!2201, !2202, !2203, !2204, !2205, !2206, !2207, !2208, !2209, !2210, !2211, !2212, !2213, !2214, !2216, !2217, !2218, !2219, !2220, !2221, !2222, !2223, !2224, !2225, !2226, !2227, !2228, !2229, !2230}
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2199, file: !102, line: 51, baseType: !64, size: 32)
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2199, file: !102, line: 54, baseType: !59, size: 64, offset: 64)
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2199, file: !102, line: 55, baseType: !59, size: 64, offset: 128)
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2199, file: !102, line: 56, baseType: !59, size: 64, offset: 192)
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2199, file: !102, line: 57, baseType: !59, size: 64, offset: 256)
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2199, file: !102, line: 58, baseType: !59, size: 64, offset: 320)
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2199, file: !102, line: 59, baseType: !59, size: 64, offset: 384)
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2199, file: !102, line: 60, baseType: !59, size: 64, offset: 448)
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2199, file: !102, line: 61, baseType: !59, size: 64, offset: 512)
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2199, file: !102, line: 64, baseType: !59, size: 64, offset: 576)
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2199, file: !102, line: 65, baseType: !59, size: 64, offset: 640)
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2199, file: !102, line: 66, baseType: !59, size: 64, offset: 704)
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2199, file: !102, line: 68, baseType: !117, size: 64, offset: 768)
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2199, file: !102, line: 70, baseType: !2215, size: 64, offset: 832)
!2215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2199, size: 64)
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2199, file: !102, line: 72, baseType: !64, size: 32, offset: 896)
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2199, file: !102, line: 73, baseType: !64, size: 32, offset: 928)
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2199, file: !102, line: 74, baseType: !124, size: 64, offset: 960)
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2199, file: !102, line: 77, baseType: !67, size: 16, offset: 1024)
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2199, file: !102, line: 78, baseType: !128, size: 8, offset: 1040)
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2199, file: !102, line: 79, baseType: !130, size: 8, offset: 1048)
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2199, file: !102, line: 81, baseType: !134, size: 64, offset: 1088)
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2199, file: !102, line: 89, baseType: !137, size: 64, offset: 1152)
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2199, file: !102, line: 91, baseType: !139, size: 64, offset: 1216)
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2199, file: !102, line: 92, baseType: !142, size: 64, offset: 1280)
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2199, file: !102, line: 93, baseType: !2215, size: 64, offset: 1344)
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2199, file: !102, line: 94, baseType: !61, size: 64, offset: 1408)
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2199, file: !102, line: 95, baseType: !62, size: 64, offset: 1472)
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2199, file: !102, line: 96, baseType: !64, size: 32, offset: 1536)
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2199, file: !102, line: 98, baseType: !149, size: 160, offset: 1568)
!2231 = !{!2232, !2233, !2234, !2235, !2236, !2237}
!2232 = !DILocalVariable(name: "stream", arg: 1, scope: !2194, file: !243, line: 133, type: !2197)
!2233 = !DILocalVariable(name: "resblock", arg: 2, scope: !2194, file: !243, line: 133, type: !61)
!2234 = !DILocalVariable(name: "buffer", scope: !2194, file: !243, line: 141, type: !59)
!2235 = !DILocalVariable(name: "ctx", scope: !2194, file: !243, line: 145, type: !1773)
!2236 = !DILocalVariable(name: "sum", scope: !2194, file: !243, line: 147, type: !62)
!2237 = !DILocalVariable(name: "n", scope: !2238, file: !243, line: 155, type: !62)
!2238 = distinct !DILexicalBlock(scope: !2194, file: !243, line: 151, column: 5)
!2239 = !DILocation(line: 133, column: 20, scope: !2194)
!2240 = !DILocation(line: 133, column: 34, scope: !2194)
!2241 = !DILocation(line: 141, column: 18, scope: !2194)
!2242 = !DILocation(line: 141, column: 9, scope: !2194)
!2243 = !DILocation(line: 142, column: 8, scope: !2244)
!2244 = distinct !DILexicalBlock(scope: !2194, file: !243, line: 142, column: 7)
!2245 = !DILocation(line: 142, column: 7, scope: !2194)
!2246 = !DILocation(line: 145, column: 3, scope: !2194)
!2247 = !DILocation(line: 145, column: 19, scope: !2194)
!2248 = !DILocation(line: 62, column: 33, scope: !1769, inlinedAt: !2249)
!2249 = distinct !DILocation(line: 146, column: 3, scope: !2194)
!2250 = !DILocation(line: 64, column: 10, scope: !1769, inlinedAt: !2249)
!2251 = !DILocation(line: 68, column: 8, scope: !1769, inlinedAt: !2249)
!2252 = !DILocation(line: 70, column: 19, scope: !1769, inlinedAt: !2249)
!2253 = !DILocation(line: 70, column: 3, scope: !1769, inlinedAt: !2249)
!2254 = !DILocation(line: 71, column: 8, scope: !1769, inlinedAt: !2249)
!2255 = !DILocation(line: 68, column: 10, scope: !1769, inlinedAt: !2249)
!2256 = !DILocation(line: 150, column: 3, scope: !2194)
!2257 = !DILocation(line: 0, scope: !2258)
!2258 = distinct !DILexicalBlock(scope: !2238, file: !243, line: 160, column: 9)
!2259 = !DILocation(line: 147, column: 10, scope: !2194)
!2260 = !DILocalVariable(name: "__stream", arg: 1, scope: !2261, file: !1112, line: 128, type: !2197)
!2261 = distinct !DISubprogram(name: "feof_unlocked", scope: !1112, file: !1112, line: 128, type: !2262, isLocal: false, isDefinition: true, scopeLine: 129, flags: DIFlagPrototyped, isOptimized: true, unit: !235, retainedNodes: !2264)
!2262 = !DISubroutineType(types: !2263)
!2263 = !{!64, !2197}
!2264 = !{!2260}
!2265 = !DILocation(line: 128, column: 1, scope: !2261, inlinedAt: !2266)
!2266 = distinct !DILocation(line: 166, column: 15, scope: !2267)
!2267 = distinct !DILexicalBlock(scope: !2258, file: !243, line: 166, column: 15)
!2268 = !DILocation(line: 130, column: 10, scope: !2261, inlinedAt: !2266)
!2269 = !DILocation(line: 166, column: 15, scope: !2267)
!2270 = !DILocation(line: 166, column: 15, scope: !2258)
!2271 = !DILocation(line: 169, column: 15, scope: !2258)
!2272 = !DILocation(line: 155, column: 14, scope: !2238)
!2273 = !DILocation(line: 171, column: 15, scope: !2258)
!2274 = !DILocation(line: 173, column: 19, scope: !2275)
!2275 = distinct !DILexicalBlock(scope: !2258, file: !243, line: 173, column: 15)
!2276 = !DILocation(line: 173, column: 15, scope: !2258)
!2277 = !DILocation(line: 176, column: 17, scope: !2278)
!2278 = distinct !DILexicalBlock(scope: !2258, file: !243, line: 176, column: 15)
!2279 = !DILocation(line: 176, column: 15, scope: !2258)
!2280 = distinct !{!2280, !2281, !2282}
!2281 = !DILocation(line: 159, column: 7, scope: !2238)
!2282 = !DILocation(line: 188, column: 9, scope: !2238)
!2283 = !DILocalVariable(name: "__stream", arg: 1, scope: !2284, file: !1112, line: 135, type: !2197)
!2284 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1112, file: !1112, line: 135, type: !2262, isLocal: false, isDefinition: true, scopeLine: 136, flags: DIFlagPrototyped, isOptimized: true, unit: !235, retainedNodes: !2285)
!2285 = !{!2283}
!2286 = !DILocation(line: 135, column: 1, scope: !2284, inlinedAt: !2287)
!2287 = distinct !DILocation(line: 181, column: 19, scope: !2288)
!2288 = distinct !DILexicalBlock(scope: !2289, file: !243, line: 181, column: 19)
!2289 = distinct !DILexicalBlock(scope: !2278, file: !243, line: 177, column: 13)
!2290 = !DILocation(line: 137, column: 10, scope: !2284, inlinedAt: !2287)
!2291 = !DILocation(line: 181, column: 19, scope: !2288)
!2292 = !DILocation(line: 181, column: 19, scope: !2289)
!2293 = !DILocation(line: 183, column: 19, scope: !2294)
!2294 = distinct !DILexicalBlock(scope: !2288, file: !243, line: 182, column: 17)
!2295 = !DILocation(line: 193, column: 7, scope: !2238)
!2296 = !DILocation(line: 199, column: 11, scope: !2297)
!2297 = distinct !DILexicalBlock(scope: !2194, file: !243, line: 199, column: 7)
!2298 = !DILocation(line: 199, column: 7, scope: !2194)
!2299 = !DILocation(line: 200, column: 5, scope: !2297)
!2300 = !DILocation(line: 101, column: 35, scope: !1872, inlinedAt: !2301)
!2301 = distinct !DILocation(line: 203, column: 3, scope: !2194)
!2302 = !DILocation(line: 101, column: 46, scope: !1872, inlinedAt: !2301)
!2303 = !DILocation(line: 104, column: 25, scope: !1872, inlinedAt: !2301)
!2304 = !DILocation(line: 104, column: 12, scope: !1872, inlinedAt: !2301)
!2305 = !DILocation(line: 105, column: 24, scope: !1872, inlinedAt: !2301)
!2306 = !DILocation(line: 105, column: 17, scope: !1872, inlinedAt: !2301)
!2307 = !DILocation(line: 105, column: 10, scope: !1872, inlinedAt: !2301)
!2308 = !DILocation(line: 108, column: 17, scope: !1872, inlinedAt: !2301)
!2309 = !DILocation(line: 109, column: 21, scope: !1891, inlinedAt: !2301)
!2310 = !DILocation(line: 0, scope: !1872, inlinedAt: !2301)
!2311 = !DILocation(line: 109, column: 7, scope: !1872, inlinedAt: !2301)
!2312 = !DILocation(line: 110, column: 5, scope: !1891, inlinedAt: !2301)
!2313 = !DILocation(line: 113, column: 27, scope: !1872, inlinedAt: !2301)
!2314 = !DILocation(line: 49, column: 24, scope: !1813, inlinedAt: !2315)
!2315 = distinct !DILocation(line: 113, column: 27, scope: !1872, inlinedAt: !2301)
!2316 = !DILocation(line: 54, column: 10, scope: !1813, inlinedAt: !2315)
!2317 = !DILocation(line: 113, column: 20, scope: !1872, inlinedAt: !2301)
!2318 = !DILocation(line: 113, column: 3, scope: !1872, inlinedAt: !2301)
!2319 = !DILocation(line: 113, column: 25, scope: !1872, inlinedAt: !2301)
!2320 = !DILocation(line: 114, column: 27, scope: !1872, inlinedAt: !2301)
!2321 = !DILocation(line: 49, column: 24, scope: !1813, inlinedAt: !2322)
!2322 = distinct !DILocation(line: 114, column: 27, scope: !1872, inlinedAt: !2301)
!2323 = !DILocation(line: 54, column: 10, scope: !1813, inlinedAt: !2322)
!2324 = !DILocation(line: 114, column: 20, scope: !1872, inlinedAt: !2301)
!2325 = !DILocation(line: 114, column: 3, scope: !1872, inlinedAt: !2301)
!2326 = !DILocation(line: 114, column: 25, scope: !1872, inlinedAt: !2301)
!2327 = !DILocation(line: 116, column: 12, scope: !1872, inlinedAt: !2301)
!2328 = !DILocation(line: 116, column: 63, scope: !1872, inlinedAt: !2301)
!2329 = !DILocation(line: 116, column: 67, scope: !1872, inlinedAt: !2301)
!2330 = !DILocation(line: 116, column: 3, scope: !1872, inlinedAt: !2301)
!2331 = !DILocation(line: 119, column: 41, scope: !1872, inlinedAt: !2301)
!2332 = !DILocation(line: 119, column: 3, scope: !1872, inlinedAt: !2301)
!2333 = !DILocation(line: 86, column: 39, scope: !1797, inlinedAt: !2334)
!2334 = distinct !DILocation(line: 121, column: 10, scope: !1872, inlinedAt: !2301)
!2335 = !DILocation(line: 86, column: 50, scope: !1797, inlinedAt: !2334)
!2336 = !DILocation(line: 88, column: 9, scope: !1797, inlinedAt: !2334)
!2337 = !DILocation(line: 49, column: 24, scope: !1813, inlinedAt: !2338)
!2338 = distinct !DILocation(line: 89, column: 38, scope: !1797, inlinedAt: !2334)
!2339 = !DILocation(line: 78, column: 19, scope: !1822, inlinedAt: !2340)
!2340 = distinct !DILocation(line: 89, column: 3, scope: !1797, inlinedAt: !2334)
!2341 = !DILocation(line: 78, column: 32, scope: !1822, inlinedAt: !2340)
!2342 = !DILocation(line: 49, column: 24, scope: !1813, inlinedAt: !2343)
!2343 = distinct !DILocation(line: 90, column: 38, scope: !1797, inlinedAt: !2334)
!2344 = !DILocation(line: 78, column: 19, scope: !1822, inlinedAt: !2345)
!2345 = distinct !DILocation(line: 90, column: 3, scope: !1797, inlinedAt: !2334)
!2346 = !DILocation(line: 78, column: 32, scope: !1822, inlinedAt: !2345)
!2347 = !DILocation(line: 49, column: 24, scope: !1813, inlinedAt: !2348)
!2348 = distinct !DILocation(line: 91, column: 38, scope: !1797, inlinedAt: !2334)
!2349 = !DILocation(line: 78, column: 19, scope: !1822, inlinedAt: !2350)
!2350 = distinct !DILocation(line: 91, column: 3, scope: !1797, inlinedAt: !2334)
!2351 = !DILocation(line: 78, column: 32, scope: !1822, inlinedAt: !2350)
!2352 = !DILocation(line: 89, column: 38, scope: !1797, inlinedAt: !2334)
!2353 = !DILocation(line: 49, column: 24, scope: !1813, inlinedAt: !2354)
!2354 = distinct !DILocation(line: 92, column: 38, scope: !1797, inlinedAt: !2334)
!2355 = !DILocation(line: 54, column: 10, scope: !1813, inlinedAt: !2338)
!2356 = !DILocation(line: 78, column: 19, scope: !1822, inlinedAt: !2357)
!2357 = distinct !DILocation(line: 92, column: 3, scope: !1797, inlinedAt: !2334)
!2358 = !DILocation(line: 78, column: 32, scope: !1822, inlinedAt: !2357)
!2359 = !DILocation(line: 80, column: 3, scope: !1822, inlinedAt: !2340)
!2360 = !DILocation(line: 93, column: 17, scope: !1797, inlinedAt: !2334)
!2361 = !DILocation(line: 93, column: 38, scope: !1797, inlinedAt: !2334)
!2362 = !DILocation(line: 49, column: 24, scope: !1813, inlinedAt: !2363)
!2363 = distinct !DILocation(line: 93, column: 38, scope: !1797, inlinedAt: !2334)
!2364 = !DILocation(line: 54, column: 10, scope: !1813, inlinedAt: !2363)
!2365 = !DILocation(line: 78, column: 19, scope: !1822, inlinedAt: !2366)
!2366 = distinct !DILocation(line: 93, column: 3, scope: !1797, inlinedAt: !2334)
!2367 = !DILocation(line: 78, column: 32, scope: !1822, inlinedAt: !2366)
!2368 = !DILocation(line: 80, column: 3, scope: !1822, inlinedAt: !2366)
!2369 = !DILocation(line: 204, column: 3, scope: !2194)
!2370 = !DILocation(line: 205, column: 3, scope: !2194)
!2371 = !DILocation(line: 206, column: 1, scope: !2194)
!2372 = distinct !DISubprogram(name: "sha1_process_bytes", scope: !243, file: !243, line: 230, type: !1965, isLocal: false, isDefinition: true, scopeLine: 231, flags: DIFlagPrototyped, isOptimized: true, unit: !235, retainedNodes: !2373)
!2373 = !{!2374, !2375, !2376, !2377, !2380, !2381}
!2374 = !DILocalVariable(name: "buffer", arg: 1, scope: !2372, file: !243, line: 230, type: !931)
!2375 = !DILocalVariable(name: "len", arg: 2, scope: !2372, file: !243, line: 230, type: !62)
!2376 = !DILocalVariable(name: "ctx", arg: 3, scope: !2372, file: !243, line: 230, type: !1772)
!2377 = !DILocalVariable(name: "left_over", scope: !2378, file: !243, line: 236, type: !62)
!2378 = distinct !DILexicalBlock(scope: !2379, file: !243, line: 235, column: 5)
!2379 = distinct !DILexicalBlock(scope: !2372, file: !243, line: 234, column: 7)
!2380 = !DILocalVariable(name: "add", scope: !2378, file: !243, line: 237, type: !62)
!2381 = !DILocalVariable(name: "left_over", scope: !2382, file: !243, line: 282, type: !62)
!2382 = distinct !DILexicalBlock(scope: !2383, file: !243, line: 281, column: 5)
!2383 = distinct !DILexicalBlock(scope: !2372, file: !243, line: 280, column: 7)
!2384 = !DILocation(line: 230, column: 33, scope: !2372)
!2385 = !DILocation(line: 230, column: 48, scope: !2372)
!2386 = !DILocation(line: 230, column: 70, scope: !2372)
!2387 = !DILocation(line: 234, column: 12, scope: !2379)
!2388 = !DILocation(line: 234, column: 19, scope: !2379)
!2389 = !DILocation(line: 234, column: 7, scope: !2372)
!2390 = !DILocation(line: 236, column: 26, scope: !2378)
!2391 = !DILocation(line: 236, column: 14, scope: !2378)
!2392 = !DILocation(line: 237, column: 24, scope: !2378)
!2393 = !DILocation(line: 237, column: 36, scope: !2378)
!2394 = !DILocation(line: 237, column: 20, scope: !2378)
!2395 = !DILocation(line: 237, column: 14, scope: !2378)
!2396 = !DILocation(line: 239, column: 16, scope: !2378)
!2397 = !DILocation(line: 239, column: 7, scope: !2378)
!2398 = !DILocation(line: 240, column: 19, scope: !2378)
!2399 = !DILocation(line: 242, column: 23, scope: !2400)
!2400 = distinct !DILexicalBlock(scope: !2378, file: !243, line: 242, column: 11)
!2401 = !DILocation(line: 242, column: 11, scope: !2378)
!2402 = !DILocation(line: 244, column: 56, scope: !2403)
!2403 = distinct !DILexicalBlock(scope: !2400, file: !243, line: 243, column: 9)
!2404 = !DILocation(line: 244, column: 44, scope: !2403)
!2405 = !DILocation(line: 244, column: 11, scope: !2403)
!2406 = !DILocation(line: 246, column: 23, scope: !2403)
!2407 = !DILocation(line: 250, column: 54, scope: !2403)
!2408 = !DILocation(line: 250, column: 61, scope: !2403)
!2409 = !DILocation(line: 250, column: 20, scope: !2403)
!2410 = !DILocation(line: 251, column: 19, scope: !2403)
!2411 = !DILocation(line: 249, column: 11, scope: !2403)
!2412 = !DILocation(line: 252, column: 9, scope: !2403)
!2413 = !DILocation(line: 254, column: 38, scope: !2378)
!2414 = !DILocation(line: 255, column: 11, scope: !2378)
!2415 = !DILocation(line: 256, column: 5, scope: !2378)
!2416 = !DILocation(line: 259, column: 11, scope: !2417)
!2417 = distinct !DILexicalBlock(scope: !2372, file: !243, line: 259, column: 7)
!2418 = !DILocation(line: 259, column: 7, scope: !2372)
!2419 = !DILocation(line: 263, column: 11, scope: !2420)
!2420 = distinct !DILexicalBlock(scope: !2421, file: !243, line: 263, column: 11)
!2421 = distinct !DILexicalBlock(scope: !2417, file: !243, line: 260, column: 5)
!2422 = !DILocation(line: 263, column: 11, scope: !2421)
!2423 = !DILocation(line: 264, column: 20, scope: !2420)
!2424 = !DILocation(line: 264, column: 9, scope: !2420)
!2425 = !DILocation(line: 266, column: 33, scope: !2426)
!2426 = distinct !DILexicalBlock(scope: !2420, file: !243, line: 265, column: 11)
!2427 = !DILocation(line: 266, column: 13, scope: !2426)
!2428 = !DILocation(line: 267, column: 44, scope: !2426)
!2429 = !DILocation(line: 268, column: 17, scope: !2426)
!2430 = distinct !{!2430, !2424, !2431}
!2431 = !DILocation(line: 269, column: 11, scope: !2420)
!2432 = !DILocation(line: 273, column: 43, scope: !2433)
!2433 = distinct !DILexicalBlock(scope: !2420, file: !243, line: 272, column: 9)
!2434 = !DILocation(line: 273, column: 11, scope: !2433)
!2435 = !DILocation(line: 274, column: 42, scope: !2433)
!2436 = !DILocation(line: 275, column: 15, scope: !2433)
!2437 = !DILocation(line: 0, scope: !2378)
!2438 = !DILocation(line: 280, column: 11, scope: !2383)
!2439 = !DILocation(line: 280, column: 7, scope: !2372)
!2440 = !DILocation(line: 282, column: 31, scope: !2382)
!2441 = !DILocation(line: 282, column: 26, scope: !2382)
!2442 = !DILocation(line: 282, column: 14, scope: !2382)
!2443 = !DILocation(line: 284, column: 31, scope: !2382)
!2444 = !DILocation(line: 284, column: 16, scope: !2382)
!2445 = !DILocation(line: 284, column: 7, scope: !2382)
!2446 = !DILocation(line: 285, column: 17, scope: !2382)
!2447 = !DILocation(line: 286, column: 21, scope: !2448)
!2448 = distinct !DILexicalBlock(scope: !2382, file: !243, line: 286, column: 11)
!2449 = !DILocation(line: 286, column: 11, scope: !2382)
!2450 = !DILocation(line: 288, column: 11, scope: !2451)
!2451 = distinct !DILexicalBlock(scope: !2448, file: !243, line: 287, column: 9)
!2452 = !DILocation(line: 289, column: 21, scope: !2451)
!2453 = !DILocation(line: 292, column: 33, scope: !2451)
!2454 = !DILocation(line: 292, column: 11, scope: !2451)
!2455 = !DILocation(line: 293, column: 9, scope: !2451)
!2456 = !DILocation(line: 0, scope: !2382)
!2457 = !DILocation(line: 294, column: 21, scope: !2382)
!2458 = !DILocation(line: 294, column: 19, scope: !2382)
!2459 = !DILocation(line: 295, column: 5, scope: !2382)
!2460 = !DILocation(line: 296, column: 1, scope: !2372)
!2461 = distinct !DISubprogram(name: "sha1_buffer", scope: !243, file: !243, line: 215, type: !2462, isLocal: false, isDefinition: true, scopeLine: 216, flags: DIFlagPrototyped, isOptimized: true, unit: !235, retainedNodes: !2464)
!2462 = !DISubroutineType(types: !2463)
!2463 = !{!61, !93, !62, !61}
!2464 = !{!2465, !2466, !2467, !2468}
!2465 = !DILocalVariable(name: "buffer", arg: 1, scope: !2461, file: !243, line: 215, type: !93)
!2466 = !DILocalVariable(name: "len", arg: 2, scope: !2461, file: !243, line: 215, type: !62)
!2467 = !DILocalVariable(name: "resblock", arg: 3, scope: !2461, file: !243, line: 215, type: !61)
!2468 = !DILocalVariable(name: "ctx", scope: !2461, file: !243, line: 217, type: !1773)
!2469 = !DILocation(line: 215, column: 26, scope: !2461)
!2470 = !DILocation(line: 215, column: 41, scope: !2461)
!2471 = !DILocation(line: 215, column: 52, scope: !2461)
!2472 = !DILocation(line: 217, column: 3, scope: !2461)
!2473 = !DILocation(line: 217, column: 19, scope: !2461)
!2474 = !DILocation(line: 62, column: 33, scope: !1769, inlinedAt: !2475)
!2475 = distinct !DILocation(line: 220, column: 3, scope: !2461)
!2476 = !DILocation(line: 64, column: 10, scope: !1769, inlinedAt: !2475)
!2477 = !DILocation(line: 68, column: 8, scope: !1769, inlinedAt: !2475)
!2478 = !DILocation(line: 70, column: 19, scope: !1769, inlinedAt: !2475)
!2479 = !DILocation(line: 70, column: 3, scope: !1769, inlinedAt: !2475)
!2480 = !DILocation(line: 71, column: 8, scope: !1769, inlinedAt: !2475)
!2481 = !DILocation(line: 68, column: 10, scope: !1769, inlinedAt: !2475)
!2482 = !DILocation(line: 223, column: 3, scope: !2461)
!2483 = !DILocation(line: 101, column: 35, scope: !1872, inlinedAt: !2484)
!2484 = distinct !DILocation(line: 226, column: 10, scope: !2461)
!2485 = !DILocation(line: 101, column: 46, scope: !1872, inlinedAt: !2484)
!2486 = !DILocation(line: 104, column: 25, scope: !1872, inlinedAt: !2484)
!2487 = !DILocation(line: 104, column: 12, scope: !1872, inlinedAt: !2484)
!2488 = !DILocation(line: 105, column: 24, scope: !1872, inlinedAt: !2484)
!2489 = !DILocation(line: 105, column: 17, scope: !1872, inlinedAt: !2484)
!2490 = !DILocation(line: 105, column: 10, scope: !1872, inlinedAt: !2484)
!2491 = !DILocation(line: 108, column: 17, scope: !1872, inlinedAt: !2484)
!2492 = !DILocation(line: 109, column: 21, scope: !1891, inlinedAt: !2484)
!2493 = !DILocation(line: 0, scope: !1872, inlinedAt: !2484)
!2494 = !DILocation(line: 109, column: 7, scope: !1872, inlinedAt: !2484)
!2495 = !DILocation(line: 110, column: 5, scope: !1891, inlinedAt: !2484)
!2496 = !DILocation(line: 113, column: 27, scope: !1872, inlinedAt: !2484)
!2497 = !DILocation(line: 49, column: 24, scope: !1813, inlinedAt: !2498)
!2498 = distinct !DILocation(line: 113, column: 27, scope: !1872, inlinedAt: !2484)
!2499 = !DILocation(line: 54, column: 10, scope: !1813, inlinedAt: !2498)
!2500 = !DILocation(line: 113, column: 20, scope: !1872, inlinedAt: !2484)
!2501 = !DILocation(line: 113, column: 3, scope: !1872, inlinedAt: !2484)
!2502 = !DILocation(line: 113, column: 25, scope: !1872, inlinedAt: !2484)
!2503 = !DILocation(line: 114, column: 27, scope: !1872, inlinedAt: !2484)
!2504 = !DILocation(line: 49, column: 24, scope: !1813, inlinedAt: !2505)
!2505 = distinct !DILocation(line: 114, column: 27, scope: !1872, inlinedAt: !2484)
!2506 = !DILocation(line: 54, column: 10, scope: !1813, inlinedAt: !2505)
!2507 = !DILocation(line: 114, column: 20, scope: !1872, inlinedAt: !2484)
!2508 = !DILocation(line: 114, column: 3, scope: !1872, inlinedAt: !2484)
!2509 = !DILocation(line: 114, column: 25, scope: !1872, inlinedAt: !2484)
!2510 = !DILocation(line: 116, column: 12, scope: !1872, inlinedAt: !2484)
!2511 = !DILocation(line: 116, column: 63, scope: !1872, inlinedAt: !2484)
!2512 = !DILocation(line: 116, column: 67, scope: !1872, inlinedAt: !2484)
!2513 = !DILocation(line: 116, column: 3, scope: !1872, inlinedAt: !2484)
!2514 = !DILocation(line: 119, column: 41, scope: !1872, inlinedAt: !2484)
!2515 = !DILocation(line: 119, column: 3, scope: !1872, inlinedAt: !2484)
!2516 = !DILocation(line: 86, column: 39, scope: !1797, inlinedAt: !2517)
!2517 = distinct !DILocation(line: 121, column: 10, scope: !1872, inlinedAt: !2484)
!2518 = !DILocation(line: 86, column: 50, scope: !1797, inlinedAt: !2517)
!2519 = !DILocation(line: 88, column: 9, scope: !1797, inlinedAt: !2517)
!2520 = !DILocation(line: 49, column: 24, scope: !1813, inlinedAt: !2521)
!2521 = distinct !DILocation(line: 89, column: 38, scope: !1797, inlinedAt: !2517)
!2522 = !DILocation(line: 78, column: 19, scope: !1822, inlinedAt: !2523)
!2523 = distinct !DILocation(line: 89, column: 3, scope: !1797, inlinedAt: !2517)
!2524 = !DILocation(line: 78, column: 32, scope: !1822, inlinedAt: !2523)
!2525 = !DILocation(line: 49, column: 24, scope: !1813, inlinedAt: !2526)
!2526 = distinct !DILocation(line: 90, column: 38, scope: !1797, inlinedAt: !2517)
!2527 = !DILocation(line: 78, column: 19, scope: !1822, inlinedAt: !2528)
!2528 = distinct !DILocation(line: 90, column: 3, scope: !1797, inlinedAt: !2517)
!2529 = !DILocation(line: 78, column: 32, scope: !1822, inlinedAt: !2528)
!2530 = !DILocation(line: 49, column: 24, scope: !1813, inlinedAt: !2531)
!2531 = distinct !DILocation(line: 91, column: 38, scope: !1797, inlinedAt: !2517)
!2532 = !DILocation(line: 78, column: 19, scope: !1822, inlinedAt: !2533)
!2533 = distinct !DILocation(line: 91, column: 3, scope: !1797, inlinedAt: !2517)
!2534 = !DILocation(line: 78, column: 32, scope: !1822, inlinedAt: !2533)
!2535 = !DILocation(line: 89, column: 38, scope: !1797, inlinedAt: !2517)
!2536 = !DILocation(line: 49, column: 24, scope: !1813, inlinedAt: !2537)
!2537 = distinct !DILocation(line: 92, column: 38, scope: !1797, inlinedAt: !2517)
!2538 = !DILocation(line: 54, column: 10, scope: !1813, inlinedAt: !2521)
!2539 = !DILocation(line: 78, column: 19, scope: !1822, inlinedAt: !2540)
!2540 = distinct !DILocation(line: 92, column: 3, scope: !1797, inlinedAt: !2517)
!2541 = !DILocation(line: 78, column: 32, scope: !1822, inlinedAt: !2540)
!2542 = !DILocation(line: 80, column: 3, scope: !1822, inlinedAt: !2523)
!2543 = !DILocation(line: 93, column: 17, scope: !1797, inlinedAt: !2517)
!2544 = !DILocation(line: 93, column: 38, scope: !1797, inlinedAt: !2517)
!2545 = !DILocation(line: 49, column: 24, scope: !1813, inlinedAt: !2546)
!2546 = distinct !DILocation(line: 93, column: 38, scope: !1797, inlinedAt: !2517)
!2547 = !DILocation(line: 54, column: 10, scope: !1813, inlinedAt: !2546)
!2548 = !DILocation(line: 78, column: 19, scope: !1822, inlinedAt: !2549)
!2549 = distinct !DILocation(line: 93, column: 3, scope: !1797, inlinedAt: !2517)
!2550 = !DILocation(line: 78, column: 32, scope: !1822, inlinedAt: !2549)
!2551 = !DILocation(line: 80, column: 3, scope: !1822, inlinedAt: !2549)
!2552 = !DILocation(line: 227, column: 1, scope: !2461)
!2553 = !DILocation(line: 226, column: 3, scope: !2461)
!2554 = distinct !DISubprogram(name: "fdadvise", scope: !2555, file: !2555, line: 31, type: !2556, isLocal: false, isDefinition: true, scopeLine: 32, flags: DIFlagPrototyped, isOptimized: true, unit: !359, retainedNodes: !2561)
!2555 = !DIFile(filename: "lib/fadvise.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!2556 = !DISubroutineType(types: !2557)
!2557 = !{null, !64, !2558, !2558, !2560}
!2558 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !2559, line: 63, baseType: !124)
!2559 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!2560 = !DIDerivedType(tag: DW_TAG_typedef, name: "fadvice_t", file: !50, line: 52, baseType: !49)
!2561 = !{!2562, !2563, !2564, !2565, !2566}
!2562 = !DILocalVariable(name: "fd", arg: 1, scope: !2554, file: !2555, line: 31, type: !64)
!2563 = !DILocalVariable(name: "offset", arg: 2, scope: !2554, file: !2555, line: 31, type: !2558)
!2564 = !DILocalVariable(name: "len", arg: 3, scope: !2554, file: !2555, line: 31, type: !2558)
!2565 = !DILocalVariable(name: "advice", arg: 4, scope: !2554, file: !2555, line: 31, type: !2560)
!2566 = !DILocalVariable(name: "__x", scope: !2567, file: !2555, line: 34, type: !64)
!2567 = distinct !DILexicalBlock(scope: !2554, file: !2555, line: 34, column: 3)
!2568 = !DILocation(line: 31, column: 15, scope: !2554)
!2569 = !DILocation(line: 31, column: 25, scope: !2554)
!2570 = !DILocation(line: 31, column: 39, scope: !2554)
!2571 = !DILocation(line: 31, column: 54, scope: !2554)
!2572 = !DILocation(line: 34, column: 3, scope: !2567)
!2573 = !DILocation(line: 36, column: 1, scope: !2554)
!2574 = distinct !DISubprogram(name: "fadvise", scope: !2555, file: !2555, line: 39, type: !2575, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !359, retainedNodes: !2611)
!2575 = !DISubroutineType(types: !2576)
!2576 = !{null, !2577, !2560}
!2577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2578, size: 64)
!2578 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !100, line: 7, baseType: !2579)
!2579 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !102, line: 49, size: 1728, elements: !2580)
!2580 = !{!2581, !2582, !2583, !2584, !2585, !2586, !2587, !2588, !2589, !2590, !2591, !2592, !2593, !2594, !2596, !2597, !2598, !2599, !2600, !2601, !2602, !2603, !2604, !2605, !2606, !2607, !2608, !2609, !2610}
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2579, file: !102, line: 51, baseType: !64, size: 32)
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2579, file: !102, line: 54, baseType: !59, size: 64, offset: 64)
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2579, file: !102, line: 55, baseType: !59, size: 64, offset: 128)
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2579, file: !102, line: 56, baseType: !59, size: 64, offset: 192)
!2585 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2579, file: !102, line: 57, baseType: !59, size: 64, offset: 256)
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2579, file: !102, line: 58, baseType: !59, size: 64, offset: 320)
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2579, file: !102, line: 59, baseType: !59, size: 64, offset: 384)
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2579, file: !102, line: 60, baseType: !59, size: 64, offset: 448)
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2579, file: !102, line: 61, baseType: !59, size: 64, offset: 512)
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2579, file: !102, line: 64, baseType: !59, size: 64, offset: 576)
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2579, file: !102, line: 65, baseType: !59, size: 64, offset: 640)
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2579, file: !102, line: 66, baseType: !59, size: 64, offset: 704)
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2579, file: !102, line: 68, baseType: !117, size: 64, offset: 768)
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2579, file: !102, line: 70, baseType: !2595, size: 64, offset: 832)
!2595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2579, size: 64)
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2579, file: !102, line: 72, baseType: !64, size: 32, offset: 896)
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2579, file: !102, line: 73, baseType: !64, size: 32, offset: 928)
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2579, file: !102, line: 74, baseType: !124, size: 64, offset: 960)
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2579, file: !102, line: 77, baseType: !67, size: 16, offset: 1024)
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2579, file: !102, line: 78, baseType: !128, size: 8, offset: 1040)
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2579, file: !102, line: 79, baseType: !130, size: 8, offset: 1048)
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2579, file: !102, line: 81, baseType: !134, size: 64, offset: 1088)
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2579, file: !102, line: 89, baseType: !137, size: 64, offset: 1152)
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2579, file: !102, line: 91, baseType: !139, size: 64, offset: 1216)
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2579, file: !102, line: 92, baseType: !142, size: 64, offset: 1280)
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2579, file: !102, line: 93, baseType: !2595, size: 64, offset: 1344)
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2579, file: !102, line: 94, baseType: !61, size: 64, offset: 1408)
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2579, file: !102, line: 95, baseType: !62, size: 64, offset: 1472)
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2579, file: !102, line: 96, baseType: !64, size: 32, offset: 1536)
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2579, file: !102, line: 98, baseType: !149, size: 160, offset: 1568)
!2611 = !{!2612, !2613}
!2612 = !DILocalVariable(name: "fp", arg: 1, scope: !2574, file: !2555, line: 39, type: !2577)
!2613 = !DILocalVariable(name: "advice", arg: 2, scope: !2574, file: !2555, line: 39, type: !2560)
!2614 = !DILocation(line: 39, column: 16, scope: !2574)
!2615 = !DILocation(line: 39, column: 30, scope: !2574)
!2616 = !DILocation(line: 41, column: 7, scope: !2617)
!2617 = distinct !DILexicalBlock(scope: !2574, file: !2555, line: 41, column: 7)
!2618 = !DILocation(line: 41, column: 7, scope: !2574)
!2619 = !DILocation(line: 42, column: 15, scope: !2617)
!2620 = !DILocation(line: 31, column: 15, scope: !2554, inlinedAt: !2621)
!2621 = distinct !DILocation(line: 42, column: 5, scope: !2617)
!2622 = !DILocation(line: 31, column: 25, scope: !2554, inlinedAt: !2621)
!2623 = !DILocation(line: 31, column: 39, scope: !2554, inlinedAt: !2621)
!2624 = !DILocation(line: 31, column: 54, scope: !2554, inlinedAt: !2621)
!2625 = !DILocation(line: 34, column: 3, scope: !2567, inlinedAt: !2621)
!2626 = !DILocation(line: 42, column: 5, scope: !2617)
!2627 = !DILocation(line: 43, column: 1, scope: !2574)
!2628 = distinct !DISubprogram(name: "fopen_safer", scope: !2629, file: !2629, line: 31, type: !2630, isLocal: false, isDefinition: true, scopeLine: 32, flags: DIFlagPrototyped, isOptimized: true, unit: !362, retainedNodes: !2666)
!2629 = !DIFile(filename: "lib/fopen-safer.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!2630 = !DISubroutineType(types: !2631)
!2631 = !{!2632, !93, !93}
!2632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2633, size: 64)
!2633 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !100, line: 7, baseType: !2634)
!2634 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !102, line: 49, size: 1728, elements: !2635)
!2635 = !{!2636, !2637, !2638, !2639, !2640, !2641, !2642, !2643, !2644, !2645, !2646, !2647, !2648, !2649, !2651, !2652, !2653, !2654, !2655, !2656, !2657, !2658, !2659, !2660, !2661, !2662, !2663, !2664, !2665}
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2634, file: !102, line: 51, baseType: !64, size: 32)
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2634, file: !102, line: 54, baseType: !59, size: 64, offset: 64)
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2634, file: !102, line: 55, baseType: !59, size: 64, offset: 128)
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2634, file: !102, line: 56, baseType: !59, size: 64, offset: 192)
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2634, file: !102, line: 57, baseType: !59, size: 64, offset: 256)
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2634, file: !102, line: 58, baseType: !59, size: 64, offset: 320)
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2634, file: !102, line: 59, baseType: !59, size: 64, offset: 384)
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2634, file: !102, line: 60, baseType: !59, size: 64, offset: 448)
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2634, file: !102, line: 61, baseType: !59, size: 64, offset: 512)
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2634, file: !102, line: 64, baseType: !59, size: 64, offset: 576)
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2634, file: !102, line: 65, baseType: !59, size: 64, offset: 640)
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2634, file: !102, line: 66, baseType: !59, size: 64, offset: 704)
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2634, file: !102, line: 68, baseType: !117, size: 64, offset: 768)
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2634, file: !102, line: 70, baseType: !2650, size: 64, offset: 832)
!2650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2634, size: 64)
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2634, file: !102, line: 72, baseType: !64, size: 32, offset: 896)
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2634, file: !102, line: 73, baseType: !64, size: 32, offset: 928)
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2634, file: !102, line: 74, baseType: !124, size: 64, offset: 960)
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2634, file: !102, line: 77, baseType: !67, size: 16, offset: 1024)
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2634, file: !102, line: 78, baseType: !128, size: 8, offset: 1040)
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2634, file: !102, line: 79, baseType: !130, size: 8, offset: 1048)
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2634, file: !102, line: 81, baseType: !134, size: 64, offset: 1088)
!2658 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2634, file: !102, line: 89, baseType: !137, size: 64, offset: 1152)
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2634, file: !102, line: 91, baseType: !139, size: 64, offset: 1216)
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2634, file: !102, line: 92, baseType: !142, size: 64, offset: 1280)
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2634, file: !102, line: 93, baseType: !2650, size: 64, offset: 1344)
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2634, file: !102, line: 94, baseType: !61, size: 64, offset: 1408)
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2634, file: !102, line: 95, baseType: !62, size: 64, offset: 1472)
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2634, file: !102, line: 96, baseType: !64, size: 32, offset: 1536)
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2634, file: !102, line: 98, baseType: !149, size: 160, offset: 1568)
!2666 = !{!2667, !2668, !2669, !2670, !2673, !2676, !2679}
!2667 = !DILocalVariable(name: "file", arg: 1, scope: !2628, file: !2629, line: 31, type: !93)
!2668 = !DILocalVariable(name: "mode", arg: 2, scope: !2628, file: !2629, line: 31, type: !93)
!2669 = !DILocalVariable(name: "fp", scope: !2628, file: !2629, line: 33, type: !2632)
!2670 = !DILocalVariable(name: "fd", scope: !2671, file: !2629, line: 37, type: !64)
!2671 = distinct !DILexicalBlock(scope: !2672, file: !2629, line: 36, column: 5)
!2672 = distinct !DILexicalBlock(scope: !2628, file: !2629, line: 35, column: 7)
!2673 = !DILocalVariable(name: "f", scope: !2674, file: !2629, line: 41, type: !64)
!2674 = distinct !DILexicalBlock(scope: !2675, file: !2629, line: 40, column: 9)
!2675 = distinct !DILexicalBlock(scope: !2671, file: !2629, line: 39, column: 11)
!2676 = !DILocalVariable(name: "e", scope: !2677, file: !2629, line: 45, type: !64)
!2677 = distinct !DILexicalBlock(scope: !2678, file: !2629, line: 44, column: 13)
!2678 = distinct !DILexicalBlock(scope: !2674, file: !2629, line: 43, column: 15)
!2679 = !DILocalVariable(name: "e", scope: !2680, file: !2629, line: 54, type: !64)
!2680 = distinct !DILexicalBlock(scope: !2681, file: !2629, line: 53, column: 13)
!2681 = distinct !DILexicalBlock(scope: !2674, file: !2629, line: 51, column: 15)
!2682 = !DILocation(line: 31, column: 26, scope: !2628)
!2683 = !DILocation(line: 31, column: 44, scope: !2628)
!2684 = !DILocation(line: 33, column: 14, scope: !2628)
!2685 = !DILocation(line: 33, column: 9, scope: !2628)
!2686 = !DILocation(line: 35, column: 7, scope: !2672)
!2687 = !DILocation(line: 35, column: 7, scope: !2628)
!2688 = !DILocation(line: 37, column: 16, scope: !2671)
!2689 = !DILocation(line: 37, column: 11, scope: !2671)
!2690 = !DILocation(line: 39, column: 19, scope: !2675)
!2691 = !DILocation(line: 41, column: 19, scope: !2674)
!2692 = !DILocation(line: 41, column: 15, scope: !2674)
!2693 = !DILocation(line: 43, column: 17, scope: !2678)
!2694 = !DILocation(line: 43, column: 15, scope: !2674)
!2695 = !DILocation(line: 45, column: 23, scope: !2677)
!2696 = !DILocation(line: 45, column: 19, scope: !2677)
!2697 = !DILocation(line: 46, column: 15, scope: !2677)
!2698 = !DILocation(line: 47, column: 21, scope: !2677)
!2699 = !DILocation(line: 51, column: 15, scope: !2681)
!2700 = !DILocation(line: 51, column: 27, scope: !2681)
!2701 = !DILocation(line: 52, column: 15, scope: !2681)
!2702 = !DILocation(line: 52, column: 26, scope: !2681)
!2703 = !DILocation(line: 52, column: 24, scope: !2681)
!2704 = !DILocation(line: 51, column: 15, scope: !2674)
!2705 = !DILocation(line: 54, column: 23, scope: !2680)
!2706 = !DILocation(line: 54, column: 19, scope: !2680)
!2707 = !DILocation(line: 55, column: 15, scope: !2680)
!2708 = !DILocation(line: 56, column: 21, scope: !2680)
!2709 = !DILocation(line: 0, scope: !2677)
!2710 = !DILocation(line: 63, column: 1, scope: !2628)
!2711 = distinct !DISubprogram(name: "set_program_name", scope: !261, file: !261, line: 39, type: !810, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !257, retainedNodes: !2712)
!2712 = !{!2713, !2714, !2715}
!2713 = !DILocalVariable(name: "argv0", arg: 1, scope: !2711, file: !261, line: 39, type: !93)
!2714 = !DILocalVariable(name: "slash", scope: !2711, file: !261, line: 46, type: !93)
!2715 = !DILocalVariable(name: "base", scope: !2711, file: !261, line: 47, type: !93)
!2716 = !DILocation(line: 39, column: 31, scope: !2711)
!2717 = !DILocation(line: 51, column: 13, scope: !2718)
!2718 = distinct !DILexicalBlock(scope: !2711, file: !261, line: 51, column: 7)
!2719 = !DILocation(line: 51, column: 7, scope: !2711)
!2720 = !DILocation(line: 55, column: 14, scope: !2721)
!2721 = distinct !DILexicalBlock(scope: !2718, file: !261, line: 52, column: 5)
!2722 = !DILocation(line: 54, column: 7, scope: !2721)
!2723 = !DILocation(line: 56, column: 7, scope: !2721)
!2724 = !DILocation(line: 59, column: 11, scope: !2711)
!2725 = !DILocation(line: 46, column: 15, scope: !2711)
!2726 = !DILocation(line: 60, column: 17, scope: !2711)
!2727 = !DILocation(line: 60, column: 33, scope: !2711)
!2728 = !DILocation(line: 60, column: 11, scope: !2711)
!2729 = !DILocation(line: 47, column: 15, scope: !2711)
!2730 = !DILocation(line: 61, column: 12, scope: !2731)
!2731 = distinct !DILexicalBlock(scope: !2711, file: !261, line: 61, column: 7)
!2732 = !DILocation(line: 61, column: 20, scope: !2731)
!2733 = !DILocation(line: 61, column: 25, scope: !2731)
!2734 = !DILocation(line: 61, column: 42, scope: !2731)
!2735 = !DILocation(line: 61, column: 28, scope: !2731)
!2736 = !DILocation(line: 61, column: 61, scope: !2731)
!2737 = !DILocation(line: 61, column: 7, scope: !2711)
!2738 = !DILocation(line: 64, column: 11, scope: !2739)
!2739 = distinct !DILexicalBlock(scope: !2740, file: !261, line: 64, column: 11)
!2740 = distinct !DILexicalBlock(scope: !2731, file: !261, line: 62, column: 5)
!2741 = !DILocation(line: 64, column: 36, scope: !2739)
!2742 = !DILocation(line: 64, column: 11, scope: !2740)
!2743 = !DILocation(line: 66, column: 24, scope: !2744)
!2744 = distinct !DILexicalBlock(scope: !2739, file: !261, line: 65, column: 9)
!2745 = !DILocation(line: 70, column: 41, scope: !2744)
!2746 = !DILocation(line: 72, column: 9, scope: !2744)
!2747 = !DILocation(line: 84, column: 16, scope: !2711)
!2748 = !DILocation(line: 90, column: 27, scope: !2711)
!2749 = !DILocation(line: 92, column: 1, scope: !2711)
!2750 = distinct !DISubprogram(name: "clone_quoting_options", scope: !276, file: !276, line: 122, type: !2751, isLocal: false, isDefinition: true, scopeLine: 123, flags: DIFlagPrototyped, isOptimized: true, unit: !264, retainedNodes: !2754)
!2751 = !DISubroutineType(types: !2752)
!2752 = !{!2753, !2753}
!2753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !283, size: 64)
!2754 = !{!2755, !2756, !2757}
!2755 = !DILocalVariable(name: "o", arg: 1, scope: !2750, file: !276, line: 122, type: !2753)
!2756 = !DILocalVariable(name: "e", scope: !2750, file: !276, line: 124, type: !64)
!2757 = !DILocalVariable(name: "p", scope: !2750, file: !276, line: 125, type: !2753)
!2758 = !DILocation(line: 122, column: 48, scope: !2750)
!2759 = !DILocation(line: 124, column: 11, scope: !2750)
!2760 = !DILocation(line: 124, column: 7, scope: !2750)
!2761 = !DILocation(line: 125, column: 40, scope: !2750)
!2762 = !DILocation(line: 125, column: 31, scope: !2750)
!2763 = !DILocation(line: 125, column: 27, scope: !2750)
!2764 = !DILocation(line: 127, column: 9, scope: !2750)
!2765 = !DILocation(line: 128, column: 3, scope: !2750)
!2766 = distinct !DISubprogram(name: "get_quoting_style", scope: !276, file: !276, line: 133, type: !2767, isLocal: false, isDefinition: true, scopeLine: 134, flags: DIFlagPrototyped, isOptimized: true, unit: !264, retainedNodes: !2771)
!2767 = !DISubroutineType(types: !2768)
!2768 = !{!5, !2769}
!2769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2770, size: 64)
!2770 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !283)
!2771 = !{!2772}
!2772 = !DILocalVariable(name: "o", arg: 1, scope: !2766, file: !276, line: 133, type: !2769)
!2773 = !DILocation(line: 133, column: 50, scope: !2766)
!2774 = !DILocation(line: 135, column: 11, scope: !2766)
!2775 = !DILocation(line: 135, column: 46, scope: !2766)
!2776 = !{!2777, !837, i64 0}
!2777 = !{!"quoting_options", !837, i64 0, !1044, i64 4, !837, i64 8, !836, i64 40, !836, i64 48}
!2778 = !DILocation(line: 135, column: 3, scope: !2766)
!2779 = distinct !DISubprogram(name: "set_quoting_style", scope: !276, file: !276, line: 141, type: !2780, isLocal: false, isDefinition: true, scopeLine: 142, flags: DIFlagPrototyped, isOptimized: true, unit: !264, retainedNodes: !2782)
!2780 = !DISubroutineType(types: !2781)
!2781 = !{null, !2753, !5}
!2782 = !{!2783, !2784}
!2783 = !DILocalVariable(name: "o", arg: 1, scope: !2779, file: !276, line: 141, type: !2753)
!2784 = !DILocalVariable(name: "s", arg: 2, scope: !2779, file: !276, line: 141, type: !5)
!2785 = !DILocation(line: 141, column: 44, scope: !2779)
!2786 = !DILocation(line: 141, column: 66, scope: !2779)
!2787 = !DILocation(line: 143, column: 4, scope: !2779)
!2788 = !DILocation(line: 143, column: 39, scope: !2779)
!2789 = !DILocation(line: 143, column: 45, scope: !2779)
!2790 = !DILocation(line: 144, column: 1, scope: !2779)
!2791 = distinct !DISubprogram(name: "set_char_quoting", scope: !276, file: !276, line: 152, type: !2792, isLocal: false, isDefinition: true, scopeLine: 153, flags: DIFlagPrototyped, isOptimized: true, unit: !264, retainedNodes: !2794)
!2792 = !DISubroutineType(types: !2793)
!2793 = !{!64, !2753, !60, !64}
!2794 = !{!2795, !2796, !2797, !2798, !2799, !2801, !2802}
!2795 = !DILocalVariable(name: "o", arg: 1, scope: !2791, file: !276, line: 152, type: !2753)
!2796 = !DILocalVariable(name: "c", arg: 2, scope: !2791, file: !276, line: 152, type: !60)
!2797 = !DILocalVariable(name: "i", arg: 3, scope: !2791, file: !276, line: 152, type: !64)
!2798 = !DILocalVariable(name: "uc", scope: !2791, file: !276, line: 154, type: !66)
!2799 = !DILocalVariable(name: "p", scope: !2791, file: !276, line: 155, type: !2800)
!2800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!2801 = !DILocalVariable(name: "shift", scope: !2791, file: !276, line: 157, type: !64)
!2802 = !DILocalVariable(name: "r", scope: !2791, file: !276, line: 158, type: !64)
!2803 = !DILocation(line: 152, column: 43, scope: !2791)
!2804 = !DILocation(line: 152, column: 51, scope: !2791)
!2805 = !DILocation(line: 152, column: 58, scope: !2791)
!2806 = !DILocation(line: 154, column: 17, scope: !2791)
!2807 = !DILocation(line: 156, column: 6, scope: !2791)
!2808 = !DILocation(line: 156, column: 62, scope: !2791)
!2809 = !DILocation(line: 156, column: 57, scope: !2791)
!2810 = !DILocation(line: 155, column: 17, scope: !2791)
!2811 = !DILocation(line: 157, column: 15, scope: !2791)
!2812 = !DILocation(line: 157, column: 7, scope: !2791)
!2813 = !DILocation(line: 158, column: 12, scope: !2791)
!2814 = !DILocation(line: 158, column: 15, scope: !2791)
!2815 = !DILocation(line: 158, column: 25, scope: !2791)
!2816 = !DILocation(line: 158, column: 7, scope: !2791)
!2817 = !DILocation(line: 159, column: 13, scope: !2791)
!2818 = !DILocation(line: 159, column: 18, scope: !2791)
!2819 = !DILocation(line: 159, column: 23, scope: !2791)
!2820 = !DILocation(line: 159, column: 6, scope: !2791)
!2821 = !DILocation(line: 160, column: 3, scope: !2791)
!2822 = distinct !DISubprogram(name: "set_quoting_flags", scope: !276, file: !276, line: 168, type: !2823, isLocal: false, isDefinition: true, scopeLine: 169, flags: DIFlagPrototyped, isOptimized: true, unit: !264, retainedNodes: !2825)
!2823 = !DISubroutineType(types: !2824)
!2824 = !{!64, !2753, !64}
!2825 = !{!2826, !2827, !2828}
!2826 = !DILocalVariable(name: "o", arg: 1, scope: !2822, file: !276, line: 168, type: !2753)
!2827 = !DILocalVariable(name: "i", arg: 2, scope: !2822, file: !276, line: 168, type: !64)
!2828 = !DILocalVariable(name: "r", scope: !2822, file: !276, line: 170, type: !64)
!2829 = !DILocation(line: 168, column: 44, scope: !2822)
!2830 = !DILocation(line: 168, column: 51, scope: !2822)
!2831 = !DILocation(line: 171, column: 8, scope: !2832)
!2832 = distinct !DILexicalBlock(scope: !2822, file: !276, line: 171, column: 7)
!2833 = !DILocation(line: 171, column: 7, scope: !2822)
!2834 = !DILocation(line: 173, column: 10, scope: !2822)
!2835 = !{!2777, !1044, i64 4}
!2836 = !DILocation(line: 170, column: 7, scope: !2822)
!2837 = !DILocation(line: 174, column: 12, scope: !2822)
!2838 = !DILocation(line: 175, column: 3, scope: !2822)
!2839 = distinct !DISubprogram(name: "set_custom_quoting", scope: !276, file: !276, line: 179, type: !2840, isLocal: false, isDefinition: true, scopeLine: 181, flags: DIFlagPrototyped, isOptimized: true, unit: !264, retainedNodes: !2842)
!2840 = !DISubroutineType(types: !2841)
!2841 = !{null, !2753, !93, !93}
!2842 = !{!2843, !2844, !2845}
!2843 = !DILocalVariable(name: "o", arg: 1, scope: !2839, file: !276, line: 179, type: !2753)
!2844 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2839, file: !276, line: 180, type: !93)
!2845 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2839, file: !276, line: 180, type: !93)
!2846 = !DILocation(line: 179, column: 45, scope: !2839)
!2847 = !DILocation(line: 180, column: 33, scope: !2839)
!2848 = !DILocation(line: 180, column: 57, scope: !2839)
!2849 = !DILocation(line: 182, column: 8, scope: !2850)
!2850 = distinct !DILexicalBlock(scope: !2839, file: !276, line: 182, column: 7)
!2851 = !DILocation(line: 182, column: 7, scope: !2839)
!2852 = !DILocation(line: 184, column: 6, scope: !2839)
!2853 = !DILocation(line: 184, column: 12, scope: !2839)
!2854 = !DILocation(line: 185, column: 8, scope: !2855)
!2855 = distinct !DILexicalBlock(scope: !2839, file: !276, line: 185, column: 7)
!2856 = !DILocation(line: 185, column: 23, scope: !2855)
!2857 = !DILocation(line: 185, column: 19, scope: !2855)
!2858 = !DILocation(line: 186, column: 5, scope: !2855)
!2859 = !DILocation(line: 187, column: 6, scope: !2839)
!2860 = !DILocation(line: 187, column: 17, scope: !2839)
!2861 = !{!2777, !836, i64 40}
!2862 = !DILocation(line: 188, column: 6, scope: !2839)
!2863 = !DILocation(line: 188, column: 18, scope: !2839)
!2864 = !{!2777, !836, i64 48}
!2865 = !DILocation(line: 189, column: 1, scope: !2839)
!2866 = distinct !DISubprogram(name: "quotearg_buffer", scope: !276, file: !276, line: 784, type: !2867, isLocal: false, isDefinition: true, scopeLine: 787, flags: DIFlagPrototyped, isOptimized: true, unit: !264, retainedNodes: !2869)
!2867 = !DISubroutineType(types: !2868)
!2868 = !{!62, !59, !62, !93, !62, !2769}
!2869 = !{!2870, !2871, !2872, !2873, !2874, !2875, !2876, !2877}
!2870 = !DILocalVariable(name: "buffer", arg: 1, scope: !2866, file: !276, line: 784, type: !59)
!2871 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2866, file: !276, line: 784, type: !62)
!2872 = !DILocalVariable(name: "arg", arg: 3, scope: !2866, file: !276, line: 785, type: !93)
!2873 = !DILocalVariable(name: "argsize", arg: 4, scope: !2866, file: !276, line: 785, type: !62)
!2874 = !DILocalVariable(name: "o", arg: 5, scope: !2866, file: !276, line: 786, type: !2769)
!2875 = !DILocalVariable(name: "p", scope: !2866, file: !276, line: 788, type: !2769)
!2876 = !DILocalVariable(name: "e", scope: !2866, file: !276, line: 789, type: !64)
!2877 = !DILocalVariable(name: "r", scope: !2866, file: !276, line: 790, type: !62)
!2878 = !DILocation(line: 784, column: 24, scope: !2866)
!2879 = !DILocation(line: 784, column: 39, scope: !2866)
!2880 = !DILocation(line: 785, column: 30, scope: !2866)
!2881 = !DILocation(line: 785, column: 42, scope: !2866)
!2882 = !DILocation(line: 786, column: 48, scope: !2866)
!2883 = !DILocation(line: 788, column: 37, scope: !2866)
!2884 = !DILocation(line: 788, column: 33, scope: !2866)
!2885 = !DILocation(line: 789, column: 11, scope: !2866)
!2886 = !DILocation(line: 789, column: 7, scope: !2866)
!2887 = !DILocation(line: 791, column: 43, scope: !2866)
!2888 = !DILocation(line: 791, column: 53, scope: !2866)
!2889 = !DILocation(line: 791, column: 60, scope: !2866)
!2890 = !DILocation(line: 792, column: 43, scope: !2866)
!2891 = !DILocation(line: 792, column: 58, scope: !2866)
!2892 = !DILocation(line: 790, column: 14, scope: !2866)
!2893 = !DILocation(line: 790, column: 10, scope: !2866)
!2894 = !DILocation(line: 793, column: 9, scope: !2866)
!2895 = !DILocation(line: 794, column: 3, scope: !2866)
!2896 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !276, file: !276, line: 256, type: !2897, isLocal: true, isDefinition: true, scopeLine: 262, flags: DIFlagPrototyped, isOptimized: true, unit: !264, retainedNodes: !2901)
!2897 = !DISubroutineType(types: !2898)
!2898 = !{!62, !59, !62, !93, !62, !5, !64, !2899, !93, !93}
!2899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2900, size: 64)
!2900 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!2901 = !{!2902, !2903, !2904, !2905, !2906, !2907, !2908, !2909, !2910, !2911, !2912, !2913, !2914, !2915, !2916, !2917, !2918, !2919, !2920, !2921, !2922, !2926, !2927, !2928, !2929, !2930, !2933, !2934, !2952, !2955, !2956, !2963}
!2902 = !DILocalVariable(name: "buffer", arg: 1, scope: !2896, file: !276, line: 256, type: !59)
!2903 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2896, file: !276, line: 256, type: !62)
!2904 = !DILocalVariable(name: "arg", arg: 3, scope: !2896, file: !276, line: 257, type: !93)
!2905 = !DILocalVariable(name: "argsize", arg: 4, scope: !2896, file: !276, line: 257, type: !62)
!2906 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !2896, file: !276, line: 258, type: !5)
!2907 = !DILocalVariable(name: "flags", arg: 6, scope: !2896, file: !276, line: 258, type: !64)
!2908 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !2896, file: !276, line: 259, type: !2899)
!2909 = !DILocalVariable(name: "left_quote", arg: 8, scope: !2896, file: !276, line: 260, type: !93)
!2910 = !DILocalVariable(name: "right_quote", arg: 9, scope: !2896, file: !276, line: 261, type: !93)
!2911 = !DILocalVariable(name: "i", scope: !2896, file: !276, line: 263, type: !62)
!2912 = !DILocalVariable(name: "len", scope: !2896, file: !276, line: 264, type: !62)
!2913 = !DILocalVariable(name: "orig_buffersize", scope: !2896, file: !276, line: 265, type: !62)
!2914 = !DILocalVariable(name: "quote_string", scope: !2896, file: !276, line: 266, type: !93)
!2915 = !DILocalVariable(name: "quote_string_len", scope: !2896, file: !276, line: 267, type: !62)
!2916 = !DILocalVariable(name: "backslash_escapes", scope: !2896, file: !276, line: 268, type: !71)
!2917 = !DILocalVariable(name: "unibyte_locale", scope: !2896, file: !276, line: 269, type: !71)
!2918 = !DILocalVariable(name: "elide_outer_quotes", scope: !2896, file: !276, line: 270, type: !71)
!2919 = !DILocalVariable(name: "pending_shell_escape_end", scope: !2896, file: !276, line: 271, type: !71)
!2920 = !DILocalVariable(name: "encountered_single_quote", scope: !2896, file: !276, line: 272, type: !71)
!2921 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !2896, file: !276, line: 273, type: !71)
!2922 = !DILocalVariable(name: "c", scope: !2923, file: !276, line: 402, type: !66)
!2923 = distinct !DILexicalBlock(scope: !2924, file: !276, line: 401, column: 5)
!2924 = distinct !DILexicalBlock(scope: !2925, file: !276, line: 400, column: 3)
!2925 = distinct !DILexicalBlock(scope: !2896, file: !276, line: 400, column: 3)
!2926 = !DILocalVariable(name: "esc", scope: !2923, file: !276, line: 403, type: !66)
!2927 = !DILocalVariable(name: "is_right_quote", scope: !2923, file: !276, line: 404, type: !71)
!2928 = !DILocalVariable(name: "escaping", scope: !2923, file: !276, line: 405, type: !71)
!2929 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !2923, file: !276, line: 406, type: !71)
!2930 = !DILocalVariable(name: "m", scope: !2931, file: !276, line: 610, type: !62)
!2931 = distinct !DILexicalBlock(scope: !2932, file: !276, line: 608, column: 11)
!2932 = distinct !DILexicalBlock(scope: !2923, file: !276, line: 426, column: 9)
!2933 = !DILocalVariable(name: "printable", scope: !2931, file: !276, line: 612, type: !71)
!2934 = !DILocalVariable(name: "mbstate", scope: !2935, file: !276, line: 621, type: !2937)
!2935 = distinct !DILexicalBlock(scope: !2936, file: !276, line: 620, column: 15)
!2936 = distinct !DILexicalBlock(scope: !2931, file: !276, line: 614, column: 17)
!2937 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !2938, line: 6, baseType: !2939)
!2938 = !DIFile(filename: "/usr/include/bits/types/mbstate_t.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!2939 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !2940, line: 21, baseType: !2941)
!2940 = !DIFile(filename: "/usr/include/bits/types/__mbstate_t.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!2941 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2940, line: 13, size: 64, elements: !2942)
!2942 = !{!2943, !2944}
!2943 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !2941, file: !2940, line: 15, baseType: !64, size: 32)
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !2941, file: !2940, line: 20, baseType: !2945, size: 32, offset: 32)
!2945 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2941, file: !2940, line: 16, size: 32, elements: !2946)
!2946 = !{!2947, !2948}
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !2945, file: !2940, line: 18, baseType: !7, size: 32)
!2948 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !2945, file: !2940, line: 19, baseType: !2949, size: 32)
!2949 = !DICompositeType(tag: DW_TAG_array_type, baseType: !60, size: 32, elements: !2950)
!2950 = !{!2951}
!2951 = !DISubrange(count: 4)
!2952 = !DILocalVariable(name: "w", scope: !2953, file: !276, line: 631, type: !2954)
!2953 = distinct !DILexicalBlock(scope: !2935, file: !276, line: 630, column: 19)
!2954 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !63, line: 90, baseType: !64)
!2955 = !DILocalVariable(name: "bytes", scope: !2953, file: !276, line: 632, type: !62)
!2956 = !DILocalVariable(name: "j", scope: !2957, file: !276, line: 657, type: !62)
!2957 = distinct !DILexicalBlock(scope: !2958, file: !276, line: 656, column: 27)
!2958 = distinct !DILexicalBlock(scope: !2959, file: !276, line: 654, column: 29)
!2959 = distinct !DILexicalBlock(scope: !2960, file: !276, line: 649, column: 23)
!2960 = distinct !DILexicalBlock(scope: !2961, file: !276, line: 641, column: 30)
!2961 = distinct !DILexicalBlock(scope: !2962, file: !276, line: 636, column: 30)
!2962 = distinct !DILexicalBlock(scope: !2953, file: !276, line: 634, column: 25)
!2963 = !DILocalVariable(name: "ilim", scope: !2964, file: !276, line: 684, type: !62)
!2964 = distinct !DILexicalBlock(scope: !2965, file: !276, line: 681, column: 15)
!2965 = distinct !DILexicalBlock(scope: !2931, file: !276, line: 680, column: 17)
!2966 = !DILocation(line: 256, column: 33, scope: !2896)
!2967 = !DILocation(line: 256, column: 48, scope: !2896)
!2968 = !DILocation(line: 257, column: 39, scope: !2896)
!2969 = !DILocation(line: 257, column: 51, scope: !2896)
!2970 = !DILocation(line: 258, column: 46, scope: !2896)
!2971 = !DILocation(line: 258, column: 65, scope: !2896)
!2972 = !DILocation(line: 259, column: 47, scope: !2896)
!2973 = !DILocation(line: 260, column: 39, scope: !2896)
!2974 = !DILocation(line: 261, column: 39, scope: !2896)
!2975 = !DILocation(line: 264, column: 10, scope: !2896)
!2976 = !DILocation(line: 265, column: 10, scope: !2896)
!2977 = !DILocation(line: 266, column: 15, scope: !2896)
!2978 = !DILocation(line: 267, column: 10, scope: !2896)
!2979 = !DILocation(line: 268, column: 8, scope: !2896)
!2980 = !DILocation(line: 269, column: 25, scope: !2896)
!2981 = !DILocation(line: 269, column: 36, scope: !2896)
!2982 = !DILocation(line: 270, column: 8, scope: !2896)
!2983 = !DILocation(line: 271, column: 8, scope: !2896)
!2984 = !DILocation(line: 272, column: 8, scope: !2896)
!2985 = !DILocation(line: 273, column: 8, scope: !2896)
!2986 = !DILocation(line: 273, column: 3, scope: !2896)
!2987 = !DILocation(line: 0, scope: !2988)
!2988 = distinct !DILexicalBlock(scope: !2896, file: !276, line: 317, column: 5)
!2989 = !DILocation(line: 316, column: 3, scope: !2896)
!2990 = !DILocation(line: 323, column: 11, scope: !2988)
!2991 = !DILocation(line: 323, column: 12, scope: !2992)
!2992 = distinct !DILexicalBlock(scope: !2988, file: !276, line: 323, column: 11)
!2993 = !DILocation(line: 324, column: 9, scope: !2994)
!2994 = distinct !DILexicalBlock(scope: !2995, file: !276, line: 324, column: 9)
!2995 = distinct !DILexicalBlock(scope: !2992, file: !276, line: 324, column: 9)
!2996 = !DILocation(line: 324, column: 9, scope: !2995)
!2997 = !DILocation(line: 362, column: 26, scope: !2998)
!2998 = distinct !DILexicalBlock(scope: !2999, file: !276, line: 340, column: 11)
!2999 = distinct !DILexicalBlock(scope: !3000, file: !276, line: 339, column: 13)
!3000 = distinct !DILexicalBlock(scope: !2988, file: !276, line: 338, column: 7)
!3001 = !DILocation(line: 363, column: 27, scope: !2998)
!3002 = !DILocation(line: 364, column: 11, scope: !2998)
!3003 = !DILocation(line: 365, column: 14, scope: !3004)
!3004 = distinct !DILexicalBlock(scope: !3000, file: !276, line: 365, column: 13)
!3005 = !DILocation(line: 365, column: 13, scope: !3000)
!3006 = !DILocation(line: 366, column: 43, scope: !3007)
!3007 = distinct !DILexicalBlock(scope: !3008, file: !276, line: 366, column: 11)
!3008 = distinct !DILexicalBlock(scope: !3004, file: !276, line: 366, column: 11)
!3009 = !DILocation(line: 366, column: 11, scope: !3008)
!3010 = !DILocation(line: 367, column: 13, scope: !3011)
!3011 = distinct !DILexicalBlock(scope: !3012, file: !276, line: 367, column: 13)
!3012 = distinct !DILexicalBlock(scope: !3007, file: !276, line: 367, column: 13)
!3013 = !DILocation(line: 367, column: 13, scope: !3012)
!3014 = !DILocation(line: 366, column: 70, scope: !3007)
!3015 = distinct !{!3015, !3009, !3016}
!3016 = !DILocation(line: 367, column: 13, scope: !3008)
!3017 = !DILocation(line: 370, column: 28, scope: !3000)
!3018 = !DILocation(line: 372, column: 7, scope: !2988)
!3019 = !DILocation(line: 376, column: 7, scope: !2988)
!3020 = !DILocation(line: 379, column: 7, scope: !2988)
!3021 = !DILocation(line: 381, column: 12, scope: !3022)
!3022 = distinct !DILexicalBlock(scope: !2988, file: !276, line: 381, column: 11)
!3023 = !DILocation(line: 381, column: 11, scope: !2988)
!3024 = !DILocation(line: 0, scope: !3022)
!3025 = !DILocation(line: 386, column: 12, scope: !3026)
!3026 = distinct !DILexicalBlock(scope: !2988, file: !276, line: 386, column: 11)
!3027 = !DILocation(line: 386, column: 11, scope: !2988)
!3028 = !DILocation(line: 387, column: 9, scope: !3029)
!3029 = distinct !DILexicalBlock(scope: !3030, file: !276, line: 387, column: 9)
!3030 = distinct !DILexicalBlock(scope: !3026, file: !276, line: 387, column: 9)
!3031 = !DILocation(line: 387, column: 9, scope: !3030)
!3032 = !DILocation(line: 394, column: 7, scope: !2988)
!3033 = !DILocation(line: 397, column: 7, scope: !2988)
!3034 = !DILocation(line: 0, scope: !2896)
!3035 = !DILocation(line: 263, column: 10, scope: !2896)
!3036 = !DILocation(line: 400, column: 8, scope: !2925)
!3037 = !DILocation(line: 0, scope: !2924)
!3038 = !DILocation(line: 400, column: 27, scope: !2924)
!3039 = !DILocation(line: 400, column: 19, scope: !2924)
!3040 = !DILocation(line: 400, column: 41, scope: !2924)
!3041 = !DILocation(line: 400, column: 48, scope: !2924)
!3042 = !DILocation(line: 400, column: 3, scope: !2925)
!3043 = !DILocation(line: 400, column: 60, scope: !2924)
!3044 = !DILocation(line: 404, column: 12, scope: !2923)
!3045 = !DILocation(line: 405, column: 12, scope: !2923)
!3046 = !DILocation(line: 406, column: 12, scope: !2923)
!3047 = !DILocation(line: 409, column: 11, scope: !3048)
!3048 = distinct !DILexicalBlock(scope: !2923, file: !276, line: 408, column: 11)
!3049 = !DILocation(line: 411, column: 17, scope: !3048)
!3050 = !DILocation(line: 412, column: 39, scope: !3048)
!3051 = !DILocation(line: 416, column: 32, scope: !3048)
!3052 = !DILocation(line: 412, column: 19, scope: !3048)
!3053 = !DILocation(line: 412, column: 15, scope: !3048)
!3054 = !DILocation(line: 417, column: 11, scope: !3048)
!3055 = !DILocation(line: 417, column: 26, scope: !3048)
!3056 = !DILocation(line: 417, column: 14, scope: !3048)
!3057 = !DILocation(line: 417, column: 63, scope: !3048)
!3058 = !DILocation(line: 408, column: 11, scope: !2923)
!3059 = !DILocation(line: 0, scope: !2923)
!3060 = !DILocation(line: 424, column: 11, scope: !2923)
!3061 = !DILocation(line: 402, column: 21, scope: !2923)
!3062 = !DILocation(line: 425, column: 7, scope: !2923)
!3063 = !DILocation(line: 428, column: 15, scope: !2932)
!3064 = !DILocation(line: 430, column: 15, scope: !3065)
!3065 = distinct !DILexicalBlock(scope: !3066, file: !276, line: 430, column: 15)
!3066 = distinct !DILexicalBlock(scope: !3067, file: !276, line: 429, column: 13)
!3067 = distinct !DILexicalBlock(scope: !2932, file: !276, line: 428, column: 15)
!3068 = !DILocation(line: 430, column: 15, scope: !3069)
!3069 = distinct !DILexicalBlock(scope: !3065, file: !276, line: 430, column: 15)
!3070 = !DILocation(line: 430, column: 15, scope: !3071)
!3071 = distinct !DILexicalBlock(scope: !3072, file: !276, line: 430, column: 15)
!3072 = distinct !DILexicalBlock(scope: !3073, file: !276, line: 430, column: 15)
!3073 = distinct !DILexicalBlock(scope: !3069, file: !276, line: 430, column: 15)
!3074 = !DILocation(line: 430, column: 15, scope: !3072)
!3075 = !DILocation(line: 430, column: 15, scope: !3076)
!3076 = distinct !DILexicalBlock(scope: !3077, file: !276, line: 430, column: 15)
!3077 = distinct !DILexicalBlock(scope: !3073, file: !276, line: 430, column: 15)
!3078 = !DILocation(line: 430, column: 15, scope: !3077)
!3079 = !DILocation(line: 430, column: 15, scope: !3080)
!3080 = distinct !DILexicalBlock(scope: !3081, file: !276, line: 430, column: 15)
!3081 = distinct !DILexicalBlock(scope: !3073, file: !276, line: 430, column: 15)
!3082 = !DILocation(line: 430, column: 15, scope: !3081)
!3083 = !DILocation(line: 430, column: 15, scope: !3073)
!3084 = !DILocation(line: 430, column: 15, scope: !3085)
!3085 = distinct !DILexicalBlock(scope: !3086, file: !276, line: 430, column: 15)
!3086 = distinct !DILexicalBlock(scope: !3065, file: !276, line: 430, column: 15)
!3087 = !DILocation(line: 430, column: 15, scope: !3086)
!3088 = !DILocation(line: 438, column: 19, scope: !3089)
!3089 = distinct !DILexicalBlock(scope: !3066, file: !276, line: 437, column: 19)
!3090 = !DILocation(line: 438, column: 24, scope: !3089)
!3091 = !DILocation(line: 438, column: 28, scope: !3089)
!3092 = !DILocation(line: 438, column: 38, scope: !3089)
!3093 = !DILocation(line: 438, column: 48, scope: !3089)
!3094 = !DILocation(line: 438, column: 59, scope: !3089)
!3095 = !DILocation(line: 440, column: 19, scope: !3096)
!3096 = distinct !DILexicalBlock(scope: !3097, file: !276, line: 440, column: 19)
!3097 = distinct !DILexicalBlock(scope: !3098, file: !276, line: 440, column: 19)
!3098 = distinct !DILexicalBlock(scope: !3089, file: !276, line: 439, column: 17)
!3099 = !DILocation(line: 440, column: 19, scope: !3097)
!3100 = !DILocation(line: 441, column: 19, scope: !3101)
!3101 = distinct !DILexicalBlock(scope: !3102, file: !276, line: 441, column: 19)
!3102 = distinct !DILexicalBlock(scope: !3098, file: !276, line: 441, column: 19)
!3103 = !DILocation(line: 441, column: 19, scope: !3102)
!3104 = !DILocation(line: 442, column: 17, scope: !3098)
!3105 = !DILocation(line: 449, column: 20, scope: !3067)
!3106 = !DILocation(line: 454, column: 11, scope: !2932)
!3107 = !DILocation(line: 457, column: 19, scope: !3108)
!3108 = distinct !DILexicalBlock(scope: !2932, file: !276, line: 455, column: 13)
!3109 = !DILocation(line: 463, column: 19, scope: !3110)
!3110 = distinct !DILexicalBlock(scope: !3108, file: !276, line: 462, column: 19)
!3111 = !DILocation(line: 463, column: 24, scope: !3110)
!3112 = !DILocation(line: 463, column: 28, scope: !3110)
!3113 = !DILocation(line: 463, column: 38, scope: !3110)
!3114 = !DILocation(line: 463, column: 47, scope: !3110)
!3115 = !DILocation(line: 463, column: 41, scope: !3110)
!3116 = !DILocation(line: 463, column: 52, scope: !3110)
!3117 = !DILocation(line: 462, column: 19, scope: !3108)
!3118 = !DILocation(line: 464, column: 25, scope: !3110)
!3119 = !DILocation(line: 464, column: 17, scope: !3110)
!3120 = !DILocation(line: 471, column: 25, scope: !3121)
!3121 = distinct !DILexicalBlock(scope: !3110, file: !276, line: 465, column: 19)
!3122 = !DILocation(line: 475, column: 21, scope: !3123)
!3123 = distinct !DILexicalBlock(scope: !3124, file: !276, line: 475, column: 21)
!3124 = distinct !DILexicalBlock(scope: !3121, file: !276, line: 475, column: 21)
!3125 = !DILocation(line: 475, column: 21, scope: !3124)
!3126 = !DILocation(line: 476, column: 21, scope: !3127)
!3127 = distinct !DILexicalBlock(scope: !3128, file: !276, line: 476, column: 21)
!3128 = distinct !DILexicalBlock(scope: !3121, file: !276, line: 476, column: 21)
!3129 = !DILocation(line: 476, column: 21, scope: !3128)
!3130 = !DILocation(line: 477, column: 21, scope: !3131)
!3131 = distinct !DILexicalBlock(scope: !3132, file: !276, line: 477, column: 21)
!3132 = distinct !DILexicalBlock(scope: !3121, file: !276, line: 477, column: 21)
!3133 = !DILocation(line: 477, column: 21, scope: !3132)
!3134 = !DILocation(line: 478, column: 21, scope: !3135)
!3135 = distinct !DILexicalBlock(scope: !3136, file: !276, line: 478, column: 21)
!3136 = distinct !DILexicalBlock(scope: !3121, file: !276, line: 478, column: 21)
!3137 = !DILocation(line: 478, column: 21, scope: !3136)
!3138 = !DILocation(line: 479, column: 21, scope: !3121)
!3139 = !DILocation(line: 403, column: 21, scope: !2923)
!3140 = !DILocation(line: 492, column: 31, scope: !2932)
!3141 = !DILocation(line: 493, column: 31, scope: !2932)
!3142 = !DILocation(line: 495, column: 31, scope: !2932)
!3143 = !DILocation(line: 496, column: 31, scope: !2932)
!3144 = !DILocation(line: 497, column: 31, scope: !2932)
!3145 = !DILocation(line: 500, column: 15, scope: !2932)
!3146 = !DILocation(line: 502, column: 19, scope: !3147)
!3147 = distinct !DILexicalBlock(scope: !3148, file: !276, line: 501, column: 13)
!3148 = distinct !DILexicalBlock(scope: !2932, file: !276, line: 500, column: 15)
!3149 = !DILocation(line: 509, column: 33, scope: !3150)
!3150 = distinct !DILexicalBlock(scope: !2932, file: !276, line: 509, column: 15)
!3151 = !DILocation(line: 0, scope: !2932)
!3152 = !DILocation(line: 514, column: 15, scope: !3153)
!3153 = distinct !DILexicalBlock(scope: !2932, file: !276, line: 513, column: 15)
!3154 = !DILocation(line: 518, column: 15, scope: !2932)
!3155 = !DILocation(line: 526, column: 26, scope: !3156)
!3156 = distinct !DILexicalBlock(scope: !2932, file: !276, line: 526, column: 15)
!3157 = !DILocation(line: 526, column: 15, scope: !2932)
!3158 = !DILocation(line: 526, column: 40, scope: !3156)
!3159 = !DILocation(line: 526, column: 47, scope: !3156)
!3160 = !DILocation(line: 530, column: 17, scope: !3161)
!3161 = distinct !DILexicalBlock(scope: !2932, file: !276, line: 530, column: 15)
!3162 = !DILocation(line: 526, column: 18, scope: !3156)
!3163 = !DILocation(line: 526, column: 65, scope: !3156)
!3164 = !DILocation(line: 530, column: 15, scope: !2932)
!3165 = !DILocation(line: 535, column: 11, scope: !2932)
!3166 = !DILocation(line: 549, column: 15, scope: !3167)
!3167 = distinct !DILexicalBlock(scope: !2932, file: !276, line: 548, column: 15)
!3168 = !DILocation(line: 556, column: 15, scope: !2932)
!3169 = !DILocation(line: 558, column: 19, scope: !3170)
!3170 = distinct !DILexicalBlock(scope: !3171, file: !276, line: 557, column: 13)
!3171 = distinct !DILexicalBlock(scope: !2932, file: !276, line: 556, column: 15)
!3172 = !DILocation(line: 561, column: 19, scope: !3173)
!3173 = distinct !DILexicalBlock(scope: !3170, file: !276, line: 561, column: 19)
!3174 = !DILocation(line: 561, column: 35, scope: !3173)
!3175 = !DILocation(line: 561, column: 30, scope: !3173)
!3176 = !DILocation(line: 570, column: 15, scope: !3177)
!3177 = distinct !DILexicalBlock(scope: !3178, file: !276, line: 570, column: 15)
!3178 = distinct !DILexicalBlock(scope: !3170, file: !276, line: 570, column: 15)
!3179 = !DILocation(line: 570, column: 15, scope: !3178)
!3180 = !DILocation(line: 571, column: 15, scope: !3181)
!3181 = distinct !DILexicalBlock(scope: !3182, file: !276, line: 571, column: 15)
!3182 = distinct !DILexicalBlock(scope: !3170, file: !276, line: 571, column: 15)
!3183 = !DILocation(line: 571, column: 15, scope: !3182)
!3184 = !DILocation(line: 572, column: 15, scope: !3185)
!3185 = distinct !DILexicalBlock(scope: !3186, file: !276, line: 572, column: 15)
!3186 = distinct !DILexicalBlock(scope: !3170, file: !276, line: 572, column: 15)
!3187 = !DILocation(line: 572, column: 15, scope: !3186)
!3188 = !DILocation(line: 574, column: 13, scope: !3170)
!3189 = !DILocation(line: 614, column: 17, scope: !2931)
!3190 = !DILocation(line: 610, column: 20, scope: !2931)
!3191 = !DILocation(line: 617, column: 29, scope: !3192)
!3192 = distinct !DILexicalBlock(scope: !2936, file: !276, line: 615, column: 15)
!3193 = !DILocation(line: 617, column: 27, scope: !3192)
!3194 = !DILocation(line: 612, column: 18, scope: !2931)
!3195 = !DILocation(line: 618, column: 15, scope: !3192)
!3196 = !DILocation(line: 621, column: 17, scope: !2935)
!3197 = !DILocation(line: 622, column: 17, scope: !2935)
!3198 = !DILocation(line: 626, column: 29, scope: !3199)
!3199 = distinct !DILexicalBlock(scope: !2935, file: !276, line: 626, column: 21)
!3200 = !DILocation(line: 626, column: 21, scope: !2935)
!3201 = !DILocation(line: 627, column: 29, scope: !3199)
!3202 = !DILocation(line: 627, column: 19, scope: !3199)
!3203 = !DILocation(line: 0, scope: !3048)
!3204 = !DILocation(line: 629, column: 17, scope: !2935)
!3205 = !DILocation(line: 624, column: 19, scope: !2935)
!3206 = !DILocation(line: 625, column: 27, scope: !2935)
!3207 = !DILocation(line: 631, column: 21, scope: !2953)
!3208 = !DILocation(line: 632, column: 56, scope: !2953)
!3209 = !DILocation(line: 632, column: 50, scope: !2953)
!3210 = !DILocation(line: 633, column: 53, scope: !2953)
!3211 = !DILocation(line: 621, column: 27, scope: !2935)
!3212 = !DILocation(line: 631, column: 29, scope: !2953)
!3213 = !DILocation(line: 632, column: 36, scope: !2953)
!3214 = !DILocation(line: 632, column: 28, scope: !2953)
!3215 = !DILocation(line: 634, column: 25, scope: !2953)
!3216 = !DILocation(line: 644, column: 38, scope: !3217)
!3217 = distinct !DILexicalBlock(scope: !2960, file: !276, line: 642, column: 23)
!3218 = !DILocation(line: 644, column: 48, scope: !3217)
!3219 = !DILocation(line: 644, column: 51, scope: !3217)
!3220 = !DILocation(line: 644, column: 25, scope: !3217)
!3221 = !DILocation(line: 645, column: 28, scope: !3217)
!3222 = !DILocation(line: 644, column: 34, scope: !3217)
!3223 = distinct !{!3223, !3220, !3221}
!3224 = !DILocation(line: 658, column: 43, scope: !3225)
!3225 = distinct !DILexicalBlock(scope: !3226, file: !276, line: 658, column: 29)
!3226 = distinct !DILexicalBlock(scope: !2957, file: !276, line: 658, column: 29)
!3227 = !DILocation(line: 655, column: 29, scope: !2958)
!3228 = !DILocation(line: 657, column: 36, scope: !2957)
!3229 = !DILocation(line: 659, column: 49, scope: !3225)
!3230 = !DILocation(line: 659, column: 39, scope: !3225)
!3231 = !DILocation(line: 659, column: 31, scope: !3225)
!3232 = !DILocation(line: 658, column: 53, scope: !3225)
!3233 = !DILocation(line: 658, column: 29, scope: !3226)
!3234 = distinct !{!3234, !3233, !3235}
!3235 = !DILocation(line: 667, column: 33, scope: !3226)
!3236 = !DILocation(line: 674, column: 19, scope: !2935)
!3237 = !DILocation(line: 670, column: 41, scope: !3238)
!3238 = distinct !DILexicalBlock(scope: !2959, file: !276, line: 670, column: 29)
!3239 = !DILocation(line: 670, column: 31, scope: !3238)
!3240 = !DILocation(line: 670, column: 29, scope: !2959)
!3241 = !DILocation(line: 672, column: 27, scope: !2959)
!3242 = !DILocation(line: 675, column: 26, scope: !2935)
!3243 = !DILocation(line: 675, column: 24, scope: !2935)
!3244 = !DILocation(line: 674, column: 19, scope: !2953)
!3245 = distinct !{!3245, !3204, !3246}
!3246 = !DILocation(line: 675, column: 44, scope: !2935)
!3247 = !DILocation(line: 676, column: 15, scope: !2936)
!3248 = !DILocation(line: 0, scope: !3199)
!3249 = !DILocation(line: 0, scope: !2935)
!3250 = !DILocation(line: 678, column: 40, scope: !2931)
!3251 = !DILocation(line: 680, column: 19, scope: !2965)
!3252 = !DILocation(line: 680, column: 45, scope: !2965)
!3253 = !DILocation(line: 680, column: 23, scope: !2965)
!3254 = !DILocation(line: 684, column: 33, scope: !2964)
!3255 = !DILocation(line: 684, column: 24, scope: !2964)
!3256 = !DILocation(line: 686, column: 17, scope: !2964)
!3257 = !DILocation(line: 0, scope: !3258)
!3258 = distinct !DILexicalBlock(scope: !3259, file: !276, line: 687, column: 19)
!3259 = distinct !DILexicalBlock(scope: !3260, file: !276, line: 686, column: 17)
!3260 = distinct !DILexicalBlock(scope: !2964, file: !276, line: 686, column: 17)
!3261 = !DILocation(line: 0, scope: !3262)
!3262 = distinct !DILexicalBlock(scope: !3258, file: !276, line: 703, column: 21)
!3263 = !DILocation(line: 0, scope: !3264)
!3264 = distinct !DILexicalBlock(scope: !3265, file: !276, line: 696, column: 23)
!3265 = distinct !DILexicalBlock(scope: !3266, file: !276, line: 695, column: 30)
!3266 = distinct !DILexicalBlock(scope: !3258, file: !276, line: 688, column: 25)
!3267 = !DILocation(line: 688, column: 43, scope: !3266)
!3268 = !DILocation(line: 690, column: 25, scope: !3269)
!3269 = distinct !DILexicalBlock(scope: !3270, file: !276, line: 690, column: 25)
!3270 = distinct !DILexicalBlock(scope: !3266, file: !276, line: 689, column: 23)
!3271 = !DILocation(line: 690, column: 25, scope: !3272)
!3272 = distinct !DILexicalBlock(scope: !3269, file: !276, line: 690, column: 25)
!3273 = !DILocation(line: 690, column: 25, scope: !3274)
!3274 = distinct !DILexicalBlock(scope: !3275, file: !276, line: 690, column: 25)
!3275 = distinct !DILexicalBlock(scope: !3276, file: !276, line: 690, column: 25)
!3276 = distinct !DILexicalBlock(scope: !3272, file: !276, line: 690, column: 25)
!3277 = !DILocation(line: 690, column: 25, scope: !3275)
!3278 = !DILocation(line: 690, column: 25, scope: !3279)
!3279 = distinct !DILexicalBlock(scope: !3280, file: !276, line: 690, column: 25)
!3280 = distinct !DILexicalBlock(scope: !3276, file: !276, line: 690, column: 25)
!3281 = !DILocation(line: 690, column: 25, scope: !3280)
!3282 = !DILocation(line: 690, column: 25, scope: !3283)
!3283 = distinct !DILexicalBlock(scope: !3284, file: !276, line: 690, column: 25)
!3284 = distinct !DILexicalBlock(scope: !3276, file: !276, line: 690, column: 25)
!3285 = !DILocation(line: 690, column: 25, scope: !3284)
!3286 = !DILocation(line: 690, column: 25, scope: !3276)
!3287 = !DILocation(line: 690, column: 25, scope: !3288)
!3288 = distinct !DILexicalBlock(scope: !3289, file: !276, line: 690, column: 25)
!3289 = distinct !DILexicalBlock(scope: !3269, file: !276, line: 690, column: 25)
!3290 = !DILocation(line: 690, column: 25, scope: !3289)
!3291 = !DILocation(line: 691, column: 25, scope: !3292)
!3292 = distinct !DILexicalBlock(scope: !3293, file: !276, line: 691, column: 25)
!3293 = distinct !DILexicalBlock(scope: !3270, file: !276, line: 691, column: 25)
!3294 = !DILocation(line: 691, column: 25, scope: !3293)
!3295 = !DILocation(line: 692, column: 25, scope: !3296)
!3296 = distinct !DILexicalBlock(scope: !3297, file: !276, line: 692, column: 25)
!3297 = distinct !DILexicalBlock(scope: !3270, file: !276, line: 692, column: 25)
!3298 = !DILocation(line: 692, column: 25, scope: !3297)
!3299 = !DILocation(line: 693, column: 38, scope: !3270)
!3300 = !DILocation(line: 693, column: 33, scope: !3270)
!3301 = !DILocation(line: 694, column: 23, scope: !3270)
!3302 = !DILocation(line: 695, column: 30, scope: !3265)
!3303 = !DILocation(line: 695, column: 30, scope: !3266)
!3304 = !DILocation(line: 697, column: 25, scope: !3305)
!3305 = distinct !DILexicalBlock(scope: !3306, file: !276, line: 697, column: 25)
!3306 = distinct !DILexicalBlock(scope: !3264, file: !276, line: 697, column: 25)
!3307 = !DILocation(line: 697, column: 25, scope: !3306)
!3308 = !DILocation(line: 699, column: 23, scope: !3264)
!3309 = !DILocation(line: 0, scope: !3297)
!3310 = !DILocation(line: 0, scope: !3270)
!3311 = !DILocation(line: 0, scope: !3312)
!3312 = distinct !DILexicalBlock(scope: !3048, file: !276, line: 418, column: 9)
!3313 = !DILocation(line: 0, scope: !3269)
!3314 = !DILocation(line: 700, column: 35, scope: !3315)
!3315 = distinct !DILexicalBlock(scope: !3258, file: !276, line: 700, column: 25)
!3316 = !DILocation(line: 700, column: 30, scope: !3315)
!3317 = !DILocation(line: 700, column: 25, scope: !3258)
!3318 = !DILocation(line: 702, column: 21, scope: !3319)
!3319 = distinct !DILexicalBlock(scope: !3320, file: !276, line: 702, column: 21)
!3320 = distinct !DILexicalBlock(scope: !3258, file: !276, line: 702, column: 21)
!3321 = !DILocation(line: 702, column: 21, scope: !3322)
!3322 = distinct !DILexicalBlock(scope: !3323, file: !276, line: 702, column: 21)
!3323 = distinct !DILexicalBlock(scope: !3324, file: !276, line: 702, column: 21)
!3324 = distinct !DILexicalBlock(scope: !3319, file: !276, line: 702, column: 21)
!3325 = !DILocation(line: 702, column: 21, scope: !3323)
!3326 = !DILocation(line: 702, column: 21, scope: !3327)
!3327 = distinct !DILexicalBlock(scope: !3328, file: !276, line: 702, column: 21)
!3328 = distinct !DILexicalBlock(scope: !3324, file: !276, line: 702, column: 21)
!3329 = !DILocation(line: 702, column: 21, scope: !3328)
!3330 = !DILocation(line: 702, column: 21, scope: !3324)
!3331 = !DILocation(line: 0, scope: !3306)
!3332 = !DILocation(line: 703, column: 21, scope: !3333)
!3333 = distinct !DILexicalBlock(scope: !3262, file: !276, line: 703, column: 21)
!3334 = !DILocation(line: 703, column: 21, scope: !3262)
!3335 = !DILocation(line: 704, column: 25, scope: !3258)
!3336 = !DILocation(line: 686, column: 17, scope: !3259)
!3337 = distinct !{!3337, !3338, !3339}
!3338 = !DILocation(line: 686, column: 17, scope: !3260)
!3339 = !DILocation(line: 705, column: 19, scope: !3260)
!3340 = !DILocation(line: 0, scope: !2925)
!3341 = !DILocation(line: 416, column: 30, scope: !3048)
!3342 = !DILocation(line: 712, column: 34, scope: !3343)
!3343 = distinct !DILexicalBlock(scope: !2923, file: !276, line: 712, column: 11)
!3344 = !DILocation(line: 714, column: 14, scope: !3343)
!3345 = !DILocation(line: 715, column: 14, scope: !3343)
!3346 = !DILocation(line: 715, column: 35, scope: !3343)
!3347 = !DILocation(line: 715, column: 17, scope: !3343)
!3348 = !DILocation(line: 715, column: 47, scope: !3343)
!3349 = !DILocation(line: 715, column: 65, scope: !3343)
!3350 = !DILocation(line: 716, column: 15, scope: !3343)
!3351 = !DILocation(line: 716, column: 11, scope: !3343)
!3352 = !DILocation(line: 712, column: 11, scope: !2923)
!3353 = !DILocation(line: 400, column: 10, scope: !2925)
!3354 = !DILocation(line: 0, scope: !3355)
!3355 = distinct !DILexicalBlock(scope: !3356, file: !276, line: 519, column: 13)
!3356 = distinct !DILexicalBlock(scope: !2932, file: !276, line: 518, column: 15)
!3357 = !DILocation(line: 720, column: 7, scope: !3358)
!3358 = distinct !DILexicalBlock(scope: !2923, file: !276, line: 720, column: 7)
!3359 = !DILocation(line: 720, column: 7, scope: !3360)
!3360 = distinct !DILexicalBlock(scope: !3358, file: !276, line: 720, column: 7)
!3361 = !DILocation(line: 720, column: 7, scope: !3362)
!3362 = distinct !DILexicalBlock(scope: !3363, file: !276, line: 720, column: 7)
!3363 = distinct !DILexicalBlock(scope: !3364, file: !276, line: 720, column: 7)
!3364 = distinct !DILexicalBlock(scope: !3360, file: !276, line: 720, column: 7)
!3365 = !DILocation(line: 720, column: 7, scope: !3363)
!3366 = !DILocation(line: 720, column: 7, scope: !3367)
!3367 = distinct !DILexicalBlock(scope: !3368, file: !276, line: 720, column: 7)
!3368 = distinct !DILexicalBlock(scope: !3364, file: !276, line: 720, column: 7)
!3369 = !DILocation(line: 720, column: 7, scope: !3368)
!3370 = !DILocation(line: 720, column: 7, scope: !3371)
!3371 = distinct !DILexicalBlock(scope: !3372, file: !276, line: 720, column: 7)
!3372 = distinct !DILexicalBlock(scope: !3364, file: !276, line: 720, column: 7)
!3373 = !DILocation(line: 720, column: 7, scope: !3372)
!3374 = !DILocation(line: 720, column: 7, scope: !3364)
!3375 = !DILocation(line: 720, column: 7, scope: !3376)
!3376 = distinct !DILexicalBlock(scope: !3377, file: !276, line: 720, column: 7)
!3377 = distinct !DILexicalBlock(scope: !3358, file: !276, line: 720, column: 7)
!3378 = !DILocation(line: 720, column: 7, scope: !3377)
!3379 = !DILocation(line: 723, column: 7, scope: !3380)
!3380 = distinct !DILexicalBlock(scope: !3381, file: !276, line: 723, column: 7)
!3381 = distinct !DILexicalBlock(scope: !2923, file: !276, line: 723, column: 7)
!3382 = !DILocation(line: 424, column: 9, scope: !2923)
!3383 = !DILocation(line: 723, column: 7, scope: !3384)
!3384 = distinct !DILexicalBlock(scope: !3385, file: !276, line: 723, column: 7)
!3385 = distinct !DILexicalBlock(scope: !3386, file: !276, line: 723, column: 7)
!3386 = distinct !DILexicalBlock(scope: !3380, file: !276, line: 723, column: 7)
!3387 = !DILocation(line: 723, column: 7, scope: !3385)
!3388 = !DILocation(line: 723, column: 7, scope: !3389)
!3389 = distinct !DILexicalBlock(scope: !3390, file: !276, line: 723, column: 7)
!3390 = distinct !DILexicalBlock(scope: !3386, file: !276, line: 723, column: 7)
!3391 = !DILocation(line: 723, column: 7, scope: !3390)
!3392 = !DILocation(line: 723, column: 7, scope: !3386)
!3393 = !DILocation(line: 724, column: 7, scope: !3394)
!3394 = distinct !DILexicalBlock(scope: !3395, file: !276, line: 724, column: 7)
!3395 = distinct !DILexicalBlock(scope: !2923, file: !276, line: 724, column: 7)
!3396 = !DILocation(line: 724, column: 7, scope: !3395)
!3397 = !DILocation(line: 726, column: 13, scope: !3398)
!3398 = distinct !DILexicalBlock(scope: !2923, file: !276, line: 726, column: 11)
!3399 = !DILocation(line: 726, column: 11, scope: !2923)
!3400 = !DILocation(line: 728, column: 5, scope: !2924)
!3401 = !DILocation(line: 400, column: 75, scope: !2924)
!3402 = !DILocation(line: 400, column: 3, scope: !2924)
!3403 = distinct !{!3403, !3042, !3404}
!3404 = !DILocation(line: 728, column: 5, scope: !2925)
!3405 = !DILocation(line: 730, column: 11, scope: !3406)
!3406 = distinct !DILexicalBlock(scope: !2896, file: !276, line: 730, column: 7)
!3407 = !DILocation(line: 730, column: 16, scope: !3406)
!3408 = !DILocation(line: 738, column: 51, scope: !3409)
!3409 = distinct !DILexicalBlock(scope: !2896, file: !276, line: 738, column: 7)
!3410 = !DILocation(line: 739, column: 10, scope: !3409)
!3411 = !DILocation(line: 741, column: 11, scope: !3412)
!3412 = distinct !DILexicalBlock(scope: !3413, file: !276, line: 741, column: 11)
!3413 = distinct !DILexicalBlock(scope: !3409, file: !276, line: 740, column: 5)
!3414 = !DILocation(line: 741, column: 11, scope: !3413)
!3415 = !DILocation(line: 742, column: 16, scope: !3412)
!3416 = !DILocation(line: 742, column: 9, scope: !3412)
!3417 = !DILocation(line: 746, column: 18, scope: !3418)
!3418 = distinct !DILexicalBlock(scope: !3412, file: !276, line: 746, column: 16)
!3419 = !DILocation(line: 746, column: 32, scope: !3418)
!3420 = !DILocation(line: 746, column: 29, scope: !3418)
!3421 = !DILocation(line: 755, column: 7, scope: !3422)
!3422 = distinct !DILexicalBlock(scope: !2896, file: !276, line: 755, column: 7)
!3423 = !DILocation(line: 755, column: 20, scope: !3422)
!3424 = !DILocation(line: 756, column: 12, scope: !3425)
!3425 = distinct !DILexicalBlock(scope: !3426, file: !276, line: 756, column: 5)
!3426 = distinct !DILexicalBlock(scope: !3422, file: !276, line: 756, column: 5)
!3427 = !DILocation(line: 756, column: 5, scope: !3426)
!3428 = !DILocation(line: 757, column: 7, scope: !3429)
!3429 = distinct !DILexicalBlock(scope: !3430, file: !276, line: 757, column: 7)
!3430 = distinct !DILexicalBlock(scope: !3425, file: !276, line: 757, column: 7)
!3431 = !DILocation(line: 757, column: 7, scope: !3430)
!3432 = !DILocation(line: 756, column: 39, scope: !3425)
!3433 = distinct !{!3433, !3427, !3434}
!3434 = !DILocation(line: 757, column: 7, scope: !3426)
!3435 = !DILocation(line: 759, column: 11, scope: !3436)
!3436 = distinct !DILexicalBlock(scope: !2896, file: !276, line: 759, column: 7)
!3437 = !DILocation(line: 759, column: 7, scope: !2896)
!3438 = !DILocation(line: 760, column: 5, scope: !3436)
!3439 = !DILocation(line: 760, column: 17, scope: !3436)
!3440 = !DILocation(line: 766, column: 21, scope: !3441)
!3441 = distinct !DILexicalBlock(scope: !2896, file: !276, line: 766, column: 7)
!3442 = !DILocation(line: 766, column: 54, scope: !3441)
!3443 = !DILocation(line: 766, column: 51, scope: !3441)
!3444 = !DILocation(line: 770, column: 42, scope: !2896)
!3445 = !DILocation(line: 768, column: 10, scope: !2896)
!3446 = !DILocation(line: 768, column: 3, scope: !2896)
!3447 = !DILocation(line: 772, column: 1, scope: !2896)
!3448 = distinct !DISubprogram(name: "gettext_quote", scope: !276, file: !276, line: 207, type: !3449, isLocal: true, isDefinition: true, scopeLine: 208, flags: DIFlagPrototyped, isOptimized: true, unit: !264, retainedNodes: !3451)
!3449 = !DISubroutineType(types: !3450)
!3450 = !{!93, !93, !5}
!3451 = !{!3452, !3453, !3454, !3455}
!3452 = !DILocalVariable(name: "msgid", arg: 1, scope: !3448, file: !276, line: 207, type: !93)
!3453 = !DILocalVariable(name: "s", arg: 2, scope: !3448, file: !276, line: 207, type: !5)
!3454 = !DILocalVariable(name: "translation", scope: !3448, file: !276, line: 209, type: !93)
!3455 = !DILocalVariable(name: "locale_code", scope: !3448, file: !276, line: 210, type: !93)
!3456 = !DILocation(line: 207, column: 28, scope: !3448)
!3457 = !DILocation(line: 207, column: 54, scope: !3448)
!3458 = !DILocation(line: 209, column: 29, scope: !3448)
!3459 = !DILocation(line: 209, column: 15, scope: !3448)
!3460 = !DILocation(line: 212, column: 19, scope: !3461)
!3461 = distinct !DILexicalBlock(scope: !3448, file: !276, line: 212, column: 7)
!3462 = !DILocation(line: 212, column: 7, scope: !3448)
!3463 = !DILocation(line: 233, column: 17, scope: !3448)
!3464 = !DILocation(line: 210, column: 15, scope: !3448)
!3465 = !DILocalVariable(name: "s1", arg: 1, scope: !3466, file: !3467, line: 160, type: !93)
!3466 = distinct !DISubprogram(name: "strcaseeq0", scope: !3467, file: !3467, line: 160, type: !3468, isLocal: true, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: true, unit: !264, retainedNodes: !3470)
!3467 = !DIFile(filename: "./lib/c-strcaseeq.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!3468 = !DISubroutineType(types: !3469)
!3469 = !{!64, !93, !93, !60, !60, !60, !60, !60, !60, !60, !60, !60}
!3470 = !{!3465, !3471, !3472, !3473, !3474, !3475, !3476, !3477, !3478, !3479, !3480}
!3471 = !DILocalVariable(name: "s2", arg: 2, scope: !3466, file: !3467, line: 160, type: !93)
!3472 = !DILocalVariable(name: "s20", arg: 3, scope: !3466, file: !3467, line: 160, type: !60)
!3473 = !DILocalVariable(name: "s21", arg: 4, scope: !3466, file: !3467, line: 160, type: !60)
!3474 = !DILocalVariable(name: "s22", arg: 5, scope: !3466, file: !3467, line: 160, type: !60)
!3475 = !DILocalVariable(name: "s23", arg: 6, scope: !3466, file: !3467, line: 160, type: !60)
!3476 = !DILocalVariable(name: "s24", arg: 7, scope: !3466, file: !3467, line: 160, type: !60)
!3477 = !DILocalVariable(name: "s25", arg: 8, scope: !3466, file: !3467, line: 160, type: !60)
!3478 = !DILocalVariable(name: "s26", arg: 9, scope: !3466, file: !3467, line: 160, type: !60)
!3479 = !DILocalVariable(name: "s27", arg: 10, scope: !3466, file: !3467, line: 160, type: !60)
!3480 = !DILocalVariable(name: "s28", arg: 11, scope: !3466, file: !3467, line: 160, type: !60)
!3481 = !DILocation(line: 160, column: 25, scope: !3466, inlinedAt: !3482)
!3482 = distinct !DILocation(line: 234, column: 7, scope: !3483)
!3483 = distinct !DILexicalBlock(scope: !3448, file: !276, line: 234, column: 7)
!3484 = !DILocation(line: 160, column: 41, scope: !3466, inlinedAt: !3482)
!3485 = !DILocation(line: 160, column: 50, scope: !3466, inlinedAt: !3482)
!3486 = !DILocation(line: 160, column: 60, scope: !3466, inlinedAt: !3482)
!3487 = !DILocation(line: 160, column: 70, scope: !3466, inlinedAt: !3482)
!3488 = !DILocation(line: 160, column: 80, scope: !3466, inlinedAt: !3482)
!3489 = !DILocation(line: 160, column: 90, scope: !3466, inlinedAt: !3482)
!3490 = !DILocation(line: 160, column: 100, scope: !3466, inlinedAt: !3482)
!3491 = !DILocation(line: 160, column: 110, scope: !3466, inlinedAt: !3482)
!3492 = !DILocation(line: 160, column: 120, scope: !3466, inlinedAt: !3482)
!3493 = !DILocation(line: 160, column: 130, scope: !3466, inlinedAt: !3482)
!3494 = !DILocation(line: 162, column: 7, scope: !3495, inlinedAt: !3482)
!3495 = distinct !DILexicalBlock(scope: !3466, file: !3467, line: 162, column: 7)
!3496 = !DILocalVariable(name: "s1", arg: 1, scope: !3497, file: !3467, line: 146, type: !93)
!3497 = distinct !DISubprogram(name: "strcaseeq1", scope: !3467, file: !3467, line: 146, type: !3498, isLocal: true, isDefinition: true, scopeLine: 147, flags: DIFlagPrototyped, isOptimized: true, unit: !264, retainedNodes: !3500)
!3498 = !DISubroutineType(types: !3499)
!3499 = !{!64, !93, !93, !60, !60, !60, !60, !60, !60, !60, !60}
!3500 = !{!3496, !3501, !3502, !3503, !3504, !3505, !3506, !3507, !3508, !3509}
!3501 = !DILocalVariable(name: "s2", arg: 2, scope: !3497, file: !3467, line: 146, type: !93)
!3502 = !DILocalVariable(name: "s21", arg: 3, scope: !3497, file: !3467, line: 146, type: !60)
!3503 = !DILocalVariable(name: "s22", arg: 4, scope: !3497, file: !3467, line: 146, type: !60)
!3504 = !DILocalVariable(name: "s23", arg: 5, scope: !3497, file: !3467, line: 146, type: !60)
!3505 = !DILocalVariable(name: "s24", arg: 6, scope: !3497, file: !3467, line: 146, type: !60)
!3506 = !DILocalVariable(name: "s25", arg: 7, scope: !3497, file: !3467, line: 146, type: !60)
!3507 = !DILocalVariable(name: "s26", arg: 8, scope: !3497, file: !3467, line: 146, type: !60)
!3508 = !DILocalVariable(name: "s27", arg: 9, scope: !3497, file: !3467, line: 146, type: !60)
!3509 = !DILocalVariable(name: "s28", arg: 10, scope: !3497, file: !3467, line: 146, type: !60)
!3510 = !DILocation(line: 146, column: 25, scope: !3497, inlinedAt: !3511)
!3511 = distinct !DILocation(line: 167, column: 16, scope: !3512, inlinedAt: !3482)
!3512 = distinct !DILexicalBlock(scope: !3513, file: !3467, line: 164, column: 11)
!3513 = distinct !DILexicalBlock(scope: !3495, file: !3467, line: 163, column: 5)
!3514 = !DILocation(line: 146, column: 41, scope: !3497, inlinedAt: !3511)
!3515 = !DILocation(line: 146, column: 50, scope: !3497, inlinedAt: !3511)
!3516 = !DILocation(line: 146, column: 60, scope: !3497, inlinedAt: !3511)
!3517 = !DILocation(line: 146, column: 70, scope: !3497, inlinedAt: !3511)
!3518 = !DILocation(line: 146, column: 80, scope: !3497, inlinedAt: !3511)
!3519 = !DILocation(line: 146, column: 90, scope: !3497, inlinedAt: !3511)
!3520 = !DILocation(line: 146, column: 100, scope: !3497, inlinedAt: !3511)
!3521 = !DILocation(line: 146, column: 110, scope: !3497, inlinedAt: !3511)
!3522 = !DILocation(line: 146, column: 120, scope: !3497, inlinedAt: !3511)
!3523 = !DILocation(line: 148, column: 7, scope: !3524, inlinedAt: !3511)
!3524 = distinct !DILexicalBlock(scope: !3497, file: !3467, line: 148, column: 7)
!3525 = !DILocalVariable(name: "s1", arg: 1, scope: !3526, file: !3467, line: 132, type: !93)
!3526 = distinct !DISubprogram(name: "strcaseeq2", scope: !3467, file: !3467, line: 132, type: !3527, isLocal: true, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !264, retainedNodes: !3529)
!3527 = !DISubroutineType(types: !3528)
!3528 = !{!64, !93, !93, !60, !60, !60, !60, !60, !60, !60}
!3529 = !{!3525, !3530, !3531, !3532, !3533, !3534, !3535, !3536, !3537}
!3530 = !DILocalVariable(name: "s2", arg: 2, scope: !3526, file: !3467, line: 132, type: !93)
!3531 = !DILocalVariable(name: "s22", arg: 3, scope: !3526, file: !3467, line: 132, type: !60)
!3532 = !DILocalVariable(name: "s23", arg: 4, scope: !3526, file: !3467, line: 132, type: !60)
!3533 = !DILocalVariable(name: "s24", arg: 5, scope: !3526, file: !3467, line: 132, type: !60)
!3534 = !DILocalVariable(name: "s25", arg: 6, scope: !3526, file: !3467, line: 132, type: !60)
!3535 = !DILocalVariable(name: "s26", arg: 7, scope: !3526, file: !3467, line: 132, type: !60)
!3536 = !DILocalVariable(name: "s27", arg: 8, scope: !3526, file: !3467, line: 132, type: !60)
!3537 = !DILocalVariable(name: "s28", arg: 9, scope: !3526, file: !3467, line: 132, type: !60)
!3538 = !DILocation(line: 132, column: 25, scope: !3526, inlinedAt: !3539)
!3539 = distinct !DILocation(line: 153, column: 16, scope: !3540, inlinedAt: !3511)
!3540 = distinct !DILexicalBlock(scope: !3541, file: !3467, line: 150, column: 11)
!3541 = distinct !DILexicalBlock(scope: !3524, file: !3467, line: 149, column: 5)
!3542 = !DILocation(line: 132, column: 41, scope: !3526, inlinedAt: !3539)
!3543 = !DILocation(line: 132, column: 50, scope: !3526, inlinedAt: !3539)
!3544 = !DILocation(line: 132, column: 60, scope: !3526, inlinedAt: !3539)
!3545 = !DILocation(line: 132, column: 70, scope: !3526, inlinedAt: !3539)
!3546 = !DILocation(line: 132, column: 80, scope: !3526, inlinedAt: !3539)
!3547 = !DILocation(line: 132, column: 90, scope: !3526, inlinedAt: !3539)
!3548 = !DILocation(line: 132, column: 100, scope: !3526, inlinedAt: !3539)
!3549 = !DILocation(line: 132, column: 110, scope: !3526, inlinedAt: !3539)
!3550 = !DILocation(line: 134, column: 7, scope: !3551, inlinedAt: !3539)
!3551 = distinct !DILexicalBlock(scope: !3526, file: !3467, line: 134, column: 7)
!3552 = !DILocalVariable(name: "s1", arg: 1, scope: !3553, file: !3467, line: 118, type: !93)
!3553 = distinct !DISubprogram(name: "strcaseeq3", scope: !3467, file: !3467, line: 118, type: !3554, isLocal: true, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: true, unit: !264, retainedNodes: !3556)
!3554 = !DISubroutineType(types: !3555)
!3555 = !{!64, !93, !93, !60, !60, !60, !60, !60, !60}
!3556 = !{!3552, !3557, !3558, !3559, !3560, !3561, !3562, !3563}
!3557 = !DILocalVariable(name: "s2", arg: 2, scope: !3553, file: !3467, line: 118, type: !93)
!3558 = !DILocalVariable(name: "s23", arg: 3, scope: !3553, file: !3467, line: 118, type: !60)
!3559 = !DILocalVariable(name: "s24", arg: 4, scope: !3553, file: !3467, line: 118, type: !60)
!3560 = !DILocalVariable(name: "s25", arg: 5, scope: !3553, file: !3467, line: 118, type: !60)
!3561 = !DILocalVariable(name: "s26", arg: 6, scope: !3553, file: !3467, line: 118, type: !60)
!3562 = !DILocalVariable(name: "s27", arg: 7, scope: !3553, file: !3467, line: 118, type: !60)
!3563 = !DILocalVariable(name: "s28", arg: 8, scope: !3553, file: !3467, line: 118, type: !60)
!3564 = !DILocation(line: 118, column: 25, scope: !3553, inlinedAt: !3565)
!3565 = distinct !DILocation(line: 139, column: 16, scope: !3566, inlinedAt: !3539)
!3566 = distinct !DILexicalBlock(scope: !3567, file: !3467, line: 136, column: 11)
!3567 = distinct !DILexicalBlock(scope: !3551, file: !3467, line: 135, column: 5)
!3568 = !DILocation(line: 118, column: 41, scope: !3553, inlinedAt: !3565)
!3569 = !DILocation(line: 118, column: 50, scope: !3553, inlinedAt: !3565)
!3570 = !DILocation(line: 118, column: 60, scope: !3553, inlinedAt: !3565)
!3571 = !DILocation(line: 118, column: 70, scope: !3553, inlinedAt: !3565)
!3572 = !DILocation(line: 118, column: 80, scope: !3553, inlinedAt: !3565)
!3573 = !DILocation(line: 118, column: 90, scope: !3553, inlinedAt: !3565)
!3574 = !DILocation(line: 118, column: 100, scope: !3553, inlinedAt: !3565)
!3575 = !DILocation(line: 120, column: 7, scope: !3576, inlinedAt: !3565)
!3576 = distinct !DILexicalBlock(scope: !3553, file: !3467, line: 120, column: 7)
!3577 = !DILocation(line: 120, column: 7, scope: !3553, inlinedAt: !3565)
!3578 = !DILocalVariable(name: "s1", arg: 1, scope: !3579, file: !3467, line: 104, type: !93)
!3579 = distinct !DISubprogram(name: "strcaseeq4", scope: !3467, file: !3467, line: 104, type: !3580, isLocal: true, isDefinition: true, scopeLine: 105, flags: DIFlagPrototyped, isOptimized: true, unit: !264, retainedNodes: !3582)
!3580 = !DISubroutineType(types: !3581)
!3581 = !{!64, !93, !93, !60, !60, !60, !60, !60}
!3582 = !{!3578, !3583, !3584, !3585, !3586, !3587, !3588}
!3583 = !DILocalVariable(name: "s2", arg: 2, scope: !3579, file: !3467, line: 104, type: !93)
!3584 = !DILocalVariable(name: "s24", arg: 3, scope: !3579, file: !3467, line: 104, type: !60)
!3585 = !DILocalVariable(name: "s25", arg: 4, scope: !3579, file: !3467, line: 104, type: !60)
!3586 = !DILocalVariable(name: "s26", arg: 5, scope: !3579, file: !3467, line: 104, type: !60)
!3587 = !DILocalVariable(name: "s27", arg: 6, scope: !3579, file: !3467, line: 104, type: !60)
!3588 = !DILocalVariable(name: "s28", arg: 7, scope: !3579, file: !3467, line: 104, type: !60)
!3589 = !DILocation(line: 104, column: 25, scope: !3579, inlinedAt: !3590)
!3590 = distinct !DILocation(line: 125, column: 16, scope: !3591, inlinedAt: !3565)
!3591 = distinct !DILexicalBlock(scope: !3592, file: !3467, line: 122, column: 11)
!3592 = distinct !DILexicalBlock(scope: !3576, file: !3467, line: 121, column: 5)
!3593 = !DILocation(line: 104, column: 41, scope: !3579, inlinedAt: !3590)
!3594 = !DILocation(line: 104, column: 50, scope: !3579, inlinedAt: !3590)
!3595 = !DILocation(line: 104, column: 60, scope: !3579, inlinedAt: !3590)
!3596 = !DILocation(line: 104, column: 70, scope: !3579, inlinedAt: !3590)
!3597 = !DILocation(line: 104, column: 80, scope: !3579, inlinedAt: !3590)
!3598 = !DILocation(line: 104, column: 90, scope: !3579, inlinedAt: !3590)
!3599 = !DILocation(line: 106, column: 7, scope: !3600, inlinedAt: !3590)
!3600 = distinct !DILexicalBlock(scope: !3579, file: !3467, line: 106, column: 7)
!3601 = !DILocation(line: 106, column: 7, scope: !3579, inlinedAt: !3590)
!3602 = !DILocalVariable(name: "s1", arg: 1, scope: !3603, file: !3467, line: 90, type: !93)
!3603 = distinct !DISubprogram(name: "strcaseeq5", scope: !3467, file: !3467, line: 90, type: !3604, isLocal: true, isDefinition: true, scopeLine: 91, flags: DIFlagPrototyped, isOptimized: true, unit: !264, retainedNodes: !3606)
!3604 = !DISubroutineType(types: !3605)
!3605 = !{!64, !93, !93, !60, !60, !60, !60}
!3606 = !{!3602, !3607, !3608, !3609, !3610, !3611}
!3607 = !DILocalVariable(name: "s2", arg: 2, scope: !3603, file: !3467, line: 90, type: !93)
!3608 = !DILocalVariable(name: "s25", arg: 3, scope: !3603, file: !3467, line: 90, type: !60)
!3609 = !DILocalVariable(name: "s26", arg: 4, scope: !3603, file: !3467, line: 90, type: !60)
!3610 = !DILocalVariable(name: "s27", arg: 5, scope: !3603, file: !3467, line: 90, type: !60)
!3611 = !DILocalVariable(name: "s28", arg: 6, scope: !3603, file: !3467, line: 90, type: !60)
!3612 = !DILocation(line: 90, column: 25, scope: !3603, inlinedAt: !3613)
!3613 = distinct !DILocation(line: 111, column: 16, scope: !3614, inlinedAt: !3590)
!3614 = distinct !DILexicalBlock(scope: !3615, file: !3467, line: 108, column: 11)
!3615 = distinct !DILexicalBlock(scope: !3600, file: !3467, line: 107, column: 5)
!3616 = !DILocation(line: 90, column: 41, scope: !3603, inlinedAt: !3613)
!3617 = !DILocation(line: 90, column: 50, scope: !3603, inlinedAt: !3613)
!3618 = !DILocation(line: 90, column: 60, scope: !3603, inlinedAt: !3613)
!3619 = !DILocation(line: 90, column: 70, scope: !3603, inlinedAt: !3613)
!3620 = !DILocation(line: 90, column: 80, scope: !3603, inlinedAt: !3613)
!3621 = !DILocation(line: 92, column: 7, scope: !3622, inlinedAt: !3613)
!3622 = distinct !DILexicalBlock(scope: !3603, file: !3467, line: 92, column: 7)
!3623 = !DILocation(line: 92, column: 7, scope: !3603, inlinedAt: !3613)
!3624 = !DILocation(line: 235, column: 12, scope: !3483)
!3625 = !DILocation(line: 235, column: 21, scope: !3483)
!3626 = !DILocation(line: 235, column: 5, scope: !3483)
!3627 = !DILocation(line: 146, column: 25, scope: !3497, inlinedAt: !3628)
!3628 = distinct !DILocation(line: 167, column: 16, scope: !3512, inlinedAt: !3629)
!3629 = distinct !DILocation(line: 236, column: 7, scope: !3630)
!3630 = distinct !DILexicalBlock(scope: !3448, file: !276, line: 236, column: 7)
!3631 = !DILocation(line: 146, column: 41, scope: !3497, inlinedAt: !3628)
!3632 = !DILocation(line: 146, column: 50, scope: !3497, inlinedAt: !3628)
!3633 = !DILocation(line: 146, column: 60, scope: !3497, inlinedAt: !3628)
!3634 = !DILocation(line: 146, column: 70, scope: !3497, inlinedAt: !3628)
!3635 = !DILocation(line: 146, column: 80, scope: !3497, inlinedAt: !3628)
!3636 = !DILocation(line: 146, column: 90, scope: !3497, inlinedAt: !3628)
!3637 = !DILocation(line: 146, column: 100, scope: !3497, inlinedAt: !3628)
!3638 = !DILocation(line: 146, column: 110, scope: !3497, inlinedAt: !3628)
!3639 = !DILocation(line: 146, column: 120, scope: !3497, inlinedAt: !3628)
!3640 = !DILocation(line: 148, column: 7, scope: !3524, inlinedAt: !3628)
!3641 = !DILocation(line: 132, column: 25, scope: !3526, inlinedAt: !3642)
!3642 = distinct !DILocation(line: 153, column: 16, scope: !3540, inlinedAt: !3628)
!3643 = !DILocation(line: 132, column: 41, scope: !3526, inlinedAt: !3642)
!3644 = !DILocation(line: 132, column: 50, scope: !3526, inlinedAt: !3642)
!3645 = !DILocation(line: 132, column: 60, scope: !3526, inlinedAt: !3642)
!3646 = !DILocation(line: 132, column: 70, scope: !3526, inlinedAt: !3642)
!3647 = !DILocation(line: 132, column: 80, scope: !3526, inlinedAt: !3642)
!3648 = !DILocation(line: 132, column: 90, scope: !3526, inlinedAt: !3642)
!3649 = !DILocation(line: 132, column: 100, scope: !3526, inlinedAt: !3642)
!3650 = !DILocation(line: 132, column: 110, scope: !3526, inlinedAt: !3642)
!3651 = !DILocation(line: 134, column: 7, scope: !3551, inlinedAt: !3642)
!3652 = !DILocation(line: 134, column: 7, scope: !3526, inlinedAt: !3642)
!3653 = !DILocation(line: 118, column: 25, scope: !3553, inlinedAt: !3654)
!3654 = distinct !DILocation(line: 139, column: 16, scope: !3566, inlinedAt: !3642)
!3655 = !DILocation(line: 118, column: 41, scope: !3553, inlinedAt: !3654)
!3656 = !DILocation(line: 118, column: 50, scope: !3553, inlinedAt: !3654)
!3657 = !DILocation(line: 118, column: 60, scope: !3553, inlinedAt: !3654)
!3658 = !DILocation(line: 118, column: 70, scope: !3553, inlinedAt: !3654)
!3659 = !DILocation(line: 118, column: 80, scope: !3553, inlinedAt: !3654)
!3660 = !DILocation(line: 118, column: 90, scope: !3553, inlinedAt: !3654)
!3661 = !DILocation(line: 118, column: 100, scope: !3553, inlinedAt: !3654)
!3662 = !DILocation(line: 120, column: 7, scope: !3576, inlinedAt: !3654)
!3663 = !DILocation(line: 120, column: 7, scope: !3553, inlinedAt: !3654)
!3664 = !DILocation(line: 104, column: 25, scope: !3579, inlinedAt: !3665)
!3665 = distinct !DILocation(line: 125, column: 16, scope: !3591, inlinedAt: !3654)
!3666 = !DILocation(line: 104, column: 41, scope: !3579, inlinedAt: !3665)
!3667 = !DILocation(line: 104, column: 50, scope: !3579, inlinedAt: !3665)
!3668 = !DILocation(line: 104, column: 60, scope: !3579, inlinedAt: !3665)
!3669 = !DILocation(line: 104, column: 70, scope: !3579, inlinedAt: !3665)
!3670 = !DILocation(line: 104, column: 80, scope: !3579, inlinedAt: !3665)
!3671 = !DILocation(line: 104, column: 90, scope: !3579, inlinedAt: !3665)
!3672 = !DILocation(line: 106, column: 7, scope: !3600, inlinedAt: !3665)
!3673 = !DILocation(line: 106, column: 7, scope: !3579, inlinedAt: !3665)
!3674 = !DILocation(line: 90, column: 25, scope: !3603, inlinedAt: !3675)
!3675 = distinct !DILocation(line: 111, column: 16, scope: !3614, inlinedAt: !3665)
!3676 = !DILocation(line: 90, column: 41, scope: !3603, inlinedAt: !3675)
!3677 = !DILocation(line: 90, column: 50, scope: !3603, inlinedAt: !3675)
!3678 = !DILocation(line: 90, column: 60, scope: !3603, inlinedAt: !3675)
!3679 = !DILocation(line: 90, column: 70, scope: !3603, inlinedAt: !3675)
!3680 = !DILocation(line: 90, column: 80, scope: !3603, inlinedAt: !3675)
!3681 = !DILocation(line: 92, column: 7, scope: !3622, inlinedAt: !3675)
!3682 = !DILocation(line: 92, column: 7, scope: !3603, inlinedAt: !3675)
!3683 = !DILocalVariable(name: "s1", arg: 1, scope: !3684, file: !3467, line: 76, type: !93)
!3684 = distinct !DISubprogram(name: "strcaseeq6", scope: !3467, file: !3467, line: 76, type: !3685, isLocal: true, isDefinition: true, scopeLine: 77, flags: DIFlagPrototyped, isOptimized: true, unit: !264, retainedNodes: !3687)
!3685 = !DISubroutineType(types: !3686)
!3686 = !{!64, !93, !93, !60, !60, !60}
!3687 = !{!3683, !3688, !3689, !3690, !3691}
!3688 = !DILocalVariable(name: "s2", arg: 2, scope: !3684, file: !3467, line: 76, type: !93)
!3689 = !DILocalVariable(name: "s26", arg: 3, scope: !3684, file: !3467, line: 76, type: !60)
!3690 = !DILocalVariable(name: "s27", arg: 4, scope: !3684, file: !3467, line: 76, type: !60)
!3691 = !DILocalVariable(name: "s28", arg: 5, scope: !3684, file: !3467, line: 76, type: !60)
!3692 = !DILocation(line: 76, column: 25, scope: !3684, inlinedAt: !3693)
!3693 = distinct !DILocation(line: 97, column: 16, scope: !3694, inlinedAt: !3675)
!3694 = distinct !DILexicalBlock(scope: !3695, file: !3467, line: 94, column: 11)
!3695 = distinct !DILexicalBlock(scope: !3622, file: !3467, line: 93, column: 5)
!3696 = !DILocation(line: 76, column: 41, scope: !3684, inlinedAt: !3693)
!3697 = !DILocation(line: 76, column: 50, scope: !3684, inlinedAt: !3693)
!3698 = !DILocation(line: 76, column: 60, scope: !3684, inlinedAt: !3693)
!3699 = !DILocation(line: 76, column: 70, scope: !3684, inlinedAt: !3693)
!3700 = !DILocation(line: 78, column: 7, scope: !3701, inlinedAt: !3693)
!3701 = distinct !DILexicalBlock(scope: !3684, file: !3467, line: 78, column: 7)
!3702 = !DILocation(line: 78, column: 7, scope: !3684, inlinedAt: !3693)
!3703 = !DILocalVariable(name: "s1", arg: 1, scope: !3704, file: !3467, line: 62, type: !93)
!3704 = distinct !DISubprogram(name: "strcaseeq7", scope: !3467, file: !3467, line: 62, type: !3705, isLocal: true, isDefinition: true, scopeLine: 63, flags: DIFlagPrototyped, isOptimized: true, unit: !264, retainedNodes: !3707)
!3705 = !DISubroutineType(types: !3706)
!3706 = !{!64, !93, !93, !60, !60}
!3707 = !{!3703, !3708, !3709, !3710}
!3708 = !DILocalVariable(name: "s2", arg: 2, scope: !3704, file: !3467, line: 62, type: !93)
!3709 = !DILocalVariable(name: "s27", arg: 3, scope: !3704, file: !3467, line: 62, type: !60)
!3710 = !DILocalVariable(name: "s28", arg: 4, scope: !3704, file: !3467, line: 62, type: !60)
!3711 = !DILocation(line: 62, column: 25, scope: !3704, inlinedAt: !3712)
!3712 = distinct !DILocation(line: 83, column: 16, scope: !3713, inlinedAt: !3693)
!3713 = distinct !DILexicalBlock(scope: !3714, file: !3467, line: 80, column: 11)
!3714 = distinct !DILexicalBlock(scope: !3701, file: !3467, line: 79, column: 5)
!3715 = !DILocation(line: 62, column: 41, scope: !3704, inlinedAt: !3712)
!3716 = !DILocation(line: 62, column: 50, scope: !3704, inlinedAt: !3712)
!3717 = !DILocation(line: 62, column: 60, scope: !3704, inlinedAt: !3712)
!3718 = !DILocation(line: 64, column: 7, scope: !3719, inlinedAt: !3712)
!3719 = distinct !DILexicalBlock(scope: !3704, file: !3467, line: 64, column: 7)
!3720 = !DILocation(line: 236, column: 7, scope: !3448)
!3721 = !DILocation(line: 237, column: 12, scope: !3630)
!3722 = !DILocation(line: 237, column: 21, scope: !3630)
!3723 = !DILocation(line: 237, column: 5, scope: !3630)
!3724 = !DILocation(line: 239, column: 13, scope: !3448)
!3725 = !DILocation(line: 239, column: 11, scope: !3448)
!3726 = !DILocation(line: 239, column: 3, scope: !3448)
!3727 = !DILocation(line: 0, scope: !3448)
!3728 = !DILocation(line: 240, column: 1, scope: !3448)
!3729 = distinct !DISubprogram(name: "quotearg_alloc", scope: !276, file: !276, line: 799, type: !3730, isLocal: false, isDefinition: true, scopeLine: 801, flags: DIFlagPrototyped, isOptimized: true, unit: !264, retainedNodes: !3732)
!3730 = !DISubroutineType(types: !3731)
!3731 = !{!59, !93, !62, !2769}
!3732 = !{!3733, !3734, !3735}
!3733 = !DILocalVariable(name: "arg", arg: 1, scope: !3729, file: !276, line: 799, type: !93)
!3734 = !DILocalVariable(name: "argsize", arg: 2, scope: !3729, file: !276, line: 799, type: !62)
!3735 = !DILocalVariable(name: "o", arg: 3, scope: !3729, file: !276, line: 800, type: !2769)
!3736 = !DILocation(line: 799, column: 29, scope: !3729)
!3737 = !DILocation(line: 799, column: 41, scope: !3729)
!3738 = !DILocation(line: 800, column: 47, scope: !3729)
!3739 = !DILocalVariable(name: "arg", arg: 1, scope: !3740, file: !276, line: 812, type: !93)
!3740 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !276, file: !276, line: 812, type: !3741, isLocal: false, isDefinition: true, scopeLine: 814, flags: DIFlagPrototyped, isOptimized: true, unit: !264, retainedNodes: !3743)
!3741 = !DISubroutineType(types: !3742)
!3742 = !{!59, !93, !62, !382, !2769}
!3743 = !{!3739, !3744, !3745, !3746, !3747, !3748, !3749, !3750, !3751}
!3744 = !DILocalVariable(name: "argsize", arg: 2, scope: !3740, file: !276, line: 812, type: !62)
!3745 = !DILocalVariable(name: "size", arg: 3, scope: !3740, file: !276, line: 812, type: !382)
!3746 = !DILocalVariable(name: "o", arg: 4, scope: !3740, file: !276, line: 813, type: !2769)
!3747 = !DILocalVariable(name: "p", scope: !3740, file: !276, line: 815, type: !2769)
!3748 = !DILocalVariable(name: "e", scope: !3740, file: !276, line: 816, type: !64)
!3749 = !DILocalVariable(name: "flags", scope: !3740, file: !276, line: 818, type: !64)
!3750 = !DILocalVariable(name: "bufsize", scope: !3740, file: !276, line: 819, type: !62)
!3751 = !DILocalVariable(name: "buf", scope: !3740, file: !276, line: 823, type: !59)
!3752 = !DILocation(line: 812, column: 33, scope: !3740, inlinedAt: !3753)
!3753 = distinct !DILocation(line: 802, column: 10, scope: !3729)
!3754 = !DILocation(line: 812, column: 45, scope: !3740, inlinedAt: !3753)
!3755 = !DILocation(line: 812, column: 62, scope: !3740, inlinedAt: !3753)
!3756 = !DILocation(line: 813, column: 51, scope: !3740, inlinedAt: !3753)
!3757 = !DILocation(line: 815, column: 37, scope: !3740, inlinedAt: !3753)
!3758 = !DILocation(line: 815, column: 33, scope: !3740, inlinedAt: !3753)
!3759 = !DILocation(line: 816, column: 11, scope: !3740, inlinedAt: !3753)
!3760 = !DILocation(line: 816, column: 7, scope: !3740, inlinedAt: !3753)
!3761 = !DILocation(line: 818, column: 18, scope: !3740, inlinedAt: !3753)
!3762 = !DILocation(line: 818, column: 24, scope: !3740, inlinedAt: !3753)
!3763 = !DILocation(line: 818, column: 7, scope: !3740, inlinedAt: !3753)
!3764 = !DILocation(line: 819, column: 69, scope: !3740, inlinedAt: !3753)
!3765 = !DILocation(line: 820, column: 53, scope: !3740, inlinedAt: !3753)
!3766 = !DILocation(line: 821, column: 49, scope: !3740, inlinedAt: !3753)
!3767 = !DILocation(line: 822, column: 49, scope: !3740, inlinedAt: !3753)
!3768 = !DILocation(line: 819, column: 20, scope: !3740, inlinedAt: !3753)
!3769 = !DILocation(line: 822, column: 62, scope: !3740, inlinedAt: !3753)
!3770 = !DILocation(line: 819, column: 10, scope: !3740, inlinedAt: !3753)
!3771 = !DILocalVariable(name: "n", arg: 1, scope: !3772, file: !378, line: 216, type: !62)
!3772 = distinct !DISubprogram(name: "xcharalloc", scope: !378, file: !378, line: 216, type: !3773, isLocal: false, isDefinition: true, scopeLine: 217, flags: DIFlagPrototyped, isOptimized: true, unit: !264, retainedNodes: !3775)
!3773 = !DISubroutineType(types: !3774)
!3774 = !{!59, !62}
!3775 = !{!3771}
!3776 = !DILocation(line: 216, column: 20, scope: !3772, inlinedAt: !3777)
!3777 = distinct !DILocation(line: 823, column: 15, scope: !3740, inlinedAt: !3753)
!3778 = !DILocation(line: 218, column: 10, scope: !3772, inlinedAt: !3777)
!3779 = !DILocation(line: 823, column: 9, scope: !3740, inlinedAt: !3753)
!3780 = !DILocation(line: 824, column: 60, scope: !3740, inlinedAt: !3753)
!3781 = !DILocation(line: 826, column: 32, scope: !3740, inlinedAt: !3753)
!3782 = !DILocation(line: 826, column: 47, scope: !3740, inlinedAt: !3753)
!3783 = !DILocation(line: 824, column: 3, scope: !3740, inlinedAt: !3753)
!3784 = !DILocation(line: 827, column: 9, scope: !3740, inlinedAt: !3753)
!3785 = !DILocation(line: 802, column: 3, scope: !3729)
!3786 = !DILocation(line: 812, column: 33, scope: !3740)
!3787 = !DILocation(line: 812, column: 45, scope: !3740)
!3788 = !DILocation(line: 812, column: 62, scope: !3740)
!3789 = !DILocation(line: 813, column: 51, scope: !3740)
!3790 = !DILocation(line: 815, column: 37, scope: !3740)
!3791 = !DILocation(line: 815, column: 33, scope: !3740)
!3792 = !DILocation(line: 816, column: 11, scope: !3740)
!3793 = !DILocation(line: 816, column: 7, scope: !3740)
!3794 = !DILocation(line: 818, column: 18, scope: !3740)
!3795 = !DILocation(line: 818, column: 27, scope: !3740)
!3796 = !DILocation(line: 818, column: 24, scope: !3740)
!3797 = !DILocation(line: 818, column: 7, scope: !3740)
!3798 = !DILocation(line: 819, column: 69, scope: !3740)
!3799 = !DILocation(line: 820, column: 53, scope: !3740)
!3800 = !DILocation(line: 821, column: 49, scope: !3740)
!3801 = !DILocation(line: 822, column: 49, scope: !3740)
!3802 = !DILocation(line: 819, column: 20, scope: !3740)
!3803 = !DILocation(line: 822, column: 62, scope: !3740)
!3804 = !DILocation(line: 819, column: 10, scope: !3740)
!3805 = !DILocation(line: 216, column: 20, scope: !3772, inlinedAt: !3806)
!3806 = distinct !DILocation(line: 823, column: 15, scope: !3740)
!3807 = !DILocation(line: 218, column: 10, scope: !3772, inlinedAt: !3806)
!3808 = !DILocation(line: 823, column: 9, scope: !3740)
!3809 = !DILocation(line: 824, column: 60, scope: !3740)
!3810 = !DILocation(line: 826, column: 32, scope: !3740)
!3811 = !DILocation(line: 826, column: 47, scope: !3740)
!3812 = !DILocation(line: 824, column: 3, scope: !3740)
!3813 = !DILocation(line: 827, column: 9, scope: !3740)
!3814 = !DILocation(line: 828, column: 7, scope: !3740)
!3815 = !DILocation(line: 829, column: 11, scope: !3816)
!3816 = distinct !DILexicalBlock(scope: !3740, file: !276, line: 828, column: 7)
!3817 = !DILocation(line: 829, column: 5, scope: !3816)
!3818 = !DILocation(line: 830, column: 3, scope: !3740)
!3819 = distinct !DISubprogram(name: "quotearg_free", scope: !276, file: !276, line: 848, type: !842, isLocal: false, isDefinition: true, scopeLine: 849, flags: DIFlagPrototyped, isOptimized: true, unit: !264, retainedNodes: !3820)
!3820 = !{!3821, !3822}
!3821 = !DILocalVariable(name: "sv", scope: !3819, file: !276, line: 850, type: !302)
!3822 = !DILocalVariable(name: "i", scope: !3819, file: !276, line: 851, type: !64)
!3823 = !DILocation(line: 850, column: 24, scope: !3819)
!3824 = !DILocation(line: 850, column: 19, scope: !3819)
!3825 = !DILocation(line: 851, column: 7, scope: !3819)
!3826 = !DILocation(line: 852, column: 19, scope: !3827)
!3827 = distinct !DILexicalBlock(scope: !3828, file: !276, line: 852, column: 3)
!3828 = distinct !DILexicalBlock(scope: !3819, file: !276, line: 852, column: 3)
!3829 = !DILocation(line: 852, column: 17, scope: !3827)
!3830 = !DILocation(line: 852, column: 3, scope: !3828)
!3831 = !DILocation(line: 853, column: 17, scope: !3827)
!3832 = !{!3833, !836, i64 8}
!3833 = !{!"slotvec", !1102, i64 0, !836, i64 8}
!3834 = !DILocation(line: 853, column: 5, scope: !3827)
!3835 = !DILocation(line: 852, column: 28, scope: !3827)
!3836 = distinct !{!3836, !3830, !3837}
!3837 = !DILocation(line: 853, column: 20, scope: !3828)
!3838 = !DILocation(line: 854, column: 13, scope: !3839)
!3839 = distinct !DILexicalBlock(scope: !3819, file: !276, line: 854, column: 7)
!3840 = !DILocation(line: 854, column: 17, scope: !3839)
!3841 = !DILocation(line: 854, column: 7, scope: !3819)
!3842 = !DILocation(line: 856, column: 7, scope: !3843)
!3843 = distinct !DILexicalBlock(scope: !3839, file: !276, line: 855, column: 5)
!3844 = !DILocation(line: 857, column: 21, scope: !3843)
!3845 = !{!3833, !1102, i64 0}
!3846 = !DILocation(line: 858, column: 20, scope: !3843)
!3847 = !DILocation(line: 859, column: 5, scope: !3843)
!3848 = !DILocation(line: 860, column: 10, scope: !3849)
!3849 = distinct !DILexicalBlock(scope: !3819, file: !276, line: 860, column: 7)
!3850 = !DILocation(line: 860, column: 7, scope: !3819)
!3851 = !DILocation(line: 862, column: 13, scope: !3852)
!3852 = distinct !DILexicalBlock(scope: !3849, file: !276, line: 861, column: 5)
!3853 = !DILocation(line: 862, column: 7, scope: !3852)
!3854 = !DILocation(line: 863, column: 15, scope: !3852)
!3855 = !DILocation(line: 864, column: 5, scope: !3852)
!3856 = !DILocation(line: 865, column: 10, scope: !3819)
!3857 = !DILocation(line: 866, column: 1, scope: !3819)
!3858 = distinct !DISubprogram(name: "quotearg_n", scope: !276, file: !276, line: 931, type: !3859, isLocal: false, isDefinition: true, scopeLine: 932, flags: DIFlagPrototyped, isOptimized: true, unit: !264, retainedNodes: !3861)
!3859 = !DISubroutineType(types: !3860)
!3860 = !{!59, !64, !93}
!3861 = !{!3862, !3863}
!3862 = !DILocalVariable(name: "n", arg: 1, scope: !3858, file: !276, line: 931, type: !64)
!3863 = !DILocalVariable(name: "arg", arg: 2, scope: !3858, file: !276, line: 931, type: !93)
!3864 = !DILocation(line: 931, column: 17, scope: !3858)
!3865 = !DILocation(line: 931, column: 32, scope: !3858)
!3866 = !DILocation(line: 933, column: 10, scope: !3858)
!3867 = !DILocation(line: 933, column: 3, scope: !3858)
!3868 = distinct !DISubprogram(name: "quotearg_n_options", scope: !276, file: !276, line: 877, type: !3869, isLocal: true, isDefinition: true, scopeLine: 879, flags: DIFlagPrototyped, isOptimized: true, unit: !264, retainedNodes: !3871)
!3869 = !DISubroutineType(types: !3870)
!3870 = !{!59, !64, !93, !62, !2769}
!3871 = !{!3872, !3873, !3874, !3875, !3876, !3877, !3878, !3881, !3882, !3884, !3885, !3886}
!3872 = !DILocalVariable(name: "n", arg: 1, scope: !3868, file: !276, line: 877, type: !64)
!3873 = !DILocalVariable(name: "arg", arg: 2, scope: !3868, file: !276, line: 877, type: !93)
!3874 = !DILocalVariable(name: "argsize", arg: 3, scope: !3868, file: !276, line: 877, type: !62)
!3875 = !DILocalVariable(name: "options", arg: 4, scope: !3868, file: !276, line: 878, type: !2769)
!3876 = !DILocalVariable(name: "e", scope: !3868, file: !276, line: 880, type: !64)
!3877 = !DILocalVariable(name: "sv", scope: !3868, file: !276, line: 882, type: !302)
!3878 = !DILocalVariable(name: "preallocated", scope: !3879, file: !276, line: 889, type: !71)
!3879 = distinct !DILexicalBlock(scope: !3880, file: !276, line: 888, column: 5)
!3880 = distinct !DILexicalBlock(scope: !3868, file: !276, line: 887, column: 7)
!3881 = !DILocalVariable(name: "nmax", scope: !3879, file: !276, line: 890, type: !64)
!3882 = !DILocalVariable(name: "size", scope: !3883, file: !276, line: 903, type: !62)
!3883 = distinct !DILexicalBlock(scope: !3868, file: !276, line: 902, column: 3)
!3884 = !DILocalVariable(name: "val", scope: !3883, file: !276, line: 904, type: !59)
!3885 = !DILocalVariable(name: "flags", scope: !3883, file: !276, line: 906, type: !64)
!3886 = !DILocalVariable(name: "qsize", scope: !3883, file: !276, line: 907, type: !62)
!3887 = !DILocation(line: 877, column: 25, scope: !3868)
!3888 = !DILocation(line: 877, column: 40, scope: !3868)
!3889 = !DILocation(line: 877, column: 52, scope: !3868)
!3890 = !DILocation(line: 878, column: 51, scope: !3868)
!3891 = !DILocation(line: 880, column: 11, scope: !3868)
!3892 = !DILocation(line: 880, column: 7, scope: !3868)
!3893 = !DILocation(line: 882, column: 24, scope: !3868)
!3894 = !DILocation(line: 882, column: 19, scope: !3868)
!3895 = !DILocation(line: 884, column: 9, scope: !3896)
!3896 = distinct !DILexicalBlock(scope: !3868, file: !276, line: 884, column: 7)
!3897 = !DILocation(line: 884, column: 7, scope: !3868)
!3898 = !DILocation(line: 885, column: 5, scope: !3896)
!3899 = !DILocation(line: 887, column: 7, scope: !3880)
!3900 = !DILocation(line: 887, column: 14, scope: !3880)
!3901 = !DILocation(line: 887, column: 7, scope: !3868)
!3902 = !DILocation(line: 889, column: 31, scope: !3879)
!3903 = !DILocation(line: 890, column: 11, scope: !3879)
!3904 = !DILocation(line: 892, column: 16, scope: !3905)
!3905 = distinct !DILexicalBlock(scope: !3879, file: !276, line: 892, column: 11)
!3906 = !DILocation(line: 892, column: 11, scope: !3879)
!3907 = !DILocation(line: 893, column: 9, scope: !3905)
!3908 = !DILocation(line: 895, column: 32, scope: !3879)
!3909 = !DILocation(line: 895, column: 61, scope: !3879)
!3910 = !DILocation(line: 895, column: 58, scope: !3879)
!3911 = !DILocation(line: 895, column: 66, scope: !3879)
!3912 = !DILocation(line: 895, column: 22, scope: !3879)
!3913 = !DILocation(line: 895, column: 15, scope: !3879)
!3914 = !DILocation(line: 896, column: 11, scope: !3879)
!3915 = !DILocation(line: 897, column: 15, scope: !3916)
!3916 = distinct !DILexicalBlock(scope: !3879, file: !276, line: 896, column: 11)
!3917 = !{i64 0, i64 8, !1101, i64 8, i64 8, !835}
!3918 = !DILocation(line: 897, column: 9, scope: !3916)
!3919 = !DILocation(line: 898, column: 20, scope: !3879)
!3920 = !DILocation(line: 898, column: 18, scope: !3879)
!3921 = !DILocation(line: 898, column: 7, scope: !3879)
!3922 = !DILocation(line: 898, column: 38, scope: !3879)
!3923 = !DILocation(line: 898, column: 31, scope: !3879)
!3924 = !DILocation(line: 898, column: 48, scope: !3879)
!3925 = !DILocation(line: 899, column: 14, scope: !3879)
!3926 = !DILocation(line: 900, column: 5, scope: !3879)
!3927 = !DILocation(line: 0, scope: !3868)
!3928 = !DILocation(line: 903, column: 19, scope: !3883)
!3929 = !DILocation(line: 903, column: 25, scope: !3883)
!3930 = !DILocation(line: 903, column: 12, scope: !3883)
!3931 = !DILocation(line: 904, column: 23, scope: !3883)
!3932 = !DILocation(line: 904, column: 11, scope: !3883)
!3933 = !DILocation(line: 906, column: 26, scope: !3883)
!3934 = !DILocation(line: 906, column: 32, scope: !3883)
!3935 = !DILocation(line: 906, column: 9, scope: !3883)
!3936 = !DILocation(line: 908, column: 55, scope: !3883)
!3937 = !DILocation(line: 909, column: 46, scope: !3883)
!3938 = !DILocation(line: 910, column: 55, scope: !3883)
!3939 = !DILocation(line: 911, column: 55, scope: !3883)
!3940 = !DILocation(line: 907, column: 20, scope: !3883)
!3941 = !DILocation(line: 907, column: 12, scope: !3883)
!3942 = !DILocation(line: 913, column: 14, scope: !3943)
!3943 = distinct !DILexicalBlock(scope: !3883, file: !276, line: 913, column: 9)
!3944 = !DILocation(line: 913, column: 9, scope: !3883)
!3945 = !DILocation(line: 915, column: 35, scope: !3946)
!3946 = distinct !DILexicalBlock(scope: !3943, file: !276, line: 914, column: 7)
!3947 = !DILocation(line: 915, column: 20, scope: !3946)
!3948 = !DILocation(line: 916, column: 17, scope: !3949)
!3949 = distinct !DILexicalBlock(scope: !3946, file: !276, line: 916, column: 13)
!3950 = !DILocation(line: 916, column: 13, scope: !3946)
!3951 = !DILocation(line: 917, column: 11, scope: !3949)
!3952 = !DILocation(line: 216, column: 20, scope: !3772, inlinedAt: !3953)
!3953 = distinct !DILocation(line: 918, column: 27, scope: !3946)
!3954 = !DILocation(line: 218, column: 10, scope: !3772, inlinedAt: !3953)
!3955 = !DILocation(line: 918, column: 19, scope: !3946)
!3956 = !DILocation(line: 919, column: 69, scope: !3946)
!3957 = !DILocation(line: 921, column: 44, scope: !3946)
!3958 = !DILocation(line: 922, column: 44, scope: !3946)
!3959 = !DILocation(line: 919, column: 9, scope: !3946)
!3960 = !DILocation(line: 923, column: 7, scope: !3946)
!3961 = !DILocation(line: 0, scope: !3883)
!3962 = !DILocation(line: 925, column: 11, scope: !3883)
!3963 = !DILocation(line: 926, column: 5, scope: !3883)
!3964 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !276, file: !276, line: 937, type: !3965, isLocal: false, isDefinition: true, scopeLine: 938, flags: DIFlagPrototyped, isOptimized: true, unit: !264, retainedNodes: !3967)
!3965 = !DISubroutineType(types: !3966)
!3966 = !{!59, !64, !93, !62}
!3967 = !{!3968, !3969, !3970}
!3968 = !DILocalVariable(name: "n", arg: 1, scope: !3964, file: !276, line: 937, type: !64)
!3969 = !DILocalVariable(name: "arg", arg: 2, scope: !3964, file: !276, line: 937, type: !93)
!3970 = !DILocalVariable(name: "argsize", arg: 3, scope: !3964, file: !276, line: 937, type: !62)
!3971 = !DILocation(line: 937, column: 21, scope: !3964)
!3972 = !DILocation(line: 937, column: 36, scope: !3964)
!3973 = !DILocation(line: 937, column: 48, scope: !3964)
!3974 = !DILocation(line: 939, column: 10, scope: !3964)
!3975 = !DILocation(line: 939, column: 3, scope: !3964)
!3976 = distinct !DISubprogram(name: "quotearg", scope: !276, file: !276, line: 943, type: !3977, isLocal: false, isDefinition: true, scopeLine: 944, flags: DIFlagPrototyped, isOptimized: true, unit: !264, retainedNodes: !3979)
!3977 = !DISubroutineType(types: !3978)
!3978 = !{!59, !93}
!3979 = !{!3980}
!3980 = !DILocalVariable(name: "arg", arg: 1, scope: !3976, file: !276, line: 943, type: !93)
!3981 = !DILocation(line: 943, column: 23, scope: !3976)
!3982 = !DILocation(line: 931, column: 17, scope: !3858, inlinedAt: !3983)
!3983 = distinct !DILocation(line: 945, column: 10, scope: !3976)
!3984 = !DILocation(line: 931, column: 32, scope: !3858, inlinedAt: !3983)
!3985 = !DILocation(line: 933, column: 10, scope: !3858, inlinedAt: !3983)
!3986 = !DILocation(line: 945, column: 3, scope: !3976)
!3987 = distinct !DISubprogram(name: "quotearg_mem", scope: !276, file: !276, line: 949, type: !3988, isLocal: false, isDefinition: true, scopeLine: 950, flags: DIFlagPrototyped, isOptimized: true, unit: !264, retainedNodes: !3990)
!3988 = !DISubroutineType(types: !3989)
!3989 = !{!59, !93, !62}
!3990 = !{!3991, !3992}
!3991 = !DILocalVariable(name: "arg", arg: 1, scope: !3987, file: !276, line: 949, type: !93)
!3992 = !DILocalVariable(name: "argsize", arg: 2, scope: !3987, file: !276, line: 949, type: !62)
!3993 = !DILocation(line: 949, column: 27, scope: !3987)
!3994 = !DILocation(line: 949, column: 39, scope: !3987)
!3995 = !DILocation(line: 937, column: 21, scope: !3964, inlinedAt: !3996)
!3996 = distinct !DILocation(line: 951, column: 10, scope: !3987)
!3997 = !DILocation(line: 937, column: 36, scope: !3964, inlinedAt: !3996)
!3998 = !DILocation(line: 937, column: 48, scope: !3964, inlinedAt: !3996)
!3999 = !DILocation(line: 939, column: 10, scope: !3964, inlinedAt: !3996)
!4000 = !DILocation(line: 951, column: 3, scope: !3987)
!4001 = distinct !DISubprogram(name: "quotearg_n_style", scope: !276, file: !276, line: 955, type: !4002, isLocal: false, isDefinition: true, scopeLine: 956, flags: DIFlagPrototyped, isOptimized: true, unit: !264, retainedNodes: !4004)
!4002 = !DISubroutineType(types: !4003)
!4003 = !{!59, !64, !5, !93}
!4004 = !{!4005, !4006, !4007, !4008}
!4005 = !DILocalVariable(name: "n", arg: 1, scope: !4001, file: !276, line: 955, type: !64)
!4006 = !DILocalVariable(name: "s", arg: 2, scope: !4001, file: !276, line: 955, type: !5)
!4007 = !DILocalVariable(name: "arg", arg: 3, scope: !4001, file: !276, line: 955, type: !93)
!4008 = !DILocalVariable(name: "o", scope: !4001, file: !276, line: 957, type: !2770)
!4009 = !DILocation(line: 955, column: 23, scope: !4001)
!4010 = !DILocation(line: 955, column: 45, scope: !4001)
!4011 = !DILocation(line: 955, column: 60, scope: !4001)
!4012 = !DILocation(line: 957, column: 3, scope: !4001)
!4013 = !DILocation(line: 957, column: 32, scope: !4001)
!4014 = !DILocalVariable(name: "style", arg: 1, scope: !4015, file: !276, line: 193, type: !5)
!4015 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !276, file: !276, line: 193, type: !4016, isLocal: true, isDefinition: true, scopeLine: 194, flags: DIFlagPrototyped, isOptimized: true, unit: !264, retainedNodes: !4018)
!4016 = !DISubroutineType(types: !4017)
!4017 = !{!283, !5}
!4018 = !{!4014, !4019}
!4019 = !DILocalVariable(name: "o", scope: !4015, file: !276, line: 195, type: !283)
!4020 = !DILocation(line: 193, column: 48, scope: !4015, inlinedAt: !4021)
!4021 = distinct !DILocation(line: 957, column: 36, scope: !4001)
!4022 = !DILocation(line: 195, column: 26, scope: !4015, inlinedAt: !4021)
!4023 = !{!4024}
!4024 = distinct !{!4024, !4025, !"quoting_options_from_style: argument 0"}
!4025 = distinct !{!4025, !"quoting_options_from_style"}
!4026 = !DILocation(line: 196, column: 13, scope: !4027, inlinedAt: !4021)
!4027 = distinct !DILexicalBlock(scope: !4015, file: !276, line: 196, column: 7)
!4028 = !DILocation(line: 196, column: 7, scope: !4015, inlinedAt: !4021)
!4029 = !DILocation(line: 197, column: 5, scope: !4027, inlinedAt: !4021)
!4030 = !DILocation(line: 198, column: 5, scope: !4015, inlinedAt: !4021)
!4031 = !DILocation(line: 198, column: 11, scope: !4015, inlinedAt: !4021)
!4032 = !DILocation(line: 958, column: 10, scope: !4001)
!4033 = !DILocation(line: 959, column: 1, scope: !4001)
!4034 = !DILocation(line: 958, column: 3, scope: !4001)
!4035 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !276, file: !276, line: 962, type: !4036, isLocal: false, isDefinition: true, scopeLine: 964, flags: DIFlagPrototyped, isOptimized: true, unit: !264, retainedNodes: !4038)
!4036 = !DISubroutineType(types: !4037)
!4037 = !{!59, !64, !5, !93, !62}
!4038 = !{!4039, !4040, !4041, !4042, !4043}
!4039 = !DILocalVariable(name: "n", arg: 1, scope: !4035, file: !276, line: 962, type: !64)
!4040 = !DILocalVariable(name: "s", arg: 2, scope: !4035, file: !276, line: 962, type: !5)
!4041 = !DILocalVariable(name: "arg", arg: 3, scope: !4035, file: !276, line: 963, type: !93)
!4042 = !DILocalVariable(name: "argsize", arg: 4, scope: !4035, file: !276, line: 963, type: !62)
!4043 = !DILocalVariable(name: "o", scope: !4035, file: !276, line: 965, type: !2770)
!4044 = !DILocation(line: 962, column: 27, scope: !4035)
!4045 = !DILocation(line: 962, column: 49, scope: !4035)
!4046 = !DILocation(line: 963, column: 35, scope: !4035)
!4047 = !DILocation(line: 963, column: 47, scope: !4035)
!4048 = !DILocation(line: 965, column: 3, scope: !4035)
!4049 = !DILocation(line: 965, column: 32, scope: !4035)
!4050 = !DILocation(line: 193, column: 48, scope: !4015, inlinedAt: !4051)
!4051 = distinct !DILocation(line: 965, column: 36, scope: !4035)
!4052 = !DILocation(line: 195, column: 26, scope: !4015, inlinedAt: !4051)
!4053 = !{!4054}
!4054 = distinct !{!4054, !4055, !"quoting_options_from_style: argument 0"}
!4055 = distinct !{!4055, !"quoting_options_from_style"}
!4056 = !DILocation(line: 196, column: 13, scope: !4027, inlinedAt: !4051)
!4057 = !DILocation(line: 196, column: 7, scope: !4015, inlinedAt: !4051)
!4058 = !DILocation(line: 197, column: 5, scope: !4027, inlinedAt: !4051)
!4059 = !DILocation(line: 198, column: 5, scope: !4015, inlinedAt: !4051)
!4060 = !DILocation(line: 198, column: 11, scope: !4015, inlinedAt: !4051)
!4061 = !DILocation(line: 966, column: 10, scope: !4035)
!4062 = !DILocation(line: 967, column: 1, scope: !4035)
!4063 = !DILocation(line: 966, column: 3, scope: !4035)
!4064 = distinct !DISubprogram(name: "quotearg_style", scope: !276, file: !276, line: 970, type: !4065, isLocal: false, isDefinition: true, scopeLine: 971, flags: DIFlagPrototyped, isOptimized: true, unit: !264, retainedNodes: !4067)
!4065 = !DISubroutineType(types: !4066)
!4066 = !{!59, !5, !93}
!4067 = !{!4068, !4069}
!4068 = !DILocalVariable(name: "s", arg: 1, scope: !4064, file: !276, line: 970, type: !5)
!4069 = !DILocalVariable(name: "arg", arg: 2, scope: !4064, file: !276, line: 970, type: !93)
!4070 = !DILocation(line: 970, column: 36, scope: !4064)
!4071 = !DILocation(line: 970, column: 51, scope: !4064)
!4072 = !DILocation(line: 955, column: 23, scope: !4001, inlinedAt: !4073)
!4073 = distinct !DILocation(line: 972, column: 10, scope: !4064)
!4074 = !DILocation(line: 955, column: 45, scope: !4001, inlinedAt: !4073)
!4075 = !DILocation(line: 955, column: 60, scope: !4001, inlinedAt: !4073)
!4076 = !DILocation(line: 957, column: 3, scope: !4001, inlinedAt: !4073)
!4077 = !DILocation(line: 957, column: 32, scope: !4001, inlinedAt: !4073)
!4078 = !DILocation(line: 193, column: 48, scope: !4015, inlinedAt: !4079)
!4079 = distinct !DILocation(line: 957, column: 36, scope: !4001, inlinedAt: !4073)
!4080 = !DILocation(line: 195, column: 26, scope: !4015, inlinedAt: !4079)
!4081 = !{!4082}
!4082 = distinct !{!4082, !4083, !"quoting_options_from_style: argument 0"}
!4083 = distinct !{!4083, !"quoting_options_from_style"}
!4084 = !DILocation(line: 196, column: 13, scope: !4027, inlinedAt: !4079)
!4085 = !DILocation(line: 196, column: 7, scope: !4015, inlinedAt: !4079)
!4086 = !DILocation(line: 197, column: 5, scope: !4027, inlinedAt: !4079)
!4087 = !DILocation(line: 198, column: 5, scope: !4015, inlinedAt: !4079)
!4088 = !DILocation(line: 198, column: 11, scope: !4015, inlinedAt: !4079)
!4089 = !DILocation(line: 958, column: 10, scope: !4001, inlinedAt: !4073)
!4090 = !DILocation(line: 959, column: 1, scope: !4001, inlinedAt: !4073)
!4091 = !DILocation(line: 972, column: 3, scope: !4064)
!4092 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !276, file: !276, line: 976, type: !4093, isLocal: false, isDefinition: true, scopeLine: 977, flags: DIFlagPrototyped, isOptimized: true, unit: !264, retainedNodes: !4095)
!4093 = !DISubroutineType(types: !4094)
!4094 = !{!59, !5, !93, !62}
!4095 = !{!4096, !4097, !4098}
!4096 = !DILocalVariable(name: "s", arg: 1, scope: !4092, file: !276, line: 976, type: !5)
!4097 = !DILocalVariable(name: "arg", arg: 2, scope: !4092, file: !276, line: 976, type: !93)
!4098 = !DILocalVariable(name: "argsize", arg: 3, scope: !4092, file: !276, line: 976, type: !62)
!4099 = !DILocation(line: 976, column: 40, scope: !4092)
!4100 = !DILocation(line: 976, column: 55, scope: !4092)
!4101 = !DILocation(line: 976, column: 67, scope: !4092)
!4102 = !DILocation(line: 962, column: 27, scope: !4035, inlinedAt: !4103)
!4103 = distinct !DILocation(line: 978, column: 10, scope: !4092)
!4104 = !DILocation(line: 962, column: 49, scope: !4035, inlinedAt: !4103)
!4105 = !DILocation(line: 963, column: 35, scope: !4035, inlinedAt: !4103)
!4106 = !DILocation(line: 963, column: 47, scope: !4035, inlinedAt: !4103)
!4107 = !DILocation(line: 965, column: 3, scope: !4035, inlinedAt: !4103)
!4108 = !DILocation(line: 965, column: 32, scope: !4035, inlinedAt: !4103)
!4109 = !DILocation(line: 193, column: 48, scope: !4015, inlinedAt: !4110)
!4110 = distinct !DILocation(line: 965, column: 36, scope: !4035, inlinedAt: !4103)
!4111 = !DILocation(line: 195, column: 26, scope: !4015, inlinedAt: !4110)
!4112 = !{!4113}
!4113 = distinct !{!4113, !4114, !"quoting_options_from_style: argument 0"}
!4114 = distinct !{!4114, !"quoting_options_from_style"}
!4115 = !DILocation(line: 196, column: 13, scope: !4027, inlinedAt: !4110)
!4116 = !DILocation(line: 196, column: 7, scope: !4015, inlinedAt: !4110)
!4117 = !DILocation(line: 197, column: 5, scope: !4027, inlinedAt: !4110)
!4118 = !DILocation(line: 198, column: 5, scope: !4015, inlinedAt: !4110)
!4119 = !DILocation(line: 198, column: 11, scope: !4015, inlinedAt: !4110)
!4120 = !DILocation(line: 966, column: 10, scope: !4035, inlinedAt: !4103)
!4121 = !DILocation(line: 967, column: 1, scope: !4035, inlinedAt: !4103)
!4122 = !DILocation(line: 978, column: 3, scope: !4092)
!4123 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !276, file: !276, line: 982, type: !4124, isLocal: false, isDefinition: true, scopeLine: 983, flags: DIFlagPrototyped, isOptimized: true, unit: !264, retainedNodes: !4126)
!4124 = !DISubroutineType(types: !4125)
!4125 = !{!59, !93, !62, !60}
!4126 = !{!4127, !4128, !4129, !4130}
!4127 = !DILocalVariable(name: "arg", arg: 1, scope: !4123, file: !276, line: 982, type: !93)
!4128 = !DILocalVariable(name: "argsize", arg: 2, scope: !4123, file: !276, line: 982, type: !62)
!4129 = !DILocalVariable(name: "ch", arg: 3, scope: !4123, file: !276, line: 982, type: !60)
!4130 = !DILocalVariable(name: "options", scope: !4123, file: !276, line: 984, type: !283)
!4131 = !DILocation(line: 982, column: 32, scope: !4123)
!4132 = !DILocation(line: 982, column: 44, scope: !4123)
!4133 = !DILocation(line: 982, column: 58, scope: !4123)
!4134 = !DILocation(line: 984, column: 3, scope: !4123)
!4135 = !DILocation(line: 985, column: 13, scope: !4123)
!4136 = !{i64 0, i64 4, !1129, i64 4, i64 4, !1043, i64 8, i64 32, !1129, i64 40, i64 8, !835, i64 48, i64 8, !835}
!4137 = !DILocation(line: 984, column: 26, scope: !4123)
!4138 = !DILocation(line: 152, column: 43, scope: !2791, inlinedAt: !4139)
!4139 = distinct !DILocation(line: 986, column: 3, scope: !4123)
!4140 = !DILocation(line: 152, column: 51, scope: !2791, inlinedAt: !4139)
!4141 = !DILocation(line: 152, column: 58, scope: !2791, inlinedAt: !4139)
!4142 = !DILocation(line: 154, column: 17, scope: !2791, inlinedAt: !4139)
!4143 = !DILocation(line: 156, column: 62, scope: !2791, inlinedAt: !4139)
!4144 = !DILocation(line: 156, column: 57, scope: !2791, inlinedAt: !4139)
!4145 = !DILocation(line: 155, column: 17, scope: !2791, inlinedAt: !4139)
!4146 = !DILocation(line: 157, column: 15, scope: !2791, inlinedAt: !4139)
!4147 = !DILocation(line: 157, column: 7, scope: !2791, inlinedAt: !4139)
!4148 = !DILocation(line: 158, column: 12, scope: !2791, inlinedAt: !4139)
!4149 = !DILocation(line: 158, column: 15, scope: !2791, inlinedAt: !4139)
!4150 = !DILocation(line: 158, column: 25, scope: !2791, inlinedAt: !4139)
!4151 = !DILocation(line: 158, column: 7, scope: !2791, inlinedAt: !4139)
!4152 = !DILocation(line: 159, column: 18, scope: !2791, inlinedAt: !4139)
!4153 = !DILocation(line: 159, column: 23, scope: !2791, inlinedAt: !4139)
!4154 = !DILocation(line: 159, column: 6, scope: !2791, inlinedAt: !4139)
!4155 = !DILocation(line: 987, column: 10, scope: !4123)
!4156 = !DILocation(line: 988, column: 1, scope: !4123)
!4157 = !DILocation(line: 987, column: 3, scope: !4123)
!4158 = distinct !DISubprogram(name: "quotearg_char", scope: !276, file: !276, line: 991, type: !4159, isLocal: false, isDefinition: true, scopeLine: 992, flags: DIFlagPrototyped, isOptimized: true, unit: !264, retainedNodes: !4161)
!4159 = !DISubroutineType(types: !4160)
!4160 = !{!59, !93, !60}
!4161 = !{!4162, !4163}
!4162 = !DILocalVariable(name: "arg", arg: 1, scope: !4158, file: !276, line: 991, type: !93)
!4163 = !DILocalVariable(name: "ch", arg: 2, scope: !4158, file: !276, line: 991, type: !60)
!4164 = !DILocation(line: 991, column: 28, scope: !4158)
!4165 = !DILocation(line: 991, column: 38, scope: !4158)
!4166 = !DILocation(line: 982, column: 32, scope: !4123, inlinedAt: !4167)
!4167 = distinct !DILocation(line: 993, column: 10, scope: !4158)
!4168 = !DILocation(line: 982, column: 44, scope: !4123, inlinedAt: !4167)
!4169 = !DILocation(line: 982, column: 58, scope: !4123, inlinedAt: !4167)
!4170 = !DILocation(line: 984, column: 3, scope: !4123, inlinedAt: !4167)
!4171 = !DILocation(line: 985, column: 13, scope: !4123, inlinedAt: !4167)
!4172 = !DILocation(line: 984, column: 26, scope: !4123, inlinedAt: !4167)
!4173 = !DILocation(line: 152, column: 43, scope: !2791, inlinedAt: !4174)
!4174 = distinct !DILocation(line: 986, column: 3, scope: !4123, inlinedAt: !4167)
!4175 = !DILocation(line: 152, column: 51, scope: !2791, inlinedAt: !4174)
!4176 = !DILocation(line: 152, column: 58, scope: !2791, inlinedAt: !4174)
!4177 = !DILocation(line: 154, column: 17, scope: !2791, inlinedAt: !4174)
!4178 = !DILocation(line: 156, column: 62, scope: !2791, inlinedAt: !4174)
!4179 = !DILocation(line: 156, column: 57, scope: !2791, inlinedAt: !4174)
!4180 = !DILocation(line: 155, column: 17, scope: !2791, inlinedAt: !4174)
!4181 = !DILocation(line: 157, column: 15, scope: !2791, inlinedAt: !4174)
!4182 = !DILocation(line: 157, column: 7, scope: !2791, inlinedAt: !4174)
!4183 = !DILocation(line: 158, column: 12, scope: !2791, inlinedAt: !4174)
!4184 = !DILocation(line: 158, column: 15, scope: !2791, inlinedAt: !4174)
!4185 = !DILocation(line: 158, column: 25, scope: !2791, inlinedAt: !4174)
!4186 = !DILocation(line: 158, column: 7, scope: !2791, inlinedAt: !4174)
!4187 = !DILocation(line: 159, column: 18, scope: !2791, inlinedAt: !4174)
!4188 = !DILocation(line: 159, column: 23, scope: !2791, inlinedAt: !4174)
!4189 = !DILocation(line: 159, column: 6, scope: !2791, inlinedAt: !4174)
!4190 = !DILocation(line: 987, column: 10, scope: !4123, inlinedAt: !4167)
!4191 = !DILocation(line: 988, column: 1, scope: !4123, inlinedAt: !4167)
!4192 = !DILocation(line: 993, column: 3, scope: !4158)
!4193 = distinct !DISubprogram(name: "quotearg_colon", scope: !276, file: !276, line: 997, type: !3977, isLocal: false, isDefinition: true, scopeLine: 998, flags: DIFlagPrototyped, isOptimized: true, unit: !264, retainedNodes: !4194)
!4194 = !{!4195}
!4195 = !DILocalVariable(name: "arg", arg: 1, scope: !4193, file: !276, line: 997, type: !93)
!4196 = !DILocation(line: 997, column: 29, scope: !4193)
!4197 = !DILocation(line: 991, column: 28, scope: !4158, inlinedAt: !4198)
!4198 = distinct !DILocation(line: 999, column: 10, scope: !4193)
!4199 = !DILocation(line: 991, column: 38, scope: !4158, inlinedAt: !4198)
!4200 = !DILocation(line: 982, column: 32, scope: !4123, inlinedAt: !4201)
!4201 = distinct !DILocation(line: 993, column: 10, scope: !4158, inlinedAt: !4198)
!4202 = !DILocation(line: 982, column: 44, scope: !4123, inlinedAt: !4201)
!4203 = !DILocation(line: 982, column: 58, scope: !4123, inlinedAt: !4201)
!4204 = !DILocation(line: 984, column: 3, scope: !4123, inlinedAt: !4201)
!4205 = !DILocation(line: 985, column: 13, scope: !4123, inlinedAt: !4201)
!4206 = !DILocation(line: 984, column: 26, scope: !4123, inlinedAt: !4201)
!4207 = !DILocation(line: 152, column: 43, scope: !2791, inlinedAt: !4208)
!4208 = distinct !DILocation(line: 986, column: 3, scope: !4123, inlinedAt: !4201)
!4209 = !DILocation(line: 152, column: 51, scope: !2791, inlinedAt: !4208)
!4210 = !DILocation(line: 152, column: 58, scope: !2791, inlinedAt: !4208)
!4211 = !DILocation(line: 154, column: 17, scope: !2791, inlinedAt: !4208)
!4212 = !DILocation(line: 156, column: 57, scope: !2791, inlinedAt: !4208)
!4213 = !DILocation(line: 155, column: 17, scope: !2791, inlinedAt: !4208)
!4214 = !DILocation(line: 157, column: 7, scope: !2791, inlinedAt: !4208)
!4215 = !DILocation(line: 158, column: 12, scope: !2791, inlinedAt: !4208)
!4216 = !DILocation(line: 159, column: 6, scope: !2791, inlinedAt: !4208)
!4217 = !DILocation(line: 987, column: 10, scope: !4123, inlinedAt: !4201)
!4218 = !DILocation(line: 988, column: 1, scope: !4123, inlinedAt: !4201)
!4219 = !DILocation(line: 999, column: 3, scope: !4193)
!4220 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !276, file: !276, line: 1003, type: !3988, isLocal: false, isDefinition: true, scopeLine: 1004, flags: DIFlagPrototyped, isOptimized: true, unit: !264, retainedNodes: !4221)
!4221 = !{!4222, !4223}
!4222 = !DILocalVariable(name: "arg", arg: 1, scope: !4220, file: !276, line: 1003, type: !93)
!4223 = !DILocalVariable(name: "argsize", arg: 2, scope: !4220, file: !276, line: 1003, type: !62)
!4224 = !DILocation(line: 1003, column: 33, scope: !4220)
!4225 = !DILocation(line: 1003, column: 45, scope: !4220)
!4226 = !DILocation(line: 982, column: 32, scope: !4123, inlinedAt: !4227)
!4227 = distinct !DILocation(line: 1005, column: 10, scope: !4220)
!4228 = !DILocation(line: 982, column: 44, scope: !4123, inlinedAt: !4227)
!4229 = !DILocation(line: 982, column: 58, scope: !4123, inlinedAt: !4227)
!4230 = !DILocation(line: 984, column: 3, scope: !4123, inlinedAt: !4227)
!4231 = !DILocation(line: 985, column: 13, scope: !4123, inlinedAt: !4227)
!4232 = !DILocation(line: 984, column: 26, scope: !4123, inlinedAt: !4227)
!4233 = !DILocation(line: 152, column: 43, scope: !2791, inlinedAt: !4234)
!4234 = distinct !DILocation(line: 986, column: 3, scope: !4123, inlinedAt: !4227)
!4235 = !DILocation(line: 152, column: 51, scope: !2791, inlinedAt: !4234)
!4236 = !DILocation(line: 152, column: 58, scope: !2791, inlinedAt: !4234)
!4237 = !DILocation(line: 154, column: 17, scope: !2791, inlinedAt: !4234)
!4238 = !DILocation(line: 156, column: 57, scope: !2791, inlinedAt: !4234)
!4239 = !DILocation(line: 155, column: 17, scope: !2791, inlinedAt: !4234)
!4240 = !DILocation(line: 157, column: 7, scope: !2791, inlinedAt: !4234)
!4241 = !DILocation(line: 158, column: 12, scope: !2791, inlinedAt: !4234)
!4242 = !DILocation(line: 159, column: 6, scope: !2791, inlinedAt: !4234)
!4243 = !DILocation(line: 987, column: 10, scope: !4123, inlinedAt: !4227)
!4244 = !DILocation(line: 988, column: 1, scope: !4123, inlinedAt: !4227)
!4245 = !DILocation(line: 1005, column: 3, scope: !4220)
!4246 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !276, file: !276, line: 1009, type: !4002, isLocal: false, isDefinition: true, scopeLine: 1010, flags: DIFlagPrototyped, isOptimized: true, unit: !264, retainedNodes: !4247)
!4247 = !{!4248, !4249, !4250, !4251}
!4248 = !DILocalVariable(name: "n", arg: 1, scope: !4246, file: !276, line: 1009, type: !64)
!4249 = !DILocalVariable(name: "s", arg: 2, scope: !4246, file: !276, line: 1009, type: !5)
!4250 = !DILocalVariable(name: "arg", arg: 3, scope: !4246, file: !276, line: 1009, type: !93)
!4251 = !DILocalVariable(name: "options", scope: !4246, file: !276, line: 1011, type: !283)
!4252 = !DILocation(line: 195, column: 26, scope: !4015, inlinedAt: !4253)
!4253 = distinct !DILocation(line: 1012, column: 13, scope: !4246)
!4254 = !DILocation(line: 1009, column: 29, scope: !4246)
!4255 = !DILocation(line: 1009, column: 51, scope: !4246)
!4256 = !DILocation(line: 1009, column: 66, scope: !4246)
!4257 = !DILocation(line: 1011, column: 3, scope: !4246)
!4258 = !DILocation(line: 1012, column: 13, scope: !4246)
!4259 = !DILocation(line: 193, column: 48, scope: !4015, inlinedAt: !4253)
!4260 = !{!4261}
!4261 = distinct !{!4261, !4262, !"quoting_options_from_style: argument 0"}
!4262 = distinct !{!4262, !"quoting_options_from_style"}
!4263 = !DILocation(line: 196, column: 13, scope: !4027, inlinedAt: !4253)
!4264 = !DILocation(line: 196, column: 7, scope: !4015, inlinedAt: !4253)
!4265 = !DILocation(line: 197, column: 5, scope: !4027, inlinedAt: !4253)
!4266 = !DILocation(line: 1011, column: 26, scope: !4246)
!4267 = !DILocation(line: 152, column: 43, scope: !2791, inlinedAt: !4268)
!4268 = distinct !DILocation(line: 1013, column: 3, scope: !4246)
!4269 = !DILocation(line: 152, column: 51, scope: !2791, inlinedAt: !4268)
!4270 = !DILocation(line: 152, column: 58, scope: !2791, inlinedAt: !4268)
!4271 = !DILocation(line: 154, column: 17, scope: !2791, inlinedAt: !4268)
!4272 = !DILocation(line: 156, column: 57, scope: !2791, inlinedAt: !4268)
!4273 = !DILocation(line: 155, column: 17, scope: !2791, inlinedAt: !4268)
!4274 = !DILocation(line: 157, column: 7, scope: !2791, inlinedAt: !4268)
!4275 = !DILocation(line: 158, column: 12, scope: !2791, inlinedAt: !4268)
!4276 = !DILocation(line: 159, column: 6, scope: !2791, inlinedAt: !4268)
!4277 = !DILocation(line: 1014, column: 10, scope: !4246)
!4278 = !DILocation(line: 1015, column: 1, scope: !4246)
!4279 = !DILocation(line: 1014, column: 3, scope: !4246)
!4280 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !276, file: !276, line: 1018, type: !4281, isLocal: false, isDefinition: true, scopeLine: 1020, flags: DIFlagPrototyped, isOptimized: true, unit: !264, retainedNodes: !4283)
!4281 = !DISubroutineType(types: !4282)
!4282 = !{!59, !64, !93, !93, !93}
!4283 = !{!4284, !4285, !4286, !4287}
!4284 = !DILocalVariable(name: "n", arg: 1, scope: !4280, file: !276, line: 1018, type: !64)
!4285 = !DILocalVariable(name: "left_quote", arg: 2, scope: !4280, file: !276, line: 1018, type: !93)
!4286 = !DILocalVariable(name: "right_quote", arg: 3, scope: !4280, file: !276, line: 1019, type: !93)
!4287 = !DILocalVariable(name: "arg", arg: 4, scope: !4280, file: !276, line: 1019, type: !93)
!4288 = !DILocation(line: 1018, column: 24, scope: !4280)
!4289 = !DILocation(line: 1018, column: 39, scope: !4280)
!4290 = !DILocation(line: 1019, column: 32, scope: !4280)
!4291 = !DILocation(line: 1019, column: 57, scope: !4280)
!4292 = !DILocalVariable(name: "n", arg: 1, scope: !4293, file: !276, line: 1026, type: !64)
!4293 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !276, file: !276, line: 1026, type: !4294, isLocal: false, isDefinition: true, scopeLine: 1029, flags: DIFlagPrototyped, isOptimized: true, unit: !264, retainedNodes: !4296)
!4294 = !DISubroutineType(types: !4295)
!4295 = !{!59, !64, !93, !93, !93, !62}
!4296 = !{!4292, !4297, !4298, !4299, !4300, !4301}
!4297 = !DILocalVariable(name: "left_quote", arg: 2, scope: !4293, file: !276, line: 1026, type: !93)
!4298 = !DILocalVariable(name: "right_quote", arg: 3, scope: !4293, file: !276, line: 1027, type: !93)
!4299 = !DILocalVariable(name: "arg", arg: 4, scope: !4293, file: !276, line: 1028, type: !93)
!4300 = !DILocalVariable(name: "argsize", arg: 5, scope: !4293, file: !276, line: 1028, type: !62)
!4301 = !DILocalVariable(name: "o", scope: !4293, file: !276, line: 1030, type: !283)
!4302 = !DILocation(line: 1026, column: 28, scope: !4293, inlinedAt: !4303)
!4303 = distinct !DILocation(line: 1021, column: 10, scope: !4280)
!4304 = !DILocation(line: 1026, column: 43, scope: !4293, inlinedAt: !4303)
!4305 = !DILocation(line: 1027, column: 36, scope: !4293, inlinedAt: !4303)
!4306 = !DILocation(line: 1028, column: 36, scope: !4293, inlinedAt: !4303)
!4307 = !DILocation(line: 1028, column: 48, scope: !4293, inlinedAt: !4303)
!4308 = !DILocation(line: 1030, column: 3, scope: !4293, inlinedAt: !4303)
!4309 = !DILocation(line: 1030, column: 30, scope: !4293, inlinedAt: !4303)
!4310 = !DILocation(line: 1030, column: 26, scope: !4293, inlinedAt: !4303)
!4311 = !DILocation(line: 179, column: 45, scope: !2839, inlinedAt: !4312)
!4312 = distinct !DILocation(line: 1031, column: 3, scope: !4293, inlinedAt: !4303)
!4313 = !DILocation(line: 180, column: 33, scope: !2839, inlinedAt: !4312)
!4314 = !DILocation(line: 180, column: 57, scope: !2839, inlinedAt: !4312)
!4315 = !DILocation(line: 184, column: 6, scope: !2839, inlinedAt: !4312)
!4316 = !DILocation(line: 184, column: 12, scope: !2839, inlinedAt: !4312)
!4317 = !DILocation(line: 185, column: 8, scope: !2855, inlinedAt: !4312)
!4318 = !DILocation(line: 185, column: 23, scope: !2855, inlinedAt: !4312)
!4319 = !DILocation(line: 185, column: 19, scope: !2855, inlinedAt: !4312)
!4320 = !DILocation(line: 186, column: 5, scope: !2855, inlinedAt: !4312)
!4321 = !DILocation(line: 187, column: 6, scope: !2839, inlinedAt: !4312)
!4322 = !DILocation(line: 187, column: 17, scope: !2839, inlinedAt: !4312)
!4323 = !DILocation(line: 188, column: 6, scope: !2839, inlinedAt: !4312)
!4324 = !DILocation(line: 188, column: 18, scope: !2839, inlinedAt: !4312)
!4325 = !DILocation(line: 1032, column: 10, scope: !4293, inlinedAt: !4303)
!4326 = !DILocation(line: 1033, column: 1, scope: !4293, inlinedAt: !4303)
!4327 = !DILocation(line: 1021, column: 3, scope: !4280)
!4328 = !DILocation(line: 1026, column: 28, scope: !4293)
!4329 = !DILocation(line: 1026, column: 43, scope: !4293)
!4330 = !DILocation(line: 1027, column: 36, scope: !4293)
!4331 = !DILocation(line: 1028, column: 36, scope: !4293)
!4332 = !DILocation(line: 1028, column: 48, scope: !4293)
!4333 = !DILocation(line: 1030, column: 3, scope: !4293)
!4334 = !DILocation(line: 1030, column: 30, scope: !4293)
!4335 = !DILocation(line: 1030, column: 26, scope: !4293)
!4336 = !DILocation(line: 179, column: 45, scope: !2839, inlinedAt: !4337)
!4337 = distinct !DILocation(line: 1031, column: 3, scope: !4293)
!4338 = !DILocation(line: 180, column: 33, scope: !2839, inlinedAt: !4337)
!4339 = !DILocation(line: 180, column: 57, scope: !2839, inlinedAt: !4337)
!4340 = !DILocation(line: 184, column: 6, scope: !2839, inlinedAt: !4337)
!4341 = !DILocation(line: 184, column: 12, scope: !2839, inlinedAt: !4337)
!4342 = !DILocation(line: 185, column: 8, scope: !2855, inlinedAt: !4337)
!4343 = !DILocation(line: 185, column: 23, scope: !2855, inlinedAt: !4337)
!4344 = !DILocation(line: 185, column: 19, scope: !2855, inlinedAt: !4337)
!4345 = !DILocation(line: 186, column: 5, scope: !2855, inlinedAt: !4337)
!4346 = !DILocation(line: 187, column: 6, scope: !2839, inlinedAt: !4337)
!4347 = !DILocation(line: 187, column: 17, scope: !2839, inlinedAt: !4337)
!4348 = !DILocation(line: 188, column: 6, scope: !2839, inlinedAt: !4337)
!4349 = !DILocation(line: 188, column: 18, scope: !2839, inlinedAt: !4337)
!4350 = !DILocation(line: 1032, column: 10, scope: !4293)
!4351 = !DILocation(line: 1033, column: 1, scope: !4293)
!4352 = !DILocation(line: 1032, column: 3, scope: !4293)
!4353 = distinct !DISubprogram(name: "quotearg_custom", scope: !276, file: !276, line: 1036, type: !4354, isLocal: false, isDefinition: true, scopeLine: 1038, flags: DIFlagPrototyped, isOptimized: true, unit: !264, retainedNodes: !4356)
!4354 = !DISubroutineType(types: !4355)
!4355 = !{!59, !93, !93, !93}
!4356 = !{!4357, !4358, !4359}
!4357 = !DILocalVariable(name: "left_quote", arg: 1, scope: !4353, file: !276, line: 1036, type: !93)
!4358 = !DILocalVariable(name: "right_quote", arg: 2, scope: !4353, file: !276, line: 1036, type: !93)
!4359 = !DILocalVariable(name: "arg", arg: 3, scope: !4353, file: !276, line: 1037, type: !93)
!4360 = !DILocation(line: 1036, column: 30, scope: !4353)
!4361 = !DILocation(line: 1036, column: 54, scope: !4353)
!4362 = !DILocation(line: 1037, column: 30, scope: !4353)
!4363 = !DILocation(line: 1018, column: 24, scope: !4280, inlinedAt: !4364)
!4364 = distinct !DILocation(line: 1039, column: 10, scope: !4353)
!4365 = !DILocation(line: 1018, column: 39, scope: !4280, inlinedAt: !4364)
!4366 = !DILocation(line: 1019, column: 32, scope: !4280, inlinedAt: !4364)
!4367 = !DILocation(line: 1019, column: 57, scope: !4280, inlinedAt: !4364)
!4368 = !DILocation(line: 1026, column: 28, scope: !4293, inlinedAt: !4369)
!4369 = distinct !DILocation(line: 1021, column: 10, scope: !4280, inlinedAt: !4364)
!4370 = !DILocation(line: 1026, column: 43, scope: !4293, inlinedAt: !4369)
!4371 = !DILocation(line: 1027, column: 36, scope: !4293, inlinedAt: !4369)
!4372 = !DILocation(line: 1028, column: 36, scope: !4293, inlinedAt: !4369)
!4373 = !DILocation(line: 1028, column: 48, scope: !4293, inlinedAt: !4369)
!4374 = !DILocation(line: 1030, column: 3, scope: !4293, inlinedAt: !4369)
!4375 = !DILocation(line: 1030, column: 30, scope: !4293, inlinedAt: !4369)
!4376 = !DILocation(line: 1030, column: 26, scope: !4293, inlinedAt: !4369)
!4377 = !DILocation(line: 179, column: 45, scope: !2839, inlinedAt: !4378)
!4378 = distinct !DILocation(line: 1031, column: 3, scope: !4293, inlinedAt: !4369)
!4379 = !DILocation(line: 180, column: 33, scope: !2839, inlinedAt: !4378)
!4380 = !DILocation(line: 180, column: 57, scope: !2839, inlinedAt: !4378)
!4381 = !DILocation(line: 184, column: 6, scope: !2839, inlinedAt: !4378)
!4382 = !DILocation(line: 184, column: 12, scope: !2839, inlinedAt: !4378)
!4383 = !DILocation(line: 185, column: 8, scope: !2855, inlinedAt: !4378)
!4384 = !DILocation(line: 185, column: 23, scope: !2855, inlinedAt: !4378)
!4385 = !DILocation(line: 185, column: 19, scope: !2855, inlinedAt: !4378)
!4386 = !DILocation(line: 186, column: 5, scope: !2855, inlinedAt: !4378)
!4387 = !DILocation(line: 187, column: 6, scope: !2839, inlinedAt: !4378)
!4388 = !DILocation(line: 187, column: 17, scope: !2839, inlinedAt: !4378)
!4389 = !DILocation(line: 188, column: 6, scope: !2839, inlinedAt: !4378)
!4390 = !DILocation(line: 188, column: 18, scope: !2839, inlinedAt: !4378)
!4391 = !DILocation(line: 1032, column: 10, scope: !4293, inlinedAt: !4369)
!4392 = !DILocation(line: 1033, column: 1, scope: !4293, inlinedAt: !4369)
!4393 = !DILocation(line: 1039, column: 3, scope: !4353)
!4394 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !276, file: !276, line: 1043, type: !4395, isLocal: false, isDefinition: true, scopeLine: 1045, flags: DIFlagPrototyped, isOptimized: true, unit: !264, retainedNodes: !4397)
!4395 = !DISubroutineType(types: !4396)
!4396 = !{!59, !93, !93, !93, !62}
!4397 = !{!4398, !4399, !4400, !4401}
!4398 = !DILocalVariable(name: "left_quote", arg: 1, scope: !4394, file: !276, line: 1043, type: !93)
!4399 = !DILocalVariable(name: "right_quote", arg: 2, scope: !4394, file: !276, line: 1043, type: !93)
!4400 = !DILocalVariable(name: "arg", arg: 3, scope: !4394, file: !276, line: 1044, type: !93)
!4401 = !DILocalVariable(name: "argsize", arg: 4, scope: !4394, file: !276, line: 1044, type: !62)
!4402 = !DILocation(line: 1043, column: 34, scope: !4394)
!4403 = !DILocation(line: 1043, column: 58, scope: !4394)
!4404 = !DILocation(line: 1044, column: 34, scope: !4394)
!4405 = !DILocation(line: 1044, column: 46, scope: !4394)
!4406 = !DILocation(line: 1026, column: 28, scope: !4293, inlinedAt: !4407)
!4407 = distinct !DILocation(line: 1046, column: 10, scope: !4394)
!4408 = !DILocation(line: 1026, column: 43, scope: !4293, inlinedAt: !4407)
!4409 = !DILocation(line: 1027, column: 36, scope: !4293, inlinedAt: !4407)
!4410 = !DILocation(line: 1028, column: 36, scope: !4293, inlinedAt: !4407)
!4411 = !DILocation(line: 1028, column: 48, scope: !4293, inlinedAt: !4407)
!4412 = !DILocation(line: 1030, column: 3, scope: !4293, inlinedAt: !4407)
!4413 = !DILocation(line: 1030, column: 30, scope: !4293, inlinedAt: !4407)
!4414 = !DILocation(line: 1030, column: 26, scope: !4293, inlinedAt: !4407)
!4415 = !DILocation(line: 179, column: 45, scope: !2839, inlinedAt: !4416)
!4416 = distinct !DILocation(line: 1031, column: 3, scope: !4293, inlinedAt: !4407)
!4417 = !DILocation(line: 180, column: 33, scope: !2839, inlinedAt: !4416)
!4418 = !DILocation(line: 180, column: 57, scope: !2839, inlinedAt: !4416)
!4419 = !DILocation(line: 184, column: 6, scope: !2839, inlinedAt: !4416)
!4420 = !DILocation(line: 184, column: 12, scope: !2839, inlinedAt: !4416)
!4421 = !DILocation(line: 185, column: 8, scope: !2855, inlinedAt: !4416)
!4422 = !DILocation(line: 185, column: 23, scope: !2855, inlinedAt: !4416)
!4423 = !DILocation(line: 185, column: 19, scope: !2855, inlinedAt: !4416)
!4424 = !DILocation(line: 186, column: 5, scope: !2855, inlinedAt: !4416)
!4425 = !DILocation(line: 187, column: 6, scope: !2839, inlinedAt: !4416)
!4426 = !DILocation(line: 187, column: 17, scope: !2839, inlinedAt: !4416)
!4427 = !DILocation(line: 188, column: 6, scope: !2839, inlinedAt: !4416)
!4428 = !DILocation(line: 188, column: 18, scope: !2839, inlinedAt: !4416)
!4429 = !DILocation(line: 1032, column: 10, scope: !4293, inlinedAt: !4407)
!4430 = !DILocation(line: 1033, column: 1, scope: !4293, inlinedAt: !4407)
!4431 = !DILocation(line: 1046, column: 3, scope: !4394)
!4432 = distinct !DISubprogram(name: "quote_n_mem", scope: !276, file: !276, line: 1061, type: !4433, isLocal: false, isDefinition: true, scopeLine: 1062, flags: DIFlagPrototyped, isOptimized: true, unit: !264, retainedNodes: !4435)
!4433 = !DISubroutineType(types: !4434)
!4434 = !{!93, !64, !93, !62}
!4435 = !{!4436, !4437, !4438}
!4436 = !DILocalVariable(name: "n", arg: 1, scope: !4432, file: !276, line: 1061, type: !64)
!4437 = !DILocalVariable(name: "arg", arg: 2, scope: !4432, file: !276, line: 1061, type: !93)
!4438 = !DILocalVariable(name: "argsize", arg: 3, scope: !4432, file: !276, line: 1061, type: !62)
!4439 = !DILocation(line: 1061, column: 18, scope: !4432)
!4440 = !DILocation(line: 1061, column: 33, scope: !4432)
!4441 = !DILocation(line: 1061, column: 45, scope: !4432)
!4442 = !DILocation(line: 1063, column: 10, scope: !4432)
!4443 = !DILocation(line: 1063, column: 3, scope: !4432)
!4444 = distinct !DISubprogram(name: "quote_mem", scope: !276, file: !276, line: 1067, type: !4445, isLocal: false, isDefinition: true, scopeLine: 1068, flags: DIFlagPrototyped, isOptimized: true, unit: !264, retainedNodes: !4447)
!4445 = !DISubroutineType(types: !4446)
!4446 = !{!93, !93, !62}
!4447 = !{!4448, !4449}
!4448 = !DILocalVariable(name: "arg", arg: 1, scope: !4444, file: !276, line: 1067, type: !93)
!4449 = !DILocalVariable(name: "argsize", arg: 2, scope: !4444, file: !276, line: 1067, type: !62)
!4450 = !DILocation(line: 1067, column: 24, scope: !4444)
!4451 = !DILocation(line: 1067, column: 36, scope: !4444)
!4452 = !DILocation(line: 1061, column: 18, scope: !4432, inlinedAt: !4453)
!4453 = distinct !DILocation(line: 1069, column: 10, scope: !4444)
!4454 = !DILocation(line: 1061, column: 33, scope: !4432, inlinedAt: !4453)
!4455 = !DILocation(line: 1061, column: 45, scope: !4432, inlinedAt: !4453)
!4456 = !DILocation(line: 1063, column: 10, scope: !4432, inlinedAt: !4453)
!4457 = !DILocation(line: 1069, column: 3, scope: !4444)
!4458 = distinct !DISubprogram(name: "quote_n", scope: !276, file: !276, line: 1073, type: !4459, isLocal: false, isDefinition: true, scopeLine: 1074, flags: DIFlagPrototyped, isOptimized: true, unit: !264, retainedNodes: !4461)
!4459 = !DISubroutineType(types: !4460)
!4460 = !{!93, !64, !93}
!4461 = !{!4462, !4463}
!4462 = !DILocalVariable(name: "n", arg: 1, scope: !4458, file: !276, line: 1073, type: !64)
!4463 = !DILocalVariable(name: "arg", arg: 2, scope: !4458, file: !276, line: 1073, type: !93)
!4464 = !DILocation(line: 1073, column: 14, scope: !4458)
!4465 = !DILocation(line: 1073, column: 29, scope: !4458)
!4466 = !DILocation(line: 1061, column: 18, scope: !4432, inlinedAt: !4467)
!4467 = distinct !DILocation(line: 1075, column: 10, scope: !4458)
!4468 = !DILocation(line: 1061, column: 33, scope: !4432, inlinedAt: !4467)
!4469 = !DILocation(line: 1061, column: 45, scope: !4432, inlinedAt: !4467)
!4470 = !DILocation(line: 1063, column: 10, scope: !4432, inlinedAt: !4467)
!4471 = !DILocation(line: 1075, column: 3, scope: !4458)
!4472 = distinct !DISubprogram(name: "quote", scope: !276, file: !276, line: 1079, type: !4473, isLocal: false, isDefinition: true, scopeLine: 1080, flags: DIFlagPrototyped, isOptimized: true, unit: !264, retainedNodes: !4475)
!4473 = !DISubroutineType(types: !4474)
!4474 = !{!93, !93}
!4475 = !{!4476}
!4476 = !DILocalVariable(name: "arg", arg: 1, scope: !4472, file: !276, line: 1079, type: !93)
!4477 = !DILocation(line: 1079, column: 20, scope: !4472)
!4478 = !DILocation(line: 1073, column: 14, scope: !4458, inlinedAt: !4479)
!4479 = distinct !DILocation(line: 1081, column: 10, scope: !4472)
!4480 = !DILocation(line: 1073, column: 29, scope: !4458, inlinedAt: !4479)
!4481 = !DILocation(line: 1061, column: 18, scope: !4432, inlinedAt: !4482)
!4482 = distinct !DILocation(line: 1075, column: 10, scope: !4458, inlinedAt: !4479)
!4483 = !DILocation(line: 1061, column: 33, scope: !4432, inlinedAt: !4482)
!4484 = !DILocation(line: 1061, column: 45, scope: !4432, inlinedAt: !4482)
!4485 = !DILocation(line: 1063, column: 10, scope: !4432, inlinedAt: !4482)
!4486 = !DILocation(line: 1081, column: 3, scope: !4472)
!4487 = distinct !DISubprogram(name: "dup_safer", scope: !4488, file: !4488, line: 31, type: !1398, isLocal: false, isDefinition: true, scopeLine: 32, flags: DIFlagPrototyped, isOptimized: true, unit: !364, retainedNodes: !4489)
!4488 = !DIFile(filename: "lib/dup-safer.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!4489 = !{!4490}
!4490 = !DILocalVariable(name: "fd", arg: 1, scope: !4487, file: !4488, line: 31, type: !64)
!4491 = !DILocation(line: 31, column: 16, scope: !4487)
!4492 = !DILocation(line: 33, column: 10, scope: !4487)
!4493 = !DILocation(line: 33, column: 3, scope: !4487)
!4494 = distinct !DISubprogram(name: "version_etc_arn", scope: !370, file: !370, line: 62, type: !4495, isLocal: false, isDefinition: true, scopeLine: 66, flags: DIFlagPrototyped, isOptimized: true, unit: !366, retainedNodes: !4532)
!4495 = !DISubroutineType(types: !4496)
!4496 = !{null, !4497, !93, !93, !93, !4531, !62}
!4497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4498, size: 64)
!4498 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !100, line: 7, baseType: !4499)
!4499 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !102, line: 49, size: 1728, elements: !4500)
!4500 = !{!4501, !4502, !4503, !4504, !4505, !4506, !4507, !4508, !4509, !4510, !4511, !4512, !4513, !4514, !4516, !4517, !4518, !4519, !4520, !4521, !4522, !4523, !4524, !4525, !4526, !4527, !4528, !4529, !4530}
!4501 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4499, file: !102, line: 51, baseType: !64, size: 32)
!4502 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4499, file: !102, line: 54, baseType: !59, size: 64, offset: 64)
!4503 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4499, file: !102, line: 55, baseType: !59, size: 64, offset: 128)
!4504 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4499, file: !102, line: 56, baseType: !59, size: 64, offset: 192)
!4505 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4499, file: !102, line: 57, baseType: !59, size: 64, offset: 256)
!4506 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4499, file: !102, line: 58, baseType: !59, size: 64, offset: 320)
!4507 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4499, file: !102, line: 59, baseType: !59, size: 64, offset: 384)
!4508 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4499, file: !102, line: 60, baseType: !59, size: 64, offset: 448)
!4509 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4499, file: !102, line: 61, baseType: !59, size: 64, offset: 512)
!4510 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4499, file: !102, line: 64, baseType: !59, size: 64, offset: 576)
!4511 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4499, file: !102, line: 65, baseType: !59, size: 64, offset: 640)
!4512 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4499, file: !102, line: 66, baseType: !59, size: 64, offset: 704)
!4513 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4499, file: !102, line: 68, baseType: !117, size: 64, offset: 768)
!4514 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4499, file: !102, line: 70, baseType: !4515, size: 64, offset: 832)
!4515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4499, size: 64)
!4516 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4499, file: !102, line: 72, baseType: !64, size: 32, offset: 896)
!4517 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4499, file: !102, line: 73, baseType: !64, size: 32, offset: 928)
!4518 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4499, file: !102, line: 74, baseType: !124, size: 64, offset: 960)
!4519 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4499, file: !102, line: 77, baseType: !67, size: 16, offset: 1024)
!4520 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4499, file: !102, line: 78, baseType: !128, size: 8, offset: 1040)
!4521 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4499, file: !102, line: 79, baseType: !130, size: 8, offset: 1048)
!4522 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4499, file: !102, line: 81, baseType: !134, size: 64, offset: 1088)
!4523 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4499, file: !102, line: 89, baseType: !137, size: 64, offset: 1152)
!4524 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4499, file: !102, line: 91, baseType: !139, size: 64, offset: 1216)
!4525 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4499, file: !102, line: 92, baseType: !142, size: 64, offset: 1280)
!4526 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4499, file: !102, line: 93, baseType: !4515, size: 64, offset: 1344)
!4527 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4499, file: !102, line: 94, baseType: !61, size: 64, offset: 1408)
!4528 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4499, file: !102, line: 95, baseType: !62, size: 64, offset: 1472)
!4529 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4499, file: !102, line: 96, baseType: !64, size: 32, offset: 1536)
!4530 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4499, file: !102, line: 98, baseType: !149, size: 160, offset: 1568)
!4531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !312, size: 64)
!4532 = !{!4533, !4534, !4535, !4536, !4537, !4538}
!4533 = !DILocalVariable(name: "stream", arg: 1, scope: !4494, file: !370, line: 62, type: !4497)
!4534 = !DILocalVariable(name: "command_name", arg: 2, scope: !4494, file: !370, line: 63, type: !93)
!4535 = !DILocalVariable(name: "package", arg: 3, scope: !4494, file: !370, line: 63, type: !93)
!4536 = !DILocalVariable(name: "version", arg: 4, scope: !4494, file: !370, line: 64, type: !93)
!4537 = !DILocalVariable(name: "authors", arg: 5, scope: !4494, file: !370, line: 65, type: !4531)
!4538 = !DILocalVariable(name: "n_authors", arg: 6, scope: !4494, file: !370, line: 65, type: !62)
!4539 = !DILocation(line: 62, column: 24, scope: !4494)
!4540 = !DILocation(line: 63, column: 30, scope: !4494)
!4541 = !DILocation(line: 63, column: 56, scope: !4494)
!4542 = !DILocation(line: 64, column: 30, scope: !4494)
!4543 = !DILocation(line: 65, column: 39, scope: !4494)
!4544 = !DILocation(line: 65, column: 55, scope: !4494)
!4545 = !DILocation(line: 67, column: 7, scope: !4546)
!4546 = distinct !DILexicalBlock(scope: !4494, file: !370, line: 67, column: 7)
!4547 = !DILocation(line: 67, column: 7, scope: !4494)
!4548 = !DILocation(line: 68, column: 5, scope: !4546)
!4549 = !DILocation(line: 70, column: 5, scope: !4546)
!4550 = !DILocation(line: 84, column: 3, scope: !4494)
!4551 = !DILocation(line: 86, column: 3, scope: !4494)
!4552 = !DILocation(line: 95, column: 3, scope: !4494)
!4553 = !DILocation(line: 99, column: 7, scope: !4554)
!4554 = distinct !DILexicalBlock(scope: !4494, file: !370, line: 96, column: 5)
!4555 = !DILocation(line: 102, column: 7, scope: !4554)
!4556 = !DILocation(line: 103, column: 7, scope: !4554)
!4557 = !DILocation(line: 106, column: 7, scope: !4554)
!4558 = !DILocation(line: 107, column: 7, scope: !4554)
!4559 = !DILocation(line: 110, column: 7, scope: !4554)
!4560 = !DILocation(line: 112, column: 7, scope: !4554)
!4561 = !DILocation(line: 117, column: 7, scope: !4554)
!4562 = !DILocation(line: 119, column: 7, scope: !4554)
!4563 = !DILocation(line: 124, column: 7, scope: !4554)
!4564 = !DILocation(line: 126, column: 7, scope: !4554)
!4565 = !DILocation(line: 131, column: 7, scope: !4554)
!4566 = !DILocation(line: 134, column: 7, scope: !4554)
!4567 = !DILocation(line: 139, column: 7, scope: !4554)
!4568 = !DILocation(line: 142, column: 7, scope: !4554)
!4569 = !DILocation(line: 147, column: 7, scope: !4554)
!4570 = !DILocation(line: 151, column: 7, scope: !4554)
!4571 = !DILocation(line: 156, column: 7, scope: !4554)
!4572 = !DILocation(line: 160, column: 7, scope: !4554)
!4573 = !DILocation(line: 167, column: 7, scope: !4554)
!4574 = !DILocation(line: 171, column: 7, scope: !4554)
!4575 = !DILocation(line: 173, column: 1, scope: !4494)
!4576 = distinct !DISubprogram(name: "version_etc_ar", scope: !370, file: !370, line: 180, type: !4577, isLocal: false, isDefinition: true, scopeLine: 183, flags: DIFlagPrototyped, isOptimized: true, unit: !366, retainedNodes: !4579)
!4577 = !DISubroutineType(types: !4578)
!4578 = !{null, !4497, !93, !93, !93, !4531}
!4579 = !{!4580, !4581, !4582, !4583, !4584, !4585}
!4580 = !DILocalVariable(name: "stream", arg: 1, scope: !4576, file: !370, line: 180, type: !4497)
!4581 = !DILocalVariable(name: "command_name", arg: 2, scope: !4576, file: !370, line: 181, type: !93)
!4582 = !DILocalVariable(name: "package", arg: 3, scope: !4576, file: !370, line: 181, type: !93)
!4583 = !DILocalVariable(name: "version", arg: 4, scope: !4576, file: !370, line: 182, type: !93)
!4584 = !DILocalVariable(name: "authors", arg: 5, scope: !4576, file: !370, line: 182, type: !4531)
!4585 = !DILocalVariable(name: "n_authors", scope: !4576, file: !370, line: 184, type: !62)
!4586 = !DILocation(line: 180, column: 23, scope: !4576)
!4587 = !DILocation(line: 181, column: 29, scope: !4576)
!4588 = !DILocation(line: 181, column: 55, scope: !4576)
!4589 = !DILocation(line: 182, column: 29, scope: !4576)
!4590 = !DILocation(line: 182, column: 59, scope: !4576)
!4591 = !DILocation(line: 184, column: 10, scope: !4576)
!4592 = !DILocation(line: 186, column: 8, scope: !4593)
!4593 = distinct !DILexicalBlock(scope: !4576, file: !370, line: 186, column: 3)
!4594 = !DILocation(line: 0, scope: !4595)
!4595 = distinct !DILexicalBlock(scope: !4593, file: !370, line: 186, column: 3)
!4596 = !DILocation(line: 186, column: 23, scope: !4595)
!4597 = !DILocation(line: 186, column: 3, scope: !4593)
!4598 = !DILocation(line: 186, column: 52, scope: !4595)
!4599 = distinct !{!4599, !4597, !4600}
!4600 = !DILocation(line: 187, column: 5, scope: !4593)
!4601 = !DILocation(line: 188, column: 3, scope: !4576)
!4602 = !DILocation(line: 189, column: 1, scope: !4576)
!4603 = distinct !DISubprogram(name: "version_etc_va", scope: !370, file: !370, line: 196, type: !4604, isLocal: false, isDefinition: true, scopeLine: 199, flags: DIFlagPrototyped, isOptimized: true, unit: !366, retainedNodes: !4613)
!4604 = !DISubroutineType(types: !4605)
!4605 = !{null, !4497, !93, !93, !93, !4606}
!4606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4607, size: 64)
!4607 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !367, line: 189, size: 192, elements: !4608)
!4608 = !{!4609, !4610, !4611, !4612}
!4609 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !4607, file: !367, line: 189, baseType: !7, size: 32)
!4610 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !4607, file: !367, line: 189, baseType: !7, size: 32, offset: 32)
!4611 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !4607, file: !367, line: 189, baseType: !61, size: 64, offset: 64)
!4612 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !4607, file: !367, line: 189, baseType: !61, size: 64, offset: 128)
!4613 = !{!4614, !4615, !4616, !4617, !4618, !4619, !4620}
!4614 = !DILocalVariable(name: "stream", arg: 1, scope: !4603, file: !370, line: 196, type: !4497)
!4615 = !DILocalVariable(name: "command_name", arg: 2, scope: !4603, file: !370, line: 197, type: !93)
!4616 = !DILocalVariable(name: "package", arg: 3, scope: !4603, file: !370, line: 197, type: !93)
!4617 = !DILocalVariable(name: "version", arg: 4, scope: !4603, file: !370, line: 198, type: !93)
!4618 = !DILocalVariable(name: "authors", arg: 5, scope: !4603, file: !370, line: 198, type: !4606)
!4619 = !DILocalVariable(name: "n_authors", scope: !4603, file: !370, line: 200, type: !62)
!4620 = !DILocalVariable(name: "authtab", scope: !4603, file: !370, line: 201, type: !4621)
!4621 = !DICompositeType(tag: DW_TAG_array_type, baseType: !93, size: 640, elements: !279)
!4622 = !DILocation(line: 196, column: 23, scope: !4603)
!4623 = !DILocation(line: 197, column: 29, scope: !4603)
!4624 = !DILocation(line: 197, column: 55, scope: !4603)
!4625 = !DILocation(line: 198, column: 29, scope: !4603)
!4626 = !DILocation(line: 198, column: 46, scope: !4603)
!4627 = !DILocation(line: 201, column: 3, scope: !4603)
!4628 = !DILocation(line: 201, column: 15, scope: !4603)
!4629 = !DILocation(line: 200, column: 10, scope: !4603)
!4630 = !DILocation(line: 205, column: 35, scope: !4631)
!4631 = distinct !DILexicalBlock(scope: !4632, file: !370, line: 203, column: 3)
!4632 = distinct !DILexicalBlock(scope: !4603, file: !370, line: 203, column: 3)
!4633 = !DILocation(line: 205, column: 14, scope: !4631)
!4634 = !DILocation(line: 205, column: 33, scope: !4631)
!4635 = !DILocation(line: 205, column: 67, scope: !4631)
!4636 = !DILocation(line: 203, column: 3, scope: !4632)
!4637 = !DILocation(line: 0, scope: !4631)
!4638 = !DILocation(line: 208, column: 3, scope: !4603)
!4639 = !DILocation(line: 210, column: 1, scope: !4603)
!4640 = distinct !DISubprogram(name: "version_etc", scope: !370, file: !370, line: 227, type: !4641, isLocal: false, isDefinition: true, scopeLine: 230, flags: DIFlagPrototyped, isOptimized: true, unit: !366, retainedNodes: !4643)
!4641 = !DISubroutineType(types: !4642)
!4642 = !{null, !4497, !93, !93, !93, null}
!4643 = !{!4644, !4645, !4646, !4647, !4648}
!4644 = !DILocalVariable(name: "stream", arg: 1, scope: !4640, file: !370, line: 227, type: !4497)
!4645 = !DILocalVariable(name: "command_name", arg: 2, scope: !4640, file: !370, line: 228, type: !93)
!4646 = !DILocalVariable(name: "package", arg: 3, scope: !4640, file: !370, line: 228, type: !93)
!4647 = !DILocalVariable(name: "version", arg: 4, scope: !4640, file: !370, line: 229, type: !93)
!4648 = !DILocalVariable(name: "authors", scope: !4640, file: !370, line: 231, type: !4649)
!4649 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !2559, line: 52, baseType: !4650)
!4650 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !338, line: 48, baseType: !4651)
!4651 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !367, line: 231, baseType: !4652)
!4652 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4607, size: 192, elements: !131)
!4653 = !DILocation(line: 227, column: 20, scope: !4640)
!4654 = !DILocation(line: 228, column: 26, scope: !4640)
!4655 = !DILocation(line: 228, column: 52, scope: !4640)
!4656 = !DILocation(line: 229, column: 26, scope: !4640)
!4657 = !DILocation(line: 231, column: 3, scope: !4640)
!4658 = !DILocation(line: 231, column: 11, scope: !4640)
!4659 = !DILocation(line: 233, column: 3, scope: !4640)
!4660 = !DILocation(line: 234, column: 3, scope: !4640)
!4661 = !DILocation(line: 235, column: 3, scope: !4640)
!4662 = !DILocation(line: 236, column: 1, scope: !4640)
!4663 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !370, file: !370, line: 239, type: !842, isLocal: false, isDefinition: true, scopeLine: 240, flags: DIFlagPrototyped, isOptimized: true, unit: !366, retainedNodes: !223)
!4664 = !DILocation(line: 245, column: 3, scope: !4663)
!4665 = !DILocation(line: 251, column: 3, scope: !4663)
!4666 = !DILocation(line: 256, column: 3, scope: !4663)
!4667 = !DILocation(line: 258, column: 1, scope: !4663)
!4668 = distinct !DISubprogram(name: "xnmalloc", scope: !378, file: !378, line: 99, type: !4669, isLocal: false, isDefinition: true, scopeLine: 100, flags: DIFlagPrototyped, isOptimized: true, unit: !374, retainedNodes: !4671)
!4669 = !DISubroutineType(types: !4670)
!4670 = !{!61, !62, !62}
!4671 = !{!4672, !4673}
!4672 = !DILocalVariable(name: "n", arg: 1, scope: !4668, file: !378, line: 99, type: !62)
!4673 = !DILocalVariable(name: "s", arg: 2, scope: !4668, file: !378, line: 99, type: !62)
!4674 = !DILocation(line: 99, column: 18, scope: !4668)
!4675 = !DILocation(line: 99, column: 28, scope: !4668)
!4676 = !DILocation(line: 101, column: 7, scope: !4677)
!4677 = distinct !DILexicalBlock(scope: !4668, file: !378, line: 101, column: 7)
!4678 = !DILocation(line: 101, column: 7, scope: !4668)
!4679 = !DILocation(line: 102, column: 5, scope: !4677)
!4680 = !DILocation(line: 103, column: 21, scope: !4668)
!4681 = !DILocalVariable(name: "n", arg: 1, scope: !4682, file: !4683, line: 39, type: !62)
!4682 = distinct !DISubprogram(name: "xmalloc", scope: !4683, file: !4683, line: 39, type: !4684, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !374, retainedNodes: !4686)
!4683 = !DIFile(filename: "lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!4684 = !DISubroutineType(types: !4685)
!4685 = !{!61, !62}
!4686 = !{!4681, !4687}
!4687 = !DILocalVariable(name: "p", scope: !4682, file: !4683, line: 41, type: !61)
!4688 = !DILocation(line: 39, column: 17, scope: !4682, inlinedAt: !4689)
!4689 = distinct !DILocation(line: 103, column: 10, scope: !4668)
!4690 = !DILocation(line: 41, column: 13, scope: !4682, inlinedAt: !4689)
!4691 = !DILocation(line: 41, column: 9, scope: !4682, inlinedAt: !4689)
!4692 = !DILocation(line: 42, column: 8, scope: !4693, inlinedAt: !4689)
!4693 = distinct !DILexicalBlock(scope: !4682, file: !4683, line: 42, column: 7)
!4694 = !DILocation(line: 42, column: 15, scope: !4693, inlinedAt: !4689)
!4695 = !DILocation(line: 42, column: 10, scope: !4693, inlinedAt: !4689)
!4696 = !DILocation(line: 43, column: 5, scope: !4693, inlinedAt: !4689)
!4697 = !DILocation(line: 103, column: 3, scope: !4668)
!4698 = !DILocation(line: 39, column: 17, scope: !4682)
!4699 = !DILocation(line: 41, column: 13, scope: !4682)
!4700 = !DILocation(line: 41, column: 9, scope: !4682)
!4701 = !DILocation(line: 42, column: 8, scope: !4693)
!4702 = !DILocation(line: 42, column: 15, scope: !4693)
!4703 = !DILocation(line: 42, column: 10, scope: !4693)
!4704 = !DILocation(line: 43, column: 5, scope: !4693)
!4705 = !DILocation(line: 44, column: 3, scope: !4682)
!4706 = distinct !DISubprogram(name: "xnrealloc", scope: !378, file: !378, line: 112, type: !4707, isLocal: false, isDefinition: true, scopeLine: 113, flags: DIFlagPrototyped, isOptimized: true, unit: !374, retainedNodes: !4709)
!4707 = !DISubroutineType(types: !4708)
!4708 = !{!61, !61, !62, !62}
!4709 = !{!4710, !4711, !4712}
!4710 = !DILocalVariable(name: "p", arg: 1, scope: !4706, file: !378, line: 112, type: !61)
!4711 = !DILocalVariable(name: "n", arg: 2, scope: !4706, file: !378, line: 112, type: !62)
!4712 = !DILocalVariable(name: "s", arg: 3, scope: !4706, file: !378, line: 112, type: !62)
!4713 = !DILocation(line: 112, column: 18, scope: !4706)
!4714 = !DILocation(line: 112, column: 28, scope: !4706)
!4715 = !DILocation(line: 112, column: 38, scope: !4706)
!4716 = !DILocation(line: 114, column: 7, scope: !4717)
!4717 = distinct !DILexicalBlock(scope: !4706, file: !378, line: 114, column: 7)
!4718 = !DILocation(line: 114, column: 7, scope: !4706)
!4719 = !DILocation(line: 115, column: 5, scope: !4717)
!4720 = !DILocation(line: 116, column: 25, scope: !4706)
!4721 = !DILocalVariable(name: "p", arg: 1, scope: !4722, file: !4683, line: 51, type: !61)
!4722 = distinct !DISubprogram(name: "xrealloc", scope: !4683, file: !4683, line: 51, type: !4723, isLocal: false, isDefinition: true, scopeLine: 52, flags: DIFlagPrototyped, isOptimized: true, unit: !374, retainedNodes: !4725)
!4723 = !DISubroutineType(types: !4724)
!4724 = !{!61, !61, !62}
!4725 = !{!4721, !4726}
!4726 = !DILocalVariable(name: "n", arg: 2, scope: !4722, file: !4683, line: 51, type: !62)
!4727 = !DILocation(line: 51, column: 17, scope: !4722, inlinedAt: !4728)
!4728 = distinct !DILocation(line: 116, column: 10, scope: !4706)
!4729 = !DILocation(line: 51, column: 27, scope: !4722, inlinedAt: !4728)
!4730 = !DILocation(line: 53, column: 8, scope: !4731, inlinedAt: !4728)
!4731 = distinct !DILexicalBlock(scope: !4722, file: !4683, line: 53, column: 7)
!4732 = !DILocation(line: 53, column: 13, scope: !4731, inlinedAt: !4728)
!4733 = !DILocation(line: 53, column: 10, scope: !4731, inlinedAt: !4728)
!4734 = !DILocation(line: 57, column: 7, scope: !4735, inlinedAt: !4728)
!4735 = distinct !DILexicalBlock(scope: !4731, file: !4683, line: 54, column: 5)
!4736 = !DILocation(line: 58, column: 7, scope: !4735, inlinedAt: !4728)
!4737 = !DILocation(line: 61, column: 7, scope: !4722, inlinedAt: !4728)
!4738 = !DILocation(line: 62, column: 8, scope: !4739, inlinedAt: !4728)
!4739 = distinct !DILexicalBlock(scope: !4722, file: !4683, line: 62, column: 7)
!4740 = !DILocation(line: 62, column: 13, scope: !4739, inlinedAt: !4728)
!4741 = !DILocation(line: 62, column: 10, scope: !4739, inlinedAt: !4728)
!4742 = !DILocation(line: 63, column: 5, scope: !4739, inlinedAt: !4728)
!4743 = !DILocation(line: 0, scope: !4722, inlinedAt: !4728)
!4744 = !DILocation(line: 116, column: 3, scope: !4706)
!4745 = !DILocation(line: 51, column: 17, scope: !4722)
!4746 = !DILocation(line: 51, column: 27, scope: !4722)
!4747 = !DILocation(line: 53, column: 8, scope: !4731)
!4748 = !DILocation(line: 53, column: 13, scope: !4731)
!4749 = !DILocation(line: 53, column: 10, scope: !4731)
!4750 = !DILocation(line: 57, column: 7, scope: !4735)
!4751 = !DILocation(line: 58, column: 7, scope: !4735)
!4752 = !DILocation(line: 61, column: 7, scope: !4722)
!4753 = !DILocation(line: 62, column: 8, scope: !4739)
!4754 = !DILocation(line: 62, column: 13, scope: !4739)
!4755 = !DILocation(line: 62, column: 10, scope: !4739)
!4756 = !DILocation(line: 63, column: 5, scope: !4739)
!4757 = !DILocation(line: 0, scope: !4722)
!4758 = !DILocation(line: 65, column: 1, scope: !4722)
!4759 = !DILocation(line: 174, column: 19, scope: !379)
!4760 = !DILocation(line: 174, column: 30, scope: !379)
!4761 = !DILocation(line: 174, column: 41, scope: !379)
!4762 = !DILocation(line: 176, column: 14, scope: !379)
!4763 = !DILocation(line: 176, column: 10, scope: !379)
!4764 = !DILocation(line: 178, column: 9, scope: !4765)
!4765 = distinct !DILexicalBlock(scope: !379, file: !378, line: 178, column: 7)
!4766 = !DILocation(line: 178, column: 7, scope: !379)
!4767 = !DILocation(line: 180, column: 13, scope: !4768)
!4768 = distinct !DILexicalBlock(scope: !4769, file: !378, line: 180, column: 11)
!4769 = distinct !DILexicalBlock(scope: !4765, file: !378, line: 179, column: 5)
!4770 = !DILocation(line: 180, column: 11, scope: !4769)
!4771 = !DILocation(line: 188, column: 30, scope: !4772)
!4772 = distinct !DILexicalBlock(scope: !4768, file: !378, line: 181, column: 9)
!4773 = !DILocation(line: 189, column: 16, scope: !4772)
!4774 = !DILocation(line: 189, column: 13, scope: !4772)
!4775 = !DILocation(line: 190, column: 9, scope: !4772)
!4776 = !DILocation(line: 0, scope: !4772)
!4777 = !DILocation(line: 191, column: 11, scope: !4778)
!4778 = distinct !DILexicalBlock(scope: !4769, file: !378, line: 191, column: 11)
!4779 = !DILocation(line: 191, column: 11, scope: !4769)
!4780 = !DILocation(line: 206, column: 7, scope: !379)
!4781 = !DILocation(line: 207, column: 25, scope: !379)
!4782 = !DILocation(line: 51, column: 17, scope: !4722, inlinedAt: !4783)
!4783 = distinct !DILocation(line: 207, column: 10, scope: !379)
!4784 = !DILocation(line: 51, column: 27, scope: !4722, inlinedAt: !4783)
!4785 = !DILocation(line: 53, column: 10, scope: !4731, inlinedAt: !4783)
!4786 = !DILocation(line: 192, column: 9, scope: !4778)
!4787 = !DILocation(line: 200, column: 69, scope: !4788)
!4788 = distinct !DILexicalBlock(scope: !4789, file: !378, line: 200, column: 11)
!4789 = distinct !DILexicalBlock(scope: !4765, file: !378, line: 195, column: 5)
!4790 = !DILocation(line: 201, column: 11, scope: !4788)
!4791 = !DILocation(line: 200, column: 11, scope: !4789)
!4792 = !DILocation(line: 202, column: 9, scope: !4788)
!4793 = !DILocation(line: 203, column: 14, scope: !4789)
!4794 = !DILocation(line: 203, column: 18, scope: !4789)
!4795 = !DILocation(line: 203, column: 9, scope: !4789)
!4796 = !DILocation(line: 53, column: 8, scope: !4731, inlinedAt: !4783)
!4797 = !DILocation(line: 57, column: 7, scope: !4735, inlinedAt: !4783)
!4798 = !DILocation(line: 58, column: 7, scope: !4735, inlinedAt: !4783)
!4799 = !DILocation(line: 61, column: 7, scope: !4722, inlinedAt: !4783)
!4800 = !DILocation(line: 62, column: 8, scope: !4739, inlinedAt: !4783)
!4801 = !DILocation(line: 62, column: 13, scope: !4739, inlinedAt: !4783)
!4802 = !DILocation(line: 62, column: 10, scope: !4739, inlinedAt: !4783)
!4803 = !DILocation(line: 63, column: 5, scope: !4739, inlinedAt: !4783)
!4804 = !DILocation(line: 0, scope: !4722, inlinedAt: !4783)
!4805 = !DILocation(line: 207, column: 3, scope: !379)
!4806 = distinct !DISubprogram(name: "xcharalloc", scope: !378, file: !378, line: 216, type: !3773, isLocal: false, isDefinition: true, scopeLine: 217, flags: DIFlagPrototyped, isOptimized: true, unit: !374, retainedNodes: !4807)
!4807 = !{!4808}
!4808 = !DILocalVariable(name: "n", arg: 1, scope: !4806, file: !378, line: 216, type: !62)
!4809 = !DILocation(line: 216, column: 20, scope: !4806)
!4810 = !DILocation(line: 39, column: 17, scope: !4682, inlinedAt: !4811)
!4811 = distinct !DILocation(line: 218, column: 10, scope: !4806)
!4812 = !DILocation(line: 41, column: 13, scope: !4682, inlinedAt: !4811)
!4813 = !DILocation(line: 41, column: 9, scope: !4682, inlinedAt: !4811)
!4814 = !DILocation(line: 42, column: 8, scope: !4693, inlinedAt: !4811)
!4815 = !DILocation(line: 42, column: 15, scope: !4693, inlinedAt: !4811)
!4816 = !DILocation(line: 42, column: 10, scope: !4693, inlinedAt: !4811)
!4817 = !DILocation(line: 43, column: 5, scope: !4693, inlinedAt: !4811)
!4818 = !DILocation(line: 218, column: 3, scope: !4806)
!4819 = distinct !DISubprogram(name: "x2realloc", scope: !4683, file: !4683, line: 74, type: !4820, isLocal: false, isDefinition: true, scopeLine: 75, flags: DIFlagPrototyped, isOptimized: true, unit: !374, retainedNodes: !4822)
!4820 = !DISubroutineType(types: !4821)
!4821 = !{!61, !61, !382}
!4822 = !{!4823, !4824}
!4823 = !DILocalVariable(name: "p", arg: 1, scope: !4819, file: !4683, line: 74, type: !61)
!4824 = !DILocalVariable(name: "pn", arg: 2, scope: !4819, file: !4683, line: 74, type: !382)
!4825 = !DILocation(line: 74, column: 18, scope: !4819)
!4826 = !DILocation(line: 74, column: 29, scope: !4819)
!4827 = !DILocation(line: 174, column: 19, scope: !379, inlinedAt: !4828)
!4828 = distinct !DILocation(line: 76, column: 10, scope: !4819)
!4829 = !DILocation(line: 174, column: 30, scope: !379, inlinedAt: !4828)
!4830 = !DILocation(line: 174, column: 41, scope: !379, inlinedAt: !4828)
!4831 = !DILocation(line: 176, column: 14, scope: !379, inlinedAt: !4828)
!4832 = !DILocation(line: 176, column: 10, scope: !379, inlinedAt: !4828)
!4833 = !DILocation(line: 178, column: 9, scope: !4765, inlinedAt: !4828)
!4834 = !DILocation(line: 178, column: 7, scope: !379, inlinedAt: !4828)
!4835 = !DILocation(line: 180, column: 13, scope: !4768, inlinedAt: !4828)
!4836 = !DILocation(line: 180, column: 11, scope: !4769, inlinedAt: !4828)
!4837 = !DILocation(line: 191, column: 11, scope: !4778, inlinedAt: !4828)
!4838 = !DILocation(line: 191, column: 11, scope: !4769, inlinedAt: !4828)
!4839 = !DILocation(line: 206, column: 7, scope: !379, inlinedAt: !4828)
!4840 = !DILocation(line: 51, column: 17, scope: !4722, inlinedAt: !4841)
!4841 = distinct !DILocation(line: 207, column: 10, scope: !379, inlinedAt: !4828)
!4842 = !DILocation(line: 51, column: 27, scope: !4722, inlinedAt: !4841)
!4843 = !DILocation(line: 53, column: 10, scope: !4731, inlinedAt: !4841)
!4844 = !DILocation(line: 192, column: 9, scope: !4778, inlinedAt: !4828)
!4845 = !DILocation(line: 201, column: 11, scope: !4788, inlinedAt: !4828)
!4846 = !DILocation(line: 200, column: 11, scope: !4789, inlinedAt: !4828)
!4847 = !DILocation(line: 202, column: 9, scope: !4788, inlinedAt: !4828)
!4848 = !DILocation(line: 203, column: 14, scope: !4789, inlinedAt: !4828)
!4849 = !DILocation(line: 203, column: 18, scope: !4789, inlinedAt: !4828)
!4850 = !DILocation(line: 203, column: 9, scope: !4789, inlinedAt: !4828)
!4851 = !DILocation(line: 53, column: 8, scope: !4731, inlinedAt: !4841)
!4852 = !DILocation(line: 57, column: 7, scope: !4735, inlinedAt: !4841)
!4853 = !DILocation(line: 58, column: 7, scope: !4735, inlinedAt: !4841)
!4854 = !DILocation(line: 61, column: 7, scope: !4722, inlinedAt: !4841)
!4855 = !DILocation(line: 62, column: 8, scope: !4739, inlinedAt: !4841)
!4856 = !DILocation(line: 62, column: 13, scope: !4739, inlinedAt: !4841)
!4857 = !DILocation(line: 62, column: 10, scope: !4739, inlinedAt: !4841)
!4858 = !DILocation(line: 63, column: 5, scope: !4739, inlinedAt: !4841)
!4859 = !DILocation(line: 0, scope: !4722, inlinedAt: !4841)
!4860 = !DILocation(line: 76, column: 3, scope: !4819)
!4861 = distinct !DISubprogram(name: "xzalloc", scope: !4683, file: !4683, line: 84, type: !4684, isLocal: false, isDefinition: true, scopeLine: 85, flags: DIFlagPrototyped, isOptimized: true, unit: !374, retainedNodes: !4862)
!4862 = !{!4863}
!4863 = !DILocalVariable(name: "s", arg: 1, scope: !4861, file: !4683, line: 84, type: !62)
!4864 = !DILocation(line: 84, column: 17, scope: !4861)
!4865 = !DILocation(line: 39, column: 17, scope: !4682, inlinedAt: !4866)
!4866 = distinct !DILocation(line: 86, column: 18, scope: !4861)
!4867 = !DILocation(line: 41, column: 13, scope: !4682, inlinedAt: !4866)
!4868 = !DILocation(line: 41, column: 9, scope: !4682, inlinedAt: !4866)
!4869 = !DILocation(line: 42, column: 8, scope: !4693, inlinedAt: !4866)
!4870 = !DILocation(line: 42, column: 15, scope: !4693, inlinedAt: !4866)
!4871 = !DILocation(line: 42, column: 10, scope: !4693, inlinedAt: !4866)
!4872 = !DILocation(line: 43, column: 5, scope: !4693, inlinedAt: !4866)
!4873 = !DILocation(line: 86, column: 10, scope: !4861)
!4874 = !DILocation(line: 86, column: 3, scope: !4861)
!4875 = distinct !DISubprogram(name: "xcalloc", scope: !4683, file: !4683, line: 93, type: !4669, isLocal: false, isDefinition: true, scopeLine: 94, flags: DIFlagPrototyped, isOptimized: true, unit: !374, retainedNodes: !4876)
!4876 = !{!4877, !4878, !4879}
!4877 = !DILocalVariable(name: "n", arg: 1, scope: !4875, file: !4683, line: 93, type: !62)
!4878 = !DILocalVariable(name: "s", arg: 2, scope: !4875, file: !4683, line: 93, type: !62)
!4879 = !DILocalVariable(name: "p", scope: !4875, file: !4683, line: 95, type: !61)
!4880 = !DILocation(line: 93, column: 17, scope: !4875)
!4881 = !DILocation(line: 93, column: 27, scope: !4875)
!4882 = !DILocation(line: 100, column: 7, scope: !4883)
!4883 = distinct !DILexicalBlock(scope: !4875, file: !4683, line: 100, column: 7)
!4884 = !DILocation(line: 101, column: 7, scope: !4883)
!4885 = !DILocation(line: 101, column: 18, scope: !4883)
!4886 = !DILocation(line: 95, column: 9, scope: !4875)
!4887 = !DILocation(line: 101, column: 16, scope: !4883)
!4888 = !DILocation(line: 100, column: 7, scope: !4875)
!4889 = !DILocation(line: 102, column: 5, scope: !4883)
!4890 = !DILocation(line: 103, column: 3, scope: !4875)
!4891 = distinct !DISubprogram(name: "xmemdup", scope: !4683, file: !4683, line: 111, type: !929, isLocal: false, isDefinition: true, scopeLine: 112, flags: DIFlagPrototyped, isOptimized: true, unit: !374, retainedNodes: !4892)
!4892 = !{!4893, !4894}
!4893 = !DILocalVariable(name: "p", arg: 1, scope: !4891, file: !4683, line: 111, type: !931)
!4894 = !DILocalVariable(name: "s", arg: 2, scope: !4891, file: !4683, line: 111, type: !62)
!4895 = !DILocation(line: 111, column: 22, scope: !4891)
!4896 = !DILocation(line: 111, column: 32, scope: !4891)
!4897 = !DILocation(line: 39, column: 17, scope: !4682, inlinedAt: !4898)
!4898 = distinct !DILocation(line: 113, column: 18, scope: !4891)
!4899 = !DILocation(line: 41, column: 13, scope: !4682, inlinedAt: !4898)
!4900 = !DILocation(line: 41, column: 9, scope: !4682, inlinedAt: !4898)
!4901 = !DILocation(line: 42, column: 8, scope: !4693, inlinedAt: !4898)
!4902 = !DILocation(line: 42, column: 15, scope: !4693, inlinedAt: !4898)
!4903 = !DILocation(line: 42, column: 10, scope: !4693, inlinedAt: !4898)
!4904 = !DILocation(line: 43, column: 5, scope: !4693, inlinedAt: !4898)
!4905 = !DILocation(line: 113, column: 10, scope: !4891)
!4906 = !DILocation(line: 113, column: 3, scope: !4891)
!4907 = distinct !DISubprogram(name: "xstrdup", scope: !4683, file: !4683, line: 119, type: !3977, isLocal: false, isDefinition: true, scopeLine: 120, flags: DIFlagPrototyped, isOptimized: true, unit: !374, retainedNodes: !4908)
!4908 = !{!4909}
!4909 = !DILocalVariable(name: "string", arg: 1, scope: !4907, file: !4683, line: 119, type: !93)
!4910 = !DILocation(line: 119, column: 22, scope: !4907)
!4911 = !DILocation(line: 121, column: 27, scope: !4907)
!4912 = !DILocation(line: 121, column: 43, scope: !4907)
!4913 = !DILocation(line: 111, column: 22, scope: !4891, inlinedAt: !4914)
!4914 = distinct !DILocation(line: 121, column: 10, scope: !4907)
!4915 = !DILocation(line: 111, column: 32, scope: !4891, inlinedAt: !4914)
!4916 = !DILocation(line: 39, column: 17, scope: !4682, inlinedAt: !4917)
!4917 = distinct !DILocation(line: 113, column: 18, scope: !4891, inlinedAt: !4914)
!4918 = !DILocation(line: 41, column: 13, scope: !4682, inlinedAt: !4917)
!4919 = !DILocation(line: 41, column: 9, scope: !4682, inlinedAt: !4917)
!4920 = !DILocation(line: 42, column: 8, scope: !4693, inlinedAt: !4917)
!4921 = !DILocation(line: 42, column: 15, scope: !4693, inlinedAt: !4917)
!4922 = !DILocation(line: 42, column: 10, scope: !4693, inlinedAt: !4917)
!4923 = !DILocation(line: 43, column: 5, scope: !4693, inlinedAt: !4917)
!4924 = !DILocation(line: 113, column: 10, scope: !4891, inlinedAt: !4914)
!4925 = !DILocation(line: 121, column: 3, scope: !4907)
!4926 = distinct !DISubprogram(name: "xalloc_die", scope: !4927, file: !4927, line: 32, type: !842, isLocal: false, isDefinition: true, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !391, retainedNodes: !223)
!4927 = !DIFile(filename: "lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!4928 = !DILocation(line: 34, column: 10, scope: !4926)
!4929 = !DILocation(line: 34, column: 33, scope: !4926)
!4930 = !DILocation(line: 34, column: 3, scope: !4926)
!4931 = !DILocation(line: 40, column: 3, scope: !4926)
!4932 = distinct !DISubprogram(name: "rpl_calloc", scope: !4933, file: !4933, line: 42, type: !4669, isLocal: false, isDefinition: true, scopeLine: 43, flags: DIFlagPrototyped, isOptimized: true, unit: !393, retainedNodes: !4934)
!4933 = !DIFile(filename: "lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!4934 = !{!4935, !4936, !4937, !4938}
!4935 = !DILocalVariable(name: "n", arg: 1, scope: !4932, file: !4933, line: 42, type: !62)
!4936 = !DILocalVariable(name: "s", arg: 2, scope: !4932, file: !4933, line: 42, type: !62)
!4937 = !DILocalVariable(name: "result", scope: !4932, file: !4933, line: 44, type: !61)
!4938 = !DILocalVariable(name: "bytes", scope: !4939, file: !4933, line: 56, type: !62)
!4939 = distinct !DILexicalBlock(scope: !4940, file: !4933, line: 53, column: 5)
!4940 = distinct !DILexicalBlock(scope: !4932, file: !4933, line: 47, column: 7)
!4941 = !DILocation(line: 42, column: 20, scope: !4932)
!4942 = !DILocation(line: 42, column: 30, scope: !4932)
!4943 = !DILocation(line: 47, column: 9, scope: !4940)
!4944 = !DILocation(line: 47, column: 19, scope: !4940)
!4945 = !DILocation(line: 47, column: 14, scope: !4940)
!4946 = !DILocation(line: 56, column: 24, scope: !4939)
!4947 = !DILocation(line: 56, column: 14, scope: !4939)
!4948 = !DILocation(line: 57, column: 17, scope: !4949)
!4949 = distinct !DILexicalBlock(scope: !4939, file: !4933, line: 57, column: 11)
!4950 = !DILocation(line: 57, column: 21, scope: !4949)
!4951 = !DILocation(line: 57, column: 11, scope: !4939)
!4952 = !DILocation(line: 59, column: 11, scope: !4953)
!4953 = distinct !DILexicalBlock(scope: !4949, file: !4933, line: 58, column: 9)
!4954 = !DILocation(line: 59, column: 17, scope: !4953)
!4955 = !DILocation(line: 65, column: 12, scope: !4932)
!4956 = !DILocation(line: 44, column: 9, scope: !4932)
!4957 = !DILocation(line: 72, column: 3, scope: !4932)
!4958 = !DILocation(line: 0, scope: !4953)
!4959 = !DILocation(line: 73, column: 1, scope: !4932)
!4960 = distinct !DISubprogram(name: "rpl_fclose", scope: !4961, file: !4961, line: 58, type: !4962, isLocal: false, isDefinition: true, scopeLine: 59, flags: DIFlagPrototyped, isOptimized: true, unit: !395, retainedNodes: !4998)
!4961 = !DIFile(filename: "lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!4962 = !DISubroutineType(types: !4963)
!4963 = !{!64, !4964}
!4964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4965, size: 64)
!4965 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !100, line: 7, baseType: !4966)
!4966 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !102, line: 49, size: 1728, elements: !4967)
!4967 = !{!4968, !4969, !4970, !4971, !4972, !4973, !4974, !4975, !4976, !4977, !4978, !4979, !4980, !4981, !4983, !4984, !4985, !4986, !4987, !4988, !4989, !4990, !4991, !4992, !4993, !4994, !4995, !4996, !4997}
!4968 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4966, file: !102, line: 51, baseType: !64, size: 32)
!4969 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4966, file: !102, line: 54, baseType: !59, size: 64, offset: 64)
!4970 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4966, file: !102, line: 55, baseType: !59, size: 64, offset: 128)
!4971 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4966, file: !102, line: 56, baseType: !59, size: 64, offset: 192)
!4972 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4966, file: !102, line: 57, baseType: !59, size: 64, offset: 256)
!4973 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4966, file: !102, line: 58, baseType: !59, size: 64, offset: 320)
!4974 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4966, file: !102, line: 59, baseType: !59, size: 64, offset: 384)
!4975 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4966, file: !102, line: 60, baseType: !59, size: 64, offset: 448)
!4976 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4966, file: !102, line: 61, baseType: !59, size: 64, offset: 512)
!4977 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4966, file: !102, line: 64, baseType: !59, size: 64, offset: 576)
!4978 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4966, file: !102, line: 65, baseType: !59, size: 64, offset: 640)
!4979 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4966, file: !102, line: 66, baseType: !59, size: 64, offset: 704)
!4980 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4966, file: !102, line: 68, baseType: !117, size: 64, offset: 768)
!4981 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4966, file: !102, line: 70, baseType: !4982, size: 64, offset: 832)
!4982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4966, size: 64)
!4983 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4966, file: !102, line: 72, baseType: !64, size: 32, offset: 896)
!4984 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4966, file: !102, line: 73, baseType: !64, size: 32, offset: 928)
!4985 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4966, file: !102, line: 74, baseType: !124, size: 64, offset: 960)
!4986 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4966, file: !102, line: 77, baseType: !67, size: 16, offset: 1024)
!4987 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4966, file: !102, line: 78, baseType: !128, size: 8, offset: 1040)
!4988 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4966, file: !102, line: 79, baseType: !130, size: 8, offset: 1048)
!4989 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4966, file: !102, line: 81, baseType: !134, size: 64, offset: 1088)
!4990 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4966, file: !102, line: 89, baseType: !137, size: 64, offset: 1152)
!4991 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4966, file: !102, line: 91, baseType: !139, size: 64, offset: 1216)
!4992 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4966, file: !102, line: 92, baseType: !142, size: 64, offset: 1280)
!4993 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4966, file: !102, line: 93, baseType: !4982, size: 64, offset: 1344)
!4994 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4966, file: !102, line: 94, baseType: !61, size: 64, offset: 1408)
!4995 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4966, file: !102, line: 95, baseType: !62, size: 64, offset: 1472)
!4996 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4966, file: !102, line: 96, baseType: !64, size: 32, offset: 1536)
!4997 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4966, file: !102, line: 98, baseType: !149, size: 160, offset: 1568)
!4998 = !{!4999, !5000, !5001, !5002}
!4999 = !DILocalVariable(name: "fp", arg: 1, scope: !4960, file: !4961, line: 58, type: !4964)
!5000 = !DILocalVariable(name: "saved_errno", scope: !4960, file: !4961, line: 60, type: !64)
!5001 = !DILocalVariable(name: "fd", scope: !4960, file: !4961, line: 61, type: !64)
!5002 = !DILocalVariable(name: "result", scope: !4960, file: !4961, line: 62, type: !64)
!5003 = !DILocation(line: 58, column: 19, scope: !4960)
!5004 = !DILocation(line: 60, column: 7, scope: !4960)
!5005 = !DILocation(line: 62, column: 7, scope: !4960)
!5006 = !DILocation(line: 65, column: 8, scope: !4960)
!5007 = !DILocation(line: 61, column: 7, scope: !4960)
!5008 = !DILocation(line: 66, column: 10, scope: !5009)
!5009 = distinct !DILexicalBlock(scope: !4960, file: !4961, line: 66, column: 7)
!5010 = !DILocation(line: 66, column: 7, scope: !4960)
!5011 = !DILocation(line: 67, column: 12, scope: !5009)
!5012 = !DILocation(line: 67, column: 5, scope: !5009)
!5013 = !DILocation(line: 72, column: 9, scope: !5014)
!5014 = distinct !DILexicalBlock(scope: !4960, file: !4961, line: 72, column: 7)
!5015 = !DILocation(line: 72, column: 23, scope: !5014)
!5016 = !DILocation(line: 72, column: 33, scope: !5014)
!5017 = !DILocation(line: 72, column: 26, scope: !5014)
!5018 = !DILocation(line: 72, column: 59, scope: !5014)
!5019 = !DILocation(line: 73, column: 7, scope: !5014)
!5020 = !DILocation(line: 73, column: 10, scope: !5014)
!5021 = !DILocation(line: 72, column: 7, scope: !4960)
!5022 = !DILocation(line: 100, column: 12, scope: !4960)
!5023 = !DILocation(line: 105, column: 7, scope: !4960)
!5024 = !DILocation(line: 74, column: 19, scope: !5014)
!5025 = !DILocation(line: 105, column: 19, scope: !5026)
!5026 = distinct !DILexicalBlock(scope: !4960, file: !4961, line: 105, column: 7)
!5027 = !DILocation(line: 107, column: 13, scope: !5028)
!5028 = distinct !DILexicalBlock(scope: !5026, file: !4961, line: 106, column: 5)
!5029 = !DILocation(line: 109, column: 5, scope: !5028)
!5030 = !DILocation(line: 0, scope: !4960)
!5031 = !DILocation(line: 112, column: 1, scope: !4960)
!5032 = !DILocation(line: 276, column: 16, scope: !326)
!5033 = !DILocation(line: 276, column: 24, scope: !326)
!5034 = !DILocation(line: 278, column: 3, scope: !326)
!5035 = !DILocation(line: 278, column: 11, scope: !326)
!5036 = !DILocation(line: 279, column: 7, scope: !326)
!5037 = !DILocation(line: 280, column: 3, scope: !326)
!5038 = !DILocation(line: 281, column: 3, scope: !326)
!5039 = !DILocation(line: 0, scope: !358)
!5040 = !DILocation(line: 326, column: 22, scope: !349)
!5041 = !DILocation(line: 326, column: 13, scope: !349)
!5042 = !DILocation(line: 340, column: 18, scope: !5043)
!5043 = distinct !DILexicalBlock(scope: !349, file: !327, line: 340, column: 13)
!5044 = !DILocation(line: 340, column: 15, scope: !5043)
!5045 = !DILocation(line: 340, column: 13, scope: !349)
!5046 = !DILocation(line: 342, column: 22, scope: !5047)
!5047 = distinct !DILexicalBlock(scope: !5043, file: !327, line: 341, column: 11)
!5048 = !DILocation(line: 343, column: 19, scope: !5049)
!5049 = distinct !DILexicalBlock(scope: !5047, file: !327, line: 343, column: 17)
!5050 = !DILocation(line: 343, column: 29, scope: !5049)
!5051 = !DILocation(line: 343, column: 32, scope: !5049)
!5052 = !DILocation(line: 343, column: 38, scope: !5049)
!5053 = !DILocation(line: 343, column: 17, scope: !5047)
!5054 = !DILocation(line: 345, column: 36, scope: !5055)
!5055 = distinct !DILexicalBlock(scope: !5049, file: !327, line: 344, column: 15)
!5056 = !DILocation(line: 361, column: 25, scope: !353)
!5057 = !DILocation(line: 353, column: 26, scope: !5058)
!5058 = distinct !DILexicalBlock(scope: !5049, file: !327, line: 352, column: 15)
!5059 = !DILocation(line: 354, column: 28, scope: !5060)
!5060 = distinct !DILexicalBlock(scope: !5058, file: !327, line: 354, column: 21)
!5061 = !DILocation(line: 354, column: 21, scope: !5058)
!5062 = !DILocation(line: 356, column: 36, scope: !5058)
!5063 = !DILocation(line: 360, column: 20, scope: !5043)
!5064 = !DILocation(line: 361, column: 28, scope: !353)
!5065 = !DILocation(line: 0, scope: !5043)
!5066 = !DILocation(line: 361, column: 15, scope: !353)
!5067 = !DILocation(line: 363, column: 25, scope: !352)
!5068 = !DILocation(line: 363, column: 17, scope: !352)
!5069 = !DILocation(line: 364, column: 23, scope: !356)
!5070 = !DILocation(line: 364, column: 27, scope: !356)
!5071 = !DILocation(line: 364, column: 60, scope: !356)
!5072 = !DILocation(line: 364, column: 30, scope: !356)
!5073 = !DILocation(line: 364, column: 74, scope: !356)
!5074 = !DILocation(line: 364, column: 17, scope: !352)
!5075 = !DILocation(line: 366, column: 35, scope: !355)
!5076 = !DILocation(line: 366, column: 21, scope: !355)
!5077 = !DILocation(line: 367, column: 17, scope: !355)
!5078 = !DILocation(line: 368, column: 23, scope: !355)
!5079 = !DILocation(line: 370, column: 15, scope: !355)
!5080 = !DILocation(line: 408, column: 19, scope: !358)
!5081 = !DILocation(line: 408, column: 15, scope: !358)
!5082 = !DILocation(line: 409, column: 18, scope: !358)
!5083 = !DILocation(line: 416, column: 3, scope: !326)
!5084 = !DILocation(line: 418, column: 1, scope: !326)
!5085 = !DILocation(line: 417, column: 3, scope: !326)
!5086 = distinct !DISubprogram(name: "rpl_fflush", scope: !5087, file: !5087, line: 129, type: !5088, isLocal: false, isDefinition: true, scopeLine: 130, flags: DIFlagPrototyped, isOptimized: true, unit: !397, retainedNodes: !5124)
!5087 = !DIFile(filename: "lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!5088 = !DISubroutineType(types: !5089)
!5089 = !{!64, !5090}
!5090 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5091, size: 64)
!5091 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !100, line: 7, baseType: !5092)
!5092 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !102, line: 49, size: 1728, elements: !5093)
!5093 = !{!5094, !5095, !5096, !5097, !5098, !5099, !5100, !5101, !5102, !5103, !5104, !5105, !5106, !5107, !5109, !5110, !5111, !5112, !5113, !5114, !5115, !5116, !5117, !5118, !5119, !5120, !5121, !5122, !5123}
!5094 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !5092, file: !102, line: 51, baseType: !64, size: 32)
!5095 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !5092, file: !102, line: 54, baseType: !59, size: 64, offset: 64)
!5096 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !5092, file: !102, line: 55, baseType: !59, size: 64, offset: 128)
!5097 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !5092, file: !102, line: 56, baseType: !59, size: 64, offset: 192)
!5098 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !5092, file: !102, line: 57, baseType: !59, size: 64, offset: 256)
!5099 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !5092, file: !102, line: 58, baseType: !59, size: 64, offset: 320)
!5100 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !5092, file: !102, line: 59, baseType: !59, size: 64, offset: 384)
!5101 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !5092, file: !102, line: 60, baseType: !59, size: 64, offset: 448)
!5102 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !5092, file: !102, line: 61, baseType: !59, size: 64, offset: 512)
!5103 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !5092, file: !102, line: 64, baseType: !59, size: 64, offset: 576)
!5104 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !5092, file: !102, line: 65, baseType: !59, size: 64, offset: 640)
!5105 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !5092, file: !102, line: 66, baseType: !59, size: 64, offset: 704)
!5106 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !5092, file: !102, line: 68, baseType: !117, size: 64, offset: 768)
!5107 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !5092, file: !102, line: 70, baseType: !5108, size: 64, offset: 832)
!5108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5092, size: 64)
!5109 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !5092, file: !102, line: 72, baseType: !64, size: 32, offset: 896)
!5110 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !5092, file: !102, line: 73, baseType: !64, size: 32, offset: 928)
!5111 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !5092, file: !102, line: 74, baseType: !124, size: 64, offset: 960)
!5112 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !5092, file: !102, line: 77, baseType: !67, size: 16, offset: 1024)
!5113 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !5092, file: !102, line: 78, baseType: !128, size: 8, offset: 1040)
!5114 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !5092, file: !102, line: 79, baseType: !130, size: 8, offset: 1048)
!5115 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !5092, file: !102, line: 81, baseType: !134, size: 64, offset: 1088)
!5116 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !5092, file: !102, line: 89, baseType: !137, size: 64, offset: 1152)
!5117 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !5092, file: !102, line: 91, baseType: !139, size: 64, offset: 1216)
!5118 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !5092, file: !102, line: 92, baseType: !142, size: 64, offset: 1280)
!5119 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !5092, file: !102, line: 93, baseType: !5108, size: 64, offset: 1344)
!5120 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !5092, file: !102, line: 94, baseType: !61, size: 64, offset: 1408)
!5121 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !5092, file: !102, line: 95, baseType: !62, size: 64, offset: 1472)
!5122 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !5092, file: !102, line: 96, baseType: !64, size: 32, offset: 1536)
!5123 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !5092, file: !102, line: 98, baseType: !149, size: 160, offset: 1568)
!5124 = !{!5125}
!5125 = !DILocalVariable(name: "stream", arg: 1, scope: !5086, file: !5087, line: 129, type: !5090)
!5126 = !DILocation(line: 129, column: 19, scope: !5086)
!5127 = !DILocation(line: 150, column: 14, scope: !5128)
!5128 = distinct !DILexicalBlock(scope: !5086, file: !5087, line: 150, column: 7)
!5129 = !DILocation(line: 150, column: 22, scope: !5128)
!5130 = !DILocation(line: 150, column: 27, scope: !5128)
!5131 = !DILocation(line: 150, column: 7, scope: !5086)
!5132 = !DILocation(line: 151, column: 12, scope: !5128)
!5133 = !DILocation(line: 151, column: 5, scope: !5128)
!5134 = !DILocalVariable(name: "fp", arg: 1, scope: !5135, file: !5087, line: 41, type: !5090)
!5135 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !5087, file: !5087, line: 41, type: !5136, isLocal: true, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !397, retainedNodes: !5138)
!5136 = !DISubroutineType(types: !5137)
!5137 = !{null, !5090}
!5138 = !{!5134}
!5139 = !DILocation(line: 41, column: 48, scope: !5135, inlinedAt: !5140)
!5140 = distinct !DILocation(line: 156, column: 3, scope: !5086)
!5141 = !DILocation(line: 43, column: 11, scope: !5142, inlinedAt: !5140)
!5142 = distinct !DILexicalBlock(scope: !5135, file: !5087, line: 43, column: 7)
!5143 = !DILocation(line: 43, column: 18, scope: !5142, inlinedAt: !5140)
!5144 = !DILocation(line: 43, column: 7, scope: !5135, inlinedAt: !5140)
!5145 = !DILocation(line: 45, column: 5, scope: !5142, inlinedAt: !5140)
!5146 = !DILocation(line: 158, column: 10, scope: !5086)
!5147 = !DILocation(line: 158, column: 3, scope: !5086)
!5148 = !DILocation(line: 0, scope: !5086)
!5149 = !DILocation(line: 232, column: 1, scope: !5086)
!5150 = distinct !DISubprogram(name: "rpl_fseeko", scope: !5151, file: !5151, line: 28, type: !5152, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !399, retainedNodes: !5188)
!5151 = !DIFile(filename: "lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!5152 = !DISubroutineType(types: !5153)
!5153 = !{!64, !5154, !2558, !64}
!5154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5155, size: 64)
!5155 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !100, line: 7, baseType: !5156)
!5156 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !102, line: 49, size: 1728, elements: !5157)
!5157 = !{!5158, !5159, !5160, !5161, !5162, !5163, !5164, !5165, !5166, !5167, !5168, !5169, !5170, !5171, !5173, !5174, !5175, !5176, !5177, !5178, !5179, !5180, !5181, !5182, !5183, !5184, !5185, !5186, !5187}
!5158 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !5156, file: !102, line: 51, baseType: !64, size: 32)
!5159 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !5156, file: !102, line: 54, baseType: !59, size: 64, offset: 64)
!5160 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !5156, file: !102, line: 55, baseType: !59, size: 64, offset: 128)
!5161 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !5156, file: !102, line: 56, baseType: !59, size: 64, offset: 192)
!5162 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !5156, file: !102, line: 57, baseType: !59, size: 64, offset: 256)
!5163 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !5156, file: !102, line: 58, baseType: !59, size: 64, offset: 320)
!5164 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !5156, file: !102, line: 59, baseType: !59, size: 64, offset: 384)
!5165 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !5156, file: !102, line: 60, baseType: !59, size: 64, offset: 448)
!5166 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !5156, file: !102, line: 61, baseType: !59, size: 64, offset: 512)
!5167 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !5156, file: !102, line: 64, baseType: !59, size: 64, offset: 576)
!5168 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !5156, file: !102, line: 65, baseType: !59, size: 64, offset: 640)
!5169 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !5156, file: !102, line: 66, baseType: !59, size: 64, offset: 704)
!5170 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !5156, file: !102, line: 68, baseType: !117, size: 64, offset: 768)
!5171 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !5156, file: !102, line: 70, baseType: !5172, size: 64, offset: 832)
!5172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5156, size: 64)
!5173 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !5156, file: !102, line: 72, baseType: !64, size: 32, offset: 896)
!5174 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !5156, file: !102, line: 73, baseType: !64, size: 32, offset: 928)
!5175 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !5156, file: !102, line: 74, baseType: !124, size: 64, offset: 960)
!5176 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !5156, file: !102, line: 77, baseType: !67, size: 16, offset: 1024)
!5177 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !5156, file: !102, line: 78, baseType: !128, size: 8, offset: 1040)
!5178 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !5156, file: !102, line: 79, baseType: !130, size: 8, offset: 1048)
!5179 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !5156, file: !102, line: 81, baseType: !134, size: 64, offset: 1088)
!5180 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !5156, file: !102, line: 89, baseType: !137, size: 64, offset: 1152)
!5181 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !5156, file: !102, line: 91, baseType: !139, size: 64, offset: 1216)
!5182 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !5156, file: !102, line: 92, baseType: !142, size: 64, offset: 1280)
!5183 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !5156, file: !102, line: 93, baseType: !5172, size: 64, offset: 1344)
!5184 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !5156, file: !102, line: 94, baseType: !61, size: 64, offset: 1408)
!5185 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !5156, file: !102, line: 95, baseType: !62, size: 64, offset: 1472)
!5186 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !5156, file: !102, line: 96, baseType: !64, size: 32, offset: 1536)
!5187 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !5156, file: !102, line: 98, baseType: !149, size: 160, offset: 1568)
!5188 = !{!5189, !5190, !5191, !5192}
!5189 = !DILocalVariable(name: "fp", arg: 1, scope: !5150, file: !5151, line: 28, type: !5154)
!5190 = !DILocalVariable(name: "offset", arg: 2, scope: !5150, file: !5151, line: 28, type: !2558)
!5191 = !DILocalVariable(name: "whence", arg: 3, scope: !5150, file: !5151, line: 28, type: !64)
!5192 = !DILocalVariable(name: "pos", scope: !5193, file: !5151, line: 117, type: !2558)
!5193 = distinct !DILexicalBlock(scope: !5194, file: !5151, line: 113, column: 5)
!5194 = distinct !DILexicalBlock(scope: !5150, file: !5151, line: 52, column: 7)
!5195 = !DILocation(line: 28, column: 15, scope: !5150)
!5196 = !DILocation(line: 28, column: 25, scope: !5150)
!5197 = !DILocation(line: 28, column: 37, scope: !5150)
!5198 = !DILocation(line: 52, column: 11, scope: !5194)
!5199 = !{!1406, !836, i64 16}
!5200 = !DILocation(line: 52, column: 31, scope: !5194)
!5201 = !{!1406, !836, i64 8}
!5202 = !DILocation(line: 52, column: 24, scope: !5194)
!5203 = !DILocation(line: 53, column: 7, scope: !5194)
!5204 = !DILocation(line: 53, column: 14, scope: !5194)
!5205 = !DILocation(line: 53, column: 35, scope: !5194)
!5206 = !{!1406, !836, i64 32}
!5207 = !DILocation(line: 53, column: 28, scope: !5194)
!5208 = !DILocation(line: 54, column: 7, scope: !5194)
!5209 = !DILocation(line: 54, column: 14, scope: !5194)
!5210 = !{!1406, !836, i64 72}
!5211 = !DILocation(line: 54, column: 28, scope: !5194)
!5212 = !DILocation(line: 52, column: 7, scope: !5150)
!5213 = !DILocation(line: 117, column: 26, scope: !5193)
!5214 = !DILocation(line: 117, column: 19, scope: !5193)
!5215 = !DILocation(line: 117, column: 13, scope: !5193)
!5216 = !DILocation(line: 118, column: 15, scope: !5217)
!5217 = distinct !DILexicalBlock(scope: !5193, file: !5151, line: 118, column: 11)
!5218 = !DILocation(line: 118, column: 11, scope: !5193)
!5219 = !DILocation(line: 129, column: 11, scope: !5193)
!5220 = !DILocation(line: 129, column: 18, scope: !5193)
!5221 = !DILocation(line: 130, column: 11, scope: !5193)
!5222 = !DILocation(line: 130, column: 19, scope: !5193)
!5223 = !{!1406, !1102, i64 144}
!5224 = !DILocation(line: 161, column: 7, scope: !5193)
!5225 = !DILocation(line: 163, column: 10, scope: !5150)
!5226 = !DILocation(line: 163, column: 3, scope: !5150)
!5227 = !DILocation(line: 0, scope: !5150)
!5228 = !DILocation(line: 164, column: 1, scope: !5150)
!5229 = distinct !DISubprogram(name: "rpl_mbrtowc", scope: !5230, file: !5230, line: 385, type: !5231, isLocal: false, isDefinition: true, scopeLine: 386, flags: DIFlagPrototyped, isOptimized: true, unit: !401, retainedNodes: !5245)
!5230 = !DIFile(filename: "lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!5231 = !DISubroutineType(types: !5232)
!5232 = !{!62, !5233, !93, !62, !5234}
!5233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2954, size: 64)
!5234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5235, size: 64)
!5235 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !2938, line: 6, baseType: !5236)
!5236 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !2940, line: 21, baseType: !5237)
!5237 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2940, line: 13, size: 64, elements: !5238)
!5238 = !{!5239, !5240}
!5239 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !5237, file: !2940, line: 15, baseType: !64, size: 32)
!5240 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !5237, file: !2940, line: 20, baseType: !5241, size: 32, offset: 32)
!5241 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5237, file: !2940, line: 16, size: 32, elements: !5242)
!5242 = !{!5243, !5244}
!5243 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !5241, file: !2940, line: 18, baseType: !7, size: 32)
!5244 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !5241, file: !2940, line: 19, baseType: !2949, size: 32)
!5245 = !{!5246, !5247, !5248, !5249, !5250, !5251, !5252}
!5246 = !DILocalVariable(name: "pwc", arg: 1, scope: !5229, file: !5230, line: 385, type: !5233)
!5247 = !DILocalVariable(name: "s", arg: 2, scope: !5229, file: !5230, line: 385, type: !93)
!5248 = !DILocalVariable(name: "n", arg: 3, scope: !5229, file: !5230, line: 385, type: !62)
!5249 = !DILocalVariable(name: "ps", arg: 4, scope: !5229, file: !5230, line: 385, type: !5234)
!5250 = !DILocalVariable(name: "ret", scope: !5229, file: !5230, line: 387, type: !62)
!5251 = !DILocalVariable(name: "wc", scope: !5229, file: !5230, line: 388, type: !2954)
!5252 = !DILocalVariable(name: "uc", scope: !5253, file: !5230, line: 449, type: !66)
!5253 = distinct !DILexicalBlock(scope: !5254, file: !5230, line: 448, column: 5)
!5254 = distinct !DILexicalBlock(scope: !5229, file: !5230, line: 447, column: 7)
!5255 = !DILocation(line: 385, column: 23, scope: !5229)
!5256 = !DILocation(line: 385, column: 40, scope: !5229)
!5257 = !DILocation(line: 385, column: 50, scope: !5229)
!5258 = !DILocation(line: 385, column: 64, scope: !5229)
!5259 = !DILocation(line: 388, column: 3, scope: !5229)
!5260 = !DILocation(line: 404, column: 9, scope: !5261)
!5261 = distinct !DILexicalBlock(scope: !5229, file: !5230, line: 404, column: 7)
!5262 = !DILocation(line: 404, column: 7, scope: !5229)
!5263 = !DILocation(line: 439, column: 9, scope: !5229)
!5264 = !DILocation(line: 387, column: 10, scope: !5229)
!5265 = !DILocation(line: 447, column: 19, scope: !5254)
!5266 = !DILocation(line: 447, column: 31, scope: !5254)
!5267 = !DILocation(line: 447, column: 26, scope: !5254)
!5268 = !DILocation(line: 447, column: 41, scope: !5254)
!5269 = !DILocation(line: 447, column: 7, scope: !5229)
!5270 = !DILocation(line: 449, column: 26, scope: !5253)
!5271 = !DILocation(line: 449, column: 21, scope: !5253)
!5272 = !DILocation(line: 450, column: 14, scope: !5253)
!5273 = !DILocation(line: 450, column: 12, scope: !5253)
!5274 = !DILocation(line: 0, scope: !5253)
!5275 = !DILocation(line: 456, column: 1, scope: !5229)
!5276 = distinct !DISubprogram(name: "close_stream", scope: !5277, file: !5277, line: 56, type: !5278, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !404, retainedNodes: !5314)
!5277 = !DIFile(filename: "lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!5278 = !DISubroutineType(types: !5279)
!5279 = !{!64, !5280}
!5280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5281, size: 64)
!5281 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !100, line: 7, baseType: !5282)
!5282 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !102, line: 49, size: 1728, elements: !5283)
!5283 = !{!5284, !5285, !5286, !5287, !5288, !5289, !5290, !5291, !5292, !5293, !5294, !5295, !5296, !5297, !5299, !5300, !5301, !5302, !5303, !5304, !5305, !5306, !5307, !5308, !5309, !5310, !5311, !5312, !5313}
!5284 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !5282, file: !102, line: 51, baseType: !64, size: 32)
!5285 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !5282, file: !102, line: 54, baseType: !59, size: 64, offset: 64)
!5286 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !5282, file: !102, line: 55, baseType: !59, size: 64, offset: 128)
!5287 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !5282, file: !102, line: 56, baseType: !59, size: 64, offset: 192)
!5288 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !5282, file: !102, line: 57, baseType: !59, size: 64, offset: 256)
!5289 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !5282, file: !102, line: 58, baseType: !59, size: 64, offset: 320)
!5290 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !5282, file: !102, line: 59, baseType: !59, size: 64, offset: 384)
!5291 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !5282, file: !102, line: 60, baseType: !59, size: 64, offset: 448)
!5292 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !5282, file: !102, line: 61, baseType: !59, size: 64, offset: 512)
!5293 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !5282, file: !102, line: 64, baseType: !59, size: 64, offset: 576)
!5294 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !5282, file: !102, line: 65, baseType: !59, size: 64, offset: 640)
!5295 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !5282, file: !102, line: 66, baseType: !59, size: 64, offset: 704)
!5296 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !5282, file: !102, line: 68, baseType: !117, size: 64, offset: 768)
!5297 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !5282, file: !102, line: 70, baseType: !5298, size: 64, offset: 832)
!5298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5282, size: 64)
!5299 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !5282, file: !102, line: 72, baseType: !64, size: 32, offset: 896)
!5300 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !5282, file: !102, line: 73, baseType: !64, size: 32, offset: 928)
!5301 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !5282, file: !102, line: 74, baseType: !124, size: 64, offset: 960)
!5302 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !5282, file: !102, line: 77, baseType: !67, size: 16, offset: 1024)
!5303 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !5282, file: !102, line: 78, baseType: !128, size: 8, offset: 1040)
!5304 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !5282, file: !102, line: 79, baseType: !130, size: 8, offset: 1048)
!5305 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !5282, file: !102, line: 81, baseType: !134, size: 64, offset: 1088)
!5306 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !5282, file: !102, line: 89, baseType: !137, size: 64, offset: 1152)
!5307 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !5282, file: !102, line: 91, baseType: !139, size: 64, offset: 1216)
!5308 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !5282, file: !102, line: 92, baseType: !142, size: 64, offset: 1280)
!5309 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !5282, file: !102, line: 93, baseType: !5298, size: 64, offset: 1344)
!5310 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !5282, file: !102, line: 94, baseType: !61, size: 64, offset: 1408)
!5311 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !5282, file: !102, line: 95, baseType: !62, size: 64, offset: 1472)
!5312 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !5282, file: !102, line: 96, baseType: !64, size: 32, offset: 1536)
!5313 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !5282, file: !102, line: 98, baseType: !149, size: 160, offset: 1568)
!5314 = !{!5315, !5316, !5318, !5319}
!5315 = !DILocalVariable(name: "stream", arg: 1, scope: !5276, file: !5277, line: 56, type: !5280)
!5316 = !DILocalVariable(name: "some_pending", scope: !5276, file: !5277, line: 58, type: !5317)
!5317 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !71)
!5318 = !DILocalVariable(name: "prev_fail", scope: !5276, file: !5277, line: 59, type: !5317)
!5319 = !DILocalVariable(name: "fclose_fail", scope: !5276, file: !5277, line: 60, type: !5317)
!5320 = !DILocation(line: 56, column: 21, scope: !5276)
!5321 = !DILocation(line: 58, column: 30, scope: !5276)
!5322 = !DILocalVariable(name: "__stream", arg: 1, scope: !5323, file: !1112, line: 135, type: !5280)
!5323 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1112, file: !1112, line: 135, type: !5278, isLocal: false, isDefinition: true, scopeLine: 136, flags: DIFlagPrototyped, isOptimized: true, unit: !404, retainedNodes: !5324)
!5324 = !{!5322}
!5325 = !DILocation(line: 135, column: 1, scope: !5323, inlinedAt: !5326)
!5326 = distinct !DILocation(line: 59, column: 27, scope: !5276)
!5327 = !DILocation(line: 137, column: 10, scope: !5323, inlinedAt: !5326)
!5328 = !DILocation(line: 59, column: 43, scope: !5276)
!5329 = !DILocation(line: 60, column: 29, scope: !5276)
!5330 = !DILocation(line: 60, column: 45, scope: !5276)
!5331 = !DILocation(line: 70, column: 17, scope: !5332)
!5332 = distinct !DILexicalBlock(scope: !5276, file: !5277, line: 70, column: 7)
!5333 = !DILocation(line: 58, column: 50, scope: !5276)
!5334 = !DILocation(line: 70, column: 33, scope: !5332)
!5335 = !DILocation(line: 70, column: 53, scope: !5332)
!5336 = !DILocation(line: 70, column: 59, scope: !5332)
!5337 = !DILocation(line: 70, column: 7, scope: !5276)
!5338 = !DILocation(line: 72, column: 11, scope: !5339)
!5339 = distinct !DILexicalBlock(scope: !5332, file: !5277, line: 71, column: 5)
!5340 = !DILocation(line: 73, column: 9, scope: !5341)
!5341 = distinct !DILexicalBlock(scope: !5339, file: !5277, line: 72, column: 11)
!5342 = !DILocation(line: 73, column: 15, scope: !5341)
!5343 = !DILocation(line: 0, scope: !5276)
!5344 = !DILocation(line: 78, column: 1, scope: !5276)
!5345 = distinct !DISubprogram(name: "hard_locale", scope: !5346, file: !5346, line: 38, type: !5347, isLocal: false, isDefinition: true, scopeLine: 39, flags: DIFlagPrototyped, isOptimized: true, unit: !406, retainedNodes: !5349)
!5346 = !DIFile(filename: "lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!5347 = !DISubroutineType(types: !5348)
!5348 = !{!71, !64}
!5349 = !{!5350, !5351, !5352}
!5350 = !DILocalVariable(name: "category", arg: 1, scope: !5345, file: !5346, line: 38, type: !64)
!5351 = !DILocalVariable(name: "hard", scope: !5345, file: !5346, line: 40, type: !71)
!5352 = !DILocalVariable(name: "p", scope: !5345, file: !5346, line: 41, type: !93)
!5353 = !DILocation(line: 38, column: 18, scope: !5345)
!5354 = !DILocation(line: 40, column: 8, scope: !5345)
!5355 = !DILocation(line: 41, column: 19, scope: !5345)
!5356 = !DILocation(line: 41, column: 15, scope: !5345)
!5357 = !DILocation(line: 43, column: 7, scope: !5358)
!5358 = distinct !DILexicalBlock(scope: !5345, file: !5346, line: 43, column: 7)
!5359 = !DILocation(line: 43, column: 7, scope: !5345)
!5360 = !DILocation(line: 47, column: 15, scope: !5361)
!5361 = distinct !DILexicalBlock(scope: !5362, file: !5346, line: 47, column: 15)
!5362 = distinct !DILexicalBlock(scope: !5363, file: !5346, line: 46, column: 9)
!5363 = distinct !DILexicalBlock(scope: !5364, file: !5346, line: 45, column: 11)
!5364 = distinct !DILexicalBlock(scope: !5358, file: !5346, line: 44, column: 5)
!5365 = !DILocation(line: 47, column: 31, scope: !5361)
!5366 = !DILocation(line: 47, column: 36, scope: !5361)
!5367 = !DILocation(line: 47, column: 39, scope: !5361)
!5368 = !DILocation(line: 47, column: 59, scope: !5361)
!5369 = !DILocation(line: 47, column: 15, scope: !5362)
!5370 = !DILocation(line: 48, column: 13, scope: !5361)
!5371 = !DILocation(line: 71, column: 3, scope: !5345)
!5372 = distinct !DISubprogram(name: "locale_charset", scope: !5373, file: !5373, line: 687, type: !5374, isLocal: false, isDefinition: true, scopeLine: 688, flags: DIFlagPrototyped, isOptimized: true, unit: !408, retainedNodes: !5376)
!5373 = !DIFile(filename: "lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!5374 = !DISubroutineType(types: !5375)
!5375 = !{!93}
!5376 = !{!5377}
!5377 = !DILocalVariable(name: "codeset", scope: !5372, file: !5373, line: 689, type: !93)
!5378 = !DILocation(line: 696, column: 13, scope: !5372)
!5379 = !DILocation(line: 689, column: 15, scope: !5372)
!5380 = !DILocation(line: 754, column: 15, scope: !5381)
!5381 = distinct !DILexicalBlock(scope: !5372, file: !5373, line: 754, column: 7)
!5382 = !DILocation(line: 754, column: 7, scope: !5372)
!5383 = !DILocation(line: 907, column: 13, scope: !5384)
!5384 = distinct !DILexicalBlock(scope: !5385, file: !5373, line: 907, column: 13)
!5385 = distinct !DILexicalBlock(scope: !5386, file: !5373, line: 897, column: 7)
!5386 = distinct !DILexicalBlock(scope: !5372, file: !5373, line: 856, column: 3)
!5387 = !DILocation(line: 907, column: 24, scope: !5384)
!5388 = !DILocation(line: 907, column: 13, scope: !5385)
!5389 = !DILocation(line: 995, column: 3, scope: !5372)
