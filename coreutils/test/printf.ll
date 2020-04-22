; ModuleID = 'coreutils-8.32/src/printf.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.infomap = type { i8*, i8* }
%struct.quoting_options = type { i32, i32, [8 x i32], i8*, i8* }
%struct.slotvec = type { i64, i8* }
%struct.__locale_struct = type { [13 x %struct.__locale_data*], i16*, i32*, i32*, [13 x i8*] }
%struct.__locale_data = type opaque
%struct.__mbstate_t = type { i32, %union.anon }
%union.anon = type { i32 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@stderr = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [39 x i8] c"Try '%s --help' for more information.\0A\00", align 1
@.str.1 = private unnamed_addr constant [49 x i8] c"Usage: %s FORMAT [ARGUMENT]...\0A  or:  %s OPTION\0A\00", align 1
@.str.2 = private unnamed_addr constant [73 x i8] c"Print ARGUMENT(s) according to FORMAT, or execute according to OPTION:\0A\0A\00", align 1
@stdout = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.3 = private unnamed_addr constant [45 x i8] c"      --help     display this help and exit\0A\00", align 1
@.str.4 = private unnamed_addr constant [54 x i8] c"      --version  output version information and exit\0A\00", align 1
@.str.5 = private unnamed_addr constant [97 x i8] c"\0AFORMAT controls the output as in C printf.  Interpreted sequences are:\0A\0A  \\\22      double quote\0A\00", align 1
@.str.6 = private unnamed_addr constant [229 x i8] c"  \\\\      backslash\0A  \\a      alert (BEL)\0A  \\b      backspace\0A  \\c      produce no further output\0A  \\e      escape\0A  \\f      form feed\0A  \\n      new line\0A  \\r      carriage return\0A  \\t      horizontal tab\0A  \\v      vertical tab\0A\00", align 1
@.str.7 = private unnamed_addr constant [252 x i8] c"  \\NNN    byte with octal value NNN (1 to 3 digits)\0A  \\xHH    byte with hexadecimal value HH (1 to 2 digits)\0A  \\uHHHH  Unicode (ISO/IEC 10646) character with hex value HHHH (4 digits)\0A  \\UHHHHHHHH  Unicode character with hex value HHHHHHHH (8 digits)\0A\00", align 1
@.str.8 = private unnamed_addr constant [448 x i8] c"  %%      a single %\0A  %b      ARGUMENT as a string with '\\' escapes interpreted,\0A          except that octal escapes are of the form \\0 or \\0NNN\0A  %q      ARGUMENT is printed in a format that can be reused as shell input,\0A          escaping non-printable characters with the proposed POSIX $'' syntax.\0A\0Aand all C format specifications ending with one of diouxXfeEgGcs, with\0AARGUMENTs converted to proper type first.  Variable widths are handled.\0A\00", align 1
@.str.9 = private unnamed_addr constant [191 x i8] c"\0ANOTE: your shell may have its own version of %s, which usually supersedes\0Athe version described here.  Please refer to your shell's documentation\0Afor details about the options it supports.\0A\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"printf\00", align 1
@__const.emit_ancillary_info.infomap = private unnamed_addr constant [7 x %struct.infomap] [%struct.infomap { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.23, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.24, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.26, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.26, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.26, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.26, i32 0, i32 0) }, %struct.infomap zeroinitializer], align 16
@.str.22 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.30 = private unnamed_addr constant [23 x i8] c"\0A%s online help: <%s>\0A\00", align 1
@.str.17 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.31 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.32 = private unnamed_addr constant [4 x i8] c"en_\00", align 1
@.str.33 = private unnamed_addr constant [71 x i8] c"Report any translation bugs to <https://translationproject.org/team/>\0A\00", align 1
@.str.34 = private unnamed_addr constant [27 x i8] c"Full documentation <%s%s>\0A\00", align 1
@.str.35 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1
@.str.36 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1
@.str.11 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.23 = private unnamed_addr constant [16 x i8] c"test invocation\00", align 1
@.str.12 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1
@.str.24 = private unnamed_addr constant [22 x i8] c"Multi-call invocation\00", align 1
@.str.25 = private unnamed_addr constant [10 x i8] c"sha224sum\00", align 1
@.str.26 = private unnamed_addr constant [15 x i8] c"sha2 utilities\00", align 1
@.str.27 = private unnamed_addr constant [10 x i8] c"sha256sum\00", align 1
@.str.28 = private unnamed_addr constant [10 x i8] c"sha384sum\00", align 1
@.str.29 = private unnamed_addr constant [10 x i8] c"sha512sum\00", align 1
@.str.13 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1
@exit_status = internal unnamed_addr global i1 false, align 4, !dbg !0
@.str.14 = private unnamed_addr constant [16 x i8] c"POSIXLY_CORRECT\00", align 1
@posixly_correct = internal unnamed_addr global i8 0, align 1, !dbg !168
@.str.15 = private unnamed_addr constant [7 x i8] c"--help\00", align 1
@.str.16 = private unnamed_addr constant [10 x i8] c"--version\00", align 1
@.str.18 = private unnamed_addr constant [16 x i8] c"David MacKenzie\00", align 1
@.str.19 = private unnamed_addr constant [3 x i8] c"--\00", align 1
@.str.20 = private unnamed_addr constant [16 x i8] c"missing operand\00", align 1
@.str.37 = private unnamed_addr constant [24 x i8] c"invalid field width: %s\00", align 1
@.str.38 = private unnamed_addr constant [22 x i8] c"invalid precision: %s\00", align 1
@.str.39 = private unnamed_addr constant [39 x i8] c"%.*s: invalid conversion specification\00", align 1
@.str.45 = private unnamed_addr constant [2 x i8] c"L\00", align 1
@.str.44 = private unnamed_addr constant [3 x i8] c"ld\00", align 1
@.str.40 = private unnamed_addr constant [73 x i8] c"warning: %s: character(s) following character constant have been ignored\00", align 1
@.str.21 = private unnamed_addr constant [53 x i8] c"warning: ignoring excess arguments, starting with %s\00", align 1
@.str.41 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.42 = private unnamed_addr constant [29 x i8] c"%s: expected a numeric value\00", align 1
@.str.43 = private unnamed_addr constant [35 x i8] c"%s: value not completely converted\00", align 1
@.str.46 = private unnamed_addr constant [37 x i8] c"missing hexadecimal number in escape\00", align 1
@.str.47 = private unnamed_addr constant [12 x i8] c"\22\\abcefnrtv\00", align 1
@.str.48 = private unnamed_addr constant [41 x i8] c"invalid universal character name \\%c%0*x\00", align 1
@Version = dso_local local_unnamed_addr global i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.49, i64 0, i64 0), align 8, !dbg !174
@.str.49 = private unnamed_addr constant [5 x i8] c"8.32\00", align 1
@file_name = internal unnamed_addr global i8* null, align 8, !dbg !179
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !222
@.str.54 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.1.55 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.2.56 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@exit_failure = dso_local global i32 1, align 4, !dbg !224
@program_name = dso_local local_unnamed_addr global i8* null, align 8, !dbg !230
@.str.63 = private unnamed_addr constant [56 x i8] c"A NULL argv[0] was passed through an exec system call.\0A\00", align 1
@.str.1.64 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.2.65 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@quoting_style_args = dso_local local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.66, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.67, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.68, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.69, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.70, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.71, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.72, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.73, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.74, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.75, i32 0, i32 0), i8* null], align 16, !dbg !271
@.str.66 = private unnamed_addr constant [8 x i8] c"literal\00", align 1
@.str.1.67 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@.str.2.68 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1
@.str.3.69 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1
@.str.4.70 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1
@.str.5.71 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.6.72 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1
@.str.7.73 = private unnamed_addr constant [7 x i8] c"escape\00", align 1
@.str.8.74 = private unnamed_addr constant [7 x i8] c"locale\00", align 1
@.str.9.75 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !347
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !353
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !355
@.str.11.76 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.77 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.10.78 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.14.79 = private unnamed_addr constant [4 x i8] c"\E2\80\98\00", align 1
@.str.15.80 = private unnamed_addr constant [4 x i8] c"\E2\80\99\00", align 1
@.str.17.81 = private unnamed_addr constant [4 x i8] c"\A1\07e\00", align 1
@.str.18.82 = private unnamed_addr constant [3 x i8] c"\A1\AF\00", align 1
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8, !dbg !362
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !369
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !357
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !371
@unicode_to_mb.initialized = internal unnamed_addr global i1 false, align 4, !dbg !376
@.str.89 = private unnamed_addr constant [6 x i8] c"UTF-8\00", align 1
@unicode_to_mb.is_utf8 = internal unnamed_addr global i32 0, align 4, !dbg !440
@unicode_to_mb.utf8_to_local = internal unnamed_addr global i8* null, align 8, !dbg !442
@.str.1.90 = private unnamed_addr constant [6 x i8] c"ASCII\00", align 1
@.str.2.91 = private unnamed_addr constant [26 x i8] c"iconv function not usable\00", align 1
@.str.3.92 = private unnamed_addr constant [23 x i8] c"character out of range\00", align 1
@.str.4.95 = private unnamed_addr constant [45 x i8] c"cannot convert U+%04X to local character set\00", align 1
@.str.5.96 = private unnamed_addr constant [49 x i8] c"cannot convert U+%04X to local character set: %s\00", align 1
@.str.6.97 = private unnamed_addr constant [7 x i8] c"\\u%04X\00", align 1
@.str.7.98 = private unnamed_addr constant [7 x i8] c"\\U%08X\00", align 1
@.str.101 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1
@.str.1.102 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.2.103 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1
@.str.3.104 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.4.105 = private unnamed_addr constant [171 x i8] c"License GPLv3+: GNU GPL version 3 or later <%s>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\00", align 1
@.str.5.106 = private unnamed_addr constant [34 x i8] c"https://gnu.org/licenses/gpl.html\00", align 1
@.str.6.107 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1
@.str.7.108 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1
@.str.8.109 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1
@.str.9.110 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.10.111 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.11.112 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1
@.str.12.113 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1
@.str.13.114 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.14.115 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.15.116 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1
@.str.16.119 = private unnamed_addr constant [20 x i8] c"Report bugs to: %s\0A\00", align 1
@.str.17.120 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1
@.str.18.121 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1
@.str.19.122 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.20.123 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.21.124 = private unnamed_addr constant [39 x i8] c"General help using GNU software: <%s>\0A\00", align 1
@.str.22.125 = private unnamed_addr constant [29 x i8] c"https://www.gnu.org/gethelp/\00", align 1
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !468
@.str.1.136 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.137 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.140 = private unnamed_addr constant [32 x i8] c"cannot perform formatted output\00", align 1
@c_locale_cache = internal global %struct.__locale_struct* null, align 8, !dbg !476
@.str.147 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.1.152 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1
@.str.155 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1.156 = private unnamed_addr constant [6 x i8] c"ASCII\00", align 1

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @usage(i32 %0) local_unnamed_addr #0 !dbg !1232 {
  %2 = alloca [7 x %struct.infomap], align 16
  call void @llvm.dbg.declare(metadata [7 x %struct.infomap]* %2, metadata !1237, metadata !DIExpression()), !dbg !1254
  call void @llvm.dbg.value(metadata i32 %0, metadata !1236, metadata !DIExpression()), !dbg !1258
  %3 = icmp eq i32 %0, 0, !dbg !1259
  br i1 %3, label %9, label %4, !dbg !1260

4:                                                ; preds = %1
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1261, !tbaa !1263
  %6 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 5) #19, !dbg !1261
  %7 = load i8*, i8** @program_name, align 8, !dbg !1261, !tbaa !1263
  %8 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %5, i32 1, i8* %6, i8* %7) #19, !dbg !1261
  br label %72, !dbg !1261

9:                                                ; preds = %1
  %10 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i32 5) #19, !dbg !1267
  %11 = load i8*, i8** @program_name, align 8, !dbg !1267, !tbaa !1263
  %12 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %10, i8* %11, i8* %11) #19, !dbg !1267
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.2, i64 0, i64 0), i32 5) #19, !dbg !1268
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1268, !tbaa !1263
  %15 = tail call i32 @fputs_unlocked(i8* %13, %struct._IO_FILE* %14), !dbg !1268
  %16 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0), i32 5) #19, !dbg !1269
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1269, !tbaa !1263
  %18 = tail call i32 @fputs_unlocked(i8* %16, %struct._IO_FILE* %17), !dbg !1269
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.4, i64 0, i64 0), i32 5) #19, !dbg !1270
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1270, !tbaa !1263
  %21 = tail call i32 @fputs_unlocked(i8* %19, %struct._IO_FILE* %20), !dbg !1270
  %22 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([97 x i8], [97 x i8]* @.str.5, i64 0, i64 0), i32 5) #19, !dbg !1271
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1271, !tbaa !1263
  %24 = tail call i32 @fputs_unlocked(i8* %22, %struct._IO_FILE* %23), !dbg !1271
  %25 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([229 x i8], [229 x i8]* @.str.6, i64 0, i64 0), i32 5) #19, !dbg !1272
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1272, !tbaa !1263
  %27 = tail call i32 @fputs_unlocked(i8* %25, %struct._IO_FILE* %26), !dbg !1272
  %28 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([252 x i8], [252 x i8]* @.str.7, i64 0, i64 0), i32 5) #19, !dbg !1273
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1273, !tbaa !1263
  %30 = tail call i32 @fputs_unlocked(i8* %28, %struct._IO_FILE* %29), !dbg !1273
  %31 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([448 x i8], [448 x i8]* @.str.8, i64 0, i64 0), i32 5) #19, !dbg !1274
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1274, !tbaa !1263
  %33 = tail call i32 @fputs_unlocked(i8* %31, %struct._IO_FILE* %32), !dbg !1274
  %34 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([191 x i8], [191 x i8]* @.str.9, i64 0, i64 0), i32 5) #19, !dbg !1275
  %35 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %34, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0)) #19, !dbg !1275
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0), metadata !1241, metadata !DIExpression()) #19, !dbg !1276
  %36 = bitcast [7 x %struct.infomap]* %2 to i8*, !dbg !1277
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %36) #19, !dbg !1277
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 dereferenceable(112) %36, i8* nonnull align 16 dereferenceable(112) bitcast ([7 x %struct.infomap]* @__const.emit_ancillary_info.infomap to i8*), i64 112, i1 false) #19, !dbg !1254
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0), metadata !1242, metadata !DIExpression()) #19, !dbg !1276
  call void @llvm.dbg.value(metadata [7 x %struct.infomap]* %2, metadata !1243, metadata !DIExpression()) #19, !dbg !1276
  %37 = getelementptr inbounds [7 x %struct.infomap], [7 x %struct.infomap]* %2, i64 0, i64 0, !dbg !1278
  call void @llvm.dbg.value(metadata %struct.infomap* %37, metadata !1243, metadata !DIExpression()) #19, !dbg !1276
  br label %38, !dbg !1279

38:                                               ; preds = %43, %9
  %39 = phi i8* [ %46, %43 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.22, i64 0, i64 0), %9 ]
  %40 = phi %struct.infomap* [ %44, %43 ], [ %37, %9 ]
  call void @llvm.dbg.value(metadata %struct.infomap* %40, metadata !1243, metadata !DIExpression()) #19, !dbg !1276
  %41 = tail call i32 @strcmp(i8* nonnull dereferenceable(7) getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0), i8* nonnull %39) #21, !dbg !1280
  %42 = icmp eq i32 %41, 0, !dbg !1280
  br i1 %42, label %48, label %43, !dbg !1279

43:                                               ; preds = %38
  %44 = getelementptr inbounds %struct.infomap, %struct.infomap* %40, i64 1, !dbg !1281
  call void @llvm.dbg.value(metadata %struct.infomap* %44, metadata !1243, metadata !DIExpression()) #19, !dbg !1276
  %45 = getelementptr inbounds %struct.infomap, %struct.infomap* %44, i64 0, i32 0, !dbg !1282
  %46 = load i8*, i8** %45, align 8, !dbg !1282, !tbaa !1283
  %47 = icmp eq i8* %46, null, !dbg !1285
  br i1 %47, label %48, label %38, !dbg !1286, !llvm.loop !1287

48:                                               ; preds = %43, %38
  %49 = phi %struct.infomap* [ %44, %43 ], [ %40, %38 ]
  call void @llvm.dbg.value(metadata %struct.infomap* %49, metadata !1243, metadata !DIExpression()) #19, !dbg !1276
  call void @llvm.dbg.value(metadata %struct.infomap* %49, metadata !1243, metadata !DIExpression()) #19, !dbg !1276
  %50 = getelementptr inbounds %struct.infomap, %struct.infomap* %49, i64 0, i32 1, !dbg !1288
  %51 = load i8*, i8** %50, align 8, !dbg !1288, !tbaa !1290
  %52 = icmp eq i8* %51, null, !dbg !1291
  %53 = select i1 %52, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0), i8* %51, !dbg !1292
  call void @llvm.dbg.value(metadata i8* %53, metadata !1242, metadata !DIExpression()) #19, !dbg !1276
  %54 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.30, i64 0, i64 0), i32 5) #19, !dbg !1293
  %55 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %54, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.31, i64 0, i64 0)) #19, !dbg !1293
  %56 = tail call i8* @setlocale(i32 5, i8* null) #19, !dbg !1294
  call void @llvm.dbg.value(metadata i8* %56, metadata !1250, metadata !DIExpression()) #19, !dbg !1276
  %57 = icmp eq i8* %56, null, !dbg !1295
  br i1 %57, label %65, label %58, !dbg !1297

58:                                               ; preds = %48
  %59 = tail call i32 @strncmp(i8* nonnull %56, i8* nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.32, i64 0, i64 0), i64 3) #21, !dbg !1298
  %60 = icmp eq i32 %59, 0, !dbg !1298
  br i1 %60, label %65, label %61, !dbg !1299

61:                                               ; preds = %58
  %62 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.33, i64 0, i64 0), i32 5) #19, !dbg !1300
  %63 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1300, !tbaa !1263
  %64 = tail call i32 @fputs_unlocked(i8* %62, %struct._IO_FILE* %63) #19, !dbg !1300
  br label %65, !dbg !1302

65:                                               ; preds = %48, %58, %61
  %66 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.34, i64 0, i64 0), i32 5) #19, !dbg !1303
  %67 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %66, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.31, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0)) #19, !dbg !1303
  %68 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.35, i64 0, i64 0), i32 5) #19, !dbg !1304
  %69 = icmp eq i8* %53, getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0), !dbg !1304
  %70 = select i1 %69, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.36, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.11, i64 0, i64 0), !dbg !1304
  %71 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %68, i8* %53, i8* %70) #19, !dbg !1304
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %36) #19, !dbg !1305
  br label %72

72:                                               ; preds = %65, %4
  tail call void @exit(i32 %0) #22, !dbg !1306
  unreachable, !dbg !1306
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !36 i8* @dcgettext(i8*, i8*, i32) local_unnamed_addr #2

declare i32 @__fprintf_chk(%struct._IO_FILE*, i32, i8*, ...) local_unnamed_addr #3

declare i32 @__printf_chk(i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !46 i32 @fputs_unlocked(i8* nocapture readonly, %struct._IO_FILE* nocapture) local_unnamed_addr #4

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #5

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: nofree nounwind readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) local_unnamed_addr #6

; Function Attrs: nounwind
declare !dbg !111 i8* @setlocale(i32, i8*) local_unnamed_addr #2

; Function Attrs: nofree nounwind readonly
declare i32 @strncmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #6

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #5

; Function Attrs: noreturn nounwind
declare void @exit(i32) local_unnamed_addr #7

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @main(i32 %0, i8** nocapture readonly %1) local_unnamed_addr #8 !dbg !1307 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca [256 x i8], align 16
  call void @llvm.dbg.declare(metadata [256 x i8]* %5, metadata !1315, metadata !DIExpression()), !dbg !1353
  call void @llvm.dbg.value(metadata i32 %0, metadata !1311, metadata !DIExpression()), !dbg !1356
  call void @llvm.dbg.value(metadata i8** %1, metadata !1312, metadata !DIExpression()), !dbg !1356
  %6 = load i8*, i8** %1, align 8, !dbg !1357, !tbaa !1263
  tail call void @set_program_name(i8* %6) #19, !dbg !1358
  %7 = tail call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.11, i64 0, i64 0)) #19, !dbg !1359
  %8 = tail call i8* @bindtextdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.13, i64 0, i64 0)) #19, !dbg !1360
  %9 = tail call i8* @textdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i64 0, i64 0)) #19, !dbg !1361
  %10 = tail call i32 @atexit(void ()* nonnull @close_stdout) #19, !dbg !1362
  store i1 false, i1* @exit_status, align 4, !dbg !1363
  %11 = tail call i8* @getenv(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i64 0, i64 0)) #19, !dbg !1364
  %12 = icmp ne i8* %11, null, !dbg !1365
  %13 = zext i1 %12 to i8, !dbg !1366
  store i8 %13, i8* @posixly_correct, align 1, !dbg !1366, !tbaa !1367
  %14 = icmp eq i32 %0, 2, !dbg !1369
  br i1 %14, label %15, label %27, !dbg !1371

15:                                               ; preds = %2
  %16 = getelementptr inbounds i8*, i8** %1, i64 1, !dbg !1372
  %17 = load i8*, i8** %16, align 8, !dbg !1372, !tbaa !1263
  %18 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %17, i8* nonnull dereferenceable(7) getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i64 0, i64 0)) #21, !dbg !1372
  %19 = icmp eq i32 %18, 0, !dbg !1372
  br i1 %19, label %20, label %21, !dbg !1375

20:                                               ; preds = %15
  tail call void @usage(i32 0) #23, !dbg !1376
  unreachable, !dbg !1376

21:                                               ; preds = %15
  %22 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %17, i8* nonnull dereferenceable(10) getelementptr inbounds ([10 x i8], [10 x i8]* @.str.16, i64 0, i64 0)) #21, !dbg !1377
  %23 = icmp eq i32 %22, 0, !dbg !1377
  br i1 %23, label %24, label %32, !dbg !1379

24:                                               ; preds = %21
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1380, !tbaa !1263
  %26 = load i8*, i8** @Version, align 8, !dbg !1382, !tbaa !1263
  tail call void (%struct._IO_FILE*, i8*, i8*, i8*, ...) @version_etc(%struct._IO_FILE* %25, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i8* %26, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0), i8* null) #19, !dbg !1383
  br label %413, !dbg !1384

27:                                               ; preds = %2
  %28 = icmp sgt i32 %0, 1, !dbg !1385
  br i1 %28, label %29, label %43, !dbg !1387

29:                                               ; preds = %27
  %30 = getelementptr inbounds i8*, i8** %1, i64 1, !dbg !1388
  %31 = load i8*, i8** %30, align 8, !dbg !1389, !tbaa !1263
  br label %32, !dbg !1387

32:                                               ; preds = %29, %21
  %33 = phi i8* [ %31, %29 ], [ %17, %21 ], !dbg !1389
  %34 = getelementptr inbounds i8*, i8** %1, i64 1, !dbg !1389
  %35 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %33, i8* nonnull dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.19, i64 0, i64 0)) #21, !dbg !1389
  %36 = icmp eq i32 %35, 0, !dbg !1389
  br i1 %36, label %37, label %45, !dbg !1390

37:                                               ; preds = %32
  call void @llvm.dbg.value(metadata i32 %0, metadata !1311, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !1356
  call void @llvm.dbg.value(metadata i8** %34, metadata !1312, metadata !DIExpression()), !dbg !1356
  call void @llvm.dbg.value(metadata i32 %0, metadata !1311, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !1356
  call void @llvm.dbg.value(metadata i8** %34, metadata !1312, metadata !DIExpression()), !dbg !1356
  %38 = icmp slt i32 %0, 3, !dbg !1391
  br i1 %38, label %43, label %39, !dbg !1393

39:                                               ; preds = %37
  %40 = add nsw i32 %0, -1, !dbg !1394
  call void @llvm.dbg.value(metadata i32 %40, metadata !1311, metadata !DIExpression()), !dbg !1356
  call void @llvm.dbg.value(metadata i32 %40, metadata !1311, metadata !DIExpression()), !dbg !1356
  %41 = getelementptr inbounds i8*, i8** %1, i64 2, !dbg !1356
  %42 = load i8*, i8** %41, align 8, !dbg !1396, !tbaa !1263
  br label %45, !dbg !1393

43:                                               ; preds = %27, %37
  %44 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.20, i64 0, i64 0), i32 5) #19, !dbg !1397
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %44) #19, !dbg !1399
  tail call void @usage(i32 1) #23, !dbg !1400
  unreachable, !dbg !1400

45:                                               ; preds = %39, %32
  %46 = phi i8* [ %42, %39 ], [ %33, %32 ], !dbg !1396
  %47 = phi i32 [ %40, %39 ], [ %0, %32 ]
  %48 = phi i8** [ %34, %39 ], [ %1, %32 ]
  call void @llvm.dbg.value(metadata i8* %46, metadata !1313, metadata !DIExpression()), !dbg !1356
  %49 = add nsw i32 %47, -2, !dbg !1401
  call void @llvm.dbg.value(metadata i32 %49, metadata !1311, metadata !DIExpression()), !dbg !1356
  %50 = getelementptr inbounds i8*, i8** %48, i64 2, !dbg !1402
  call void @llvm.dbg.value(metadata i8** %50, metadata !1312, metadata !DIExpression()), !dbg !1356
  %51 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0, !dbg !1403
  %52 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 88, !dbg !1404
  %53 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 120, !dbg !1404
  %54 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 117, !dbg !1404
  %55 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 115, !dbg !1404
  %56 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 111, !dbg !1404
  %57 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 105, !dbg !1404
  %58 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 71, !dbg !1404
  %59 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 70, !dbg !1404
  %60 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 69, !dbg !1404
  %61 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 101, !dbg !1404
  %62 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 100, !dbg !1404
  %63 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 99, !dbg !1404
  %64 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 65, !dbg !1404
  %65 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 97, !dbg !1404
  %66 = bitcast i8** %3 to i8*, !dbg !1405
  %67 = bitcast i8** %4 to i8*, !dbg !1444
  br label %68, !dbg !1456

68:                                               ; preds = %397, %45
  %69 = phi i8** [ %50, %45 ], [ %401, %397 ], !dbg !1356
  %70 = phi i32 [ %49, %45 ], [ %398, %397 ], !dbg !1356
  call void @llvm.dbg.value(metadata i32 %70, metadata !1311, metadata !DIExpression()), !dbg !1356
  call void @llvm.dbg.value(metadata i8** %69, metadata !1312, metadata !DIExpression()), !dbg !1356
  call void @llvm.dbg.value(metadata i8* %46, metadata !1320, metadata !DIExpression()) #19, !dbg !1403
  call void @llvm.dbg.value(metadata i32 %70, metadata !1321, metadata !DIExpression()) #19, !dbg !1403
  call void @llvm.dbg.value(metadata i8** %69, metadata !1322, metadata !DIExpression()) #19, !dbg !1403
  call void @llvm.dbg.value(metadata i32 %70, metadata !1323, metadata !DIExpression()) #19, !dbg !1403
  call void @llvm.dbg.value(metadata i32 0, metadata !1328, metadata !DIExpression()) #19, !dbg !1403
  call void @llvm.dbg.value(metadata i32 0, metadata !1330, metadata !DIExpression()) #19, !dbg !1403
  call void @llvm.lifetime.start.p0i8(i64 256, i8* nonnull %51) #19, !dbg !1457
  call void @llvm.dbg.value(metadata i8* %46, metadata !1324, metadata !DIExpression()) #19, !dbg !1403
  call void @llvm.dbg.value(metadata i32 %70, metadata !1321, metadata !DIExpression()) #19, !dbg !1403
  call void @llvm.dbg.value(metadata i8** %69, metadata !1322, metadata !DIExpression()) #19, !dbg !1403
  call void @llvm.dbg.value(metadata i32 0, metadata !1330, metadata !DIExpression()) #19, !dbg !1403
  call void @llvm.dbg.value(metadata i32 0, metadata !1328, metadata !DIExpression()) #19, !dbg !1403
  %71 = load i8, i8* %46, align 1, !dbg !1458, !tbaa !1459
  %72 = icmp eq i8 %71, 0, !dbg !1460
  br i1 %72, label %397, label %73, !dbg !1460

73:                                               ; preds = %68, %388
  %74 = phi i8 [ %395, %388 ], [ %71, %68 ]
  %75 = phi i32 [ %393, %388 ], [ %70, %68 ]
  %76 = phi i8** [ %392, %388 ], [ %69, %68 ]
  %77 = phi i8* [ %394, %388 ], [ %46, %68 ]
  %78 = phi i32 [ %390, %388 ], [ 0, %68 ]
  %79 = phi i32 [ %389, %388 ], [ 0, %68 ]
  call void @llvm.dbg.value(metadata i32 %75, metadata !1321, metadata !DIExpression()) #19, !dbg !1403
  call void @llvm.dbg.value(metadata i8** %76, metadata !1322, metadata !DIExpression()) #19, !dbg !1403
  call void @llvm.dbg.value(metadata i8* %77, metadata !1324, metadata !DIExpression()) #19, !dbg !1403
  call void @llvm.dbg.value(metadata i32 %78, metadata !1330, metadata !DIExpression()) #19, !dbg !1403
  call void @llvm.dbg.value(metadata i32 %79, metadata !1328, metadata !DIExpression()) #19, !dbg !1403
  %80 = sext i8 %74 to i32, !dbg !1461
  switch i32 %80, label %376 [
    i32 37, label %81
    i32 92, label %372
  ], !dbg !1462

81:                                               ; preds = %73
  %82 = getelementptr inbounds i8, i8* %77, i64 1, !dbg !1463
  call void @llvm.dbg.value(metadata i8* %82, metadata !1324, metadata !DIExpression()) #19, !dbg !1403
  call void @llvm.dbg.value(metadata i8* %77, metadata !1325, metadata !DIExpression()) #19, !dbg !1403
  call void @llvm.dbg.value(metadata i64 1, metadata !1326, metadata !DIExpression()) #19, !dbg !1403
  call void @llvm.dbg.value(metadata i8 0, metadata !1329, metadata !DIExpression()) #19, !dbg !1403
  call void @llvm.dbg.value(metadata i8 0, metadata !1327, metadata !DIExpression()) #19, !dbg !1403
  %83 = load i8, i8* %82, align 1, !dbg !1464, !tbaa !1459
  switch i8 %83, label %133 [
    i8 37, label %84
    i8 98, label %95
    i8 113, label %124
  ], !dbg !1466

84:                                               ; preds = %81
  call void @llvm.dbg.value(metadata i32 37, metadata !1467, metadata !DIExpression()) #19, !dbg !1473
  %85 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1476, !tbaa !1263
  %86 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %85, i64 0, i32 5, !dbg !1476
  %87 = load i8*, i8** %86, align 8, !dbg !1476, !tbaa !1477
  %88 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %85, i64 0, i32 6, !dbg !1476
  %89 = load i8*, i8** %88, align 8, !dbg !1476, !tbaa !1482
  %90 = icmp ult i8* %87, %89, !dbg !1476
  br i1 %90, label %93, label %91, !dbg !1476, !prof !1483, !misexpect !1484

91:                                               ; preds = %84
  %92 = call i32 @__overflow(%struct._IO_FILE* %85, i32 37) #19, !dbg !1476
  br label %388, !dbg !1476

93:                                               ; preds = %84
  %94 = getelementptr inbounds i8, i8* %87, i64 1, !dbg !1476
  store i8* %94, i8** %86, align 8, !dbg !1476, !tbaa !1477
  store i8 37, i8* %87, align 1, !dbg !1476, !tbaa !1459
  br label %388, !dbg !1476

95:                                               ; preds = %81
  %96 = icmp sgt i32 %75, 0, !dbg !1485
  br i1 %96, label %97, label %388, !dbg !1489

97:                                               ; preds = %95
  %98 = load i8*, i8** %76, align 8, !dbg !1490, !tbaa !1263
  call void @llvm.dbg.value(metadata i8* %98, metadata !1492, metadata !DIExpression()) #19, !dbg !1495
  br label %99, !dbg !1497

99:                                               ; preds = %118, %97
  %100 = phi i8* [ %98, %97 ], [ %120, %118 ]
  call void @llvm.dbg.value(metadata i8* %100, metadata !1492, metadata !DIExpression()) #19, !dbg !1495
  %101 = load i8, i8* %100, align 1, !dbg !1498, !tbaa !1459
  switch i8 %101, label %106 [
    i8 0, label %121
    i8 92, label %102
  ], !dbg !1501

102:                                              ; preds = %99
  %103 = call fastcc i32 @print_esc(i8* nonnull %100, i1 zeroext true) #19, !dbg !1502
  %104 = sext i32 %103 to i64, !dbg !1504
  %105 = getelementptr inbounds i8, i8* %100, i64 %104, !dbg !1504
  call void @llvm.dbg.value(metadata i8* %105, metadata !1492, metadata !DIExpression()) #19, !dbg !1495
  br label %118, !dbg !1505

106:                                              ; preds = %99
  call void @llvm.dbg.value(metadata i8 %101, metadata !1467, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)) #19, !dbg !1506
  %107 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1508, !tbaa !1263
  %108 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %107, i64 0, i32 5, !dbg !1508
  %109 = load i8*, i8** %108, align 8, !dbg !1508, !tbaa !1477
  %110 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %107, i64 0, i32 6, !dbg !1508
  %111 = load i8*, i8** %110, align 8, !dbg !1508, !tbaa !1482
  %112 = icmp ult i8* %109, %111, !dbg !1508
  br i1 %112, label %116, label %113, !dbg !1508, !prof !1483, !misexpect !1484

113:                                              ; preds = %106
  %114 = zext i8 %101 to i32, !dbg !1509
  call void @llvm.dbg.value(metadata i8 %101, metadata !1467, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)) #19, !dbg !1506
  %115 = call i32 @__overflow(%struct._IO_FILE* %107, i32 %114) #19, !dbg !1508
  br label %118, !dbg !1508

116:                                              ; preds = %106
  %117 = getelementptr inbounds i8, i8* %109, i64 1, !dbg !1508
  store i8* %117, i8** %108, align 8, !dbg !1508, !tbaa !1477
  store i8 %101, i8* %109, align 1, !dbg !1508, !tbaa !1459
  br label %118, !dbg !1508

118:                                              ; preds = %116, %113, %102
  %119 = phi i8* [ %105, %102 ], [ %100, %113 ], [ %100, %116 ]
  call void @llvm.dbg.value(metadata i8* %119, metadata !1492, metadata !DIExpression()) #19, !dbg !1495
  %120 = getelementptr inbounds i8, i8* %119, i64 1, !dbg !1510
  call void @llvm.dbg.value(metadata i8* %120, metadata !1492, metadata !DIExpression()) #19, !dbg !1495
  br label %99, !dbg !1511, !llvm.loop !1512

121:                                              ; preds = %99
  %122 = getelementptr inbounds i8*, i8** %76, i64 1, !dbg !1514
  call void @llvm.dbg.value(metadata i8** %122, metadata !1322, metadata !DIExpression()) #19, !dbg !1403
  %123 = add nsw i32 %75, -1, !dbg !1515
  call void @llvm.dbg.value(metadata i32 %123, metadata !1321, metadata !DIExpression()) #19, !dbg !1403
  br label %388, !dbg !1516

124:                                              ; preds = %81
  %125 = icmp sgt i32 %75, 0, !dbg !1517
  br i1 %125, label %126, label %388, !dbg !1521

126:                                              ; preds = %124
  %127 = load i8*, i8** %76, align 8, !dbg !1522, !tbaa !1263
  %128 = call i8* @quotearg_style(i32 3, i8* %127) #19, !dbg !1522
  %129 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1522, !tbaa !1263
  %130 = call i32 @fputs_unlocked(i8* %128, %struct._IO_FILE* %129) #19, !dbg !1522
  %131 = getelementptr inbounds i8*, i8** %76, i64 1, !dbg !1524
  call void @llvm.dbg.value(metadata i8** %131, metadata !1322, metadata !DIExpression()) #19, !dbg !1403
  %132 = add nsw i32 %75, -1, !dbg !1525
  call void @llvm.dbg.value(metadata i32 %132, metadata !1321, metadata !DIExpression()) #19, !dbg !1403
  br label %388, !dbg !1526

133:                                              ; preds = %81
  call void @llvm.dbg.value(metadata i8* %51, metadata !1527, metadata !DIExpression()) #19, !dbg !1535
  call void @llvm.dbg.value(metadata i32 0, metadata !1533, metadata !DIExpression()) #19, !dbg !1535
  call void @llvm.dbg.value(metadata i64 256, metadata !1534, metadata !DIExpression()) #19, !dbg !1535
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 dereferenceable(256) %51, i8 0, i64 256, i1 false) #19, !dbg !1537
  store i8 1, i8* %52, align 8, !dbg !1538, !tbaa !1459
  store i8 1, i8* %53, align 8, !dbg !1539, !tbaa !1459
  store i8 1, i8* %54, align 1, !dbg !1540, !tbaa !1459
  store i8 1, i8* %55, align 1, !dbg !1541, !tbaa !1459
  store i8 1, i8* %56, align 1, !dbg !1542, !tbaa !1459
  store i8 1, i8* %57, align 1, !dbg !1543, !tbaa !1459
  store i8 1, i8* %58, align 1, !dbg !1544, !tbaa !1459
  store i8 1, i8* %59, align 2, !dbg !1545, !tbaa !1459
  store i8 1, i8* %60, align 1, !dbg !1546, !tbaa !1459
  store i8 1, i8* %64, align 1, !dbg !1547, !tbaa !1459
  store i8 1, i8* %65, align 1, !dbg !1548, !tbaa !1459
  call void @llvm.memset.p0i8.i64(i8* nonnull align 1 dereferenceable(5) %63, i8 1, i64 5, i1 false) #19, !dbg !1549
  br label %134, !dbg !1550

134:                                              ; preds = %142, %133
  %135 = phi i64 [ 1, %133 ], [ %144, %142 ], !dbg !1404
  %136 = phi i8* [ %82, %133 ], [ %143, %142 ], !dbg !1404
  call void @llvm.dbg.value(metadata i8* %136, metadata !1324, metadata !DIExpression()) #19, !dbg !1403
  call void @llvm.dbg.value(metadata i64 %135, metadata !1326, metadata !DIExpression()) #19, !dbg !1403
  %137 = load i8, i8* %136, align 1, !dbg !1551, !tbaa !1459
  %138 = sext i8 %137 to i32, !dbg !1551
  switch i32 %138, label %145 [
    i32 73, label %139
    i32 39, label %139
    i32 45, label %142
    i32 43, label %142
    i32 32, label %142
    i32 35, label %140
    i32 48, label %141
  ], !dbg !1554

139:                                              ; preds = %134, %134
  store i8 0, i8* %52, align 8, !dbg !1555, !tbaa !1459
  store i8 0, i8* %53, align 8, !dbg !1557, !tbaa !1459
  store i8 0, i8* %55, align 1, !dbg !1558, !tbaa !1459
  store i8 0, i8* %56, align 1, !dbg !1559, !tbaa !1459
  store i8 0, i8* %60, align 1, !dbg !1560, !tbaa !1459
  store i8 0, i8* %61, align 1, !dbg !1561, !tbaa !1459
  store i8 0, i8* %63, align 1, !dbg !1562, !tbaa !1459
  store i8 0, i8* %64, align 1, !dbg !1563, !tbaa !1459
  store i8 0, i8* %65, align 1, !dbg !1564, !tbaa !1459
  br label %142, !dbg !1565

140:                                              ; preds = %134
  store i8 0, i8* %54, align 1, !dbg !1566, !tbaa !1459
  store i8 0, i8* %55, align 1, !dbg !1567, !tbaa !1459
  store i8 0, i8* %57, align 1, !dbg !1568, !tbaa !1459
  store i8 0, i8* %62, align 4, !dbg !1569, !tbaa !1459
  store i8 0, i8* %63, align 1, !dbg !1570, !tbaa !1459
  br label %142, !dbg !1571

141:                                              ; preds = %134
  store i8 0, i8* %55, align 1, !dbg !1572, !tbaa !1459
  store i8 0, i8* %63, align 1, !dbg !1573, !tbaa !1459
  br label %142, !dbg !1574

142:                                              ; preds = %141, %140, %139, %134, %134, %134
  %143 = getelementptr inbounds i8, i8* %136, i64 1, !dbg !1575
  call void @llvm.dbg.value(metadata i8* %143, metadata !1324, metadata !DIExpression()) #19, !dbg !1403
  %144 = add i64 %135, 1, !dbg !1576
  call void @llvm.dbg.value(metadata i64 %144, metadata !1326, metadata !DIExpression()) #19, !dbg !1403
  br label %134, !dbg !1577, !llvm.loop !1578

145:                                              ; preds = %134
  call void @llvm.dbg.value(metadata i64 %135, metadata !1326, metadata !DIExpression()) #19, !dbg !1403
  call void @llvm.dbg.value(metadata i8* %136, metadata !1324, metadata !DIExpression()) #19, !dbg !1403
  call void @llvm.dbg.value(metadata i64 %135, metadata !1326, metadata !DIExpression()) #19, !dbg !1403
  call void @llvm.dbg.value(metadata i8* %136, metadata !1324, metadata !DIExpression()) #19, !dbg !1403
  call void @llvm.dbg.value(metadata i64 %135, metadata !1326, metadata !DIExpression()) #19, !dbg !1403
  call void @llvm.dbg.value(metadata i8* %136, metadata !1324, metadata !DIExpression()) #19, !dbg !1403
  call void @llvm.dbg.value(metadata i64 %135, metadata !1326, metadata !DIExpression()) #19, !dbg !1403
  call void @llvm.dbg.value(metadata i8* %136, metadata !1324, metadata !DIExpression()) #19, !dbg !1403
  call void @llvm.dbg.value(metadata i64 %135, metadata !1326, metadata !DIExpression()) #19, !dbg !1403
  call void @llvm.dbg.value(metadata i8* %136, metadata !1324, metadata !DIExpression()) #19, !dbg !1403
  call void @llvm.dbg.value(metadata i64 %135, metadata !1326, metadata !DIExpression()) #19, !dbg !1403
  call void @llvm.dbg.value(metadata i8* %136, metadata !1324, metadata !DIExpression()) #19, !dbg !1403
  call void @llvm.dbg.value(metadata i64 %135, metadata !1326, metadata !DIExpression()) #19, !dbg !1403
  call void @llvm.dbg.value(metadata i8* %136, metadata !1324, metadata !DIExpression()) #19, !dbg !1403
  call void @llvm.dbg.value(metadata i64 %135, metadata !1326, metadata !DIExpression()) #19, !dbg !1403
  call void @llvm.dbg.value(metadata i8* %136, metadata !1324, metadata !DIExpression()) #19, !dbg !1403
  call void @llvm.dbg.value(metadata i64 %135, metadata !1326, metadata !DIExpression()) #19, !dbg !1403
  call void @llvm.dbg.value(metadata i8* %136, metadata !1324, metadata !DIExpression()) #19, !dbg !1403
  call void @llvm.dbg.label(metadata !1352) #19, !dbg !1581
  %146 = icmp eq i8 %137, 42, !dbg !1582
  br i1 %146, label %151, label %147, !dbg !1583

147:                                              ; preds = %145
  %148 = sext i8 %137 to i32, !dbg !1551
  call void @llvm.dbg.value(metadata i8* %136, metadata !1324, metadata !DIExpression()) #19, !dbg !1403
  call void @llvm.dbg.value(metadata i64 %135, metadata !1326, metadata !DIExpression()) #19, !dbg !1403
  %149 = add nsw i32 %148, -48, !dbg !1584
  %150 = icmp ult i32 %149, 10, !dbg !1584
  br i1 %150, label %168, label %182, !dbg !1585

151:                                              ; preds = %145
  %152 = getelementptr inbounds i8, i8* %136, i64 1, !dbg !1586
  call void @llvm.dbg.value(metadata i8* %152, metadata !1324, metadata !DIExpression()) #19, !dbg !1403
  %153 = add i64 %135, 1, !dbg !1587
  call void @llvm.dbg.value(metadata i64 %153, metadata !1326, metadata !DIExpression()) #19, !dbg !1403
  %154 = icmp sgt i32 %75, 0, !dbg !1588
  br i1 %154, label %155, label %177, !dbg !1589

155:                                              ; preds = %151
  %156 = load i8*, i8** %76, align 8, !dbg !1590, !tbaa !1263
  %157 = call fastcc i64 @vstrtoimax(i8* %156) #19, !dbg !1591
  call void @llvm.dbg.value(metadata i64 %157, metadata !1331, metadata !DIExpression()) #19, !dbg !1592
  %158 = add i64 %157, 2147483648, !dbg !1593
  %159 = icmp ult i64 %158, 4294967296, !dbg !1593
  br i1 %159, label %160, label %164, !dbg !1593

160:                                              ; preds = %155
  %161 = trunc i64 %157 to i32, !dbg !1595
  call void @llvm.dbg.value(metadata i32 %161, metadata !1328, metadata !DIExpression()) #19, !dbg !1403
  %162 = getelementptr inbounds i8*, i8** %76, i64 1, !dbg !1596
  call void @llvm.dbg.value(metadata i8** %162, metadata !1322, metadata !DIExpression()) #19, !dbg !1403
  %163 = add nsw i32 %75, -1, !dbg !1597
  call void @llvm.dbg.value(metadata i32 %163, metadata !1321, metadata !DIExpression()) #19, !dbg !1403
  br label %177, !dbg !1598

164:                                              ; preds = %155
  call void @llvm.dbg.value(metadata i8** %76, metadata !1322, metadata !DIExpression()) #19, !dbg !1403
  call void @llvm.dbg.value(metadata i8** %76, metadata !1322, metadata !DIExpression()) #19, !dbg !1403
  call void @llvm.dbg.value(metadata i8** %76, metadata !1322, metadata !DIExpression()) #19, !dbg !1403
  call void @llvm.dbg.value(metadata i8** %76, metadata !1322, metadata !DIExpression()) #19, !dbg !1403
  call void @llvm.dbg.value(metadata i8** %76, metadata !1322, metadata !DIExpression()) #19, !dbg !1403
  call void @llvm.dbg.value(metadata i8** %76, metadata !1322, metadata !DIExpression()) #19, !dbg !1403
  call void @llvm.dbg.value(metadata i8** %76, metadata !1322, metadata !DIExpression()) #19, !dbg !1403
  call void @llvm.dbg.value(metadata i8** %76, metadata !1322, metadata !DIExpression()) #19, !dbg !1403
  call void @llvm.dbg.value(metadata i8** %76, metadata !1322, metadata !DIExpression()) #19, !dbg !1403
  %165 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.37, i64 0, i64 0), i32 5) #19, !dbg !1599
  %166 = load i8*, i8** %76, align 8, !dbg !1599, !tbaa !1263
  %167 = call i8* @quote(i8* %166) #19, !dbg !1599
  call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %165, i8* %167) #19, !dbg !1599
  unreachable, !dbg !1599

168:                                              ; preds = %147, %168
  %169 = phi i8* [ %171, %168 ], [ %136, %147 ]
  %170 = phi i64 [ %172, %168 ], [ %135, %147 ]
  call void @llvm.dbg.value(metadata i8* %169, metadata !1324, metadata !DIExpression()) #19, !dbg !1403
  call void @llvm.dbg.value(metadata i64 %170, metadata !1326, metadata !DIExpression()) #19, !dbg !1403
  %171 = getelementptr inbounds i8, i8* %169, i64 1, !dbg !1600
  call void @llvm.dbg.value(metadata i8* %171, metadata !1324, metadata !DIExpression()) #19, !dbg !1403
  %172 = add i64 %170, 1, !dbg !1602
  call void @llvm.dbg.value(metadata i64 %172, metadata !1326, metadata !DIExpression()) #19, !dbg !1403
  %173 = load i8, i8* %171, align 1, !dbg !1584, !tbaa !1459
  %174 = sext i8 %173 to i32, !dbg !1584
  %175 = add nsw i32 %174, -48, !dbg !1584
  %176 = icmp ult i32 %175, 10, !dbg !1584
  br i1 %176, label %168, label %182, !dbg !1585, !llvm.loop !1603

177:                                              ; preds = %160, %151
  %178 = phi i32 [ 0, %151 ], [ %161, %160 ]
  %179 = phi i8** [ %76, %151 ], [ %162, %160 ]
  %180 = phi i32 [ %75, %151 ], [ %163, %160 ]
  %181 = load i8, i8* %152, align 1, !dbg !1605, !tbaa !1459
  br label %182, !dbg !1605

182:                                              ; preds = %168, %177, %147
  %183 = phi i8 [ %181, %177 ], [ %137, %147 ], [ %173, %168 ], !dbg !1605
  %184 = phi i64 [ %153, %177 ], [ %135, %147 ], [ %172, %168 ], !dbg !1404
  %185 = phi i1 [ true, %177 ], [ false, %147 ], [ false, %168 ]
  %186 = phi i32 [ %178, %177 ], [ %79, %147 ], [ %79, %168 ], !dbg !1403
  %187 = phi i8* [ %152, %177 ], [ %136, %147 ], [ %171, %168 ], !dbg !1404
  %188 = phi i8** [ %179, %177 ], [ %76, %147 ], [ %76, %168 ]
  %189 = phi i32 [ %180, %177 ], [ %75, %147 ], [ %75, %168 ]
  call void @llvm.dbg.value(metadata i32 %189, metadata !1321, metadata !DIExpression()) #19, !dbg !1403
  call void @llvm.dbg.value(metadata i8** %188, metadata !1322, metadata !DIExpression()) #19, !dbg !1403
  call void @llvm.dbg.value(metadata i8* %187, metadata !1324, metadata !DIExpression()) #19, !dbg !1403
  call void @llvm.dbg.value(metadata i32 %186, metadata !1328, metadata !DIExpression()) #19, !dbg !1403
  call void @llvm.dbg.value(metadata i8 undef, metadata !1327, metadata !DIExpression()) #19, !dbg !1403
  call void @llvm.dbg.value(metadata i64 %184, metadata !1326, metadata !DIExpression()) #19, !dbg !1403
  %190 = icmp eq i8 %183, 46, !dbg !1606
  br i1 %190, label %191, label %231, !dbg !1607

191:                                              ; preds = %182
  %192 = getelementptr inbounds i8, i8* %187, i64 1, !dbg !1608
  call void @llvm.dbg.value(metadata i8* %192, metadata !1324, metadata !DIExpression()) #19, !dbg !1403
  call void @llvm.dbg.value(metadata i64 %184, metadata !1326, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)) #19, !dbg !1403
  store i8 0, i8* %63, align 1, !dbg !1609, !tbaa !1459
  %193 = load i8, i8* %192, align 1, !dbg !1610, !tbaa !1459
  %194 = icmp eq i8 %193, 42, !dbg !1611
  br i1 %194, label %202, label %195, !dbg !1612

195:                                              ; preds = %191
  %196 = add i64 %184, 1, !dbg !1613
  call void @llvm.dbg.value(metadata i8* %192, metadata !1324, metadata !DIExpression()) #19, !dbg !1403
  call void @llvm.dbg.value(metadata i64 %196, metadata !1326, metadata !DIExpression()) #19, !dbg !1403
  %197 = sext i8 %193 to i32, !dbg !1614
  %198 = add nsw i32 %197, -48, !dbg !1614
  %199 = icmp ult i32 %198, 10, !dbg !1614
  call void @llvm.dbg.value(metadata i8* %187, metadata !1324, metadata !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value)) #19, !dbg !1403
  call void @llvm.dbg.value(metadata i64 %196, metadata !1326, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)) #19, !dbg !1403
  br i1 %199, label %200, label %231, !dbg !1615, !llvm.loop !1616

200:                                              ; preds = %195
  %201 = getelementptr inbounds i8, i8* %187, i64 2, !dbg !1618
  call void @llvm.dbg.value(metadata i8* %201, metadata !1324, metadata !DIExpression()) #19, !dbg !1403
  br label %222, !dbg !1615

202:                                              ; preds = %191
  %203 = getelementptr inbounds i8, i8* %187, i64 2, !dbg !1620
  call void @llvm.dbg.value(metadata i8* %203, metadata !1324, metadata !DIExpression()) #19, !dbg !1403
  %204 = add i64 %184, 2, !dbg !1621
  call void @llvm.dbg.value(metadata i64 %204, metadata !1326, metadata !DIExpression()) #19, !dbg !1403
  %205 = icmp sgt i32 %189, 0, !dbg !1622
  br i1 %205, label %206, label %231, !dbg !1623

206:                                              ; preds = %202
  %207 = load i8*, i8** %188, align 8, !dbg !1624, !tbaa !1263
  %208 = call fastcc i64 @vstrtoimax(i8* %207) #19, !dbg !1625
  call void @llvm.dbg.value(metadata i64 %208, metadata !1343, metadata !DIExpression()) #19, !dbg !1626
  %209 = icmp slt i64 %208, 0, !dbg !1627
  br i1 %209, label %218, label %210, !dbg !1629

210:                                              ; preds = %206
  %211 = icmp sgt i64 %208, 2147483647, !dbg !1630
  br i1 %211, label %212, label %216, !dbg !1632

212:                                              ; preds = %210
  call void @llvm.dbg.value(metadata i8** %188, metadata !1322, metadata !DIExpression()) #19, !dbg !1403
  call void @llvm.dbg.value(metadata i8** %188, metadata !1322, metadata !DIExpression()) #19, !dbg !1403
  call void @llvm.dbg.value(metadata i8** %188, metadata !1322, metadata !DIExpression()) #19, !dbg !1403
  call void @llvm.dbg.value(metadata i8** %188, metadata !1322, metadata !DIExpression()) #19, !dbg !1403
  call void @llvm.dbg.value(metadata i8** %188, metadata !1322, metadata !DIExpression()) #19, !dbg !1403
  call void @llvm.dbg.value(metadata i8** %188, metadata !1322, metadata !DIExpression()) #19, !dbg !1403
  call void @llvm.dbg.value(metadata i8** %188, metadata !1322, metadata !DIExpression()) #19, !dbg !1403
  call void @llvm.dbg.value(metadata i8** %188, metadata !1322, metadata !DIExpression()) #19, !dbg !1403
  call void @llvm.dbg.value(metadata i8** %188, metadata !1322, metadata !DIExpression()) #19, !dbg !1403
  %213 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.38, i64 0, i64 0), i32 5) #19, !dbg !1633
  %214 = load i8*, i8** %188, align 8, !dbg !1633, !tbaa !1263
  %215 = call i8* @quote(i8* %214) #19, !dbg !1633
  call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %213, i8* %215) #19, !dbg !1633
  unreachable, !dbg !1633

216:                                              ; preds = %210
  %217 = trunc i64 %208 to i32, !dbg !1634
  call void @llvm.dbg.value(metadata i32 %217, metadata !1330, metadata !DIExpression()) #19, !dbg !1403
  br label %218

218:                                              ; preds = %216, %206
  %219 = phi i32 [ %217, %216 ], [ -1, %206 ], !dbg !1635
  call void @llvm.dbg.value(metadata i32 %219, metadata !1330, metadata !DIExpression()) #19, !dbg !1403
  %220 = getelementptr inbounds i8*, i8** %188, i64 1, !dbg !1636
  call void @llvm.dbg.value(metadata i8** %220, metadata !1322, metadata !DIExpression()) #19, !dbg !1403
  %221 = add nsw i32 %189, -1, !dbg !1637
  call void @llvm.dbg.value(metadata i32 %221, metadata !1321, metadata !DIExpression()) #19, !dbg !1403
  br label %231, !dbg !1638

222:                                              ; preds = %200, %222
  %223 = phi i8* [ %230, %222 ], [ %201, %200 ]
  %224 = phi i64 [ %226, %222 ], [ %196, %200 ]
  %225 = load i8, i8* %223, align 1, !dbg !1614, !tbaa !1459
  %226 = add i64 %224, 1, !dbg !1613
  call void @llvm.dbg.value(metadata i8* %223, metadata !1324, metadata !DIExpression()) #19, !dbg !1403
  call void @llvm.dbg.value(metadata i64 %226, metadata !1326, metadata !DIExpression()) #19, !dbg !1403
  %227 = sext i8 %225 to i32, !dbg !1614
  %228 = add nsw i32 %227, -48, !dbg !1614
  %229 = icmp ult i32 %228, 10, !dbg !1614
  %230 = getelementptr inbounds i8, i8* %223, i64 1, !dbg !1618
  call void @llvm.dbg.value(metadata i8* %230, metadata !1324, metadata !DIExpression()) #19, !dbg !1403
  call void @llvm.dbg.value(metadata i64 %226, metadata !1326, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)) #19, !dbg !1403
  br i1 %229, label %222, label %231, !dbg !1615, !llvm.loop !1616

231:                                              ; preds = %222, %195, %218, %202, %182
  %232 = phi i64 [ %184, %182 ], [ %204, %202 ], [ %204, %218 ], [ %196, %195 ], [ %226, %222 ], !dbg !1404
  %233 = phi i1 [ false, %182 ], [ true, %202 ], [ true, %218 ], [ false, %195 ], [ false, %222 ]
  %234 = phi i32 [ %78, %182 ], [ 0, %202 ], [ %219, %218 ], [ %78, %195 ], [ %78, %222 ], !dbg !1403
  %235 = phi i8* [ %187, %182 ], [ %203, %202 ], [ %203, %218 ], [ %192, %195 ], [ %223, %222 ], !dbg !1404
  %236 = phi i8** [ %188, %182 ], [ %188, %202 ], [ %220, %218 ], [ %188, %195 ], [ %188, %222 ], !dbg !1404
  %237 = phi i32 [ %189, %182 ], [ %189, %202 ], [ %221, %218 ], [ %189, %195 ], [ %189, %222 ], !dbg !1404
  call void @llvm.dbg.value(metadata i32 %237, metadata !1321, metadata !DIExpression()) #19, !dbg !1403
  call void @llvm.dbg.value(metadata i8** %236, metadata !1322, metadata !DIExpression()) #19, !dbg !1403
  call void @llvm.dbg.value(metadata i8* %235, metadata !1324, metadata !DIExpression()) #19, !dbg !1403
  call void @llvm.dbg.value(metadata i32 %234, metadata !1330, metadata !DIExpression()) #19, !dbg !1403
  call void @llvm.dbg.value(metadata i8 undef, metadata !1329, metadata !DIExpression()) #19, !dbg !1403
  call void @llvm.dbg.value(metadata i64 %232, metadata !1326, metadata !DIExpression()) #19, !dbg !1403
  br label %238, !dbg !1639

238:                                              ; preds = %241, %231
  %239 = phi i8* [ %235, %231 ], [ %242, %241 ], !dbg !1404
  call void @llvm.dbg.value(metadata i8* %239, metadata !1324, metadata !DIExpression()) #19, !dbg !1403
  %240 = load i8, i8* %239, align 1, !dbg !1640, !tbaa !1459
  switch i8 %240, label %243 [
    i8 108, label %241
    i8 76, label %241
    i8 104, label %241
    i8 106, label %241
    i8 116, label %241
    i8 122, label %241
  ], !dbg !1641

241:                                              ; preds = %238, %238, %238, %238, %238, %238
  %242 = getelementptr inbounds i8, i8* %239, i64 1, !dbg !1642
  call void @llvm.dbg.value(metadata i8* %242, metadata !1324, metadata !DIExpression()) #19, !dbg !1403
  br label %238, !dbg !1639, !llvm.loop !1643

243:                                              ; preds = %238
  call void @llvm.dbg.value(metadata i8* %239, metadata !1324, metadata !DIExpression()) #19, !dbg !1403
  call void @llvm.dbg.value(metadata i8* %239, metadata !1324, metadata !DIExpression()) #19, !dbg !1403
  call void @llvm.dbg.value(metadata i8* %239, metadata !1324, metadata !DIExpression()) #19, !dbg !1403
  call void @llvm.dbg.value(metadata i8* %239, metadata !1324, metadata !DIExpression()) #19, !dbg !1403
  call void @llvm.dbg.value(metadata i8* %239, metadata !1324, metadata !DIExpression()) #19, !dbg !1403
  call void @llvm.dbg.value(metadata i8* %239, metadata !1324, metadata !DIExpression()) #19, !dbg !1403
  call void @llvm.dbg.value(metadata i8* %239, metadata !1324, metadata !DIExpression()) #19, !dbg !1403
  call void @llvm.dbg.value(metadata i8* %239, metadata !1324, metadata !DIExpression()) #19, !dbg !1403
  call void @llvm.dbg.value(metadata i8* %239, metadata !1324, metadata !DIExpression()) #19, !dbg !1403
  call void @llvm.dbg.value(metadata i8 %240, metadata !1350, metadata !DIExpression()) #19, !dbg !1645
  %244 = zext i8 %240 to i64, !dbg !1646
  %245 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 %244, !dbg !1646
  %246 = load i8, i8* %245, align 1, !dbg !1646, !tbaa !1459
  %247 = icmp eq i8 %246, 0, !dbg !1646
  br i1 %247, label %248, label %255, !dbg !1648

248:                                              ; preds = %243
  call void @llvm.dbg.value(metadata i8* %77, metadata !1324, metadata !DIExpression()) #19, !dbg !1403
  call void @llvm.dbg.value(metadata i8* %239, metadata !1324, metadata !DIExpression()) #19, !dbg !1403
  call void @llvm.dbg.value(metadata i8* %77, metadata !1324, metadata !DIExpression()) #19, !dbg !1403
  call void @llvm.dbg.value(metadata i8* %239, metadata !1324, metadata !DIExpression()) #19, !dbg !1403
  call void @llvm.dbg.value(metadata i8* %77, metadata !1324, metadata !DIExpression()) #19, !dbg !1403
  call void @llvm.dbg.value(metadata i8* %239, metadata !1324, metadata !DIExpression()) #19, !dbg !1403
  call void @llvm.dbg.value(metadata i8* %77, metadata !1324, metadata !DIExpression()) #19, !dbg !1403
  call void @llvm.dbg.value(metadata i8* %239, metadata !1324, metadata !DIExpression()) #19, !dbg !1403
  call void @llvm.dbg.value(metadata i8* %77, metadata !1324, metadata !DIExpression()) #19, !dbg !1403
  call void @llvm.dbg.value(metadata i8* %239, metadata !1324, metadata !DIExpression()) #19, !dbg !1403
  call void @llvm.dbg.value(metadata i8* %77, metadata !1324, metadata !DIExpression()) #19, !dbg !1403
  call void @llvm.dbg.value(metadata i8* %239, metadata !1324, metadata !DIExpression()) #19, !dbg !1403
  call void @llvm.dbg.value(metadata i8* %77, metadata !1324, metadata !DIExpression()) #19, !dbg !1403
  call void @llvm.dbg.value(metadata i8* %239, metadata !1324, metadata !DIExpression()) #19, !dbg !1403
  call void @llvm.dbg.value(metadata i8* %77, metadata !1324, metadata !DIExpression()) #19, !dbg !1403
  call void @llvm.dbg.value(metadata i8* %239, metadata !1324, metadata !DIExpression()) #19, !dbg !1403
  call void @llvm.dbg.value(metadata i8* %77, metadata !1324, metadata !DIExpression()) #19, !dbg !1403
  call void @llvm.dbg.value(metadata i8* %239, metadata !1324, metadata !DIExpression()) #19, !dbg !1403
  %249 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.39, i64 0, i64 0), i32 5) #19, !dbg !1649
  %250 = getelementptr inbounds i8, i8* %239, i64 1, !dbg !1649
  %251 = ptrtoint i8* %250 to i64, !dbg !1649
  %252 = ptrtoint i8* %77 to i64, !dbg !1649
  %253 = sub i64 %251, %252, !dbg !1649
  %254 = trunc i64 %253 to i32, !dbg !1649
  call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %249, i32 %254, i8* nonnull %77) #19, !dbg !1649
  unreachable, !dbg !1649

255:                                              ; preds = %243
  %256 = icmp slt i32 %237, 1, !dbg !1650
  br i1 %256, label %261, label %257, !dbg !1651

257:                                              ; preds = %255
  %258 = add nsw i32 %237, -1, !dbg !1652
  call void @llvm.dbg.value(metadata i32 %258, metadata !1321, metadata !DIExpression()) #19, !dbg !1403
  %259 = getelementptr inbounds i8*, i8** %236, i64 1, !dbg !1653
  call void @llvm.dbg.value(metadata i8** %259, metadata !1322, metadata !DIExpression()) #19, !dbg !1403
  %260 = load i8*, i8** %236, align 8, !dbg !1654, !tbaa !1263
  br label %261, !dbg !1651

261:                                              ; preds = %257, %255
  %262 = phi i8** [ %236, %255 ], [ %259, %257 ], !dbg !1404
  %263 = phi i32 [ %237, %255 ], [ %258, %257 ], !dbg !1404
  %264 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.11, i64 0, i64 0), %255 ], [ %260, %257 ], !dbg !1651
  call void @llvm.dbg.value(metadata i32 %263, metadata !1321, metadata !DIExpression()) #19, !dbg !1403
  call void @llvm.dbg.value(metadata i8** %262, metadata !1322, metadata !DIExpression()) #19, !dbg !1403
  call void @llvm.dbg.value(metadata i8* %77, metadata !1423, metadata !DIExpression()) #19, !dbg !1655
  call void @llvm.dbg.value(metadata i64 %232, metadata !1424, metadata !DIExpression()) #19, !dbg !1655
  call void @llvm.dbg.value(metadata i8 %240, metadata !1425, metadata !DIExpression()) #19, !dbg !1655
  call void @llvm.dbg.value(metadata i1 %185, metadata !1426, metadata !DIExpression()) #19, !dbg !1655
  call void @llvm.dbg.value(metadata i32 %186, metadata !1427, metadata !DIExpression()) #19, !dbg !1655
  call void @llvm.dbg.value(metadata i1 %233, metadata !1428, metadata !DIExpression()) #19, !dbg !1655
  call void @llvm.dbg.value(metadata i32 %234, metadata !1429, metadata !DIExpression()) #19, !dbg !1655
  call void @llvm.dbg.value(metadata i8* %264, metadata !1430, metadata !DIExpression()) #19, !dbg !1655
  %265 = sext i8 %240 to i32, !dbg !1656
  switch i32 %265, label %267 [
    i32 100, label %268
    i32 105, label %268
    i32 111, label %268
    i32 117, label %268
    i32 120, label %268
    i32 88, label %268
    i32 97, label %266
    i32 101, label %266
    i32 102, label %266
    i32 103, label %266
    i32 65, label %266
    i32 69, label %266
    i32 70, label %266
    i32 71, label %266
  ], !dbg !1657

266:                                              ; preds = %261, %261, %261, %261, %261, %261, %261, %261
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.45, i64 0, i64 0), metadata !1434, metadata !DIExpression()) #19, !dbg !1658
  call void @llvm.dbg.value(metadata i64 1, metadata !1435, metadata !DIExpression()) #19, !dbg !1658
  br label %268, !dbg !1659

267:                                              ; preds = %261
  call void @llvm.dbg.value(metadata i8* %77, metadata !1434, metadata !DIExpression()) #19, !dbg !1658
  call void @llvm.dbg.value(metadata i64 0, metadata !1435, metadata !DIExpression()) #19, !dbg !1658
  br label %268, !dbg !1661

268:                                              ; preds = %267, %266, %261, %261, %261, %261, %261, %261
  %269 = phi i64 [ 0, %267 ], [ 1, %266 ], [ 1, %261 ], [ 1, %261 ], [ 1, %261 ], [ 1, %261 ], [ 1, %261 ], [ 1, %261 ], !dbg !1662
  %270 = phi i8* [ %77, %267 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.45, i64 0, i64 0), %266 ], [ getelementptr inbounds ([3 x i8], [3 x i8]* @.str.44, i64 0, i64 0), %261 ], [ getelementptr inbounds ([3 x i8], [3 x i8]* @.str.44, i64 0, i64 0), %261 ], [ getelementptr inbounds ([3 x i8], [3 x i8]* @.str.44, i64 0, i64 0), %261 ], [ getelementptr inbounds ([3 x i8], [3 x i8]* @.str.44, i64 0, i64 0), %261 ], [ getelementptr inbounds ([3 x i8], [3 x i8]* @.str.44, i64 0, i64 0), %261 ], [ getelementptr inbounds ([3 x i8], [3 x i8]* @.str.44, i64 0, i64 0), %261 ], !dbg !1662
  call void @llvm.dbg.value(metadata i8* %270, metadata !1434, metadata !DIExpression()) #19, !dbg !1658
  call void @llvm.dbg.value(metadata i64 %269, metadata !1435, metadata !DIExpression()) #19, !dbg !1658
  %271 = add i64 %232, 2, !dbg !1663
  %272 = add i64 %271, %269, !dbg !1664
  %273 = call noalias i8* @xmalloc(i64 %272) #19, !dbg !1665
  call void @llvm.dbg.value(metadata i8* %273, metadata !1431, metadata !DIExpression()) #19, !dbg !1655
  call void @llvm.dbg.value(metadata i8* %273, metadata !1666, metadata !DIExpression()) #19, !dbg !1675
  call void @llvm.dbg.value(metadata i8* %77, metadata !1673, metadata !DIExpression()) #19, !dbg !1675
  call void @llvm.dbg.value(metadata i64 %232, metadata !1674, metadata !DIExpression()) #19, !dbg !1675
  %274 = call i8* @__mempcpy_chk(i8* nonnull %273, i8* nonnull %77, i64 %232, i64 -1) #19, !dbg !1677
  call void @llvm.dbg.value(metadata i8* %274, metadata !1432, metadata !DIExpression()) #19, !dbg !1658
  call void @llvm.dbg.value(metadata i8* %274, metadata !1666, metadata !DIExpression()) #19, !dbg !1678
  call void @llvm.dbg.value(metadata i8* %270, metadata !1673, metadata !DIExpression()) #19, !dbg !1678
  call void @llvm.dbg.value(metadata i64 %269, metadata !1674, metadata !DIExpression()) #19, !dbg !1678
  %275 = call i8* @__mempcpy_chk(i8* nonnull %274, i8* nonnull %270, i64 %269, i64 -1) #19, !dbg !1680
  call void @llvm.dbg.value(metadata i8* %275, metadata !1432, metadata !DIExpression()) #19, !dbg !1658
  %276 = getelementptr inbounds i8, i8* %275, i64 1, !dbg !1681
  call void @llvm.dbg.value(metadata i8* %276, metadata !1432, metadata !DIExpression()) #19, !dbg !1658
  store i8 %240, i8* %275, align 1, !dbg !1682, !tbaa !1459
  store i8 0, i8* %276, align 1, !dbg !1683, !tbaa !1459
  switch i32 %265, label %371 [
    i32 100, label %277
    i32 105, label %277
    i32 111, label %289
    i32 117, label %289
    i32 120, label %289
    i32 88, label %289
    i32 97, label %321
    i32 65, label %321
    i32 101, label %321
    i32 69, label %321
    i32 102, label %321
    i32 70, label %321
    i32 103, label %321
    i32 71, label %321
    i32 99, label %353
    i32 115, label %360
  ], !dbg !1684

277:                                              ; preds = %268, %268
  %278 = call fastcc i64 @vstrtoimax(i8* %264) #19, !dbg !1685
  call void @llvm.dbg.value(metadata i64 %278, metadata !1436, metadata !DIExpression()) #19, !dbg !1686
  br i1 %185, label %284, label %279, !dbg !1687

279:                                              ; preds = %277
  br i1 %233, label %282, label %280, !dbg !1688

280:                                              ; preds = %279
  %281 = call i32 (i8*, ...) @xprintf(i8* nonnull %273, i64 %278) #19, !dbg !1691
  br label %371, !dbg !1691

282:                                              ; preds = %279
  %283 = call i32 (i8*, ...) @xprintf(i8* nonnull %273, i32 %234, i64 %278) #19, !dbg !1693
  br label %371

284:                                              ; preds = %277
  br i1 %233, label %287, label %285, !dbg !1694

285:                                              ; preds = %284
  %286 = call i32 (i8*, ...) @xprintf(i8* nonnull %273, i32 %186, i64 %278) #19, !dbg !1696
  br label %371, !dbg !1696

287:                                              ; preds = %284
  %288 = call i32 (i8*, ...) @xprintf(i8* nonnull %273, i32 %186, i32 %234, i64 %278) #19, !dbg !1698
  br label %371

289:                                              ; preds = %268, %268, %268, %268
  call void @llvm.dbg.value(metadata i8* %264, metadata !1449, metadata !DIExpression()) #19, !dbg !1444
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %67) #19, !dbg !1699
  %290 = load i8, i8* %264, align 1, !dbg !1700, !tbaa !1459
  switch i8 %290, label %305 [
    i8 34, label %291
    i8 39, label %291
  ], !dbg !1700

291:                                              ; preds = %289, %289
  %292 = getelementptr inbounds i8, i8* %264, i64 1, !dbg !1700
  %293 = load i8, i8* %292, align 1, !dbg !1700, !tbaa !1459
  %294 = icmp eq i8 %293, 0, !dbg !1700
  br i1 %294, label %305, label %295, !dbg !1699

295:                                              ; preds = %291
  call void @llvm.dbg.value(metadata i8* %292, metadata !1449, metadata !DIExpression()) #19, !dbg !1444
  call void @llvm.dbg.value(metadata i8 %293, metadata !1452, metadata !DIExpression()) #19, !dbg !1701
  %296 = zext i8 %293 to i64, !dbg !1702
  call void @llvm.dbg.value(metadata i64 %296, metadata !1451, metadata !DIExpression()) #19, !dbg !1444
  %297 = getelementptr inbounds i8, i8* %264, i64 2, !dbg !1703
  call void @llvm.dbg.value(metadata i8* %297, metadata !1449, metadata !DIExpression()) #19, !dbg !1444
  %298 = load i8, i8* %297, align 1, !dbg !1703, !tbaa !1459
  %299 = icmp ne i8 %298, 0, !dbg !1703
  %300 = load i8, i8* @posixly_correct, align 1, !dbg !1703
  %301 = icmp eq i8 %300, 0, !dbg !1703
  %302 = and i1 %299, %301, !dbg !1703
  br i1 %302, label %303, label %309, !dbg !1703

303:                                              ; preds = %295
  %304 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.40, i64 0, i64 0), i32 5) #19, !dbg !1703
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %304, i8* nonnull %297) #19, !dbg !1703
  br label %309, !dbg !1703

305:                                              ; preds = %291, %289
  %306 = tail call i32* @__errno_location() #24, !dbg !1705
  store i32 0, i32* %306, align 4, !dbg !1705, !tbaa !1707
  call void @llvm.dbg.value(metadata i8** %4, metadata !1450, metadata !DIExpression(DW_OP_deref)) #19, !dbg !1444
  call void @llvm.dbg.value(metadata i8* %264, metadata !1708, metadata !DIExpression()) #19, !dbg !1718
  call void @llvm.dbg.value(metadata i8** %4, metadata !1716, metadata !DIExpression()) #19, !dbg !1718
  call void @llvm.dbg.value(metadata i32 0, metadata !1717, metadata !DIExpression()) #19, !dbg !1718
  %307 = call i64 @__strtoul_internal(i8* nonnull %264, i8** nonnull %4, i32 0, i32 0) #19, !dbg !1720
  call void @llvm.dbg.value(metadata i64 %307, metadata !1451, metadata !DIExpression()) #19, !dbg !1444
  %308 = load i8*, i8** %4, align 8, !dbg !1705, !tbaa !1263
  call void @llvm.dbg.value(metadata i8* %308, metadata !1450, metadata !DIExpression()) #19, !dbg !1444
  call fastcc void @verify_numeric(i8* nonnull %264, i8* %308) #19, !dbg !1705
  br label %309

309:                                              ; preds = %305, %303, %295
  %310 = phi i64 [ %307, %305 ], [ %296, %295 ], [ %296, %303 ], !dbg !1721
  call void @llvm.dbg.value(metadata i64 %310, metadata !1451, metadata !DIExpression()) #19, !dbg !1444
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %67) #19, !dbg !1699
  call void @llvm.dbg.value(metadata i64 %310, metadata !1438, metadata !DIExpression()) #19, !dbg !1722
  br i1 %185, label %316, label %311, !dbg !1723

311:                                              ; preds = %309
  br i1 %233, label %314, label %312, !dbg !1724

312:                                              ; preds = %311
  %313 = call i32 (i8*, ...) @xprintf(i8* nonnull %273, i64 %310) #19, !dbg !1727
  br label %371, !dbg !1727

314:                                              ; preds = %311
  %315 = call i32 (i8*, ...) @xprintf(i8* nonnull %273, i32 %234, i64 %310) #19, !dbg !1729
  br label %371

316:                                              ; preds = %309
  br i1 %233, label %319, label %317, !dbg !1730

317:                                              ; preds = %316
  %318 = call i32 (i8*, ...) @xprintf(i8* nonnull %273, i32 %186, i64 %310) #19, !dbg !1732
  br label %371, !dbg !1732

319:                                              ; preds = %316
  %320 = call i32 (i8*, ...) @xprintf(i8* nonnull %273, i32 %186, i32 %234, i64 %310) #19, !dbg !1734
  br label %371

321:                                              ; preds = %268, %268, %268, %268, %268, %268, %268, %268
  call void @llvm.dbg.value(metadata i8* %264, metadata !1410, metadata !DIExpression()) #19, !dbg !1405
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %66) #19, !dbg !1735
  %322 = load i8, i8* %264, align 1, !dbg !1736, !tbaa !1459
  switch i8 %322, label %337 [
    i8 34, label %323
    i8 39, label %323
  ], !dbg !1736

323:                                              ; preds = %321, %321
  %324 = getelementptr inbounds i8, i8* %264, i64 1, !dbg !1736
  %325 = load i8, i8* %324, align 1, !dbg !1736, !tbaa !1459
  %326 = icmp eq i8 %325, 0, !dbg !1736
  br i1 %326, label %337, label %327, !dbg !1735

327:                                              ; preds = %323
  call void @llvm.dbg.value(metadata i8* %324, metadata !1410, metadata !DIExpression()) #19, !dbg !1405
  call void @llvm.dbg.value(metadata i8 %325, metadata !1413, metadata !DIExpression()) #19, !dbg !1737
  %328 = uitofp i8 %325 to x86_fp80, !dbg !1738
  call void @llvm.dbg.value(metadata x86_fp80 %328, metadata !1412, metadata !DIExpression()) #19, !dbg !1405
  %329 = getelementptr inbounds i8, i8* %264, i64 2, !dbg !1739
  call void @llvm.dbg.value(metadata i8* %329, metadata !1410, metadata !DIExpression()) #19, !dbg !1405
  %330 = load i8, i8* %329, align 1, !dbg !1739, !tbaa !1459
  %331 = icmp ne i8 %330, 0, !dbg !1739
  %332 = load i8, i8* @posixly_correct, align 1, !dbg !1739
  %333 = icmp eq i8 %332, 0, !dbg !1739
  %334 = and i1 %331, %333, !dbg !1739
  br i1 %334, label %335, label %341, !dbg !1739

335:                                              ; preds = %327
  %336 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.40, i64 0, i64 0), i32 5) #19, !dbg !1739
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %336, i8* nonnull %329) #19, !dbg !1739
  br label %341, !dbg !1739

337:                                              ; preds = %323, %321
  %338 = tail call i32* @__errno_location() #24, !dbg !1741
  store i32 0, i32* %338, align 4, !dbg !1741, !tbaa !1707
  call void @llvm.dbg.value(metadata i8** %3, metadata !1411, metadata !DIExpression(DW_OP_deref)) #19, !dbg !1405
  %339 = call x86_fp80 @cl_strtold(i8* nonnull %264, i8** nonnull %3) #19, !dbg !1741
  call void @llvm.dbg.value(metadata x86_fp80 %339, metadata !1412, metadata !DIExpression()) #19, !dbg !1405
  %340 = load i8*, i8** %3, align 8, !dbg !1741, !tbaa !1263
  call void @llvm.dbg.value(metadata i8* %340, metadata !1411, metadata !DIExpression()) #19, !dbg !1405
  call fastcc void @verify_numeric(i8* nonnull %264, i8* %340) #19, !dbg !1741
  br label %341

341:                                              ; preds = %337, %335, %327
  %342 = phi x86_fp80 [ %339, %337 ], [ %328, %327 ], [ %328, %335 ], !dbg !1743
  call void @llvm.dbg.value(metadata x86_fp80 %342, metadata !1412, metadata !DIExpression()) #19, !dbg !1405
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %66) #19, !dbg !1735
  call void @llvm.dbg.value(metadata x86_fp80 %342, metadata !1442, metadata !DIExpression()) #19, !dbg !1744
  br i1 %185, label %348, label %343, !dbg !1745

343:                                              ; preds = %341
  br i1 %233, label %346, label %344, !dbg !1746

344:                                              ; preds = %343
  %345 = call i32 (i8*, ...) @xprintf(i8* nonnull %273, x86_fp80 %342) #19, !dbg !1749
  br label %371, !dbg !1749

346:                                              ; preds = %343
  %347 = call i32 (i8*, ...) @xprintf(i8* nonnull %273, i32 %234, x86_fp80 %342) #19, !dbg !1751
  br label %371

348:                                              ; preds = %341
  br i1 %233, label %351, label %349, !dbg !1752

349:                                              ; preds = %348
  %350 = call i32 (i8*, ...) @xprintf(i8* nonnull %273, i32 %186, x86_fp80 %342) #19, !dbg !1754
  br label %371, !dbg !1754

351:                                              ; preds = %348
  %352 = call i32 (i8*, ...) @xprintf(i8* nonnull %273, i32 %186, i32 %234, x86_fp80 %342) #19, !dbg !1756
  br label %371

353:                                              ; preds = %268
  %354 = load i8, i8* %264, align 1, !dbg !1757, !tbaa !1459
  %355 = sext i8 %354 to i32, !dbg !1757
  br i1 %185, label %358, label %356, !dbg !1759

356:                                              ; preds = %353
  %357 = call i32 (i8*, ...) @xprintf(i8* nonnull %273, i32 %355) #19, !dbg !1760
  br label %371, !dbg !1760

358:                                              ; preds = %353
  %359 = call i32 (i8*, ...) @xprintf(i8* nonnull %273, i32 %186, i32 %355) #19, !dbg !1761
  br label %371

360:                                              ; preds = %268
  br i1 %185, label %366, label %361, !dbg !1762

361:                                              ; preds = %360
  br i1 %233, label %364, label %362, !dbg !1763

362:                                              ; preds = %361
  %363 = call i32 (i8*, ...) @xprintf(i8* nonnull %273, i8* %264) #19, !dbg !1766
  br label %371, !dbg !1766

364:                                              ; preds = %361
  %365 = call i32 (i8*, ...) @xprintf(i8* nonnull %273, i32 %234, i8* %264) #19, !dbg !1768
  br label %371

366:                                              ; preds = %360
  br i1 %233, label %369, label %367, !dbg !1769

367:                                              ; preds = %366
  %368 = call i32 (i8*, ...) @xprintf(i8* nonnull %273, i32 %186, i8* %264) #19, !dbg !1771
  br label %371, !dbg !1771

369:                                              ; preds = %366
  %370 = call i32 (i8*, ...) @xprintf(i8* nonnull %273, i32 %186, i32 %234, i8* %264) #19, !dbg !1773
  br label %371

371:                                              ; preds = %369, %367, %364, %362, %358, %356, %351, %349, %346, %344, %319, %317, %314, %312, %287, %285, %282, %280, %268
  call void @free(i8* %273) #19, !dbg !1774
  br label %388, !dbg !1775

372:                                              ; preds = %73
  %373 = call fastcc i32 @print_esc(i8* nonnull %77, i1 zeroext false) #19, !dbg !1776
  %374 = sext i32 %373 to i64, !dbg !1777
  %375 = getelementptr inbounds i8, i8* %77, i64 %374, !dbg !1777
  call void @llvm.dbg.value(metadata i8* %375, metadata !1324, metadata !DIExpression()) #19, !dbg !1403
  br label %388, !dbg !1778

376:                                              ; preds = %73
  call void @llvm.dbg.value(metadata i32 %80, metadata !1467, metadata !DIExpression()) #19, !dbg !1779
  %377 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1781, !tbaa !1263
  %378 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %377, i64 0, i32 5, !dbg !1781
  %379 = load i8*, i8** %378, align 8, !dbg !1781, !tbaa !1477
  %380 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %377, i64 0, i32 6, !dbg !1781
  %381 = load i8*, i8** %380, align 8, !dbg !1781, !tbaa !1482
  %382 = icmp ult i8* %379, %381, !dbg !1781
  br i1 %382, label %386, label %383, !dbg !1781, !prof !1483, !misexpect !1484

383:                                              ; preds = %376
  %384 = and i32 %80, 255, !dbg !1781
  %385 = call i32 @__overflow(%struct._IO_FILE* %377, i32 %384) #19, !dbg !1781
  br label %388, !dbg !1781

386:                                              ; preds = %376
  %387 = getelementptr inbounds i8, i8* %379, i64 1, !dbg !1781
  store i8* %387, i8** %378, align 8, !dbg !1781, !tbaa !1477
  store i8 %74, i8* %379, align 1, !dbg !1781, !tbaa !1459
  br label %388, !dbg !1781

388:                                              ; preds = %386, %383, %372, %371, %126, %124, %121, %95, %93, %91
  %389 = phi i32 [ %79, %372 ], [ %79, %121 ], [ %79, %95 ], [ %79, %126 ], [ %79, %124 ], [ %186, %371 ], [ %79, %91 ], [ %79, %93 ], [ %79, %383 ], [ %79, %386 ], !dbg !1403
  %390 = phi i32 [ %78, %372 ], [ %78, %121 ], [ %78, %95 ], [ %78, %126 ], [ %78, %124 ], [ %234, %371 ], [ %78, %91 ], [ %78, %93 ], [ %78, %383 ], [ %78, %386 ], !dbg !1403
  %391 = phi i8* [ %375, %372 ], [ %82, %121 ], [ %82, %95 ], [ %82, %126 ], [ %82, %124 ], [ %239, %371 ], [ %82, %91 ], [ %82, %93 ], [ %77, %383 ], [ %77, %386 ], !dbg !1782
  %392 = phi i8** [ %76, %372 ], [ %122, %121 ], [ %76, %95 ], [ %131, %126 ], [ %76, %124 ], [ %262, %371 ], [ %76, %91 ], [ %76, %93 ], [ %76, %383 ], [ %76, %386 ]
  %393 = phi i32 [ %75, %372 ], [ %123, %121 ], [ %75, %95 ], [ %132, %126 ], [ %75, %124 ], [ %263, %371 ], [ %75, %91 ], [ %75, %93 ], [ %75, %383 ], [ %75, %386 ]
  call void @llvm.dbg.value(metadata i32 %393, metadata !1321, metadata !DIExpression()) #19, !dbg !1403
  call void @llvm.dbg.value(metadata i8** %392, metadata !1322, metadata !DIExpression()) #19, !dbg !1403
  call void @llvm.dbg.value(metadata i8* %391, metadata !1324, metadata !DIExpression()) #19, !dbg !1403
  call void @llvm.dbg.value(metadata i32 %390, metadata !1330, metadata !DIExpression()) #19, !dbg !1403
  call void @llvm.dbg.value(metadata i32 %389, metadata !1328, metadata !DIExpression()) #19, !dbg !1403
  %394 = getelementptr inbounds i8, i8* %391, i64 1, !dbg !1783
  call void @llvm.dbg.value(metadata i8* %394, metadata !1324, metadata !DIExpression()) #19, !dbg !1403
  %395 = load i8, i8* %394, align 1, !dbg !1458, !tbaa !1459
  %396 = icmp eq i8 %395, 0, !dbg !1460
  br i1 %396, label %397, label %73, !dbg !1460, !llvm.loop !1784

397:                                              ; preds = %388, %68
  %398 = phi i32 [ %70, %68 ], [ %393, %388 ]
  call void @llvm.dbg.value(metadata i32 %398, metadata !1321, metadata !DIExpression()) #19, !dbg !1403
  %399 = sub nsw i32 %70, %398, !dbg !1786
  call void @llvm.lifetime.end.p0i8(i64 256, i8* nonnull %51) #19, !dbg !1787
  call void @llvm.dbg.value(metadata i32 %399, metadata !1314, metadata !DIExpression()), !dbg !1356
  call void @llvm.dbg.value(metadata i32 %398, metadata !1311, metadata !DIExpression()), !dbg !1356
  %400 = sext i32 %399 to i64, !dbg !1788
  %401 = getelementptr inbounds i8*, i8** %69, i64 %400, !dbg !1788
  call void @llvm.dbg.value(metadata i8** %401, metadata !1312, metadata !DIExpression()), !dbg !1356
  %402 = icmp sgt i32 %399, 0, !dbg !1789
  %403 = icmp sgt i32 %398, 0, !dbg !1790
  %404 = and i1 %403, %402, !dbg !1790
  br i1 %404, label %68, label %405, !dbg !1791, !llvm.loop !1792

405:                                              ; preds = %397
  br i1 %403, label %406, label %410, !dbg !1794

406:                                              ; preds = %405
  %407 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.21, i64 0, i64 0), i32 5) #19, !dbg !1795
  %408 = load i8*, i8** %401, align 8, !dbg !1797, !tbaa !1263
  %409 = call i8* @quote(i8* %408) #19, !dbg !1798
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %407, i8* %409) #19, !dbg !1799
  br label %410, !dbg !1799

410:                                              ; preds = %406, %405
  %411 = load i1, i1* @exit_status, align 4, !dbg !1800
  %412 = zext i1 %411 to i32, !dbg !1800
  br label %413, !dbg !1801

413:                                              ; preds = %410, %24
  %414 = phi i32 [ 0, %24 ], [ %412, %410 ], !dbg !1356
  ret i32 %414, !dbg !1802
}

; Function Attrs: nounwind
declare !dbg !115 i8* @bindtextdomain(i8*, i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !118 i8* @textdomain(i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !121 i32 @atexit(void ()*) local_unnamed_addr #2

; Function Attrs: nofree nounwind readonly
declare !dbg !128 i8* @getenv(i8* nocapture) local_unnamed_addr #6

declare !dbg !133 void @error(i32, i32, i8*, ...) local_unnamed_addr #3

declare i32 @__overflow(%struct._IO_FILE*, i32) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i32 @print_esc(i8* %0, i1 zeroext %1) unnamed_addr #8 !dbg !1803 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1807, metadata !DIExpression()), !dbg !1819
  call void @llvm.dbg.value(metadata i1 %1, metadata !1808, metadata !DIExpression()), !dbg !1819
  %3 = getelementptr inbounds i8, i8* %0, i64 1, !dbg !1820
  call void @llvm.dbg.value(metadata i8* %3, metadata !1809, metadata !DIExpression()), !dbg !1819
  call void @llvm.dbg.value(metadata i32 0, metadata !1810, metadata !DIExpression()), !dbg !1819
  %4 = load i8, i8* %3, align 1, !dbg !1821, !tbaa !1459
  %5 = icmp eq i8 %4, 120, !dbg !1822
  br i1 %5, label %6, label %50, !dbg !1823

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i32 0, metadata !1811, metadata !DIExpression()), !dbg !1819
  %7 = getelementptr inbounds i8, i8* %0, i64 2, !dbg !1824
  call void @llvm.dbg.value(metadata i8* %7, metadata !1809, metadata !DIExpression()), !dbg !1819
  call void @llvm.dbg.value(metadata i32 0, metadata !1810, metadata !DIExpression()), !dbg !1819
  %8 = tail call i16** @__ctype_b_loc() #24, !dbg !1827
  %9 = load i16*, i16** %8, align 8, !dbg !1827, !tbaa !1263
  %10 = getelementptr i8, i8* %0, i64 4, !dbg !1829
  %11 = load i8, i8* %7, align 1, !dbg !1830, !tbaa !1459
  %12 = zext i8 %11 to i64, !dbg !1830
  %13 = getelementptr inbounds i16, i16* %9, i64 %12, !dbg !1830
  %14 = load i16, i16* %13, align 2, !dbg !1830, !tbaa !1831
  %15 = and i16 %14, 4096, !dbg !1830
  %16 = icmp eq i16 %15, 0, !dbg !1829
  br i1 %16, label %33, label %17, !dbg !1832

17:                                               ; preds = %6
  %18 = sext i8 %11 to i32, !dbg !1833
  %19 = add i8 %11, -97, !dbg !1833
  %20 = icmp ult i8 %19, 6, !dbg !1833
  %21 = add i8 %11, -65, !dbg !1833
  %22 = icmp ult i8 %21, 6, !dbg !1833
  %23 = select i1 %22, i32 -55, i32 -48, !dbg !1833
  %24 = select i1 %20, i32 -87, i32 %23, !dbg !1833
  %25 = add nsw i32 %24, %18, !dbg !1833
  call void @llvm.dbg.value(metadata i32 %25, metadata !1810, metadata !DIExpression()), !dbg !1819
  call void @llvm.dbg.value(metadata i32 1, metadata !1811, metadata !DIExpression()), !dbg !1819
  %26 = getelementptr inbounds i8, i8* %0, i64 3, !dbg !1834
  call void @llvm.dbg.value(metadata i8* %26, metadata !1809, metadata !DIExpression()), !dbg !1819
  %27 = load i8, i8* %26, align 1, !dbg !1830, !tbaa !1459
  %28 = zext i8 %27 to i64, !dbg !1830
  %29 = getelementptr inbounds i16, i16* %9, i64 %28, !dbg !1830
  %30 = load i16, i16* %29, align 2, !dbg !1830, !tbaa !1831
  %31 = and i16 %30, 4096, !dbg !1830
  %32 = icmp eq i16 %31, 0, !dbg !1829
  br i1 %32, label %35, label %273, !dbg !1832

33:                                               ; preds = %6
  call void @llvm.dbg.value(metadata i32 undef, metadata !1811, metadata !DIExpression()), !dbg !1819
  call void @llvm.dbg.value(metadata i32 undef, metadata !1811, metadata !DIExpression()), !dbg !1819
  %34 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.46, i64 0, i64 0), i32 5) #19, !dbg !1835
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %34) #19, !dbg !1835
  unreachable, !dbg !1835

35:                                               ; preds = %17, %273
  %36 = phi i32 [ %283, %273 ], [ %25, %17 ]
  %37 = phi i8* [ %10, %273 ], [ %26, %17 ]
  call void @llvm.dbg.value(metadata i32 %36, metadata !1467, metadata !DIExpression()) #19, !dbg !1837
  %38 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1839, !tbaa !1263
  %39 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %38, i64 0, i32 5, !dbg !1839
  %40 = load i8*, i8** %39, align 8, !dbg !1839, !tbaa !1477
  %41 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %38, i64 0, i32 6, !dbg !1839
  %42 = load i8*, i8** %41, align 8, !dbg !1839, !tbaa !1482
  %43 = icmp ult i8* %40, %42, !dbg !1839
  br i1 %43, label %47, label %44, !dbg !1839, !prof !1483, !misexpect !1484

44:                                               ; preds = %35
  %45 = and i32 %36, 255, !dbg !1839
  %46 = tail call i32 @__overflow(%struct._IO_FILE* %38, i32 %45) #19, !dbg !1839
  br label %266, !dbg !1839

47:                                               ; preds = %35
  %48 = trunc i32 %36 to i8, !dbg !1839
  %49 = getelementptr inbounds i8, i8* %40, i64 1, !dbg !1839
  store i8* %49, i8** %39, align 8, !dbg !1839, !tbaa !1477
  store i8 %48, i8* %40, align 1, !dbg !1839, !tbaa !1459
  br label %266, !dbg !1839

50:                                               ; preds = %2
  %51 = and i8 %4, -8, !dbg !1840
  %52 = icmp eq i8 %51, 48, !dbg !1840
  br i1 %52, label %53, label %85, !dbg !1840

53:                                               ; preds = %50
  call void @llvm.dbg.value(metadata i32 0, metadata !1811, metadata !DIExpression()), !dbg !1819
  %54 = icmp eq i8 %4, 48, !dbg !1841
  %55 = and i1 %54, %1, !dbg !1841
  %56 = zext i1 %55 to i64, !dbg !1841
  %57 = getelementptr inbounds i8, i8* %3, i64 %56, !dbg !1844
  call void @llvm.dbg.value(metadata i8* %57, metadata !1809, metadata !DIExpression()), !dbg !1819
  call void @llvm.dbg.value(metadata i32 0, metadata !1810, metadata !DIExpression()), !dbg !1819
  %58 = select i1 %55, i64 5, i64 4, !dbg !1845
  %59 = getelementptr i8, i8* %0, i64 %58, !dbg !1845
  %60 = load i8, i8* %57, align 1, !dbg !1847, !tbaa !1459
  %61 = and i8 %60, -8, !dbg !1847
  %62 = icmp eq i8 %61, 48, !dbg !1847
  br i1 %62, label %63, label %70, !dbg !1848

63:                                               ; preds = %53
  %64 = sext i8 %60 to i32, !dbg !1849
  %65 = add nsw i32 %64, -48, !dbg !1850
  call void @llvm.dbg.value(metadata i32 %65, metadata !1810, metadata !DIExpression()), !dbg !1819
  call void @llvm.dbg.value(metadata i32 1, metadata !1811, metadata !DIExpression()), !dbg !1819
  %66 = getelementptr inbounds i8, i8* %57, i64 1, !dbg !1851
  call void @llvm.dbg.value(metadata i8* %66, metadata !1809, metadata !DIExpression()), !dbg !1819
  %67 = load i8, i8* %66, align 1, !dbg !1847, !tbaa !1459
  %68 = and i8 %67, -8, !dbg !1847
  %69 = icmp eq i8 %68, 48, !dbg !1847
  br i1 %69, label %284, label %70, !dbg !1848

70:                                               ; preds = %293, %284, %63, %53
  %71 = phi i32 [ 0, %53 ], [ %65, %63 ], [ %288, %284 ], [ %297, %293 ], !dbg !1819
  %72 = phi i8* [ %57, %53 ], [ %66, %63 ], [ %289, %284 ], [ %59, %293 ], !dbg !1852
  call void @llvm.dbg.value(metadata i32 %71, metadata !1810, metadata !DIExpression()), !dbg !1819
  call void @llvm.dbg.value(metadata i32 %71, metadata !1810, metadata !DIExpression()), !dbg !1819
  call void @llvm.dbg.value(metadata i8* %72, metadata !1809, metadata !DIExpression()), !dbg !1819
  call void @llvm.dbg.value(metadata i8* %72, metadata !1809, metadata !DIExpression()), !dbg !1819
  call void @llvm.dbg.value(metadata i32 %71, metadata !1467, metadata !DIExpression()) #19, !dbg !1853
  %73 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1855, !tbaa !1263
  %74 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %73, i64 0, i32 5, !dbg !1855
  %75 = load i8*, i8** %74, align 8, !dbg !1855, !tbaa !1477
  %76 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %73, i64 0, i32 6, !dbg !1855
  %77 = load i8*, i8** %76, align 8, !dbg !1855, !tbaa !1482
  %78 = icmp ult i8* %75, %77, !dbg !1855
  br i1 %78, label %82, label %79, !dbg !1855, !prof !1483, !misexpect !1484

79:                                               ; preds = %70
  %80 = and i32 %71, 255, !dbg !1855
  %81 = tail call i32 @__overflow(%struct._IO_FILE* %73, i32 %80) #19, !dbg !1855
  br label %266, !dbg !1855

82:                                               ; preds = %70
  %83 = trunc i32 %71 to i8, !dbg !1855
  %84 = getelementptr inbounds i8, i8* %75, i64 1, !dbg !1855
  store i8* %84, i8** %74, align 8, !dbg !1855, !tbaa !1477
  store i8 %83, i8* %75, align 1, !dbg !1855, !tbaa !1459
  br label %266, !dbg !1855

85:                                               ; preds = %50
  %86 = icmp eq i8 %4, 0, !dbg !1856
  br i1 %86, label %238, label %87, !dbg !1857

87:                                               ; preds = %85
  %88 = sext i8 %4 to i32, !dbg !1856
  %89 = tail call i8* @memchr(i8* nonnull dereferenceable(12) getelementptr inbounds ([12 x i8], [12 x i8]* @.str.47, i64 0, i64 0), i32 %88, i64 12), !dbg !1858
  %90 = icmp eq i8* %89, null, !dbg !1858
  br i1 %90, label %194, label %91, !dbg !1859

91:                                               ; preds = %87
  %92 = getelementptr inbounds i8, i8* %0, i64 2, !dbg !1860
  call void @llvm.dbg.value(metadata i8* %92, metadata !1809, metadata !DIExpression()), !dbg !1819
  call void @llvm.dbg.value(metadata i8 %4, metadata !1861, metadata !DIExpression()) #19, !dbg !1866
  switch i32 %88, label %182 [
    i32 97, label %93
    i32 98, label %104
    i32 99, label %115
    i32 101, label %116
    i32 102, label %127
    i32 110, label %138
    i32 114, label %149
    i32 116, label %160
    i32 118, label %171
  ], !dbg !1868

93:                                               ; preds = %91
  call void @llvm.dbg.value(metadata i32 7, metadata !1467, metadata !DIExpression()) #19, !dbg !1869
  %94 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1872, !tbaa !1263
  %95 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %94, i64 0, i32 5, !dbg !1872
  %96 = load i8*, i8** %95, align 8, !dbg !1872, !tbaa !1477
  %97 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %94, i64 0, i32 6, !dbg !1872
  %98 = load i8*, i8** %97, align 8, !dbg !1872, !tbaa !1482
  %99 = icmp ult i8* %96, %98, !dbg !1872
  br i1 %99, label %102, label %100, !dbg !1872, !prof !1483, !misexpect !1484

100:                                              ; preds = %93
  %101 = tail call i32 @__overflow(%struct._IO_FILE* %94, i32 7) #19, !dbg !1872
  br label %266, !dbg !1872

102:                                              ; preds = %93
  %103 = getelementptr inbounds i8, i8* %96, i64 1, !dbg !1872
  store i8* %103, i8** %95, align 8, !dbg !1872, !tbaa !1477
  store i8 7, i8* %96, align 1, !dbg !1872, !tbaa !1459
  br label %266, !dbg !1872

104:                                              ; preds = %91
  call void @llvm.dbg.value(metadata i32 8, metadata !1467, metadata !DIExpression()) #19, !dbg !1873
  %105 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1875, !tbaa !1263
  %106 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %105, i64 0, i32 5, !dbg !1875
  %107 = load i8*, i8** %106, align 8, !dbg !1875, !tbaa !1477
  %108 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %105, i64 0, i32 6, !dbg !1875
  %109 = load i8*, i8** %108, align 8, !dbg !1875, !tbaa !1482
  %110 = icmp ult i8* %107, %109, !dbg !1875
  br i1 %110, label %113, label %111, !dbg !1875, !prof !1483, !misexpect !1484

111:                                              ; preds = %104
  %112 = tail call i32 @__overflow(%struct._IO_FILE* %105, i32 8) #19, !dbg !1875
  br label %266, !dbg !1875

113:                                              ; preds = %104
  %114 = getelementptr inbounds i8, i8* %107, i64 1, !dbg !1875
  store i8* %114, i8** %106, align 8, !dbg !1875, !tbaa !1477
  store i8 8, i8* %107, align 1, !dbg !1875, !tbaa !1459
  br label %266, !dbg !1875

115:                                              ; preds = %91
  tail call void @exit(i32 0) #22, !dbg !1876
  unreachable, !dbg !1876

116:                                              ; preds = %91
  call void @llvm.dbg.value(metadata i32 27, metadata !1467, metadata !DIExpression()) #19, !dbg !1877
  %117 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1879, !tbaa !1263
  %118 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %117, i64 0, i32 5, !dbg !1879
  %119 = load i8*, i8** %118, align 8, !dbg !1879, !tbaa !1477
  %120 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %117, i64 0, i32 6, !dbg !1879
  %121 = load i8*, i8** %120, align 8, !dbg !1879, !tbaa !1482
  %122 = icmp ult i8* %119, %121, !dbg !1879
  br i1 %122, label %125, label %123, !dbg !1879, !prof !1483, !misexpect !1484

123:                                              ; preds = %116
  %124 = tail call i32 @__overflow(%struct._IO_FILE* %117, i32 27) #19, !dbg !1879
  br label %266, !dbg !1879

125:                                              ; preds = %116
  %126 = getelementptr inbounds i8, i8* %119, i64 1, !dbg !1879
  store i8* %126, i8** %118, align 8, !dbg !1879, !tbaa !1477
  store i8 27, i8* %119, align 1, !dbg !1879, !tbaa !1459
  br label %266, !dbg !1879

127:                                              ; preds = %91
  call void @llvm.dbg.value(metadata i32 12, metadata !1467, metadata !DIExpression()) #19, !dbg !1880
  %128 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1882, !tbaa !1263
  %129 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %128, i64 0, i32 5, !dbg !1882
  %130 = load i8*, i8** %129, align 8, !dbg !1882, !tbaa !1477
  %131 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %128, i64 0, i32 6, !dbg !1882
  %132 = load i8*, i8** %131, align 8, !dbg !1882, !tbaa !1482
  %133 = icmp ult i8* %130, %132, !dbg !1882
  br i1 %133, label %136, label %134, !dbg !1882, !prof !1483, !misexpect !1484

134:                                              ; preds = %127
  %135 = tail call i32 @__overflow(%struct._IO_FILE* %128, i32 12) #19, !dbg !1882
  br label %266, !dbg !1882

136:                                              ; preds = %127
  %137 = getelementptr inbounds i8, i8* %130, i64 1, !dbg !1882
  store i8* %137, i8** %129, align 8, !dbg !1882, !tbaa !1477
  store i8 12, i8* %130, align 1, !dbg !1882, !tbaa !1459
  br label %266, !dbg !1882

138:                                              ; preds = %91
  call void @llvm.dbg.value(metadata i32 10, metadata !1467, metadata !DIExpression()) #19, !dbg !1883
  %139 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1885, !tbaa !1263
  %140 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %139, i64 0, i32 5, !dbg !1885
  %141 = load i8*, i8** %140, align 8, !dbg !1885, !tbaa !1477
  %142 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %139, i64 0, i32 6, !dbg !1885
  %143 = load i8*, i8** %142, align 8, !dbg !1885, !tbaa !1482
  %144 = icmp ult i8* %141, %143, !dbg !1885
  br i1 %144, label %147, label %145, !dbg !1885, !prof !1483, !misexpect !1484

145:                                              ; preds = %138
  %146 = tail call i32 @__overflow(%struct._IO_FILE* %139, i32 10) #19, !dbg !1885
  br label %266, !dbg !1885

147:                                              ; preds = %138
  %148 = getelementptr inbounds i8, i8* %141, i64 1, !dbg !1885
  store i8* %148, i8** %140, align 8, !dbg !1885, !tbaa !1477
  store i8 10, i8* %141, align 1, !dbg !1885, !tbaa !1459
  br label %266, !dbg !1885

149:                                              ; preds = %91
  call void @llvm.dbg.value(metadata i32 13, metadata !1467, metadata !DIExpression()) #19, !dbg !1886
  %150 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1888, !tbaa !1263
  %151 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %150, i64 0, i32 5, !dbg !1888
  %152 = load i8*, i8** %151, align 8, !dbg !1888, !tbaa !1477
  %153 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %150, i64 0, i32 6, !dbg !1888
  %154 = load i8*, i8** %153, align 8, !dbg !1888, !tbaa !1482
  %155 = icmp ult i8* %152, %154, !dbg !1888
  br i1 %155, label %158, label %156, !dbg !1888, !prof !1483, !misexpect !1484

156:                                              ; preds = %149
  %157 = tail call i32 @__overflow(%struct._IO_FILE* %150, i32 13) #19, !dbg !1888
  br label %266, !dbg !1888

158:                                              ; preds = %149
  %159 = getelementptr inbounds i8, i8* %152, i64 1, !dbg !1888
  store i8* %159, i8** %151, align 8, !dbg !1888, !tbaa !1477
  store i8 13, i8* %152, align 1, !dbg !1888, !tbaa !1459
  br label %266, !dbg !1888

160:                                              ; preds = %91
  call void @llvm.dbg.value(metadata i32 9, metadata !1467, metadata !DIExpression()) #19, !dbg !1889
  %161 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1891, !tbaa !1263
  %162 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %161, i64 0, i32 5, !dbg !1891
  %163 = load i8*, i8** %162, align 8, !dbg !1891, !tbaa !1477
  %164 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %161, i64 0, i32 6, !dbg !1891
  %165 = load i8*, i8** %164, align 8, !dbg !1891, !tbaa !1482
  %166 = icmp ult i8* %163, %165, !dbg !1891
  br i1 %166, label %169, label %167, !dbg !1891, !prof !1483, !misexpect !1484

167:                                              ; preds = %160
  %168 = tail call i32 @__overflow(%struct._IO_FILE* %161, i32 9) #19, !dbg !1891
  br label %266, !dbg !1891

169:                                              ; preds = %160
  %170 = getelementptr inbounds i8, i8* %163, i64 1, !dbg !1891
  store i8* %170, i8** %162, align 8, !dbg !1891, !tbaa !1477
  store i8 9, i8* %163, align 1, !dbg !1891, !tbaa !1459
  br label %266, !dbg !1891

171:                                              ; preds = %91
  call void @llvm.dbg.value(metadata i32 11, metadata !1467, metadata !DIExpression()) #19, !dbg !1892
  %172 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1894, !tbaa !1263
  %173 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %172, i64 0, i32 5, !dbg !1894
  %174 = load i8*, i8** %173, align 8, !dbg !1894, !tbaa !1477
  %175 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %172, i64 0, i32 6, !dbg !1894
  %176 = load i8*, i8** %175, align 8, !dbg !1894, !tbaa !1482
  %177 = icmp ult i8* %174, %176, !dbg !1894
  br i1 %177, label %180, label %178, !dbg !1894, !prof !1483, !misexpect !1484

178:                                              ; preds = %171
  %179 = tail call i32 @__overflow(%struct._IO_FILE* %172, i32 11) #19, !dbg !1894
  br label %266, !dbg !1894

180:                                              ; preds = %171
  %181 = getelementptr inbounds i8, i8* %174, i64 1, !dbg !1894
  store i8* %181, i8** %173, align 8, !dbg !1894, !tbaa !1477
  store i8 11, i8* %174, align 1, !dbg !1894, !tbaa !1459
  br label %266, !dbg !1894

182:                                              ; preds = %91
  call void @llvm.dbg.value(metadata i32 %88, metadata !1467, metadata !DIExpression()) #19, !dbg !1895
  %183 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1897, !tbaa !1263
  %184 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %183, i64 0, i32 5, !dbg !1897
  %185 = load i8*, i8** %184, align 8, !dbg !1897, !tbaa !1477
  %186 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %183, i64 0, i32 6, !dbg !1897
  %187 = load i8*, i8** %186, align 8, !dbg !1897, !tbaa !1482
  %188 = icmp ult i8* %185, %187, !dbg !1897
  br i1 %188, label %192, label %189, !dbg !1897, !prof !1483, !misexpect !1484

189:                                              ; preds = %182
  %190 = and i32 %88, 255, !dbg !1897
  %191 = tail call i32 @__overflow(%struct._IO_FILE* %183, i32 %190) #19, !dbg !1897
  br label %266, !dbg !1897

192:                                              ; preds = %182
  %193 = getelementptr inbounds i8, i8* %185, i64 1, !dbg !1897
  store i8* %193, i8** %184, align 8, !dbg !1897, !tbaa !1477
  store i8 %4, i8* %185, align 1, !dbg !1897, !tbaa !1459
  br label %266, !dbg !1897

194:                                              ; preds = %87
  switch i8 %4, label %238 [
    i8 117, label %195
    i8 85, label %195
  ], !dbg !1898

195:                                              ; preds = %194, %194
  call void @llvm.dbg.value(metadata i8 %4, metadata !1812, metadata !DIExpression()), !dbg !1899
  call void @llvm.dbg.value(metadata i32 0, metadata !1818, metadata !DIExpression()), !dbg !1899
  %196 = zext i8 %4 to i32, !dbg !1900
  %197 = icmp eq i8 %4, 117, !dbg !1902
  %198 = select i1 %197, i32 4, i32 8, !dbg !1900
  call void @llvm.dbg.value(metadata i32 %198, metadata !1811, metadata !DIExpression()), !dbg !1819
  %199 = getelementptr inbounds i8, i8* %0, i64 2, !dbg !1903
  call void @llvm.dbg.value(metadata i8* %199, metadata !1809, metadata !DIExpression()), !dbg !1819
  call void @llvm.dbg.value(metadata i32 0, metadata !1818, metadata !DIExpression()), !dbg !1899
  call void @llvm.dbg.value(metadata i32 %198, metadata !1811, metadata !DIExpression()), !dbg !1819
  %200 = tail call i16** @__ctype_b_loc() #24, !dbg !1904
  %201 = load i16*, i16** %200, align 8, !dbg !1904, !tbaa !1263
  br label %202, !dbg !1908

202:                                              ; preds = %195, %214
  %203 = phi i32 [ 0, %195 ], [ %224, %214 ]
  %204 = phi i8* [ %199, %195 ], [ %226, %214 ]
  %205 = phi i32 [ %198, %195 ], [ %225, %214 ]
  call void @llvm.dbg.value(metadata i32 %203, metadata !1818, metadata !DIExpression()), !dbg !1899
  call void @llvm.dbg.value(metadata i8* %204, metadata !1809, metadata !DIExpression()), !dbg !1819
  call void @llvm.dbg.value(metadata i32 %205, metadata !1811, metadata !DIExpression()), !dbg !1819
  %206 = load i8, i8* %204, align 1, !dbg !1909, !tbaa !1459
  %207 = zext i8 %206 to i64, !dbg !1909
  %208 = getelementptr inbounds i16, i16* %201, i64 %207, !dbg !1909
  %209 = load i16, i16* %208, align 2, !dbg !1909, !tbaa !1831
  %210 = and i16 %209, 4096, !dbg !1909
  %211 = icmp eq i16 %210, 0, !dbg !1909
  br i1 %211, label %212, label %214, !dbg !1910

212:                                              ; preds = %202
  %213 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.46, i64 0, i64 0), i32 5) #19, !dbg !1911
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %213) #19, !dbg !1911
  unreachable, !dbg !1911

214:                                              ; preds = %202
  %215 = shl i32 %203, 4, !dbg !1912
  %216 = sext i8 %206 to i32, !dbg !1913
  %217 = add i8 %206, -97, !dbg !1913
  %218 = icmp ult i8 %217, 6, !dbg !1913
  %219 = add i8 %206, -65, !dbg !1913
  %220 = icmp ult i8 %219, 6, !dbg !1913
  %221 = select i1 %220, i32 -55, i32 -48, !dbg !1913
  %222 = select i1 %218, i32 -87, i32 %221, !dbg !1913
  %223 = add nsw i32 %222, %216, !dbg !1913
  %224 = add i32 %223, %215, !dbg !1914
  call void @llvm.dbg.value(metadata i32 %224, metadata !1818, metadata !DIExpression()), !dbg !1899
  %225 = add nsw i32 %205, -1, !dbg !1915
  call void @llvm.dbg.value(metadata i32 %225, metadata !1811, metadata !DIExpression()), !dbg !1819
  %226 = getelementptr inbounds i8, i8* %204, i64 1, !dbg !1916
  call void @llvm.dbg.value(metadata i8* %226, metadata !1809, metadata !DIExpression()), !dbg !1819
  %227 = icmp sgt i32 %205, 1, !dbg !1917
  br i1 %227, label %202, label %228, !dbg !1908, !llvm.loop !1918

228:                                              ; preds = %214
  call void @llvm.dbg.value(metadata i8* %226, metadata !1809, metadata !DIExpression()), !dbg !1819
  call void @llvm.dbg.value(metadata i32 %224, metadata !1818, metadata !DIExpression()), !dbg !1899
  %229 = icmp ult i32 %224, 160, !dbg !1920
  br i1 %229, label %230, label %231, !dbg !1922

230:                                              ; preds = %228
  switch i32 %224, label %234 [
    i32 96, label %231
    i32 64, label %231
    i32 36, label %231
  ], !dbg !1922

231:                                              ; preds = %230, %230, %230, %228
  %232 = and i32 %224, -2048, !dbg !1923
  %233 = icmp eq i32 %232, 55296, !dbg !1923
  br i1 %233, label %234, label %236, !dbg !1923

234:                                              ; preds = %230, %231
  %235 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.48, i64 0, i64 0), i32 5) #19, !dbg !1924
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %235, i32 %196, i32 %198, i32 %224) #19, !dbg !1924
  unreachable, !dbg !1924

236:                                              ; preds = %231
  %237 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1925, !tbaa !1263
  tail call void @print_unicode_char(%struct._IO_FILE* %237, i32 %224, i32 0) #19, !dbg !1926
  br label %266, !dbg !1927

238:                                              ; preds = %85, %194
  call void @llvm.dbg.value(metadata i32 92, metadata !1467, metadata !DIExpression()) #19, !dbg !1928
  %239 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1931, !tbaa !1263
  %240 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %239, i64 0, i32 5, !dbg !1931
  %241 = load i8*, i8** %240, align 8, !dbg !1931, !tbaa !1477
  %242 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %239, i64 0, i32 6, !dbg !1931
  %243 = load i8*, i8** %242, align 8, !dbg !1931, !tbaa !1482
  %244 = icmp ult i8* %241, %243, !dbg !1931
  br i1 %244, label %247, label %245, !dbg !1931, !prof !1483, !misexpect !1484

245:                                              ; preds = %238
  %246 = tail call i32 @__overflow(%struct._IO_FILE* %239, i32 92) #19, !dbg !1931
  br label %249, !dbg !1931

247:                                              ; preds = %238
  %248 = getelementptr inbounds i8, i8* %241, i64 1, !dbg !1931
  store i8* %248, i8** %240, align 8, !dbg !1931, !tbaa !1477
  store i8 92, i8* %241, align 1, !dbg !1931, !tbaa !1459
  br label %249, !dbg !1931

249:                                              ; preds = %245, %247
  %250 = load i8, i8* %3, align 1, !dbg !1932, !tbaa !1459
  %251 = icmp eq i8 %250, 0, !dbg !1932
  br i1 %251, label %266, label %252, !dbg !1934

252:                                              ; preds = %249
  call void @llvm.dbg.value(metadata i8 %250, metadata !1467, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)) #19, !dbg !1935
  %253 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1938, !tbaa !1263
  %254 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %253, i64 0, i32 5, !dbg !1938
  %255 = load i8*, i8** %254, align 8, !dbg !1938, !tbaa !1477
  %256 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %253, i64 0, i32 6, !dbg !1938
  %257 = load i8*, i8** %256, align 8, !dbg !1938, !tbaa !1482
  %258 = icmp ult i8* %255, %257, !dbg !1938
  br i1 %258, label %262, label %259, !dbg !1938, !prof !1483, !misexpect !1484

259:                                              ; preds = %252
  %260 = zext i8 %250 to i32, !dbg !1939
  call void @llvm.dbg.value(metadata i8 %250, metadata !1467, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)) #19, !dbg !1935
  %261 = tail call i32 @__overflow(%struct._IO_FILE* %253, i32 %260) #19, !dbg !1938
  br label %264, !dbg !1938

262:                                              ; preds = %252
  %263 = getelementptr inbounds i8, i8* %255, i64 1, !dbg !1938
  store i8* %263, i8** %254, align 8, !dbg !1938, !tbaa !1477
  store i8 %250, i8* %255, align 1, !dbg !1938, !tbaa !1459
  br label %264, !dbg !1938

264:                                              ; preds = %259, %262
  %265 = getelementptr inbounds i8, i8* %0, i64 2, !dbg !1940
  call void @llvm.dbg.value(metadata i8* %265, metadata !1809, metadata !DIExpression()), !dbg !1819
  br label %266, !dbg !1941

266:                                              ; preds = %192, %189, %180, %178, %169, %167, %158, %156, %147, %145, %136, %134, %125, %123, %113, %111, %102, %100, %82, %79, %47, %44, %249, %236, %264
  %267 = phi i8* [ %226, %236 ], [ %265, %264 ], [ %3, %249 ], [ %37, %44 ], [ %37, %47 ], [ %72, %79 ], [ %72, %82 ], [ %92, %100 ], [ %92, %102 ], [ %92, %111 ], [ %92, %113 ], [ %92, %123 ], [ %92, %125 ], [ %92, %134 ], [ %92, %136 ], [ %92, %145 ], [ %92, %147 ], [ %92, %156 ], [ %92, %158 ], [ %92, %167 ], [ %92, %169 ], [ %92, %178 ], [ %92, %180 ], [ %92, %189 ], [ %92, %192 ], !dbg !1819
  call void @llvm.dbg.value(metadata i8* %267, metadata !1809, metadata !DIExpression()), !dbg !1819
  %268 = ptrtoint i8* %267 to i64, !dbg !1942
  %269 = ptrtoint i8* %0 to i64, !dbg !1942
  %270 = xor i64 %269, 4294967295, !dbg !1943
  %271 = add i64 %270, %268, !dbg !1943
  %272 = trunc i64 %271 to i32, !dbg !1944
  ret i32 %272, !dbg !1945

273:                                              ; preds = %17
  %274 = shl nsw i32 %25, 4, !dbg !1946
  %275 = sext i8 %27 to i32, !dbg !1833
  %276 = add i8 %27, -97, !dbg !1833
  %277 = icmp ult i8 %276, 6, !dbg !1833
  %278 = add i8 %27, -65, !dbg !1833
  %279 = icmp ult i8 %278, 6, !dbg !1833
  %280 = select i1 %279, i32 -55, i32 -48, !dbg !1833
  %281 = select i1 %277, i32 -87, i32 %280, !dbg !1833
  %282 = add nsw i32 %281, %275, !dbg !1833
  %283 = add nsw i32 %282, %274, !dbg !1947
  call void @llvm.dbg.value(metadata i32 %283, metadata !1810, metadata !DIExpression()), !dbg !1819
  call void @llvm.dbg.value(metadata i32 2, metadata !1811, metadata !DIExpression()), !dbg !1819
  br label %35, !dbg !1839

284:                                              ; preds = %63
  %285 = shl nsw i32 %65, 3, !dbg !1948
  %286 = sext i8 %67 to i32, !dbg !1849
  %287 = add nsw i32 %285, -48, !dbg !1849
  %288 = add nsw i32 %287, %286, !dbg !1850
  call void @llvm.dbg.value(metadata i32 %288, metadata !1810, metadata !DIExpression()), !dbg !1819
  call void @llvm.dbg.value(metadata i32 2, metadata !1811, metadata !DIExpression()), !dbg !1819
  %289 = getelementptr inbounds i8, i8* %66, i64 1, !dbg !1851
  call void @llvm.dbg.value(metadata i8* %289, metadata !1809, metadata !DIExpression()), !dbg !1819
  %290 = load i8, i8* %289, align 1, !dbg !1847, !tbaa !1459
  %291 = and i8 %290, -8, !dbg !1847
  %292 = icmp eq i8 %291, 48, !dbg !1847
  br i1 %292, label %293, label %70, !dbg !1848

293:                                              ; preds = %284
  %294 = shl nsw i32 %288, 3, !dbg !1948
  %295 = sext i8 %290 to i32, !dbg !1849
  %296 = add nsw i32 %294, -48, !dbg !1849
  %297 = add i32 %296, %295, !dbg !1850
  call void @llvm.dbg.value(metadata i32 %297, metadata !1810, metadata !DIExpression()), !dbg !1819
  call void @llvm.dbg.value(metadata i32 3, metadata !1811, metadata !DIExpression()), !dbg !1819
  br label %70
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @vstrtoimax(i8* %0) unnamed_addr #8 !dbg !1949 {
  %2 = alloca i8*, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !1953, metadata !DIExpression()), !dbg !1959
  %3 = bitcast i8** %2 to i8*, !dbg !1960
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #19, !dbg !1960
  %4 = load i8, i8* %0, align 1, !dbg !1961, !tbaa !1459
  switch i8 %4, label %19 [
    i8 34, label %5
    i8 39, label %5
  ], !dbg !1961

5:                                                ; preds = %1, %1
  %6 = getelementptr inbounds i8, i8* %0, i64 1, !dbg !1961
  %7 = load i8, i8* %6, align 1, !dbg !1961, !tbaa !1459
  %8 = icmp eq i8 %7, 0, !dbg !1961
  br i1 %8, label %19, label %9, !dbg !1960

9:                                                ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !1953, metadata !DIExpression()), !dbg !1959
  call void @llvm.dbg.value(metadata i8 %7, metadata !1956, metadata !DIExpression()), !dbg !1962
  %10 = zext i8 %7 to i64, !dbg !1963
  call void @llvm.dbg.value(metadata i64 %10, metadata !1955, metadata !DIExpression()), !dbg !1959
  %11 = getelementptr inbounds i8, i8* %0, i64 2, !dbg !1964
  call void @llvm.dbg.value(metadata i8* %11, metadata !1953, metadata !DIExpression()), !dbg !1959
  %12 = load i8, i8* %11, align 1, !dbg !1964, !tbaa !1459
  %13 = icmp ne i8 %12, 0, !dbg !1964
  %14 = load i8, i8* @posixly_correct, align 1, !dbg !1964
  %15 = icmp eq i8 %14, 0, !dbg !1964
  %16 = and i1 %13, %15, !dbg !1964
  br i1 %16, label %17, label %23, !dbg !1964

17:                                               ; preds = %9
  %18 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.40, i64 0, i64 0), i32 5) #19, !dbg !1964
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %18, i8* nonnull %11) #19, !dbg !1964
  br label %23, !dbg !1964

19:                                               ; preds = %1, %5
  %20 = tail call i32* @__errno_location() #24, !dbg !1966
  store i32 0, i32* %20, align 4, !dbg !1966, !tbaa !1707
  call void @llvm.dbg.value(metadata i8** %2, metadata !1954, metadata !DIExpression(DW_OP_deref)), !dbg !1959
  call void @llvm.dbg.value(metadata i8* %0, metadata !1968, metadata !DIExpression()) #19, !dbg !1975
  call void @llvm.dbg.value(metadata i8** %2, metadata !1973, metadata !DIExpression()) #19, !dbg !1975
  call void @llvm.dbg.value(metadata i32 0, metadata !1974, metadata !DIExpression()) #19, !dbg !1975
  %21 = call i64 @__strtol_internal(i8* nonnull %0, i8** nonnull %2, i32 0, i32 0) #19, !dbg !1977
  call void @llvm.dbg.value(metadata i64 %21, metadata !1955, metadata !DIExpression()), !dbg !1959
  %22 = load i8*, i8** %2, align 8, !dbg !1966, !tbaa !1263
  call void @llvm.dbg.value(metadata i8* %22, metadata !1954, metadata !DIExpression()), !dbg !1959
  call fastcc void @verify_numeric(i8* nonnull %0, i8* %22), !dbg !1966
  br label %23

23:                                               ; preds = %17, %9, %19
  %24 = phi i64 [ %21, %19 ], [ %10, %9 ], [ %10, %17 ], !dbg !1978
  call void @llvm.dbg.value(metadata i64 %24, metadata !1955, metadata !DIExpression()), !dbg !1959
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #19, !dbg !1960
  ret i64 %24, !dbg !1960
}

; Function Attrs: nounwind
declare i8* @__mempcpy_chk(i8*, i8*, i64, i64) local_unnamed_addr #2

; Function Attrs: nounwind readnone
declare i32* @__errno_location() local_unnamed_addr #9

; Function Attrs: nounwind
declare i64 @__strtoul_internal(i8*, i8**, i32, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @verify_numeric(i8* %0, i8* readonly %1) unnamed_addr #8 !dbg !1979 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1983, metadata !DIExpression()), !dbg !1985
  call void @llvm.dbg.value(metadata i8* %1, metadata !1984, metadata !DIExpression()), !dbg !1985
  %3 = tail call i32* @__errno_location() #24, !dbg !1986
  %4 = load i32, i32* %3, align 4, !dbg !1986, !tbaa !1707
  %5 = icmp eq i32 %4, 0, !dbg !1986
  br i1 %5, label %8, label %6, !dbg !1988

6:                                                ; preds = %2
  %7 = tail call i8* @quote(i8* %0) #19, !dbg !1989
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.41, i64 0, i64 0), i8* %7) #19, !dbg !1991
  br label %16, !dbg !1992

8:                                                ; preds = %2
  %9 = load i8, i8* %1, align 1, !dbg !1993, !tbaa !1459
  %10 = icmp eq i8 %9, 0, !dbg !1993
  br i1 %10, label %17, label %11, !dbg !1995

11:                                               ; preds = %8
  %12 = icmp eq i8* %0, %1, !dbg !1996
  %13 = select i1 %12, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.42, i64 0, i64 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.43, i64 0, i64 0), !dbg !1999
  %14 = tail call i8* @dcgettext(i8* null, i8* %13, i32 5) #19, !dbg !2000
  %15 = tail call i8* @quote(i8* %0) #19, !dbg !2000
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %14, i8* %15) #19, !dbg !2000
  br label %16, !dbg !2001

16:                                               ; preds = %6, %11
  store i1 true, i1* @exit_status, align 4, !dbg !2002
  br label %17, !dbg !2003

17:                                               ; preds = %16, %8
  ret void, !dbg !2003
}

; Function Attrs: nounwind
declare !dbg !153 void @free(i8* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind
declare i64 @__strtol_internal(i8*, i8**, i32, i32) local_unnamed_addr #2

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() local_unnamed_addr #9

; Function Attrs: nofree nounwind readonly
declare i8* @memchr(i8*, i32, i64) local_unnamed_addr #10

; Function Attrs: nounwind sspstrong uwtable
define dso_local x86_fp80 @cl_strtold(i8* %0, i8** noalias %1) local_unnamed_addr #8 !dbg !2004 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2009, metadata !DIExpression()), !dbg !2018
  call void @llvm.dbg.value(metadata i8** %1, metadata !2010, metadata !DIExpression()), !dbg !2018
  %5 = bitcast i8** %3 to i8*, !dbg !2019
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #19, !dbg !2019
  call void @llvm.dbg.value(metadata i8** %3, metadata !2011, metadata !DIExpression(DW_OP_deref)), !dbg !2018
  %6 = call x86_fp80 @strtold(i8* %0, i8** nonnull %3) #19, !dbg !2020
  call void @llvm.dbg.value(metadata x86_fp80 %6, metadata !2012, metadata !DIExpression()), !dbg !2018
  %7 = load i8*, i8** %3, align 8, !dbg !2021, !tbaa !1263
  call void @llvm.dbg.value(metadata i8* %7, metadata !2011, metadata !DIExpression()), !dbg !2018
  %8 = load i8, i8* %7, align 1, !dbg !2022, !tbaa !1459
  %9 = icmp eq i8 %8, 0, !dbg !2022
  %10 = ptrtoint i8* %7 to i64, !dbg !2023
  br i1 %9, label %24, label %11, !dbg !2023

11:                                               ; preds = %2
  %12 = tail call i32* @__errno_location() #24, !dbg !2024
  %13 = load i32, i32* %12, align 4, !dbg !2024, !tbaa !1707
  call void @llvm.dbg.value(metadata i32 %13, metadata !2013, metadata !DIExpression()), !dbg !2025
  %14 = bitcast i8** %4 to i8*, !dbg !2026
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %14) #19, !dbg !2026
  call void @llvm.dbg.value(metadata i8** %4, metadata !2016, metadata !DIExpression(DW_OP_deref)), !dbg !2025
  %15 = call x86_fp80 @c_strtold(i8* %0, i8** nonnull %4) #19, !dbg !2027
  call void @llvm.dbg.value(metadata x86_fp80 %15, metadata !2017, metadata !DIExpression()), !dbg !2025
  call void @llvm.dbg.value(metadata i8* %7, metadata !2011, metadata !DIExpression()), !dbg !2018
  %16 = load i8*, i8** %4, align 8, !dbg !2028, !tbaa !1263
  call void @llvm.dbg.value(metadata i8* %16, metadata !2016, metadata !DIExpression()), !dbg !2025
  %17 = icmp ult i8* %7, %16, !dbg !2030
  br i1 %17, label %18, label %20, !dbg !2031

18:                                               ; preds = %11
  call void @llvm.dbg.value(metadata x86_fp80 %15, metadata !2012, metadata !DIExpression()), !dbg !2018
  call void @llvm.dbg.value(metadata i8* %16, metadata !2011, metadata !DIExpression()), !dbg !2018
  store i8* %16, i8** %3, align 8, !dbg !2032, !tbaa !1263
  %19 = ptrtoint i8* %16 to i64, !dbg !2033
  br label %21, !dbg !2033

20:                                               ; preds = %11
  store i32 %13, i32* %12, align 4, !dbg !2034, !tbaa !1707
  br label %21

21:                                               ; preds = %20, %18
  %22 = phi i64 [ %19, %18 ], [ %10, %20 ]
  %23 = phi x86_fp80 [ %15, %18 ], [ %6, %20 ], !dbg !2018
  call void @llvm.dbg.value(metadata x86_fp80 %23, metadata !2012, metadata !DIExpression()), !dbg !2018
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %14) #19, !dbg !2035
  br label %24, !dbg !2036

24:                                               ; preds = %2, %21
  %25 = phi i64 [ %22, %21 ], [ %10, %2 ]
  %26 = phi x86_fp80 [ %23, %21 ], [ %6, %2 ], !dbg !2018
  call void @llvm.dbg.value(metadata x86_fp80 %26, metadata !2012, metadata !DIExpression()), !dbg !2018
  %27 = icmp eq i8** %1, null, !dbg !2037
  br i1 %27, label %30, label %28, !dbg !2039

28:                                               ; preds = %24
  call void @llvm.dbg.value(metadata i8* undef, metadata !2011, metadata !DIExpression()), !dbg !2018
  %29 = bitcast i8** %1 to i64*, !dbg !2040
  store i64 %25, i64* %29, align 8, !dbg !2040, !tbaa !1263
  br label %30, !dbg !2041

30:                                               ; preds = %24, %28
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #19, !dbg !2042
  ret x86_fp80 %26, !dbg !2043
}

; Function Attrs: nofree nounwind
declare x86_fp80 @strtold(i8* readonly, i8** nocapture) local_unnamed_addr #4

; Function Attrs: nofree norecurse nounwind sspstrong uwtable writeonly
define dso_local void @close_stdout_set_file_name(i8* %0) local_unnamed_addr #11 !dbg !2044 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2046, metadata !DIExpression()), !dbg !2047
  store i8* %0, i8** @file_name, align 8, !dbg !2048, !tbaa !1263
  ret void, !dbg !2049
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable writeonly
define dso_local void @close_stdout_set_ignore_EPIPE(i1 zeroext %0) local_unnamed_addr #11 !dbg !2050 {
  %2 = zext i1 %0 to i8
  call void @llvm.dbg.value(metadata i8 %2, metadata !2054, metadata !DIExpression()), !dbg !2055
  store i8 %2, i8* @ignore_EPIPE, align 1, !dbg !2056, !tbaa !1367
  ret void, !dbg !2057
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @close_stdout() #8 !dbg !2058 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2063, !tbaa !1263
  %2 = tail call i32 @close_stream(%struct._IO_FILE* %1) #19, !dbg !2064
  %3 = icmp eq i32 %2, 0, !dbg !2065
  br i1 %3, label %22, label %4, !dbg !2066

4:                                                ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 1, !dbg !2067, !tbaa !1367, !range !2068
  %6 = icmp eq i8 %5, 0, !dbg !2067
  br i1 %6, label %11, label %7, !dbg !2069

7:                                                ; preds = %4
  %8 = tail call i32* @__errno_location() #24, !dbg !2070
  %9 = load i32, i32* %8, align 4, !dbg !2070, !tbaa !1707
  %10 = icmp eq i32 %9, 32, !dbg !2071
  br i1 %10, label %22, label %11, !dbg !2072

11:                                               ; preds = %4, %7
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.54, i64 0, i64 0), i32 5) #19, !dbg !2073
  call void @llvm.dbg.value(metadata i8* %12, metadata !2060, metadata !DIExpression()), !dbg !2074
  %13 = load i8*, i8** @file_name, align 8, !dbg !2075, !tbaa !1263
  %14 = icmp eq i8* %13, null, !dbg !2075
  %15 = tail call i32* @__errno_location() #24, !dbg !2077
  %16 = load i32, i32* %15, align 4, !dbg !2077, !tbaa !1707
  br i1 %14, label %19, label %17, !dbg !2078

17:                                               ; preds = %11
  %18 = tail call i8* @quotearg_colon(i8* nonnull %13) #19, !dbg !2079
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.55, i64 0, i64 0), i8* %18, i8* %12) #19, !dbg !2080
  br label %20, !dbg !2080

19:                                               ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.56, i64 0, i64 0), i8* %12) #19, !dbg !2081
  br label %20

20:                                               ; preds = %19, %17
  %21 = load volatile i32, i32* @exit_failure, align 4, !dbg !2082, !tbaa !1707
  tail call void @_exit(i32 %21) #22, !dbg !2083
  unreachable, !dbg !2083

22:                                               ; preds = %0, %7
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2084, !tbaa !1263
  %24 = tail call i32 @close_stream(%struct._IO_FILE* %23) #19, !dbg !2086
  %25 = icmp eq i32 %24, 0, !dbg !2087
  br i1 %25, label %28, label %26, !dbg !2088

26:                                               ; preds = %22
  %27 = load volatile i32, i32* @exit_failure, align 4, !dbg !2089, !tbaa !1707
  tail call void @_exit(i32 %27) #22, !dbg !2090
  unreachable, !dbg !2090

28:                                               ; preds = %22
  ret void, !dbg !2091
}

; Function Attrs: noreturn
declare void @_exit(i32) local_unnamed_addr #12

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_program_name(i8* %0) local_unnamed_addr #8 !dbg !2092 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2094, metadata !DIExpression()), !dbg !2097
  %2 = icmp eq i8* %0, null, !dbg !2098
  br i1 %2, label %3, label %6, !dbg !2100

3:                                                ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2101, !tbaa !1263
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.63, i64 0, i64 0), i64 55, i64 1, %struct._IO_FILE* %4) #25, !dbg !2103
  tail call void @abort() #22, !dbg !2104
  unreachable, !dbg !2104

6:                                                ; preds = %1
  %7 = tail call i8* @strrchr(i8* nonnull %0, i32 47) #21, !dbg !2105
  call void @llvm.dbg.value(metadata i8* %7, metadata !2095, metadata !DIExpression()), !dbg !2097
  %8 = icmp eq i8* %7, null, !dbg !2106
  %9 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !2107
  %10 = select i1 %8, i8* %0, i8* %9, !dbg !2107
  call void @llvm.dbg.value(metadata i8* %10, metadata !2096, metadata !DIExpression()), !dbg !2097
  %11 = ptrtoint i8* %10 to i64, !dbg !2108
  %12 = ptrtoint i8* %0 to i64, !dbg !2108
  %13 = sub i64 %11, %12, !dbg !2108
  %14 = icmp sgt i64 %13, 6, !dbg !2110
  br i1 %14, label %15, label %24, !dbg !2111

15:                                               ; preds = %6
  %16 = getelementptr inbounds i8, i8* %10, i64 -7, !dbg !2112
  %17 = tail call i32 @strncmp(i8* nonnull %16, i8* nonnull dereferenceable(8) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.64, i64 0, i64 0), i64 7) #21, !dbg !2113
  %18 = icmp eq i32 %17, 0, !dbg !2114
  br i1 %18, label %19, label %24, !dbg !2115

19:                                               ; preds = %15
  call void @llvm.dbg.value(metadata i8* %10, metadata !2094, metadata !DIExpression()), !dbg !2097
  %20 = tail call i32 @strncmp(i8* nonnull %10, i8* nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.65, i64 0, i64 0), i64 3) #21, !dbg !2116
  %21 = icmp eq i32 %20, 0, !dbg !2119
  br i1 %21, label %22, label %24, !dbg !2120

22:                                               ; preds = %19
  %23 = getelementptr inbounds i8, i8* %10, i64 3, !dbg !2121
  call void @llvm.dbg.value(metadata i8* %23, metadata !2094, metadata !DIExpression()), !dbg !2097
  store i8* %23, i8** @program_invocation_short_name, align 8, !dbg !2123, !tbaa !1263
  br label %24, !dbg !2124

24:                                               ; preds = %19, %22, %15, %6
  %25 = phi i8* [ %23, %22 ], [ %10, %19 ], [ %0, %15 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i8* %25, metadata !2094, metadata !DIExpression()), !dbg !2097
  store i8* %25, i8** @program_name, align 8, !dbg !2125, !tbaa !1263
  store i8* %25, i8** @program_invocation_name, align 8, !dbg !2126, !tbaa !1263
  ret void, !dbg !2127
}

; Function Attrs: nofree nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) local_unnamed_addr #13

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #7

; Function Attrs: nofree nounwind readonly
declare i8* @strrchr(i8*, i32) local_unnamed_addr #6

; Function Attrs: nounwind sspstrong uwtable
define dso_local %struct.quoting_options* @clone_quoting_options(%struct.quoting_options* %0) local_unnamed_addr #8 !dbg !2128 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2133, metadata !DIExpression()), !dbg !2136
  %2 = tail call i32* @__errno_location() #24, !dbg !2137
  %3 = load i32, i32* %2, align 4, !dbg !2137, !tbaa !1707
  call void @llvm.dbg.value(metadata i32 %3, metadata !2134, metadata !DIExpression()), !dbg !2136
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !2138
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2138
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2138
  %7 = tail call i8* @xmemdup(i8* %6, i64 56) #19, !dbg !2139
  %8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !2139
  call void @llvm.dbg.value(metadata %struct.quoting_options* %8, metadata !2135, metadata !DIExpression()), !dbg !2136
  store i32 %3, i32* %2, align 4, !dbg !2140, !tbaa !1707
  ret %struct.quoting_options* %8, !dbg !2141
}

; Function Attrs: norecurse nounwind readonly sspstrong uwtable
define dso_local i32 @get_quoting_style(%struct.quoting_options* readonly %0) local_unnamed_addr #14 !dbg !2142 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2146, metadata !DIExpression()), !dbg !2147
  %2 = icmp eq %struct.quoting_options* %0, null, !dbg !2148
  %3 = select i1 %2, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2148
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2149
  %5 = load i32, i32* %4, align 8, !dbg !2149, !tbaa !2150
  ret i32 %5, !dbg !2152
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable writeonly
define dso_local void @set_quoting_style(%struct.quoting_options* %0, i32 %1) local_unnamed_addr #11 !dbg !2153 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2157, metadata !DIExpression()), !dbg !2159
  call void @llvm.dbg.value(metadata i32 %1, metadata !2158, metadata !DIExpression()), !dbg !2159
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !2160
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2160
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2161
  store i32 %1, i32* %5, align 8, !dbg !2162, !tbaa !2150
  ret void, !dbg !2163
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable
define dso_local i32 @set_char_quoting(%struct.quoting_options* %0, i8 signext %1, i32 %2) local_unnamed_addr #15 !dbg !2164 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2168, metadata !DIExpression()), !dbg !2176
  call void @llvm.dbg.value(metadata i8 %1, metadata !2169, metadata !DIExpression()), !dbg !2176
  call void @llvm.dbg.value(metadata i32 %2, metadata !2170, metadata !DIExpression()), !dbg !2176
  call void @llvm.dbg.value(metadata i8 %1, metadata !2171, metadata !DIExpression()), !dbg !2176
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !2177
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2177
  %6 = lshr i8 %1, 5, !dbg !2178
  %7 = zext i8 %6 to i64, !dbg !2178
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !2179
  call void @llvm.dbg.value(metadata i32* %8, metadata !2172, metadata !DIExpression()), !dbg !2176
  %9 = and i8 %1, 31, !dbg !2180
  %10 = zext i8 %9 to i32, !dbg !2180
  call void @llvm.dbg.value(metadata i32 %10, metadata !2174, metadata !DIExpression()), !dbg !2176
  %11 = load i32, i32* %8, align 4, !dbg !2181, !tbaa !1707
  %12 = lshr i32 %11, %10, !dbg !2182
  %13 = and i32 %12, 1, !dbg !2183
  call void @llvm.dbg.value(metadata i32 %13, metadata !2175, metadata !DIExpression()), !dbg !2176
  %14 = and i32 %2, 1, !dbg !2184
  %15 = xor i32 %13, %14, !dbg !2185
  %16 = shl i32 %15, %10, !dbg !2186
  %17 = xor i32 %16, %11, !dbg !2187
  store i32 %17, i32* %8, align 4, !dbg !2187, !tbaa !1707
  ret i32 %13, !dbg !2188
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable
define dso_local i32 @set_quoting_flags(%struct.quoting_options* %0, i32 %1) local_unnamed_addr #15 !dbg !2189 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2193, metadata !DIExpression()), !dbg !2196
  call void @llvm.dbg.value(metadata i32 %1, metadata !2194, metadata !DIExpression()), !dbg !2196
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !2197
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2199
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2193, metadata !DIExpression()), !dbg !2196
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !2200
  %6 = load i32, i32* %5, align 4, !dbg !2200, !tbaa !2201
  call void @llvm.dbg.value(metadata i32 %6, metadata !2195, metadata !DIExpression()), !dbg !2196
  store i32 %1, i32* %5, align 4, !dbg !2202, !tbaa !2201
  ret i32 %6, !dbg !2203
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_custom_quoting(%struct.quoting_options* %0, i8* %1, i8* %2) local_unnamed_addr #8 !dbg !2204 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2208, metadata !DIExpression()), !dbg !2211
  call void @llvm.dbg.value(metadata i8* %1, metadata !2209, metadata !DIExpression()), !dbg !2211
  call void @llvm.dbg.value(metadata i8* %2, metadata !2210, metadata !DIExpression()), !dbg !2211
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !2212
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2214
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2208, metadata !DIExpression()), !dbg !2211
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2215
  store i32 10, i32* %6, align 8, !dbg !2216, !tbaa !2150
  %7 = icmp ne i8* %1, null, !dbg !2217
  %8 = icmp ne i8* %2, null, !dbg !2219
  %9 = and i1 %7, %8, !dbg !2220
  br i1 %9, label %11, label %10, !dbg !2220

10:                                               ; preds = %3
  tail call void @abort() #22, !dbg !2221
  unreachable, !dbg !2221

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2222
  store i8* %1, i8** %12, align 8, !dbg !2223, !tbaa !2224
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2225
  store i8* %2, i8** %13, align 8, !dbg !2226, !tbaa !2227
  ret void, !dbg !2228
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @quotearg_buffer(i8* %0, i64 %1, i8* %2, i64 %3, %struct.quoting_options* readonly %4) local_unnamed_addr #8 !dbg !2229 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2233, metadata !DIExpression()), !dbg !2241
  call void @llvm.dbg.value(metadata i64 %1, metadata !2234, metadata !DIExpression()), !dbg !2241
  call void @llvm.dbg.value(metadata i8* %2, metadata !2235, metadata !DIExpression()), !dbg !2241
  call void @llvm.dbg.value(metadata i64 %3, metadata !2236, metadata !DIExpression()), !dbg !2241
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2237, metadata !DIExpression()), !dbg !2241
  %6 = icmp eq %struct.quoting_options* %4, null, !dbg !2242
  %7 = select i1 %6, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %4, !dbg !2242
  call void @llvm.dbg.value(metadata %struct.quoting_options* %7, metadata !2238, metadata !DIExpression()), !dbg !2241
  %8 = tail call i32* @__errno_location() #24, !dbg !2243
  %9 = load i32, i32* %8, align 4, !dbg !2243, !tbaa !1707
  call void @llvm.dbg.value(metadata i32 %9, metadata !2239, metadata !DIExpression()), !dbg !2241
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !2244
  %11 = load i32, i32* %10, align 8, !dbg !2244, !tbaa !2150
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !2245
  %13 = load i32, i32* %12, align 4, !dbg !2245, !tbaa !2201
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !2246
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !2247
  %16 = load i8*, i8** %15, align 8, !dbg !2247, !tbaa !2224
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !2248
  %18 = load i8*, i8** %17, align 8, !dbg !2248, !tbaa !2227
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %11, i32 %13, i32* nonnull %14, i8* %16, i8* %18), !dbg !2249
  call void @llvm.dbg.value(metadata i64 %19, metadata !2240, metadata !DIExpression()), !dbg !2241
  store i32 %9, i32* %8, align 4, !dbg !2250, !tbaa !1707
  ret i64 %19, !dbg !2251
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %4, i32 %5, i32* readonly %6, i8* readonly %7, i8* readonly %8) unnamed_addr #8 !dbg !2252 {
  %10 = alloca i64, align 8
  %11 = bitcast i64* %10 to %struct.__mbstate_t*
  %12 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !2258, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i64 %1, metadata !2259, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i8* %2, metadata !2260, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i64 %3, metadata !2261, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i32 %4, metadata !2262, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i32 %5, metadata !2263, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i32* %6, metadata !2264, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i8* %7, metadata !2265, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i8* %8, metadata !2266, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i64 0, metadata !2268, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i64 0, metadata !2269, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i8* null, metadata !2270, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i64 0, metadata !2271, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i8 0, metadata !2272, metadata !DIExpression()), !dbg !2316
  %13 = tail call i64 @__ctype_get_mb_cur_max() #19, !dbg !2317
  %14 = icmp eq i64 %13, 1, !dbg !2318
  call void @llvm.dbg.value(metadata i1 %14, metadata !2273, metadata !DIExpression()), !dbg !2316
  %15 = lshr i32 %5, 1, !dbg !2319
  %16 = trunc i32 %15 to i8, !dbg !2319
  %17 = and i8 %16, 1, !dbg !2319
  call void @llvm.dbg.value(metadata i8 %17, metadata !2274, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i8 0, metadata !2275, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i8 0, metadata !2276, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i8 1, metadata !2277, metadata !DIExpression()), !dbg !2316
  %18 = getelementptr inbounds i8, i8* %2, i64 1, !dbg !2320
  %19 = and i32 %5, 4, !dbg !2322
  %20 = icmp eq i32 %19, 0, !dbg !2322
  %21 = and i32 %5, 1, !dbg !2325
  %22 = icmp eq i32 %21, 0, !dbg !2325
  %23 = bitcast i64* %10 to i8*, !dbg !2328
  %24 = bitcast i32* %12 to i8*, !dbg !2329
  %25 = icmp eq i32* %6, null, !dbg !2330
  br label %26, !dbg !2332

26:                                               ; preds = %598, %9
  %27 = phi i32 [ %4, %9 ], [ 2, %598 ]
  %28 = phi i8* [ %7, %9 ], [ %94, %598 ]
  %29 = phi i8* [ %8, %9 ], [ %95, %598 ]
  %30 = phi i64 [ 0, %9 ], [ %125, %598 ], !dbg !2333
  %31 = phi i8* [ null, %9 ], [ %97, %598 ], !dbg !2334
  %32 = phi i64 [ 0, %9 ], [ %98, %598 ], !dbg !2335
  %33 = phi i8 [ 0, %9 ], [ %99, %598 ], !dbg !2336
  %34 = phi i64 [ %3, %9 ], [ %582, %598 ]
  %35 = phi i8 [ %17, %9 ], [ %100, %598 ], !dbg !2316
  %36 = phi i8 [ 0, %9 ], [ %127, %598 ], !dbg !2337
  %37 = phi i8 [ 0, %9 ], [ %128, %598 ], !dbg !2338
  %38 = phi i8 [ 1, %9 ], [ %129, %598 ], !dbg !2339
  %39 = phi i64 [ %1, %9 ], [ %125, %598 ]
  call void @llvm.dbg.value(metadata i64 %39, metadata !2259, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i8 %38, metadata !2277, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i8 %37, metadata !2276, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i8 %36, metadata !2275, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i8 %35, metadata !2274, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i64 %34, metadata !2261, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i8 %33, metadata !2272, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i64 %32, metadata !2271, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i8* %31, metadata !2270, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i64 %30, metadata !2269, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i64 0, metadata !2268, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i8* %29, metadata !2266, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i8* %28, metadata !2265, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i32 %27, metadata !2262, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.label(metadata !2310), !dbg !2340
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
  ], !dbg !2341

40:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i32 5, metadata !2262, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i8 1, metadata !2274, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i8 %35, metadata !2274, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i32 5, metadata !2262, metadata !DIExpression()), !dbg !2316
  br label %92, !dbg !2342

41:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 %35, metadata !2274, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i32 5, metadata !2262, metadata !DIExpression()), !dbg !2316
  %42 = and i8 %35, 1, !dbg !2344
  %43 = icmp eq i8 %42, 0, !dbg !2344
  br i1 %43, label %44, label %92, !dbg !2342

44:                                               ; preds = %41
  %45 = icmp eq i64 %39, 0, !dbg !2346
  br i1 %45, label %92, label %46, !dbg !2349

46:                                               ; preds = %44
  store i8 34, i8* %0, align 1, !dbg !2346, !tbaa !1459
  br label %92, !dbg !2346

47:                                               ; preds = %26, %26
  %48 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.76, i64 0, i64 0), i32 %27), !dbg !2350
  call void @llvm.dbg.value(metadata i8* %48, metadata !2265, metadata !DIExpression()), !dbg !2316
  %49 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.77, i64 0, i64 0), i32 %27), !dbg !2354
  call void @llvm.dbg.value(metadata i8* %49, metadata !2266, metadata !DIExpression()), !dbg !2316
  br label %50, !dbg !2355

50:                                               ; preds = %26, %47
  %51 = phi i8* [ %48, %47 ], [ %28, %26 ]
  %52 = phi i8* [ %49, %47 ], [ %29, %26 ]
  call void @llvm.dbg.value(metadata i8* %52, metadata !2266, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i8* %51, metadata !2265, metadata !DIExpression()), !dbg !2316
  %53 = and i8 %35, 1, !dbg !2356
  %54 = icmp eq i8 %53, 0, !dbg !2356
  br i1 %54, label %55, label %70, !dbg !2358

55:                                               ; preds = %50
  call void @llvm.dbg.value(metadata i8* %51, metadata !2270, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i64 0, metadata !2268, metadata !DIExpression()), !dbg !2316
  %56 = load i8, i8* %51, align 1, !dbg !2359, !tbaa !1459
  %57 = icmp eq i8 %56, 0, !dbg !2362
  br i1 %57, label %70, label %58, !dbg !2362

58:                                               ; preds = %55, %65
  %59 = phi i8 [ %68, %65 ], [ %56, %55 ]
  %60 = phi i8* [ %67, %65 ], [ %51, %55 ]
  %61 = phi i64 [ %66, %65 ], [ 0, %55 ]
  call void @llvm.dbg.value(metadata i8* %60, metadata !2270, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i64 %61, metadata !2268, metadata !DIExpression()), !dbg !2316
  %62 = icmp ult i64 %61, %39, !dbg !2363
  br i1 %62, label %63, label %65, !dbg !2366

63:                                               ; preds = %58
  %64 = getelementptr inbounds i8, i8* %0, i64 %61, !dbg !2363
  store i8 %59, i8* %64, align 1, !dbg !2363, !tbaa !1459
  br label %65, !dbg !2363

65:                                               ; preds = %63, %58
  %66 = add i64 %61, 1, !dbg !2366
  call void @llvm.dbg.value(metadata i64 %66, metadata !2268, metadata !DIExpression()), !dbg !2316
  %67 = getelementptr inbounds i8, i8* %60, i64 1, !dbg !2367
  call void @llvm.dbg.value(metadata i8* %67, metadata !2270, metadata !DIExpression()), !dbg !2316
  %68 = load i8, i8* %67, align 1, !dbg !2359, !tbaa !1459
  %69 = icmp eq i8 %68, 0, !dbg !2362
  br i1 %69, label %70, label %58, !dbg !2362, !llvm.loop !2368

70:                                               ; preds = %65, %55, %50
  %71 = phi i64 [ 0, %50 ], [ 0, %55 ], [ %66, %65 ], !dbg !2370
  call void @llvm.dbg.value(metadata i64 %71, metadata !2268, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i8 1, metadata !2272, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i8* %52, metadata !2270, metadata !DIExpression()), !dbg !2316
  %72 = call i64 @strlen(i8* nonnull dereferenceable(1) %52) #21, !dbg !2371
  call void @llvm.dbg.value(metadata i64 %72, metadata !2271, metadata !DIExpression()), !dbg !2316
  br label %92, !dbg !2372

73:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 1, metadata !2272, metadata !DIExpression()), !dbg !2316
  br label %74, !dbg !2373

74:                                               ; preds = %26, %73
  %75 = phi i8 [ %33, %26 ], [ 1, %73 ], !dbg !2316
  call void @llvm.dbg.value(metadata i8 %75, metadata !2272, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i8 1, metadata !2274, metadata !DIExpression()), !dbg !2316
  br label %76, !dbg !2374

76:                                               ; preds = %26, %74
  %77 = phi i8 [ %33, %26 ], [ %75, %74 ], !dbg !2336
  %78 = phi i8 [ %35, %26 ], [ 1, %74 ], !dbg !2316
  call void @llvm.dbg.value(metadata i8 %78, metadata !2274, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i8 %77, metadata !2272, metadata !DIExpression()), !dbg !2316
  %79 = and i8 %78, 1, !dbg !2375
  %80 = icmp eq i8 %79, 0, !dbg !2375
  %81 = select i1 %80, i8 1, i8 %77, !dbg !2377
  br label %82, !dbg !2377

82:                                               ; preds = %76, %26
  %83 = phi i8 [ %33, %26 ], [ %81, %76 ], !dbg !2316
  %84 = phi i8 [ %35, %26 ], [ %78, %76 ], !dbg !2319
  call void @llvm.dbg.value(metadata i8 %84, metadata !2274, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i8 %83, metadata !2272, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i32 2, metadata !2262, metadata !DIExpression()), !dbg !2316
  %85 = and i8 %84, 1, !dbg !2378
  %86 = icmp eq i8 %85, 0, !dbg !2378
  br i1 %86, label %87, label %92, !dbg !2380

87:                                               ; preds = %82
  %88 = icmp eq i64 %39, 0, !dbg !2381
  br i1 %88, label %92, label %89, !dbg !2384

89:                                               ; preds = %87
  store i8 39, i8* %0, align 1, !dbg !2381, !tbaa !1459
  br label %92, !dbg !2381

90:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 0, metadata !2274, metadata !DIExpression()), !dbg !2316
  br label %92, !dbg !2385

91:                                               ; preds = %26
  call void @abort() #22, !dbg !2386
  unreachable, !dbg !2386

92:                                               ; preds = %40, %82, %87, %89, %26, %41, %44, %46, %90, %70
  %93 = phi i32 [ 0, %90 ], [ %27, %70 ], [ 5, %46 ], [ 5, %44 ], [ 5, %41 ], [ %27, %26 ], [ 2, %89 ], [ 2, %87 ], [ 2, %82 ], [ 5, %40 ]
  %94 = phi i8* [ %28, %90 ], [ %51, %70 ], [ %28, %46 ], [ %28, %44 ], [ %28, %41 ], [ %28, %26 ], [ %28, %89 ], [ %28, %87 ], [ %28, %82 ], [ %28, %40 ]
  %95 = phi i8* [ %29, %90 ], [ %52, %70 ], [ %29, %46 ], [ %29, %44 ], [ %29, %41 ], [ %29, %26 ], [ %29, %89 ], [ %29, %87 ], [ %29, %82 ], [ %29, %40 ]
  %96 = phi i64 [ 0, %90 ], [ %71, %70 ], [ 1, %46 ], [ 1, %44 ], [ 0, %41 ], [ 0, %26 ], [ 1, %89 ], [ 1, %87 ], [ 0, %82 ], [ 0, %40 ], !dbg !2370
  %97 = phi i8* [ %31, %90 ], [ %52, %70 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.78, i64 0, i64 0), %46 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.78, i64 0, i64 0), %44 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.78, i64 0, i64 0), %41 ], [ %31, %26 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.77, i64 0, i64 0), %89 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.77, i64 0, i64 0), %87 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.77, i64 0, i64 0), %82 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.78, i64 0, i64 0), %40 ], !dbg !2316
  %98 = phi i64 [ %32, %90 ], [ %72, %70 ], [ 1, %46 ], [ 1, %44 ], [ 1, %41 ], [ %32, %26 ], [ 1, %89 ], [ 1, %87 ], [ 1, %82 ], [ 1, %40 ], !dbg !2316
  %99 = phi i8 [ %33, %90 ], [ 1, %70 ], [ 1, %46 ], [ 1, %44 ], [ 1, %41 ], [ 1, %26 ], [ %83, %89 ], [ %83, %87 ], [ %83, %82 ], [ 1, %40 ], !dbg !2316
  %100 = phi i8 [ 0, %90 ], [ %35, %70 ], [ %35, %46 ], [ %35, %44 ], [ %35, %41 ], [ 0, %26 ], [ %84, %89 ], [ %84, %87 ], [ %84, %82 ], [ 1, %40 ], !dbg !2316
  call void @llvm.dbg.value(metadata i8 %100, metadata !2274, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i8 %99, metadata !2272, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i64 %98, metadata !2271, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i8* %97, metadata !2270, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i64 %96, metadata !2268, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i8* %95, metadata !2266, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i8* %94, metadata !2265, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i32 %93, metadata !2262, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i64 0, metadata !2267, metadata !DIExpression()), !dbg !2316
  %101 = and i8 %99, 1, !dbg !2387
  %102 = icmp ne i8 %101, 0, !dbg !2387
  %103 = icmp ne i32 %93, 2, !dbg !2387
  %104 = and i1 %103, %102, !dbg !2387
  %105 = icmp ne i64 %98, 0, !dbg !2387
  %106 = and i1 %105, %104, !dbg !2387
  %107 = icmp ugt i64 %98, 1, !dbg !2387
  %108 = and i8 %100, 1, !dbg !2389
  %109 = icmp eq i8 %108, 0, !dbg !2389
  %110 = icmp eq i32 %93, 2, !dbg !2392
  %111 = or i1 %103, %109, !dbg !2394
  %112 = icmp ne i8 %108, 0, !dbg !2396
  %113 = and i1 %110, %112, !dbg !2396
  %114 = xor i1 %102, true, !dbg !2397
  %115 = xor i1 %104, true, !dbg !2330
  %116 = and i1 %109, %115, !dbg !2330
  %117 = or i1 %25, %116, !dbg !2330
  %118 = and i8 %99, %100, !dbg !2398
  %119 = and i8 %118, 1, !dbg !2398
  %120 = icmp ne i8 %119, 0, !dbg !2398
  %121 = and i1 %120, %105, !dbg !2398
  br label %122, !dbg !2400

122:                                              ; preds = %571, %92
  %123 = phi i64 [ 0, %92 ], [ %580, %571 ], !dbg !2401
  %124 = phi i64 [ %96, %92 ], [ %573, %571 ], !dbg !2370
  %125 = phi i64 [ %30, %92 ], [ %574, %571 ], !dbg !2333
  %126 = phi i64 [ %34, %92 ], [ %575, %571 ]
  %127 = phi i8 [ %36, %92 ], [ %576, %571 ], !dbg !2337
  %128 = phi i8 [ %37, %92 ], [ %577, %571 ], !dbg !2338
  %129 = phi i8 [ %38, %92 ], [ %578, %571 ], !dbg !2339
  %130 = phi i64 [ %39, %92 ], [ %579, %571 ]
  call void @llvm.dbg.value(metadata i64 %130, metadata !2259, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i8 %129, metadata !2277, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i8 %128, metadata !2276, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i8 %127, metadata !2275, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i64 %126, metadata !2261, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i64 %125, metadata !2269, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i64 %124, metadata !2268, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i64 %123, metadata !2267, metadata !DIExpression()), !dbg !2316
  %131 = icmp eq i64 %126, -1, !dbg !2402
  br i1 %131, label %132, label %136, !dbg !2403

132:                                              ; preds = %122
  %133 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !2404
  %134 = load i8, i8* %133, align 1, !dbg !2404, !tbaa !1459
  %135 = icmp eq i8 %134, 0, !dbg !2405
  br i1 %135, label %581, label %138, !dbg !2406

136:                                              ; preds = %122
  %137 = icmp eq i64 %123, %126, !dbg !2407
  br i1 %137, label %581, label %138, !dbg !2406

138:                                              ; preds = %132, %136
  call void @llvm.dbg.value(metadata i8 0, metadata !2283, metadata !DIExpression()), !dbg !2408
  call void @llvm.dbg.value(metadata i8 0, metadata !2284, metadata !DIExpression()), !dbg !2408
  call void @llvm.dbg.value(metadata i8 0, metadata !2285, metadata !DIExpression()), !dbg !2408
  br i1 %106, label %139, label %154, !dbg !2409

139:                                              ; preds = %138
  %140 = add i64 %123, %98, !dbg !2410
  %141 = and i1 %107, %131, !dbg !2411
  br i1 %141, label %142, label %144, !dbg !2411

142:                                              ; preds = %139
  %143 = call i64 @strlen(i8* nonnull dereferenceable(1) %2) #21, !dbg !2412
  call void @llvm.dbg.value(metadata i64 %143, metadata !2261, metadata !DIExpression()), !dbg !2316
  br label %144, !dbg !2413

144:                                              ; preds = %139, %142
  %145 = phi i64 [ %143, %142 ], [ %126, %139 ]
  call void @llvm.dbg.value(metadata i64 %145, metadata !2261, metadata !DIExpression()), !dbg !2316
  %146 = icmp ugt i64 %140, %145, !dbg !2414
  br i1 %146, label %154, label %147, !dbg !2415

147:                                              ; preds = %144
  %148 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !2416
  %149 = call i32 @bcmp(i8* %148, i8* %97, i64 %98), !dbg !2417
  %150 = icmp ne i32 %149, 0, !dbg !2418
  %151 = or i1 %150, %109, !dbg !2419
  %152 = xor i1 %150, true, !dbg !2419
  %153 = zext i1 %152 to i8, !dbg !2419
  br i1 %151, label %154, label %639, !dbg !2419

154:                                              ; preds = %147, %144, %138
  %155 = phi i64 [ %145, %147 ], [ %145, %144 ], [ %126, %138 ]
  %156 = phi i8 [ %153, %147 ], [ 0, %144 ], [ 0, %138 ], !dbg !2408
  call void @llvm.dbg.value(metadata i8 %156, metadata !2283, metadata !DIExpression()), !dbg !2408
  call void @llvm.dbg.value(metadata i64 %155, metadata !2261, metadata !DIExpression()), !dbg !2316
  %157 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !2420
  %158 = load i8, i8* %157, align 1, !dbg !2420, !tbaa !1459
  call void @llvm.dbg.value(metadata i8 %158, metadata !2278, metadata !DIExpression()), !dbg !2408
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
  ], !dbg !2421

159:                                              ; preds = %154
  br i1 %102, label %160, label %208, !dbg !2422

160:                                              ; preds = %159
  br i1 %109, label %161, label %629, !dbg !2423

161:                                              ; preds = %160
  call void @llvm.dbg.value(metadata i8 1, metadata !2284, metadata !DIExpression()), !dbg !2408
  %162 = and i8 %127, 1, !dbg !2426
  %163 = icmp eq i8 %162, 0, !dbg !2426
  %164 = and i1 %110, %163, !dbg !2426
  br i1 %164, label %165, label %181, !dbg !2426

165:                                              ; preds = %161
  %166 = icmp ult i64 %124, %130, !dbg !2428
  br i1 %166, label %167, label %169, !dbg !2432

167:                                              ; preds = %165
  %168 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !2428
  store i8 39, i8* %168, align 1, !dbg !2428, !tbaa !1459
  br label %169, !dbg !2428

169:                                              ; preds = %167, %165
  %170 = add i64 %124, 1, !dbg !2432
  call void @llvm.dbg.value(metadata i64 %170, metadata !2268, metadata !DIExpression()), !dbg !2316
  %171 = icmp ult i64 %170, %130, !dbg !2433
  br i1 %171, label %172, label %174, !dbg !2436

172:                                              ; preds = %169
  %173 = getelementptr inbounds i8, i8* %0, i64 %170, !dbg !2433
  store i8 36, i8* %173, align 1, !dbg !2433, !tbaa !1459
  br label %174, !dbg !2433

174:                                              ; preds = %172, %169
  %175 = add i64 %124, 2, !dbg !2436
  call void @llvm.dbg.value(metadata i64 %175, metadata !2268, metadata !DIExpression()), !dbg !2316
  %176 = icmp ult i64 %175, %130, !dbg !2437
  br i1 %176, label %177, label %179, !dbg !2440

177:                                              ; preds = %174
  %178 = getelementptr inbounds i8, i8* %0, i64 %175, !dbg !2437
  store i8 39, i8* %178, align 1, !dbg !2437, !tbaa !1459
  br label %179, !dbg !2437

179:                                              ; preds = %177, %174
  %180 = add i64 %124, 3, !dbg !2440
  call void @llvm.dbg.value(metadata i64 %180, metadata !2268, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i8 1, metadata !2275, metadata !DIExpression()), !dbg !2316
  br label %181, !dbg !2441

181:                                              ; preds = %161, %179
  %182 = phi i64 [ %180, %179 ], [ %124, %161 ], !dbg !2316
  %183 = phi i8 [ 1, %179 ], [ %127, %161 ], !dbg !2316
  call void @llvm.dbg.value(metadata i8 %183, metadata !2275, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i64 %182, metadata !2268, metadata !DIExpression()), !dbg !2316
  %184 = icmp ult i64 %182, %130, !dbg !2442
  br i1 %184, label %185, label %187, !dbg !2445

185:                                              ; preds = %181
  %186 = getelementptr inbounds i8, i8* %0, i64 %182, !dbg !2442
  store i8 92, i8* %186, align 1, !dbg !2442, !tbaa !1459
  br label %187, !dbg !2442

187:                                              ; preds = %185, %181
  %188 = add i64 %182, 1, !dbg !2445
  call void @llvm.dbg.value(metadata i64 %188, metadata !2268, metadata !DIExpression()), !dbg !2316
  br i1 %103, label %189, label %463, !dbg !2446

189:                                              ; preds = %187
  %190 = add i64 %123, 1, !dbg !2448
  %191 = icmp ult i64 %190, %155, !dbg !2449
  br i1 %191, label %192, label %463, !dbg !2450

192:                                              ; preds = %189
  %193 = getelementptr inbounds i8, i8* %2, i64 %190, !dbg !2451
  %194 = load i8, i8* %193, align 1, !dbg !2451, !tbaa !1459
  %195 = add i8 %194, -48, !dbg !2452
  %196 = icmp ult i8 %195, 10, !dbg !2452
  br i1 %196, label %197, label %463, !dbg !2452

197:                                              ; preds = %192
  %198 = icmp ult i64 %188, %130, !dbg !2453
  br i1 %198, label %199, label %201, !dbg !2457

199:                                              ; preds = %197
  %200 = getelementptr inbounds i8, i8* %0, i64 %188, !dbg !2453
  store i8 48, i8* %200, align 1, !dbg !2453, !tbaa !1459
  br label %201, !dbg !2453

201:                                              ; preds = %199, %197
  %202 = add i64 %182, 2, !dbg !2457
  call void @llvm.dbg.value(metadata i64 %202, metadata !2268, metadata !DIExpression()), !dbg !2316
  %203 = icmp ult i64 %202, %130, !dbg !2458
  br i1 %203, label %204, label %206, !dbg !2461

204:                                              ; preds = %201
  %205 = getelementptr inbounds i8, i8* %0, i64 %202, !dbg !2458
  store i8 48, i8* %205, align 1, !dbg !2458, !tbaa !1459
  br label %206, !dbg !2458

206:                                              ; preds = %204, %201
  %207 = add i64 %182, 3, !dbg !2461
  call void @llvm.dbg.value(metadata i64 %207, metadata !2268, metadata !DIExpression()), !dbg !2316
  br label %463, !dbg !2462

208:                                              ; preds = %159
  br i1 %22, label %463, label %571, !dbg !2463

209:                                              ; preds = %154
  switch i32 %93, label %463 [
    i32 2, label %210
    i32 5, label %211
  ], !dbg !2464

210:                                              ; preds = %209
  br i1 %109, label %463, label %625, !dbg !2465

211:                                              ; preds = %209
  br i1 %20, label %463, label %212, !dbg !2466

212:                                              ; preds = %211
  %213 = add i64 %123, 2, !dbg !2467
  %214 = icmp ult i64 %213, %155, !dbg !2468
  br i1 %214, label %215, label %463, !dbg !2469

215:                                              ; preds = %212
  %216 = add i64 %123, 1, !dbg !2470
  %217 = getelementptr inbounds i8, i8* %2, i64 %216, !dbg !2471
  %218 = load i8, i8* %217, align 1, !dbg !2471, !tbaa !1459
  %219 = icmp eq i8 %218, 63, !dbg !2472
  br i1 %219, label %220, label %463, !dbg !2473

220:                                              ; preds = %215
  %221 = getelementptr inbounds i8, i8* %2, i64 %213, !dbg !2474
  %222 = load i8, i8* %221, align 1, !dbg !2474, !tbaa !1459
  %223 = sext i8 %222 to i32, !dbg !2474
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
  ], !dbg !2475

224:                                              ; preds = %220, %220, %220, %220, %220, %220, %220, %220, %220
  br i1 %109, label %225, label %639, !dbg !2476

225:                                              ; preds = %224
  call void @llvm.dbg.value(metadata i8 %222, metadata !2278, metadata !DIExpression()), !dbg !2408
  call void @llvm.dbg.value(metadata i64 %213, metadata !2267, metadata !DIExpression()), !dbg !2316
  %226 = icmp ult i64 %124, %130, !dbg !2478
  br i1 %226, label %227, label %229, !dbg !2481

227:                                              ; preds = %225
  %228 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !2478
  store i8 63, i8* %228, align 1, !dbg !2478, !tbaa !1459
  br label %229, !dbg !2478

229:                                              ; preds = %227, %225
  %230 = add i64 %124, 1, !dbg !2481
  call void @llvm.dbg.value(metadata i64 %230, metadata !2268, metadata !DIExpression()), !dbg !2316
  %231 = icmp ult i64 %230, %130, !dbg !2482
  br i1 %231, label %232, label %234, !dbg !2485

232:                                              ; preds = %229
  %233 = getelementptr inbounds i8, i8* %0, i64 %230, !dbg !2482
  store i8 34, i8* %233, align 1, !dbg !2482, !tbaa !1459
  br label %234, !dbg !2482

234:                                              ; preds = %232, %229
  %235 = add i64 %124, 2, !dbg !2485
  call void @llvm.dbg.value(metadata i64 %235, metadata !2268, metadata !DIExpression()), !dbg !2316
  %236 = icmp ult i64 %235, %130, !dbg !2486
  br i1 %236, label %237, label %239, !dbg !2489

237:                                              ; preds = %234
  %238 = getelementptr inbounds i8, i8* %0, i64 %235, !dbg !2486
  store i8 34, i8* %238, align 1, !dbg !2486, !tbaa !1459
  br label %239, !dbg !2486

239:                                              ; preds = %237, %234
  %240 = add i64 %124, 3, !dbg !2489
  call void @llvm.dbg.value(metadata i64 %240, metadata !2268, metadata !DIExpression()), !dbg !2316
  %241 = icmp ult i64 %240, %130, !dbg !2490
  br i1 %241, label %242, label %244, !dbg !2493

242:                                              ; preds = %239
  %243 = getelementptr inbounds i8, i8* %0, i64 %240, !dbg !2490
  store i8 63, i8* %243, align 1, !dbg !2490, !tbaa !1459
  br label %244, !dbg !2490

244:                                              ; preds = %242, %239
  %245 = add i64 %124, 4, !dbg !2493
  call void @llvm.dbg.value(metadata i64 %245, metadata !2268, metadata !DIExpression()), !dbg !2316
  br label %463, !dbg !2494

246:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 98, metadata !2282, metadata !DIExpression()), !dbg !2408
  br label %256, !dbg !2495

247:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 102, metadata !2282, metadata !DIExpression()), !dbg !2408
  br label %256, !dbg !2496

248:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 114, metadata !2282, metadata !DIExpression()), !dbg !2408
  br label %254, !dbg !2497

249:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 116, metadata !2282, metadata !DIExpression()), !dbg !2408
  br label %254, !dbg !2498

250:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 118, metadata !2282, metadata !DIExpression()), !dbg !2408
  br label %256, !dbg !2499

251:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 %158, metadata !2282, metadata !DIExpression()), !dbg !2408
  br i1 %110, label %252, label %253, !dbg !2500

252:                                              ; preds = %251
  br i1 %109, label %526, label %625, !dbg !2501

253:                                              ; preds = %251
  br i1 %121, label %526, label %254, !dbg !2504

254:                                              ; preds = %253, %154, %249, %248
  %255 = phi i8 [ 92, %253 ], [ 116, %249 ], [ 114, %248 ], [ 110, %154 ], !dbg !2505
  call void @llvm.dbg.value(metadata i8 %255, metadata !2282, metadata !DIExpression()), !dbg !2408
  call void @llvm.dbg.label(metadata !2311), !dbg !2506
  br i1 %111, label %256, label %625, !dbg !2507

256:                                              ; preds = %254, %154, %250, %247, %246
  %257 = phi i8 [ %255, %254 ], [ 118, %250 ], [ 102, %247 ], [ 98, %246 ], [ 97, %154 ], !dbg !2505
  call void @llvm.dbg.value(metadata i8 %257, metadata !2282, metadata !DIExpression()), !dbg !2408
  call void @llvm.dbg.label(metadata !2312), !dbg !2509
  br i1 %102, label %488, label %463, !dbg !2510

258:                                              ; preds = %154, %154
  switch i64 %155, label %463 [
    i64 -1, label %259
    i64 1, label %262
  ], !dbg !2511

259:                                              ; preds = %258
  %260 = load i8, i8* %18, align 1, !dbg !2512, !tbaa !1459
  %261 = icmp eq i8 %260, 0, !dbg !2513
  br i1 %261, label %262, label %463, !dbg !2514

262:                                              ; preds = %258, %259, %154, %154
  %263 = icmp eq i64 %123, 0, !dbg !2515
  br i1 %263, label %264, label %463, !dbg !2517

264:                                              ; preds = %262, %154
  call void @llvm.dbg.value(metadata i8 1, metadata !2285, metadata !DIExpression()), !dbg !2408
  br label %265, !dbg !2518

265:                                              ; preds = %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %264
  %266 = phi i8 [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 1, %264 ], !dbg !2408
  call void @llvm.dbg.value(metadata i8 %266, metadata !2285, metadata !DIExpression()), !dbg !2408
  br i1 %111, label %463, label %625, !dbg !2519

267:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 1, metadata !2276, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i8 1, metadata !2285, metadata !DIExpression()), !dbg !2408
  br i1 %110, label %268, label %463, !dbg !2520

268:                                              ; preds = %267
  br i1 %109, label %269, label %625, !dbg !2521

269:                                              ; preds = %268
  %270 = icmp eq i64 %130, 0, !dbg !2523
  %271 = icmp ne i64 %125, 0, !dbg !2525
  %272 = or i1 %271, %270, !dbg !2526
  %273 = select i1 %272, i64 %125, i64 %130, !dbg !2526
  %274 = select i1 %272, i64 %130, i64 0, !dbg !2526
  call void @llvm.dbg.value(metadata i64 %274, metadata !2259, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i64 %273, metadata !2269, metadata !DIExpression()), !dbg !2316
  %275 = icmp ult i64 %124, %274, !dbg !2527
  br i1 %275, label %276, label %278, !dbg !2530

276:                                              ; preds = %269
  %277 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !2527
  store i8 39, i8* %277, align 1, !dbg !2527, !tbaa !1459
  br label %278, !dbg !2527

278:                                              ; preds = %276, %269
  %279 = add i64 %124, 1, !dbg !2530
  call void @llvm.dbg.value(metadata i64 %279, metadata !2268, metadata !DIExpression()), !dbg !2316
  %280 = icmp ult i64 %279, %274, !dbg !2531
  br i1 %280, label %281, label %283, !dbg !2534

281:                                              ; preds = %278
  %282 = getelementptr inbounds i8, i8* %0, i64 %279, !dbg !2531
  store i8 92, i8* %282, align 1, !dbg !2531, !tbaa !1459
  br label %283, !dbg !2531

283:                                              ; preds = %281, %278
  %284 = add i64 %124, 2, !dbg !2534
  call void @llvm.dbg.value(metadata i64 %284, metadata !2268, metadata !DIExpression()), !dbg !2316
  %285 = icmp ult i64 %284, %274, !dbg !2535
  br i1 %285, label %286, label %288, !dbg !2538

286:                                              ; preds = %283
  %287 = getelementptr inbounds i8, i8* %0, i64 %284, !dbg !2535
  store i8 39, i8* %287, align 1, !dbg !2535, !tbaa !1459
  br label %288, !dbg !2535

288:                                              ; preds = %286, %283
  %289 = add i64 %124, 3, !dbg !2538
  call void @llvm.dbg.value(metadata i64 %289, metadata !2268, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i8 0, metadata !2275, metadata !DIExpression()), !dbg !2316
  br label %463, !dbg !2539

290:                                              ; preds = %154
  br i1 %14, label %291, label %300, !dbg !2540

291:                                              ; preds = %290
  call void @llvm.dbg.value(metadata i64 1, metadata !2286, metadata !DIExpression()), !dbg !2541
  %292 = tail call i16** @__ctype_b_loc() #24, !dbg !2542
  %293 = load i16*, i16** %292, align 8, !dbg !2542, !tbaa !1263
  %294 = zext i8 %158 to i64, !dbg !2542
  %295 = getelementptr inbounds i16, i16* %293, i64 %294, !dbg !2542
  %296 = load i16, i16* %295, align 2, !dbg !2542, !tbaa !1831
  %297 = lshr i16 %296, 14, !dbg !2544
  %298 = trunc i16 %297 to i8, !dbg !2544
  %299 = and i8 %298, 1, !dbg !2544
  call void @llvm.dbg.value(metadata i8 %299, metadata !2289, metadata !DIExpression()), !dbg !2541
  br label %355, !dbg !2545

300:                                              ; preds = %290
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %23) #19, !dbg !2546
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %11, metadata !2290, metadata !DIExpression()), !dbg !2547
  call void @llvm.dbg.value(metadata i8* %23, metadata !2548, metadata !DIExpression()) #19, !dbg !2553
  call void @llvm.dbg.value(metadata i32 0, metadata !2551, metadata !DIExpression()) #19, !dbg !2553
  call void @llvm.dbg.value(metadata i64 8, metadata !2552, metadata !DIExpression()) #19, !dbg !2553
  store i64 0, i64* %10, align 8, !dbg !2555
  call void @llvm.dbg.value(metadata i64 0, metadata !2286, metadata !DIExpression()), !dbg !2541
  call void @llvm.dbg.value(metadata i8 1, metadata !2289, metadata !DIExpression()), !dbg !2541
  %301 = icmp eq i64 %155, -1, !dbg !2556
  br i1 %301, label %302, label %304, !dbg !2558

302:                                              ; preds = %300
  %303 = call i64 @strlen(i8* nonnull dereferenceable(1) %2) #21, !dbg !2559
  call void @llvm.dbg.value(metadata i64 %303, metadata !2261, metadata !DIExpression()), !dbg !2316
  br label %304, !dbg !2560

304:                                              ; preds = %302, %300
  %305 = phi i64 [ %303, %302 ], [ %155, %300 ], !dbg !2408
  call void @llvm.dbg.value(metadata i64 %305, metadata !2261, metadata !DIExpression()), !dbg !2316
  br label %306, !dbg !2561

306:                                              ; preds = %343, %304
  %307 = phi i64 [ 0, %304 ], [ %348, %343 ], !dbg !2562
  %308 = phi i8 [ 1, %304 ], [ %347, %343 ], !dbg !2563
  call void @llvm.dbg.value(metadata i8 %308, metadata !2289, metadata !DIExpression()), !dbg !2541
  call void @llvm.dbg.value(metadata i64 %307, metadata !2286, metadata !DIExpression()), !dbg !2541
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %24) #19, !dbg !2564
  %309 = add i64 %307, %123, !dbg !2565
  %310 = getelementptr inbounds i8, i8* %2, i64 %309, !dbg !2566
  %311 = sub i64 %305, %309, !dbg !2567
  call void @llvm.dbg.value(metadata i32* %12, metadata !2296, metadata !DIExpression(DW_OP_deref)), !dbg !2329
  %312 = call i64 @rpl_mbrtowc(i32* nonnull %12, i8* %310, i64 %311, %struct.__mbstate_t* nonnull %11) #19, !dbg !2568
  call void @llvm.dbg.value(metadata i64 %312, metadata !2299, metadata !DIExpression()), !dbg !2329
  switch i64 %312, label %327 [
    i64 0, label %339
    i64 -1, label %340
    i64 -2, label %313
  ], !dbg !2569

313:                                              ; preds = %306
  call void @llvm.dbg.value(metadata i64 %307, metadata !2286, metadata !DIExpression()), !dbg !2541
  call void @llvm.dbg.value(metadata i64 %307, metadata !2286, metadata !DIExpression()), !dbg !2541
  call void @llvm.dbg.value(metadata i64 %307, metadata !2286, metadata !DIExpression()), !dbg !2541
  call void @llvm.dbg.value(metadata i64 %307, metadata !2286, metadata !DIExpression()), !dbg !2541
  call void @llvm.dbg.value(metadata i64 %307, metadata !2286, metadata !DIExpression()), !dbg !2541
  call void @llvm.dbg.value(metadata i64 %307, metadata !2286, metadata !DIExpression()), !dbg !2541
  %314 = icmp ugt i64 %305, %309, !dbg !2570
  br i1 %314, label %315, label %340, !dbg !2572

315:                                              ; preds = %313
  %316 = sub i64 %305, %123, !dbg !2573
  br label %317, !dbg !2573

317:                                              ; preds = %315, %323
  %318 = phi i64 [ %325, %323 ], [ %309, %315 ]
  %319 = phi i64 [ %324, %323 ], [ %307, %315 ]
  call void @llvm.dbg.value(metadata i64 %319, metadata !2286, metadata !DIExpression()), !dbg !2541
  %320 = getelementptr inbounds i8, i8* %2, i64 %318, !dbg !2574
  %321 = load i8, i8* %320, align 1, !dbg !2574, !tbaa !1459
  %322 = icmp eq i8 %321, 0, !dbg !2572
  br i1 %322, label %340, label %323, !dbg !2573

323:                                              ; preds = %317
  %324 = add i64 %319, 1, !dbg !2575
  call void @llvm.dbg.value(metadata i64 %324, metadata !2286, metadata !DIExpression()), !dbg !2541
  %325 = add i64 %324, %123, !dbg !2576
  %326 = icmp ult i64 %325, %305, !dbg !2570
  br i1 %326, label %317, label %340, !dbg !2572, !llvm.loop !2577

327:                                              ; preds = %306
  %328 = icmp ugt i64 %312, 1, !dbg !2578
  %329 = and i1 %113, %328, !dbg !2581
  call void @llvm.dbg.value(metadata i64 1, metadata !2300, metadata !DIExpression()), !dbg !2582
  br i1 %329, label %330, label %343, !dbg !2581

330:                                              ; preds = %327, %336
  %331 = phi i64 [ %337, %336 ], [ 1, %327 ]
  call void @llvm.dbg.value(metadata i64 %331, metadata !2300, metadata !DIExpression()), !dbg !2582
  %332 = add i64 %331, %309, !dbg !2583
  %333 = getelementptr inbounds i8, i8* %2, i64 %332, !dbg !2584
  %334 = load i8, i8* %333, align 1, !dbg !2584, !tbaa !1459
  %335 = sext i8 %334 to i32, !dbg !2584
  switch i32 %335, label %336 [
    i32 91, label %354
    i32 92, label %354
    i32 94, label %354
    i32 96, label %354
    i32 124, label %354
  ], !dbg !2585

336:                                              ; preds = %330
  %337 = add nuw i64 %331, 1, !dbg !2586
  call void @llvm.dbg.value(metadata i64 %337, metadata !2300, metadata !DIExpression()), !dbg !2582
  %338 = icmp eq i64 %337, %312, !dbg !2578
  br i1 %338, label %343, label %330, !dbg !2587, !llvm.loop !2588

339:                                              ; preds = %306
  call void @llvm.dbg.value(metadata i64 %307, metadata !2286, metadata !DIExpression()), !dbg !2541
  call void @llvm.dbg.value(metadata i8 %308, metadata !2289, metadata !DIExpression()), !dbg !2541
  call void @llvm.dbg.value(metadata i64 %307, metadata !2286, metadata !DIExpression()), !dbg !2541
  call void @llvm.dbg.value(metadata i8 %308, metadata !2289, metadata !DIExpression()), !dbg !2541
  br label %340, !dbg !2590

340:                                              ; preds = %323, %317, %306, %339, %313
  %341 = phi i64 [ %307, %313 ], [ %307, %339 ], [ %307, %306 ], [ %319, %317 ], [ %316, %323 ]
  %342 = phi i8 [ 0, %313 ], [ %308, %339 ], [ 0, %306 ], [ 0, %317 ], [ 0, %323 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #19, !dbg !2590
  br label %351

343:                                              ; preds = %336, %327
  %344 = load i32, i32* %12, align 4, !dbg !2591, !tbaa !1707
  call void @llvm.dbg.value(metadata i32 %344, metadata !2296, metadata !DIExpression()), !dbg !2329
  %345 = call i32 @iswprint(i32 %344) #19, !dbg !2593
  %346 = icmp eq i32 %345, 0, !dbg !2593
  %347 = select i1 %346, i8 0, i8 %308, !dbg !2594
  call void @llvm.dbg.value(metadata i8 %347, metadata !2289, metadata !DIExpression()), !dbg !2541
  %348 = add i64 %312, %307, !dbg !2595
  call void @llvm.dbg.value(metadata i64 %348, metadata !2286, metadata !DIExpression()), !dbg !2541
  call void @llvm.dbg.value(metadata i8 %347, metadata !2289, metadata !DIExpression()), !dbg !2541
  call void @llvm.dbg.value(metadata i64 %348, metadata !2286, metadata !DIExpression()), !dbg !2541
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #19, !dbg !2590
  %349 = call i32 @mbsinit(%struct.__mbstate_t* nonnull %11) #21, !dbg !2596
  %350 = icmp eq i32 %349, 0, !dbg !2597
  br i1 %350, label %306, label %351, !dbg !2598, !llvm.loop !2599

351:                                              ; preds = %343, %340
  %352 = phi i8 [ %342, %340 ], [ %347, %343 ]
  %353 = phi i64 [ %341, %340 ], [ %348, %343 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %23) #19, !dbg !2601
  br label %355

354:                                              ; preds = %330, %330, %330, %330, %330
  call void @llvm.dbg.value(metadata i8* %94, metadata !2265, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i8* %94, metadata !2265, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i8* %94, metadata !2265, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i8* %94, metadata !2265, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i8* %94, metadata !2265, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i8* %95, metadata !2266, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i8* %95, metadata !2266, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i8* %95, metadata !2266, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i8* %95, metadata !2266, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i8* %95, metadata !2266, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i64 %130, metadata !2259, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i64 %130, metadata !2259, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i64 %130, metadata !2259, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i64 %130, metadata !2259, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i64 %130, metadata !2259, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i64 %305, metadata !2261, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i64 %305, metadata !2261, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i64 %305, metadata !2261, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i64 %305, metadata !2261, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i64 %305, metadata !2261, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i8* %94, metadata !2265, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i8* %94, metadata !2265, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i8* %94, metadata !2265, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i8* %94, metadata !2265, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i8* %94, metadata !2265, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i8* %95, metadata !2266, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i8* %95, metadata !2266, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i8* %95, metadata !2266, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i8* %95, metadata !2266, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i8* %95, metadata !2266, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i64 %130, metadata !2259, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i64 %130, metadata !2259, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i64 %130, metadata !2259, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i64 %130, metadata !2259, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i64 %130, metadata !2259, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i64 %305, metadata !2261, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i64 %305, metadata !2261, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i64 %305, metadata !2261, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i64 %305, metadata !2261, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i64 %305, metadata !2261, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i8* %94, metadata !2265, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i8* %94, metadata !2265, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i8* %94, metadata !2265, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i8* %94, metadata !2265, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i8* %94, metadata !2265, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i8* %95, metadata !2266, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i8* %95, metadata !2266, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i8* %95, metadata !2266, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i8* %95, metadata !2266, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i8* %95, metadata !2266, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i64 %130, metadata !2259, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i64 %130, metadata !2259, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i64 %130, metadata !2259, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i64 %130, metadata !2259, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i64 %130, metadata !2259, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i64 %305, metadata !2261, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i64 %305, metadata !2261, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i64 %305, metadata !2261, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i64 %305, metadata !2261, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i64 %305, metadata !2261, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i8* %94, metadata !2265, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i8* %94, metadata !2265, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i8* %94, metadata !2265, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i8* %94, metadata !2265, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i8* %94, metadata !2265, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i8* %95, metadata !2266, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i8* %95, metadata !2266, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i8* %95, metadata !2266, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i8* %95, metadata !2266, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i8* %95, metadata !2266, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i64 %130, metadata !2259, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i64 %130, metadata !2259, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i64 %130, metadata !2259, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i64 %130, metadata !2259, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i64 %130, metadata !2259, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i64 %305, metadata !2261, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i64 %305, metadata !2261, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i64 %305, metadata !2261, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i64 %305, metadata !2261, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i64 %305, metadata !2261, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i32 2, metadata !2262, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i32 2, metadata !2262, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i32 2, metadata !2262, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i32 2, metadata !2262, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i32 2, metadata !2262, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i8* %94, metadata !2265, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i8* %94, metadata !2265, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i8* %94, metadata !2265, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i8* %94, metadata !2265, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i8* %94, metadata !2265, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i8* %95, metadata !2266, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i8* %95, metadata !2266, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i8* %95, metadata !2266, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i8* %95, metadata !2266, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i8* %95, metadata !2266, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i8 %99, metadata !2272, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i8 %99, metadata !2272, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i8 %99, metadata !2272, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i8 %99, metadata !2272, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i8 %99, metadata !2272, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i64 %130, metadata !2259, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i64 %130, metadata !2259, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i64 %130, metadata !2259, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i64 %130, metadata !2259, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i64 %130, metadata !2259, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i64 %305, metadata !2261, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i64 %305, metadata !2261, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i64 %305, metadata !2261, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i64 %305, metadata !2261, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i64 %305, metadata !2261, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i32 2, metadata !2262, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i32 2, metadata !2262, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i32 2, metadata !2262, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i32 2, metadata !2262, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i32 2, metadata !2262, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i8* %94, metadata !2265, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i8* %94, metadata !2265, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i8* %94, metadata !2265, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i8* %94, metadata !2265, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i8* %94, metadata !2265, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i8* %95, metadata !2266, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i8* %95, metadata !2266, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i8* %95, metadata !2266, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i8* %95, metadata !2266, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i8* %95, metadata !2266, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i8 %99, metadata !2272, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i8 %99, metadata !2272, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i8 %99, metadata !2272, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i8 %99, metadata !2272, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i8 %99, metadata !2272, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i64 %130, metadata !2259, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i64 %130, metadata !2259, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i64 %130, metadata !2259, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i64 %130, metadata !2259, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i64 %130, metadata !2259, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i64 %305, metadata !2261, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i64 %305, metadata !2261, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i64 %305, metadata !2261, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i64 %305, metadata !2261, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i64 %305, metadata !2261, metadata !DIExpression()), !dbg !2316
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #19, !dbg !2590
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %23) #19, !dbg !2601
  br label %625

355:                                              ; preds = %351, %291
  %356 = phi i64 [ %155, %291 ], [ %305, %351 ], !dbg !2408
  %357 = phi i64 [ 1, %291 ], [ %353, %351 ], !dbg !2602
  %358 = phi i8 [ %299, %291 ], [ %352, %351 ], !dbg !2602
  call void @llvm.dbg.value(metadata i8 %358, metadata !2289, metadata !DIExpression()), !dbg !2541
  call void @llvm.dbg.value(metadata i64 %357, metadata !2286, metadata !DIExpression()), !dbg !2541
  call void @llvm.dbg.value(metadata i64 %356, metadata !2261, metadata !DIExpression()), !dbg !2316
  %359 = and i8 %358, 1, !dbg !2603
  %360 = icmp ne i8 %359, 0, !dbg !2603
  call void @llvm.dbg.value(metadata i8 %359, metadata !2285, metadata !DIExpression()), !dbg !2408
  %361 = icmp ult i64 %357, 2, !dbg !2604
  %362 = or i1 %360, %114, !dbg !2605
  %363 = and i1 %361, %362, !dbg !2606
  br i1 %363, label %463, label %364, !dbg !2606

364:                                              ; preds = %355
  %365 = add i64 %357, %123, !dbg !2607
  call void @llvm.dbg.value(metadata i64 %365, metadata !2307, metadata !DIExpression()), !dbg !2608
  br label %366, !dbg !2609

366:                                              ; preds = %459, %364
  %367 = phi i64 [ %123, %364 ], [ %434, %459 ], !dbg !2401
  %368 = phi i64 [ %124, %364 ], [ %460, %459 ], !dbg !2316
  %369 = phi i8 [ %127, %364 ], [ %455, %459 ], !dbg !2337
  %370 = phi i8 [ %158, %364 ], [ %462, %459 ], !dbg !2408
  %371 = phi i8 [ %156, %364 ], [ %432, %459 ], !dbg !2408
  %372 = phi i8 [ 0, %364 ], [ %433, %459 ], !dbg !2610
  call void @llvm.dbg.value(metadata i8 %372, metadata !2284, metadata !DIExpression()), !dbg !2408
  call void @llvm.dbg.value(metadata i8 %371, metadata !2283, metadata !DIExpression()), !dbg !2408
  call void @llvm.dbg.value(metadata i8 %370, metadata !2278, metadata !DIExpression()), !dbg !2408
  call void @llvm.dbg.value(metadata i8 %369, metadata !2275, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i64 %368, metadata !2268, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i64 %367, metadata !2267, metadata !DIExpression()), !dbg !2316
  br i1 %362, label %419, label %373, !dbg !2611

373:                                              ; preds = %366
  br i1 %109, label %374, label %629, !dbg !2616

374:                                              ; preds = %373
  call void @llvm.dbg.value(metadata i8 1, metadata !2284, metadata !DIExpression()), !dbg !2408
  %375 = and i8 %369, 1, !dbg !2619
  %376 = icmp eq i8 %375, 0, !dbg !2619
  %377 = and i1 %110, %376, !dbg !2619
  br i1 %377, label %378, label %394, !dbg !2619

378:                                              ; preds = %374
  %379 = icmp ult i64 %368, %130, !dbg !2621
  br i1 %379, label %380, label %382, !dbg !2625

380:                                              ; preds = %378
  %381 = getelementptr inbounds i8, i8* %0, i64 %368, !dbg !2621
  store i8 39, i8* %381, align 1, !dbg !2621, !tbaa !1459
  br label %382, !dbg !2621

382:                                              ; preds = %380, %378
  %383 = add i64 %368, 1, !dbg !2625
  call void @llvm.dbg.value(metadata i64 %383, metadata !2268, metadata !DIExpression()), !dbg !2316
  %384 = icmp ult i64 %383, %130, !dbg !2626
  br i1 %384, label %385, label %387, !dbg !2629

385:                                              ; preds = %382
  %386 = getelementptr inbounds i8, i8* %0, i64 %383, !dbg !2626
  store i8 36, i8* %386, align 1, !dbg !2626, !tbaa !1459
  br label %387, !dbg !2626

387:                                              ; preds = %385, %382
  %388 = add i64 %368, 2, !dbg !2629
  call void @llvm.dbg.value(metadata i64 %388, metadata !2268, metadata !DIExpression()), !dbg !2316
  %389 = icmp ult i64 %388, %130, !dbg !2630
  br i1 %389, label %390, label %392, !dbg !2633

390:                                              ; preds = %387
  %391 = getelementptr inbounds i8, i8* %0, i64 %388, !dbg !2630
  store i8 39, i8* %391, align 1, !dbg !2630, !tbaa !1459
  br label %392, !dbg !2630

392:                                              ; preds = %390, %387
  %393 = add i64 %368, 3, !dbg !2633
  call void @llvm.dbg.value(metadata i64 %393, metadata !2268, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i8 1, metadata !2275, metadata !DIExpression()), !dbg !2316
  br label %394, !dbg !2634

394:                                              ; preds = %374, %392
  %395 = phi i64 [ %393, %392 ], [ %368, %374 ], !dbg !2316
  %396 = phi i8 [ 1, %392 ], [ %369, %374 ], !dbg !2316
  call void @llvm.dbg.value(metadata i8 %396, metadata !2275, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i64 %395, metadata !2268, metadata !DIExpression()), !dbg !2316
  %397 = icmp ult i64 %395, %130, !dbg !2635
  br i1 %397, label %398, label %400, !dbg !2638

398:                                              ; preds = %394
  %399 = getelementptr inbounds i8, i8* %0, i64 %395, !dbg !2635
  store i8 92, i8* %399, align 1, !dbg !2635, !tbaa !1459
  br label %400, !dbg !2635

400:                                              ; preds = %398, %394
  %401 = add i64 %395, 1, !dbg !2638
  call void @llvm.dbg.value(metadata i64 %401, metadata !2268, metadata !DIExpression()), !dbg !2316
  %402 = icmp ult i64 %401, %130, !dbg !2639
  br i1 %402, label %403, label %407, !dbg !2642

403:                                              ; preds = %400
  %404 = lshr i8 %370, 6, !dbg !2639
  %405 = or i8 %404, 48, !dbg !2639
  %406 = getelementptr inbounds i8, i8* %0, i64 %401, !dbg !2639
  store i8 %405, i8* %406, align 1, !dbg !2639, !tbaa !1459
  br label %407, !dbg !2639

407:                                              ; preds = %403, %400
  %408 = add i64 %395, 2, !dbg !2642
  call void @llvm.dbg.value(metadata i64 %408, metadata !2268, metadata !DIExpression()), !dbg !2316
  %409 = icmp ult i64 %408, %130, !dbg !2643
  br i1 %409, label %410, label %415, !dbg !2646

410:                                              ; preds = %407
  %411 = lshr i8 %370, 3, !dbg !2643
  %412 = and i8 %411, 7, !dbg !2643
  %413 = or i8 %412, 48, !dbg !2643
  %414 = getelementptr inbounds i8, i8* %0, i64 %408, !dbg !2643
  store i8 %413, i8* %414, align 1, !dbg !2643, !tbaa !1459
  br label %415, !dbg !2643

415:                                              ; preds = %410, %407
  %416 = add i64 %395, 3, !dbg !2646
  call void @llvm.dbg.value(metadata i64 %416, metadata !2268, metadata !DIExpression()), !dbg !2316
  %417 = and i8 %370, 7, !dbg !2647
  %418 = or i8 %417, 48, !dbg !2648
  call void @llvm.dbg.value(metadata i8 %418, metadata !2278, metadata !DIExpression()), !dbg !2408
  br label %428, !dbg !2649

419:                                              ; preds = %366
  %420 = and i8 %371, 1, !dbg !2650
  %421 = icmp eq i8 %420, 0, !dbg !2650
  br i1 %421, label %428, label %422, !dbg !2652

422:                                              ; preds = %419
  %423 = icmp ult i64 %368, %130, !dbg !2653
  br i1 %423, label %424, label %426, !dbg !2657

424:                                              ; preds = %422
  %425 = getelementptr inbounds i8, i8* %0, i64 %368, !dbg !2653
  store i8 92, i8* %425, align 1, !dbg !2653, !tbaa !1459
  br label %426, !dbg !2653

426:                                              ; preds = %424, %422
  %427 = add i64 %368, 1, !dbg !2657
  call void @llvm.dbg.value(metadata i64 %427, metadata !2268, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i8 0, metadata !2283, metadata !DIExpression()), !dbg !2408
  br label %428, !dbg !2658

428:                                              ; preds = %419, %426, %415
  %429 = phi i64 [ %427, %426 ], [ %368, %419 ], [ %416, %415 ], !dbg !2316
  %430 = phi i8 [ %369, %426 ], [ %369, %419 ], [ %396, %415 ], !dbg !2337
  %431 = phi i8 [ %370, %426 ], [ %370, %419 ], [ %418, %415 ], !dbg !2408
  %432 = phi i8 [ 0, %426 ], [ %371, %419 ], [ %371, %415 ], !dbg !2408
  %433 = phi i8 [ %372, %426 ], [ %372, %419 ], [ 1, %415 ], !dbg !2408
  call void @llvm.dbg.value(metadata i8 %433, metadata !2284, metadata !DIExpression()), !dbg !2408
  call void @llvm.dbg.value(metadata i8 %432, metadata !2283, metadata !DIExpression()), !dbg !2408
  call void @llvm.dbg.value(metadata i8 %431, metadata !2278, metadata !DIExpression()), !dbg !2408
  call void @llvm.dbg.value(metadata i8 %430, metadata !2275, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i64 %429, metadata !2268, metadata !DIExpression()), !dbg !2316
  %434 = add i64 %367, 1, !dbg !2659
  %435 = icmp ugt i64 %365, %434, !dbg !2661
  br i1 %435, label %436, label %526, !dbg !2662

436:                                              ; preds = %428
  %437 = and i8 %430, 1, !dbg !2663
  %438 = icmp ne i8 %437, 0, !dbg !2663
  %439 = and i8 %433, 1, !dbg !2663
  %440 = icmp eq i8 %439, 0, !dbg !2663
  %441 = and i1 %438, %440, !dbg !2663
  br i1 %441, label %442, label %453, !dbg !2663

442:                                              ; preds = %436
  %443 = icmp ult i64 %429, %130, !dbg !2666
  br i1 %443, label %444, label %446, !dbg !2670

444:                                              ; preds = %442
  %445 = getelementptr inbounds i8, i8* %0, i64 %429, !dbg !2666
  store i8 39, i8* %445, align 1, !dbg !2666, !tbaa !1459
  br label %446, !dbg !2666

446:                                              ; preds = %444, %442
  %447 = add i64 %429, 1, !dbg !2670
  call void @llvm.dbg.value(metadata i64 %447, metadata !2268, metadata !DIExpression()), !dbg !2316
  %448 = icmp ult i64 %447, %130, !dbg !2671
  br i1 %448, label %449, label %451, !dbg !2674

449:                                              ; preds = %446
  %450 = getelementptr inbounds i8, i8* %0, i64 %447, !dbg !2671
  store i8 39, i8* %450, align 1, !dbg !2671, !tbaa !1459
  br label %451, !dbg !2671

451:                                              ; preds = %449, %446
  %452 = add i64 %429, 2, !dbg !2674
  call void @llvm.dbg.value(metadata i64 %452, metadata !2268, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i8 0, metadata !2275, metadata !DIExpression()), !dbg !2316
  br label %453, !dbg !2675

453:                                              ; preds = %436, %451
  %454 = phi i64 [ %452, %451 ], [ %429, %436 ], !dbg !2676
  %455 = phi i8 [ 0, %451 ], [ %430, %436 ], !dbg !2316
  call void @llvm.dbg.value(metadata i8 %455, metadata !2275, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i64 %454, metadata !2268, metadata !DIExpression()), !dbg !2316
  %456 = icmp ult i64 %454, %130, !dbg !2677
  br i1 %456, label %457, label %459, !dbg !2680

457:                                              ; preds = %453
  %458 = getelementptr inbounds i8, i8* %0, i64 %454, !dbg !2677
  store i8 %431, i8* %458, align 1, !dbg !2677, !tbaa !1459
  br label %459, !dbg !2677

459:                                              ; preds = %457, %453
  %460 = add i64 %454, 1, !dbg !2680
  call void @llvm.dbg.value(metadata i64 %460, metadata !2268, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i64 %434, metadata !2267, metadata !DIExpression()), !dbg !2316
  %461 = getelementptr inbounds i8, i8* %2, i64 %434, !dbg !2681
  %462 = load i8, i8* %461, align 1, !dbg !2681, !tbaa !1459
  call void @llvm.dbg.value(metadata i8 %462, metadata !2278, metadata !DIExpression()), !dbg !2408
  br label %366, !dbg !2682, !llvm.loop !2683

463:                                              ; preds = %355, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %265, %258, %187, %189, %192, %206, %208, %210, %211, %262, %267, %288, %259, %256, %244, %220, %215, %212, %209
  %464 = phi i64 [ %123, %288 ], [ %123, %267 ], [ %123, %265 ], [ %123, %262 ], [ %123, %259 ], [ %123, %256 ], [ %123, %209 ], [ %123, %220 ], [ %213, %244 ], [ %123, %215 ], [ %123, %212 ], [ %123, %211 ], [ %123, %210 ], [ %123, %208 ], [ %123, %206 ], [ %123, %192 ], [ %123, %189 ], [ %123, %187 ], [ %123, %258 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %355 ], !dbg !2401
  %465 = phi i64 [ %289, %288 ], [ %124, %267 ], [ %124, %265 ], [ %124, %262 ], [ %124, %259 ], [ %124, %256 ], [ %124, %209 ], [ %124, %220 ], [ %245, %244 ], [ %124, %215 ], [ %124, %212 ], [ %124, %211 ], [ %124, %210 ], [ %124, %208 ], [ %207, %206 ], [ %188, %192 ], [ %188, %189 ], [ %188, %187 ], [ %124, %258 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %355 ], !dbg !2316
  %466 = phi i64 [ %273, %288 ], [ %125, %267 ], [ %125, %265 ], [ %125, %262 ], [ %125, %259 ], [ %125, %256 ], [ %125, %209 ], [ %125, %220 ], [ %125, %244 ], [ %125, %215 ], [ %125, %212 ], [ %125, %211 ], [ %125, %210 ], [ %125, %208 ], [ %125, %206 ], [ %125, %192 ], [ %125, %189 ], [ %125, %187 ], [ %125, %258 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %355 ], !dbg !2333
  %467 = phi i64 [ %155, %288 ], [ %155, %267 ], [ %155, %265 ], [ %155, %262 ], [ -1, %259 ], [ %155, %256 ], [ %155, %209 ], [ %155, %220 ], [ %155, %244 ], [ %155, %215 ], [ %155, %212 ], [ %155, %211 ], [ %155, %210 ], [ %155, %208 ], [ %155, %206 ], [ %155, %192 ], [ %155, %189 ], [ %155, %187 ], [ %155, %258 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %356, %355 ], !dbg !2686
  %468 = phi i8 [ 0, %288 ], [ %127, %267 ], [ %127, %265 ], [ %127, %262 ], [ %127, %259 ], [ %127, %256 ], [ %127, %209 ], [ %127, %220 ], [ %127, %244 ], [ %127, %215 ], [ %127, %212 ], [ %127, %211 ], [ %127, %210 ], [ %127, %208 ], [ %183, %206 ], [ %183, %192 ], [ %183, %189 ], [ %183, %187 ], [ %127, %258 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %355 ], !dbg !2316
  %469 = phi i8 [ 1, %288 ], [ 1, %267 ], [ %128, %265 ], [ %128, %262 ], [ %128, %259 ], [ %128, %256 ], [ %128, %209 ], [ %128, %220 ], [ %128, %244 ], [ %128, %215 ], [ %128, %212 ], [ %128, %211 ], [ %128, %210 ], [ %128, %208 ], [ %128, %206 ], [ %128, %192 ], [ %128, %189 ], [ %128, %187 ], [ %128, %258 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %355 ], !dbg !2316
  %470 = phi i8 [ 39, %288 ], [ 39, %267 ], [ %158, %265 ], [ %158, %262 ], [ %158, %259 ], [ %158, %256 ], [ 63, %209 ], [ 63, %220 ], [ %222, %244 ], [ 63, %215 ], [ 63, %212 ], [ 63, %211 ], [ 63, %210 ], [ 0, %208 ], [ 48, %206 ], [ 48, %192 ], [ 48, %189 ], [ 48, %187 ], [ %158, %258 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %355 ], !dbg !2408
  %471 = phi i8 [ 0, %288 ], [ 0, %267 ], [ 0, %265 ], [ 0, %262 ], [ 0, %259 ], [ 0, %256 ], [ 0, %209 ], [ 0, %220 ], [ 0, %244 ], [ 0, %215 ], [ 0, %212 ], [ 0, %211 ], [ 0, %210 ], [ 0, %208 ], [ 1, %206 ], [ 1, %192 ], [ 1, %189 ], [ 1, %187 ], [ 0, %258 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %355 ], !dbg !2408
  %472 = phi i8 [ 1, %288 ], [ 1, %267 ], [ %266, %265 ], [ 0, %262 ], [ 0, %259 ], [ 0, %256 ], [ 0, %209 ], [ 0, %220 ], [ 0, %244 ], [ 0, %215 ], [ 0, %212 ], [ 0, %211 ], [ 0, %210 ], [ 0, %208 ], [ 0, %206 ], [ 0, %192 ], [ 0, %189 ], [ 0, %187 ], [ 0, %258 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ %359, %355 ], !dbg !2408
  %473 = phi i64 [ %274, %288 ], [ %130, %267 ], [ %130, %265 ], [ %130, %262 ], [ %130, %259 ], [ %130, %256 ], [ %130, %209 ], [ %130, %220 ], [ %130, %244 ], [ %130, %215 ], [ %130, %212 ], [ %130, %211 ], [ %130, %210 ], [ %130, %208 ], [ %130, %206 ], [ %130, %192 ], [ %130, %189 ], [ %130, %187 ], [ %130, %258 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %355 ]
  call void @llvm.dbg.value(metadata i64 %473, metadata !2259, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i8 %472, metadata !2285, metadata !DIExpression()), !dbg !2408
  call void @llvm.dbg.value(metadata i8 %471, metadata !2284, metadata !DIExpression()), !dbg !2408
  call void @llvm.dbg.value(metadata i8 %156, metadata !2283, metadata !DIExpression()), !dbg !2408
  call void @llvm.dbg.value(metadata i8 %470, metadata !2278, metadata !DIExpression()), !dbg !2408
  call void @llvm.dbg.value(metadata i8 %469, metadata !2276, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i8 %468, metadata !2275, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i64 %467, metadata !2261, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i64 %466, metadata !2269, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i64 %465, metadata !2268, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i64 %464, metadata !2267, metadata !DIExpression()), !dbg !2316
  br i1 %117, label %486, label %474, !dbg !2687

474:                                              ; preds = %463
  %475 = lshr i8 %470, 5, !dbg !2688
  %476 = zext i8 %475 to i64, !dbg !2688
  %477 = getelementptr inbounds i32, i32* %6, i64 %476, !dbg !2689
  %478 = load i32, i32* %477, align 4, !dbg !2689, !tbaa !1707
  %479 = and i8 %470, 31, !dbg !2690
  %480 = zext i8 %479 to i32, !dbg !2690
  %481 = shl nuw i32 1, %480, !dbg !2691
  %482 = and i32 %478, %481, !dbg !2691
  %483 = icmp eq i32 %482, 0, !dbg !2691
  %484 = icmp eq i8 %156, 0, !dbg !2692
  %485 = and i1 %484, %483, !dbg !2693
  br i1 %485, label %526, label %488, !dbg !2693

486:                                              ; preds = %463
  %487 = icmp eq i8 %156, 0, !dbg !2692
  br i1 %487, label %526, label %488, !dbg !2694

488:                                              ; preds = %256, %474, %486
  %489 = phi i64 [ %464, %474 ], [ %464, %486 ], [ %123, %256 ], !dbg !2695
  %490 = phi i64 [ %465, %474 ], [ %465, %486 ], [ %124, %256 ], !dbg !2316
  %491 = phi i64 [ %466, %474 ], [ %466, %486 ], [ %125, %256 ], !dbg !2333
  %492 = phi i64 [ %467, %474 ], [ %467, %486 ], [ %155, %256 ], !dbg !2686
  %493 = phi i8 [ %468, %474 ], [ %468, %486 ], [ %127, %256 ], !dbg !2337
  %494 = phi i8 [ %469, %474 ], [ %469, %486 ], [ %128, %256 ], !dbg !2338
  %495 = phi i8 [ %470, %474 ], [ %470, %486 ], [ %257, %256 ], !dbg !2408
  %496 = phi i8 [ %472, %474 ], [ %472, %486 ], [ 0, %256 ], !dbg !2408
  %497 = phi i64 [ %473, %474 ], [ %473, %486 ], [ %130, %256 ]
  call void @llvm.dbg.value(metadata i64 %497, metadata !2259, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i8 %496, metadata !2285, metadata !DIExpression()), !dbg !2408
  call void @llvm.dbg.value(metadata i8 %495, metadata !2278, metadata !DIExpression()), !dbg !2408
  call void @llvm.dbg.value(metadata i8 %494, metadata !2276, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i8 %493, metadata !2275, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i64 %492, metadata !2261, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i64 %491, metadata !2269, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i64 %490, metadata !2268, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i64 %489, metadata !2267, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.label(metadata !2313), !dbg !2696
  br i1 %109, label %498, label %629, !dbg !2697

498:                                              ; preds = %488
  call void @llvm.dbg.value(metadata i8 1, metadata !2284, metadata !DIExpression()), !dbg !2408
  %499 = and i8 %493, 1, !dbg !2699
  %500 = icmp eq i8 %499, 0, !dbg !2699
  %501 = and i1 %110, %500, !dbg !2699
  br i1 %501, label %502, label %518, !dbg !2699

502:                                              ; preds = %498
  %503 = icmp ult i64 %490, %497, !dbg !2701
  br i1 %503, label %504, label %506, !dbg !2705

504:                                              ; preds = %502
  %505 = getelementptr inbounds i8, i8* %0, i64 %490, !dbg !2701
  store i8 39, i8* %505, align 1, !dbg !2701, !tbaa !1459
  br label %506, !dbg !2701

506:                                              ; preds = %504, %502
  %507 = add i64 %490, 1, !dbg !2705
  call void @llvm.dbg.value(metadata i64 %507, metadata !2268, metadata !DIExpression()), !dbg !2316
  %508 = icmp ult i64 %507, %497, !dbg !2706
  br i1 %508, label %509, label %511, !dbg !2709

509:                                              ; preds = %506
  %510 = getelementptr inbounds i8, i8* %0, i64 %507, !dbg !2706
  store i8 36, i8* %510, align 1, !dbg !2706, !tbaa !1459
  br label %511, !dbg !2706

511:                                              ; preds = %509, %506
  %512 = add i64 %490, 2, !dbg !2709
  call void @llvm.dbg.value(metadata i64 %512, metadata !2268, metadata !DIExpression()), !dbg !2316
  %513 = icmp ult i64 %512, %497, !dbg !2710
  br i1 %513, label %514, label %516, !dbg !2713

514:                                              ; preds = %511
  %515 = getelementptr inbounds i8, i8* %0, i64 %512, !dbg !2710
  store i8 39, i8* %515, align 1, !dbg !2710, !tbaa !1459
  br label %516, !dbg !2710

516:                                              ; preds = %514, %511
  %517 = add i64 %490, 3, !dbg !2713
  call void @llvm.dbg.value(metadata i64 %517, metadata !2268, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i8 1, metadata !2275, metadata !DIExpression()), !dbg !2316
  br label %518, !dbg !2714

518:                                              ; preds = %498, %516
  %519 = phi i64 [ %517, %516 ], [ %490, %498 ], !dbg !2408
  %520 = phi i8 [ 1, %516 ], [ %493, %498 ], !dbg !2316
  call void @llvm.dbg.value(metadata i8 %520, metadata !2275, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i64 %519, metadata !2268, metadata !DIExpression()), !dbg !2316
  %521 = icmp ult i64 %519, %497, !dbg !2715
  br i1 %521, label %522, label %524, !dbg !2718

522:                                              ; preds = %518
  %523 = getelementptr inbounds i8, i8* %0, i64 %519, !dbg !2715
  store i8 92, i8* %523, align 1, !dbg !2715, !tbaa !1459
  br label %524, !dbg !2715

524:                                              ; preds = %518, %522
  %525 = add i64 %519, 1, !dbg !2718
  call void @llvm.dbg.value(metadata i64 %525, metadata !2268, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i64 %536, metadata !2259, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i8 %535, metadata !2285, metadata !DIExpression()), !dbg !2408
  call void @llvm.dbg.value(metadata i8 %534, metadata !2284, metadata !DIExpression()), !dbg !2408
  call void @llvm.dbg.value(metadata i8 %533, metadata !2278, metadata !DIExpression()), !dbg !2408
  call void @llvm.dbg.value(metadata i8 %532, metadata !2276, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i8 %531, metadata !2275, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i64 %530, metadata !2261, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i64 %529, metadata !2269, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i64 %528, metadata !2268, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i64 %527, metadata !2267, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.label(metadata !2314), !dbg !2719
  br label %553, !dbg !2720

526:                                              ; preds = %428, %253, %474, %252, %486
  %527 = phi i64 [ %464, %486 ], [ %123, %252 ], [ %464, %474 ], [ %123, %253 ], [ %367, %428 ], !dbg !2695
  %528 = phi i64 [ %465, %486 ], [ %124, %252 ], [ %465, %474 ], [ %124, %253 ], [ %429, %428 ], !dbg !2316
  %529 = phi i64 [ %466, %486 ], [ %125, %252 ], [ %466, %474 ], [ %125, %253 ], [ %125, %428 ], !dbg !2333
  %530 = phi i64 [ %467, %486 ], [ %155, %252 ], [ %467, %474 ], [ %155, %253 ], [ %356, %428 ], !dbg !2686
  %531 = phi i8 [ %468, %486 ], [ %127, %252 ], [ %468, %474 ], [ %127, %253 ], [ %430, %428 ], !dbg !2337
  %532 = phi i8 [ %469, %486 ], [ %128, %252 ], [ %469, %474 ], [ %128, %253 ], [ %128, %428 ], !dbg !2338
  %533 = phi i8 [ %470, %486 ], [ 92, %252 ], [ %470, %474 ], [ 92, %253 ], [ %431, %428 ], !dbg !2723
  %534 = phi i8 [ %471, %486 ], [ 0, %252 ], [ %471, %474 ], [ 0, %253 ], [ %433, %428 ], !dbg !2408
  %535 = phi i8 [ %472, %486 ], [ 0, %252 ], [ %472, %474 ], [ 0, %253 ], [ %359, %428 ], !dbg !2408
  %536 = phi i64 [ %473, %486 ], [ %130, %252 ], [ %473, %474 ], [ %130, %253 ], [ %130, %428 ]
  call void @llvm.dbg.value(metadata i64 %536, metadata !2259, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i8 %535, metadata !2285, metadata !DIExpression()), !dbg !2408
  call void @llvm.dbg.value(metadata i8 %534, metadata !2284, metadata !DIExpression()), !dbg !2408
  call void @llvm.dbg.value(metadata i8 %533, metadata !2278, metadata !DIExpression()), !dbg !2408
  call void @llvm.dbg.value(metadata i8 %532, metadata !2276, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i8 %531, metadata !2275, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i64 %530, metadata !2261, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i64 %529, metadata !2269, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i64 %528, metadata !2268, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i64 %527, metadata !2267, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.label(metadata !2314), !dbg !2719
  %537 = and i8 %531, 1, !dbg !2720
  %538 = icmp ne i8 %537, 0, !dbg !2720
  %539 = and i8 %534, 1, !dbg !2720
  %540 = icmp eq i8 %539, 0, !dbg !2720
  %541 = and i1 %538, %540, !dbg !2720
  br i1 %541, label %542, label %553, !dbg !2720

542:                                              ; preds = %526
  %543 = icmp ult i64 %528, %536, !dbg !2724
  br i1 %543, label %544, label %546, !dbg !2728

544:                                              ; preds = %542
  %545 = getelementptr inbounds i8, i8* %0, i64 %528, !dbg !2724
  store i8 39, i8* %545, align 1, !dbg !2724, !tbaa !1459
  br label %546, !dbg !2724

546:                                              ; preds = %544, %542
  %547 = add i64 %528, 1, !dbg !2728
  call void @llvm.dbg.value(metadata i64 %547, metadata !2268, metadata !DIExpression()), !dbg !2316
  %548 = icmp ult i64 %547, %536, !dbg !2729
  br i1 %548, label %549, label %551, !dbg !2732

549:                                              ; preds = %546
  %550 = getelementptr inbounds i8, i8* %0, i64 %547, !dbg !2729
  store i8 39, i8* %550, align 1, !dbg !2729, !tbaa !1459
  br label %551, !dbg !2729

551:                                              ; preds = %549, %546
  %552 = add i64 %528, 2, !dbg !2732
  call void @llvm.dbg.value(metadata i64 %552, metadata !2268, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i8 0, metadata !2275, metadata !DIExpression()), !dbg !2316
  br label %553, !dbg !2733

553:                                              ; preds = %524, %526, %551
  %554 = phi i64 [ %536, %551 ], [ %536, %526 ], [ %497, %524 ]
  %555 = phi i8 [ %535, %551 ], [ %535, %526 ], [ %496, %524 ]
  %556 = phi i8 [ %533, %551 ], [ %533, %526 ], [ %495, %524 ]
  %557 = phi i8 [ %532, %551 ], [ %532, %526 ], [ %494, %524 ]
  %558 = phi i64 [ %530, %551 ], [ %530, %526 ], [ %492, %524 ]
  %559 = phi i64 [ %529, %551 ], [ %529, %526 ], [ %491, %524 ]
  %560 = phi i64 [ %527, %551 ], [ %527, %526 ], [ %489, %524 ]
  %561 = phi i64 [ %552, %551 ], [ %528, %526 ], [ %525, %524 ], !dbg !2408
  %562 = phi i8 [ 0, %551 ], [ %531, %526 ], [ %520, %524 ], !dbg !2316
  call void @llvm.dbg.value(metadata i8 %562, metadata !2275, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i64 %561, metadata !2268, metadata !DIExpression()), !dbg !2316
  %563 = icmp ult i64 %561, %554, !dbg !2734
  br i1 %563, label %564, label %566, !dbg !2737

564:                                              ; preds = %553
  %565 = getelementptr inbounds i8, i8* %0, i64 %561, !dbg !2734
  store i8 %556, i8* %565, align 1, !dbg !2734, !tbaa !1459
  br label %566, !dbg !2734

566:                                              ; preds = %564, %553
  %567 = add i64 %561, 1, !dbg !2737
  call void @llvm.dbg.value(metadata i64 %567, metadata !2268, metadata !DIExpression()), !dbg !2316
  %568 = and i8 %555, 1, !dbg !2738
  %569 = icmp eq i8 %568, 0, !dbg !2738
  %570 = select i1 %569, i8 0, i8 %129, !dbg !2740
  call void @llvm.dbg.value(metadata i8 %570, metadata !2277, metadata !DIExpression()), !dbg !2316
  br label %571, !dbg !2741

571:                                              ; preds = %566, %208
  %572 = phi i64 [ %560, %566 ], [ %123, %208 ], !dbg !2695
  %573 = phi i64 [ %567, %566 ], [ %124, %208 ], !dbg !2316
  %574 = phi i64 [ %559, %566 ], [ %125, %208 ], !dbg !2333
  %575 = phi i64 [ %558, %566 ], [ %155, %208 ], !dbg !2686
  %576 = phi i8 [ %562, %566 ], [ %127, %208 ], !dbg !2337
  %577 = phi i8 [ %557, %566 ], [ %128, %208 ], !dbg !2316
  %578 = phi i8 [ %570, %566 ], [ %129, %208 ], !dbg !2339
  %579 = phi i64 [ %554, %566 ], [ %130, %208 ]
  call void @llvm.dbg.value(metadata i64 %579, metadata !2259, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i8 %578, metadata !2277, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i8 %577, metadata !2276, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i8 %576, metadata !2275, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i64 %575, metadata !2261, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i64 %574, metadata !2269, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i64 %573, metadata !2268, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i64 %572, metadata !2267, metadata !DIExpression()), !dbg !2316
  %580 = add i64 %572, 1, !dbg !2742
  call void @llvm.dbg.value(metadata i64 %580, metadata !2267, metadata !DIExpression()), !dbg !2316
  br label %122, !dbg !2743, !llvm.loop !2744

581:                                              ; preds = %132, %136
  %582 = phi i64 [ -1, %132 ], [ %123, %136 ]
  call void @llvm.dbg.value(metadata i64 %124, metadata !2268, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i64 %124, metadata !2268, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i64 %125, metadata !2269, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i64 %125, metadata !2269, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i8 %127, metadata !2275, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i8 %127, metadata !2275, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i8 %128, metadata !2276, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i8 %128, metadata !2276, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i8 %129, metadata !2277, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i8 %129, metadata !2277, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i64 %130, metadata !2259, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i64 %130, metadata !2259, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i64 %124, metadata !2268, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i64 %124, metadata !2268, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i64 %125, metadata !2269, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i64 %125, metadata !2269, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i8 %127, metadata !2275, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i8 %127, metadata !2275, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i8 %128, metadata !2276, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i8 %128, metadata !2276, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i8 %129, metadata !2277, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i8 %129, metadata !2277, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i64 %130, metadata !2259, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i64 %130, metadata !2259, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i64 %124, metadata !2268, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i64 %124, metadata !2268, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i64 %125, metadata !2269, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i64 %125, metadata !2269, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i8 %127, metadata !2275, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i8 %127, metadata !2275, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i8 %128, metadata !2276, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i8 %128, metadata !2276, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i8 %129, metadata !2277, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i8 %129, metadata !2277, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i64 %130, metadata !2259, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i64 %130, metadata !2259, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i64 %124, metadata !2268, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i64 %124, metadata !2268, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i64 %125, metadata !2269, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i64 %125, metadata !2269, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i8 %127, metadata !2275, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i8 %127, metadata !2275, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i8 %128, metadata !2276, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i8 %128, metadata !2276, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i8 %129, metadata !2277, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i8 %129, metadata !2277, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i64 %130, metadata !2259, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i64 %130, metadata !2259, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i64 %124, metadata !2268, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i64 %124, metadata !2268, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i64 %125, metadata !2269, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i64 %125, metadata !2269, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i64 %582, metadata !2261, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i64 %582, metadata !2261, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i8 %127, metadata !2275, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i8 %127, metadata !2275, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i8 %128, metadata !2276, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i8 %128, metadata !2276, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i8 %129, metadata !2277, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i8 %129, metadata !2277, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i64 %130, metadata !2259, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i64 %130, metadata !2259, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i64 %124, metadata !2268, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i64 %124, metadata !2268, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i64 %125, metadata !2269, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i64 %125, metadata !2269, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i64 %582, metadata !2261, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i64 %582, metadata !2261, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i8 %127, metadata !2275, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i8 %127, metadata !2275, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i8 %128, metadata !2276, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i8 %128, metadata !2276, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i8 %129, metadata !2277, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i8 %129, metadata !2277, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i64 %130, metadata !2259, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i64 %130, metadata !2259, metadata !DIExpression()), !dbg !2316
  %583 = icmp eq i64 %124, 0, !dbg !2746
  %584 = and i1 %110, %583, !dbg !2748
  %585 = xor i1 %584, true, !dbg !2748
  %586 = or i1 %109, %585, !dbg !2748
  br i1 %586, label %587, label %629, !dbg !2748

587:                                              ; preds = %581
  %588 = and i1 %110, %109, !dbg !2749
  %589 = xor i1 %588, true, !dbg !2749
  %590 = and i8 %128, 1, !dbg !2751
  %591 = icmp eq i8 %590, 0, !dbg !2751
  %592 = or i1 %591, %589, !dbg !2749
  br i1 %592, label %602, label %593, !dbg !2749

593:                                              ; preds = %587
  %594 = and i8 %129, 1, !dbg !2752
  %595 = icmp eq i8 %594, 0, !dbg !2752
  br i1 %595, label %598, label %596, !dbg !2755

596:                                              ; preds = %593
  call void @llvm.dbg.value(metadata i64 %582, metadata !2261, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i8* %94, metadata !2265, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i8* %95, metadata !2266, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i64 %125, metadata !2269, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i64 %582, metadata !2261, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i8* %94, metadata !2265, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i8* %95, metadata !2266, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i64 %125, metadata !2269, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i64 %582, metadata !2261, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i8* %94, metadata !2265, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i8* %95, metadata !2266, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i64 %125, metadata !2269, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i64 %582, metadata !2261, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i8* %94, metadata !2265, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i8* %95, metadata !2266, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i64 %125, metadata !2269, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i8* %94, metadata !2265, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i8* %95, metadata !2266, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i64 %125, metadata !2269, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i64 %582, metadata !2261, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i8* %94, metadata !2265, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i8* %95, metadata !2266, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i64 %125, metadata !2269, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i64 %582, metadata !2261, metadata !DIExpression()), !dbg !2316
  %597 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %125, i8* %2, i64 %582, i32 5, i32 %5, i32* %6, i8* %94, i8* %95), !dbg !2756
  br label %645, !dbg !2757

598:                                              ; preds = %593
  %599 = icmp eq i64 %130, 0, !dbg !2758
  %600 = icmp ne i64 %125, 0, !dbg !2760
  %601 = and i1 %600, %599, !dbg !2761
  br i1 %601, label %26, label %602, !dbg !2761

602:                                              ; preds = %587, %598
  call void @llvm.dbg.value(metadata i8* %97, metadata !2270, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i8* %97, metadata !2270, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i64 %124, metadata !2268, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i64 %124, metadata !2268, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i64 %130, metadata !2259, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i64 %130, metadata !2259, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i8* %97, metadata !2270, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i8* %97, metadata !2270, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i64 %124, metadata !2268, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i64 %124, metadata !2268, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i64 %130, metadata !2259, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i64 %130, metadata !2259, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i8* %97, metadata !2270, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i8* %97, metadata !2270, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i64 %124, metadata !2268, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i64 %124, metadata !2268, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i64 %130, metadata !2259, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i64 %130, metadata !2259, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i8* %97, metadata !2270, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i8* %97, metadata !2270, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i64 %124, metadata !2268, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i64 %124, metadata !2268, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i64 %130, metadata !2259, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i64 %130, metadata !2259, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i8* %97, metadata !2270, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i8* %97, metadata !2270, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i64 %124, metadata !2268, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i64 %124, metadata !2268, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i64 %130, metadata !2259, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i64 %130, metadata !2259, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i8* %97, metadata !2270, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i8* %97, metadata !2270, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i64 %124, metadata !2268, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i64 %124, metadata !2268, metadata !DIExpression()), !dbg !2316
  %603 = icmp ne i8* %97, null, !dbg !2762
  %604 = and i1 %603, %109, !dbg !2764
  br i1 %604, label %605, label %620, !dbg !2764

605:                                              ; preds = %602
  call void @llvm.dbg.value(metadata i8* %97, metadata !2270, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i64 %124, metadata !2268, metadata !DIExpression()), !dbg !2316
  %606 = load i8, i8* %97, align 1, !dbg !2765, !tbaa !1459
  %607 = icmp eq i8 %606, 0, !dbg !2768
  br i1 %607, label %620, label %608, !dbg !2768

608:                                              ; preds = %605, %615
  %609 = phi i8 [ %618, %615 ], [ %606, %605 ]
  %610 = phi i8* [ %617, %615 ], [ %97, %605 ]
  %611 = phi i64 [ %616, %615 ], [ %124, %605 ]
  call void @llvm.dbg.value(metadata i8* %610, metadata !2270, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i64 %611, metadata !2268, metadata !DIExpression()), !dbg !2316
  %612 = icmp ult i64 %611, %130, !dbg !2769
  br i1 %612, label %613, label %615, !dbg !2772

613:                                              ; preds = %608
  %614 = getelementptr inbounds i8, i8* %0, i64 %611, !dbg !2769
  store i8 %609, i8* %614, align 1, !dbg !2769, !tbaa !1459
  br label %615, !dbg !2769

615:                                              ; preds = %613, %608
  %616 = add i64 %611, 1, !dbg !2772
  call void @llvm.dbg.value(metadata i64 %616, metadata !2268, metadata !DIExpression()), !dbg !2316
  %617 = getelementptr inbounds i8, i8* %610, i64 1, !dbg !2773
  call void @llvm.dbg.value(metadata i8* %617, metadata !2270, metadata !DIExpression()), !dbg !2316
  %618 = load i8, i8* %617, align 1, !dbg !2765, !tbaa !1459
  %619 = icmp eq i8 %618, 0, !dbg !2768
  br i1 %619, label %620, label %608, !dbg !2768, !llvm.loop !2774

620:                                              ; preds = %615, %605, %602
  %621 = phi i64 [ %124, %602 ], [ %124, %605 ], [ %616, %615 ], !dbg !2370
  call void @llvm.dbg.value(metadata i64 %621, metadata !2268, metadata !DIExpression()), !dbg !2316
  %622 = icmp ult i64 %621, %130, !dbg !2776
  br i1 %622, label %623, label %645, !dbg !2778

623:                                              ; preds = %620
  %624 = getelementptr inbounds i8, i8* %0, i64 %621, !dbg !2779
  store i8 0, i8* %624, align 1, !dbg !2780, !tbaa !1459
  br label %645, !dbg !2779

625:                                              ; preds = %210, %252, %254, %265, %268, %354
  %626 = phi i64 [ %305, %354 ], [ %155, %268 ], [ %155, %265 ], [ %155, %254 ], [ %155, %252 ], [ %155, %210 ]
  call void @llvm.dbg.value(metadata i64 %631, metadata !2259, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i64 %630, metadata !2261, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.label(metadata !2315), !dbg !2781
  %627 = icmp eq i8 %101, 0, !dbg !2782
  %628 = select i1 %627, i32 2, i32 4, !dbg !2782
  br label %635, !dbg !2782

629:                                              ; preds = %581, %488, %160, %373
  %630 = phi i64 [ %356, %373 ], [ %492, %488 ], [ %155, %160 ], [ %582, %581 ]
  %631 = phi i64 [ %130, %373 ], [ %497, %488 ], [ %130, %160 ], [ %130, %581 ]
  call void @llvm.dbg.value(metadata i64 %631, metadata !2259, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i64 %630, metadata !2261, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.label(metadata !2315), !dbg !2781
  %632 = icmp eq i32 %93, 2, !dbg !2784
  %633 = icmp eq i8 %101, 0, !dbg !2782
  %634 = select i1 %633, i32 2, i32 4, !dbg !2782
  br i1 %632, label %635, label %639, !dbg !2782

635:                                              ; preds = %625, %629
  %636 = phi i32 [ %628, %625 ], [ %634, %629 ]
  %637 = phi i64 [ %130, %625 ], [ %631, %629 ]
  %638 = phi i64 [ %626, %625 ], [ %630, %629 ]
  br label %639, !dbg !2782

639:                                              ; preds = %224, %147, %629, %635
  %640 = phi i64 [ %637, %635 ], [ %631, %629 ], [ %130, %147 ], [ %130, %224 ]
  %641 = phi i64 [ %638, %635 ], [ %630, %629 ], [ %155, %224 ], [ %145, %147 ]
  %642 = phi i32 [ %636, %635 ], [ %93, %629 ], [ 5, %224 ], [ %93, %147 ]
  call void @llvm.dbg.value(metadata i32 %642, metadata !2262, metadata !DIExpression()), !dbg !2316
  %643 = and i32 %5, -3, !dbg !2785
  %644 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %640, i8* %2, i64 %641, i32 %642, i32 %643, i32* null, i8* %94, i8* %95), !dbg !2786
  br label %645, !dbg !2787

645:                                              ; preds = %620, %623, %639, %596
  %646 = phi i64 [ %644, %639 ], [ %597, %596 ], [ %621, %623 ], [ %621, %620 ]
  ret i64 %646, !dbg !2788
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @gettext_quote(i8* %0, i32 %1) unnamed_addr #8 !dbg !2789 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2793, metadata !DIExpression()), !dbg !2797
  call void @llvm.dbg.value(metadata i32 %1, metadata !2794, metadata !DIExpression()), !dbg !2797
  %3 = tail call i8* @dcgettext(i8* null, i8* %0, i32 5) #19, !dbg !2798
  call void @llvm.dbg.value(metadata i8* %3, metadata !2795, metadata !DIExpression()), !dbg !2797
  %4 = icmp eq i8* %3, %0, !dbg !2799
  br i1 %4, label %5, label %71, !dbg !2801

5:                                                ; preds = %2
  %6 = tail call i8* @locale_charset() #19, !dbg !2802
  call void @llvm.dbg.value(metadata i8* %6, metadata !2796, metadata !DIExpression()), !dbg !2797
  call void @llvm.dbg.value(metadata i8* %6, metadata !2803, metadata !DIExpression()), !dbg !2819
  call void @llvm.dbg.value(metadata i8* undef, metadata !2809, metadata !DIExpression()), !dbg !2819
  call void @llvm.dbg.value(metadata i8 85, metadata !2810, metadata !DIExpression()), !dbg !2819
  call void @llvm.dbg.value(metadata i8 84, metadata !2811, metadata !DIExpression()), !dbg !2819
  call void @llvm.dbg.value(metadata i8 70, metadata !2812, metadata !DIExpression()), !dbg !2819
  call void @llvm.dbg.value(metadata i8 45, metadata !2813, metadata !DIExpression()), !dbg !2819
  call void @llvm.dbg.value(metadata i8 56, metadata !2814, metadata !DIExpression()), !dbg !2819
  call void @llvm.dbg.value(metadata i8 0, metadata !2815, metadata !DIExpression()), !dbg !2819
  call void @llvm.dbg.value(metadata i8 0, metadata !2816, metadata !DIExpression()), !dbg !2819
  call void @llvm.dbg.value(metadata i8 0, metadata !2817, metadata !DIExpression()), !dbg !2819
  call void @llvm.dbg.value(metadata i8 0, metadata !2818, metadata !DIExpression()), !dbg !2819
  %7 = load i8, i8* %6, align 1, !dbg !2822, !tbaa !1459
  %8 = and i8 %7, -33, !dbg !2822
  switch i8 %8, label %68 [
    i8 85, label %9
    i8 71, label %35
  ], !dbg !2822

9:                                                ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !2824, metadata !DIExpression()), !dbg !2838
  call void @llvm.dbg.value(metadata i8* undef, metadata !2829, metadata !DIExpression()), !dbg !2838
  call void @llvm.dbg.value(metadata i8 84, metadata !2830, metadata !DIExpression()), !dbg !2838
  call void @llvm.dbg.value(metadata i8 70, metadata !2831, metadata !DIExpression()), !dbg !2838
  call void @llvm.dbg.value(metadata i8 45, metadata !2832, metadata !DIExpression()), !dbg !2838
  call void @llvm.dbg.value(metadata i8 56, metadata !2833, metadata !DIExpression()), !dbg !2838
  call void @llvm.dbg.value(metadata i8 0, metadata !2834, metadata !DIExpression()), !dbg !2838
  call void @llvm.dbg.value(metadata i8 0, metadata !2835, metadata !DIExpression()), !dbg !2838
  call void @llvm.dbg.value(metadata i8 0, metadata !2836, metadata !DIExpression()), !dbg !2838
  call void @llvm.dbg.value(metadata i8 0, metadata !2837, metadata !DIExpression()), !dbg !2838
  %10 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !2842
  %11 = load i8, i8* %10, align 1, !dbg !2842, !tbaa !1459
  %12 = and i8 %11, -33, !dbg !2842
  %13 = icmp eq i8 %12, 84, !dbg !2842
  br i1 %13, label %14, label %68, !dbg !2842

14:                                               ; preds = %9
  call void @llvm.dbg.value(metadata i8* %6, metadata !2844, metadata !DIExpression()), !dbg !2857
  call void @llvm.dbg.value(metadata i8* undef, metadata !2849, metadata !DIExpression()), !dbg !2857
  call void @llvm.dbg.value(metadata i8 70, metadata !2850, metadata !DIExpression()), !dbg !2857
  call void @llvm.dbg.value(metadata i8 45, metadata !2851, metadata !DIExpression()), !dbg !2857
  call void @llvm.dbg.value(metadata i8 56, metadata !2852, metadata !DIExpression()), !dbg !2857
  call void @llvm.dbg.value(metadata i8 0, metadata !2853, metadata !DIExpression()), !dbg !2857
  call void @llvm.dbg.value(metadata i8 0, metadata !2854, metadata !DIExpression()), !dbg !2857
  call void @llvm.dbg.value(metadata i8 0, metadata !2855, metadata !DIExpression()), !dbg !2857
  call void @llvm.dbg.value(metadata i8 0, metadata !2856, metadata !DIExpression()), !dbg !2857
  %15 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !2861
  %16 = load i8, i8* %15, align 1, !dbg !2861, !tbaa !1459
  %17 = and i8 %16, -33, !dbg !2861
  %18 = icmp eq i8 %17, 70, !dbg !2861
  br i1 %18, label %19, label %68, !dbg !2861

19:                                               ; preds = %14
  call void @llvm.dbg.value(metadata i8* %6, metadata !2863, metadata !DIExpression()), !dbg !2875
  call void @llvm.dbg.value(metadata i8* undef, metadata !2868, metadata !DIExpression()), !dbg !2875
  call void @llvm.dbg.value(metadata i8 45, metadata !2869, metadata !DIExpression()), !dbg !2875
  call void @llvm.dbg.value(metadata i8 56, metadata !2870, metadata !DIExpression()), !dbg !2875
  call void @llvm.dbg.value(metadata i8 0, metadata !2871, metadata !DIExpression()), !dbg !2875
  call void @llvm.dbg.value(metadata i8 0, metadata !2872, metadata !DIExpression()), !dbg !2875
  call void @llvm.dbg.value(metadata i8 0, metadata !2873, metadata !DIExpression()), !dbg !2875
  call void @llvm.dbg.value(metadata i8 0, metadata !2874, metadata !DIExpression()), !dbg !2875
  %20 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !2879
  %21 = load i8, i8* %20, align 1, !dbg !2879, !tbaa !1459
  %22 = icmp eq i8 %21, 45, !dbg !2879
  br i1 %22, label %23, label %68, !dbg !2881

23:                                               ; preds = %19
  call void @llvm.dbg.value(metadata i8* %6, metadata !2882, metadata !DIExpression()), !dbg !2893
  call void @llvm.dbg.value(metadata i8* undef, metadata !2887, metadata !DIExpression()), !dbg !2893
  call void @llvm.dbg.value(metadata i8 56, metadata !2888, metadata !DIExpression()), !dbg !2893
  call void @llvm.dbg.value(metadata i8 0, metadata !2889, metadata !DIExpression()), !dbg !2893
  call void @llvm.dbg.value(metadata i8 0, metadata !2890, metadata !DIExpression()), !dbg !2893
  call void @llvm.dbg.value(metadata i8 0, metadata !2891, metadata !DIExpression()), !dbg !2893
  call void @llvm.dbg.value(metadata i8 0, metadata !2892, metadata !DIExpression()), !dbg !2893
  %24 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !2897
  %25 = load i8, i8* %24, align 1, !dbg !2897, !tbaa !1459
  %26 = icmp eq i8 %25, 56, !dbg !2897
  br i1 %26, label %27, label %68, !dbg !2899

27:                                               ; preds = %23
  call void @llvm.dbg.value(metadata i8* %6, metadata !2900, metadata !DIExpression()), !dbg !2910
  call void @llvm.dbg.value(metadata i8* undef, metadata !2905, metadata !DIExpression()), !dbg !2910
  call void @llvm.dbg.value(metadata i8 0, metadata !2906, metadata !DIExpression()), !dbg !2910
  call void @llvm.dbg.value(metadata i8 0, metadata !2907, metadata !DIExpression()), !dbg !2910
  call void @llvm.dbg.value(metadata i8 0, metadata !2908, metadata !DIExpression()), !dbg !2910
  call void @llvm.dbg.value(metadata i8 0, metadata !2909, metadata !DIExpression()), !dbg !2910
  %28 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !2914
  %29 = load i8, i8* %28, align 1, !dbg !2914, !tbaa !1459
  %30 = icmp eq i8 %29, 0, !dbg !2914
  br i1 %30, label %31, label %68, !dbg !2916

31:                                               ; preds = %27
  %32 = load i8, i8* %0, align 1, !dbg !2917, !tbaa !1459
  %33 = icmp eq i8 %32, 96, !dbg !2918
  %34 = select i1 %33, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14.79, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15.80, i64 0, i64 0), !dbg !2917
  br label %71, !dbg !2919

35:                                               ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !2824, metadata !DIExpression()), !dbg !2920
  call void @llvm.dbg.value(metadata i8* undef, metadata !2829, metadata !DIExpression()), !dbg !2920
  call void @llvm.dbg.value(metadata i8 66, metadata !2830, metadata !DIExpression()), !dbg !2920
  call void @llvm.dbg.value(metadata i8 49, metadata !2831, metadata !DIExpression()), !dbg !2920
  call void @llvm.dbg.value(metadata i8 56, metadata !2832, metadata !DIExpression()), !dbg !2920
  call void @llvm.dbg.value(metadata i8 48, metadata !2833, metadata !DIExpression()), !dbg !2920
  call void @llvm.dbg.value(metadata i8 51, metadata !2834, metadata !DIExpression()), !dbg !2920
  call void @llvm.dbg.value(metadata i8 48, metadata !2835, metadata !DIExpression()), !dbg !2920
  call void @llvm.dbg.value(metadata i8 0, metadata !2836, metadata !DIExpression()), !dbg !2920
  call void @llvm.dbg.value(metadata i8 0, metadata !2837, metadata !DIExpression()), !dbg !2920
  %36 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !2924
  %37 = load i8, i8* %36, align 1, !dbg !2924, !tbaa !1459
  %38 = and i8 %37, -33, !dbg !2924
  %39 = icmp eq i8 %38, 66, !dbg !2924
  br i1 %39, label %40, label %68, !dbg !2924

40:                                               ; preds = %35
  call void @llvm.dbg.value(metadata i8* %6, metadata !2844, metadata !DIExpression()), !dbg !2925
  call void @llvm.dbg.value(metadata i8* undef, metadata !2849, metadata !DIExpression()), !dbg !2925
  call void @llvm.dbg.value(metadata i8 49, metadata !2850, metadata !DIExpression()), !dbg !2925
  call void @llvm.dbg.value(metadata i8 56, metadata !2851, metadata !DIExpression()), !dbg !2925
  call void @llvm.dbg.value(metadata i8 48, metadata !2852, metadata !DIExpression()), !dbg !2925
  call void @llvm.dbg.value(metadata i8 51, metadata !2853, metadata !DIExpression()), !dbg !2925
  call void @llvm.dbg.value(metadata i8 48, metadata !2854, metadata !DIExpression()), !dbg !2925
  call void @llvm.dbg.value(metadata i8 0, metadata !2855, metadata !DIExpression()), !dbg !2925
  call void @llvm.dbg.value(metadata i8 0, metadata !2856, metadata !DIExpression()), !dbg !2925
  %41 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !2927
  %42 = load i8, i8* %41, align 1, !dbg !2927, !tbaa !1459
  %43 = icmp eq i8 %42, 49, !dbg !2927
  br i1 %43, label %44, label %68, !dbg !2928

44:                                               ; preds = %40
  call void @llvm.dbg.value(metadata i8* %6, metadata !2863, metadata !DIExpression()), !dbg !2929
  call void @llvm.dbg.value(metadata i8* undef, metadata !2868, metadata !DIExpression()), !dbg !2929
  call void @llvm.dbg.value(metadata i8 56, metadata !2869, metadata !DIExpression()), !dbg !2929
  call void @llvm.dbg.value(metadata i8 48, metadata !2870, metadata !DIExpression()), !dbg !2929
  call void @llvm.dbg.value(metadata i8 51, metadata !2871, metadata !DIExpression()), !dbg !2929
  call void @llvm.dbg.value(metadata i8 48, metadata !2872, metadata !DIExpression()), !dbg !2929
  call void @llvm.dbg.value(metadata i8 0, metadata !2873, metadata !DIExpression()), !dbg !2929
  call void @llvm.dbg.value(metadata i8 0, metadata !2874, metadata !DIExpression()), !dbg !2929
  %45 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !2931
  %46 = load i8, i8* %45, align 1, !dbg !2931, !tbaa !1459
  %47 = icmp eq i8 %46, 56, !dbg !2931
  br i1 %47, label %48, label %68, !dbg !2932

48:                                               ; preds = %44
  call void @llvm.dbg.value(metadata i8* %6, metadata !2882, metadata !DIExpression()), !dbg !2933
  call void @llvm.dbg.value(metadata i8* undef, metadata !2887, metadata !DIExpression()), !dbg !2933
  call void @llvm.dbg.value(metadata i8 48, metadata !2888, metadata !DIExpression()), !dbg !2933
  call void @llvm.dbg.value(metadata i8 51, metadata !2889, metadata !DIExpression()), !dbg !2933
  call void @llvm.dbg.value(metadata i8 48, metadata !2890, metadata !DIExpression()), !dbg !2933
  call void @llvm.dbg.value(metadata i8 0, metadata !2891, metadata !DIExpression()), !dbg !2933
  call void @llvm.dbg.value(metadata i8 0, metadata !2892, metadata !DIExpression()), !dbg !2933
  %49 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !2935
  %50 = load i8, i8* %49, align 1, !dbg !2935, !tbaa !1459
  %51 = icmp eq i8 %50, 48, !dbg !2935
  br i1 %51, label %52, label %68, !dbg !2936

52:                                               ; preds = %48
  call void @llvm.dbg.value(metadata i8* %6, metadata !2900, metadata !DIExpression()), !dbg !2937
  call void @llvm.dbg.value(metadata i8* undef, metadata !2905, metadata !DIExpression()), !dbg !2937
  call void @llvm.dbg.value(metadata i8 51, metadata !2906, metadata !DIExpression()), !dbg !2937
  call void @llvm.dbg.value(metadata i8 48, metadata !2907, metadata !DIExpression()), !dbg !2937
  call void @llvm.dbg.value(metadata i8 0, metadata !2908, metadata !DIExpression()), !dbg !2937
  call void @llvm.dbg.value(metadata i8 0, metadata !2909, metadata !DIExpression()), !dbg !2937
  %53 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !2939
  %54 = load i8, i8* %53, align 1, !dbg !2939, !tbaa !1459
  %55 = icmp eq i8 %54, 51, !dbg !2939
  br i1 %55, label %56, label %68, !dbg !2940

56:                                               ; preds = %52
  call void @llvm.dbg.value(metadata i8* %6, metadata !2941, metadata !DIExpression()), !dbg !2950
  call void @llvm.dbg.value(metadata i8* undef, metadata !2946, metadata !DIExpression()), !dbg !2950
  call void @llvm.dbg.value(metadata i8 48, metadata !2947, metadata !DIExpression()), !dbg !2950
  call void @llvm.dbg.value(metadata i8 0, metadata !2948, metadata !DIExpression()), !dbg !2950
  call void @llvm.dbg.value(metadata i8 0, metadata !2949, metadata !DIExpression()), !dbg !2950
  %57 = getelementptr inbounds i8, i8* %6, i64 6, !dbg !2954
  %58 = load i8, i8* %57, align 1, !dbg !2954, !tbaa !1459
  %59 = icmp eq i8 %58, 48, !dbg !2954
  br i1 %59, label %60, label %68, !dbg !2956

60:                                               ; preds = %56
  call void @llvm.dbg.value(metadata i8* %6, metadata !2957, metadata !DIExpression()), !dbg !2965
  call void @llvm.dbg.value(metadata i8* undef, metadata !2962, metadata !DIExpression()), !dbg !2965
  call void @llvm.dbg.value(metadata i8 0, metadata !2963, metadata !DIExpression()), !dbg !2965
  call void @llvm.dbg.value(metadata i8 0, metadata !2964, metadata !DIExpression()), !dbg !2965
  %61 = getelementptr inbounds i8, i8* %6, i64 7, !dbg !2969
  %62 = load i8, i8* %61, align 1, !dbg !2969, !tbaa !1459
  %63 = icmp eq i8 %62, 0, !dbg !2969
  br i1 %63, label %64, label %68, !dbg !2971

64:                                               ; preds = %60
  %65 = load i8, i8* %0, align 1, !dbg !2972, !tbaa !1459
  %66 = icmp eq i8 %65, 96, !dbg !2973
  %67 = select i1 %66, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17.81, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18.82, i64 0, i64 0), !dbg !2972
  br label %71, !dbg !2974

68:                                               ; preds = %60, %5, %27, %23, %19, %14, %9, %56, %52, %48, %44, %40, %35
  %69 = icmp eq i32 %1, 9, !dbg !2975
  %70 = select i1 %69, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.78, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.77, i64 0, i64 0), !dbg !2976
  br label %71, !dbg !2977

71:                                               ; preds = %2, %68, %64, %31
  %72 = phi i8* [ %34, %31 ], [ %67, %64 ], [ %70, %68 ], [ %3, %2 ], !dbg !2797
  ret i8* %72, !dbg !2978
}

; Function Attrs: argmemonly nofree nounwind readonly
declare i64 @strlen(i8* nocapture) local_unnamed_addr #16

; Function Attrs: nofree nounwind readonly
declare i32 @bcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #10

; Function Attrs: nounwind
declare !dbg !324 i32 @iswprint(i32) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare !dbg !328 i32 @mbsinit(%struct.__mbstate_t*) local_unnamed_addr #17

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_alloc(i8* %0, i64 %1, %struct.quoting_options* %2) local_unnamed_addr #8 !dbg !2979 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2983, metadata !DIExpression()), !dbg !2986
  call void @llvm.dbg.value(metadata i64 %1, metadata !2984, metadata !DIExpression()), !dbg !2986
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2985, metadata !DIExpression()), !dbg !2986
  call void @llvm.dbg.value(metadata i8* %0, metadata !2987, metadata !DIExpression()) #19, !dbg !3000
  call void @llvm.dbg.value(metadata i64 %1, metadata !2992, metadata !DIExpression()) #19, !dbg !3000
  call void @llvm.dbg.value(metadata i64* null, metadata !2993, metadata !DIExpression()) #19, !dbg !3000
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2994, metadata !DIExpression()) #19, !dbg !3000
  %4 = icmp eq %struct.quoting_options* %2, null, !dbg !3002
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %2, !dbg !3002
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2995, metadata !DIExpression()) #19, !dbg !3000
  %6 = tail call i32* @__errno_location() #24, !dbg !3003
  %7 = load i32, i32* %6, align 4, !dbg !3003, !tbaa !1707
  call void @llvm.dbg.value(metadata i32 %7, metadata !2996, metadata !DIExpression()) #19, !dbg !3000
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !3004
  %9 = load i32, i32* %8, align 4, !dbg !3004, !tbaa !2201
  %10 = or i32 %9, 1, !dbg !3005
  call void @llvm.dbg.value(metadata i32 %10, metadata !2997, metadata !DIExpression()) #19, !dbg !3000
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3006
  %12 = load i32, i32* %11, align 8, !dbg !3006, !tbaa !2150
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !3007
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3008
  %15 = load i8*, i8** %14, align 8, !dbg !3008, !tbaa !2224
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3009
  %17 = load i8*, i8** %16, align 8, !dbg !3009, !tbaa !2227
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %12, i32 %10, i32* nonnull %13, i8* %15, i8* %17) #19, !dbg !3010
  %19 = add i64 %18, 1, !dbg !3011
  call void @llvm.dbg.value(metadata i64 %19, metadata !2998, metadata !DIExpression()) #19, !dbg !3000
  call void @llvm.dbg.value(metadata i64 %19, metadata !3012, metadata !DIExpression()) #19, !dbg !3017
  %20 = tail call noalias i8* @xmalloc(i64 %19) #19, !dbg !3019
  call void @llvm.dbg.value(metadata i8* %20, metadata !2999, metadata !DIExpression()) #19, !dbg !3000
  %21 = load i32, i32* %11, align 8, !dbg !3020, !tbaa !2150
  %22 = load i8*, i8** %14, align 8, !dbg !3021, !tbaa !2224
  %23 = load i8*, i8** %16, align 8, !dbg !3022, !tbaa !2227
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %20, i64 %19, i8* %0, i64 %1, i32 %21, i32 %10, i32* nonnull %13, i8* %22, i8* %23) #19, !dbg !3023
  store i32 %7, i32* %6, align 4, !dbg !3024, !tbaa !1707
  ret i8* %20, !dbg !3025
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_alloc_mem(i8* %0, i64 %1, i64* %2, %struct.quoting_options* %3) local_unnamed_addr #8 !dbg !2988 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2987, metadata !DIExpression()), !dbg !3026
  call void @llvm.dbg.value(metadata i64 %1, metadata !2992, metadata !DIExpression()), !dbg !3026
  call void @llvm.dbg.value(metadata i64* %2, metadata !2993, metadata !DIExpression()), !dbg !3026
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2994, metadata !DIExpression()), !dbg !3026
  %5 = icmp eq %struct.quoting_options* %3, null, !dbg !3027
  %6 = select i1 %5, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %3, !dbg !3027
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !2995, metadata !DIExpression()), !dbg !3026
  %7 = tail call i32* @__errno_location() #24, !dbg !3028
  %8 = load i32, i32* %7, align 4, !dbg !3028, !tbaa !1707
  call void @llvm.dbg.value(metadata i32 %8, metadata !2996, metadata !DIExpression()), !dbg !3026
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !3029
  %10 = load i32, i32* %9, align 4, !dbg !3029, !tbaa !2201
  %11 = icmp ne i64* %2, null, !dbg !3030
  %12 = xor i1 %11, true, !dbg !3030
  %13 = zext i1 %12 to i32, !dbg !3030
  %14 = or i32 %10, %13, !dbg !3031
  call void @llvm.dbg.value(metadata i32 %14, metadata !2997, metadata !DIExpression()), !dbg !3026
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !3032
  %16 = load i32, i32* %15, align 8, !dbg !3032, !tbaa !2150
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !3033
  %18 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !3034
  %19 = load i8*, i8** %18, align 8, !dbg !3034, !tbaa !2224
  %20 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !3035
  %21 = load i8*, i8** %20, align 8, !dbg !3035, !tbaa !2227
  %22 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %16, i32 %14, i32* nonnull %17, i8* %19, i8* %21), !dbg !3036
  %23 = add i64 %22, 1, !dbg !3037
  call void @llvm.dbg.value(metadata i64 %23, metadata !2998, metadata !DIExpression()), !dbg !3026
  call void @llvm.dbg.value(metadata i64 %23, metadata !3012, metadata !DIExpression()) #19, !dbg !3038
  %24 = tail call noalias i8* @xmalloc(i64 %23) #19, !dbg !3040
  call void @llvm.dbg.value(metadata i8* %24, metadata !2999, metadata !DIExpression()), !dbg !3026
  %25 = load i32, i32* %15, align 8, !dbg !3041, !tbaa !2150
  %26 = load i8*, i8** %18, align 8, !dbg !3042, !tbaa !2224
  %27 = load i8*, i8** %20, align 8, !dbg !3043, !tbaa !2227
  %28 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %24, i64 %23, i8* %0, i64 %1, i32 %25, i32 %14, i32* nonnull %17, i8* %26, i8* %27), !dbg !3044
  store i32 %8, i32* %7, align 4, !dbg !3045, !tbaa !1707
  br i1 %11, label %29, label %30, !dbg !3046

29:                                               ; preds = %4
  store i64 %22, i64* %2, align 8, !dbg !3047, !tbaa !3049
  br label %30, !dbg !3050

30:                                               ; preds = %29, %4
  ret i8* %24, !dbg !3051
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @quotearg_free() local_unnamed_addr #8 !dbg !3052 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !3056, !tbaa !1263
  call void @llvm.dbg.value(metadata %struct.slotvec* %1, metadata !3054, metadata !DIExpression()), !dbg !3057
  call void @llvm.dbg.value(metadata i32 1, metadata !3055, metadata !DIExpression()), !dbg !3057
  %2 = load i32, i32* @nslots, align 4, !dbg !3058, !tbaa !1707
  %3 = icmp sgt i32 %2, 1, !dbg !3061
  br i1 %3, label %4, label %12, !dbg !3062

4:                                                ; preds = %0, %4
  %5 = phi i64 [ %8, %4 ], [ 1, %0 ]
  call void @llvm.dbg.value(metadata i64 %5, metadata !3055, metadata !DIExpression()), !dbg !3057
  %6 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %5, i32 1, !dbg !3063
  %7 = load i8*, i8** %6, align 8, !dbg !3063, !tbaa !3064
  tail call void @free(i8* %7) #19, !dbg !3066
  %8 = add nuw nsw i64 %5, 1, !dbg !3067
  call void @llvm.dbg.value(metadata i64 %8, metadata !3055, metadata !DIExpression()), !dbg !3057
  %9 = load i32, i32* @nslots, align 4, !dbg !3058, !tbaa !1707
  %10 = sext i32 %9 to i64, !dbg !3061
  %11 = icmp slt i64 %8, %10, !dbg !3061
  br i1 %11, label %4, label %12, !dbg !3062, !llvm.loop !3068

12:                                               ; preds = %4, %0
  %13 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1, !dbg !3070
  %14 = load i8*, i8** %13, align 8, !dbg !3070, !tbaa !3064
  %15 = icmp eq i8* %14, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !3072
  br i1 %15, label %17, label %16, !dbg !3073

16:                                               ; preds = %12
  tail call void @free(i8* %14) #19, !dbg !3074
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !dbg !3076, !tbaa !3077
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !dbg !3078, !tbaa !3064
  br label %17, !dbg !3079

17:                                               ; preds = %12, %16
  %18 = icmp eq %struct.slotvec* %1, @slotvec0, !dbg !3080
  br i1 %18, label %21, label %19, !dbg !3082

19:                                               ; preds = %17
  %20 = bitcast %struct.slotvec* %1 to i8*, !dbg !3083
  tail call void @free(i8* %20) #19, !dbg !3085
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !3086, !tbaa !1263
  br label %21, !dbg !3087

21:                                               ; preds = %17, %19
  store i32 1, i32* @nslots, align 4, !dbg !3088, !tbaa !1707
  ret void, !dbg !3089
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n(i32 %0, i8* %1) local_unnamed_addr #8 !dbg !3090 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3092, metadata !DIExpression()), !dbg !3094
  call void @llvm.dbg.value(metadata i8* %1, metadata !3093, metadata !DIExpression()), !dbg !3094
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @default_quoting_options), !dbg !3095
  ret i8* %3, !dbg !3096
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* %3) unnamed_addr #8 !dbg !3097 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3101, metadata !DIExpression()), !dbg !3116
  call void @llvm.dbg.value(metadata i8* %1, metadata !3102, metadata !DIExpression()), !dbg !3116
  call void @llvm.dbg.value(metadata i64 %2, metadata !3103, metadata !DIExpression()), !dbg !3116
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !3104, metadata !DIExpression()), !dbg !3116
  %5 = tail call i32* @__errno_location() #24, !dbg !3117
  %6 = load i32, i32* %5, align 4, !dbg !3117, !tbaa !1707
  call void @llvm.dbg.value(metadata i32 %6, metadata !3105, metadata !DIExpression()), !dbg !3116
  %7 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !3118, !tbaa !1263
  call void @llvm.dbg.value(metadata %struct.slotvec* %7, metadata !3106, metadata !DIExpression()), !dbg !3116
  %8 = icmp slt i32 %0, 0, !dbg !3119
  br i1 %8, label %9, label %10, !dbg !3121

9:                                                ; preds = %4
  tail call void @abort() #22, !dbg !3122
  unreachable, !dbg !3122

10:                                               ; preds = %4
  %11 = load i32, i32* @nslots, align 4, !dbg !3123, !tbaa !1707
  %12 = icmp sgt i32 %11, %0, !dbg !3124
  br i1 %12, label %34, label %13, !dbg !3125

13:                                               ; preds = %10
  %14 = icmp eq %struct.slotvec* %7, @slotvec0, !dbg !3126
  call void @llvm.dbg.value(metadata i1 %14, metadata !3107, metadata !DIExpression()), !dbg !3127
  call void @llvm.dbg.value(metadata i32 2147483646, metadata !3110, metadata !DIExpression()), !dbg !3127
  %15 = icmp eq i32 %0, 2147483647, !dbg !3128
  br i1 %15, label %16, label %17, !dbg !3130

16:                                               ; preds = %13
  tail call void @xalloc_die() #22, !dbg !3131
  unreachable, !dbg !3131

17:                                               ; preds = %13
  %18 = select i1 %14, %struct.slotvec* null, %struct.slotvec* %7, !dbg !3132
  %19 = bitcast %struct.slotvec* %18 to i8*, !dbg !3132
  %20 = add nuw nsw i32 %0, 1, !dbg !3133
  %21 = sext i32 %20 to i64, !dbg !3134
  %22 = shl nuw nsw i64 %21, 4, !dbg !3135
  %23 = tail call i8* @xrealloc(i8* %19, i64 %22) #19, !dbg !3136
  %24 = bitcast i8* %23 to %struct.slotvec*, !dbg !3136
  call void @llvm.dbg.value(metadata %struct.slotvec* %24, metadata !3106, metadata !DIExpression()), !dbg !3116
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !dbg !3137, !tbaa !1263
  br i1 %14, label %25, label %26, !dbg !3138

25:                                               ; preds = %17
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(16) %23, i8* nonnull align 8 dereferenceable(16) bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i1 false), !dbg !3139, !tbaa.struct !3141
  br label %26, !dbg !3142

26:                                               ; preds = %25, %17
  %27 = load i32, i32* @nslots, align 4, !dbg !3143, !tbaa !1707
  %28 = sext i32 %27 to i64, !dbg !3144
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28, !dbg !3144
  %30 = bitcast %struct.slotvec* %29 to i8*, !dbg !3145
  %31 = sub nsw i32 %20, %27, !dbg !3146
  %32 = sext i32 %31 to i64, !dbg !3147
  %33 = shl nsw i64 %32, 4, !dbg !3148
  call void @llvm.dbg.value(metadata i8* %30, metadata !2548, metadata !DIExpression()) #19, !dbg !3149
  call void @llvm.dbg.value(metadata i32 0, metadata !2551, metadata !DIExpression()) #19, !dbg !3149
  call void @llvm.dbg.value(metadata i64 %33, metadata !2552, metadata !DIExpression()) #19, !dbg !3149
  call void @llvm.memset.p0i8.i64(i8* nonnull align 1 %30, i8 0, i64 %33, i1 false) #19, !dbg !3151
  store i32 %20, i32* @nslots, align 4, !dbg !3152, !tbaa !1707
  br label %34, !dbg !3153

34:                                               ; preds = %10, %26
  %35 = phi %struct.slotvec* [ %24, %26 ], [ %7, %10 ], !dbg !3116
  call void @llvm.dbg.value(metadata %struct.slotvec* %35, metadata !3106, metadata !DIExpression()), !dbg !3116
  %36 = zext i32 %0 to i64, !dbg !3154
  %37 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 0, !dbg !3155
  %38 = load i64, i64* %37, align 8, !dbg !3155, !tbaa !3077
  call void @llvm.dbg.value(metadata i64 %38, metadata !3111, metadata !DIExpression()), !dbg !3156
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 1, !dbg !3157
  %40 = load i8*, i8** %39, align 8, !dbg !3157, !tbaa !3064
  call void @llvm.dbg.value(metadata i8* %40, metadata !3113, metadata !DIExpression()), !dbg !3156
  %41 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !3158
  %42 = load i32, i32* %41, align 4, !dbg !3158, !tbaa !2201
  %43 = or i32 %42, 1, !dbg !3159
  call void @llvm.dbg.value(metadata i32 %43, metadata !3114, metadata !DIExpression()), !dbg !3156
  %44 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !3160
  %45 = load i32, i32* %44, align 8, !dbg !3160, !tbaa !2150
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !3161
  %47 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !3162
  %48 = load i8*, i8** %47, align 8, !dbg !3162, !tbaa !2224
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !3163
  %50 = load i8*, i8** %49, align 8, !dbg !3163, !tbaa !2227
  %51 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %40, i64 %38, i8* %1, i64 %2, i32 %45, i32 %43, i32* nonnull %46, i8* %48, i8* %50), !dbg !3164
  call void @llvm.dbg.value(metadata i64 %51, metadata !3115, metadata !DIExpression()), !dbg !3156
  %52 = icmp ugt i64 %38, %51, !dbg !3165
  br i1 %52, label %63, label %53, !dbg !3167

53:                                               ; preds = %34
  %54 = add i64 %51, 1, !dbg !3168
  call void @llvm.dbg.value(metadata i64 %54, metadata !3111, metadata !DIExpression()), !dbg !3156
  store i64 %54, i64* %37, align 8, !dbg !3170, !tbaa !3077
  %55 = icmp eq i8* %40, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !3171
  br i1 %55, label %57, label %56, !dbg !3173

56:                                               ; preds = %53
  tail call void @free(i8* %40) #19, !dbg !3174
  br label %57, !dbg !3174

57:                                               ; preds = %53, %56
  call void @llvm.dbg.value(metadata i64 %54, metadata !3012, metadata !DIExpression()) #19, !dbg !3175
  %58 = tail call noalias i8* @xmalloc(i64 %54) #19, !dbg !3177
  call void @llvm.dbg.value(metadata i8* %58, metadata !3113, metadata !DIExpression()), !dbg !3156
  store i8* %58, i8** %39, align 8, !dbg !3178, !tbaa !3064
  %59 = load i32, i32* %44, align 8, !dbg !3179, !tbaa !2150
  %60 = load i8*, i8** %47, align 8, !dbg !3180, !tbaa !2224
  %61 = load i8*, i8** %49, align 8, !dbg !3181, !tbaa !2227
  %62 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %58, i64 %54, i8* %1, i64 %2, i32 %59, i32 %43, i32* nonnull %46, i8* %60, i8* %61), !dbg !3182
  br label %63, !dbg !3183

63:                                               ; preds = %34, %57
  %64 = phi i8* [ %58, %57 ], [ %40, %34 ], !dbg !3156
  call void @llvm.dbg.value(metadata i8* %64, metadata !3113, metadata !DIExpression()), !dbg !3156
  store i32 %6, i32* %5, align 4, !dbg !3184, !tbaa !1707
  ret i8* %64, !dbg !3185
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_mem(i32 %0, i8* %1, i64 %2) local_unnamed_addr #8 !dbg !3186 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3190, metadata !DIExpression()), !dbg !3193
  call void @llvm.dbg.value(metadata i8* %1, metadata !3191, metadata !DIExpression()), !dbg !3193
  call void @llvm.dbg.value(metadata i64 %2, metadata !3192, metadata !DIExpression()), !dbg !3193
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @default_quoting_options), !dbg !3194
  ret i8* %4, !dbg !3195
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg(i8* %0) local_unnamed_addr #8 !dbg !3196 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3198, metadata !DIExpression()), !dbg !3199
  call void @llvm.dbg.value(metadata i32 0, metadata !3092, metadata !DIExpression()) #19, !dbg !3200
  call void @llvm.dbg.value(metadata i8* %0, metadata !3093, metadata !DIExpression()) #19, !dbg !3200
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @default_quoting_options) #19, !dbg !3202
  ret i8* %2, !dbg !3203
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_mem(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !3204 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3208, metadata !DIExpression()), !dbg !3210
  call void @llvm.dbg.value(metadata i64 %1, metadata !3209, metadata !DIExpression()), !dbg !3210
  call void @llvm.dbg.value(metadata i32 0, metadata !3190, metadata !DIExpression()) #19, !dbg !3211
  call void @llvm.dbg.value(metadata i8* %0, metadata !3191, metadata !DIExpression()) #19, !dbg !3211
  call void @llvm.dbg.value(metadata i64 %1, metadata !3192, metadata !DIExpression()) #19, !dbg !3211
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @default_quoting_options) #19, !dbg !3213
  ret i8* %3, !dbg !3214
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style(i32 %0, i32 %1, i8* %2) local_unnamed_addr #8 !dbg !3215 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3219, metadata !DIExpression()), !dbg !3223
  call void @llvm.dbg.value(metadata i32 %1, metadata !3220, metadata !DIExpression()), !dbg !3223
  call void @llvm.dbg.value(metadata i8* %2, metadata !3221, metadata !DIExpression()), !dbg !3223
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3224
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #19, !dbg !3224
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3222, metadata !DIExpression()), !dbg !3225
  call void @llvm.dbg.value(metadata i32 %1, metadata !3226, metadata !DIExpression()) #19, !dbg !3232
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3231, metadata !DIExpression()) #19, !dbg !3234
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false) #19, !dbg !3234, !alias.scope !3235
  %6 = icmp eq i32 %1, 10, !dbg !3238
  br i1 %6, label %7, label %8, !dbg !3240

7:                                                ; preds = %3
  tail call void @abort() #22, !dbg !3241, !noalias !3235
  unreachable, !dbg !3241

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3242
  store i32 %1, i32* %9, align 8, !dbg !3243, !tbaa !2150, !alias.scope !3235
  %10 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !3244
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #19, !dbg !3245
  ret i8* %10, !dbg !3246
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_mem(i32 %0, i32 %1, i8* %2, i64 %3) local_unnamed_addr #8 !dbg !3247 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3251, metadata !DIExpression()), !dbg !3256
  call void @llvm.dbg.value(metadata i32 %1, metadata !3252, metadata !DIExpression()), !dbg !3256
  call void @llvm.dbg.value(metadata i8* %2, metadata !3253, metadata !DIExpression()), !dbg !3256
  call void @llvm.dbg.value(metadata i64 %3, metadata !3254, metadata !DIExpression()), !dbg !3256
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3257
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #19, !dbg !3257
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !3255, metadata !DIExpression()), !dbg !3258
  call void @llvm.dbg.value(metadata i32 %1, metadata !3226, metadata !DIExpression()) #19, !dbg !3259
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !3231, metadata !DIExpression()) #19, !dbg !3261
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %6, i8 0, i64 56, i1 false) #19, !dbg !3261, !alias.scope !3262
  %7 = icmp eq i32 %1, 10, !dbg !3265
  br i1 %7, label %8, label %9, !dbg !3266

8:                                                ; preds = %4
  tail call void @abort() #22, !dbg !3267, !noalias !3262
  unreachable, !dbg !3267

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3268
  store i32 %1, i32* %10, align 8, !dbg !3269, !tbaa !2150, !alias.scope !3262
  %11 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5), !dbg !3270
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #19, !dbg !3271
  ret i8* %11, !dbg !3272
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style(i32 %0, i8* %1) local_unnamed_addr #8 !dbg !3273 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !3231, metadata !DIExpression()), !dbg !3277
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !3222, metadata !DIExpression()), !dbg !3280
  call void @llvm.dbg.value(metadata i32 %0, metadata !3275, metadata !DIExpression()), !dbg !3281
  call void @llvm.dbg.value(metadata i8* %1, metadata !3276, metadata !DIExpression()), !dbg !3281
  call void @llvm.dbg.value(metadata i32 0, metadata !3219, metadata !DIExpression()) #19, !dbg !3282
  call void @llvm.dbg.value(metadata i32 %0, metadata !3220, metadata !DIExpression()) #19, !dbg !3282
  call void @llvm.dbg.value(metadata i8* %1, metadata !3221, metadata !DIExpression()) #19, !dbg !3282
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3283
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #19, !dbg !3283
  call void @llvm.dbg.value(metadata i32 %0, metadata !3226, metadata !DIExpression()) #19, !dbg !3284
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false) #19, !dbg !3277, !alias.scope !3285
  %5 = icmp eq i32 %0, 10, !dbg !3288
  br i1 %5, label %6, label %7, !dbg !3289

6:                                                ; preds = %2
  tail call void @abort() #22, !dbg !3290, !noalias !3285
  unreachable, !dbg !3290

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !3291
  store i32 %0, i32* %8, align 8, !dbg !3292, !tbaa !2150, !alias.scope !3285
  %9 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 -1, %struct.quoting_options* nonnull %3) #19, !dbg !3293
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #19, !dbg !3294
  ret i8* %9, !dbg !3295
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style_mem(i32 %0, i8* %1, i64 %2) local_unnamed_addr #8 !dbg !3296 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3231, metadata !DIExpression()), !dbg !3303
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3255, metadata !DIExpression()), !dbg !3306
  call void @llvm.dbg.value(metadata i32 %0, metadata !3300, metadata !DIExpression()), !dbg !3307
  call void @llvm.dbg.value(metadata i8* %1, metadata !3301, metadata !DIExpression()), !dbg !3307
  call void @llvm.dbg.value(metadata i64 %2, metadata !3302, metadata !DIExpression()), !dbg !3307
  call void @llvm.dbg.value(metadata i32 0, metadata !3251, metadata !DIExpression()) #19, !dbg !3308
  call void @llvm.dbg.value(metadata i32 %0, metadata !3252, metadata !DIExpression()) #19, !dbg !3308
  call void @llvm.dbg.value(metadata i8* %1, metadata !3253, metadata !DIExpression()) #19, !dbg !3308
  call void @llvm.dbg.value(metadata i64 %2, metadata !3254, metadata !DIExpression()) #19, !dbg !3308
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3309
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #19, !dbg !3309
  call void @llvm.dbg.value(metadata i32 %0, metadata !3226, metadata !DIExpression()) #19, !dbg !3310
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false) #19, !dbg !3303, !alias.scope !3311
  %6 = icmp eq i32 %0, 10, !dbg !3314
  br i1 %6, label %7, label %8, !dbg !3315

7:                                                ; preds = %3
  tail call void @abort() #22, !dbg !3316, !noalias !3311
  unreachable, !dbg !3316

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3317
  store i32 %0, i32* %9, align 8, !dbg !3318, !tbaa !2150, !alias.scope !3311
  %10 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 %2, %struct.quoting_options* nonnull %4) #19, !dbg !3319
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #19, !dbg !3320
  ret i8* %10, !dbg !3321
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char_mem(i8* %0, i64 %1, i8 signext %2) local_unnamed_addr #8 !dbg !3322 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3326, metadata !DIExpression()), !dbg !3330
  call void @llvm.dbg.value(metadata i64 %1, metadata !3327, metadata !DIExpression()), !dbg !3330
  call void @llvm.dbg.value(metadata i8 %2, metadata !3328, metadata !DIExpression()), !dbg !3330
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3331
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #19, !dbg !3331
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3329, metadata !DIExpression()), !dbg !3332
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !3333, !tbaa.struct !3334
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2168, metadata !DIExpression()), !dbg !3335
  call void @llvm.dbg.value(metadata i8 %2, metadata !2169, metadata !DIExpression()), !dbg !3335
  call void @llvm.dbg.value(metadata i32 1, metadata !2170, metadata !DIExpression()), !dbg !3335
  call void @llvm.dbg.value(metadata i8 %2, metadata !2171, metadata !DIExpression()), !dbg !3335
  %6 = lshr i8 %2, 5, !dbg !3337
  %7 = zext i8 %6 to i64, !dbg !3337
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !3338
  call void @llvm.dbg.value(metadata i32* %8, metadata !2172, metadata !DIExpression()), !dbg !3335
  %9 = and i8 %2, 31, !dbg !3339
  %10 = zext i8 %9 to i32, !dbg !3339
  call void @llvm.dbg.value(metadata i32 %10, metadata !2174, metadata !DIExpression()), !dbg !3335
  %11 = load i32, i32* %8, align 4, !dbg !3340, !tbaa !1707
  %12 = lshr i32 %11, %10, !dbg !3341
  %13 = and i32 %12, 1, !dbg !3342
  call void @llvm.dbg.value(metadata i32 %13, metadata !2175, metadata !DIExpression()), !dbg !3335
  %14 = xor i32 %13, 1, !dbg !3343
  %15 = shl i32 %14, %10, !dbg !3344
  %16 = xor i32 %15, %11, !dbg !3345
  store i32 %16, i32* %8, align 4, !dbg !3345, !tbaa !1707
  %17 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %4), !dbg !3346
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #19, !dbg !3347
  ret i8* %17, !dbg !3348
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char(i8* %0, i8 signext %1) local_unnamed_addr #8 !dbg !3349 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !3329, metadata !DIExpression()), !dbg !3355
  call void @llvm.dbg.value(metadata i8* %0, metadata !3353, metadata !DIExpression()), !dbg !3357
  call void @llvm.dbg.value(metadata i8 %1, metadata !3354, metadata !DIExpression()), !dbg !3357
  call void @llvm.dbg.value(metadata i8* %0, metadata !3326, metadata !DIExpression()) #19, !dbg !3358
  call void @llvm.dbg.value(metadata i64 -1, metadata !3327, metadata !DIExpression()) #19, !dbg !3358
  call void @llvm.dbg.value(metadata i8 %1, metadata !3328, metadata !DIExpression()) #19, !dbg !3358
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3359
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #19, !dbg !3359
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %4, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #19, !dbg !3360, !tbaa.struct !3334
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2168, metadata !DIExpression()) #19, !dbg !3361
  call void @llvm.dbg.value(metadata i8 %1, metadata !2169, metadata !DIExpression()) #19, !dbg !3361
  call void @llvm.dbg.value(metadata i32 1, metadata !2170, metadata !DIExpression()) #19, !dbg !3361
  call void @llvm.dbg.value(metadata i8 %1, metadata !2171, metadata !DIExpression()) #19, !dbg !3361
  %5 = lshr i8 %1, 5, !dbg !3363
  %6 = zext i8 %5 to i64, !dbg !3363
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !3364
  call void @llvm.dbg.value(metadata i32* %7, metadata !2172, metadata !DIExpression()) #19, !dbg !3361
  %8 = and i8 %1, 31, !dbg !3365
  %9 = zext i8 %8 to i32, !dbg !3365
  call void @llvm.dbg.value(metadata i32 %9, metadata !2174, metadata !DIExpression()) #19, !dbg !3361
  %10 = load i32, i32* %7, align 4, !dbg !3366, !tbaa !1707
  %11 = lshr i32 %10, %9, !dbg !3367
  %12 = and i32 %11, 1, !dbg !3368
  call void @llvm.dbg.value(metadata i32 %12, metadata !2175, metadata !DIExpression()) #19, !dbg !3361
  %13 = xor i32 %12, 1, !dbg !3369
  %14 = shl i32 %13, %9, !dbg !3370
  %15 = xor i32 %14, %10, !dbg !3371
  store i32 %15, i32* %7, align 4, !dbg !3371, !tbaa !1707
  %16 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %3) #19, !dbg !3372
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #19, !dbg !3373
  ret i8* %16, !dbg !3374
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon(i8* %0) local_unnamed_addr #8 !dbg !3375 {
  %2 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %2, metadata !3329, metadata !DIExpression()), !dbg !3378
  call void @llvm.dbg.value(metadata i8* %0, metadata !3377, metadata !DIExpression()), !dbg !3381
  call void @llvm.dbg.value(metadata i8* %0, metadata !3353, metadata !DIExpression()) #19, !dbg !3382
  call void @llvm.dbg.value(metadata i8 58, metadata !3354, metadata !DIExpression()) #19, !dbg !3382
  call void @llvm.dbg.value(metadata i8* %0, metadata !3326, metadata !DIExpression()) #19, !dbg !3383
  call void @llvm.dbg.value(metadata i64 -1, metadata !3327, metadata !DIExpression()) #19, !dbg !3383
  call void @llvm.dbg.value(metadata i8 58, metadata !3328, metadata !DIExpression()) #19, !dbg !3383
  %3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !3384
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %3) #19, !dbg !3384
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %3, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #19, !dbg !3385, !tbaa.struct !3334
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2168, metadata !DIExpression()) #19, !dbg !3386
  call void @llvm.dbg.value(metadata i8 58, metadata !2169, metadata !DIExpression()) #19, !dbg !3386
  call void @llvm.dbg.value(metadata i32 1, metadata !2170, metadata !DIExpression()) #19, !dbg !3386
  call void @llvm.dbg.value(metadata i8 58, metadata !2171, metadata !DIExpression()) #19, !dbg !3386
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !3388
  call void @llvm.dbg.value(metadata i32* %4, metadata !2172, metadata !DIExpression()) #19, !dbg !3386
  call void @llvm.dbg.value(metadata i32 26, metadata !2174, metadata !DIExpression()) #19, !dbg !3386
  %5 = load i32, i32* %4, align 4, !dbg !3389, !tbaa !1707
  call void @llvm.dbg.value(metadata i32 %5, metadata !2175, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)) #19, !dbg !3386
  %6 = or i32 %5, 67108864, !dbg !3390
  store i32 %6, i32* %4, align 4, !dbg !3390, !tbaa !1707
  %7 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %2) #19, !dbg !3391
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %3) #19, !dbg !3392
  ret i8* %7, !dbg !3393
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon_mem(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !3394 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !3329, metadata !DIExpression()), !dbg !3398
  call void @llvm.dbg.value(metadata i8* %0, metadata !3396, metadata !DIExpression()), !dbg !3400
  call void @llvm.dbg.value(metadata i64 %1, metadata !3397, metadata !DIExpression()), !dbg !3400
  call void @llvm.dbg.value(metadata i8* %0, metadata !3326, metadata !DIExpression()) #19, !dbg !3401
  call void @llvm.dbg.value(metadata i64 %1, metadata !3327, metadata !DIExpression()) #19, !dbg !3401
  call void @llvm.dbg.value(metadata i8 58, metadata !3328, metadata !DIExpression()) #19, !dbg !3401
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3402
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #19, !dbg !3402
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %4, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #19, !dbg !3403, !tbaa.struct !3334
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2168, metadata !DIExpression()) #19, !dbg !3404
  call void @llvm.dbg.value(metadata i8 58, metadata !2169, metadata !DIExpression()) #19, !dbg !3404
  call void @llvm.dbg.value(metadata i32 1, metadata !2170, metadata !DIExpression()) #19, !dbg !3404
  call void @llvm.dbg.value(metadata i8 58, metadata !2171, metadata !DIExpression()) #19, !dbg !3404
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !3406
  call void @llvm.dbg.value(metadata i32* %5, metadata !2172, metadata !DIExpression()) #19, !dbg !3404
  call void @llvm.dbg.value(metadata i32 26, metadata !2174, metadata !DIExpression()) #19, !dbg !3404
  %6 = load i32, i32* %5, align 4, !dbg !3407, !tbaa !1707
  call void @llvm.dbg.value(metadata i32 %6, metadata !2175, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)) #19, !dbg !3404
  %7 = or i32 %6, 67108864, !dbg !3408
  store i32 %7, i32* %5, align 4, !dbg !3408, !tbaa !1707
  %8 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %3) #19, !dbg !3409
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #19, !dbg !3410
  ret i8* %8, !dbg !3411
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_colon(i32 %0, i32 %1, i8* %2) local_unnamed_addr #8 !dbg !3412 {
  %4 = alloca %struct.quoting_options, align 8
  %5 = alloca [52 x i8], align 4
  call void @llvm.dbg.declare(metadata [52 x i8]* %5, metadata !3231, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416)), !dbg !3418
  call void @llvm.dbg.value(metadata i32 %0, metadata !3414, metadata !DIExpression()), !dbg !3420
  call void @llvm.dbg.value(metadata i32 %1, metadata !3415, metadata !DIExpression()), !dbg !3420
  call void @llvm.dbg.value(metadata i8* %2, metadata !3416, metadata !DIExpression()), !dbg !3420
  %6 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3421
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #19, !dbg !3421
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3417, metadata !DIExpression()), !dbg !3422
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %5, i64 0, i64 0, !dbg !3423
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %7), !dbg !3423
  call void @llvm.dbg.value(metadata i32 %1, metadata !3226, metadata !DIExpression()) #19, !dbg !3424
  call void @llvm.dbg.value(metadata i32 0, metadata !3231, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3424
  call void @llvm.memset.p0i8.i64(i8* nonnull align 4 dereferenceable(52) %7, i8 0, i64 52, i1 false), !dbg !3418, !alias.scope !3425
  %8 = icmp eq i32 %1, 10, !dbg !3428
  br i1 %8, label %9, label %10, !dbg !3429

9:                                                ; preds = %3
  tail call void @abort() #22, !dbg !3430, !noalias !3425
  unreachable, !dbg !3430

10:                                               ; preds = %3
  call void @llvm.dbg.value(metadata i32 %1, metadata !3231, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3424
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3423
  store i32 %1, i32* %11, align 8, !dbg !3423, !tbaa.struct !3334
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !3423
  %13 = bitcast i32* %12 to i8*, !dbg !3423
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 4 dereferenceable(52) %13, i8* nonnull align 4 dereferenceable(52) %7, i64 52, i1 false), !dbg !3423, !tbaa.struct !3334
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %7), !dbg !3423
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2168, metadata !DIExpression()), !dbg !3431
  call void @llvm.dbg.value(metadata i8 58, metadata !2169, metadata !DIExpression()), !dbg !3431
  call void @llvm.dbg.value(metadata i32 1, metadata !2170, metadata !DIExpression()), !dbg !3431
  call void @llvm.dbg.value(metadata i8 58, metadata !2171, metadata !DIExpression()), !dbg !3431
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 1, !dbg !3433
  call void @llvm.dbg.value(metadata i32* %14, metadata !2172, metadata !DIExpression()), !dbg !3431
  call void @llvm.dbg.value(metadata i32 26, metadata !2174, metadata !DIExpression()), !dbg !3431
  %15 = load i32, i32* %14, align 4, !dbg !3434, !tbaa !1707
  call void @llvm.dbg.value(metadata i32 %15, metadata !2175, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)), !dbg !3431
  %16 = or i32 %15, 67108864, !dbg !3435
  store i32 %16, i32* %14, align 4, !dbg !3435, !tbaa !1707
  %17 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !3436
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #19, !dbg !3437
  ret i8* %17, !dbg !3438
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom(i32 %0, i8* %1, i8* %2, i8* %3) local_unnamed_addr #8 !dbg !3439 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !3447, metadata !DIExpression()), !dbg !3457
  call void @llvm.dbg.value(metadata i32 %0, metadata !3443, metadata !DIExpression()), !dbg !3459
  call void @llvm.dbg.value(metadata i8* %1, metadata !3444, metadata !DIExpression()), !dbg !3459
  call void @llvm.dbg.value(metadata i8* %2, metadata !3445, metadata !DIExpression()), !dbg !3459
  call void @llvm.dbg.value(metadata i8* %3, metadata !3446, metadata !DIExpression()), !dbg !3459
  call void @llvm.dbg.value(metadata i32 %0, metadata !3452, metadata !DIExpression()) #19, !dbg !3460
  call void @llvm.dbg.value(metadata i8* %1, metadata !3453, metadata !DIExpression()) #19, !dbg !3460
  call void @llvm.dbg.value(metadata i8* %2, metadata !3454, metadata !DIExpression()) #19, !dbg !3460
  call void @llvm.dbg.value(metadata i8* %3, metadata !3455, metadata !DIExpression()) #19, !dbg !3460
  call void @llvm.dbg.value(metadata i64 -1, metadata !3456, metadata !DIExpression()) #19, !dbg !3460
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3461
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #19, !dbg !3461
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %6, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #19, !dbg !3462, !tbaa.struct !3334
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2208, metadata !DIExpression()) #19, !dbg !3463
  call void @llvm.dbg.value(metadata i8* %1, metadata !2209, metadata !DIExpression()) #19, !dbg !3463
  call void @llvm.dbg.value(metadata i8* %2, metadata !2210, metadata !DIExpression()) #19, !dbg !3463
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2208, metadata !DIExpression()) #19, !dbg !3463
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3465
  store i32 10, i32* %7, align 8, !dbg !3466, !tbaa !2150
  %8 = icmp ne i8* %1, null, !dbg !3467
  %9 = icmp ne i8* %2, null, !dbg !3468
  %10 = and i1 %8, %9, !dbg !3469
  br i1 %10, label %12, label %11, !dbg !3469

11:                                               ; preds = %4
  tail call void @abort() #22, !dbg !3470
  unreachable, !dbg !3470

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3471
  store i8* %1, i8** %13, align 8, !dbg !3472, !tbaa !2224
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3473
  store i8* %2, i8** %14, align 8, !dbg !3474, !tbaa !2227
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 -1, %struct.quoting_options* nonnull %5) #19, !dbg !3475
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #19, !dbg !3476
  ret i8* %15, !dbg !3477
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom_mem(i32 %0, i8* %1, i8* %2, i8* %3, i64 %4) local_unnamed_addr #8 !dbg !3448 {
  %6 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3452, metadata !DIExpression()), !dbg !3478
  call void @llvm.dbg.value(metadata i8* %1, metadata !3453, metadata !DIExpression()), !dbg !3478
  call void @llvm.dbg.value(metadata i8* %2, metadata !3454, metadata !DIExpression()), !dbg !3478
  call void @llvm.dbg.value(metadata i8* %3, metadata !3455, metadata !DIExpression()), !dbg !3478
  call void @llvm.dbg.value(metadata i64 %4, metadata !3456, metadata !DIExpression()), !dbg !3478
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !3479
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #19, !dbg !3479
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %6, metadata !3447, metadata !DIExpression()), !dbg !3480
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %7, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !3481, !tbaa.struct !3334
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !2208, metadata !DIExpression()) #19, !dbg !3482
  call void @llvm.dbg.value(metadata i8* %1, metadata !2209, metadata !DIExpression()) #19, !dbg !3482
  call void @llvm.dbg.value(metadata i8* %2, metadata !2210, metadata !DIExpression()) #19, !dbg !3482
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !2208, metadata !DIExpression()) #19, !dbg !3482
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !3484
  store i32 10, i32* %8, align 8, !dbg !3485, !tbaa !2150
  %9 = icmp ne i8* %1, null, !dbg !3486
  %10 = icmp ne i8* %2, null, !dbg !3487
  %11 = and i1 %9, %10, !dbg !3488
  br i1 %11, label %13, label %12, !dbg !3488

12:                                               ; preds = %5
  tail call void @abort() #22, !dbg !3489
  unreachable, !dbg !3489

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !3490
  store i8* %1, i8** %14, align 8, !dbg !3491, !tbaa !2224
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !3492
  store i8* %2, i8** %15, align 8, !dbg !3493, !tbaa !2227
  %16 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 %4, %struct.quoting_options* nonnull %6), !dbg !3494
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #19, !dbg !3495
  ret i8* %16, !dbg !3496
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom(i8* %0, i8* %1, i8* %2) local_unnamed_addr #8 !dbg !3497 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3447, metadata !DIExpression()), !dbg !3504
  call void @llvm.dbg.value(metadata i8* %0, metadata !3501, metadata !DIExpression()), !dbg !3507
  call void @llvm.dbg.value(metadata i8* %1, metadata !3502, metadata !DIExpression()), !dbg !3507
  call void @llvm.dbg.value(metadata i8* %2, metadata !3503, metadata !DIExpression()), !dbg !3507
  call void @llvm.dbg.value(metadata i32 0, metadata !3443, metadata !DIExpression()) #19, !dbg !3508
  call void @llvm.dbg.value(metadata i8* %0, metadata !3444, metadata !DIExpression()) #19, !dbg !3508
  call void @llvm.dbg.value(metadata i8* %1, metadata !3445, metadata !DIExpression()) #19, !dbg !3508
  call void @llvm.dbg.value(metadata i8* %2, metadata !3446, metadata !DIExpression()) #19, !dbg !3508
  call void @llvm.dbg.value(metadata i32 0, metadata !3452, metadata !DIExpression()) #19, !dbg !3509
  call void @llvm.dbg.value(metadata i8* %0, metadata !3453, metadata !DIExpression()) #19, !dbg !3509
  call void @llvm.dbg.value(metadata i8* %1, metadata !3454, metadata !DIExpression()) #19, !dbg !3509
  call void @llvm.dbg.value(metadata i8* %2, metadata !3455, metadata !DIExpression()) #19, !dbg !3509
  call void @llvm.dbg.value(metadata i64 -1, metadata !3456, metadata !DIExpression()) #19, !dbg !3509
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3510
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #19, !dbg !3510
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #19, !dbg !3511, !tbaa.struct !3334
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2208, metadata !DIExpression()) #19, !dbg !3512
  call void @llvm.dbg.value(metadata i8* %0, metadata !2209, metadata !DIExpression()) #19, !dbg !3512
  call void @llvm.dbg.value(metadata i8* %1, metadata !2210, metadata !DIExpression()) #19, !dbg !3512
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2208, metadata !DIExpression()) #19, !dbg !3512
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3514
  store i32 10, i32* %6, align 8, !dbg !3515, !tbaa !2150
  %7 = icmp ne i8* %0, null, !dbg !3516
  %8 = icmp ne i8* %1, null, !dbg !3517
  %9 = and i1 %7, %8, !dbg !3518
  br i1 %9, label %11, label %10, !dbg !3518

10:                                               ; preds = %3
  tail call void @abort() #22, !dbg !3519
  unreachable, !dbg !3519

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !3520
  store i8* %0, i8** %12, align 8, !dbg !3521, !tbaa !2224
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !3522
  store i8* %1, i8** %13, align 8, !dbg !3523, !tbaa !2227
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4) #19, !dbg !3524
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #19, !dbg !3525
  ret i8* %14, !dbg !3526
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom_mem(i8* %0, i8* %1, i8* %2, i64 %3) local_unnamed_addr #8 !dbg !3527 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !3447, metadata !DIExpression()), !dbg !3535
  call void @llvm.dbg.value(metadata i8* %0, metadata !3531, metadata !DIExpression()), !dbg !3537
  call void @llvm.dbg.value(metadata i8* %1, metadata !3532, metadata !DIExpression()), !dbg !3537
  call void @llvm.dbg.value(metadata i8* %2, metadata !3533, metadata !DIExpression()), !dbg !3537
  call void @llvm.dbg.value(metadata i64 %3, metadata !3534, metadata !DIExpression()), !dbg !3537
  call void @llvm.dbg.value(metadata i32 0, metadata !3452, metadata !DIExpression()) #19, !dbg !3538
  call void @llvm.dbg.value(metadata i8* %0, metadata !3453, metadata !DIExpression()) #19, !dbg !3538
  call void @llvm.dbg.value(metadata i8* %1, metadata !3454, metadata !DIExpression()) #19, !dbg !3538
  call void @llvm.dbg.value(metadata i8* %2, metadata !3455, metadata !DIExpression()) #19, !dbg !3538
  call void @llvm.dbg.value(metadata i64 %3, metadata !3456, metadata !DIExpression()) #19, !dbg !3538
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3539
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #19, !dbg !3539
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %6, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #19, !dbg !3540, !tbaa.struct !3334
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2208, metadata !DIExpression()) #19, !dbg !3541
  call void @llvm.dbg.value(metadata i8* %0, metadata !2209, metadata !DIExpression()) #19, !dbg !3541
  call void @llvm.dbg.value(metadata i8* %1, metadata !2210, metadata !DIExpression()) #19, !dbg !3541
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2208, metadata !DIExpression()) #19, !dbg !3541
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3543
  store i32 10, i32* %7, align 8, !dbg !3544, !tbaa !2150
  %8 = icmp ne i8* %0, null, !dbg !3545
  %9 = icmp ne i8* %1, null, !dbg !3546
  %10 = and i1 %8, %9, !dbg !3547
  br i1 %10, label %12, label %11, !dbg !3547

11:                                               ; preds = %4
  tail call void @abort() #22, !dbg !3548
  unreachable, !dbg !3548

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3549
  store i8* %0, i8** %13, align 8, !dbg !3550, !tbaa !2224
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3551
  store i8* %1, i8** %14, align 8, !dbg !3552, !tbaa !2227
  %15 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5) #19, !dbg !3553
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #19, !dbg !3554
  ret i8* %15, !dbg !3555
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n_mem(i32 %0, i8* %1, i64 %2) local_unnamed_addr #8 !dbg !3556 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3560, metadata !DIExpression()), !dbg !3563
  call void @llvm.dbg.value(metadata i8* %1, metadata !3561, metadata !DIExpression()), !dbg !3563
  call void @llvm.dbg.value(metadata i64 %2, metadata !3562, metadata !DIExpression()), !dbg !3563
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @quote_quoting_options), !dbg !3564
  ret i8* %4, !dbg !3565
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_mem(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !3566 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3570, metadata !DIExpression()), !dbg !3572
  call void @llvm.dbg.value(metadata i64 %1, metadata !3571, metadata !DIExpression()), !dbg !3572
  call void @llvm.dbg.value(metadata i32 0, metadata !3560, metadata !DIExpression()) #19, !dbg !3573
  call void @llvm.dbg.value(metadata i8* %0, metadata !3561, metadata !DIExpression()) #19, !dbg !3573
  call void @llvm.dbg.value(metadata i64 %1, metadata !3562, metadata !DIExpression()) #19, !dbg !3573
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @quote_quoting_options) #19, !dbg !3575
  ret i8* %3, !dbg !3576
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n(i32 %0, i8* %1) local_unnamed_addr #8 !dbg !3577 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3581, metadata !DIExpression()), !dbg !3583
  call void @llvm.dbg.value(metadata i8* %1, metadata !3582, metadata !DIExpression()), !dbg !3583
  call void @llvm.dbg.value(metadata i32 %0, metadata !3560, metadata !DIExpression()) #19, !dbg !3584
  call void @llvm.dbg.value(metadata i8* %1, metadata !3561, metadata !DIExpression()) #19, !dbg !3584
  call void @llvm.dbg.value(metadata i64 -1, metadata !3562, metadata !DIExpression()) #19, !dbg !3584
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #19, !dbg !3586
  ret i8* %3, !dbg !3587
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote(i8* %0) local_unnamed_addr #8 !dbg !3588 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3590, metadata !DIExpression()), !dbg !3591
  call void @llvm.dbg.value(metadata i32 0, metadata !3581, metadata !DIExpression()) #19, !dbg !3592
  call void @llvm.dbg.value(metadata i8* %0, metadata !3582, metadata !DIExpression()) #19, !dbg !3592
  call void @llvm.dbg.value(metadata i32 0, metadata !3560, metadata !DIExpression()) #19, !dbg !3594
  call void @llvm.dbg.value(metadata i8* %0, metadata !3561, metadata !DIExpression()) #19, !dbg !3594
  call void @llvm.dbg.value(metadata i64 -1, metadata !3562, metadata !DIExpression()) #19, !dbg !3594
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #19, !dbg !3596
  ret i8* %2, !dbg !3597
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @unicode_to_mb(i32 %0, i64 (i8*, i64, i8*)* nocapture %1, i64 (i32, i8*, i8*)* nocapture %2, i8* %3) local_unnamed_addr #8 !dbg !378 {
  %5 = alloca [6 x i8], align 1
  %6 = alloca [25 x i8], align 16
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !445, metadata !DIExpression()), !dbg !3598
  call void @llvm.dbg.value(metadata i64 (i8*, i64, i8*)* %1, metadata !446, metadata !DIExpression()), !dbg !3598
  call void @llvm.dbg.value(metadata i64 (i32, i8*, i8*)* %2, metadata !447, metadata !DIExpression()), !dbg !3598
  call void @llvm.dbg.value(metadata i8* %3, metadata !448, metadata !DIExpression()), !dbg !3598
  %11 = getelementptr inbounds [6 x i8], [6 x i8]* %5, i64 0, i64 0, !dbg !3599
  call void @llvm.lifetime.start.p0i8(i64 6, i8* nonnull %11) #19, !dbg !3599
  call void @llvm.dbg.declare(metadata [6 x i8]* %5, metadata !449, metadata !DIExpression()), !dbg !3600
  %12 = load i1, i1* @unicode_to_mb.initialized, align 4, !dbg !3601
  br i1 %12, label %24, label %13, !dbg !3602

13:                                               ; preds = %4
  %14 = tail call i8* @locale_charset() #19, !dbg !3603
  call void @llvm.dbg.value(metadata i8* %14, metadata !454, metadata !DIExpression()), !dbg !3604
  %15 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %14, i8* nonnull dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.89, i64 0, i64 0)) #21, !dbg !3605
  %16 = icmp eq i32 %15, 0, !dbg !3606
  %17 = zext i1 %16 to i32, !dbg !3606
  store i32 %17, i32* @unicode_to_mb.is_utf8, align 4, !dbg !3607, !tbaa !1707
  br i1 %16, label %23, label %18, !dbg !3608

18:                                               ; preds = %13
  %19 = tail call i8* @iconv_open(i8* %14, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.89, i64 0, i64 0)) #19, !dbg !3609
  store i8* %19, i8** @unicode_to_mb.utf8_to_local, align 8, !dbg !3612, !tbaa !1263
  %20 = icmp eq i8* %19, inttoptr (i64 -1 to i8*), !dbg !3613
  br i1 %20, label %21, label %23, !dbg !3615

21:                                               ; preds = %18
  %22 = tail call i8* @iconv_open(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.90, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.89, i64 0, i64 0)) #19, !dbg !3616
  store i8* %22, i8** @unicode_to_mb.utf8_to_local, align 8, !dbg !3617, !tbaa !1263
  br label %23, !dbg !3618

23:                                               ; preds = %18, %21, %13
  store i1 true, i1* @unicode_to_mb.initialized, align 4, !dbg !3619
  br label %24, !dbg !3620

24:                                               ; preds = %23, %4
  %25 = load i32, i32* @unicode_to_mb.is_utf8, align 4, !dbg !3621, !tbaa !1707
  %26 = icmp eq i32 %25, 0, !dbg !3621
  %27 = load i8*, i8** @unicode_to_mb.utf8_to_local, align 8, !dbg !3623
  %28 = icmp eq i8* %27, inttoptr (i64 -1 to i8*), !dbg !3626
  %29 = and i1 %26, %28, !dbg !3627
  br i1 %29, label %30, label %32, !dbg !3627

30:                                               ; preds = %24
  %31 = tail call i64 %2(i32 %0, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2.91, i64 0, i64 0), i8* %3) #19, !dbg !3628
  br label %78, !dbg !3629

32:                                               ; preds = %24
  call void @llvm.dbg.value(metadata i8* %11, metadata !3630, metadata !DIExpression()) #19, !dbg !3645
  call void @llvm.dbg.value(metadata i32 %0, metadata !3643, metadata !DIExpression()) #19, !dbg !3645
  call void @llvm.dbg.value(metadata i32 6, metadata !3644, metadata !DIExpression()) #19, !dbg !3645
  %33 = icmp ult i32 %0, 128, !dbg !3647
  br i1 %33, label %34, label %36, !dbg !3649

34:                                               ; preds = %32
  %35 = trunc i32 %0 to i8, !dbg !3650
  store i8 %35, i8* %11, align 1, !dbg !3652, !tbaa !1459
  call void @llvm.dbg.value(metadata i32 %37, metadata !453, metadata !DIExpression()), !dbg !3598
  br label %44, !dbg !3653

36:                                               ; preds = %32
  %37 = call i32 @u8_uctomb_aux(i8* nonnull %11, i32 %0, i32 6) #19, !dbg !3654
  call void @llvm.dbg.value(metadata i32 %37, metadata !453, metadata !DIExpression()), !dbg !3598
  %38 = icmp slt i32 %37, 0, !dbg !3655
  br i1 %38, label %42, label %39, !dbg !3653

39:                                               ; preds = %36
  %40 = load i32, i32* @unicode_to_mb.is_utf8, align 4, !dbg !3657, !tbaa !1707
  %41 = zext i32 %37 to i64, !dbg !3653
  br label %44, !dbg !3653

42:                                               ; preds = %36
  %43 = call i64 %2(i32 %0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3.92, i64 0, i64 0), i8* %3) #19, !dbg !3658
  br label %78, !dbg !3659

44:                                               ; preds = %39, %34
  %45 = phi i32 [ %25, %34 ], [ %40, %39 ], !dbg !3657
  %46 = phi i64 [ 1, %34 ], [ %41, %39 ]
  %47 = icmp eq i32 %45, 0, !dbg !3657
  br i1 %47, label %48, label %76, !dbg !3660

48:                                               ; preds = %44
  %49 = getelementptr inbounds [25 x i8], [25 x i8]* %6, i64 0, i64 0, !dbg !3661
  call void @llvm.lifetime.start.p0i8(i64 25, i8* nonnull %49) #19, !dbg !3661
  call void @llvm.dbg.declare(metadata [25 x i8]* %6, metadata !457, metadata !DIExpression()), !dbg !3662
  %50 = bitcast i8** %7 to i8*, !dbg !3663
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %50) #19, !dbg !3663
  %51 = bitcast i64* %8 to i8*, !dbg !3664
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %51) #19, !dbg !3664
  %52 = bitcast i8** %9 to i8*, !dbg !3665
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %52) #19, !dbg !3665
  %53 = bitcast i64* %10 to i8*, !dbg !3666
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %53) #19, !dbg !3666
  call void @llvm.dbg.value(metadata i8* %11, metadata !463, metadata !DIExpression()), !dbg !3667
  store i8* %11, i8** %7, align 8, !dbg !3668, !tbaa !1263
  call void @llvm.dbg.value(metadata i64 %46, metadata !464, metadata !DIExpression()), !dbg !3667
  store i64 %46, i64* %8, align 8, !dbg !3669, !tbaa !3049
  call void @llvm.dbg.value(metadata i8* %49, metadata !465, metadata !DIExpression()), !dbg !3667
  store i8* %49, i8** %9, align 8, !dbg !3670, !tbaa !1263
  call void @llvm.dbg.value(metadata i64 25, metadata !466, metadata !DIExpression()), !dbg !3667
  store i64 25, i64* %10, align 8, !dbg !3671, !tbaa !3049
  %54 = load i8*, i8** @unicode_to_mb.utf8_to_local, align 8, !dbg !3672, !tbaa !1263
  call void @llvm.dbg.value(metadata i8** %7, metadata !463, metadata !DIExpression(DW_OP_deref)), !dbg !3667
  call void @llvm.dbg.value(metadata i64* %8, metadata !464, metadata !DIExpression(DW_OP_deref)), !dbg !3667
  call void @llvm.dbg.value(metadata i8** %9, metadata !465, metadata !DIExpression(DW_OP_deref)), !dbg !3667
  call void @llvm.dbg.value(metadata i64* %10, metadata !466, metadata !DIExpression(DW_OP_deref)), !dbg !3667
  %55 = call i64 @iconv(i8* %54, i8** nonnull %7, i64* nonnull %8, i8** nonnull %9, i64* nonnull %10) #19, !dbg !3673
  call void @llvm.dbg.value(metadata i64 %55, metadata !467, metadata !DIExpression()), !dbg !3667
  %56 = load i64, i64* %8, align 8, !dbg !3674, !tbaa !3049
  call void @llvm.dbg.value(metadata i64 %56, metadata !464, metadata !DIExpression()), !dbg !3667
  %57 = icmp ne i64 %56, 0, !dbg !3676
  %58 = icmp eq i64 %55, -1, !dbg !3677
  %59 = or i1 %58, %57, !dbg !3678
  br i1 %59, label %60, label %62, !dbg !3678

60:                                               ; preds = %48
  %61 = call i64 %2(i32 %0, i8* null, i8* %3) #19, !dbg !3679
  br label %74, !dbg !3680

62:                                               ; preds = %48
  %63 = load i8*, i8** @unicode_to_mb.utf8_to_local, align 8, !dbg !3681, !tbaa !1263
  call void @llvm.dbg.value(metadata i8** %9, metadata !465, metadata !DIExpression(DW_OP_deref)), !dbg !3667
  call void @llvm.dbg.value(metadata i64* %10, metadata !466, metadata !DIExpression(DW_OP_deref)), !dbg !3667
  %64 = call i64 @iconv(i8* %63, i8** null, i64* null, i8** nonnull %9, i64* nonnull %10) #19, !dbg !3682
  call void @llvm.dbg.value(metadata i64 %64, metadata !467, metadata !DIExpression()), !dbg !3667
  %65 = icmp eq i64 %64, -1, !dbg !3683
  br i1 %65, label %66, label %68, !dbg !3685

66:                                               ; preds = %62
  %67 = call i64 %2(i32 %0, i8* null, i8* %3) #19, !dbg !3686
  br label %74, !dbg !3687

68:                                               ; preds = %62
  %69 = bitcast i8** %9 to i64*, !dbg !3688
  %70 = load i64, i64* %69, align 8, !dbg !3688, !tbaa !1263
  call void @llvm.dbg.value(metadata i8* undef, metadata !465, metadata !DIExpression()), !dbg !3667
  %71 = ptrtoint [25 x i8]* %6 to i64, !dbg !3689
  %72 = sub i64 %70, %71, !dbg !3689
  %73 = call i64 %1(i8* nonnull %49, i64 %72, i8* %3) #19, !dbg !3690
  br label %74, !dbg !3691

74:                                               ; preds = %68, %66, %60
  %75 = phi i64 [ %61, %60 ], [ %67, %66 ], [ %73, %68 ], !dbg !3667
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %53) #19, !dbg !3692
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %52) #19, !dbg !3692
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %51) #19, !dbg !3692
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %50) #19, !dbg !3692
  call void @llvm.lifetime.end.p0i8(i64 25, i8* nonnull %49) #19, !dbg !3692
  br label %78

76:                                               ; preds = %44
  %77 = call i64 %1(i8* nonnull %11, i64 %46, i8* %3) #19, !dbg !3693
  br label %78, !dbg !3694

78:                                               ; preds = %76, %74, %42, %30
  %79 = phi i64 [ %31, %30 ], [ %43, %42 ], [ %77, %76 ], [ %75, %74 ], !dbg !3598
  call void @llvm.lifetime.end.p0i8(i64 6, i8* nonnull %11) #19, !dbg !3695
  ret i64 %79, !dbg !3695
}

declare !dbg !390 i8* @iconv_open(i8*, i8*) local_unnamed_addr #3

declare !dbg !396 i64 @iconv(i8*, i8**, i64*, i8**, i64*) local_unnamed_addr #3

; Function Attrs: nofree nounwind sspstrong uwtable
define dso_local i64 @fwrite_success_callback(i8* nocapture %0, i64 %1, i8* nocapture %2) #18 !dbg !3696 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3698, metadata !DIExpression()), !dbg !3702
  call void @llvm.dbg.value(metadata i64 %1, metadata !3699, metadata !DIExpression()), !dbg !3702
  call void @llvm.dbg.value(metadata i8* %2, metadata !3700, metadata !DIExpression()), !dbg !3702
  %4 = bitcast i8* %2 to %struct._IO_FILE*, !dbg !3703
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %4, metadata !3701, metadata !DIExpression()), !dbg !3702
  %5 = tail call i64 @fwrite(i8* %0, i64 1, i64 %1, %struct._IO_FILE* %4), !dbg !3704
  ret i64 0, !dbg !3705
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @print_unicode_char(%struct._IO_FILE* %0, i32 %1, i32 %2) local_unnamed_addr #8 !dbg !3706 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3710, metadata !DIExpression()), !dbg !3713
  call void @llvm.dbg.value(metadata i32 %1, metadata !3711, metadata !DIExpression()), !dbg !3713
  call void @llvm.dbg.value(metadata i32 %2, metadata !3712, metadata !DIExpression()), !dbg !3713
  %4 = icmp eq i32 %2, 0, !dbg !3714
  %5 = select i1 %4, i64 (i32, i8*, i8*)* @fallback_failure_callback, i64 (i32, i8*, i8*)* @exit_failure_callback, !dbg !3714
  %6 = bitcast %struct._IO_FILE* %0 to i8*, !dbg !3715
  %7 = tail call i64 @unicode_to_mb(i32 %1, i64 (i8*, i64, i8*)* nonnull @fwrite_success_callback, i64 (i32, i8*, i8*)* nonnull %5, i8* %6), !dbg !3716
  ret void, !dbg !3717
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @fallback_failure_callback(i32 %0, i8* nocapture readnone %1, i8* %2) #8 !dbg !3718 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3720, metadata !DIExpression()), !dbg !3724
  call void @llvm.dbg.value(metadata i8* %1, metadata !3721, metadata !DIExpression()), !dbg !3724
  call void @llvm.dbg.value(metadata i8* %2, metadata !3722, metadata !DIExpression()), !dbg !3724
  %4 = bitcast i8* %2 to %struct._IO_FILE*, !dbg !3725
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %4, metadata !3723, metadata !DIExpression()), !dbg !3724
  %5 = icmp ult i32 %0, 65536, !dbg !3726
  %6 = select i1 %5, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6.97, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.98, i64 0, i64 0), !dbg !3728
  %7 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %4, i32 1, i8* %6, i32 %0) #19, !dbg !3729
  ret i64 -1, !dbg !3730
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @exit_failure_callback(i32 %0, i8* %1, i8* nocapture readnone %2) #8 !dbg !3731 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3733, metadata !DIExpression()), !dbg !3736
  call void @llvm.dbg.value(metadata i8* %1, metadata !3734, metadata !DIExpression()), !dbg !3736
  call void @llvm.dbg.value(metadata i8* %2, metadata !3735, metadata !DIExpression()), !dbg !3736
  %4 = icmp eq i8* %1, null, !dbg !3737
  br i1 %4, label %5, label %7, !dbg !3739

5:                                                ; preds = %3
  %6 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4.95, i64 0, i64 0), i32 5) #19, !dbg !3740
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %6, i32 %0) #19, !dbg !3741
  br label %10, !dbg !3741

7:                                                ; preds = %3
  %8 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.5.96, i64 0, i64 0), i32 5) #19, !dbg !3742
  %9 = tail call i8* @dcgettext(i8* null, i8* nonnull %1, i32 5) #19, !dbg !3743
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %8, i32 %0, i8* %9) #19, !dbg !3744
  br label %10

10:                                               ; preds = %7, %5
  ret i64 -1, !dbg !3745
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable writeonly
define dso_local i32 @u8_uctomb_aux(i8* nocapture %0, i32 %1, i32 %2) local_unnamed_addr #11 !dbg !3746 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3748, metadata !DIExpression()), !dbg !3752
  call void @llvm.dbg.value(metadata i32 %1, metadata !3749, metadata !DIExpression()), !dbg !3752
  call void @llvm.dbg.value(metadata i32 %2, metadata !3750, metadata !DIExpression()), !dbg !3752
  %4 = icmp ult i32 %1, 128, !dbg !3753
  br i1 %4, label %42, label %5, !dbg !3755

5:                                                ; preds = %3
  %6 = icmp ult i32 %1, 2048, !dbg !3756
  br i1 %6, label %14, label %7, !dbg !3758

7:                                                ; preds = %5
  %8 = icmp ult i32 %1, 65536, !dbg !3759
  br i1 %8, label %9, label %12, !dbg !3761

9:                                                ; preds = %7
  %10 = and i32 %1, -2048, !dbg !3762
  %11 = icmp eq i32 %10, 55296, !dbg !3762
  br i1 %11, label %42, label %14, !dbg !3762

12:                                               ; preds = %7
  %13 = icmp ult i32 %1, 1114112, !dbg !3765
  br i1 %13, label %14, label %42, !dbg !3767

14:                                               ; preds = %12, %9, %5
  %15 = phi i32 [ 2, %5 ], [ 3, %9 ], [ 4, %12 ], !dbg !3768
  call void @llvm.dbg.value(metadata i32 %15, metadata !3751, metadata !DIExpression()), !dbg !3752
  %16 = icmp sgt i32 %15, %2, !dbg !3769
  br i1 %16, label %42, label %17, !dbg !3771

17:                                               ; preds = %14
  switch i32 %15, label %42 [
    i32 4, label %18
    i32 3, label %25
    i32 2, label %33
  ], !dbg !3772

18:                                               ; preds = %17
  %19 = trunc i32 %1 to i8, !dbg !3773
  %20 = and i8 %19, 63, !dbg !3773
  %21 = or i8 %20, -128, !dbg !3773
  %22 = getelementptr inbounds i8, i8* %0, i64 3, !dbg !3775
  store i8 %21, i8* %22, align 1, !dbg !3776, !tbaa !1459
  %23 = lshr i32 %1, 6, !dbg !3777
  call void @llvm.dbg.value(metadata i32 %23, metadata !3749, metadata !DIExpression()), !dbg !3752
  %24 = or i32 %23, 65536, !dbg !3778
  call void @llvm.dbg.value(metadata i32 %24, metadata !3749, metadata !DIExpression()), !dbg !3752
  br label %25, !dbg !3779

25:                                               ; preds = %17, %18
  %26 = phi i32 [ %1, %17 ], [ %24, %18 ]
  call void @llvm.dbg.value(metadata i32 %26, metadata !3749, metadata !DIExpression()), !dbg !3752
  %27 = trunc i32 %26 to i8, !dbg !3780
  %28 = and i8 %27, 63, !dbg !3780
  %29 = or i8 %28, -128, !dbg !3780
  %30 = getelementptr inbounds i8, i8* %0, i64 2, !dbg !3781
  store i8 %29, i8* %30, align 1, !dbg !3782, !tbaa !1459
  %31 = lshr i32 %26, 6, !dbg !3783
  call void @llvm.dbg.value(metadata i32 %31, metadata !3749, metadata !DIExpression()), !dbg !3752
  %32 = or i32 %31, 2048, !dbg !3784
  call void @llvm.dbg.value(metadata i32 %32, metadata !3749, metadata !DIExpression()), !dbg !3752
  br label %33, !dbg !3785

33:                                               ; preds = %17, %25
  %34 = phi i32 [ %1, %17 ], [ %32, %25 ]
  call void @llvm.dbg.value(metadata i32 %34, metadata !3749, metadata !DIExpression()), !dbg !3752
  %35 = trunc i32 %34 to i8, !dbg !3786
  %36 = and i8 %35, 63, !dbg !3786
  %37 = or i8 %36, -128, !dbg !3786
  %38 = getelementptr inbounds i8, i8* %0, i64 1, !dbg !3787
  store i8 %37, i8* %38, align 1, !dbg !3788, !tbaa !1459
  %39 = lshr i32 %34, 6, !dbg !3789
  call void @llvm.dbg.value(metadata i32 %39, metadata !3749, metadata !DIExpression()), !dbg !3752
  call void @llvm.dbg.value(metadata i32 %39, metadata !3749, metadata !DIExpression(DW_OP_constu, 192, DW_OP_or, DW_OP_stack_value)), !dbg !3752
  %40 = trunc i32 %39 to i8, !dbg !3790
  %41 = or i8 %40, -64, !dbg !3790
  store i8 %41, i8* %0, align 1, !dbg !3791, !tbaa !1459
  br label %42, !dbg !3792

42:                                               ; preds = %17, %33, %14, %12, %9, %3
  %43 = phi i32 [ -2, %3 ], [ -1, %9 ], [ -1, %12 ], [ -2, %14 ], [ %15, %33 ], [ %15, %17 ], !dbg !3752
  ret i32 %43, !dbg !3793
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** readonly %4, i64 %5) local_unnamed_addr #8 !dbg !3794 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3801, metadata !DIExpression()), !dbg !3807
  call void @llvm.dbg.value(metadata i8* %1, metadata !3802, metadata !DIExpression()), !dbg !3807
  call void @llvm.dbg.value(metadata i8* %2, metadata !3803, metadata !DIExpression()), !dbg !3807
  call void @llvm.dbg.value(metadata i8* %3, metadata !3804, metadata !DIExpression()), !dbg !3807
  call void @llvm.dbg.value(metadata i8** %4, metadata !3805, metadata !DIExpression()), !dbg !3807
  call void @llvm.dbg.value(metadata i64 %5, metadata !3806, metadata !DIExpression()), !dbg !3807
  %7 = icmp eq i8* %1, null, !dbg !3808
  br i1 %7, label %10, label %8, !dbg !3810

8:                                                ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.101, i64 0, i64 0), i8* nonnull %1, i8* %2, i8* %3) #19, !dbg !3811
  br label %12, !dbg !3811

10:                                               ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.102, i64 0, i64 0), i8* %2, i8* %3) #19, !dbg !3812
  br label %12

12:                                               ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.103, i64 0, i64 0), i32 5) #19, !dbg !3813
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* %13, i32 2020) #19, !dbg !3813
  %15 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.104, i64 0, i64 0), %struct._IO_FILE* %0), !dbg !3814
  %16 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([171 x i8], [171 x i8]* @.str.4.105, i64 0, i64 0), i32 5) #19, !dbg !3815
  %17 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %16, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5.106, i64 0, i64 0)) #19, !dbg !3815
  %18 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.104, i64 0, i64 0), %struct._IO_FILE* %0), !dbg !3816
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
  ], !dbg !3817

19:                                               ; preds = %12
  %20 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6.107, i64 0, i64 0), i32 5) #19, !dbg !3818
  %21 = load i8*, i8** %4, align 8, !dbg !3818, !tbaa !1263
  %22 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %20, i8* %21) #19, !dbg !3818
  br label %147, !dbg !3820

23:                                               ; preds = %12
  %24 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7.108, i64 0, i64 0), i32 5) #19, !dbg !3821
  %25 = load i8*, i8** %4, align 8, !dbg !3821, !tbaa !1263
  %26 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3821
  %27 = load i8*, i8** %26, align 8, !dbg !3821, !tbaa !1263
  %28 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %24, i8* %25, i8* %27) #19, !dbg !3821
  br label %147, !dbg !3822

29:                                               ; preds = %12
  %30 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8.109, i64 0, i64 0), i32 5) #19, !dbg !3823
  %31 = load i8*, i8** %4, align 8, !dbg !3823, !tbaa !1263
  %32 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3823
  %33 = load i8*, i8** %32, align 8, !dbg !3823, !tbaa !1263
  %34 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3823
  %35 = load i8*, i8** %34, align 8, !dbg !3823, !tbaa !1263
  %36 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %30, i8* %31, i8* %33, i8* %35) #19, !dbg !3823
  br label %147, !dbg !3824

37:                                               ; preds = %12
  %38 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9.110, i64 0, i64 0), i32 5) #19, !dbg !3825
  %39 = load i8*, i8** %4, align 8, !dbg !3825, !tbaa !1263
  %40 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3825
  %41 = load i8*, i8** %40, align 8, !dbg !3825, !tbaa !1263
  %42 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3825
  %43 = load i8*, i8** %42, align 8, !dbg !3825, !tbaa !1263
  %44 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3825
  %45 = load i8*, i8** %44, align 8, !dbg !3825, !tbaa !1263
  %46 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %38, i8* %39, i8* %41, i8* %43, i8* %45) #19, !dbg !3825
  br label %147, !dbg !3826

47:                                               ; preds = %12
  %48 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.10.111, i64 0, i64 0), i32 5) #19, !dbg !3827
  %49 = load i8*, i8** %4, align 8, !dbg !3827, !tbaa !1263
  %50 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3827
  %51 = load i8*, i8** %50, align 8, !dbg !3827, !tbaa !1263
  %52 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3827
  %53 = load i8*, i8** %52, align 8, !dbg !3827, !tbaa !1263
  %54 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3827
  %55 = load i8*, i8** %54, align 8, !dbg !3827, !tbaa !1263
  %56 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3827
  %57 = load i8*, i8** %56, align 8, !dbg !3827, !tbaa !1263
  %58 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %48, i8* %49, i8* %51, i8* %53, i8* %55, i8* %57) #19, !dbg !3827
  br label %147, !dbg !3828

59:                                               ; preds = %12
  %60 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.11.112, i64 0, i64 0), i32 5) #19, !dbg !3829
  %61 = load i8*, i8** %4, align 8, !dbg !3829, !tbaa !1263
  %62 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3829
  %63 = load i8*, i8** %62, align 8, !dbg !3829, !tbaa !1263
  %64 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3829
  %65 = load i8*, i8** %64, align 8, !dbg !3829, !tbaa !1263
  %66 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3829
  %67 = load i8*, i8** %66, align 8, !dbg !3829, !tbaa !1263
  %68 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3829
  %69 = load i8*, i8** %68, align 8, !dbg !3829, !tbaa !1263
  %70 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3829
  %71 = load i8*, i8** %70, align 8, !dbg !3829, !tbaa !1263
  %72 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %60, i8* %61, i8* %63, i8* %65, i8* %67, i8* %69, i8* %71) #19, !dbg !3829
  br label %147, !dbg !3830

73:                                               ; preds = %12
  %74 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.12.113, i64 0, i64 0), i32 5) #19, !dbg !3831
  %75 = load i8*, i8** %4, align 8, !dbg !3831, !tbaa !1263
  %76 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3831
  %77 = load i8*, i8** %76, align 8, !dbg !3831, !tbaa !1263
  %78 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3831
  %79 = load i8*, i8** %78, align 8, !dbg !3831, !tbaa !1263
  %80 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3831
  %81 = load i8*, i8** %80, align 8, !dbg !3831, !tbaa !1263
  %82 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3831
  %83 = load i8*, i8** %82, align 8, !dbg !3831, !tbaa !1263
  %84 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3831
  %85 = load i8*, i8** %84, align 8, !dbg !3831, !tbaa !1263
  %86 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3831
  %87 = load i8*, i8** %86, align 8, !dbg !3831, !tbaa !1263
  %88 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %74, i8* %75, i8* %77, i8* %79, i8* %81, i8* %83, i8* %85, i8* %87) #19, !dbg !3831
  br label %147, !dbg !3832

89:                                               ; preds = %12
  %90 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.13.114, i64 0, i64 0), i32 5) #19, !dbg !3833
  %91 = load i8*, i8** %4, align 8, !dbg !3833, !tbaa !1263
  %92 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3833
  %93 = load i8*, i8** %92, align 8, !dbg !3833, !tbaa !1263
  %94 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3833
  %95 = load i8*, i8** %94, align 8, !dbg !3833, !tbaa !1263
  %96 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3833
  %97 = load i8*, i8** %96, align 8, !dbg !3833, !tbaa !1263
  %98 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3833
  %99 = load i8*, i8** %98, align 8, !dbg !3833, !tbaa !1263
  %100 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3833
  %101 = load i8*, i8** %100, align 8, !dbg !3833, !tbaa !1263
  %102 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3833
  %103 = load i8*, i8** %102, align 8, !dbg !3833, !tbaa !1263
  %104 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3833
  %105 = load i8*, i8** %104, align 8, !dbg !3833, !tbaa !1263
  %106 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %90, i8* %91, i8* %93, i8* %95, i8* %97, i8* %99, i8* %101, i8* %103, i8* %105) #19, !dbg !3833
  br label %147, !dbg !3834

107:                                              ; preds = %12
  %108 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.14.115, i64 0, i64 0), i32 5) #19, !dbg !3835
  %109 = load i8*, i8** %4, align 8, !dbg !3835, !tbaa !1263
  %110 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3835
  %111 = load i8*, i8** %110, align 8, !dbg !3835, !tbaa !1263
  %112 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3835
  %113 = load i8*, i8** %112, align 8, !dbg !3835, !tbaa !1263
  %114 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3835
  %115 = load i8*, i8** %114, align 8, !dbg !3835, !tbaa !1263
  %116 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3835
  %117 = load i8*, i8** %116, align 8, !dbg !3835, !tbaa !1263
  %118 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3835
  %119 = load i8*, i8** %118, align 8, !dbg !3835, !tbaa !1263
  %120 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3835
  %121 = load i8*, i8** %120, align 8, !dbg !3835, !tbaa !1263
  %122 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3835
  %123 = load i8*, i8** %122, align 8, !dbg !3835, !tbaa !1263
  %124 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3835
  %125 = load i8*, i8** %124, align 8, !dbg !3835, !tbaa !1263
  %126 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %108, i8* %109, i8* %111, i8* %113, i8* %115, i8* %117, i8* %119, i8* %121, i8* %123, i8* %125) #19, !dbg !3835
  br label %147, !dbg !3836

127:                                              ; preds = %12
  %128 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.15.116, i64 0, i64 0), i32 5) #19, !dbg !3837
  %129 = load i8*, i8** %4, align 8, !dbg !3837, !tbaa !1263
  %130 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3837
  %131 = load i8*, i8** %130, align 8, !dbg !3837, !tbaa !1263
  %132 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3837
  %133 = load i8*, i8** %132, align 8, !dbg !3837, !tbaa !1263
  %134 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3837
  %135 = load i8*, i8** %134, align 8, !dbg !3837, !tbaa !1263
  %136 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3837
  %137 = load i8*, i8** %136, align 8, !dbg !3837, !tbaa !1263
  %138 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3837
  %139 = load i8*, i8** %138, align 8, !dbg !3837, !tbaa !1263
  %140 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3837
  %141 = load i8*, i8** %140, align 8, !dbg !3837, !tbaa !1263
  %142 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3837
  %143 = load i8*, i8** %142, align 8, !dbg !3837, !tbaa !1263
  %144 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3837
  %145 = load i8*, i8** %144, align 8, !dbg !3837, !tbaa !1263
  %146 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %128, i8* %129, i8* %131, i8* %133, i8* %135, i8* %137, i8* %139, i8* %141, i8* %143, i8* %145) #19, !dbg !3837
  br label %147, !dbg !3838

147:                                              ; preds = %127, %107, %89, %73, %59, %47, %37, %29, %23, %19, %12
  ret void, !dbg !3839
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_ar(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** readonly %4) local_unnamed_addr #8 !dbg !3840 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3844, metadata !DIExpression()), !dbg !3850
  call void @llvm.dbg.value(metadata i8* %1, metadata !3845, metadata !DIExpression()), !dbg !3850
  call void @llvm.dbg.value(metadata i8* %2, metadata !3846, metadata !DIExpression()), !dbg !3850
  call void @llvm.dbg.value(metadata i8* %3, metadata !3847, metadata !DIExpression()), !dbg !3850
  call void @llvm.dbg.value(metadata i8** %4, metadata !3848, metadata !DIExpression()), !dbg !3850
  call void @llvm.dbg.value(metadata i64 0, metadata !3849, metadata !DIExpression()), !dbg !3850
  br label %6, !dbg !3851

6:                                                ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !3853
  call void @llvm.dbg.value(metadata i64 %7, metadata !3849, metadata !DIExpression()), !dbg !3850
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7, !dbg !3854
  %9 = load i8*, i8** %8, align 8, !dbg !3854, !tbaa !1263
  %10 = icmp eq i8* %9, null, !dbg !3856
  %11 = add i64 %7, 1, !dbg !3857
  call void @llvm.dbg.value(metadata i64 %11, metadata !3849, metadata !DIExpression()), !dbg !3850
  br i1 %10, label %12, label %6, !dbg !3856, !llvm.loop !3858

12:                                               ; preds = %6
  call void @llvm.dbg.value(metadata i64 %7, metadata !3849, metadata !DIExpression()), !dbg !3850
  call void @llvm.dbg.value(metadata i64 %7, metadata !3849, metadata !DIExpression()), !dbg !3850
  call void @llvm.dbg.value(metadata i64 %7, metadata !3849, metadata !DIExpression()), !dbg !3850
  call void @llvm.dbg.value(metadata i64 %7, metadata !3849, metadata !DIExpression()), !dbg !3850
  call void @llvm.dbg.value(metadata i64 %7, metadata !3849, metadata !DIExpression()), !dbg !3850
  call void @llvm.dbg.value(metadata i64 %7, metadata !3849, metadata !DIExpression()), !dbg !3850
  tail call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %4, i64 %7), !dbg !3860
  ret void, !dbg !3861
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nocapture %4) local_unnamed_addr #8 !dbg !3862 {
  %6 = alloca [10 x i8*], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3873, metadata !DIExpression()), !dbg !3881
  call void @llvm.dbg.value(metadata i8* %1, metadata !3874, metadata !DIExpression()), !dbg !3881
  call void @llvm.dbg.value(metadata i8* %2, metadata !3875, metadata !DIExpression()), !dbg !3881
  call void @llvm.dbg.value(metadata i8* %3, metadata !3876, metadata !DIExpression()), !dbg !3881
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %4, metadata !3877, metadata !DIExpression()), !dbg !3881
  %7 = bitcast [10 x i8*]* %6 to i8*, !dbg !3882
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %7) #19, !dbg !3882
  call void @llvm.dbg.declare(metadata [10 x i8*]* %6, metadata !3879, metadata !DIExpression()), !dbg !3883
  call void @llvm.dbg.value(metadata i64 0, metadata !3878, metadata !DIExpression()), !dbg !3881
  %8 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 0, !dbg !3884
  %9 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 2, !dbg !3884
  %10 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 3, !dbg !3884
  %11 = load i32, i32* %8, align 8, !dbg !3887
  %12 = icmp ult i32 %11, 41, !dbg !3887
  br i1 %12, label %13, label %18, !dbg !3887

13:                                               ; preds = %5
  %14 = load i8*, i8** %10, align 8, !dbg !3887
  %15 = zext i32 %11 to i64, !dbg !3887
  %16 = getelementptr i8, i8* %14, i64 %15, !dbg !3887
  %17 = add nuw nsw i32 %11, 8, !dbg !3887
  store i32 %17, i32* %8, align 8, !dbg !3887
  br label %21, !dbg !3887

18:                                               ; preds = %5
  %19 = load i8*, i8** %9, align 8, !dbg !3887
  %20 = getelementptr i8, i8* %19, i64 8, !dbg !3887
  store i8* %20, i8** %9, align 8, !dbg !3887
  br label %21, !dbg !3887

21:                                               ; preds = %18, %13
  %22 = phi i32 [ %17, %13 ], [ %11, %18 ]
  %23 = phi i8* [ %16, %13 ], [ %19, %18 ]
  %24 = bitcast i8* %23 to i8**, !dbg !3887
  %25 = load i8*, i8** %24, align 8, !dbg !3887
  %26 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !3888
  store i8* %25, i8** %26, align 16, !dbg !3889, !tbaa !1263
  %27 = icmp eq i8* %25, null, !dbg !3890
  br i1 %27, label %30, label %28, !dbg !3891

28:                                               ; preds = %21
  call void @llvm.dbg.value(metadata i64 1, metadata !3878, metadata !DIExpression()), !dbg !3881
  %29 = icmp ult i32 %22, 41, !dbg !3887
  br i1 %29, label %35, label %32, !dbg !3887

30:                                               ; preds = %135, %128, %121, %114, %108, %91, %74, %57, %40, %21
  %31 = phi i64 [ 0, %21 ], [ 1, %40 ], [ 2, %57 ], [ 3, %74 ], [ 4, %91 ], [ 5, %108 ], [ 6, %114 ], [ 7, %121 ], [ 8, %128 ], [ %142, %135 ], !dbg !3892
  call void @llvm.dbg.value(metadata i64 %31, metadata !3878, metadata !DIExpression()), !dbg !3881
  call void @llvm.dbg.value(metadata i64 %31, metadata !3878, metadata !DIExpression()), !dbg !3881
  call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %26, i64 %31), !dbg !3893
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %7) #19, !dbg !3894
  ret void, !dbg !3894

32:                                               ; preds = %28
  %33 = load i8*, i8** %9, align 8, !dbg !3887
  %34 = getelementptr i8, i8* %33, i64 8, !dbg !3887
  store i8* %34, i8** %9, align 8, !dbg !3887
  br label %40, !dbg !3887

35:                                               ; preds = %28
  %36 = load i8*, i8** %10, align 8, !dbg !3887
  %37 = zext i32 %22 to i64, !dbg !3887
  %38 = getelementptr i8, i8* %36, i64 %37, !dbg !3887
  %39 = add nuw nsw i32 %22, 8, !dbg !3887
  store i32 %39, i32* %8, align 8, !dbg !3887
  br label %40, !dbg !3887

40:                                               ; preds = %35, %32
  %41 = phi i32 [ %39, %35 ], [ %22, %32 ]
  %42 = phi i8* [ %38, %35 ], [ %33, %32 ]
  %43 = bitcast i8* %42 to i8**, !dbg !3887
  %44 = load i8*, i8** %43, align 8, !dbg !3887
  %45 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !3888
  store i8* %44, i8** %45, align 8, !dbg !3889, !tbaa !1263
  %46 = icmp eq i8* %44, null, !dbg !3890
  br i1 %46, label %30, label %47, !dbg !3891

47:                                               ; preds = %40
  call void @llvm.dbg.value(metadata i64 2, metadata !3878, metadata !DIExpression()), !dbg !3881
  %48 = icmp ult i32 %41, 41, !dbg !3887
  br i1 %48, label %52, label %49, !dbg !3887

49:                                               ; preds = %47
  %50 = load i8*, i8** %9, align 8, !dbg !3887
  %51 = getelementptr i8, i8* %50, i64 8, !dbg !3887
  store i8* %51, i8** %9, align 8, !dbg !3887
  br label %57, !dbg !3887

52:                                               ; preds = %47
  %53 = load i8*, i8** %10, align 8, !dbg !3887
  %54 = zext i32 %41 to i64, !dbg !3887
  %55 = getelementptr i8, i8* %53, i64 %54, !dbg !3887
  %56 = add nuw nsw i32 %41, 8, !dbg !3887
  store i32 %56, i32* %8, align 8, !dbg !3887
  br label %57, !dbg !3887

57:                                               ; preds = %52, %49
  %58 = phi i32 [ %56, %52 ], [ %41, %49 ]
  %59 = phi i8* [ %55, %52 ], [ %50, %49 ]
  %60 = bitcast i8* %59 to i8**, !dbg !3887
  %61 = load i8*, i8** %60, align 8, !dbg !3887
  %62 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !3888
  store i8* %61, i8** %62, align 16, !dbg !3889, !tbaa !1263
  %63 = icmp eq i8* %61, null, !dbg !3890
  br i1 %63, label %30, label %64, !dbg !3891

64:                                               ; preds = %57
  call void @llvm.dbg.value(metadata i64 3, metadata !3878, metadata !DIExpression()), !dbg !3881
  %65 = icmp ult i32 %58, 41, !dbg !3887
  br i1 %65, label %69, label %66, !dbg !3887

66:                                               ; preds = %64
  %67 = load i8*, i8** %9, align 8, !dbg !3887
  %68 = getelementptr i8, i8* %67, i64 8, !dbg !3887
  store i8* %68, i8** %9, align 8, !dbg !3887
  br label %74, !dbg !3887

69:                                               ; preds = %64
  %70 = load i8*, i8** %10, align 8, !dbg !3887
  %71 = zext i32 %58 to i64, !dbg !3887
  %72 = getelementptr i8, i8* %70, i64 %71, !dbg !3887
  %73 = add nuw nsw i32 %58, 8, !dbg !3887
  store i32 %73, i32* %8, align 8, !dbg !3887
  br label %74, !dbg !3887

74:                                               ; preds = %69, %66
  %75 = phi i32 [ %73, %69 ], [ %58, %66 ]
  %76 = phi i8* [ %72, %69 ], [ %67, %66 ]
  %77 = bitcast i8* %76 to i8**, !dbg !3887
  %78 = load i8*, i8** %77, align 8, !dbg !3887
  %79 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !3888
  store i8* %78, i8** %79, align 8, !dbg !3889, !tbaa !1263
  %80 = icmp eq i8* %78, null, !dbg !3890
  br i1 %80, label %30, label %81, !dbg !3891

81:                                               ; preds = %74
  call void @llvm.dbg.value(metadata i64 4, metadata !3878, metadata !DIExpression()), !dbg !3881
  %82 = icmp ult i32 %75, 41, !dbg !3887
  br i1 %82, label %86, label %83, !dbg !3887

83:                                               ; preds = %81
  %84 = load i8*, i8** %9, align 8, !dbg !3887
  %85 = getelementptr i8, i8* %84, i64 8, !dbg !3887
  store i8* %85, i8** %9, align 8, !dbg !3887
  br label %91, !dbg !3887

86:                                               ; preds = %81
  %87 = load i8*, i8** %10, align 8, !dbg !3887
  %88 = zext i32 %75 to i64, !dbg !3887
  %89 = getelementptr i8, i8* %87, i64 %88, !dbg !3887
  %90 = add nuw nsw i32 %75, 8, !dbg !3887
  store i32 %90, i32* %8, align 8, !dbg !3887
  br label %91, !dbg !3887

91:                                               ; preds = %86, %83
  %92 = phi i32 [ %90, %86 ], [ %75, %83 ]
  %93 = phi i8* [ %89, %86 ], [ %84, %83 ]
  %94 = bitcast i8* %93 to i8**, !dbg !3887
  %95 = load i8*, i8** %94, align 8, !dbg !3887
  %96 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !3888
  store i8* %95, i8** %96, align 16, !dbg !3889, !tbaa !1263
  %97 = icmp eq i8* %95, null, !dbg !3890
  br i1 %97, label %30, label %98, !dbg !3891

98:                                               ; preds = %91
  call void @llvm.dbg.value(metadata i64 5, metadata !3878, metadata !DIExpression()), !dbg !3881
  %99 = icmp ult i32 %92, 41, !dbg !3887
  br i1 %99, label %103, label %100, !dbg !3887

100:                                              ; preds = %98
  %101 = load i8*, i8** %9, align 8, !dbg !3887
  %102 = getelementptr i8, i8* %101, i64 8, !dbg !3887
  store i8* %102, i8** %9, align 8, !dbg !3887
  br label %108, !dbg !3887

103:                                              ; preds = %98
  %104 = load i8*, i8** %10, align 8, !dbg !3887
  %105 = zext i32 %92 to i64, !dbg !3887
  %106 = getelementptr i8, i8* %104, i64 %105, !dbg !3887
  %107 = add nuw nsw i32 %92, 8, !dbg !3887
  store i32 %107, i32* %8, align 8, !dbg !3887
  br label %108, !dbg !3887

108:                                              ; preds = %103, %100
  %109 = phi i8* [ %106, %103 ], [ %101, %100 ]
  %110 = bitcast i8* %109 to i8**, !dbg !3887
  %111 = load i8*, i8** %110, align 8, !dbg !3887
  %112 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !3888
  store i8* %111, i8** %112, align 8, !dbg !3889, !tbaa !1263
  %113 = icmp eq i8* %111, null, !dbg !3890
  br i1 %113, label %30, label %114, !dbg !3891

114:                                              ; preds = %108
  call void @llvm.dbg.value(metadata i64 6, metadata !3878, metadata !DIExpression()), !dbg !3881
  %115 = load i8*, i8** %9, align 8, !dbg !3887
  %116 = getelementptr i8, i8* %115, i64 8, !dbg !3887
  store i8* %116, i8** %9, align 8, !dbg !3887
  %117 = bitcast i8* %115 to i8**, !dbg !3887
  %118 = load i8*, i8** %117, align 8, !dbg !3887
  %119 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !3888
  store i8* %118, i8** %119, align 16, !dbg !3889, !tbaa !1263
  %120 = icmp eq i8* %118, null, !dbg !3890
  br i1 %120, label %30, label %121, !dbg !3891

121:                                              ; preds = %114
  call void @llvm.dbg.value(metadata i64 7, metadata !3878, metadata !DIExpression()), !dbg !3881
  %122 = load i8*, i8** %9, align 8, !dbg !3887
  %123 = getelementptr i8, i8* %122, i64 8, !dbg !3887
  store i8* %123, i8** %9, align 8, !dbg !3887
  %124 = bitcast i8* %122 to i8**, !dbg !3887
  %125 = load i8*, i8** %124, align 8, !dbg !3887
  %126 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !3888
  store i8* %125, i8** %126, align 8, !dbg !3889, !tbaa !1263
  %127 = icmp eq i8* %125, null, !dbg !3890
  br i1 %127, label %30, label %128, !dbg !3891

128:                                              ; preds = %121
  call void @llvm.dbg.value(metadata i64 8, metadata !3878, metadata !DIExpression()), !dbg !3881
  %129 = load i8*, i8** %9, align 8, !dbg !3887
  %130 = getelementptr i8, i8* %129, i64 8, !dbg !3887
  store i8* %130, i8** %9, align 8, !dbg !3887
  %131 = bitcast i8* %129 to i8**, !dbg !3887
  %132 = load i8*, i8** %131, align 8, !dbg !3887
  %133 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !3888
  store i8* %132, i8** %133, align 16, !dbg !3889, !tbaa !1263
  %134 = icmp eq i8* %132, null, !dbg !3890
  br i1 %134, label %30, label %135, !dbg !3891

135:                                              ; preds = %128
  call void @llvm.dbg.value(metadata i64 9, metadata !3878, metadata !DIExpression()), !dbg !3881
  %136 = load i8*, i8** %9, align 8, !dbg !3887
  %137 = getelementptr i8, i8* %136, i64 8, !dbg !3887
  store i8* %137, i8** %9, align 8, !dbg !3887
  %138 = bitcast i8* %136 to i8**, !dbg !3887
  %139 = load i8*, i8** %138, align 8, !dbg !3887
  %140 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9, !dbg !3888
  store i8* %139, i8** %140, align 8, !dbg !3889, !tbaa !1263
  %141 = icmp eq i8* %139, null, !dbg !3890
  %142 = select i1 %141, i64 9, i64 10, !dbg !3891
  br label %30, !dbg !3891
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, ...) local_unnamed_addr #8 !dbg !3895 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3899, metadata !DIExpression()), !dbg !3909
  call void @llvm.dbg.value(metadata i8* %1, metadata !3900, metadata !DIExpression()), !dbg !3909
  call void @llvm.dbg.value(metadata i8* %2, metadata !3901, metadata !DIExpression()), !dbg !3909
  call void @llvm.dbg.value(metadata i8* %3, metadata !3902, metadata !DIExpression()), !dbg !3909
  %6 = bitcast [1 x %struct.__va_list_tag]* %5 to i8*, !dbg !3910
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %6) #19, !dbg !3910
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %5, metadata !3903, metadata !DIExpression()), !dbg !3911
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0, !dbg !3912
  call void @llvm.va_start(i8* nonnull %6), !dbg !3912
  call void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nonnull %7), !dbg !3913
  call void @llvm.va_end(i8* nonnull %6), !dbg !3914
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %6) #19, !dbg !3915
  ret void, !dbg !3915
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #19

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #19

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #8 !dbg !3916 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !3917, !tbaa !1263
  %2 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.104, i64 0, i64 0), %struct._IO_FILE* %1), !dbg !3917
  %3 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16.119, i64 0, i64 0), i32 5) #19, !dbg !3918
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %3, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.17.120, i64 0, i64 0)) #19, !dbg !3918
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.18.121, i64 0, i64 0), i32 5) #19, !dbg !3919
  %6 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %5, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.19.122, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.20.123, i64 0, i64 0)) #19, !dbg !3919
  %7 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.21.124, i64 0, i64 0), i32 5) #19, !dbg !3920
  %8 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %7, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.22.125, i64 0, i64 0)) #19, !dbg !3920
  ret void, !dbg !3921
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnmalloc(i64 %0, i64 %1) local_unnamed_addr #20 !dbg !3922 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3926, metadata !DIExpression()), !dbg !3928
  call void @llvm.dbg.value(metadata i64 %1, metadata !3927, metadata !DIExpression()), !dbg !3928
  %3 = udiv i64 9223372036854775807, %1, !dbg !3929
  %4 = icmp ult i64 %3, %0, !dbg !3929
  br i1 %4, label %5, label %6, !dbg !3931

5:                                                ; preds = %2
  tail call void @xalloc_die() #22, !dbg !3932
  unreachable, !dbg !3932

6:                                                ; preds = %2
  %7 = mul i64 %1, %0, !dbg !3933
  call void @llvm.dbg.value(metadata i64 %7, metadata !3934, metadata !DIExpression()) #19, !dbg !3940
  %8 = tail call noalias i8* @malloc(i64 %7) #19, !dbg !3942
  call void @llvm.dbg.value(metadata i8* %8, metadata !3939, metadata !DIExpression()) #19, !dbg !3940
  %9 = icmp eq i8* %8, null, !dbg !3943
  %10 = icmp ne i64 %7, 0, !dbg !3945
  %11 = and i1 %10, %9, !dbg !3946
  br i1 %11, label %12, label %13, !dbg !3946

12:                                               ; preds = %6
  tail call void @xalloc_die() #22, !dbg !3947
  unreachable, !dbg !3947

13:                                               ; preds = %6
  ret i8* %8, !dbg !3948
}

; Function Attrs: nofree nounwind
declare noalias i8* @malloc(i64) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xmalloc(i64 %0) local_unnamed_addr #8 !dbg !3935 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3934, metadata !DIExpression()), !dbg !3949
  %2 = tail call noalias i8* @malloc(i64 %0) #19, !dbg !3950
  call void @llvm.dbg.value(metadata i8* %2, metadata !3939, metadata !DIExpression()), !dbg !3949
  %3 = icmp eq i8* %2, null, !dbg !3951
  %4 = icmp ne i64 %0, 0, !dbg !3952
  %5 = and i1 %4, %3, !dbg !3953
  br i1 %5, label %6, label %7, !dbg !3953

6:                                                ; preds = %1
  tail call void @xalloc_die() #22, !dbg !3954
  unreachable, !dbg !3954

7:                                                ; preds = %1
  ret i8* %2, !dbg !3955
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnrealloc(i8* %0, i64 %1, i64 %2) local_unnamed_addr #20 !dbg !3956 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3960, metadata !DIExpression()), !dbg !3963
  call void @llvm.dbg.value(metadata i64 %1, metadata !3961, metadata !DIExpression()), !dbg !3963
  call void @llvm.dbg.value(metadata i64 %2, metadata !3962, metadata !DIExpression()), !dbg !3963
  %4 = udiv i64 9223372036854775807, %2, !dbg !3964
  %5 = icmp ult i64 %4, %1, !dbg !3964
  br i1 %5, label %6, label %7, !dbg !3966

6:                                                ; preds = %3
  tail call void @xalloc_die() #22, !dbg !3967
  unreachable, !dbg !3967

7:                                                ; preds = %3
  %8 = mul i64 %2, %1, !dbg !3968
  call void @llvm.dbg.value(metadata i8* %0, metadata !3969, metadata !DIExpression()) #19, !dbg !3975
  call void @llvm.dbg.value(metadata i64 %8, metadata !3974, metadata !DIExpression()) #19, !dbg !3975
  %9 = icmp eq i64 %8, 0, !dbg !3977
  %10 = icmp ne i8* %0, null, !dbg !3979
  %11 = and i1 %10, %9, !dbg !3980
  br i1 %11, label %12, label %13, !dbg !3980

12:                                               ; preds = %7
  tail call void @free(i8* nonnull %0) #19, !dbg !3981
  br label %19, !dbg !3983

13:                                               ; preds = %7
  %14 = tail call i8* @realloc(i8* %0, i64 %8) #19, !dbg !3984
  call void @llvm.dbg.value(metadata i8* %14, metadata !3969, metadata !DIExpression()) #19, !dbg !3975
  %15 = icmp eq i8* %14, null, !dbg !3985
  %16 = icmp ne i64 %8, 0, !dbg !3987
  %17 = and i1 %16, %15, !dbg !3988
  br i1 %17, label %18, label %19, !dbg !3988

18:                                               ; preds = %13
  tail call void @xalloc_die() #22, !dbg !3989
  unreachable, !dbg !3989

19:                                               ; preds = %12, %13
  %20 = phi i8* [ null, %12 ], [ %14, %13 ], !dbg !3975
  ret i8* %20, !dbg !3990
}

; Function Attrs: nounwind
declare noalias i8* @realloc(i8* nocapture, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xrealloc(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !3970 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3969, metadata !DIExpression()), !dbg !3991
  call void @llvm.dbg.value(metadata i64 %1, metadata !3974, metadata !DIExpression()), !dbg !3991
  %3 = icmp eq i64 %1, 0, !dbg !3992
  %4 = icmp ne i8* %0, null, !dbg !3993
  %5 = and i1 %4, %3, !dbg !3994
  br i1 %5, label %6, label %7, !dbg !3994

6:                                                ; preds = %2
  tail call void @free(i8* nonnull %0) #19, !dbg !3995
  br label %13, !dbg !3996

7:                                                ; preds = %2
  %8 = tail call i8* @realloc(i8* %0, i64 %1) #19, !dbg !3997
  call void @llvm.dbg.value(metadata i8* %8, metadata !3969, metadata !DIExpression()), !dbg !3991
  %9 = icmp eq i8* %8, null, !dbg !3998
  %10 = icmp ne i64 %1, 0, !dbg !3999
  %11 = and i1 %10, %9, !dbg !4000
  br i1 %11, label %12, label %13, !dbg !4000

12:                                               ; preds = %7
  tail call void @xalloc_die() #22, !dbg !4001
  unreachable, !dbg !4001

13:                                               ; preds = %7, %6
  %14 = phi i8* [ null, %6 ], [ %8, %7 ], !dbg !3991
  ret i8* %14, !dbg !4002
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @x2nrealloc(i8* %0, i64* nocapture %1, i64 %2) local_unnamed_addr #20 !dbg !565 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !570, metadata !DIExpression()), !dbg !4003
  call void @llvm.dbg.value(metadata i64* %1, metadata !571, metadata !DIExpression()), !dbg !4003
  call void @llvm.dbg.value(metadata i64 %2, metadata !572, metadata !DIExpression()), !dbg !4003
  %4 = load i64, i64* %1, align 8, !dbg !4004, !tbaa !3049
  call void @llvm.dbg.value(metadata i64 %4, metadata !573, metadata !DIExpression()), !dbg !4003
  %5 = icmp eq i8* %0, null, !dbg !4005
  br i1 %5, label %6, label %20, !dbg !4007

6:                                                ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !4008
  br i1 %7, label %8, label %13, !dbg !4011

8:                                                ; preds = %6
  %9 = udiv i64 128, %2, !dbg !4012
  call void @llvm.dbg.value(metadata i64 %9, metadata !573, metadata !DIExpression()), !dbg !4003
  %10 = icmp ugt i64 %2, 128, !dbg !4014
  %11 = zext i1 %10 to i64, !dbg !4014
  %12 = add nuw nsw i64 %9, %11, !dbg !4015
  call void @llvm.dbg.value(metadata i64 %12, metadata !573, metadata !DIExpression()), !dbg !4003
  br label %13, !dbg !4016

13:                                               ; preds = %6, %8
  %14 = phi i64 [ %4, %6 ], [ %12, %8 ], !dbg !4003
  call void @llvm.dbg.value(metadata i64 %14, metadata !573, metadata !DIExpression()), !dbg !4003
  %15 = udiv i64 9223372036854775807, %2, !dbg !4017
  %16 = icmp ult i64 %15, %14, !dbg !4017
  br i1 %16, label %19, label %17, !dbg !4019

17:                                               ; preds = %13
  call void @llvm.dbg.value(metadata i64 %27, metadata !573, metadata !DIExpression()), !dbg !4003
  store i64 %14, i64* %1, align 8, !dbg !4020, !tbaa !3049
  %18 = mul i64 %14, %2, !dbg !4021
  call void @llvm.dbg.value(metadata i8* %0, metadata !3969, metadata !DIExpression()) #19, !dbg !4022
  call void @llvm.dbg.value(metadata i64 %28, metadata !3974, metadata !DIExpression()) #19, !dbg !4022
  br label %31, !dbg !4024

19:                                               ; preds = %13
  tail call void @xalloc_die() #22, !dbg !4025
  unreachable, !dbg !4025

20:                                               ; preds = %3
  %21 = udiv i64 6148914691236517204, %2, !dbg !4026
  %22 = icmp ugt i64 %21, %4, !dbg !4029
  br i1 %22, label %24, label %23, !dbg !4030

23:                                               ; preds = %20
  tail call void @xalloc_die() #22, !dbg !4031
  unreachable, !dbg !4031

24:                                               ; preds = %20
  %25 = lshr i64 %4, 1, !dbg !4032
  %26 = add nuw i64 %4, 1, !dbg !4033
  %27 = add i64 %26, %25, !dbg !4034
  call void @llvm.dbg.value(metadata i64 %27, metadata !573, metadata !DIExpression()), !dbg !4003
  call void @llvm.dbg.value(metadata i64 %27, metadata !573, metadata !DIExpression()), !dbg !4003
  store i64 %27, i64* %1, align 8, !dbg !4020, !tbaa !3049
  %28 = mul i64 %27, %2, !dbg !4021
  call void @llvm.dbg.value(metadata i8* %0, metadata !3969, metadata !DIExpression()) #19, !dbg !4022
  call void @llvm.dbg.value(metadata i64 %28, metadata !3974, metadata !DIExpression()) #19, !dbg !4022
  %29 = icmp eq i64 %28, 0, !dbg !4035
  br i1 %29, label %30, label %31, !dbg !4024

30:                                               ; preds = %24
  tail call void @free(i8* nonnull %0) #19, !dbg !4036
  br label %38, !dbg !4037

31:                                               ; preds = %17, %24
  %32 = phi i64 [ %18, %17 ], [ %28, %24 ]
  %33 = tail call i8* @realloc(i8* %0, i64 %32) #19, !dbg !4038
  call void @llvm.dbg.value(metadata i8* %33, metadata !3969, metadata !DIExpression()) #19, !dbg !4022
  %34 = icmp eq i8* %33, null, !dbg !4039
  %35 = icmp ne i64 %32, 0, !dbg !4040
  %36 = and i1 %35, %34, !dbg !4041
  br i1 %36, label %37, label %38, !dbg !4041

37:                                               ; preds = %31
  tail call void @xalloc_die() #22, !dbg !4042
  unreachable, !dbg !4042

38:                                               ; preds = %30, %31
  %39 = phi i8* [ null, %30 ], [ %33, %31 ], !dbg !4022
  ret i8* %39, !dbg !4043
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xcharalloc(i64 %0) local_unnamed_addr #20 !dbg !4044 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4046, metadata !DIExpression()), !dbg !4047
  call void @llvm.dbg.value(metadata i64 %0, metadata !3934, metadata !DIExpression()) #19, !dbg !4048
  %2 = tail call noalias i8* @malloc(i64 %0) #19, !dbg !4050
  call void @llvm.dbg.value(metadata i8* %2, metadata !3939, metadata !DIExpression()) #19, !dbg !4048
  %3 = icmp eq i8* %2, null, !dbg !4051
  %4 = icmp ne i64 %0, 0, !dbg !4052
  %5 = and i1 %4, %3, !dbg !4053
  br i1 %5, label %6, label %7, !dbg !4053

6:                                                ; preds = %1
  tail call void @xalloc_die() #22, !dbg !4054
  unreachable, !dbg !4054

7:                                                ; preds = %1
  ret i8* %2, !dbg !4055
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @x2realloc(i8* %0, i64* nocapture %1) local_unnamed_addr #8 !dbg !4056 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4060, metadata !DIExpression()), !dbg !4062
  call void @llvm.dbg.value(metadata i64* %1, metadata !4061, metadata !DIExpression()), !dbg !4062
  call void @llvm.dbg.value(metadata i8* %0, metadata !570, metadata !DIExpression()) #19, !dbg !4063
  call void @llvm.dbg.value(metadata i64* %1, metadata !571, metadata !DIExpression()) #19, !dbg !4063
  call void @llvm.dbg.value(metadata i64 1, metadata !572, metadata !DIExpression()) #19, !dbg !4063
  %3 = load i64, i64* %1, align 8, !dbg !4065, !tbaa !3049
  call void @llvm.dbg.value(metadata i64 %3, metadata !573, metadata !DIExpression()) #19, !dbg !4063
  %4 = icmp eq i8* %0, null, !dbg !4066
  br i1 %4, label %5, label %12, !dbg !4067

5:                                                ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !4068
  br i1 %6, label %9, label %7, !dbg !4069

7:                                                ; preds = %5
  call void @llvm.dbg.value(metadata i64 %3, metadata !573, metadata !DIExpression()) #19, !dbg !4063
  %8 = icmp slt i64 %3, 0, !dbg !4070
  br i1 %8, label %11, label %9, !dbg !4071

9:                                                ; preds = %5, %7
  %10 = phi i64 [ %3, %7 ], [ 128, %5 ]
  call void @llvm.dbg.value(metadata i64 %18, metadata !573, metadata !DIExpression()) #19, !dbg !4063
  store i64 %10, i64* %1, align 8, !dbg !4072, !tbaa !3049
  call void @llvm.dbg.value(metadata i8* %0, metadata !3969, metadata !DIExpression()) #19, !dbg !4073
  call void @llvm.dbg.value(metadata i64 %18, metadata !3974, metadata !DIExpression()) #19, !dbg !4073
  br label %21, !dbg !4075

11:                                               ; preds = %7
  tail call void @xalloc_die() #22, !dbg !4076
  unreachable, !dbg !4076

12:                                               ; preds = %2
  %13 = icmp ult i64 %3, 6148914691236517204, !dbg !4077
  br i1 %13, label %15, label %14, !dbg !4078

14:                                               ; preds = %12
  tail call void @xalloc_die() #22, !dbg !4079
  unreachable, !dbg !4079

15:                                               ; preds = %12
  %16 = lshr i64 %3, 1, !dbg !4080
  %17 = add nuw nsw i64 %3, 1, !dbg !4081
  %18 = add nuw nsw i64 %17, %16, !dbg !4082
  call void @llvm.dbg.value(metadata i64 %18, metadata !573, metadata !DIExpression()) #19, !dbg !4063
  call void @llvm.dbg.value(metadata i64 %18, metadata !573, metadata !DIExpression()) #19, !dbg !4063
  store i64 %18, i64* %1, align 8, !dbg !4072, !tbaa !3049
  call void @llvm.dbg.value(metadata i8* %0, metadata !3969, metadata !DIExpression()) #19, !dbg !4073
  call void @llvm.dbg.value(metadata i64 %18, metadata !3974, metadata !DIExpression()) #19, !dbg !4073
  %19 = icmp eq i64 %18, 0, !dbg !4083
  br i1 %19, label %20, label %21, !dbg !4075

20:                                               ; preds = %15
  tail call void @free(i8* nonnull %0) #19, !dbg !4084
  br label %28, !dbg !4085

21:                                               ; preds = %15, %9
  %22 = phi i64 [ %10, %9 ], [ %18, %15 ]
  %23 = tail call i8* @realloc(i8* %0, i64 %22) #19, !dbg !4086
  call void @llvm.dbg.value(metadata i8* %23, metadata !3969, metadata !DIExpression()) #19, !dbg !4073
  %24 = icmp eq i8* %23, null, !dbg !4087
  %25 = icmp ne i64 %22, 0, !dbg !4088
  %26 = and i1 %25, %24, !dbg !4089
  br i1 %26, label %27, label %28, !dbg !4089

27:                                               ; preds = %21
  tail call void @xalloc_die() #22, !dbg !4090
  unreachable, !dbg !4090

28:                                               ; preds = %20, %21
  %29 = phi i8* [ null, %20 ], [ %23, %21 ], !dbg !4073
  ret i8* %29, !dbg !4091
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xzalloc(i64 %0) local_unnamed_addr #8 !dbg !4092 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4094, metadata !DIExpression()), !dbg !4095
  call void @llvm.dbg.value(metadata i64 %0, metadata !4096, metadata !DIExpression()) #19, !dbg !4101
  call void @llvm.dbg.value(metadata i64 1, metadata !4099, metadata !DIExpression()) #19, !dbg !4101
  %2 = icmp slt i64 %0, 0, !dbg !4103
  br i1 %2, label %6, label %3, !dbg !4105

3:                                                ; preds = %1
  %4 = tail call i8* @rpl_calloc(i64 %0, i64 1) #19, !dbg !4106
  call void @llvm.dbg.value(metadata i8* %4, metadata !4100, metadata !DIExpression()) #19, !dbg !4101
  %5 = icmp eq i8* %4, null, !dbg !4107
  br i1 %5, label %6, label %7, !dbg !4108

6:                                                ; preds = %3, %1
  tail call void @xalloc_die() #22, !dbg !4109
  unreachable, !dbg !4109

7:                                                ; preds = %3
  ret i8* %4, !dbg !4110
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xcalloc(i64 %0, i64 %1) local_unnamed_addr #8 !dbg !4097 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4096, metadata !DIExpression()), !dbg !4111
  call void @llvm.dbg.value(metadata i64 %1, metadata !4099, metadata !DIExpression()), !dbg !4111
  %3 = udiv i64 9223372036854775807, %1, !dbg !4112
  %4 = icmp ult i64 %3, %0, !dbg !4112
  br i1 %4, label %8, label %5, !dbg !4113

5:                                                ; preds = %2
  %6 = tail call i8* @rpl_calloc(i64 %0, i64 %1) #19, !dbg !4114
  call void @llvm.dbg.value(metadata i8* %6, metadata !4100, metadata !DIExpression()), !dbg !4111
  %7 = icmp eq i8* %6, null, !dbg !4115
  br i1 %7, label %8, label %9, !dbg !4116

8:                                                ; preds = %5, %2
  tail call void @xalloc_die() #22, !dbg !4117
  unreachable, !dbg !4117

9:                                                ; preds = %5
  ret i8* %6, !dbg !4118
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @xmemdup(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !4119 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4123, metadata !DIExpression()), !dbg !4125
  call void @llvm.dbg.value(metadata i64 %1, metadata !4124, metadata !DIExpression()), !dbg !4125
  call void @llvm.dbg.value(metadata i64 %1, metadata !3934, metadata !DIExpression()) #19, !dbg !4126
  %3 = tail call noalias i8* @malloc(i64 %1) #19, !dbg !4128
  call void @llvm.dbg.value(metadata i8* %3, metadata !3939, metadata !DIExpression()) #19, !dbg !4126
  %4 = icmp eq i8* %3, null, !dbg !4129
  %5 = icmp ne i64 %1, 0, !dbg !4130
  %6 = and i1 %5, %4, !dbg !4131
  br i1 %6, label %7, label %8, !dbg !4131

7:                                                ; preds = %2
  tail call void @xalloc_die() #22, !dbg !4132
  unreachable, !dbg !4132

8:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i8* %3, metadata !4133, metadata !DIExpression()) #19, !dbg !4138
  call void @llvm.dbg.value(metadata i8* %0, metadata !4136, metadata !DIExpression()) #19, !dbg !4138
  call void @llvm.dbg.value(metadata i64 %1, metadata !4137, metadata !DIExpression()) #19, !dbg !4138
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %3, i8* nonnull align 1 %0, i64 %1, i1 false) #19, !dbg !4140
  ret i8* %3, !dbg !4141
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xstrdup(i8* %0) local_unnamed_addr #8 !dbg !4142 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4144, metadata !DIExpression()), !dbg !4145
  %2 = tail call i64 @strlen(i8* nonnull dereferenceable(1) %0) #21, !dbg !4146
  %3 = add i64 %2, 1, !dbg !4147
  call void @llvm.dbg.value(metadata i8* %0, metadata !4123, metadata !DIExpression()) #19, !dbg !4148
  call void @llvm.dbg.value(metadata i64 %3, metadata !4124, metadata !DIExpression()) #19, !dbg !4148
  call void @llvm.dbg.value(metadata i64 %3, metadata !3934, metadata !DIExpression()) #19, !dbg !4150
  %4 = tail call noalias i8* @malloc(i64 %3) #19, !dbg !4152
  call void @llvm.dbg.value(metadata i8* %4, metadata !3939, metadata !DIExpression()) #19, !dbg !4150
  %5 = icmp eq i8* %4, null, !dbg !4153
  %6 = icmp ne i64 %3, 0, !dbg !4154
  %7 = and i1 %6, %5, !dbg !4155
  br i1 %7, label %8, label %9, !dbg !4155

8:                                                ; preds = %1
  tail call void @xalloc_die() #22, !dbg !4156
  unreachable, !dbg !4156

9:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i8* %4, metadata !4133, metadata !DIExpression()) #19, !dbg !4157
  call void @llvm.dbg.value(metadata i8* %0, metadata !4136, metadata !DIExpression()) #19, !dbg !4157
  call void @llvm.dbg.value(metadata i64 %3, metadata !4137, metadata !DIExpression()) #19, !dbg !4157
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %4, i8* nonnull align 1 %0, i64 %3, i1 false) #19, !dbg !4159
  ret i8* %4, !dbg !4160
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !4161 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !4162, !tbaa !1707
  %2 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.136, i64 0, i64 0), i32 5) #19, !dbg !4163
  tail call void (i32, i32, i8*, ...) @error(i32 %1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.137, i64 0, i64 0), i8* %2) #19, !dbg !4164
  tail call void @abort() #22, !dbg !4165
  unreachable, !dbg !4165
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @xprintf(i8* noalias %0, ...) local_unnamed_addr #8 !dbg !4166 {
  %2 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata i8* %0, metadata !4170, metadata !DIExpression()), !dbg !4177
  %3 = bitcast [1 x %struct.__va_list_tag]* %2 to i8*, !dbg !4178
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %3) #19, !dbg !4178
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %2, metadata !4171, metadata !DIExpression()), !dbg !4179
  %4 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, !dbg !4180
  call void @llvm.va_start(i8* nonnull %3), !dbg !4180
  call void @llvm.dbg.value(metadata i8* %0, metadata !4181, metadata !DIExpression()) #19, !dbg !4188
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %4, metadata !4186, metadata !DIExpression()) #19, !dbg !4188
  call void @llvm.dbg.value(metadata i8* %0, metadata !4190, metadata !DIExpression()) #19, !dbg !4195
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %4, metadata !4194, metadata !DIExpression()) #19, !dbg !4195
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !4197, !tbaa !1263, !noalias !4198
  %6 = call i32 @__vfprintf_chk(%struct._IO_FILE* %5, i32 1, i8* %0, %struct.__va_list_tag* nonnull %4) #19, !dbg !4203
  call void @llvm.dbg.value(metadata i32 %6, metadata !4187, metadata !DIExpression()) #19, !dbg !4188
  %7 = icmp slt i32 %6, 0, !dbg !4204
  br i1 %7, label %8, label %17, !dbg !4206

8:                                                ; preds = %1
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !4207, !tbaa !1263
  %10 = call i32 @ferror(%struct._IO_FILE* %9) #19, !dbg !4208
  %11 = icmp eq i32 %10, 0, !dbg !4208
  br i1 %11, label %12, label %17, !dbg !4209

12:                                               ; preds = %8
  %13 = load volatile i32, i32* @exit_failure, align 4, !dbg !4210, !tbaa !1707
  %14 = tail call i32* @__errno_location() #24, !dbg !4211
  %15 = load i32, i32* %14, align 4, !dbg !4211, !tbaa !1707
  %16 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.140, i64 0, i64 0), i32 5) #19, !dbg !4212
  call void (i32, i32, i8*, ...) @error(i32 %13, i32 %15, i8* %16) #19, !dbg !4213
  br label %17, !dbg !4213

17:                                               ; preds = %1, %8, %12
  call void @llvm.dbg.value(metadata i32 %6, metadata !4176, metadata !DIExpression()), !dbg !4177
  call void @llvm.va_end(i8* nonnull %3), !dbg !4214
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %3) #19, !dbg !4215
  ret i32 %6, !dbg !4216
}

declare i32 @__vfprintf_chk(%struct._IO_FILE*, i32, i8*, %struct.__va_list_tag*) local_unnamed_addr #3

; Function Attrs: nofree nounwind readonly
declare !dbg !598 i32 @ferror(%struct._IO_FILE* nocapture) local_unnamed_addr #6

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @xvprintf(i8* noalias %0, %struct.__va_list_tag* %1) local_unnamed_addr #8 !dbg !4182 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4181, metadata !DIExpression()), !dbg !4217
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %1, metadata !4186, metadata !DIExpression()), !dbg !4217
  call void @llvm.dbg.value(metadata i8* %0, metadata !4190, metadata !DIExpression()) #19, !dbg !4218
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %1, metadata !4194, metadata !DIExpression()) #19, !dbg !4218
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !4220, !tbaa !1263, !noalias !4221
  %4 = tail call i32 @__vfprintf_chk(%struct._IO_FILE* %3, i32 1, i8* %0, %struct.__va_list_tag* %1) #19, !dbg !4224
  call void @llvm.dbg.value(metadata i32 %4, metadata !4187, metadata !DIExpression()), !dbg !4217
  %5 = icmp slt i32 %4, 0, !dbg !4225
  br i1 %5, label %6, label %15, !dbg !4226

6:                                                ; preds = %2
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !4227, !tbaa !1263
  %8 = tail call i32 @ferror(%struct._IO_FILE* %7) #19, !dbg !4228
  %9 = icmp eq i32 %8, 0, !dbg !4228
  br i1 %9, label %10, label %15, !dbg !4229

10:                                               ; preds = %6
  %11 = load volatile i32, i32* @exit_failure, align 4, !dbg !4230, !tbaa !1707
  %12 = tail call i32* @__errno_location() #24, !dbg !4231
  %13 = load i32, i32* %12, align 4, !dbg !4231, !tbaa !1707
  %14 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.140, i64 0, i64 0), i32 5) #19, !dbg !4232
  tail call void (i32, i32, i8*, ...) @error(i32 %11, i32 %13, i8* %14) #19, !dbg !4233
  br label %15, !dbg !4233

15:                                               ; preds = %6, %10, %2
  ret i32 %4, !dbg !4234
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @xfprintf(%struct._IO_FILE* noalias %0, i8* noalias %1, ...) local_unnamed_addr #8 !dbg !4235 {
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4242, metadata !DIExpression()), !dbg !4246
  call void @llvm.dbg.value(metadata i8* %1, metadata !4243, metadata !DIExpression()), !dbg !4246
  %4 = bitcast [1 x %struct.__va_list_tag]* %3 to i8*, !dbg !4247
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %4) #19, !dbg !4247
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %3, metadata !4244, metadata !DIExpression()), !dbg !4248
  %5 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, !dbg !4249
  call void @llvm.va_start(i8* nonnull %4), !dbg !4249
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4250, metadata !DIExpression()) #19, !dbg !4258
  call void @llvm.dbg.value(metadata i8* %1, metadata !4255, metadata !DIExpression()) #19, !dbg !4258
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %5, metadata !4256, metadata !DIExpression()) #19, !dbg !4258
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4260, metadata !DIExpression()) #19, !dbg !4265
  call void @llvm.dbg.value(metadata i8* %1, metadata !4263, metadata !DIExpression()) #19, !dbg !4265
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %5, metadata !4264, metadata !DIExpression()) #19, !dbg !4265
  %6 = call i32 @__vfprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %1, %struct.__va_list_tag* nonnull %5) #19, !dbg !4267
  call void @llvm.dbg.value(metadata i32 %6, metadata !4257, metadata !DIExpression()) #19, !dbg !4258
  %7 = icmp slt i32 %6, 0, !dbg !4268
  br i1 %7, label %8, label %16, !dbg !4270

8:                                                ; preds = %2
  %9 = call i32 @ferror(%struct._IO_FILE* %0) #19, !dbg !4271
  %10 = icmp eq i32 %9, 0, !dbg !4271
  br i1 %10, label %11, label %16, !dbg !4272

11:                                               ; preds = %8
  %12 = load volatile i32, i32* @exit_failure, align 4, !dbg !4273, !tbaa !1707
  %13 = tail call i32* @__errno_location() #24, !dbg !4274
  %14 = load i32, i32* %13, align 4, !dbg !4274, !tbaa !1707
  %15 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.140, i64 0, i64 0), i32 5) #19, !dbg !4275
  call void (i32, i32, i8*, ...) @error(i32 %12, i32 %14, i8* %15) #19, !dbg !4276
  br label %16, !dbg !4276

16:                                               ; preds = %2, %8, %11
  call void @llvm.dbg.value(metadata i32 %6, metadata !4245, metadata !DIExpression()), !dbg !4246
  call void @llvm.va_end(i8* nonnull %4), !dbg !4277
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %4) #19, !dbg !4278
  ret i32 %6, !dbg !4279
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @xvfprintf(%struct._IO_FILE* noalias %0, i8* noalias %1, %struct.__va_list_tag* %2) local_unnamed_addr #8 !dbg !4251 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4250, metadata !DIExpression()), !dbg !4280
  call void @llvm.dbg.value(metadata i8* %1, metadata !4255, metadata !DIExpression()), !dbg !4280
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %2, metadata !4256, metadata !DIExpression()), !dbg !4280
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4260, metadata !DIExpression()) #19, !dbg !4281
  call void @llvm.dbg.value(metadata i8* %1, metadata !4263, metadata !DIExpression()) #19, !dbg !4281
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %2, metadata !4264, metadata !DIExpression()) #19, !dbg !4281
  %4 = tail call i32 @__vfprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %1, %struct.__va_list_tag* %2) #19, !dbg !4283
  call void @llvm.dbg.value(metadata i32 %4, metadata !4257, metadata !DIExpression()), !dbg !4280
  %5 = icmp slt i32 %4, 0, !dbg !4284
  br i1 %5, label %6, label %14, !dbg !4285

6:                                                ; preds = %3
  %7 = tail call i32 @ferror(%struct._IO_FILE* %0) #19, !dbg !4286
  %8 = icmp eq i32 %7, 0, !dbg !4286
  br i1 %8, label %9, label %14, !dbg !4287

9:                                                ; preds = %6
  %10 = load volatile i32, i32* @exit_failure, align 4, !dbg !4288, !tbaa !1707
  %11 = tail call i32* @__errno_location() #24, !dbg !4289
  %12 = load i32, i32* %11, align 4, !dbg !4289, !tbaa !1707
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.140, i64 0, i64 0), i32 5) #19, !dbg !4290
  tail call void (i32, i32, i8*, ...) @error(i32 %10, i32 %12, i8* %13) #19, !dbg !4291
  br label %14, !dbg !4291

14:                                               ; preds = %6, %9, %3
  ret i32 %4, !dbg !4292
}

; Function Attrs: nofree nounwind sspstrong uwtable
define dso_local noalias i8* @rpl_calloc(i64 %0, i64 %1) local_unnamed_addr #18 !dbg !4293 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4295, metadata !DIExpression()), !dbg !4301
  call void @llvm.dbg.value(metadata i64 %1, metadata !4296, metadata !DIExpression()), !dbg !4301
  %3 = icmp eq i64 %0, 0, !dbg !4302
  %4 = icmp eq i64 %1, 0, !dbg !4303
  %5 = or i1 %3, %4, !dbg !4304
  br i1 %5, label %11, label %6, !dbg !4304

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i64 undef, metadata !4298, metadata !DIExpression()), !dbg !4305
  %7 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %1, i64 %0), !dbg !4306
  %8 = extractvalue { i64, i1 } %7, 1, !dbg !4306
  br i1 %8, label %9, label %11, !dbg !4308

9:                                                ; preds = %6
  %10 = tail call i32* @__errno_location() #24, !dbg !4309
  store i32 12, i32* %10, align 4, !dbg !4311, !tbaa !1707
  br label %15

11:                                               ; preds = %6, %2
  %12 = phi i64 [ 1, %2 ], [ %1, %6 ]
  %13 = phi i64 [ 1, %2 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i64 %13, metadata !4295, metadata !DIExpression()), !dbg !4301
  call void @llvm.dbg.value(metadata i64 %12, metadata !4296, metadata !DIExpression()), !dbg !4301
  %14 = tail call noalias i8* @calloc(i64 %13, i64 %12) #19, !dbg !4312
  call void @llvm.dbg.value(metadata i8* %14, metadata !4297, metadata !DIExpression()), !dbg !4301
  br label %15, !dbg !4313

15:                                               ; preds = %9, %11
  %16 = phi i8* [ %14, %11 ], [ null, %9 ], !dbg !4301
  ret i8* %16, !dbg !4314
}

; Function Attrs: nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: nofree nounwind
declare noalias i8* @calloc(i64, i64) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rpl_mbrtowc(i32* %0, i8* %1, i64 %2, %struct.__mbstate_t* %3) local_unnamed_addr #8 !dbg !4315 {
  %5 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32* %0, metadata !4323, metadata !DIExpression()), !dbg !4332
  call void @llvm.dbg.value(metadata i8* %1, metadata !4324, metadata !DIExpression()), !dbg !4332
  call void @llvm.dbg.value(metadata i64 %2, metadata !4325, metadata !DIExpression()), !dbg !4332
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %3, metadata !4326, metadata !DIExpression()), !dbg !4332
  %6 = bitcast i32* %5 to i8*, !dbg !4333
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #19, !dbg !4333
  %7 = icmp eq i32* %0, null, !dbg !4334
  %8 = select i1 %7, i32* %5, i32* %0, !dbg !4336
  call void @llvm.dbg.value(metadata i32* %8, metadata !4323, metadata !DIExpression()), !dbg !4332
  %9 = call i64 @mbrtowc(i32* %8, i8* %1, i64 %2, %struct.__mbstate_t* %3) #19, !dbg !4337
  call void @llvm.dbg.value(metadata i64 %9, metadata !4327, metadata !DIExpression()), !dbg !4332
  %10 = icmp ugt i64 %9, -3, !dbg !4338
  %11 = icmp ne i64 %2, 0, !dbg !4339
  %12 = and i1 %11, %10, !dbg !4340
  br i1 %12, label %13, label %18, !dbg !4340

13:                                               ; preds = %4
  %14 = call zeroext i1 @hard_locale(i32 0) #19, !dbg !4341
  br i1 %14, label %18, label %15, !dbg !4342

15:                                               ; preds = %13
  %16 = load i8, i8* %1, align 1, !dbg !4343, !tbaa !1459
  call void @llvm.dbg.value(metadata i8 %16, metadata !4329, metadata !DIExpression()), !dbg !4344
  %17 = zext i8 %16 to i32, !dbg !4345
  store i32 %17, i32* %8, align 4, !dbg !4346, !tbaa !1707
  br label %18

18:                                               ; preds = %4, %13, %15
  %19 = phi i64 [ 1, %15 ], [ %9, %13 ], [ %9, %4 ], !dbg !4332
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #19, !dbg !4347
  ret i64 %19, !dbg !4347
}

; Function Attrs: nounwind
declare !dbg !642 i64 @mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local x86_fp80 @c_strtold(i8* %0, i8** %1) local_unnamed_addr #8 !dbg !4348 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4350, metadata !DIExpression()), !dbg !4356
  call void @llvm.dbg.value(metadata i8** %1, metadata !4351, metadata !DIExpression()), !dbg !4356
  %3 = load volatile %struct.__locale_struct*, %struct.__locale_struct** @c_locale_cache, align 8, !dbg !4357, !tbaa !1263
  %4 = icmp eq %struct.__locale_struct* %3, null, !dbg !4357
  br i1 %4, label %5, label %7, !dbg !4363

5:                                                ; preds = %2
  %6 = tail call %struct.__locale_struct* @newlocale(i32 8127, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.147, i64 0, i64 0), %struct.__locale_struct* null) #19, !dbg !4364
  store volatile %struct.__locale_struct* %6, %struct.__locale_struct** @c_locale_cache, align 8, !dbg !4365, !tbaa !1263
  br label %7, !dbg !4366

7:                                                ; preds = %2, %5
  %8 = load volatile %struct.__locale_struct*, %struct.__locale_struct** @c_locale_cache, align 8, !dbg !4367, !tbaa !1263
  call void @llvm.dbg.value(metadata %struct.__locale_struct* %8, metadata !4353, metadata !DIExpression()), !dbg !4356
  %9 = icmp eq %struct.__locale_struct* %8, null, !dbg !4368
  br i1 %9, label %10, label %13, !dbg !4370

10:                                               ; preds = %7
  %11 = icmp eq i8** %1, null, !dbg !4371
  br i1 %11, label %27, label %12, !dbg !4374

12:                                               ; preds = %10
  store i8* %0, i8** %1, align 8, !dbg !4375, !tbaa !1263
  br label %27, !dbg !4376

13:                                               ; preds = %7
  %14 = tail call %struct.__locale_struct* @uselocale(%struct.__locale_struct* nonnull %8) #19, !dbg !4377
  call void @llvm.dbg.value(metadata %struct.__locale_struct* %14, metadata !4354, metadata !DIExpression()), !dbg !4356
  %15 = icmp eq %struct.__locale_struct* %14, null, !dbg !4378
  br i1 %15, label %16, label %19, !dbg !4380

16:                                               ; preds = %13
  %17 = icmp eq i8** %1, null, !dbg !4381
  br i1 %17, label %27, label %18, !dbg !4384

18:                                               ; preds = %16
  store i8* %0, i8** %1, align 8, !dbg !4385, !tbaa !1263
  br label %27, !dbg !4386

19:                                               ; preds = %13
  %20 = tail call x86_fp80 @strtold(i8* %0, i8** %1) #19, !dbg !4387
  call void @llvm.dbg.value(metadata x86_fp80 %20, metadata !4352, metadata !DIExpression()), !dbg !4356
  %21 = tail call i32* @__errno_location() #24, !dbg !4388
  %22 = load i32, i32* %21, align 4, !dbg !4388, !tbaa !1707
  call void @llvm.dbg.value(metadata i32 %22, metadata !4355, metadata !DIExpression()), !dbg !4356
  %23 = tail call %struct.__locale_struct* @uselocale(%struct.__locale_struct* nonnull %14) #19, !dbg !4389
  %24 = icmp eq %struct.__locale_struct* %23, null, !dbg !4391
  br i1 %24, label %25, label %26, !dbg !4392

25:                                               ; preds = %19
  tail call void @abort() #22, !dbg !4393
  unreachable, !dbg !4393

26:                                               ; preds = %19
  store i32 %22, i32* %21, align 4, !dbg !4394, !tbaa !1707
  br label %27

27:                                               ; preds = %26, %16, %18, %12, %10
  %28 = phi x86_fp80 [ 0xK00000000000000000000, %10 ], [ 0xK00000000000000000000, %12 ], [ %20, %26 ], [ 0xK00000000000000000000, %16 ], [ 0xK00000000000000000000, %18 ], !dbg !4356
  ret x86_fp80 %28, !dbg !4395
}

; Function Attrs: nounwind
declare !dbg !506 %struct.__locale_struct* @newlocale(i32, i8*, %struct.__locale_struct*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !481 %struct.__locale_struct* @uselocale(%struct.__locale_struct*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @close_stream(%struct._IO_FILE* %0) local_unnamed_addr #8 !dbg !4396 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4402, metadata !DIExpression()), !dbg !4407
  %2 = tail call i64 @__fpending(%struct._IO_FILE* %0) #19, !dbg !4408
  call void @llvm.dbg.value(metadata i1 undef, metadata !4403, metadata !DIExpression()), !dbg !4407
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4409, metadata !DIExpression()), !dbg !4412
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4414
  %4 = load i32, i32* %3, align 8, !dbg !4414, !tbaa !4415
  %5 = and i32 %4, 32, !dbg !4414
  %6 = icmp eq i32 %5, 0, !dbg !4416
  call void @llvm.dbg.value(metadata i1 %6, metadata !4405, metadata !DIExpression()), !dbg !4407
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* %0) #19, !dbg !4417
  %8 = icmp ne i32 %7, 0, !dbg !4418
  call void @llvm.dbg.value(metadata i1 %8, metadata !4406, metadata !DIExpression()), !dbg !4407
  br i1 %6, label %9, label %19, !dbg !4419

9:                                                ; preds = %1
  %10 = icmp ne i64 %2, 0, !dbg !4421
  call void @llvm.dbg.value(metadata i1 %10, metadata !4403, metadata !DIExpression()), !dbg !4407
  %11 = xor i1 %8, true, !dbg !4422
  %12 = or i1 %10, %11, !dbg !4422
  %13 = sext i1 %8 to i32, !dbg !4422
  br i1 %12, label %22, label %14, !dbg !4422

14:                                               ; preds = %9
  %15 = tail call i32* @__errno_location() #24, !dbg !4423
  %16 = load i32, i32* %15, align 4, !dbg !4423, !tbaa !1707
  %17 = icmp ne i32 %16, 9, !dbg !4424
  %18 = sext i1 %17 to i32, !dbg !4425
  br label %22, !dbg !4425

19:                                               ; preds = %1
  br i1 %8, label %22, label %20, !dbg !4426

20:                                               ; preds = %19
  %21 = tail call i32* @__errno_location() #24, !dbg !4428
  store i32 0, i32* %21, align 4, !dbg !4430, !tbaa !1707
  br label %22, !dbg !4428

22:                                               ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ], !dbg !4407
  ret i32 %23, !dbg !4431
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local zeroext i1 @hard_locale(i32 %0) local_unnamed_addr #8 !dbg !4432 {
  %2 = alloca [257 x i8], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !4434, metadata !DIExpression()), !dbg !4439
  %3 = getelementptr inbounds [257 x i8], [257 x i8]* %2, i64 0, i64 0, !dbg !4440
  call void @llvm.lifetime.start.p0i8(i64 257, i8* nonnull %3) #19, !dbg !4440
  call void @llvm.dbg.declare(metadata [257 x i8]* %2, metadata !4435, metadata !DIExpression()), !dbg !4441
  %4 = call i32 @setlocale_null_r(i32 %0, i8* nonnull %3, i64 257) #19, !dbg !4442
  %5 = icmp eq i32 %4, 0, !dbg !4442
  br i1 %5, label %6, label %13, !dbg !4444

6:                                                ; preds = %1
  %7 = bitcast [257 x i8]* %2 to i16*, !dbg !4445
  %8 = load i16, i16* %7, align 16, !dbg !4445
  %9 = icmp eq i16 %8, 67, !dbg !4445
  br i1 %9, label %13, label %10, !dbg !4446

10:                                               ; preds = %6
  %11 = call i32 @bcmp(i8* nonnull dereferenceable(6) %3, i8* nonnull dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.152, i64 0, i64 0), i64 6), !dbg !4447
  %12 = icmp ne i32 %11, 0, !dbg !4448
  br label %13, !dbg !4446

13:                                               ; preds = %6, %10, %1
  %14 = phi i1 [ false, %1 ], [ false, %6 ], [ %12, %10 ], !dbg !4439
  call void @llvm.lifetime.end.p0i8(i64 257, i8* nonnull %3) #19, !dbg !4449
  ret i1 %14, !dbg !4449
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @locale_charset() local_unnamed_addr #8 !dbg !4450 {
  %1 = tail call i8* @nl_langinfo(i32 14) #19, !dbg !4453
  call void @llvm.dbg.value(metadata i8* %1, metadata !4452, metadata !DIExpression()), !dbg !4454
  %2 = icmp eq i8* %1, null, !dbg !4455
  %3 = select i1 %2, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.155, i64 0, i64 0), i8* %1, !dbg !4457
  call void @llvm.dbg.value(metadata i8* %3, metadata !4452, metadata !DIExpression()), !dbg !4454
  %4 = load i8, i8* %3, align 1, !dbg !4458, !tbaa !1459
  %5 = icmp eq i8 %4, 0, !dbg !4462
  %6 = select i1 %5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.156, i64 0, i64 0), i8* %3, !dbg !4463
  call void @llvm.dbg.value(metadata i8* %6, metadata !4452, metadata !DIExpression()), !dbg !4454
  ret i8* %6, !dbg !4464
}

; Function Attrs: nounwind
declare !dbg !1094 i8* @nl_langinfo(i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @setlocale_null_r(i32 %0, i8* nonnull %1, i64 %2) local_unnamed_addr #8 !dbg !4465 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4469, metadata !DIExpression()), !dbg !4472
  call void @llvm.dbg.value(metadata i8* %1, metadata !4470, metadata !DIExpression()), !dbg !4472
  call void @llvm.dbg.value(metadata i64 %2, metadata !4471, metadata !DIExpression()), !dbg !4472
  call void @llvm.dbg.value(metadata i32 %0, metadata !4473, metadata !DIExpression()) #19, !dbg !4482
  call void @llvm.dbg.value(metadata i8* %1, metadata !4476, metadata !DIExpression()) #19, !dbg !4482
  call void @llvm.dbg.value(metadata i64 %2, metadata !4477, metadata !DIExpression()) #19, !dbg !4482
  call void @llvm.dbg.value(metadata i32 %0, metadata !4484, metadata !DIExpression()) #19, !dbg !4490
  %4 = tail call i8* @setlocale(i32 %0, i8* null) #19, !dbg !4492
  call void @llvm.dbg.value(metadata i8* %4, metadata !4489, metadata !DIExpression()) #19, !dbg !4490
  call void @llvm.dbg.value(metadata i8* %4, metadata !4478, metadata !DIExpression()) #19, !dbg !4482
  %5 = icmp eq i8* %4, null, !dbg !4493
  br i1 %5, label %6, label %9, !dbg !4494

6:                                                ; preds = %3
  %7 = icmp eq i64 %2, 0, !dbg !4495
  br i1 %7, label %19, label %8, !dbg !4498

8:                                                ; preds = %6
  store i8 0, i8* %1, align 1, !dbg !4499, !tbaa !1459
  br label %19, !dbg !4500

9:                                                ; preds = %3
  %10 = tail call i64 @strlen(i8* nonnull %4) #21, !dbg !4501
  call void @llvm.dbg.value(metadata i64 %10, metadata !4479, metadata !DIExpression()) #19, !dbg !4502
  %11 = icmp ult i64 %10, %2, !dbg !4503
  br i1 %11, label %12, label %14, !dbg !4505

12:                                               ; preds = %9
  %13 = add nuw i64 %10, 1, !dbg !4506
  call void @llvm.dbg.value(metadata i8* %1, metadata !4508, metadata !DIExpression()) #19, !dbg !4513
  call void @llvm.dbg.value(metadata i8* %4, metadata !4511, metadata !DIExpression()) #19, !dbg !4513
  call void @llvm.dbg.value(metadata i64 %13, metadata !4512, metadata !DIExpression()) #19, !dbg !4513
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %1, i8* nonnull align 1 %4, i64 %13, i1 false) #19, !dbg !4515
  br label %19, !dbg !4516

14:                                               ; preds = %9
  %15 = icmp eq i64 %2, 0, !dbg !4517
  br i1 %15, label %19, label %16, !dbg !4520

16:                                               ; preds = %14
  %17 = add i64 %2, -1, !dbg !4521
  call void @llvm.dbg.value(metadata i8* %1, metadata !4508, metadata !DIExpression()) #19, !dbg !4523
  call void @llvm.dbg.value(metadata i8* %4, metadata !4511, metadata !DIExpression()) #19, !dbg !4523
  call void @llvm.dbg.value(metadata i64 %17, metadata !4512, metadata !DIExpression()) #19, !dbg !4523
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %1, i8* nonnull align 1 %4, i64 %17, i1 false) #19, !dbg !4525
  %18 = getelementptr inbounds i8, i8* %1, i64 %17, !dbg !4526
  store i8 0, i8* %18, align 1, !dbg !4527, !tbaa !1459
  br label %19, !dbg !4528

19:                                               ; preds = %6, %8, %12, %14, %16
  %20 = phi i32 [ 22, %6 ], [ 22, %8 ], [ 0, %12 ], [ 34, %14 ], [ 34, %16 ], !dbg !4529
  ret i32 %20, !dbg !4530
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @setlocale_null(i32 %0) local_unnamed_addr #8 !dbg !4531 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4533, metadata !DIExpression()), !dbg !4534
  call void @llvm.dbg.value(metadata i32 %0, metadata !4484, metadata !DIExpression()) #19, !dbg !4535
  %2 = tail call i8* @setlocale(i32 %0, i8* null) #19, !dbg !4537
  call void @llvm.dbg.value(metadata i8* %2, metadata !4489, metadata !DIExpression()) #19, !dbg !4535
  ret i8* %2, !dbg !4538
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fclose(%struct._IO_FILE* nonnull %0) local_unnamed_addr #8 !dbg !4539 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4545, metadata !DIExpression()), !dbg !4549
  call void @llvm.dbg.value(metadata i32 0, metadata !4546, metadata !DIExpression()), !dbg !4549
  call void @llvm.dbg.value(metadata i32 0, metadata !4548, metadata !DIExpression()), !dbg !4549
  %2 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #19, !dbg !4550
  call void @llvm.dbg.value(metadata i32 %2, metadata !4547, metadata !DIExpression()), !dbg !4549
  %3 = icmp slt i32 %2, 0, !dbg !4551
  br i1 %3, label %4, label %6, !dbg !4553

4:                                                ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4554
  br label %24, !dbg !4555

6:                                                ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #19, !dbg !4556
  %8 = icmp eq i32 %7, 0, !dbg !4556
  br i1 %8, label %13, label %9, !dbg !4558

9:                                                ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #19, !dbg !4559
  %11 = tail call i64 @lseek(i32 %10, i64 0, i32 1) #19, !dbg !4560
  %12 = icmp eq i64 %11, -1, !dbg !4561
  br i1 %12, label %16, label %13, !dbg !4562

13:                                               ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* nonnull %0) #19, !dbg !4563
  %15 = icmp eq i32 %14, 0, !dbg !4563
  br i1 %15, label %16, label %18, !dbg !4564

16:                                               ; preds = %13, %9
  call void @llvm.dbg.value(metadata i32 %20, metadata !4546, metadata !DIExpression()), !dbg !4549
  %17 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4565
  call void @llvm.dbg.value(metadata i32 %21, metadata !4548, metadata !DIExpression()), !dbg !4549
  br label %24, !dbg !4566

18:                                               ; preds = %13
  %19 = tail call i32* @__errno_location() #24, !dbg !4567
  %20 = load i32, i32* %19, align 4, !dbg !4567, !tbaa !1707
  call void @llvm.dbg.value(metadata i32 %20, metadata !4546, metadata !DIExpression()), !dbg !4549
  call void @llvm.dbg.value(metadata i32 %20, metadata !4546, metadata !DIExpression()), !dbg !4549
  %21 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4565
  call void @llvm.dbg.value(metadata i32 %21, metadata !4548, metadata !DIExpression()), !dbg !4549
  %22 = icmp eq i32 %20, 0, !dbg !4568
  br i1 %22, label %24, label %23, !dbg !4566

23:                                               ; preds = %18
  store i32 %20, i32* %19, align 4, !dbg !4570, !tbaa !1707
  call void @llvm.dbg.value(metadata i32 -1, metadata !4548, metadata !DIExpression()), !dbg !4549
  br label %24, !dbg !4572

24:                                               ; preds = %16, %23, %18, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !4549
  ret i32 %25, !dbg !4573
}

; Function Attrs: nofree nounwind
declare !dbg !1103 i32 @fileno(%struct._IO_FILE* nocapture) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare !dbg !1138 i32 @fclose(%struct._IO_FILE* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @__freading(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1139 i64 @lseek(i32, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fflush(%struct._IO_FILE* %0) local_unnamed_addr #8 !dbg !4574 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4580, metadata !DIExpression()), !dbg !4581
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !4582
  br i1 %2, label %6, label %3, !dbg !4584

3:                                                ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #19, !dbg !4585
  %5 = icmp eq i32 %4, 0, !dbg !4585
  br i1 %5, label %6, label %8, !dbg !4586

6:                                                ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* %0), !dbg !4587
  br label %17, !dbg !4588

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4589, metadata !DIExpression()) #19, !dbg !4594
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4596
  %10 = load i32, i32* %9, align 8, !dbg !4596, !tbaa !4415
  %11 = and i32 %10, 256, !dbg !4598
  %12 = icmp eq i32 %11, 0, !dbg !4598
  br i1 %12, label %15, label %13, !dbg !4599

13:                                               ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* nonnull %0, i64 0, i32 1) #19, !dbg !4600
  br label %15, !dbg !4600

15:                                               ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* nonnull %0), !dbg !4601
  br label %17, !dbg !4602

17:                                               ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ], !dbg !4581
  ret i32 %18, !dbg !4603
}

; Function Attrs: nofree nounwind
declare !dbg !1147 i32 @fflush(%struct._IO_FILE* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fseeko(%struct._IO_FILE* nocapture nonnull %0, i64 %1, i32 %2) local_unnamed_addr #8 !dbg !4604 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4611, metadata !DIExpression()), !dbg !4617
  call void @llvm.dbg.value(metadata i64 %1, metadata !4612, metadata !DIExpression()), !dbg !4617
  call void @llvm.dbg.value(metadata i32 %2, metadata !4613, metadata !DIExpression()), !dbg !4617
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !4618
  %5 = load i8*, i8** %4, align 8, !dbg !4618, !tbaa !4619
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !4620
  %7 = load i8*, i8** %6, align 8, !dbg !4620, !tbaa !4621
  %8 = icmp eq i8* %5, %7, !dbg !4622
  br i1 %8, label %9, label %28, !dbg !4623

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !4624
  %11 = load i8*, i8** %10, align 8, !dbg !4624, !tbaa !1477
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !4625
  %13 = load i8*, i8** %12, align 8, !dbg !4625, !tbaa !4626
  %14 = icmp eq i8* %11, %13, !dbg !4627
  br i1 %14, label %15, label %28, !dbg !4628

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !4629
  %17 = load i8*, i8** %16, align 8, !dbg !4629, !tbaa !4630
  %18 = icmp eq i8* %17, null, !dbg !4631
  br i1 %18, label %19, label %28, !dbg !4632

19:                                               ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #19, !dbg !4633
  %21 = tail call i64 @lseek(i32 %20, i64 %1, i32 %2) #19, !dbg !4634
  call void @llvm.dbg.value(metadata i64 %21, metadata !4614, metadata !DIExpression()), !dbg !4635
  %22 = icmp eq i64 %21, -1, !dbg !4636
  br i1 %22, label %30, label %23, !dbg !4638

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4639
  %25 = load i32, i32* %24, align 8, !dbg !4640, !tbaa !4415
  %26 = and i32 %25, -17, !dbg !4640
  store i32 %26, i32* %24, align 8, !dbg !4640, !tbaa !4415
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !4641
  store i64 %21, i64* %27, align 8, !dbg !4642, !tbaa !4643
  br label %30, !dbg !4644

28:                                               ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* nonnull %0, i64 %1, i32 %2), !dbg !4645
  br label %30, !dbg !4646

30:                                               ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ], !dbg !4617
  ret i32 %31, !dbg !4647
}

; Function Attrs: nofree nounwind
declare !dbg !1223 i32 @fseeko(%struct._IO_FILE* nocapture, i64, i32) local_unnamed_addr #4

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
attributes #10 = { nofree nounwind readonly }
attributes #11 = { nofree norecurse nounwind sspstrong uwtable writeonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #12 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #13 = { nofree nounwind }
attributes #14 = { norecurse nounwind readonly sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #15 = { nofree norecurse nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #16 = { argmemonly nofree nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #17 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #18 = { nofree nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #19 = { nounwind }
attributes #20 = { inlinehint nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #21 = { nounwind readonly }
attributes #22 = { noreturn nounwind }
attributes #23 = { noreturn }
attributes #24 = { nounwind readnone }
attributes #25 = { cold }

!llvm.dbg.cu = !{!2, !176, !512, !181, !226, !232, !273, !388, !517, !519, !470, !561, !582, !585, !636, !639, !478, !658, !697, !704, !1097, !1100, !1144, !1185}
!llvm.ident = !{!1226, !1226, !1226, !1226, !1226, !1226, !1226, !1226, !1226, !1226, !1226, !1226, !1226, !1226, !1226, !1226, !1226, !1226, !1226, !1226, !1226, !1226, !1226, !1226}
!llvm.module.flags = !{!1227, !1228, !1229, !1230, !1231}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!1 = distinct !DIGlobalVariable(name: "exit_status", scope: !2, file: !3, line: 76, type: !44, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !35, globals: !166, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "src/printf.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!4 = !{!5, !20}
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
!35 = !{!36, !46, !107, !111, !115, !118, !121, !128, !97, !40, !129, !133, !137, !141, !7, !44, !144, !145, !149, !153, !156, !77, !162}
!36 = !DISubprogram(name: "dcgettext", scope: !37, file: !37, line: 51, type: !38, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !45)
!37 = !DIFile(filename: "/usr/include/libintl.h", directory: "")
!38 = !DISubroutineType(types: !39)
!39 = !{!40, !42, !42, !44}
!40 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !41, size: 64)
!41 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!42 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 64)
!43 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !41)
!44 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!45 = !{}
!46 = !DISubprogram(name: "fputs_unlocked", scope: !47, file: !47, line: 662, type: !48, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !45)
!47 = !DIFile(filename: "/usr/include/stdio.h", directory: "")
!48 = !DISubroutineType(types: !49)
!49 = !{!44, !42, !50}
!50 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !51, size: 64)
!51 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !52, line: 49, size: 1728, elements: !53)
!52 = !DIFile(filename: "/usr/include/bits/types/struct_FILE.h", directory: "")
!53 = !{!54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !69, !70, !71, !72, !76, !78, !80, !84, !87, !89, !92, !95, !96, !98, !102, !103}
!54 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !51, file: !52, line: 51, baseType: !44, size: 32)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !51, file: !52, line: 54, baseType: !40, size: 64, offset: 64)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !51, file: !52, line: 55, baseType: !40, size: 64, offset: 128)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !51, file: !52, line: 56, baseType: !40, size: 64, offset: 192)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !51, file: !52, line: 57, baseType: !40, size: 64, offset: 256)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !51, file: !52, line: 58, baseType: !40, size: 64, offset: 320)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !51, file: !52, line: 59, baseType: !40, size: 64, offset: 384)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !51, file: !52, line: 60, baseType: !40, size: 64, offset: 448)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !51, file: !52, line: 61, baseType: !40, size: 64, offset: 512)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !51, file: !52, line: 64, baseType: !40, size: 64, offset: 576)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !51, file: !52, line: 65, baseType: !40, size: 64, offset: 640)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !51, file: !52, line: 66, baseType: !40, size: 64, offset: 704)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !51, file: !52, line: 68, baseType: !67, size: 64, offset: 768)
!67 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !68, size: 64)
!68 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !52, line: 36, flags: DIFlagFwdDecl)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !51, file: !52, line: 70, baseType: !50, size: 64, offset: 832)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !51, file: !52, line: 72, baseType: !44, size: 32, offset: 896)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !51, file: !52, line: 73, baseType: !44, size: 32, offset: 928)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !51, file: !52, line: 74, baseType: !73, size: 64, offset: 960)
!73 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !74, line: 152, baseType: !75)
!74 = !DIFile(filename: "/usr/include/bits/types.h", directory: "")
!75 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !51, file: !52, line: 77, baseType: !77, size: 16, offset: 1024)
!77 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !51, file: !52, line: 78, baseType: !79, size: 8, offset: 1040)
!79 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !51, file: !52, line: 79, baseType: !81, size: 8, offset: 1048)
!81 = !DICompositeType(tag: DW_TAG_array_type, baseType: !41, size: 8, elements: !82)
!82 = !{!83}
!83 = !DISubrange(count: 1)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !51, file: !52, line: 81, baseType: !85, size: 64, offset: 1088)
!85 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !86, size: 64)
!86 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !52, line: 43, baseType: null)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !51, file: !52, line: 89, baseType: !88, size: 64, offset: 1152)
!88 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !74, line: 153, baseType: !75)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !51, file: !52, line: 91, baseType: !90, size: 64, offset: 1216)
!90 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !91, size: 64)
!91 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !52, line: 37, flags: DIFlagFwdDecl)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !51, file: !52, line: 92, baseType: !93, size: 64, offset: 1280)
!93 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !94, size: 64)
!94 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !52, line: 38, flags: DIFlagFwdDecl)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !51, file: !52, line: 93, baseType: !50, size: 64, offset: 1344)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !51, file: !52, line: 94, baseType: !97, size: 64, offset: 1408)
!97 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !51, file: !52, line: 95, baseType: !99, size: 64, offset: 1472)
!99 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !100, line: 46, baseType: !101)
!100 = !DIFile(filename: "/usr/lib/clang/10.0.0/include/stddef.h", directory: "")
!101 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !51, file: !52, line: 96, baseType: !44, size: 32, offset: 1536)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !51, file: !52, line: 98, baseType: !104, size: 160, offset: 1568)
!104 = !DICompositeType(tag: DW_TAG_array_type, baseType: !41, size: 160, elements: !105)
!105 = !{!106}
!106 = !DISubrange(count: 20)
!107 = !DISubprogram(name: "set_program_name", scope: !108, file: !108, line: 37, type: !109, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !45)
!108 = !DIFile(filename: "./lib/progname.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!109 = !DISubroutineType(types: !110)
!110 = !{null, !42}
!111 = !DISubprogram(name: "setlocale", scope: !112, file: !112, line: 122, type: !113, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !45)
!112 = !DIFile(filename: "/usr/include/locale.h", directory: "")
!113 = !DISubroutineType(types: !114)
!114 = !{!40, !44, !42}
!115 = !DISubprogram(name: "bindtextdomain", scope: !37, file: !37, line: 86, type: !116, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !45)
!116 = !DISubroutineType(types: !117)
!117 = !{!40, !42, !42}
!118 = !DISubprogram(name: "textdomain", scope: !37, file: !37, line: 82, type: !119, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !45)
!119 = !DISubroutineType(types: !120)
!120 = !{!40, !42}
!121 = !DISubprogram(name: "atexit", scope: !122, file: !122, line: 595, type: !123, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !45)
!122 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!123 = !DISubroutineType(types: !124)
!124 = !{!44, !125}
!125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !126, size: 64)
!126 = !DISubroutineType(types: !127)
!127 = !{null}
!128 = !DISubprogram(name: "getenv", scope: !122, file: !122, line: 634, type: !119, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !45)
!129 = !DISubprogram(name: "version_etc", scope: !130, file: !130, line: 69, type: !131, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !45)
!130 = !DIFile(filename: "./lib/version-etc.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!131 = !DISubroutineType(types: !132)
!132 = !{null, !50, !42, !42, !42, null}
!133 = !DISubprogram(name: "error", scope: !134, file: !134, line: 52, type: !135, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !45)
!134 = !DIFile(filename: "./lib/error.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!135 = !DISubroutineType(types: !136)
!136 = !{null, !44, !44, !42, null}
!137 = !DISubprogram(name: "quote", scope: !138, file: !138, line: 44, type: !139, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !45)
!138 = !DIFile(filename: "./lib/quote.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!139 = !DISubroutineType(types: !140)
!140 = !{!42, !42}
!141 = !DISubprogram(name: "quotearg_style", scope: !6, file: !6, line: 377, type: !142, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !45)
!142 = !DISubroutineType(types: !143)
!143 = !{!40, !5, !42}
!144 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!145 = !DISubprogram(name: "xmalloc", scope: !146, file: !146, line: 53, type: !147, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !45)
!146 = !DIFile(filename: "./lib/xalloc.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!147 = !DISubroutineType(types: !148)
!148 = !{!97, !101}
!149 = !DISubprogram(name: "xprintf", scope: !150, file: !150, line: 35, type: !151, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !45)
!150 = !DIFile(filename: "./lib/xprintf.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!151 = !DISubroutineType(types: !152)
!152 = !{!44, !42, null}
!153 = !DISubprogram(name: "free", scope: !122, file: !122, line: 565, type: !154, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !45)
!154 = !DISubroutineType(types: !155)
!155 = !{null, !97}
!156 = !DISubprogram(name: "cl_strtold", scope: !157, file: !157, line: 2, type: !158, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !45)
!157 = !DIFile(filename: "./lib/cl-strtod.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!158 = !DISubroutineType(types: !159)
!159 = !{!160, !42, !161}
!160 = !DIBasicType(name: "long double", size: 128, encoding: DW_ATE_float)
!161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64)
!162 = !DISubprogram(name: "print_unicode_char", scope: !163, file: !163, line: 40, type: !164, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !45)
!163 = !DIFile(filename: "./lib/unicodeio.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!164 = !DISubroutineType(types: !165)
!165 = !{null, !50, !7, !44}
!166 = !{!167, !168, !171}
!167 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!168 = !DIGlobalVariableExpression(var: !169, expr: !DIExpression())
!169 = distinct !DIGlobalVariable(name: "posixly_correct", scope: !2, file: !3, line: 79, type: !170, isLocal: true, isDefinition: true)
!170 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!171 = !DIGlobalVariableExpression(var: !172, expr: !DIExpression())
!172 = distinct !DIGlobalVariable(name: "cfcc_msg", scope: !2, file: !3, line: 83, type: !173, isLocal: true, isDefinition: true)
!173 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !42)
!174 = !DIGlobalVariableExpression(var: !175, expr: !DIExpression())
!175 = distinct !DIGlobalVariable(name: "Version", scope: !176, file: !177, line: 2, type: !42, isLocal: false, isDefinition: true)
!176 = distinct !DICompileUnit(language: DW_LANG_C99, file: !177, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !45, globals: !178, splitDebugInlining: false, nameTableKind: None)
!177 = !DIFile(filename: "src/version.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!178 = !{!174}
!179 = !DIGlobalVariableExpression(var: !180, expr: !DIExpression())
!180 = distinct !DIGlobalVariable(name: "file_name", scope: !181, file: !182, line: 46, type: !42, isLocal: true, isDefinition: true)
!181 = distinct !DICompileUnit(language: DW_LANG_C99, file: !182, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !45, retainedTypes: !183, globals: !221, splitDebugInlining: false, nameTableKind: None)
!182 = !DIFile(filename: "lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!183 = !{!184, !36, !220, !133}
!184 = !DISubprogram(name: "close_stream", scope: !185, file: !185, line: 2, type: !186, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !45)
!185 = !DIFile(filename: "./lib/close-stream.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!186 = !DISubroutineType(types: !187)
!187 = !{!44, !188}
!188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !189, size: 64)
!189 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !52, line: 49, size: 1728, elements: !190)
!190 = !{!191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219}
!191 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !189, file: !52, line: 51, baseType: !44, size: 32)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !189, file: !52, line: 54, baseType: !40, size: 64, offset: 64)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !189, file: !52, line: 55, baseType: !40, size: 64, offset: 128)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !189, file: !52, line: 56, baseType: !40, size: 64, offset: 192)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !189, file: !52, line: 57, baseType: !40, size: 64, offset: 256)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !189, file: !52, line: 58, baseType: !40, size: 64, offset: 320)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !189, file: !52, line: 59, baseType: !40, size: 64, offset: 384)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !189, file: !52, line: 60, baseType: !40, size: 64, offset: 448)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !189, file: !52, line: 61, baseType: !40, size: 64, offset: 512)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !189, file: !52, line: 64, baseType: !40, size: 64, offset: 576)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !189, file: !52, line: 65, baseType: !40, size: 64, offset: 640)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !189, file: !52, line: 66, baseType: !40, size: 64, offset: 704)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !189, file: !52, line: 68, baseType: !67, size: 64, offset: 768)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !189, file: !52, line: 70, baseType: !188, size: 64, offset: 832)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !189, file: !52, line: 72, baseType: !44, size: 32, offset: 896)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !189, file: !52, line: 73, baseType: !44, size: 32, offset: 928)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !189, file: !52, line: 74, baseType: !73, size: 64, offset: 960)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !189, file: !52, line: 77, baseType: !77, size: 16, offset: 1024)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !189, file: !52, line: 78, baseType: !79, size: 8, offset: 1040)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !189, file: !52, line: 79, baseType: !81, size: 8, offset: 1048)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !189, file: !52, line: 81, baseType: !85, size: 64, offset: 1088)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !189, file: !52, line: 89, baseType: !88, size: 64, offset: 1152)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !189, file: !52, line: 91, baseType: !90, size: 64, offset: 1216)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !189, file: !52, line: 92, baseType: !93, size: 64, offset: 1280)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !189, file: !52, line: 93, baseType: !188, size: 64, offset: 1344)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !189, file: !52, line: 94, baseType: !97, size: 64, offset: 1408)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !189, file: !52, line: 95, baseType: !99, size: 64, offset: 1472)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !189, file: !52, line: 96, baseType: !44, size: 32, offset: 1536)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !189, file: !52, line: 98, baseType: !104, size: 160, offset: 1568)
!220 = !DISubprogram(name: "quotearg_colon", scope: !6, file: !6, line: 391, type: !119, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !45)
!221 = !{!179, !222}
!222 = !DIGlobalVariableExpression(var: !223, expr: !DIExpression())
!223 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !181, file: !182, line: 56, type: !170, isLocal: true, isDefinition: true)
!224 = !DIGlobalVariableExpression(var: !225, expr: !DIExpression())
!225 = distinct !DIGlobalVariable(name: "exit_failure", scope: !226, file: !227, line: 24, type: !229, isLocal: false, isDefinition: true)
!226 = distinct !DICompileUnit(language: DW_LANG_C99, file: !227, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !45, globals: !228, splitDebugInlining: false, nameTableKind: None)
!227 = !DIFile(filename: "lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!228 = !{!224}
!229 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !44)
!230 = !DIGlobalVariableExpression(var: !231, expr: !DIExpression())
!231 = distinct !DIGlobalVariable(name: "program_name", scope: !232, file: !233, line: 33, type: !42, isLocal: false, isDefinition: true)
!232 = distinct !DICompileUnit(language: DW_LANG_C99, file: !233, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !45, retainedTypes: !234, globals: !270, splitDebugInlining: false, nameTableKind: None)
!233 = !DIFile(filename: "lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!234 = !{!97, !235, !40}
!235 = !DISubprogram(name: "fputs", scope: !47, file: !47, line: 626, type: !236, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !45)
!236 = !DISubroutineType(types: !237)
!237 = !{!44, !42, !238}
!238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !239, size: 64)
!239 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !52, line: 49, size: 1728, elements: !240)
!240 = !{!241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269}
!241 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !239, file: !52, line: 51, baseType: !44, size: 32)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !239, file: !52, line: 54, baseType: !40, size: 64, offset: 64)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !239, file: !52, line: 55, baseType: !40, size: 64, offset: 128)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !239, file: !52, line: 56, baseType: !40, size: 64, offset: 192)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !239, file: !52, line: 57, baseType: !40, size: 64, offset: 256)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !239, file: !52, line: 58, baseType: !40, size: 64, offset: 320)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !239, file: !52, line: 59, baseType: !40, size: 64, offset: 384)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !239, file: !52, line: 60, baseType: !40, size: 64, offset: 448)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !239, file: !52, line: 61, baseType: !40, size: 64, offset: 512)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !239, file: !52, line: 64, baseType: !40, size: 64, offset: 576)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !239, file: !52, line: 65, baseType: !40, size: 64, offset: 640)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !239, file: !52, line: 66, baseType: !40, size: 64, offset: 704)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !239, file: !52, line: 68, baseType: !67, size: 64, offset: 768)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !239, file: !52, line: 70, baseType: !238, size: 64, offset: 832)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !239, file: !52, line: 72, baseType: !44, size: 32, offset: 896)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !239, file: !52, line: 73, baseType: !44, size: 32, offset: 928)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !239, file: !52, line: 74, baseType: !73, size: 64, offset: 960)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !239, file: !52, line: 77, baseType: !77, size: 16, offset: 1024)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !239, file: !52, line: 78, baseType: !79, size: 8, offset: 1040)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !239, file: !52, line: 79, baseType: !81, size: 8, offset: 1048)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !239, file: !52, line: 81, baseType: !85, size: 64, offset: 1088)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !239, file: !52, line: 89, baseType: !88, size: 64, offset: 1152)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !239, file: !52, line: 91, baseType: !90, size: 64, offset: 1216)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !239, file: !52, line: 92, baseType: !93, size: 64, offset: 1280)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !239, file: !52, line: 93, baseType: !238, size: 64, offset: 1344)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !239, file: !52, line: 94, baseType: !97, size: 64, offset: 1408)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !239, file: !52, line: 95, baseType: !99, size: 64, offset: 1472)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !239, file: !52, line: 96, baseType: !44, size: 32, offset: 1536)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !239, file: !52, line: 98, baseType: !104, size: 160, offset: 1568)
!270 = !{!230}
!271 = !DIGlobalVariableExpression(var: !272, expr: !DIExpression())
!272 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !273, file: !274, line: 85, type: !373, isLocal: false, isDefinition: true)
!273 = distinct !DICompileUnit(language: DW_LANG_C99, file: !274, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !275, retainedTypes: !281, globals: !346, splitDebugInlining: false, nameTableKind: None)
!274 = !DIFile(filename: "lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!275 = !{!5, !276, !20}
!276 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !6, line: 242, baseType: !7, size: 32, elements: !277)
!277 = !{!278, !279, !280}
!278 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1, isUnsigned: true)
!279 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2, isUnsigned: true)
!280 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4, isUnsigned: true)
!281 = !{!282, !287, !153, !303, !44, !77, !306, !99, !324, !328, !36, !334, !338, !40, !145, !342, !343}
!282 = !DISubprogram(name: "xmemdup", scope: !146, file: !146, line: 62, type: !283, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !45)
!283 = !DISubroutineType(types: !284)
!284 = !{!97, !285, !101}
!285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !286, size: 64)
!286 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!287 = !DISubprogram(name: "quotearg_alloc_mem", scope: !6, file: !6, line: 342, type: !288, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !45)
!288 = !DISubroutineType(types: !289)
!289 = !{!40, !42, !101, !290, !291}
!290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !101, size: 64)
!291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !292, size: 64)
!292 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !293)
!293 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !274, line: 65, size: 448, elements: !294)
!294 = !{!295, !296, !297, !301, !302}
!295 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !293, file: !274, line: 68, baseType: !5, size: 32)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !293, file: !274, line: 71, baseType: !44, size: 32, offset: 32)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !293, file: !274, line: 75, baseType: !298, size: 256, offset: 64)
!298 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 256, elements: !299)
!299 = !{!300}
!300 = !DISubrange(count: 8)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !293, file: !274, line: 78, baseType: !42, size: 64, offset: 320)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !293, file: !274, line: 81, baseType: !42, size: 64, offset: 384)
!303 = !DISubprogram(name: "quotearg_n_custom_mem", scope: !6, file: !6, line: 408, type: !304, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !45)
!304 = !DISubroutineType(types: !305)
!305 = !{!40, !44, !42, !42, !42, !101}
!306 = !DISubprogram(name: "rpl_mbrtowc", scope: !307, file: !307, line: 717, type: !308, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !45)
!307 = !DIFile(filename: "./lib/wchar.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!308 = !DISubroutineType(types: !309)
!309 = !{!101, !310, !42, !101, !311}
!310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 64)
!311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !312, size: 64)
!312 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !313, line: 13, size: 64, elements: !314)
!313 = !DIFile(filename: "/usr/include/bits/types/__mbstate_t.h", directory: "")
!314 = !{!315, !316}
!315 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !312, file: !313, line: 15, baseType: !44, size: 32)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !312, file: !313, line: 20, baseType: !317, size: 32, offset: 32)
!317 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !312, file: !313, line: 16, size: 32, elements: !318)
!318 = !{!319, !320}
!319 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !317, file: !313, line: 18, baseType: !7, size: 32)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !317, file: !313, line: 19, baseType: !321, size: 32)
!321 = !DICompositeType(tag: DW_TAG_array_type, baseType: !41, size: 32, elements: !322)
!322 = !{!323}
!323 = !DISubrange(count: 4)
!324 = !DISubprogram(name: "iswprint", scope: !325, file: !325, line: 120, type: !326, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !45)
!325 = !DIFile(filename: "/usr/include/bits/wctype-wchar.h", directory: "")
!326 = !DISubroutineType(types: !327)
!327 = !{!44, !7}
!328 = !DISubprogram(name: "mbsinit", scope: !329, file: !329, line: 292, type: !330, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !45)
!329 = !DIFile(filename: "/usr/include/wchar.h", directory: "")
!330 = !DISubroutineType(types: !331)
!331 = !{!44, !332}
!332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !333, size: 64)
!333 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !312)
!334 = !DISubprogram(name: "locale_charset", scope: !335, file: !335, line: 35, type: !336, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !45)
!335 = !DIFile(filename: "./lib/localcharset.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!336 = !DISubroutineType(types: !337)
!337 = !{!42}
!338 = !DISubprogram(name: "c_strcasecmp", scope: !339, file: !339, line: 42, type: !340, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !45)
!339 = !DIFile(filename: "./lib/c-strcase.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!340 = !DISubroutineType(types: !341)
!341 = !{!44, !42, !42}
!342 = !DISubprogram(name: "xalloc_die", scope: !146, file: !146, line: 51, type: !126, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !45)
!343 = !DISubprogram(name: "xrealloc", scope: !146, file: !146, line: 59, type: !344, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !45)
!344 = !DISubroutineType(types: !345)
!345 = !{!97, !97, !101}
!346 = !{!271, !347, !353, !355, !357, !362, !369, !371}
!347 = !DIGlobalVariableExpression(var: !348, expr: !DIExpression())
!348 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !273, file: !274, line: 101, type: !349, isLocal: false, isDefinition: true)
!349 = !DICompositeType(tag: DW_TAG_array_type, baseType: !350, size: 320, elements: !351)
!350 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5)
!351 = !{!352}
!352 = !DISubrange(count: 10)
!353 = !DIGlobalVariableExpression(var: !354, expr: !DIExpression())
!354 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !273, file: !274, line: 1052, type: !293, isLocal: false, isDefinition: true)
!355 = !DIGlobalVariableExpression(var: !356, expr: !DIExpression())
!356 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !273, file: !274, line: 116, type: !293, isLocal: true, isDefinition: true)
!357 = !DIGlobalVariableExpression(var: !358, expr: !DIExpression())
!358 = distinct !DIGlobalVariable(name: "slot0", scope: !273, file: !274, line: 842, type: !359, isLocal: true, isDefinition: true)
!359 = !DICompositeType(tag: DW_TAG_array_type, baseType: !41, size: 2048, elements: !360)
!360 = !{!361}
!361 = !DISubrange(count: 256)
!362 = !DIGlobalVariableExpression(var: !363, expr: !DIExpression())
!363 = distinct !DIGlobalVariable(name: "slotvec", scope: !273, file: !274, line: 845, type: !364, isLocal: true, isDefinition: true)
!364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !365, size: 64)
!365 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !274, line: 834, size: 128, elements: !366)
!366 = !{!367, !368}
!367 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !365, file: !274, line: 836, baseType: !99, size: 64)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !365, file: !274, line: 837, baseType: !40, size: 64, offset: 64)
!369 = !DIGlobalVariableExpression(var: !370, expr: !DIExpression())
!370 = distinct !DIGlobalVariable(name: "nslots", scope: !273, file: !274, line: 843, type: !44, isLocal: true, isDefinition: true)
!371 = !DIGlobalVariableExpression(var: !372, expr: !DIExpression())
!372 = distinct !DIGlobalVariable(name: "slotvec0", scope: !273, file: !274, line: 844, type: !365, isLocal: true, isDefinition: true)
!373 = !DICompositeType(tag: DW_TAG_array_type, baseType: !173, size: 704, elements: !374)
!374 = !{!375}
!375 = !DISubrange(count: 11)
!376 = !DIGlobalVariableExpression(var: !377, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!377 = distinct !DIGlobalVariable(name: "initialized", scope: !378, file: !379, line: 71, type: !44, isLocal: true, isDefinition: true)
!378 = distinct !DISubprogram(name: "unicode_to_mb", scope: !379, file: !379, line: 64, type: !380, scopeLine: 70, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !388, retainedNodes: !444)
!379 = !DIFile(filename: "lib/unicodeio.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!380 = !DISubroutineType(types: !381)
!381 = !{!75, !7, !382, !385, !97}
!382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !383, size: 64)
!383 = !DISubroutineType(types: !384)
!384 = !{!75, !42, !99, !97}
!385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !386, size: 64)
!386 = !DISubroutineType(types: !387)
!387 = !{!75, !7, !42, !97}
!388 = distinct !DICompileUnit(language: DW_LANG_C99, file: !379, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !45, retainedTypes: !389, globals: !438, splitDebugInlining: false, nameTableKind: None)
!389 = !{!334, !390, !394, !395, !161, !396, !99, !399, !434, !97, !36, !133}
!390 = !DISubprogram(name: "iconv_open", scope: !391, file: !391, line: 37, type: !392, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !45)
!391 = !DIFile(filename: "/usr/include/iconv.h", directory: "")
!392 = !DISubroutineType(types: !393)
!393 = !{!97, !42, !42}
!394 = !DIDerivedType(tag: DW_TAG_typedef, name: "iconv_t", file: !391, line: 29, baseType: !97)
!395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !144, size: 64)
!396 = !DISubprogram(name: "iconv", scope: !391, file: !391, line: 42, type: !397, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !45)
!397 = !DISubroutineType(types: !398)
!398 = !{!101, !97, !161, !290, !161, !290}
!399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !400, size: 64)
!400 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !401, line: 7, baseType: !402)
!401 = !DIFile(filename: "/usr/include/bits/types/FILE.h", directory: "")
!402 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !52, line: 49, size: 1728, elements: !403)
!403 = !{!404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433}
!404 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !402, file: !52, line: 51, baseType: !44, size: 32)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !402, file: !52, line: 54, baseType: !40, size: 64, offset: 64)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !402, file: !52, line: 55, baseType: !40, size: 64, offset: 128)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !402, file: !52, line: 56, baseType: !40, size: 64, offset: 192)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !402, file: !52, line: 57, baseType: !40, size: 64, offset: 256)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !402, file: !52, line: 58, baseType: !40, size: 64, offset: 320)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !402, file: !52, line: 59, baseType: !40, size: 64, offset: 384)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !402, file: !52, line: 60, baseType: !40, size: 64, offset: 448)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !402, file: !52, line: 61, baseType: !40, size: 64, offset: 512)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !402, file: !52, line: 64, baseType: !40, size: 64, offset: 576)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !402, file: !52, line: 65, baseType: !40, size: 64, offset: 640)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !402, file: !52, line: 66, baseType: !40, size: 64, offset: 704)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !402, file: !52, line: 68, baseType: !67, size: 64, offset: 768)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !402, file: !52, line: 70, baseType: !418, size: 64, offset: 832)
!418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !402, size: 64)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !402, file: !52, line: 72, baseType: !44, size: 32, offset: 896)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !402, file: !52, line: 73, baseType: !44, size: 32, offset: 928)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !402, file: !52, line: 74, baseType: !73, size: 64, offset: 960)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !402, file: !52, line: 77, baseType: !77, size: 16, offset: 1024)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !402, file: !52, line: 78, baseType: !79, size: 8, offset: 1040)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !402, file: !52, line: 79, baseType: !81, size: 8, offset: 1048)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !402, file: !52, line: 81, baseType: !85, size: 64, offset: 1088)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !402, file: !52, line: 89, baseType: !88, size: 64, offset: 1152)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !402, file: !52, line: 91, baseType: !90, size: 64, offset: 1216)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !402, file: !52, line: 92, baseType: !93, size: 64, offset: 1280)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !402, file: !52, line: 93, baseType: !418, size: 64, offset: 1344)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !402, file: !52, line: 94, baseType: !97, size: 64, offset: 1408)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !402, file: !52, line: 95, baseType: !99, size: 64, offset: 1472)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !402, file: !52, line: 96, baseType: !44, size: 32, offset: 1536)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !402, file: !52, line: 98, baseType: !104, size: 160, offset: 1568)
!434 = !DISubprogram(name: "u8_uctomb_aux", scope: !435, file: !435, line: 309, type: !436, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !45)
!435 = !DIFile(filename: "./lib/unistr.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!436 = !DISubroutineType(types: !437)
!437 = !{!44, !395, !7, !44}
!438 = !{!439, !440, !442}
!439 = !DIGlobalVariableExpression(var: !377, expr: !DIExpression())
!440 = !DIGlobalVariableExpression(var: !441, expr: !DIExpression())
!441 = distinct !DIGlobalVariable(name: "is_utf8", scope: !378, file: !379, line: 72, type: !44, isLocal: true, isDefinition: true)
!442 = !DIGlobalVariableExpression(var: !443, expr: !DIExpression())
!443 = distinct !DIGlobalVariable(name: "utf8_to_local", scope: !378, file: !379, line: 74, type: !394, isLocal: true, isDefinition: true)
!444 = !{!445, !446, !447, !448, !449, !453, !454, !457, !463, !464, !465, !466, !467}
!445 = !DILocalVariable(name: "code", arg: 1, scope: !378, file: !379, line: 64, type: !7)
!446 = !DILocalVariable(name: "success", arg: 2, scope: !378, file: !379, line: 65, type: !382)
!447 = !DILocalVariable(name: "failure", arg: 3, scope: !378, file: !379, line: 67, type: !385)
!448 = !DILocalVariable(name: "callback_arg", arg: 4, scope: !378, file: !379, line: 69, type: !97)
!449 = !DILocalVariable(name: "inbuf", scope: !378, file: !379, line: 77, type: !450)
!450 = !DICompositeType(tag: DW_TAG_array_type, baseType: !41, size: 48, elements: !451)
!451 = !{!452}
!452 = !DISubrange(count: 6)
!453 = !DILocalVariable(name: "count", scope: !378, file: !379, line: 78, type: !44)
!454 = !DILocalVariable(name: "charset", scope: !455, file: !379, line: 82, type: !42)
!455 = distinct !DILexicalBlock(scope: !456, file: !379, line: 81, column: 5)
!456 = distinct !DILexicalBlock(scope: !378, file: !379, line: 80, column: 7)
!457 = !DILocalVariable(name: "outbuf", scope: !458, file: !379, line: 116, type: !460)
!458 = distinct !DILexicalBlock(scope: !459, file: !379, line: 115, column: 5)
!459 = distinct !DILexicalBlock(scope: !378, file: !379, line: 114, column: 7)
!460 = !DICompositeType(tag: DW_TAG_array_type, baseType: !41, size: 200, elements: !461)
!461 = !{!462}
!462 = !DISubrange(count: 25)
!463 = !DILocalVariable(name: "inptr", scope: !458, file: !379, line: 117, type: !42)
!464 = !DILocalVariable(name: "inbytesleft", scope: !458, file: !379, line: 118, type: !99)
!465 = !DILocalVariable(name: "outptr", scope: !458, file: !379, line: 119, type: !40)
!466 = !DILocalVariable(name: "outbytesleft", scope: !458, file: !379, line: 120, type: !99)
!467 = !DILocalVariable(name: "res", scope: !458, file: !379, line: 121, type: !99)
!468 = !DIGlobalVariableExpression(var: !469, expr: !DIExpression())
!469 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !470, file: !471, line: 26, type: !473, isLocal: false, isDefinition: true)
!470 = distinct !DICompileUnit(language: DW_LANG_C99, file: !471, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !45, globals: !472, splitDebugInlining: false, nameTableKind: None)
!471 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!472 = !{!468}
!473 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 376, elements: !474)
!474 = !{!475}
!475 = !DISubrange(count: 47)
!476 = !DIGlobalVariableExpression(var: !477, expr: !DIExpression())
!477 = distinct !DIGlobalVariable(name: "c_locale_cache", scope: !478, file: !510, line: 50, type: !511, isLocal: true, isDefinition: true)
!478 = distinct !DICompileUnit(language: DW_LANG_C99, file: !479, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !45, retainedTypes: !480, globals: !509, splitDebugInlining: false, nameTableKind: None)
!479 = !DIFile(filename: "lib/c-strtold.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!480 = !{!40, !481, !503, !506}
!481 = !DISubprogram(name: "uselocale", scope: !112, file: !112, line: 187, type: !482, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !45)
!482 = !DISubroutineType(types: !483)
!483 = !{!484, !484}
!484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !485, size: 64)
!485 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__locale_struct", file: !486, line: 28, size: 1856, elements: !487)
!486 = !DIFile(filename: "/usr/include/bits/types/__locale_t.h", directory: "")
!487 = !{!488, !494, !497, !500, !501}
!488 = !DIDerivedType(tag: DW_TAG_member, name: "__locales", scope: !485, file: !486, line: 31, baseType: !489, size: 832)
!489 = !DICompositeType(tag: DW_TAG_array_type, baseType: !490, size: 832, elements: !492)
!490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !491, size: 64)
!491 = !DICompositeType(tag: DW_TAG_structure_type, name: "__locale_data", file: !486, line: 31, flags: DIFlagFwdDecl)
!492 = !{!493}
!493 = !DISubrange(count: 13)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "__ctype_b", scope: !485, file: !486, line: 34, baseType: !495, size: 64, offset: 832)
!495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !496, size: 64)
!496 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !77)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "__ctype_tolower", scope: !485, file: !486, line: 35, baseType: !498, size: 64, offset: 896)
!498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !499, size: 64)
!499 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !44)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "__ctype_toupper", scope: !485, file: !486, line: 36, baseType: !498, size: 64, offset: 960)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "__names", scope: !485, file: !486, line: 39, baseType: !502, size: 832, offset: 1024)
!502 = !DICompositeType(tag: DW_TAG_array_type, baseType: !42, size: 832, elements: !492)
!503 = !DIDerivedType(tag: DW_TAG_typedef, name: "locale_t", file: !504, line: 24, baseType: !505)
!504 = !DIFile(filename: "/usr/include/bits/types/locale_t.h", directory: "")
!505 = !DIDerivedType(tag: DW_TAG_typedef, name: "__locale_t", file: !486, line: 42, baseType: !484)
!506 = !DISubprogram(name: "newlocale", scope: !112, file: !112, line: 141, type: !507, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !45)
!507 = !DISubroutineType(types: !508)
!508 = !{!484, !44, !42, !484}
!509 = !{!476}
!510 = !DIFile(filename: "./lib/c-strtod.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!511 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !503)
!512 = distinct !DICompileUnit(language: DW_LANG_C99, file: !513, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !45, retainedTypes: !514, splitDebugInlining: false, nameTableKind: None)
!513 = !DIFile(filename: "lib/cl-strtold.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!514 = !{!515}
!515 = !DISubprogram(name: "c_strtold", scope: !516, file: !516, line: 41, type: !158, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !45)
!516 = !DIFile(filename: "./lib/c-strtod.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!517 = distinct !DICompileUnit(language: DW_LANG_C99, file: !518, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !45, splitDebugInlining: false, nameTableKind: None)
!518 = !DIFile(filename: "lib/unistr/u8-uctomb-aux.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!519 = distinct !DICompileUnit(language: DW_LANG_C99, file: !520, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !521, retainedTypes: !525, splitDebugInlining: false, nameTableKind: None)
!520 = !DIFile(filename: "lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!521 = !{!522}
!522 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !520, line: 40, baseType: !7, size: 32, elements: !523)
!523 = !{!524}
!524 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2020, isUnsigned: true)
!525 = !{!36, !526, !97}
!526 = !DISubprogram(name: "fputs_unlocked", scope: !47, file: !47, line: 662, type: !527, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !45)
!527 = !DISubroutineType(types: !528)
!528 = !{!44, !42, !529}
!529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !530, size: 64)
!530 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !52, line: 49, size: 1728, elements: !531)
!531 = !{!532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558, !559, !560}
!532 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !530, file: !52, line: 51, baseType: !44, size: 32)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !530, file: !52, line: 54, baseType: !40, size: 64, offset: 64)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !530, file: !52, line: 55, baseType: !40, size: 64, offset: 128)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !530, file: !52, line: 56, baseType: !40, size: 64, offset: 192)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !530, file: !52, line: 57, baseType: !40, size: 64, offset: 256)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !530, file: !52, line: 58, baseType: !40, size: 64, offset: 320)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !530, file: !52, line: 59, baseType: !40, size: 64, offset: 384)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !530, file: !52, line: 60, baseType: !40, size: 64, offset: 448)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !530, file: !52, line: 61, baseType: !40, size: 64, offset: 512)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !530, file: !52, line: 64, baseType: !40, size: 64, offset: 576)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !530, file: !52, line: 65, baseType: !40, size: 64, offset: 640)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !530, file: !52, line: 66, baseType: !40, size: 64, offset: 704)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !530, file: !52, line: 68, baseType: !67, size: 64, offset: 768)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !530, file: !52, line: 70, baseType: !529, size: 64, offset: 832)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !530, file: !52, line: 72, baseType: !44, size: 32, offset: 896)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !530, file: !52, line: 73, baseType: !44, size: 32, offset: 928)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !530, file: !52, line: 74, baseType: !73, size: 64, offset: 960)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !530, file: !52, line: 77, baseType: !77, size: 16, offset: 1024)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !530, file: !52, line: 78, baseType: !79, size: 8, offset: 1040)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !530, file: !52, line: 79, baseType: !81, size: 8, offset: 1048)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !530, file: !52, line: 81, baseType: !85, size: 64, offset: 1088)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !530, file: !52, line: 89, baseType: !88, size: 64, offset: 1152)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !530, file: !52, line: 91, baseType: !90, size: 64, offset: 1216)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !530, file: !52, line: 92, baseType: !93, size: 64, offset: 1280)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !530, file: !52, line: 93, baseType: !529, size: 64, offset: 1344)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !530, file: !52, line: 94, baseType: !97, size: 64, offset: 1408)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !530, file: !52, line: 95, baseType: !99, size: 64, offset: 1472)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !530, file: !52, line: 96, baseType: !44, size: 32, offset: 1536)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !530, file: !52, line: 98, baseType: !104, size: 160, offset: 1568)
!561 = distinct !DICompileUnit(language: DW_LANG_C99, file: !562, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !563, retainedTypes: !576, splitDebugInlining: false, nameTableKind: None)
!562 = !DIFile(filename: "lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!563 = !{!564}
!564 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !565, file: !146, line: 186, baseType: !7, size: 32, elements: !574)
!565 = distinct !DISubprogram(name: "x2nrealloc", scope: !146, file: !146, line: 174, type: !566, scopeLine: 175, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !561, retainedNodes: !569)
!566 = !DISubroutineType(types: !567)
!567 = !{!97, !97, !568, !99}
!568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !99, size: 64)
!569 = !{!570, !571, !572, !573}
!570 = !DILocalVariable(name: "p", arg: 1, scope: !565, file: !146, line: 174, type: !97)
!571 = !DILocalVariable(name: "pn", arg: 2, scope: !565, file: !146, line: 174, type: !568)
!572 = !DILocalVariable(name: "s", arg: 3, scope: !565, file: !146, line: 174, type: !99)
!573 = !DILocalVariable(name: "n", scope: !565, file: !146, line: 176, type: !99)
!574 = !{!575}
!575 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128, isUnsigned: true)
!576 = !{!99, !342, !145, !343, !40, !153, !97, !577, !580}
!577 = !DISubprogram(name: "xcalloc", scope: !146, file: !146, line: 57, type: !578, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !45)
!578 = !DISubroutineType(types: !579)
!579 = !{!97, !101, !101}
!580 = !DISubprogram(name: "rpl_calloc", scope: !581, file: !581, line: 688, type: !578, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !45)
!581 = !DIFile(filename: "./lib/stdlib.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!582 = distinct !DICompileUnit(language: DW_LANG_C99, file: !583, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !45, retainedTypes: !584, splitDebugInlining: false, nameTableKind: None)
!583 = !DIFile(filename: "lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!584 = !{!36, !133}
!585 = distinct !DICompileUnit(language: DW_LANG_C99, file: !586, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !45, retainedTypes: !587, splitDebugInlining: false, nameTableKind: None)
!586 = !DIFile(filename: "lib/xprintf.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!587 = !{!588, !598, !36, !133, !633}
!588 = !DISubprogram(name: "xvprintf", scope: !150, file: !150, line: 37, type: !589, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !45)
!589 = !DISubroutineType(types: !590)
!590 = !{!44, !42, !591}
!591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !592, size: 64)
!592 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !586, line: 34, size: 192, elements: !593)
!593 = !{!594, !595, !596, !597}
!594 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !592, file: !586, line: 34, baseType: !7, size: 32)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !592, file: !586, line: 34, baseType: !7, size: 32, offset: 32)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !592, file: !586, line: 34, baseType: !97, size: 64, offset: 64)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !592, file: !586, line: 34, baseType: !97, size: 64, offset: 128)
!598 = !DISubprogram(name: "ferror", scope: !47, file: !47, line: 761, type: !599, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !45)
!599 = !DISubroutineType(types: !600)
!600 = !{!44, !601}
!601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !602, size: 64)
!602 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !52, line: 49, size: 1728, elements: !603)
!603 = !{!604, !605, !606, !607, !608, !609, !610, !611, !612, !613, !614, !615, !616, !617, !618, !619, !620, !621, !622, !623, !624, !625, !626, !627, !628, !629, !630, !631, !632}
!604 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !602, file: !52, line: 51, baseType: !44, size: 32)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !602, file: !52, line: 54, baseType: !40, size: 64, offset: 64)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !602, file: !52, line: 55, baseType: !40, size: 64, offset: 128)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !602, file: !52, line: 56, baseType: !40, size: 64, offset: 192)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !602, file: !52, line: 57, baseType: !40, size: 64, offset: 256)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !602, file: !52, line: 58, baseType: !40, size: 64, offset: 320)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !602, file: !52, line: 59, baseType: !40, size: 64, offset: 384)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !602, file: !52, line: 60, baseType: !40, size: 64, offset: 448)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !602, file: !52, line: 61, baseType: !40, size: 64, offset: 512)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !602, file: !52, line: 64, baseType: !40, size: 64, offset: 576)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !602, file: !52, line: 65, baseType: !40, size: 64, offset: 640)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !602, file: !52, line: 66, baseType: !40, size: 64, offset: 704)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !602, file: !52, line: 68, baseType: !67, size: 64, offset: 768)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !602, file: !52, line: 70, baseType: !601, size: 64, offset: 832)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !602, file: !52, line: 72, baseType: !44, size: 32, offset: 896)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !602, file: !52, line: 73, baseType: !44, size: 32, offset: 928)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !602, file: !52, line: 74, baseType: !73, size: 64, offset: 960)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !602, file: !52, line: 77, baseType: !77, size: 16, offset: 1024)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !602, file: !52, line: 78, baseType: !79, size: 8, offset: 1040)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !602, file: !52, line: 79, baseType: !81, size: 8, offset: 1048)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !602, file: !52, line: 81, baseType: !85, size: 64, offset: 1088)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !602, file: !52, line: 89, baseType: !88, size: 64, offset: 1152)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !602, file: !52, line: 91, baseType: !90, size: 64, offset: 1216)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !602, file: !52, line: 92, baseType: !93, size: 64, offset: 1280)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !602, file: !52, line: 93, baseType: !601, size: 64, offset: 1344)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !602, file: !52, line: 94, baseType: !97, size: 64, offset: 1408)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !602, file: !52, line: 95, baseType: !99, size: 64, offset: 1472)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !602, file: !52, line: 96, baseType: !44, size: 32, offset: 1536)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !602, file: !52, line: 98, baseType: !104, size: 160, offset: 1568)
!633 = !DISubprogram(name: "xvfprintf", scope: !150, file: !150, line: 41, type: !634, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !45)
!634 = !DISubroutineType(types: !635)
!635 = !{!44, !601, !42, !591}
!636 = distinct !DICompileUnit(language: DW_LANG_C99, file: !637, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !45, retainedTypes: !638, splitDebugInlining: false, nameTableKind: None)
!637 = !DIFile(filename: "lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!638 = !{!97}
!639 = distinct !DICompileUnit(language: DW_LANG_C99, file: !640, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !45, retainedTypes: !641, splitDebugInlining: false, nameTableKind: None)
!640 = !DIFile(filename: "lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!641 = !{!642, !99, !654}
!642 = !DISubprogram(name: "mbrtowc", scope: !329, file: !329, line: 296, type: !643, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !45)
!643 = !DISubroutineType(types: !644)
!644 = !{!101, !310, !42, !101, !645}
!645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !646, size: 64)
!646 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !313, line: 13, size: 64, elements: !647)
!647 = !{!648, !649}
!648 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !646, file: !313, line: 15, baseType: !44, size: 32)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !646, file: !313, line: 20, baseType: !650, size: 32, offset: 32)
!650 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !646, file: !313, line: 16, size: 32, elements: !651)
!651 = !{!652, !653}
!652 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !650, file: !313, line: 18, baseType: !7, size: 32)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !650, file: !313, line: 19, baseType: !321, size: 32)
!654 = !DISubprogram(name: "hard_locale", scope: !655, file: !655, line: 26, type: !656, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !45)
!655 = !DIFile(filename: "./lib/hard-locale.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!656 = !DISubroutineType(types: !657)
!657 = !{!170, !44}
!658 = distinct !DICompileUnit(language: DW_LANG_C99, file: !659, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !45, retainedTypes: !660, splitDebugInlining: false, nameTableKind: None)
!659 = !DIFile(filename: "lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!660 = !{!661}
!661 = !DISubprogram(name: "rpl_fclose", scope: !662, file: !662, line: 672, type: !663, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !45)
!662 = !DIFile(filename: "./lib/stdio.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!663 = !DISubroutineType(types: !664)
!664 = !{!44, !665}
!665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !666, size: 64)
!666 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !52, line: 49, size: 1728, elements: !667)
!667 = !{!668, !669, !670, !671, !672, !673, !674, !675, !676, !677, !678, !679, !680, !681, !682, !683, !684, !685, !686, !687, !688, !689, !690, !691, !692, !693, !694, !695, !696}
!668 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !666, file: !52, line: 51, baseType: !44, size: 32)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !666, file: !52, line: 54, baseType: !40, size: 64, offset: 64)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !666, file: !52, line: 55, baseType: !40, size: 64, offset: 128)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !666, file: !52, line: 56, baseType: !40, size: 64, offset: 192)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !666, file: !52, line: 57, baseType: !40, size: 64, offset: 256)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !666, file: !52, line: 58, baseType: !40, size: 64, offset: 320)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !666, file: !52, line: 59, baseType: !40, size: 64, offset: 384)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !666, file: !52, line: 60, baseType: !40, size: 64, offset: 448)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !666, file: !52, line: 61, baseType: !40, size: 64, offset: 512)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !666, file: !52, line: 64, baseType: !40, size: 64, offset: 576)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !666, file: !52, line: 65, baseType: !40, size: 64, offset: 640)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !666, file: !52, line: 66, baseType: !40, size: 64, offset: 704)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !666, file: !52, line: 68, baseType: !67, size: 64, offset: 768)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !666, file: !52, line: 70, baseType: !665, size: 64, offset: 832)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !666, file: !52, line: 72, baseType: !44, size: 32, offset: 896)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !666, file: !52, line: 73, baseType: !44, size: 32, offset: 928)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !666, file: !52, line: 74, baseType: !73, size: 64, offset: 960)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !666, file: !52, line: 77, baseType: !77, size: 16, offset: 1024)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !666, file: !52, line: 78, baseType: !79, size: 8, offset: 1040)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !666, file: !52, line: 79, baseType: !81, size: 8, offset: 1048)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !666, file: !52, line: 81, baseType: !85, size: 64, offset: 1088)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !666, file: !52, line: 89, baseType: !88, size: 64, offset: 1152)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !666, file: !52, line: 91, baseType: !90, size: 64, offset: 1216)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !666, file: !52, line: 92, baseType: !93, size: 64, offset: 1280)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !666, file: !52, line: 93, baseType: !665, size: 64, offset: 1344)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !666, file: !52, line: 94, baseType: !97, size: 64, offset: 1408)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !666, file: !52, line: 95, baseType: !99, size: 64, offset: 1472)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !666, file: !52, line: 96, baseType: !44, size: 32, offset: 1536)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !666, file: !52, line: 98, baseType: !104, size: 160, offset: 1568)
!697 = distinct !DICompileUnit(language: DW_LANG_C99, file: !698, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !45, retainedTypes: !699, splitDebugInlining: false, nameTableKind: None)
!698 = !DIFile(filename: "lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!699 = !{!700}
!700 = !DISubprogram(name: "setlocale_null_r", scope: !701, file: !701, line: 64, type: !702, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !45)
!701 = !DIFile(filename: "./lib/setlocale_null.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!702 = !DISubroutineType(types: !703)
!703 = !{!44, !44, !40, !101}
!704 = distinct !DICompileUnit(language: DW_LANG_C99, file: !705, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !706, retainedTypes: !1093, splitDebugInlining: false, nameTableKind: None)
!705 = !DIFile(filename: "lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!706 = !{!707}
!707 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !708, line: 41, baseType: !7, size: 32, elements: !709)
!708 = !DIFile(filename: "/usr/include/langinfo.h", directory: "")
!709 = !{!710, !711, !712, !713, !714, !715, !716, !717, !718, !719, !720, !721, !722, !723, !724, !725, !726, !727, !728, !729, !730, !731, !732, !733, !734, !735, !736, !737, !738, !739, !740, !741, !742, !743, !744, !745, !746, !747, !748, !749, !750, !751, !752, !753, !754, !755, !756, !757, !758, !759, !760, !761, !762, !763, !764, !765, !766, !767, !768, !769, !770, !771, !772, !773, !774, !775, !776, !777, !778, !779, !780, !781, !782, !783, !784, !785, !786, !787, !788, !789, !790, !791, !792, !793, !794, !795, !796, !797, !798, !799, !800, !801, !802, !803, !804, !805, !806, !807, !808, !809, !810, !811, !812, !813, !814, !815, !816, !817, !818, !819, !820, !821, !822, !823, !824, !825, !826, !827, !828, !829, !830, !831, !832, !833, !834, !835, !836, !837, !838, !839, !840, !841, !842, !843, !844, !845, !846, !847, !848, !849, !850, !851, !852, !853, !854, !855, !856, !857, !858, !859, !860, !861, !862, !863, !864, !865, !866, !867, !868, !869, !870, !871, !872, !873, !874, !875, !876, !877, !878, !879, !880, !881, !882, !883, !884, !885, !886, !887, !888, !889, !890, !891, !892, !893, !894, !895, !896, !897, !898, !899, !900, !901, !902, !903, !904, !905, !906, !907, !908, !909, !910, !911, !912, !913, !914, !915, !916, !917, !918, !919, !920, !921, !922, !923, !924, !925, !926, !927, !928, !929, !930, !931, !932, !933, !934, !935, !936, !937, !938, !939, !940, !941, !942, !943, !944, !945, !946, !947, !948, !949, !950, !951, !952, !953, !954, !955, !956, !957, !958, !959, !960, !961, !962, !963, !964, !965, !966, !967, !968, !969, !970, !971, !972, !973, !974, !975, !976, !977, !978, !979, !980, !981, !982, !983, !984, !985, !986, !987, !988, !989, !990, !991, !992, !993, !994, !995, !996, !997, !998, !999, !1000, !1001, !1002, !1003, !1004, !1005, !1006, !1007, !1008, !1009, !1010, !1011, !1012, !1013, !1014, !1015, !1016, !1017, !1018, !1019, !1020, !1021, !1022, !1023, !1024, !1025, !1026, !1027, !1028, !1029, !1030, !1031, !1032, !1033, !1034, !1035, !1036, !1037, !1038, !1039, !1040, !1041, !1042, !1043, !1044, !1045, !1046, !1047, !1048, !1049, !1050, !1051, !1052, !1053, !1054, !1055, !1056, !1057, !1058, !1059, !1060, !1061, !1062, !1063, !1064, !1065, !1066, !1067, !1068, !1069, !1070, !1071, !1072, !1073, !1074, !1075, !1076, !1077, !1078, !1079, !1080, !1081, !1082, !1083, !1084, !1085, !1086, !1087, !1088, !1089, !1090, !1091, !1092}
!710 = !DIEnumerator(name: "ABDAY_1", value: 131072, isUnsigned: true)
!711 = !DIEnumerator(name: "ABDAY_2", value: 131073, isUnsigned: true)
!712 = !DIEnumerator(name: "ABDAY_3", value: 131074, isUnsigned: true)
!713 = !DIEnumerator(name: "ABDAY_4", value: 131075, isUnsigned: true)
!714 = !DIEnumerator(name: "ABDAY_5", value: 131076, isUnsigned: true)
!715 = !DIEnumerator(name: "ABDAY_6", value: 131077, isUnsigned: true)
!716 = !DIEnumerator(name: "ABDAY_7", value: 131078, isUnsigned: true)
!717 = !DIEnumerator(name: "DAY_1", value: 131079, isUnsigned: true)
!718 = !DIEnumerator(name: "DAY_2", value: 131080, isUnsigned: true)
!719 = !DIEnumerator(name: "DAY_3", value: 131081, isUnsigned: true)
!720 = !DIEnumerator(name: "DAY_4", value: 131082, isUnsigned: true)
!721 = !DIEnumerator(name: "DAY_5", value: 131083, isUnsigned: true)
!722 = !DIEnumerator(name: "DAY_6", value: 131084, isUnsigned: true)
!723 = !DIEnumerator(name: "DAY_7", value: 131085, isUnsigned: true)
!724 = !DIEnumerator(name: "ABMON_1", value: 131086, isUnsigned: true)
!725 = !DIEnumerator(name: "ABMON_2", value: 131087, isUnsigned: true)
!726 = !DIEnumerator(name: "ABMON_3", value: 131088, isUnsigned: true)
!727 = !DIEnumerator(name: "ABMON_4", value: 131089, isUnsigned: true)
!728 = !DIEnumerator(name: "ABMON_5", value: 131090, isUnsigned: true)
!729 = !DIEnumerator(name: "ABMON_6", value: 131091, isUnsigned: true)
!730 = !DIEnumerator(name: "ABMON_7", value: 131092, isUnsigned: true)
!731 = !DIEnumerator(name: "ABMON_8", value: 131093, isUnsigned: true)
!732 = !DIEnumerator(name: "ABMON_9", value: 131094, isUnsigned: true)
!733 = !DIEnumerator(name: "ABMON_10", value: 131095, isUnsigned: true)
!734 = !DIEnumerator(name: "ABMON_11", value: 131096, isUnsigned: true)
!735 = !DIEnumerator(name: "ABMON_12", value: 131097, isUnsigned: true)
!736 = !DIEnumerator(name: "MON_1", value: 131098, isUnsigned: true)
!737 = !DIEnumerator(name: "MON_2", value: 131099, isUnsigned: true)
!738 = !DIEnumerator(name: "MON_3", value: 131100, isUnsigned: true)
!739 = !DIEnumerator(name: "MON_4", value: 131101, isUnsigned: true)
!740 = !DIEnumerator(name: "MON_5", value: 131102, isUnsigned: true)
!741 = !DIEnumerator(name: "MON_6", value: 131103, isUnsigned: true)
!742 = !DIEnumerator(name: "MON_7", value: 131104, isUnsigned: true)
!743 = !DIEnumerator(name: "MON_8", value: 131105, isUnsigned: true)
!744 = !DIEnumerator(name: "MON_9", value: 131106, isUnsigned: true)
!745 = !DIEnumerator(name: "MON_10", value: 131107, isUnsigned: true)
!746 = !DIEnumerator(name: "MON_11", value: 131108, isUnsigned: true)
!747 = !DIEnumerator(name: "MON_12", value: 131109, isUnsigned: true)
!748 = !DIEnumerator(name: "AM_STR", value: 131110, isUnsigned: true)
!749 = !DIEnumerator(name: "PM_STR", value: 131111, isUnsigned: true)
!750 = !DIEnumerator(name: "D_T_FMT", value: 131112, isUnsigned: true)
!751 = !DIEnumerator(name: "D_FMT", value: 131113, isUnsigned: true)
!752 = !DIEnumerator(name: "T_FMT", value: 131114, isUnsigned: true)
!753 = !DIEnumerator(name: "T_FMT_AMPM", value: 131115, isUnsigned: true)
!754 = !DIEnumerator(name: "ERA", value: 131116, isUnsigned: true)
!755 = !DIEnumerator(name: "__ERA_YEAR", value: 131117, isUnsigned: true)
!756 = !DIEnumerator(name: "ERA_D_FMT", value: 131118, isUnsigned: true)
!757 = !DIEnumerator(name: "ALT_DIGITS", value: 131119, isUnsigned: true)
!758 = !DIEnumerator(name: "ERA_D_T_FMT", value: 131120, isUnsigned: true)
!759 = !DIEnumerator(name: "ERA_T_FMT", value: 131121, isUnsigned: true)
!760 = !DIEnumerator(name: "_NL_TIME_ERA_NUM_ENTRIES", value: 131122, isUnsigned: true)
!761 = !DIEnumerator(name: "_NL_TIME_ERA_ENTRIES", value: 131123, isUnsigned: true)
!762 = !DIEnumerator(name: "_NL_WABDAY_1", value: 131124, isUnsigned: true)
!763 = !DIEnumerator(name: "_NL_WABDAY_2", value: 131125, isUnsigned: true)
!764 = !DIEnumerator(name: "_NL_WABDAY_3", value: 131126, isUnsigned: true)
!765 = !DIEnumerator(name: "_NL_WABDAY_4", value: 131127, isUnsigned: true)
!766 = !DIEnumerator(name: "_NL_WABDAY_5", value: 131128, isUnsigned: true)
!767 = !DIEnumerator(name: "_NL_WABDAY_6", value: 131129, isUnsigned: true)
!768 = !DIEnumerator(name: "_NL_WABDAY_7", value: 131130, isUnsigned: true)
!769 = !DIEnumerator(name: "_NL_WDAY_1", value: 131131, isUnsigned: true)
!770 = !DIEnumerator(name: "_NL_WDAY_2", value: 131132, isUnsigned: true)
!771 = !DIEnumerator(name: "_NL_WDAY_3", value: 131133, isUnsigned: true)
!772 = !DIEnumerator(name: "_NL_WDAY_4", value: 131134, isUnsigned: true)
!773 = !DIEnumerator(name: "_NL_WDAY_5", value: 131135, isUnsigned: true)
!774 = !DIEnumerator(name: "_NL_WDAY_6", value: 131136, isUnsigned: true)
!775 = !DIEnumerator(name: "_NL_WDAY_7", value: 131137, isUnsigned: true)
!776 = !DIEnumerator(name: "_NL_WABMON_1", value: 131138, isUnsigned: true)
!777 = !DIEnumerator(name: "_NL_WABMON_2", value: 131139, isUnsigned: true)
!778 = !DIEnumerator(name: "_NL_WABMON_3", value: 131140, isUnsigned: true)
!779 = !DIEnumerator(name: "_NL_WABMON_4", value: 131141, isUnsigned: true)
!780 = !DIEnumerator(name: "_NL_WABMON_5", value: 131142, isUnsigned: true)
!781 = !DIEnumerator(name: "_NL_WABMON_6", value: 131143, isUnsigned: true)
!782 = !DIEnumerator(name: "_NL_WABMON_7", value: 131144, isUnsigned: true)
!783 = !DIEnumerator(name: "_NL_WABMON_8", value: 131145, isUnsigned: true)
!784 = !DIEnumerator(name: "_NL_WABMON_9", value: 131146, isUnsigned: true)
!785 = !DIEnumerator(name: "_NL_WABMON_10", value: 131147, isUnsigned: true)
!786 = !DIEnumerator(name: "_NL_WABMON_11", value: 131148, isUnsigned: true)
!787 = !DIEnumerator(name: "_NL_WABMON_12", value: 131149, isUnsigned: true)
!788 = !DIEnumerator(name: "_NL_WMON_1", value: 131150, isUnsigned: true)
!789 = !DIEnumerator(name: "_NL_WMON_2", value: 131151, isUnsigned: true)
!790 = !DIEnumerator(name: "_NL_WMON_3", value: 131152, isUnsigned: true)
!791 = !DIEnumerator(name: "_NL_WMON_4", value: 131153, isUnsigned: true)
!792 = !DIEnumerator(name: "_NL_WMON_5", value: 131154, isUnsigned: true)
!793 = !DIEnumerator(name: "_NL_WMON_6", value: 131155, isUnsigned: true)
!794 = !DIEnumerator(name: "_NL_WMON_7", value: 131156, isUnsigned: true)
!795 = !DIEnumerator(name: "_NL_WMON_8", value: 131157, isUnsigned: true)
!796 = !DIEnumerator(name: "_NL_WMON_9", value: 131158, isUnsigned: true)
!797 = !DIEnumerator(name: "_NL_WMON_10", value: 131159, isUnsigned: true)
!798 = !DIEnumerator(name: "_NL_WMON_11", value: 131160, isUnsigned: true)
!799 = !DIEnumerator(name: "_NL_WMON_12", value: 131161, isUnsigned: true)
!800 = !DIEnumerator(name: "_NL_WAM_STR", value: 131162, isUnsigned: true)
!801 = !DIEnumerator(name: "_NL_WPM_STR", value: 131163, isUnsigned: true)
!802 = !DIEnumerator(name: "_NL_WD_T_FMT", value: 131164, isUnsigned: true)
!803 = !DIEnumerator(name: "_NL_WD_FMT", value: 131165, isUnsigned: true)
!804 = !DIEnumerator(name: "_NL_WT_FMT", value: 131166, isUnsigned: true)
!805 = !DIEnumerator(name: "_NL_WT_FMT_AMPM", value: 131167, isUnsigned: true)
!806 = !DIEnumerator(name: "_NL_WERA_YEAR", value: 131168, isUnsigned: true)
!807 = !DIEnumerator(name: "_NL_WERA_D_FMT", value: 131169, isUnsigned: true)
!808 = !DIEnumerator(name: "_NL_WALT_DIGITS", value: 131170, isUnsigned: true)
!809 = !DIEnumerator(name: "_NL_WERA_D_T_FMT", value: 131171, isUnsigned: true)
!810 = !DIEnumerator(name: "_NL_WERA_T_FMT", value: 131172, isUnsigned: true)
!811 = !DIEnumerator(name: "_NL_TIME_WEEK_NDAYS", value: 131173, isUnsigned: true)
!812 = !DIEnumerator(name: "_NL_TIME_WEEK_1STDAY", value: 131174, isUnsigned: true)
!813 = !DIEnumerator(name: "_NL_TIME_WEEK_1STWEEK", value: 131175, isUnsigned: true)
!814 = !DIEnumerator(name: "_NL_TIME_FIRST_WEEKDAY", value: 131176, isUnsigned: true)
!815 = !DIEnumerator(name: "_NL_TIME_FIRST_WORKDAY", value: 131177, isUnsigned: true)
!816 = !DIEnumerator(name: "_NL_TIME_CAL_DIRECTION", value: 131178, isUnsigned: true)
!817 = !DIEnumerator(name: "_NL_TIME_TIMEZONE", value: 131179, isUnsigned: true)
!818 = !DIEnumerator(name: "_DATE_FMT", value: 131180, isUnsigned: true)
!819 = !DIEnumerator(name: "_NL_W_DATE_FMT", value: 131181, isUnsigned: true)
!820 = !DIEnumerator(name: "_NL_TIME_CODESET", value: 131182, isUnsigned: true)
!821 = !DIEnumerator(name: "__ALTMON_1", value: 131183, isUnsigned: true)
!822 = !DIEnumerator(name: "__ALTMON_2", value: 131184, isUnsigned: true)
!823 = !DIEnumerator(name: "__ALTMON_3", value: 131185, isUnsigned: true)
!824 = !DIEnumerator(name: "__ALTMON_4", value: 131186, isUnsigned: true)
!825 = !DIEnumerator(name: "__ALTMON_5", value: 131187, isUnsigned: true)
!826 = !DIEnumerator(name: "__ALTMON_6", value: 131188, isUnsigned: true)
!827 = !DIEnumerator(name: "__ALTMON_7", value: 131189, isUnsigned: true)
!828 = !DIEnumerator(name: "__ALTMON_8", value: 131190, isUnsigned: true)
!829 = !DIEnumerator(name: "__ALTMON_9", value: 131191, isUnsigned: true)
!830 = !DIEnumerator(name: "__ALTMON_10", value: 131192, isUnsigned: true)
!831 = !DIEnumerator(name: "__ALTMON_11", value: 131193, isUnsigned: true)
!832 = !DIEnumerator(name: "__ALTMON_12", value: 131194, isUnsigned: true)
!833 = !DIEnumerator(name: "_NL_WALTMON_1", value: 131195, isUnsigned: true)
!834 = !DIEnumerator(name: "_NL_WALTMON_2", value: 131196, isUnsigned: true)
!835 = !DIEnumerator(name: "_NL_WALTMON_3", value: 131197, isUnsigned: true)
!836 = !DIEnumerator(name: "_NL_WALTMON_4", value: 131198, isUnsigned: true)
!837 = !DIEnumerator(name: "_NL_WALTMON_5", value: 131199, isUnsigned: true)
!838 = !DIEnumerator(name: "_NL_WALTMON_6", value: 131200, isUnsigned: true)
!839 = !DIEnumerator(name: "_NL_WALTMON_7", value: 131201, isUnsigned: true)
!840 = !DIEnumerator(name: "_NL_WALTMON_8", value: 131202, isUnsigned: true)
!841 = !DIEnumerator(name: "_NL_WALTMON_9", value: 131203, isUnsigned: true)
!842 = !DIEnumerator(name: "_NL_WALTMON_10", value: 131204, isUnsigned: true)
!843 = !DIEnumerator(name: "_NL_WALTMON_11", value: 131205, isUnsigned: true)
!844 = !DIEnumerator(name: "_NL_WALTMON_12", value: 131206, isUnsigned: true)
!845 = !DIEnumerator(name: "_NL_ABALTMON_1", value: 131207, isUnsigned: true)
!846 = !DIEnumerator(name: "_NL_ABALTMON_2", value: 131208, isUnsigned: true)
!847 = !DIEnumerator(name: "_NL_ABALTMON_3", value: 131209, isUnsigned: true)
!848 = !DIEnumerator(name: "_NL_ABALTMON_4", value: 131210, isUnsigned: true)
!849 = !DIEnumerator(name: "_NL_ABALTMON_5", value: 131211, isUnsigned: true)
!850 = !DIEnumerator(name: "_NL_ABALTMON_6", value: 131212, isUnsigned: true)
!851 = !DIEnumerator(name: "_NL_ABALTMON_7", value: 131213, isUnsigned: true)
!852 = !DIEnumerator(name: "_NL_ABALTMON_8", value: 131214, isUnsigned: true)
!853 = !DIEnumerator(name: "_NL_ABALTMON_9", value: 131215, isUnsigned: true)
!854 = !DIEnumerator(name: "_NL_ABALTMON_10", value: 131216, isUnsigned: true)
!855 = !DIEnumerator(name: "_NL_ABALTMON_11", value: 131217, isUnsigned: true)
!856 = !DIEnumerator(name: "_NL_ABALTMON_12", value: 131218, isUnsigned: true)
!857 = !DIEnumerator(name: "_NL_WABALTMON_1", value: 131219, isUnsigned: true)
!858 = !DIEnumerator(name: "_NL_WABALTMON_2", value: 131220, isUnsigned: true)
!859 = !DIEnumerator(name: "_NL_WABALTMON_3", value: 131221, isUnsigned: true)
!860 = !DIEnumerator(name: "_NL_WABALTMON_4", value: 131222, isUnsigned: true)
!861 = !DIEnumerator(name: "_NL_WABALTMON_5", value: 131223, isUnsigned: true)
!862 = !DIEnumerator(name: "_NL_WABALTMON_6", value: 131224, isUnsigned: true)
!863 = !DIEnumerator(name: "_NL_WABALTMON_7", value: 131225, isUnsigned: true)
!864 = !DIEnumerator(name: "_NL_WABALTMON_8", value: 131226, isUnsigned: true)
!865 = !DIEnumerator(name: "_NL_WABALTMON_9", value: 131227, isUnsigned: true)
!866 = !DIEnumerator(name: "_NL_WABALTMON_10", value: 131228, isUnsigned: true)
!867 = !DIEnumerator(name: "_NL_WABALTMON_11", value: 131229, isUnsigned: true)
!868 = !DIEnumerator(name: "_NL_WABALTMON_12", value: 131230, isUnsigned: true)
!869 = !DIEnumerator(name: "_NL_NUM_LC_TIME", value: 131231, isUnsigned: true)
!870 = !DIEnumerator(name: "_NL_COLLATE_NRULES", value: 196608, isUnsigned: true)
!871 = !DIEnumerator(name: "_NL_COLLATE_RULESETS", value: 196609, isUnsigned: true)
!872 = !DIEnumerator(name: "_NL_COLLATE_TABLEMB", value: 196610, isUnsigned: true)
!873 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTMB", value: 196611, isUnsigned: true)
!874 = !DIEnumerator(name: "_NL_COLLATE_EXTRAMB", value: 196612, isUnsigned: true)
!875 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTMB", value: 196613, isUnsigned: true)
!876 = !DIEnumerator(name: "_NL_COLLATE_GAP1", value: 196614, isUnsigned: true)
!877 = !DIEnumerator(name: "_NL_COLLATE_GAP2", value: 196615, isUnsigned: true)
!878 = !DIEnumerator(name: "_NL_COLLATE_GAP3", value: 196616, isUnsigned: true)
!879 = !DIEnumerator(name: "_NL_COLLATE_TABLEWC", value: 196617, isUnsigned: true)
!880 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTWC", value: 196618, isUnsigned: true)
!881 = !DIEnumerator(name: "_NL_COLLATE_EXTRAWC", value: 196619, isUnsigned: true)
!882 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTWC", value: 196620, isUnsigned: true)
!883 = !DIEnumerator(name: "_NL_COLLATE_SYMB_HASH_SIZEMB", value: 196621, isUnsigned: true)
!884 = !DIEnumerator(name: "_NL_COLLATE_SYMB_TABLEMB", value: 196622, isUnsigned: true)
!885 = !DIEnumerator(name: "_NL_COLLATE_SYMB_EXTRAMB", value: 196623, isUnsigned: true)
!886 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQMB", value: 196624, isUnsigned: true)
!887 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQWC", value: 196625, isUnsigned: true)
!888 = !DIEnumerator(name: "_NL_COLLATE_CODESET", value: 196626, isUnsigned: true)
!889 = !DIEnumerator(name: "_NL_NUM_LC_COLLATE", value: 196627, isUnsigned: true)
!890 = !DIEnumerator(name: "_NL_CTYPE_CLASS", value: 0, isUnsigned: true)
!891 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER", value: 1, isUnsigned: true)
!892 = !DIEnumerator(name: "_NL_CTYPE_GAP1", value: 2, isUnsigned: true)
!893 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER", value: 3, isUnsigned: true)
!894 = !DIEnumerator(name: "_NL_CTYPE_GAP2", value: 4, isUnsigned: true)
!895 = !DIEnumerator(name: "_NL_CTYPE_CLASS32", value: 5, isUnsigned: true)
!896 = !DIEnumerator(name: "_NL_CTYPE_GAP3", value: 6, isUnsigned: true)
!897 = !DIEnumerator(name: "_NL_CTYPE_GAP4", value: 7, isUnsigned: true)
!898 = !DIEnumerator(name: "_NL_CTYPE_GAP5", value: 8, isUnsigned: true)
!899 = !DIEnumerator(name: "_NL_CTYPE_GAP6", value: 9, isUnsigned: true)
!900 = !DIEnumerator(name: "_NL_CTYPE_CLASS_NAMES", value: 10, isUnsigned: true)
!901 = !DIEnumerator(name: "_NL_CTYPE_MAP_NAMES", value: 11, isUnsigned: true)
!902 = !DIEnumerator(name: "_NL_CTYPE_WIDTH", value: 12, isUnsigned: true)
!903 = !DIEnumerator(name: "_NL_CTYPE_MB_CUR_MAX", value: 13, isUnsigned: true)
!904 = !DIEnumerator(name: "_NL_CTYPE_CODESET_NAME", value: 14, isUnsigned: true)
!905 = !DIEnumerator(name: "CODESET", value: 14, isUnsigned: true)
!906 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER32", value: 15, isUnsigned: true)
!907 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER32", value: 16, isUnsigned: true)
!908 = !DIEnumerator(name: "_NL_CTYPE_CLASS_OFFSET", value: 17, isUnsigned: true)
!909 = !DIEnumerator(name: "_NL_CTYPE_MAP_OFFSET", value: 18, isUnsigned: true)
!910 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_MB_LEN", value: 19, isUnsigned: true)
!911 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_MB", value: 20, isUnsigned: true)
!912 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_MB", value: 21, isUnsigned: true)
!913 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_MB", value: 22, isUnsigned: true)
!914 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_MB", value: 23, isUnsigned: true)
!915 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_MB", value: 24, isUnsigned: true)
!916 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_MB", value: 25, isUnsigned: true)
!917 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_MB", value: 26, isUnsigned: true)
!918 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_MB", value: 27, isUnsigned: true)
!919 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_MB", value: 28, isUnsigned: true)
!920 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_MB", value: 29, isUnsigned: true)
!921 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_WC_LEN", value: 30, isUnsigned: true)
!922 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_WC", value: 31, isUnsigned: true)
!923 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_WC", value: 32, isUnsigned: true)
!924 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_WC", value: 33, isUnsigned: true)
!925 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_WC", value: 34, isUnsigned: true)
!926 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_WC", value: 35, isUnsigned: true)
!927 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_WC", value: 36, isUnsigned: true)
!928 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_WC", value: 37, isUnsigned: true)
!929 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_WC", value: 38, isUnsigned: true)
!930 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_WC", value: 39, isUnsigned: true)
!931 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_WC", value: 40, isUnsigned: true)
!932 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_MB", value: 41, isUnsigned: true)
!933 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_MB", value: 42, isUnsigned: true)
!934 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_MB", value: 43, isUnsigned: true)
!935 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_MB", value: 44, isUnsigned: true)
!936 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_MB", value: 45, isUnsigned: true)
!937 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_MB", value: 46, isUnsigned: true)
!938 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_MB", value: 47, isUnsigned: true)
!939 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_MB", value: 48, isUnsigned: true)
!940 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_MB", value: 49, isUnsigned: true)
!941 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_MB", value: 50, isUnsigned: true)
!942 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_WC", value: 51, isUnsigned: true)
!943 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_WC", value: 52, isUnsigned: true)
!944 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_WC", value: 53, isUnsigned: true)
!945 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_WC", value: 54, isUnsigned: true)
!946 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_WC", value: 55, isUnsigned: true)
!947 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_WC", value: 56, isUnsigned: true)
!948 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_WC", value: 57, isUnsigned: true)
!949 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_WC", value: 58, isUnsigned: true)
!950 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_WC", value: 59, isUnsigned: true)
!951 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_WC", value: 60, isUnsigned: true)
!952 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TAB_SIZE", value: 61, isUnsigned: true)
!953 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_IDX", value: 62, isUnsigned: true)
!954 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_TBL", value: 63, isUnsigned: true)
!955 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_IDX", value: 64, isUnsigned: true)
!956 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_TBL", value: 65, isUnsigned: true)
!957 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING_LEN", value: 66, isUnsigned: true)
!958 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING", value: 67, isUnsigned: true)
!959 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE_LEN", value: 68, isUnsigned: true)
!960 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE", value: 69, isUnsigned: true)
!961 = !DIEnumerator(name: "_NL_CTYPE_MAP_TO_NONASCII", value: 70, isUnsigned: true)
!962 = !DIEnumerator(name: "_NL_CTYPE_NONASCII_CASE", value: 71, isUnsigned: true)
!963 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_1", value: 72, isUnsigned: true)
!964 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_2", value: 73, isUnsigned: true)
!965 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_3", value: 74, isUnsigned: true)
!966 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_4", value: 75, isUnsigned: true)
!967 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_5", value: 76, isUnsigned: true)
!968 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_6", value: 77, isUnsigned: true)
!969 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_7", value: 78, isUnsigned: true)
!970 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_8", value: 79, isUnsigned: true)
!971 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_9", value: 80, isUnsigned: true)
!972 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_10", value: 81, isUnsigned: true)
!973 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_11", value: 82, isUnsigned: true)
!974 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_12", value: 83, isUnsigned: true)
!975 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_13", value: 84, isUnsigned: true)
!976 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_14", value: 85, isUnsigned: true)
!977 = !DIEnumerator(name: "_NL_NUM_LC_CTYPE", value: 86, isUnsigned: true)
!978 = !DIEnumerator(name: "__INT_CURR_SYMBOL", value: 262144, isUnsigned: true)
!979 = !DIEnumerator(name: "__CURRENCY_SYMBOL", value: 262145, isUnsigned: true)
!980 = !DIEnumerator(name: "__MON_DECIMAL_POINT", value: 262146, isUnsigned: true)
!981 = !DIEnumerator(name: "__MON_THOUSANDS_SEP", value: 262147, isUnsigned: true)
!982 = !DIEnumerator(name: "__MON_GROUPING", value: 262148, isUnsigned: true)
!983 = !DIEnumerator(name: "__POSITIVE_SIGN", value: 262149, isUnsigned: true)
!984 = !DIEnumerator(name: "__NEGATIVE_SIGN", value: 262150, isUnsigned: true)
!985 = !DIEnumerator(name: "__INT_FRAC_DIGITS", value: 262151, isUnsigned: true)
!986 = !DIEnumerator(name: "__FRAC_DIGITS", value: 262152, isUnsigned: true)
!987 = !DIEnumerator(name: "__P_CS_PRECEDES", value: 262153, isUnsigned: true)
!988 = !DIEnumerator(name: "__P_SEP_BY_SPACE", value: 262154, isUnsigned: true)
!989 = !DIEnumerator(name: "__N_CS_PRECEDES", value: 262155, isUnsigned: true)
!990 = !DIEnumerator(name: "__N_SEP_BY_SPACE", value: 262156, isUnsigned: true)
!991 = !DIEnumerator(name: "__P_SIGN_POSN", value: 262157, isUnsigned: true)
!992 = !DIEnumerator(name: "__N_SIGN_POSN", value: 262158, isUnsigned: true)
!993 = !DIEnumerator(name: "_NL_MONETARY_CRNCYSTR", value: 262159, isUnsigned: true)
!994 = !DIEnumerator(name: "__INT_P_CS_PRECEDES", value: 262160, isUnsigned: true)
!995 = !DIEnumerator(name: "__INT_P_SEP_BY_SPACE", value: 262161, isUnsigned: true)
!996 = !DIEnumerator(name: "__INT_N_CS_PRECEDES", value: 262162, isUnsigned: true)
!997 = !DIEnumerator(name: "__INT_N_SEP_BY_SPACE", value: 262163, isUnsigned: true)
!998 = !DIEnumerator(name: "__INT_P_SIGN_POSN", value: 262164, isUnsigned: true)
!999 = !DIEnumerator(name: "__INT_N_SIGN_POSN", value: 262165, isUnsigned: true)
!1000 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_CURR_SYMBOL", value: 262166, isUnsigned: true)
!1001 = !DIEnumerator(name: "_NL_MONETARY_DUO_CURRENCY_SYMBOL", value: 262167, isUnsigned: true)
!1002 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_FRAC_DIGITS", value: 262168, isUnsigned: true)
!1003 = !DIEnumerator(name: "_NL_MONETARY_DUO_FRAC_DIGITS", value: 262169, isUnsigned: true)
!1004 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_CS_PRECEDES", value: 262170, isUnsigned: true)
!1005 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SEP_BY_SPACE", value: 262171, isUnsigned: true)
!1006 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_CS_PRECEDES", value: 262172, isUnsigned: true)
!1007 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SEP_BY_SPACE", value: 262173, isUnsigned: true)
!1008 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_CS_PRECEDES", value: 262174, isUnsigned: true)
!1009 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SEP_BY_SPACE", value: 262175, isUnsigned: true)
!1010 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_CS_PRECEDES", value: 262176, isUnsigned: true)
!1011 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SEP_BY_SPACE", value: 262177, isUnsigned: true)
!1012 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SIGN_POSN", value: 262178, isUnsigned: true)
!1013 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SIGN_POSN", value: 262179, isUnsigned: true)
!1014 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SIGN_POSN", value: 262180, isUnsigned: true)
!1015 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SIGN_POSN", value: 262181, isUnsigned: true)
!1016 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_FROM", value: 262182, isUnsigned: true)
!1017 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_TO", value: 262183, isUnsigned: true)
!1018 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_FROM", value: 262184, isUnsigned: true)
!1019 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_TO", value: 262185, isUnsigned: true)
!1020 = !DIEnumerator(name: "_NL_MONETARY_CONVERSION_RATE", value: 262186, isUnsigned: true)
!1021 = !DIEnumerator(name: "_NL_MONETARY_DECIMAL_POINT_WC", value: 262187, isUnsigned: true)
!1022 = !DIEnumerator(name: "_NL_MONETARY_THOUSANDS_SEP_WC", value: 262188, isUnsigned: true)
!1023 = !DIEnumerator(name: "_NL_MONETARY_CODESET", value: 262189, isUnsigned: true)
!1024 = !DIEnumerator(name: "_NL_NUM_LC_MONETARY", value: 262190, isUnsigned: true)
!1025 = !DIEnumerator(name: "__DECIMAL_POINT", value: 65536, isUnsigned: true)
!1026 = !DIEnumerator(name: "RADIXCHAR", value: 65536, isUnsigned: true)
!1027 = !DIEnumerator(name: "__THOUSANDS_SEP", value: 65537, isUnsigned: true)
!1028 = !DIEnumerator(name: "THOUSEP", value: 65537, isUnsigned: true)
!1029 = !DIEnumerator(name: "__GROUPING", value: 65538, isUnsigned: true)
!1030 = !DIEnumerator(name: "_NL_NUMERIC_DECIMAL_POINT_WC", value: 65539, isUnsigned: true)
!1031 = !DIEnumerator(name: "_NL_NUMERIC_THOUSANDS_SEP_WC", value: 65540, isUnsigned: true)
!1032 = !DIEnumerator(name: "_NL_NUMERIC_CODESET", value: 65541, isUnsigned: true)
!1033 = !DIEnumerator(name: "_NL_NUM_LC_NUMERIC", value: 65542, isUnsigned: true)
!1034 = !DIEnumerator(name: "__YESEXPR", value: 327680, isUnsigned: true)
!1035 = !DIEnumerator(name: "__NOEXPR", value: 327681, isUnsigned: true)
!1036 = !DIEnumerator(name: "__YESSTR", value: 327682, isUnsigned: true)
!1037 = !DIEnumerator(name: "__NOSTR", value: 327683, isUnsigned: true)
!1038 = !DIEnumerator(name: "_NL_MESSAGES_CODESET", value: 327684, isUnsigned: true)
!1039 = !DIEnumerator(name: "_NL_NUM_LC_MESSAGES", value: 327685, isUnsigned: true)
!1040 = !DIEnumerator(name: "_NL_PAPER_HEIGHT", value: 458752, isUnsigned: true)
!1041 = !DIEnumerator(name: "_NL_PAPER_WIDTH", value: 458753, isUnsigned: true)
!1042 = !DIEnumerator(name: "_NL_PAPER_CODESET", value: 458754, isUnsigned: true)
!1043 = !DIEnumerator(name: "_NL_NUM_LC_PAPER", value: 458755, isUnsigned: true)
!1044 = !DIEnumerator(name: "_NL_NAME_NAME_FMT", value: 524288, isUnsigned: true)
!1045 = !DIEnumerator(name: "_NL_NAME_NAME_GEN", value: 524289, isUnsigned: true)
!1046 = !DIEnumerator(name: "_NL_NAME_NAME_MR", value: 524290, isUnsigned: true)
!1047 = !DIEnumerator(name: "_NL_NAME_NAME_MRS", value: 524291, isUnsigned: true)
!1048 = !DIEnumerator(name: "_NL_NAME_NAME_MISS", value: 524292, isUnsigned: true)
!1049 = !DIEnumerator(name: "_NL_NAME_NAME_MS", value: 524293, isUnsigned: true)
!1050 = !DIEnumerator(name: "_NL_NAME_CODESET", value: 524294, isUnsigned: true)
!1051 = !DIEnumerator(name: "_NL_NUM_LC_NAME", value: 524295, isUnsigned: true)
!1052 = !DIEnumerator(name: "_NL_ADDRESS_POSTAL_FMT", value: 589824, isUnsigned: true)
!1053 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NAME", value: 589825, isUnsigned: true)
!1054 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_POST", value: 589826, isUnsigned: true)
!1055 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB2", value: 589827, isUnsigned: true)
!1056 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB3", value: 589828, isUnsigned: true)
!1057 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_CAR", value: 589829, isUnsigned: true)
!1058 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NUM", value: 589830, isUnsigned: true)
!1059 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_ISBN", value: 589831, isUnsigned: true)
!1060 = !DIEnumerator(name: "_NL_ADDRESS_LANG_NAME", value: 589832, isUnsigned: true)
!1061 = !DIEnumerator(name: "_NL_ADDRESS_LANG_AB", value: 589833, isUnsigned: true)
!1062 = !DIEnumerator(name: "_NL_ADDRESS_LANG_TERM", value: 589834, isUnsigned: true)
!1063 = !DIEnumerator(name: "_NL_ADDRESS_LANG_LIB", value: 589835, isUnsigned: true)
!1064 = !DIEnumerator(name: "_NL_ADDRESS_CODESET", value: 589836, isUnsigned: true)
!1065 = !DIEnumerator(name: "_NL_NUM_LC_ADDRESS", value: 589837, isUnsigned: true)
!1066 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_INT_FMT", value: 655360, isUnsigned: true)
!1067 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_DOM_FMT", value: 655361, isUnsigned: true)
!1068 = !DIEnumerator(name: "_NL_TELEPHONE_INT_SELECT", value: 655362, isUnsigned: true)
!1069 = !DIEnumerator(name: "_NL_TELEPHONE_INT_PREFIX", value: 655363, isUnsigned: true)
!1070 = !DIEnumerator(name: "_NL_TELEPHONE_CODESET", value: 655364, isUnsigned: true)
!1071 = !DIEnumerator(name: "_NL_NUM_LC_TELEPHONE", value: 655365, isUnsigned: true)
!1072 = !DIEnumerator(name: "_NL_MEASUREMENT_MEASUREMENT", value: 720896, isUnsigned: true)
!1073 = !DIEnumerator(name: "_NL_MEASUREMENT_CODESET", value: 720897, isUnsigned: true)
!1074 = !DIEnumerator(name: "_NL_NUM_LC_MEASUREMENT", value: 720898, isUnsigned: true)
!1075 = !DIEnumerator(name: "_NL_IDENTIFICATION_TITLE", value: 786432, isUnsigned: true)
!1076 = !DIEnumerator(name: "_NL_IDENTIFICATION_SOURCE", value: 786433, isUnsigned: true)
!1077 = !DIEnumerator(name: "_NL_IDENTIFICATION_ADDRESS", value: 786434, isUnsigned: true)
!1078 = !DIEnumerator(name: "_NL_IDENTIFICATION_CONTACT", value: 786435, isUnsigned: true)
!1079 = !DIEnumerator(name: "_NL_IDENTIFICATION_EMAIL", value: 786436, isUnsigned: true)
!1080 = !DIEnumerator(name: "_NL_IDENTIFICATION_TEL", value: 786437, isUnsigned: true)
!1081 = !DIEnumerator(name: "_NL_IDENTIFICATION_FAX", value: 786438, isUnsigned: true)
!1082 = !DIEnumerator(name: "_NL_IDENTIFICATION_LANGUAGE", value: 786439, isUnsigned: true)
!1083 = !DIEnumerator(name: "_NL_IDENTIFICATION_TERRITORY", value: 786440, isUnsigned: true)
!1084 = !DIEnumerator(name: "_NL_IDENTIFICATION_AUDIENCE", value: 786441, isUnsigned: true)
!1085 = !DIEnumerator(name: "_NL_IDENTIFICATION_APPLICATION", value: 786442, isUnsigned: true)
!1086 = !DIEnumerator(name: "_NL_IDENTIFICATION_ABBREVIATION", value: 786443, isUnsigned: true)
!1087 = !DIEnumerator(name: "_NL_IDENTIFICATION_REVISION", value: 786444, isUnsigned: true)
!1088 = !DIEnumerator(name: "_NL_IDENTIFICATION_DATE", value: 786445, isUnsigned: true)
!1089 = !DIEnumerator(name: "_NL_IDENTIFICATION_CATEGORY", value: 786446, isUnsigned: true)
!1090 = !DIEnumerator(name: "_NL_IDENTIFICATION_CODESET", value: 786447, isUnsigned: true)
!1091 = !DIEnumerator(name: "_NL_NUM_LC_IDENTIFICATION", value: 786448, isUnsigned: true)
!1092 = !DIEnumerator(name: "_NL_NUM", value: 786449, isUnsigned: true)
!1093 = !{!1094, !97}
!1094 = !DISubprogram(name: "nl_langinfo", scope: !708, file: !708, line: 661, type: !1095, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !45)
!1095 = !DISubroutineType(types: !1096)
!1096 = !{!40, !44}
!1097 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1098, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !45, retainedTypes: !1099, splitDebugInlining: false, nameTableKind: None)
!1098 = !DIFile(filename: "lib/setlocale_null.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!1099 = !{!97, !111}
!1100 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1101, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !45, retainedTypes: !1102, splitDebugInlining: false, nameTableKind: None)
!1101 = !DIFile(filename: "lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!1102 = !{!1103, !1138, !1139, !1143}
!1103 = !DISubprogram(name: "fileno", scope: !47, file: !47, line: 786, type: !1104, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !45)
!1104 = !DISubroutineType(types: !1105)
!1105 = !{!44, !1106}
!1106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1107, size: 64)
!1107 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !52, line: 49, size: 1728, elements: !1108)
!1108 = !{!1109, !1110, !1111, !1112, !1113, !1114, !1115, !1116, !1117, !1118, !1119, !1120, !1121, !1122, !1123, !1124, !1125, !1126, !1127, !1128, !1129, !1130, !1131, !1132, !1133, !1134, !1135, !1136, !1137}
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1107, file: !52, line: 51, baseType: !44, size: 32)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1107, file: !52, line: 54, baseType: !40, size: 64, offset: 64)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1107, file: !52, line: 55, baseType: !40, size: 64, offset: 128)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1107, file: !52, line: 56, baseType: !40, size: 64, offset: 192)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1107, file: !52, line: 57, baseType: !40, size: 64, offset: 256)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1107, file: !52, line: 58, baseType: !40, size: 64, offset: 320)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1107, file: !52, line: 59, baseType: !40, size: 64, offset: 384)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1107, file: !52, line: 60, baseType: !40, size: 64, offset: 448)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1107, file: !52, line: 61, baseType: !40, size: 64, offset: 512)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1107, file: !52, line: 64, baseType: !40, size: 64, offset: 576)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1107, file: !52, line: 65, baseType: !40, size: 64, offset: 640)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1107, file: !52, line: 66, baseType: !40, size: 64, offset: 704)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1107, file: !52, line: 68, baseType: !67, size: 64, offset: 768)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1107, file: !52, line: 70, baseType: !1106, size: 64, offset: 832)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1107, file: !52, line: 72, baseType: !44, size: 32, offset: 896)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1107, file: !52, line: 73, baseType: !44, size: 32, offset: 928)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1107, file: !52, line: 74, baseType: !73, size: 64, offset: 960)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1107, file: !52, line: 77, baseType: !77, size: 16, offset: 1024)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1107, file: !52, line: 78, baseType: !79, size: 8, offset: 1040)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1107, file: !52, line: 79, baseType: !81, size: 8, offset: 1048)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1107, file: !52, line: 81, baseType: !85, size: 64, offset: 1088)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1107, file: !52, line: 89, baseType: !88, size: 64, offset: 1152)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1107, file: !52, line: 91, baseType: !90, size: 64, offset: 1216)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1107, file: !52, line: 92, baseType: !93, size: 64, offset: 1280)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1107, file: !52, line: 93, baseType: !1106, size: 64, offset: 1344)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1107, file: !52, line: 94, baseType: !97, size: 64, offset: 1408)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1107, file: !52, line: 95, baseType: !99, size: 64, offset: 1472)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1107, file: !52, line: 96, baseType: !44, size: 32, offset: 1536)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1107, file: !52, line: 98, baseType: !104, size: 160, offset: 1568)
!1138 = !DISubprogram(name: "fclose", scope: !47, file: !47, line: 213, type: !1104, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !45)
!1139 = !DISubprogram(name: "lseek", scope: !1140, file: !1140, line: 334, type: !1141, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !45)
!1140 = !DIFile(filename: "/usr/include/unistd.h", directory: "")
!1141 = !DISubroutineType(types: !1142)
!1142 = !{!75, !44, !75, !44}
!1143 = !DISubprogram(name: "rpl_fflush", scope: !662, file: !662, line: 718, type: !1104, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !45)
!1144 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1145, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !45, retainedTypes: !1146, splitDebugInlining: false, nameTableKind: None)
!1145 = !DIFile(filename: "lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!1146 = !{!97, !1147, !1182}
!1147 = !DISubprogram(name: "fflush", scope: !47, file: !47, line: 218, type: !1148, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !45)
!1148 = !DISubroutineType(types: !1149)
!1149 = !{!44, !1150}
!1150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1151, size: 64)
!1151 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !52, line: 49, size: 1728, elements: !1152)
!1152 = !{!1153, !1154, !1155, !1156, !1157, !1158, !1159, !1160, !1161, !1162, !1163, !1164, !1165, !1166, !1167, !1168, !1169, !1170, !1171, !1172, !1173, !1174, !1175, !1176, !1177, !1178, !1179, !1180, !1181}
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1151, file: !52, line: 51, baseType: !44, size: 32)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1151, file: !52, line: 54, baseType: !40, size: 64, offset: 64)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1151, file: !52, line: 55, baseType: !40, size: 64, offset: 128)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1151, file: !52, line: 56, baseType: !40, size: 64, offset: 192)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1151, file: !52, line: 57, baseType: !40, size: 64, offset: 256)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1151, file: !52, line: 58, baseType: !40, size: 64, offset: 320)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1151, file: !52, line: 59, baseType: !40, size: 64, offset: 384)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1151, file: !52, line: 60, baseType: !40, size: 64, offset: 448)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1151, file: !52, line: 61, baseType: !40, size: 64, offset: 512)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1151, file: !52, line: 64, baseType: !40, size: 64, offset: 576)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1151, file: !52, line: 65, baseType: !40, size: 64, offset: 640)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1151, file: !52, line: 66, baseType: !40, size: 64, offset: 704)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1151, file: !52, line: 68, baseType: !67, size: 64, offset: 768)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1151, file: !52, line: 70, baseType: !1150, size: 64, offset: 832)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1151, file: !52, line: 72, baseType: !44, size: 32, offset: 896)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1151, file: !52, line: 73, baseType: !44, size: 32, offset: 928)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1151, file: !52, line: 74, baseType: !73, size: 64, offset: 960)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1151, file: !52, line: 77, baseType: !77, size: 16, offset: 1024)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1151, file: !52, line: 78, baseType: !79, size: 8, offset: 1040)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1151, file: !52, line: 79, baseType: !81, size: 8, offset: 1048)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1151, file: !52, line: 81, baseType: !85, size: 64, offset: 1088)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1151, file: !52, line: 89, baseType: !88, size: 64, offset: 1152)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1151, file: !52, line: 91, baseType: !90, size: 64, offset: 1216)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1151, file: !52, line: 92, baseType: !93, size: 64, offset: 1280)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1151, file: !52, line: 93, baseType: !1150, size: 64, offset: 1344)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1151, file: !52, line: 94, baseType: !97, size: 64, offset: 1408)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1151, file: !52, line: 95, baseType: !99, size: 64, offset: 1472)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1151, file: !52, line: 96, baseType: !44, size: 32, offset: 1536)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1151, file: !52, line: 98, baseType: !104, size: 160, offset: 1568)
!1182 = !DISubprogram(name: "rpl_fseeko", scope: !662, file: !662, line: 1034, type: !1183, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !45)
!1183 = !DISubroutineType(types: !1184)
!1184 = !{!44, !1150, !75, !44}
!1185 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1186, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !45, retainedTypes: !1187, splitDebugInlining: false, nameTableKind: None)
!1186 = !DIFile(filename: "lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!1187 = !{!97, !1188, !1139, !1223}
!1188 = !DISubprogram(name: "fileno", scope: !47, file: !47, line: 786, type: !1189, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !45)
!1189 = !DISubroutineType(types: !1190)
!1190 = !{!44, !1191}
!1191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1192, size: 64)
!1192 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !52, line: 49, size: 1728, elements: !1193)
!1193 = !{!1194, !1195, !1196, !1197, !1198, !1199, !1200, !1201, !1202, !1203, !1204, !1205, !1206, !1207, !1208, !1209, !1210, !1211, !1212, !1213, !1214, !1215, !1216, !1217, !1218, !1219, !1220, !1221, !1222}
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1192, file: !52, line: 51, baseType: !44, size: 32)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1192, file: !52, line: 54, baseType: !40, size: 64, offset: 64)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1192, file: !52, line: 55, baseType: !40, size: 64, offset: 128)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1192, file: !52, line: 56, baseType: !40, size: 64, offset: 192)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1192, file: !52, line: 57, baseType: !40, size: 64, offset: 256)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1192, file: !52, line: 58, baseType: !40, size: 64, offset: 320)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1192, file: !52, line: 59, baseType: !40, size: 64, offset: 384)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1192, file: !52, line: 60, baseType: !40, size: 64, offset: 448)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1192, file: !52, line: 61, baseType: !40, size: 64, offset: 512)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1192, file: !52, line: 64, baseType: !40, size: 64, offset: 576)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1192, file: !52, line: 65, baseType: !40, size: 64, offset: 640)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1192, file: !52, line: 66, baseType: !40, size: 64, offset: 704)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1192, file: !52, line: 68, baseType: !67, size: 64, offset: 768)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1192, file: !52, line: 70, baseType: !1191, size: 64, offset: 832)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1192, file: !52, line: 72, baseType: !44, size: 32, offset: 896)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1192, file: !52, line: 73, baseType: !44, size: 32, offset: 928)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1192, file: !52, line: 74, baseType: !73, size: 64, offset: 960)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1192, file: !52, line: 77, baseType: !77, size: 16, offset: 1024)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1192, file: !52, line: 78, baseType: !79, size: 8, offset: 1040)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1192, file: !52, line: 79, baseType: !81, size: 8, offset: 1048)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1192, file: !52, line: 81, baseType: !85, size: 64, offset: 1088)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1192, file: !52, line: 89, baseType: !88, size: 64, offset: 1152)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1192, file: !52, line: 91, baseType: !90, size: 64, offset: 1216)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1192, file: !52, line: 92, baseType: !93, size: 64, offset: 1280)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1192, file: !52, line: 93, baseType: !1191, size: 64, offset: 1344)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1192, file: !52, line: 94, baseType: !97, size: 64, offset: 1408)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1192, file: !52, line: 95, baseType: !99, size: 64, offset: 1472)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1192, file: !52, line: 96, baseType: !44, size: 32, offset: 1536)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1192, file: !52, line: 98, baseType: !104, size: 160, offset: 1568)
!1223 = !DISubprogram(name: "fseeko", scope: !47, file: !47, line: 707, type: !1224, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !45)
!1224 = !DISubroutineType(types: !1225)
!1225 = !{!44, !1191, !75, !44}
!1226 = !{!"clang version 10.0.0 "}
!1227 = !{i32 7, !"Dwarf Version", i32 4}
!1228 = !{i32 2, !"Debug Info Version", i32 3}
!1229 = !{i32 1, !"wchar_size", i32 4}
!1230 = !{i32 7, !"PIC Level", i32 2}
!1231 = !{i32 7, !"PIE Level", i32 2}
!1232 = distinct !DISubprogram(name: "usage", scope: !3, file: !3, line: 87, type: !1233, scopeLine: 88, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1235)
!1233 = !DISubroutineType(types: !1234)
!1234 = !{null, !44}
!1235 = !{!1236}
!1236 = !DILocalVariable(name: "status", arg: 1, scope: !1232, file: !3, line: 87, type: !44)
!1237 = !DILocalVariable(name: "infomap", scope: !1238, file: !1239, line: 636, type: !1251)
!1238 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !1239, file: !1239, line: 634, type: !109, scopeLine: 635, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1240)
!1239 = !DIFile(filename: "src/system.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!1240 = !{!1241, !1237, !1242, !1243, !1250}
!1241 = !DILocalVariable(name: "program", arg: 1, scope: !1238, file: !1239, line: 634, type: !42)
!1242 = !DILocalVariable(name: "node", scope: !1238, file: !1239, line: 646, type: !42)
!1243 = !DILocalVariable(name: "map_prog", scope: !1238, file: !1239, line: 647, type: !1244)
!1244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1245, size: 64)
!1245 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1246)
!1246 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !1238, file: !1239, line: 636, size: 128, elements: !1247)
!1247 = !{!1248, !1249}
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !1246, file: !1239, line: 636, baseType: !42, size: 64)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1246, file: !1239, line: 636, baseType: !42, size: 64, offset: 64)
!1250 = !DILocalVariable(name: "lc_messages", scope: !1238, file: !1239, line: 659, type: !42)
!1251 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1245, size: 896, elements: !1252)
!1252 = !{!1253}
!1253 = !DISubrange(count: 7)
!1254 = !DILocation(line: 636, column: 67, scope: !1238, inlinedAt: !1255)
!1255 = distinct !DILocation(line: 139, column: 7, scope: !1256)
!1256 = distinct !DILexicalBlock(scope: !1257, file: !3, line: 92, column: 5)
!1257 = distinct !DILexicalBlock(scope: !1232, file: !3, line: 89, column: 7)
!1258 = !DILocation(line: 0, scope: !1232)
!1259 = !DILocation(line: 89, column: 14, scope: !1257)
!1260 = !DILocation(line: 89, column: 7, scope: !1232)
!1261 = !DILocation(line: 90, column: 5, scope: !1262)
!1262 = distinct !DILexicalBlock(scope: !1257, file: !3, line: 90, column: 5)
!1263 = !{!1264, !1264, i64 0}
!1264 = !{!"any pointer", !1265, i64 0}
!1265 = !{!"omnipotent char", !1266, i64 0}
!1266 = !{!"Simple C/C++ TBAA"}
!1267 = !DILocation(line: 93, column: 7, scope: !1256)
!1268 = !DILocation(line: 98, column: 7, scope: !1256)
!1269 = !DILocation(line: 102, column: 7, scope: !1256)
!1270 = !DILocation(line: 103, column: 7, scope: !1256)
!1271 = !DILocation(line: 104, column: 7, scope: !1256)
!1272 = !DILocation(line: 110, column: 7, scope: !1256)
!1273 = !DILocation(line: 122, column: 7, scope: !1256)
!1274 = !DILocation(line: 128, column: 7, scope: !1256)
!1275 = !DILocation(line: 138, column: 7, scope: !1256)
!1276 = !DILocation(line: 0, scope: !1238, inlinedAt: !1255)
!1277 = !DILocation(line: 636, column: 3, scope: !1238, inlinedAt: !1255)
!1278 = !DILocation(line: 647, column: 36, scope: !1238, inlinedAt: !1255)
!1279 = !DILocation(line: 649, column: 3, scope: !1238, inlinedAt: !1255)
!1280 = !DILocation(line: 649, column: 33, scope: !1238, inlinedAt: !1255)
!1281 = !DILocation(line: 650, column: 13, scope: !1238, inlinedAt: !1255)
!1282 = !DILocation(line: 649, column: 20, scope: !1238, inlinedAt: !1255)
!1283 = !{!1284, !1264, i64 0}
!1284 = !{!"infomap", !1264, i64 0, !1264, i64 8}
!1285 = !DILocation(line: 649, column: 10, scope: !1238, inlinedAt: !1255)
!1286 = !DILocation(line: 649, column: 28, scope: !1238, inlinedAt: !1255)
!1287 = distinct !{!1287, !1279, !1281}
!1288 = !DILocation(line: 652, column: 17, scope: !1289, inlinedAt: !1255)
!1289 = distinct !DILexicalBlock(scope: !1238, file: !1239, line: 652, column: 7)
!1290 = !{!1284, !1264, i64 8}
!1291 = !DILocation(line: 652, column: 7, scope: !1289, inlinedAt: !1255)
!1292 = !DILocation(line: 652, column: 7, scope: !1238, inlinedAt: !1255)
!1293 = !DILocation(line: 655, column: 3, scope: !1238, inlinedAt: !1255)
!1294 = !DILocation(line: 659, column: 29, scope: !1238, inlinedAt: !1255)
!1295 = !DILocation(line: 660, column: 7, scope: !1296, inlinedAt: !1255)
!1296 = distinct !DILexicalBlock(scope: !1238, file: !1239, line: 660, column: 7)
!1297 = !DILocation(line: 660, column: 19, scope: !1296, inlinedAt: !1255)
!1298 = !DILocation(line: 660, column: 22, scope: !1296, inlinedAt: !1255)
!1299 = !DILocation(line: 660, column: 7, scope: !1238, inlinedAt: !1255)
!1300 = !DILocation(line: 666, column: 7, scope: !1301, inlinedAt: !1255)
!1301 = distinct !DILexicalBlock(scope: !1296, file: !1239, line: 661, column: 5)
!1302 = !DILocation(line: 668, column: 5, scope: !1301, inlinedAt: !1255)
!1303 = !DILocation(line: 669, column: 3, scope: !1238, inlinedAt: !1255)
!1304 = !DILocation(line: 671, column: 3, scope: !1238, inlinedAt: !1255)
!1305 = !DILocation(line: 673, column: 1, scope: !1238, inlinedAt: !1255)
!1306 = !DILocation(line: 141, column: 3, scope: !1232)
!1307 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 651, type: !1308, scopeLine: 652, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1310)
!1308 = !DISubroutineType(types: !1309)
!1309 = !{!44, !44, !161}
!1310 = !{!1311, !1312, !1313, !1314}
!1311 = !DILocalVariable(name: "argc", arg: 1, scope: !1307, file: !3, line: 651, type: !44)
!1312 = !DILocalVariable(name: "argv", arg: 2, scope: !1307, file: !3, line: 651, type: !161)
!1313 = !DILocalVariable(name: "format", scope: !1307, file: !3, line: 653, type: !40)
!1314 = !DILocalVariable(name: "args_used", scope: !1307, file: !3, line: 654, type: !44)
!1315 = !DILocalVariable(name: "ok", scope: !1316, file: !3, line: 488, type: !359)
!1316 = distinct !DISubprogram(name: "print_formatted", scope: !3, file: !3, line: 478, type: !1317, scopeLine: 479, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1319)
!1317 = !DISubroutineType(types: !1318)
!1318 = !{!44, !42, !44, !161}
!1319 = !{!1320, !1321, !1322, !1323, !1324, !1325, !1326, !1327, !1328, !1329, !1330, !1315, !1331, !1343, !1350, !1352}
!1320 = !DILocalVariable(name: "format", arg: 1, scope: !1316, file: !3, line: 478, type: !42)
!1321 = !DILocalVariable(name: "argc", arg: 2, scope: !1316, file: !3, line: 478, type: !44)
!1322 = !DILocalVariable(name: "argv", arg: 3, scope: !1316, file: !3, line: 478, type: !161)
!1323 = !DILocalVariable(name: "save_argc", scope: !1316, file: !3, line: 480, type: !44)
!1324 = !DILocalVariable(name: "f", scope: !1316, file: !3, line: 481, type: !42)
!1325 = !DILocalVariable(name: "direc_start", scope: !1316, file: !3, line: 482, type: !42)
!1326 = !DILocalVariable(name: "direc_length", scope: !1316, file: !3, line: 483, type: !99)
!1327 = !DILocalVariable(name: "have_field_width", scope: !1316, file: !3, line: 484, type: !170)
!1328 = !DILocalVariable(name: "field_width", scope: !1316, file: !3, line: 485, type: !44)
!1329 = !DILocalVariable(name: "have_precision", scope: !1316, file: !3, line: 486, type: !170)
!1330 = !DILocalVariable(name: "precision", scope: !1316, file: !3, line: 487, type: !44)
!1331 = !DILocalVariable(name: "width", scope: !1332, file: !3, line: 562, type: !1340)
!1332 = distinct !DILexicalBlock(scope: !1333, file: !3, line: 561, column: 17)
!1333 = distinct !DILexicalBlock(scope: !1334, file: !3, line: 560, column: 19)
!1334 = distinct !DILexicalBlock(scope: !1335, file: !3, line: 557, column: 13)
!1335 = distinct !DILexicalBlock(scope: !1336, file: !3, line: 556, column: 15)
!1336 = distinct !DILexicalBlock(scope: !1337, file: !3, line: 493, column: 9)
!1337 = distinct !DILexicalBlock(scope: !1338, file: !3, line: 491, column: 5)
!1338 = distinct !DILexicalBlock(scope: !1339, file: !3, line: 490, column: 3)
!1339 = distinct !DILexicalBlock(scope: !1316, file: !3, line: 490, column: 3)
!1340 = !DIDerivedType(tag: DW_TAG_typedef, name: "intmax_t", file: !1341, line: 101, baseType: !1342)
!1341 = !DIFile(filename: "/usr/include/stdint.h", directory: "")
!1342 = !DIDerivedType(tag: DW_TAG_typedef, name: "__intmax_t", file: !74, line: 72, baseType: !75)
!1343 = !DILocalVariable(name: "prec", scope: !1344, file: !3, line: 592, type: !1340)
!1344 = distinct !DILexicalBlock(scope: !1345, file: !3, line: 591, column: 21)
!1345 = distinct !DILexicalBlock(scope: !1346, file: !3, line: 590, column: 23)
!1346 = distinct !DILexicalBlock(scope: !1347, file: !3, line: 587, column: 17)
!1347 = distinct !DILexicalBlock(scope: !1348, file: !3, line: 586, column: 19)
!1348 = distinct !DILexicalBlock(scope: !1349, file: !3, line: 582, column: 13)
!1349 = distinct !DILexicalBlock(scope: !1336, file: !3, line: 581, column: 15)
!1350 = !DILocalVariable(name: "conversion", scope: !1351, file: !3, line: 625, type: !144)
!1351 = distinct !DILexicalBlock(scope: !1336, file: !3, line: 624, column: 11)
!1352 = !DILabel(scope: !1336, name: "no_more_flag_characters", file: !3, line: 554)
!1353 = !DILocation(line: 488, column: 8, scope: !1316, inlinedAt: !1354)
!1354 = distinct !DILocation(line: 703, column: 19, scope: !1355)
!1355 = distinct !DILexicalBlock(scope: !1307, file: !3, line: 702, column: 5)
!1356 = !DILocation(line: 0, scope: !1307)
!1357 = !DILocation(line: 657, column: 21, scope: !1307)
!1358 = !DILocation(line: 657, column: 3, scope: !1307)
!1359 = !DILocation(line: 658, column: 3, scope: !1307)
!1360 = !DILocation(line: 659, column: 3, scope: !1307)
!1361 = !DILocation(line: 660, column: 3, scope: !1307)
!1362 = !DILocation(line: 662, column: 3, scope: !1307)
!1363 = !DILocation(line: 664, column: 15, scope: !1307)
!1364 = !DILocation(line: 666, column: 22, scope: !1307)
!1365 = !DILocation(line: 666, column: 49, scope: !1307)
!1366 = !DILocation(line: 666, column: 19, scope: !1307)
!1367 = !{!1368, !1368, i64 0}
!1368 = !{!"_Bool", !1265, i64 0}
!1369 = !DILocation(line: 670, column: 12, scope: !1370)
!1370 = distinct !DILexicalBlock(scope: !1307, file: !3, line: 670, column: 7)
!1371 = !DILocation(line: 670, column: 7, scope: !1307)
!1372 = !DILocation(line: 672, column: 11, scope: !1373)
!1373 = distinct !DILexicalBlock(scope: !1374, file: !3, line: 672, column: 11)
!1374 = distinct !DILexicalBlock(scope: !1370, file: !3, line: 671, column: 5)
!1375 = !DILocation(line: 672, column: 11, scope: !1374)
!1376 = !DILocation(line: 673, column: 9, scope: !1373)
!1377 = !DILocation(line: 675, column: 11, scope: !1378)
!1378 = distinct !DILexicalBlock(scope: !1374, file: !3, line: 675, column: 11)
!1379 = !DILocation(line: 675, column: 11, scope: !1374)
!1380 = !DILocation(line: 677, column: 24, scope: !1381)
!1381 = distinct !DILexicalBlock(scope: !1378, file: !3, line: 676, column: 9)
!1382 = !DILocation(line: 677, column: 60, scope: !1381)
!1383 = !DILocation(line: 677, column: 11, scope: !1381)
!1384 = !DILocation(line: 679, column: 11, scope: !1381)
!1385 = !DILocation(line: 685, column: 9, scope: !1386)
!1386 = distinct !DILexicalBlock(scope: !1307, file: !3, line: 685, column: 7)
!1387 = !DILocation(line: 685, column: 16, scope: !1386)
!1388 = !DILocation(line: 0, scope: !1386)
!1389 = !DILocation(line: 685, column: 19, scope: !1386)
!1390 = !DILocation(line: 685, column: 7, scope: !1307)
!1391 = !DILocation(line: 691, column: 12, scope: !1392)
!1392 = distinct !DILexicalBlock(scope: !1307, file: !3, line: 691, column: 7)
!1393 = !DILocation(line: 691, column: 7, scope: !1307)
!1394 = !DILocation(line: 687, column: 7, scope: !1395)
!1395 = distinct !DILexicalBlock(scope: !1386, file: !3, line: 686, column: 5)
!1396 = !DILocation(line: 697, column: 12, scope: !1307)
!1397 = !DILocation(line: 693, column: 20, scope: !1398)
!1398 = distinct !DILexicalBlock(scope: !1392, file: !3, line: 692, column: 5)
!1399 = !DILocation(line: 693, column: 7, scope: !1398)
!1400 = !DILocation(line: 694, column: 7, scope: !1398)
!1401 = !DILocation(line: 698, column: 8, scope: !1307)
!1402 = !DILocation(line: 699, column: 8, scope: !1307)
!1403 = !DILocation(line: 0, scope: !1316, inlinedAt: !1354)
!1404 = !DILocation(line: 0, scope: !1336, inlinedAt: !1354)
!1405 = !DILocation(line: 0, scope: !1406, inlinedAt: !1416)
!1406 = distinct !DISubprogram(name: "vstrtold", scope: !3, file: !3, line: 191, type: !1407, scopeLine: 191, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1409)
!1407 = !DISubroutineType(types: !1408)
!1408 = !{!160, !42}
!1409 = !{!1410, !1411, !1412, !1413}
!1410 = !DILocalVariable(name: "s", arg: 1, scope: !1406, file: !3, line: 191, type: !42)
!1411 = !DILocalVariable(name: "end", scope: !1406, file: !3, line: 191, type: !40)
!1412 = !DILocalVariable(name: "val", scope: !1406, file: !3, line: 191, type: !160)
!1413 = !DILocalVariable(name: "ch", scope: !1414, file: !3, line: 191, type: !144)
!1414 = distinct !DILexicalBlock(scope: !1415, file: !3, line: 191, column: 1)
!1415 = distinct !DILexicalBlock(scope: !1406, file: !3, line: 191, column: 1)
!1416 = distinct !DILocation(line: 427, column: 27, scope: !1417, inlinedAt: !1443)
!1417 = distinct !DILexicalBlock(scope: !1418, file: !3, line: 426, column: 7)
!1418 = distinct !DILexicalBlock(scope: !1419, file: !3, line: 373, column: 5)
!1419 = distinct !DISubprogram(name: "print_direc", scope: !3, file: !3, line: 331, type: !1420, scopeLine: 335, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1422)
!1420 = !DISubroutineType(types: !1421)
!1421 = !{null, !42, !99, !41, !170, !44, !170, !44, !42}
!1422 = !{!1423, !1424, !1425, !1426, !1427, !1428, !1429, !1430, !1431, !1432, !1434, !1435, !1436, !1438, !1442}
!1423 = !DILocalVariable(name: "start", arg: 1, scope: !1419, file: !3, line: 331, type: !42)
!1424 = !DILocalVariable(name: "length", arg: 2, scope: !1419, file: !3, line: 331, type: !99)
!1425 = !DILocalVariable(name: "conversion", arg: 3, scope: !1419, file: !3, line: 331, type: !41)
!1426 = !DILocalVariable(name: "have_field_width", arg: 4, scope: !1419, file: !3, line: 332, type: !170)
!1427 = !DILocalVariable(name: "field_width", arg: 5, scope: !1419, file: !3, line: 332, type: !44)
!1428 = !DILocalVariable(name: "have_precision", arg: 6, scope: !1419, file: !3, line: 333, type: !170)
!1429 = !DILocalVariable(name: "precision", arg: 7, scope: !1419, file: !3, line: 333, type: !44)
!1430 = !DILocalVariable(name: "argument", arg: 8, scope: !1419, file: !3, line: 334, type: !42)
!1431 = !DILocalVariable(name: "p", scope: !1419, file: !3, line: 336, type: !40)
!1432 = !DILocalVariable(name: "q", scope: !1433, file: !3, line: 342, type: !40)
!1433 = distinct !DILexicalBlock(scope: !1419, file: !3, line: 341, column: 3)
!1434 = !DILocalVariable(name: "length_modifier", scope: !1433, file: !3, line: 343, type: !42)
!1435 = !DILocalVariable(name: "length_modifier_len", scope: !1433, file: !3, line: 344, type: !99)
!1436 = !DILocalVariable(name: "arg", scope: !1437, file: !3, line: 377, type: !1340)
!1437 = distinct !DILexicalBlock(scope: !1418, file: !3, line: 376, column: 7)
!1438 = !DILocalVariable(name: "arg", scope: !1439, file: !3, line: 400, type: !1440)
!1439 = distinct !DILexicalBlock(scope: !1418, file: !3, line: 399, column: 7)
!1440 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !1341, line: 102, baseType: !1441)
!1441 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !74, line: 73, baseType: !101)
!1442 = !DILocalVariable(name: "arg", scope: !1417, file: !3, line: 427, type: !160)
!1443 = distinct !DILocation(line: 632, column: 11, scope: !1336, inlinedAt: !1354)
!1444 = !DILocation(line: 0, scope: !1445, inlinedAt: !1455)
!1445 = distinct !DISubprogram(name: "vstrtoumax", scope: !3, file: !3, line: 190, type: !1446, scopeLine: 190, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1448)
!1446 = !DISubroutineType(types: !1447)
!1447 = !{!1440, !42}
!1448 = !{!1449, !1450, !1451, !1452}
!1449 = !DILocalVariable(name: "s", arg: 1, scope: !1445, file: !3, line: 190, type: !42)
!1450 = !DILocalVariable(name: "end", scope: !1445, file: !3, line: 190, type: !40)
!1451 = !DILocalVariable(name: "val", scope: !1445, file: !3, line: 190, type: !1440)
!1452 = !DILocalVariable(name: "ch", scope: !1453, file: !3, line: 190, type: !144)
!1453 = distinct !DILexicalBlock(scope: !1454, file: !3, line: 190, column: 1)
!1454 = distinct !DILexicalBlock(scope: !1445, file: !3, line: 190, column: 1)
!1455 = distinct !DILocation(line: 400, column: 25, scope: !1439, inlinedAt: !1443)
!1456 = !DILocation(line: 701, column: 3, scope: !1307)
!1457 = !DILocation(line: 488, column: 3, scope: !1316, inlinedAt: !1354)
!1458 = !DILocation(line: 490, column: 20, scope: !1338, inlinedAt: !1354)
!1459 = !{!1265, !1265, i64 0}
!1460 = !DILocation(line: 490, column: 3, scope: !1339, inlinedAt: !1354)
!1461 = !DILocation(line: 492, column: 15, scope: !1337, inlinedAt: !1354)
!1462 = !DILocation(line: 492, column: 7, scope: !1337, inlinedAt: !1354)
!1463 = !DILocation(line: 495, column: 26, scope: !1336, inlinedAt: !1354)
!1464 = !DILocation(line: 498, column: 15, scope: !1465, inlinedAt: !1354)
!1465 = distinct !DILexicalBlock(scope: !1336, file: !3, line: 498, column: 15)
!1466 = !DILocation(line: 498, column: 15, scope: !1336, inlinedAt: !1354)
!1467 = !DILocalVariable(name: "__c", arg: 1, scope: !1468, file: !1469, line: 108, type: !44)
!1468 = distinct !DISubprogram(name: "putchar_unlocked", scope: !1469, file: !1469, line: 108, type: !1470, scopeLine: 109, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1472)
!1469 = !DIFile(filename: "/usr/include/bits/stdio.h", directory: "")
!1470 = !DISubroutineType(types: !1471)
!1471 = !{!44, !44}
!1472 = !{!1467}
!1473 = !DILocation(line: 0, scope: !1468, inlinedAt: !1474)
!1474 = distinct !DILocation(line: 500, column: 15, scope: !1475, inlinedAt: !1354)
!1475 = distinct !DILexicalBlock(scope: !1465, file: !3, line: 499, column: 13)
!1476 = !DILocation(line: 110, column: 10, scope: !1468, inlinedAt: !1474)
!1477 = !{!1478, !1264, i64 40}
!1478 = !{!"_IO_FILE", !1479, i64 0, !1264, i64 8, !1264, i64 16, !1264, i64 24, !1264, i64 32, !1264, i64 40, !1264, i64 48, !1264, i64 56, !1264, i64 64, !1264, i64 72, !1264, i64 80, !1264, i64 88, !1264, i64 96, !1264, i64 104, !1479, i64 112, !1479, i64 116, !1480, i64 120, !1481, i64 128, !1265, i64 130, !1265, i64 131, !1264, i64 136, !1480, i64 144, !1264, i64 152, !1264, i64 160, !1264, i64 168, !1264, i64 176, !1480, i64 184, !1479, i64 192, !1265, i64 196}
!1479 = !{!"int", !1265, i64 0}
!1480 = !{!"long", !1265, i64 0}
!1481 = !{!"short", !1265, i64 0}
!1482 = !{!1478, !1264, i64 48}
!1483 = !{!"branch_weights", i32 2000, i32 1}
!1484 = !{!"misexpect", i64 1, i64 2000, i64 1}
!1485 = !DILocation(line: 507, column: 24, scope: !1486, inlinedAt: !1354)
!1486 = distinct !DILexicalBlock(scope: !1487, file: !3, line: 507, column: 19)
!1487 = distinct !DILexicalBlock(scope: !1488, file: !3, line: 504, column: 13)
!1488 = distinct !DILexicalBlock(scope: !1336, file: !3, line: 503, column: 15)
!1489 = !DILocation(line: 507, column: 19, scope: !1487, inlinedAt: !1354)
!1490 = !DILocation(line: 509, column: 37, scope: !1491, inlinedAt: !1354)
!1491 = distinct !DILexicalBlock(scope: !1486, file: !3, line: 508, column: 17)
!1492 = !DILocalVariable(name: "str", arg: 1, scope: !1493, file: !3, line: 313, type: !42)
!1493 = distinct !DISubprogram(name: "print_esc_string", scope: !3, file: !3, line: 313, type: !109, scopeLine: 314, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1494)
!1494 = !{!1492}
!1495 = !DILocation(line: 0, scope: !1493, inlinedAt: !1496)
!1496 = distinct !DILocation(line: 509, column: 19, scope: !1491, inlinedAt: !1354)
!1497 = !DILocation(line: 315, column: 3, scope: !1493, inlinedAt: !1496)
!1498 = !DILocation(line: 315, column: 10, scope: !1499, inlinedAt: !1496)
!1499 = distinct !DILexicalBlock(scope: !1500, file: !3, line: 315, column: 3)
!1500 = distinct !DILexicalBlock(scope: !1493, file: !3, line: 315, column: 3)
!1501 = !DILocation(line: 315, column: 3, scope: !1500, inlinedAt: !1496)
!1502 = !DILocation(line: 317, column: 14, scope: !1503, inlinedAt: !1496)
!1503 = distinct !DILexicalBlock(scope: !1499, file: !3, line: 316, column: 9)
!1504 = !DILocation(line: 317, column: 11, scope: !1503, inlinedAt: !1496)
!1505 = !DILocation(line: 317, column: 7, scope: !1503, inlinedAt: !1496)
!1506 = !DILocation(line: 0, scope: !1468, inlinedAt: !1507)
!1507 = distinct !DILocation(line: 319, column: 7, scope: !1503, inlinedAt: !1496)
!1508 = !DILocation(line: 110, column: 10, scope: !1468, inlinedAt: !1507)
!1509 = !DILocation(line: 316, column: 9, scope: !1503, inlinedAt: !1496)
!1510 = !DILocation(line: 315, column: 19, scope: !1499, inlinedAt: !1496)
!1511 = !DILocation(line: 315, column: 3, scope: !1499, inlinedAt: !1496)
!1512 = distinct !{!1512, !1501, !1513}
!1513 = !DILocation(line: 319, column: 7, scope: !1500, inlinedAt: !1496)
!1514 = !DILocation(line: 510, column: 19, scope: !1491, inlinedAt: !1354)
!1515 = !DILocation(line: 511, column: 19, scope: !1491, inlinedAt: !1354)
!1516 = !DILocation(line: 512, column: 17, scope: !1491, inlinedAt: !1354)
!1517 = !DILocation(line: 518, column: 24, scope: !1518, inlinedAt: !1354)
!1518 = distinct !DILexicalBlock(scope: !1519, file: !3, line: 518, column: 19)
!1519 = distinct !DILexicalBlock(scope: !1520, file: !3, line: 517, column: 13)
!1520 = distinct !DILexicalBlock(scope: !1336, file: !3, line: 516, column: 15)
!1521 = !DILocation(line: 518, column: 19, scope: !1519, inlinedAt: !1354)
!1522 = !DILocation(line: 520, column: 19, scope: !1523, inlinedAt: !1354)
!1523 = distinct !DILexicalBlock(scope: !1518, file: !3, line: 519, column: 17)
!1524 = !DILocation(line: 522, column: 19, scope: !1523, inlinedAt: !1354)
!1525 = !DILocation(line: 523, column: 19, scope: !1523, inlinedAt: !1354)
!1526 = !DILocation(line: 524, column: 17, scope: !1523, inlinedAt: !1354)
!1527 = !DILocalVariable(name: "__dest", arg: 1, scope: !1528, file: !1529, line: 59, type: !97)
!1528 = distinct !DISubprogram(name: "memset", scope: !1529, file: !1529, line: 59, type: !1530, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1532)
!1529 = !DIFile(filename: "/usr/include/bits/string_fortified.h", directory: "")
!1530 = !DISubroutineType(types: !1531)
!1531 = !{!97, !97, !44, !99}
!1532 = !{!1527, !1533, !1534}
!1533 = !DILocalVariable(name: "__ch", arg: 2, scope: !1528, file: !1529, line: 59, type: !44)
!1534 = !DILocalVariable(name: "__len", arg: 3, scope: !1528, file: !1529, line: 59, type: !99)
!1535 = !DILocation(line: 0, scope: !1528, inlinedAt: !1536)
!1536 = distinct !DILocation(line: 528, column: 11, scope: !1336, inlinedAt: !1354)
!1537 = !DILocation(line: 71, column: 10, scope: !1528, inlinedAt: !1536)
!1538 = !DILocation(line: 531, column: 51, scope: !1336, inlinedAt: !1354)
!1539 = !DILocation(line: 531, column: 41, scope: !1336, inlinedAt: !1354)
!1540 = !DILocation(line: 531, column: 31, scope: !1336, inlinedAt: !1354)
!1541 = !DILocation(line: 531, column: 21, scope: !1336, inlinedAt: !1354)
!1542 = !DILocation(line: 530, column: 71, scope: !1336, inlinedAt: !1354)
!1543 = !DILocation(line: 530, column: 61, scope: !1336, inlinedAt: !1354)
!1544 = !DILocation(line: 530, column: 51, scope: !1336, inlinedAt: !1354)
!1545 = !DILocation(line: 530, column: 31, scope: !1336, inlinedAt: !1354)
!1546 = !DILocation(line: 529, column: 69, scope: !1336, inlinedAt: !1354)
!1547 = !DILocation(line: 529, column: 29, scope: !1336, inlinedAt: !1354)
!1548 = !DILocation(line: 529, column: 19, scope: !1336, inlinedAt: !1354)
!1549 = !DILocation(line: 530, column: 41, scope: !1336, inlinedAt: !1354)
!1550 = !DILocation(line: 533, column: 11, scope: !1336, inlinedAt: !1354)
!1551 = !DILocation(line: 534, column: 21, scope: !1552, inlinedAt: !1354)
!1552 = distinct !DILexicalBlock(scope: !1553, file: !3, line: 533, column: 11)
!1553 = distinct !DILexicalBlock(scope: !1336, file: !3, line: 533, column: 11)
!1554 = !DILocation(line: 534, column: 13, scope: !1552, inlinedAt: !1354)
!1555 = !DILocation(line: 541, column: 57, scope: !1556, inlinedAt: !1354)
!1556 = distinct !DILexicalBlock(scope: !1552, file: !3, line: 535, column: 15)
!1557 = !DILocation(line: 541, column: 47, scope: !1556, inlinedAt: !1354)
!1558 = !DILocation(line: 541, column: 37, scope: !1556, inlinedAt: !1354)
!1559 = !DILocation(line: 541, column: 27, scope: !1556, inlinedAt: !1354)
!1560 = !DILocation(line: 540, column: 65, scope: !1556, inlinedAt: !1354)
!1561 = !DILocation(line: 540, column: 55, scope: !1556, inlinedAt: !1354)
!1562 = !DILocation(line: 540, column: 45, scope: !1556, inlinedAt: !1354)
!1563 = !DILocation(line: 540, column: 35, scope: !1556, inlinedAt: !1354)
!1564 = !DILocation(line: 540, column: 25, scope: !1556, inlinedAt: !1354)
!1565 = !DILocation(line: 542, column: 17, scope: !1556, inlinedAt: !1354)
!1566 = !DILocation(line: 546, column: 65, scope: !1556, inlinedAt: !1354)
!1567 = !DILocation(line: 546, column: 55, scope: !1556, inlinedAt: !1354)
!1568 = !DILocation(line: 546, column: 45, scope: !1556, inlinedAt: !1354)
!1569 = !DILocation(line: 546, column: 35, scope: !1556, inlinedAt: !1354)
!1570 = !DILocation(line: 546, column: 25, scope: !1556, inlinedAt: !1354)
!1571 = !DILocation(line: 547, column: 17, scope: !1556, inlinedAt: !1354)
!1572 = !DILocation(line: 549, column: 35, scope: !1556, inlinedAt: !1354)
!1573 = !DILocation(line: 549, column: 25, scope: !1556, inlinedAt: !1354)
!1574 = !DILocation(line: 550, column: 17, scope: !1556, inlinedAt: !1354)
!1575 = !DILocation(line: 533, column: 20, scope: !1552, inlinedAt: !1354)
!1576 = !DILocation(line: 533, column: 36, scope: !1552, inlinedAt: !1354)
!1577 = !DILocation(line: 533, column: 11, scope: !1552, inlinedAt: !1354)
!1578 = distinct !{!1578, !1579, !1580}
!1579 = !DILocation(line: 533, column: 11, scope: !1553, inlinedAt: !1354)
!1580 = !DILocation(line: 553, column: 15, scope: !1553, inlinedAt: !1354)
!1581 = !DILocation(line: 554, column: 9, scope: !1336, inlinedAt: !1354)
!1582 = !DILocation(line: 556, column: 18, scope: !1335, inlinedAt: !1354)
!1583 = !DILocation(line: 556, column: 15, scope: !1336, inlinedAt: !1354)
!1584 = !DILocation(line: 576, column: 20, scope: !1335, inlinedAt: !1354)
!1585 = !DILocation(line: 576, column: 13, scope: !1335, inlinedAt: !1354)
!1586 = !DILocation(line: 558, column: 15, scope: !1334, inlinedAt: !1354)
!1587 = !DILocation(line: 559, column: 15, scope: !1334, inlinedAt: !1354)
!1588 = !DILocation(line: 560, column: 24, scope: !1333, inlinedAt: !1354)
!1589 = !DILocation(line: 560, column: 19, scope: !1334, inlinedAt: !1354)
!1590 = !DILocation(line: 562, column: 48, scope: !1332, inlinedAt: !1354)
!1591 = !DILocation(line: 562, column: 36, scope: !1332, inlinedAt: !1354)
!1592 = !DILocation(line: 0, scope: !1332, inlinedAt: !1354)
!1593 = !DILocation(line: 563, column: 40, scope: !1594, inlinedAt: !1354)
!1594 = distinct !DILexicalBlock(scope: !1332, file: !3, line: 563, column: 23)
!1595 = !DILocation(line: 564, column: 35, scope: !1594, inlinedAt: !1354)
!1596 = !DILocation(line: 568, column: 19, scope: !1332, inlinedAt: !1354)
!1597 = !DILocation(line: 569, column: 19, scope: !1332, inlinedAt: !1354)
!1598 = !DILocation(line: 570, column: 17, scope: !1332, inlinedAt: !1354)
!1599 = !DILocation(line: 566, column: 21, scope: !1594, inlinedAt: !1354)
!1600 = !DILocation(line: 578, column: 17, scope: !1601, inlinedAt: !1354)
!1601 = distinct !DILexicalBlock(scope: !1335, file: !3, line: 577, column: 15)
!1602 = !DILocation(line: 579, column: 17, scope: !1601, inlinedAt: !1354)
!1603 = distinct !{!1603, !1585, !1604}
!1604 = !DILocation(line: 580, column: 15, scope: !1335, inlinedAt: !1354)
!1605 = !DILocation(line: 581, column: 15, scope: !1349, inlinedAt: !1354)
!1606 = !DILocation(line: 581, column: 18, scope: !1349, inlinedAt: !1354)
!1607 = !DILocation(line: 581, column: 15, scope: !1336, inlinedAt: !1354)
!1608 = !DILocation(line: 583, column: 15, scope: !1348, inlinedAt: !1354)
!1609 = !DILocation(line: 585, column: 23, scope: !1348, inlinedAt: !1354)
!1610 = !DILocation(line: 586, column: 19, scope: !1347, inlinedAt: !1354)
!1611 = !DILocation(line: 586, column: 22, scope: !1347, inlinedAt: !1354)
!1612 = !DILocation(line: 586, column: 19, scope: !1348, inlinedAt: !1354)
!1613 = !DILocation(line: 0, scope: !1348, inlinedAt: !1354)
!1614 = !DILocation(line: 613, column: 24, scope: !1347, inlinedAt: !1354)
!1615 = !DILocation(line: 613, column: 17, scope: !1347, inlinedAt: !1354)
!1616 = distinct !{!1616, !1615, !1617}
!1617 = !DILocation(line: 617, column: 19, scope: !1347, inlinedAt: !1354)
!1618 = !DILocation(line: 615, column: 21, scope: !1619, inlinedAt: !1354)
!1619 = distinct !DILexicalBlock(scope: !1347, file: !3, line: 614, column: 19)
!1620 = !DILocation(line: 588, column: 19, scope: !1346, inlinedAt: !1354)
!1621 = !DILocation(line: 589, column: 19, scope: !1346, inlinedAt: !1354)
!1622 = !DILocation(line: 590, column: 28, scope: !1345, inlinedAt: !1354)
!1623 = !DILocation(line: 590, column: 23, scope: !1346, inlinedAt: !1354)
!1624 = !DILocation(line: 592, column: 51, scope: !1344, inlinedAt: !1354)
!1625 = !DILocation(line: 592, column: 39, scope: !1344, inlinedAt: !1354)
!1626 = !DILocation(line: 0, scope: !1344, inlinedAt: !1354)
!1627 = !DILocation(line: 593, column: 32, scope: !1628, inlinedAt: !1354)
!1628 = distinct !DILexicalBlock(scope: !1344, file: !3, line: 593, column: 27)
!1629 = !DILocation(line: 593, column: 27, scope: !1344, inlinedAt: !1354)
!1630 = !DILocation(line: 600, column: 40, scope: !1631, inlinedAt: !1354)
!1631 = distinct !DILexicalBlock(scope: !1628, file: !3, line: 600, column: 32)
!1632 = !DILocation(line: 600, column: 32, scope: !1628, inlinedAt: !1354)
!1633 = !DILocation(line: 601, column: 25, scope: !1631, inlinedAt: !1354)
!1634 = !DILocation(line: 604, column: 37, scope: !1631, inlinedAt: !1354)
!1635 = !DILocation(line: 0, scope: !1628, inlinedAt: !1354)
!1636 = !DILocation(line: 605, column: 23, scope: !1344, inlinedAt: !1354)
!1637 = !DILocation(line: 606, column: 23, scope: !1344, inlinedAt: !1354)
!1638 = !DILocation(line: 607, column: 21, scope: !1344, inlinedAt: !1354)
!1639 = !DILocation(line: 620, column: 11, scope: !1336, inlinedAt: !1354)
!1640 = !DILocation(line: 620, column: 18, scope: !1336, inlinedAt: !1354)
!1641 = !DILocation(line: 620, column: 28, scope: !1336, inlinedAt: !1354)
!1642 = !DILocation(line: 622, column: 13, scope: !1336, inlinedAt: !1354)
!1643 = distinct !{!1643, !1639, !1644}
!1644 = !DILocation(line: 622, column: 15, scope: !1336, inlinedAt: !1354)
!1645 = !DILocation(line: 0, scope: !1351, inlinedAt: !1354)
!1646 = !DILocation(line: 626, column: 19, scope: !1647, inlinedAt: !1354)
!1647 = distinct !DILexicalBlock(scope: !1351, file: !3, line: 626, column: 17)
!1648 = !DILocation(line: 626, column: 17, scope: !1351, inlinedAt: !1354)
!1649 = !DILocation(line: 627, column: 15, scope: !1647, inlinedAt: !1354)
!1650 = !DILocation(line: 635, column: 30, scope: !1336, inlinedAt: !1354)
!1651 = !DILocation(line: 635, column: 25, scope: !1336, inlinedAt: !1354)
!1652 = !DILocation(line: 635, column: 47, scope: !1336, inlinedAt: !1354)
!1653 = !DILocation(line: 635, column: 56, scope: !1336, inlinedAt: !1354)
!1654 = !DILocation(line: 635, column: 51, scope: !1336, inlinedAt: !1354)
!1655 = !DILocation(line: 0, scope: !1419, inlinedAt: !1443)
!1656 = !DILocation(line: 346, column: 13, scope: !1433, inlinedAt: !1443)
!1657 = !DILocation(line: 346, column: 5, scope: !1433, inlinedAt: !1443)
!1658 = !DILocation(line: 0, scope: !1433, inlinedAt: !1443)
!1659 = !DILocation(line: 357, column: 9, scope: !1660, inlinedAt: !1443)
!1660 = distinct !DILexicalBlock(scope: !1433, file: !3, line: 347, column: 7)
!1661 = !DILocation(line: 362, column: 9, scope: !1660, inlinedAt: !1443)
!1662 = !DILocation(line: 0, scope: !1660, inlinedAt: !1443)
!1663 = !DILocation(line: 365, column: 25, scope: !1433, inlinedAt: !1443)
!1664 = !DILocation(line: 365, column: 47, scope: !1433, inlinedAt: !1443)
!1665 = !DILocation(line: 365, column: 9, scope: !1433, inlinedAt: !1443)
!1666 = !DILocalVariable(name: "__dest", arg: 1, scope: !1667, file: !1529, line: 45, type: !1670)
!1667 = distinct !DISubprogram(name: "mempcpy", scope: !1529, file: !1529, line: 45, type: !1668, scopeLine: 47, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1672)
!1668 = !DISubroutineType(types: !1669)
!1669 = !{!97, !1670, !1671, !99}
!1670 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !97)
!1671 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !285)
!1672 = !{!1666, !1673, !1674}
!1673 = !DILocalVariable(name: "__src", arg: 2, scope: !1667, file: !1529, line: 45, type: !1671)
!1674 = !DILocalVariable(name: "__len", arg: 3, scope: !1667, file: !1529, line: 45, type: !99)
!1675 = !DILocation(line: 0, scope: !1667, inlinedAt: !1676)
!1676 = distinct !DILocation(line: 366, column: 9, scope: !1433, inlinedAt: !1443)
!1677 = !DILocation(line: 48, column: 10, scope: !1667, inlinedAt: !1676)
!1678 = !DILocation(line: 0, scope: !1667, inlinedAt: !1679)
!1679 = distinct !DILocation(line: 367, column: 9, scope: !1433, inlinedAt: !1443)
!1680 = !DILocation(line: 48, column: 10, scope: !1667, inlinedAt: !1679)
!1681 = !DILocation(line: 368, column: 7, scope: !1433, inlinedAt: !1443)
!1682 = !DILocation(line: 368, column: 10, scope: !1433, inlinedAt: !1443)
!1683 = !DILocation(line: 369, column: 8, scope: !1433, inlinedAt: !1443)
!1684 = !DILocation(line: 372, column: 3, scope: !1419, inlinedAt: !1443)
!1685 = !DILocation(line: 377, column: 24, scope: !1437, inlinedAt: !1443)
!1686 = !DILocation(line: 0, scope: !1437, inlinedAt: !1443)
!1687 = !DILocation(line: 378, column: 13, scope: !1437, inlinedAt: !1443)
!1688 = !DILocation(line: 380, column: 17, scope: !1689, inlinedAt: !1443)
!1689 = distinct !DILexicalBlock(scope: !1690, file: !3, line: 379, column: 11)
!1690 = distinct !DILexicalBlock(scope: !1437, file: !3, line: 378, column: 13)
!1691 = !DILocation(line: 381, column: 15, scope: !1692, inlinedAt: !1443)
!1692 = distinct !DILexicalBlock(scope: !1689, file: !3, line: 380, column: 17)
!1693 = !DILocation(line: 383, column: 15, scope: !1692, inlinedAt: !1443)
!1694 = !DILocation(line: 387, column: 17, scope: !1695, inlinedAt: !1443)
!1695 = distinct !DILexicalBlock(scope: !1690, file: !3, line: 386, column: 11)
!1696 = !DILocation(line: 388, column: 15, scope: !1697, inlinedAt: !1443)
!1697 = distinct !DILexicalBlock(scope: !1695, file: !3, line: 387, column: 17)
!1698 = !DILocation(line: 390, column: 15, scope: !1697, inlinedAt: !1443)
!1699 = !DILocation(line: 190, column: 1, scope: !1445, inlinedAt: !1455)
!1700 = !DILocation(line: 190, column: 1, scope: !1454, inlinedAt: !1455)
!1701 = !DILocation(line: 0, scope: !1453, inlinedAt: !1455)
!1702 = !DILocation(line: 190, column: 1, scope: !1453, inlinedAt: !1455)
!1703 = !DILocation(line: 190, column: 1, scope: !1704, inlinedAt: !1455)
!1704 = distinct !DILexicalBlock(scope: !1453, file: !3, line: 190, column: 1)
!1705 = !DILocation(line: 190, column: 1, scope: !1706, inlinedAt: !1455)
!1706 = distinct !DILexicalBlock(scope: !1454, file: !3, line: 190, column: 1)
!1707 = !{!1479, !1479, i64 0}
!1708 = !DILocalVariable(name: "nptr", arg: 1, scope: !1709, file: !1710, line: 336, type: !1713)
!1709 = distinct !DISubprogram(name: "strtoumax", scope: !1710, file: !1710, line: 336, type: !1711, scopeLine: 338, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1715)
!1710 = !DIFile(filename: "/usr/include/inttypes.h", directory: "")
!1711 = !DISubroutineType(types: !1712)
!1712 = !{!1440, !1713, !1714, !44}
!1713 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !42)
!1714 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !161)
!1715 = !{!1708, !1716, !1717}
!1716 = !DILocalVariable(name: "endptr", arg: 2, scope: !1709, file: !1710, line: 336, type: !1714)
!1717 = !DILocalVariable(name: "base", arg: 3, scope: !1709, file: !1710, line: 336, type: !44)
!1718 = !DILocation(line: 0, scope: !1709, inlinedAt: !1719)
!1719 = distinct !DILocation(line: 190, column: 1, scope: !1706, inlinedAt: !1455)
!1720 = !DILocation(line: 339, column: 10, scope: !1709, inlinedAt: !1719)
!1721 = !DILocation(line: 0, scope: !1454, inlinedAt: !1455)
!1722 = !DILocation(line: 0, scope: !1439, inlinedAt: !1443)
!1723 = !DILocation(line: 401, column: 13, scope: !1439, inlinedAt: !1443)
!1724 = !DILocation(line: 403, column: 17, scope: !1725, inlinedAt: !1443)
!1725 = distinct !DILexicalBlock(scope: !1726, file: !3, line: 402, column: 11)
!1726 = distinct !DILexicalBlock(scope: !1439, file: !3, line: 401, column: 13)
!1727 = !DILocation(line: 404, column: 15, scope: !1728, inlinedAt: !1443)
!1728 = distinct !DILexicalBlock(scope: !1725, file: !3, line: 403, column: 17)
!1729 = !DILocation(line: 406, column: 15, scope: !1728, inlinedAt: !1443)
!1730 = !DILocation(line: 410, column: 17, scope: !1731, inlinedAt: !1443)
!1731 = distinct !DILexicalBlock(scope: !1726, file: !3, line: 409, column: 11)
!1732 = !DILocation(line: 411, column: 15, scope: !1733, inlinedAt: !1443)
!1733 = distinct !DILexicalBlock(scope: !1731, file: !3, line: 410, column: 17)
!1734 = !DILocation(line: 413, column: 15, scope: !1733, inlinedAt: !1443)
!1735 = !DILocation(line: 191, column: 1, scope: !1406, inlinedAt: !1416)
!1736 = !DILocation(line: 191, column: 1, scope: !1415, inlinedAt: !1416)
!1737 = !DILocation(line: 0, scope: !1414, inlinedAt: !1416)
!1738 = !DILocation(line: 191, column: 1, scope: !1414, inlinedAt: !1416)
!1739 = !DILocation(line: 191, column: 1, scope: !1740, inlinedAt: !1416)
!1740 = distinct !DILexicalBlock(scope: !1414, file: !3, line: 191, column: 1)
!1741 = !DILocation(line: 191, column: 1, scope: !1742, inlinedAt: !1416)
!1742 = distinct !DILexicalBlock(scope: !1415, file: !3, line: 191, column: 1)
!1743 = !DILocation(line: 0, scope: !1415, inlinedAt: !1416)
!1744 = !DILocation(line: 0, scope: !1417, inlinedAt: !1443)
!1745 = !DILocation(line: 428, column: 13, scope: !1417, inlinedAt: !1443)
!1746 = !DILocation(line: 430, column: 17, scope: !1747, inlinedAt: !1443)
!1747 = distinct !DILexicalBlock(scope: !1748, file: !3, line: 429, column: 11)
!1748 = distinct !DILexicalBlock(scope: !1417, file: !3, line: 428, column: 13)
!1749 = !DILocation(line: 431, column: 15, scope: !1750, inlinedAt: !1443)
!1750 = distinct !DILexicalBlock(scope: !1747, file: !3, line: 430, column: 17)
!1751 = !DILocation(line: 433, column: 15, scope: !1750, inlinedAt: !1443)
!1752 = !DILocation(line: 437, column: 17, scope: !1753, inlinedAt: !1443)
!1753 = distinct !DILexicalBlock(scope: !1748, file: !3, line: 436, column: 11)
!1754 = !DILocation(line: 438, column: 15, scope: !1755, inlinedAt: !1443)
!1755 = distinct !DILexicalBlock(scope: !1753, file: !3, line: 437, column: 17)
!1756 = !DILocation(line: 440, column: 15, scope: !1755, inlinedAt: !1443)
!1757 = !DILocation(line: 0, scope: !1758, inlinedAt: !1443)
!1758 = distinct !DILexicalBlock(scope: !1418, file: !3, line: 446, column: 11)
!1759 = !DILocation(line: 446, column: 11, scope: !1418, inlinedAt: !1443)
!1760 = !DILocation(line: 447, column: 9, scope: !1758, inlinedAt: !1443)
!1761 = !DILocation(line: 449, column: 9, scope: !1758, inlinedAt: !1443)
!1762 = !DILocation(line: 453, column: 11, scope: !1418, inlinedAt: !1443)
!1763 = !DILocation(line: 455, column: 15, scope: !1764, inlinedAt: !1443)
!1764 = distinct !DILexicalBlock(scope: !1765, file: !3, line: 454, column: 9)
!1765 = distinct !DILexicalBlock(scope: !1418, file: !3, line: 453, column: 11)
!1766 = !DILocation(line: 456, column: 13, scope: !1767, inlinedAt: !1443)
!1767 = distinct !DILexicalBlock(scope: !1764, file: !3, line: 455, column: 15)
!1768 = !DILocation(line: 458, column: 13, scope: !1767, inlinedAt: !1443)
!1769 = !DILocation(line: 462, column: 15, scope: !1770, inlinedAt: !1443)
!1770 = distinct !DILexicalBlock(scope: !1765, file: !3, line: 461, column: 9)
!1771 = !DILocation(line: 463, column: 13, scope: !1772, inlinedAt: !1443)
!1772 = distinct !DILexicalBlock(scope: !1770, file: !3, line: 462, column: 15)
!1773 = !DILocation(line: 465, column: 13, scope: !1772, inlinedAt: !1443)
!1774 = !DILocation(line: 470, column: 3, scope: !1419, inlinedAt: !1443)
!1775 = !DILocation(line: 636, column: 11, scope: !1336, inlinedAt: !1354)
!1776 = !DILocation(line: 639, column: 16, scope: !1336, inlinedAt: !1354)
!1777 = !DILocation(line: 639, column: 13, scope: !1336, inlinedAt: !1354)
!1778 = !DILocation(line: 640, column: 11, scope: !1336, inlinedAt: !1354)
!1779 = !DILocation(line: 0, scope: !1468, inlinedAt: !1780)
!1780 = distinct !DILocation(line: 643, column: 11, scope: !1336, inlinedAt: !1354)
!1781 = !DILocation(line: 110, column: 10, scope: !1468, inlinedAt: !1780)
!1782 = !DILocation(line: 0, scope: !1339, inlinedAt: !1354)
!1783 = !DILocation(line: 490, column: 24, scope: !1338, inlinedAt: !1354)
!1784 = distinct !{!1784, !1460, !1785}
!1785 = !DILocation(line: 645, column: 5, scope: !1339, inlinedAt: !1354)
!1786 = !DILocation(line: 647, column: 20, scope: !1316, inlinedAt: !1354)
!1787 = !DILocation(line: 648, column: 1, scope: !1316, inlinedAt: !1354)
!1788 = !DILocation(line: 705, column: 12, scope: !1355)
!1789 = !DILocation(line: 707, column: 20, scope: !1307)
!1790 = !DILocation(line: 707, column: 24, scope: !1307)
!1791 = !DILocation(line: 706, column: 5, scope: !1355)
!1792 = distinct !{!1792, !1456, !1793}
!1793 = !DILocation(line: 707, column: 35, scope: !1307)
!1794 = !DILocation(line: 709, column: 7, scope: !1307)
!1795 = !DILocation(line: 711, column: 12, scope: !1796)
!1796 = distinct !DILexicalBlock(scope: !1307, file: !3, line: 709, column: 7)
!1797 = !DILocation(line: 712, column: 19, scope: !1796)
!1798 = !DILocation(line: 712, column: 12, scope: !1796)
!1799 = !DILocation(line: 710, column: 5, scope: !1796)
!1800 = !DILocation(line: 714, column: 10, scope: !1307)
!1801 = !DILocation(line: 714, column: 3, scope: !1307)
!1802 = !DILocation(line: 715, column: 1, scope: !1307)
!1803 = distinct !DISubprogram(name: "print_esc", scope: !3, file: !3, line: 240, type: !1804, scopeLine: 241, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1806)
!1804 = !DISubroutineType(types: !1805)
!1805 = !{!44, !42, !170}
!1806 = !{!1807, !1808, !1809, !1810, !1811, !1812, !1818}
!1807 = !DILocalVariable(name: "escstart", arg: 1, scope: !1803, file: !3, line: 240, type: !42)
!1808 = !DILocalVariable(name: "octal_0", arg: 2, scope: !1803, file: !3, line: 240, type: !170)
!1809 = !DILocalVariable(name: "p", scope: !1803, file: !3, line: 242, type: !42)
!1810 = !DILocalVariable(name: "esc_value", scope: !1803, file: !3, line: 243, type: !44)
!1811 = !DILocalVariable(name: "esc_length", scope: !1803, file: !3, line: 244, type: !44)
!1812 = !DILocalVariable(name: "esc_char", scope: !1813, file: !3, line: 272, type: !41)
!1813 = distinct !DILexicalBlock(scope: !1814, file: !3, line: 271, column: 5)
!1814 = distinct !DILexicalBlock(scope: !1815, file: !3, line: 270, column: 12)
!1815 = distinct !DILexicalBlock(scope: !1816, file: !3, line: 268, column: 12)
!1816 = distinct !DILexicalBlock(scope: !1817, file: !3, line: 257, column: 12)
!1817 = distinct !DILexicalBlock(scope: !1803, file: !3, line: 246, column: 7)
!1818 = !DILocalVariable(name: "uni_value", scope: !1813, file: !3, line: 273, type: !7)
!1819 = !DILocation(line: 0, scope: !1803)
!1820 = !DILocation(line: 242, column: 28, scope: !1803)
!1821 = !DILocation(line: 246, column: 7, scope: !1817)
!1822 = !DILocation(line: 246, column: 10, scope: !1817)
!1823 = !DILocation(line: 246, column: 7, scope: !1803)
!1824 = !DILocation(line: 249, column: 28, scope: !1825)
!1825 = distinct !DILexicalBlock(scope: !1826, file: !3, line: 249, column: 7)
!1826 = distinct !DILexicalBlock(scope: !1817, file: !3, line: 247, column: 5)
!1827 = !DILocation(line: 0, scope: !1828)
!1828 = distinct !DILexicalBlock(scope: !1825, file: !3, line: 249, column: 7)
!1829 = !DILocation(line: 250, column: 27, scope: !1828)
!1830 = !DILocation(line: 250, column: 30, scope: !1828)
!1831 = !{!1481, !1481, i64 0}
!1832 = !DILocation(line: 249, column: 7, scope: !1825)
!1833 = !DILocation(line: 252, column: 38, scope: !1828)
!1834 = !DILocation(line: 251, column: 26, scope: !1828)
!1835 = !DILocation(line: 254, column: 9, scope: !1836)
!1836 = distinct !DILexicalBlock(scope: !1826, file: !3, line: 253, column: 11)
!1837 = !DILocation(line: 0, scope: !1468, inlinedAt: !1838)
!1838 = distinct !DILocation(line: 255, column: 7, scope: !1826)
!1839 = !DILocation(line: 110, column: 10, scope: !1468, inlinedAt: !1838)
!1840 = !DILocation(line: 257, column: 12, scope: !1816)
!1841 = !DILocation(line: 262, column: 41, scope: !1842)
!1842 = distinct !DILexicalBlock(scope: !1843, file: !3, line: 262, column: 7)
!1843 = distinct !DILexicalBlock(scope: !1816, file: !3, line: 258, column: 5)
!1844 = !DILocation(line: 262, column: 30, scope: !1842)
!1845 = !DILocation(line: 263, column: 27, scope: !1846)
!1846 = distinct !DILexicalBlock(scope: !1842, file: !3, line: 262, column: 7)
!1847 = !DILocation(line: 263, column: 30, scope: !1846)
!1848 = !DILocation(line: 262, column: 7, scope: !1842)
!1849 = !DILocation(line: 265, column: 37, scope: !1846)
!1850 = !DILocation(line: 265, column: 35, scope: !1846)
!1851 = !DILocation(line: 264, column: 26, scope: !1846)
!1852 = !DILocation(line: 0, scope: !1842)
!1853 = !DILocation(line: 0, scope: !1468, inlinedAt: !1854)
!1854 = distinct !DILocation(line: 266, column: 7, scope: !1843)
!1855 = !DILocation(line: 110, column: 10, scope: !1468, inlinedAt: !1854)
!1856 = !DILocation(line: 268, column: 12, scope: !1815)
!1857 = !DILocation(line: 268, column: 15, scope: !1815)
!1858 = !DILocation(line: 268, column: 18, scope: !1815)
!1859 = !DILocation(line: 268, column: 12, scope: !1816)
!1860 = !DILocation(line: 269, column: 23, scope: !1815)
!1861 = !DILocalVariable(name: "c", arg: 1, scope: !1862, file: !3, line: 196, type: !41)
!1862 = distinct !DISubprogram(name: "print_esc_char", scope: !3, file: !3, line: 196, type: !1863, scopeLine: 197, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1865)
!1863 = !DISubroutineType(types: !1864)
!1864 = !{null, !41}
!1865 = !{!1861}
!1866 = !DILocation(line: 0, scope: !1862, inlinedAt: !1867)
!1867 = distinct !DILocation(line: 269, column: 5, scope: !1815)
!1868 = !DILocation(line: 198, column: 3, scope: !1862, inlinedAt: !1867)
!1869 = !DILocation(line: 0, scope: !1468, inlinedAt: !1870)
!1870 = distinct !DILocation(line: 201, column: 7, scope: !1871, inlinedAt: !1867)
!1871 = distinct !DILexicalBlock(scope: !1862, file: !3, line: 199, column: 5)
!1872 = !DILocation(line: 110, column: 10, scope: !1468, inlinedAt: !1870)
!1873 = !DILocation(line: 0, scope: !1468, inlinedAt: !1874)
!1874 = distinct !DILocation(line: 204, column: 7, scope: !1871, inlinedAt: !1867)
!1875 = !DILocation(line: 110, column: 10, scope: !1468, inlinedAt: !1874)
!1876 = !DILocation(line: 207, column: 7, scope: !1871, inlinedAt: !1867)
!1877 = !DILocation(line: 0, scope: !1468, inlinedAt: !1878)
!1878 = distinct !DILocation(line: 210, column: 7, scope: !1871, inlinedAt: !1867)
!1879 = !DILocation(line: 110, column: 10, scope: !1468, inlinedAt: !1878)
!1880 = !DILocation(line: 0, scope: !1468, inlinedAt: !1881)
!1881 = distinct !DILocation(line: 213, column: 7, scope: !1871, inlinedAt: !1867)
!1882 = !DILocation(line: 110, column: 10, scope: !1468, inlinedAt: !1881)
!1883 = !DILocation(line: 0, scope: !1468, inlinedAt: !1884)
!1884 = distinct !DILocation(line: 216, column: 7, scope: !1871, inlinedAt: !1867)
!1885 = !DILocation(line: 110, column: 10, scope: !1468, inlinedAt: !1884)
!1886 = !DILocation(line: 0, scope: !1468, inlinedAt: !1887)
!1887 = distinct !DILocation(line: 219, column: 7, scope: !1871, inlinedAt: !1867)
!1888 = !DILocation(line: 110, column: 10, scope: !1468, inlinedAt: !1887)
!1889 = !DILocation(line: 0, scope: !1468, inlinedAt: !1890)
!1890 = distinct !DILocation(line: 222, column: 7, scope: !1871, inlinedAt: !1867)
!1891 = !DILocation(line: 110, column: 10, scope: !1468, inlinedAt: !1890)
!1892 = !DILocation(line: 0, scope: !1468, inlinedAt: !1893)
!1893 = distinct !DILocation(line: 225, column: 7, scope: !1871, inlinedAt: !1867)
!1894 = !DILocation(line: 110, column: 10, scope: !1468, inlinedAt: !1893)
!1895 = !DILocation(line: 0, scope: !1468, inlinedAt: !1896)
!1896 = distinct !DILocation(line: 228, column: 7, scope: !1871, inlinedAt: !1867)
!1897 = !DILocation(line: 110, column: 10, scope: !1468, inlinedAt: !1896)
!1898 = !DILocation(line: 270, column: 22, scope: !1814)
!1899 = !DILocation(line: 0, scope: !1813)
!1900 = !DILocation(line: 276, column: 26, scope: !1901)
!1901 = distinct !DILexicalBlock(scope: !1813, file: !3, line: 276, column: 7)
!1902 = !DILocation(line: 276, column: 35, scope: !1901)
!1903 = !DILocation(line: 276, column: 52, scope: !1901)
!1904 = !DILocation(line: 0, scope: !1905)
!1905 = distinct !DILexicalBlock(scope: !1906, file: !3, line: 280, column: 15)
!1906 = distinct !DILexicalBlock(scope: !1907, file: !3, line: 279, column: 9)
!1907 = distinct !DILexicalBlock(scope: !1901, file: !3, line: 276, column: 7)
!1908 = !DILocation(line: 276, column: 7, scope: !1901)
!1909 = !DILocation(line: 280, column: 17, scope: !1905)
!1910 = !DILocation(line: 280, column: 15, scope: !1906)
!1911 = !DILocation(line: 281, column: 13, scope: !1905)
!1912 = !DILocation(line: 282, column: 33, scope: !1906)
!1913 = !DILocation(line: 282, column: 40, scope: !1906)
!1914 = !DILocation(line: 282, column: 38, scope: !1906)
!1915 = !DILocation(line: 278, column: 12, scope: !1907)
!1916 = !DILocation(line: 278, column: 26, scope: !1907)
!1917 = !DILocation(line: 277, column: 23, scope: !1907)
!1918 = distinct !{!1918, !1908, !1919}
!1919 = !DILocation(line: 283, column: 9, scope: !1901)
!1920 = !DILocation(line: 290, column: 22, scope: !1921)
!1921 = distinct !DILexicalBlock(scope: !1813, file: !3, line: 290, column: 11)
!1922 = !DILocation(line: 291, column: 12, scope: !1921)
!1923 = !DILocation(line: 292, column: 35, scope: !1921)
!1924 = !DILocation(line: 293, column: 9, scope: !1921)
!1925 = !DILocation(line: 296, column: 27, scope: !1813)
!1926 = !DILocation(line: 296, column: 7, scope: !1813)
!1927 = !DILocation(line: 297, column: 5, scope: !1813)
!1928 = !DILocation(line: 0, scope: !1468, inlinedAt: !1929)
!1929 = distinct !DILocation(line: 300, column: 7, scope: !1930)
!1930 = distinct !DILexicalBlock(scope: !1814, file: !3, line: 299, column: 5)
!1931 = !DILocation(line: 110, column: 10, scope: !1468, inlinedAt: !1929)
!1932 = !DILocation(line: 301, column: 11, scope: !1933)
!1933 = distinct !DILexicalBlock(scope: !1930, file: !3, line: 301, column: 11)
!1934 = !DILocation(line: 301, column: 11, scope: !1930)
!1935 = !DILocation(line: 0, scope: !1468, inlinedAt: !1936)
!1936 = distinct !DILocation(line: 303, column: 11, scope: !1937)
!1937 = distinct !DILexicalBlock(scope: !1933, file: !3, line: 302, column: 9)
!1938 = !DILocation(line: 110, column: 10, scope: !1468, inlinedAt: !1936)
!1939 = !DILocation(line: 303, column: 11, scope: !1937)
!1940 = !DILocation(line: 304, column: 12, scope: !1937)
!1941 = !DILocation(line: 305, column: 9, scope: !1937)
!1942 = !DILocation(line: 307, column: 12, scope: !1803)
!1943 = !DILocation(line: 307, column: 23, scope: !1803)
!1944 = !DILocation(line: 307, column: 10, scope: !1803)
!1945 = !DILocation(line: 307, column: 3, scope: !1803)
!1946 = !DILocation(line: 252, column: 31, scope: !1828)
!1947 = !DILocation(line: 252, column: 36, scope: !1828)
!1948 = !DILocation(line: 265, column: 31, scope: !1846)
!1949 = distinct !DISubprogram(name: "vstrtoimax", scope: !3, file: !3, line: 189, type: !1950, scopeLine: 189, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1952)
!1950 = !DISubroutineType(types: !1951)
!1951 = !{!1340, !42}
!1952 = !{!1953, !1954, !1955, !1956}
!1953 = !DILocalVariable(name: "s", arg: 1, scope: !1949, file: !3, line: 189, type: !42)
!1954 = !DILocalVariable(name: "end", scope: !1949, file: !3, line: 189, type: !40)
!1955 = !DILocalVariable(name: "val", scope: !1949, file: !3, line: 189, type: !1340)
!1956 = !DILocalVariable(name: "ch", scope: !1957, file: !3, line: 189, type: !144)
!1957 = distinct !DILexicalBlock(scope: !1958, file: !3, line: 189, column: 1)
!1958 = distinct !DILexicalBlock(scope: !1949, file: !3, line: 189, column: 1)
!1959 = !DILocation(line: 0, scope: !1949)
!1960 = !DILocation(line: 189, column: 1, scope: !1949)
!1961 = !DILocation(line: 189, column: 1, scope: !1958)
!1962 = !DILocation(line: 0, scope: !1957)
!1963 = !DILocation(line: 189, column: 1, scope: !1957)
!1964 = !DILocation(line: 189, column: 1, scope: !1965)
!1965 = distinct !DILexicalBlock(scope: !1957, file: !3, line: 189, column: 1)
!1966 = !DILocation(line: 189, column: 1, scope: !1967)
!1967 = distinct !DILexicalBlock(scope: !1958, file: !3, line: 189, column: 1)
!1968 = !DILocalVariable(name: "nptr", arg: 1, scope: !1969, file: !1710, line: 324, type: !1713)
!1969 = distinct !DISubprogram(name: "strtoimax", scope: !1710, file: !1710, line: 324, type: !1970, scopeLine: 326, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1972)
!1970 = !DISubroutineType(types: !1971)
!1971 = !{!1340, !1713, !1714, !44}
!1972 = !{!1968, !1973, !1974}
!1973 = !DILocalVariable(name: "endptr", arg: 2, scope: !1969, file: !1710, line: 324, type: !1714)
!1974 = !DILocalVariable(name: "base", arg: 3, scope: !1969, file: !1710, line: 324, type: !44)
!1975 = !DILocation(line: 0, scope: !1969, inlinedAt: !1976)
!1976 = distinct !DILocation(line: 189, column: 1, scope: !1967)
!1977 = !DILocation(line: 327, column: 10, scope: !1969, inlinedAt: !1976)
!1978 = !DILocation(line: 0, scope: !1958)
!1979 = distinct !DISubprogram(name: "verify_numeric", scope: !3, file: !3, line: 145, type: !1980, scopeLine: 146, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1982)
!1980 = !DISubroutineType(types: !1981)
!1981 = !{null, !42, !42}
!1982 = !{!1983, !1984}
!1983 = !DILocalVariable(name: "s", arg: 1, scope: !1979, file: !3, line: 145, type: !42)
!1984 = !DILocalVariable(name: "end", arg: 2, scope: !1979, file: !3, line: 145, type: !42)
!1985 = !DILocation(line: 0, scope: !1979)
!1986 = !DILocation(line: 147, column: 7, scope: !1987)
!1987 = distinct !DILexicalBlock(scope: !1979, file: !3, line: 147, column: 7)
!1988 = !DILocation(line: 147, column: 7, scope: !1979)
!1989 = !DILocation(line: 149, column: 30, scope: !1990)
!1990 = distinct !DILexicalBlock(scope: !1987, file: !3, line: 148, column: 5)
!1991 = !DILocation(line: 149, column: 7, scope: !1990)
!1992 = !DILocation(line: 151, column: 5, scope: !1990)
!1993 = !DILocation(line: 152, column: 12, scope: !1994)
!1994 = distinct !DILexicalBlock(scope: !1987, file: !3, line: 152, column: 12)
!1995 = !DILocation(line: 152, column: 12, scope: !1987)
!1996 = !DILocation(line: 154, column: 13, scope: !1997)
!1997 = distinct !DILexicalBlock(scope: !1998, file: !3, line: 154, column: 11)
!1998 = distinct !DILexicalBlock(scope: !1994, file: !3, line: 153, column: 5)
!1999 = !DILocation(line: 154, column: 11, scope: !1998)
!2000 = !DILocation(line: 0, scope: !1997)
!2001 = !DILocation(line: 159, column: 5, scope: !1998)
!2002 = !DILocation(line: 0, scope: !1987)
!2003 = !DILocation(line: 160, column: 1, scope: !1979)
!2004 = distinct !DISubprogram(name: "cl_strtold", scope: !2005, file: !2005, line: 59, type: !2006, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !512, retainedNodes: !2008)
!2005 = !DIFile(filename: "./lib/cl-strtod.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!2006 = !DISubroutineType(types: !2007)
!2007 = !{!160, !42, !1714}
!2008 = !{!2009, !2010, !2011, !2012, !2013, !2016, !2017}
!2009 = !DILocalVariable(name: "nptr", arg: 1, scope: !2004, file: !2005, line: 59, type: !42)
!2010 = !DILocalVariable(name: "endptr", arg: 2, scope: !2004, file: !2005, line: 59, type: !1714)
!2011 = !DILocalVariable(name: "end", scope: !2004, file: !2005, line: 61, type: !40)
!2012 = !DILocalVariable(name: "d", scope: !2004, file: !2005, line: 62, type: !160)
!2013 = !DILocalVariable(name: "strtod_errno", scope: !2014, file: !2005, line: 65, type: !44)
!2014 = distinct !DILexicalBlock(scope: !2015, file: !2005, line: 64, column: 5)
!2015 = distinct !DILexicalBlock(scope: !2004, file: !2005, line: 63, column: 7)
!2016 = !DILocalVariable(name: "c_end", scope: !2014, file: !2005, line: 66, type: !40)
!2017 = !DILocalVariable(name: "c", scope: !2014, file: !2005, line: 67, type: !160)
!2018 = !DILocation(line: 0, scope: !2004)
!2019 = !DILocation(line: 61, column: 3, scope: !2004)
!2020 = !DILocation(line: 62, column: 14, scope: !2004)
!2021 = !DILocation(line: 63, column: 8, scope: !2015)
!2022 = !DILocation(line: 63, column: 7, scope: !2015)
!2023 = !DILocation(line: 63, column: 7, scope: !2004)
!2024 = !DILocation(line: 65, column: 26, scope: !2014)
!2025 = !DILocation(line: 0, scope: !2014)
!2026 = !DILocation(line: 66, column: 7, scope: !2014)
!2027 = !DILocation(line: 67, column: 18, scope: !2014)
!2028 = !DILocation(line: 68, column: 17, scope: !2029)
!2029 = distinct !DILexicalBlock(scope: !2014, file: !2005, line: 68, column: 11)
!2030 = !DILocation(line: 68, column: 15, scope: !2029)
!2031 = !DILocation(line: 68, column: 11, scope: !2014)
!2032 = !DILocation(line: 69, column: 20, scope: !2029)
!2033 = !DILocation(line: 69, column: 9, scope: !2029)
!2034 = !DILocation(line: 71, column: 15, scope: !2029)
!2035 = !DILocation(line: 72, column: 5, scope: !2015)
!2036 = !DILocation(line: 72, column: 5, scope: !2014)
!2037 = !DILocation(line: 73, column: 7, scope: !2038)
!2038 = distinct !DILexicalBlock(scope: !2004, file: !2005, line: 73, column: 7)
!2039 = !DILocation(line: 73, column: 7, scope: !2004)
!2040 = !DILocation(line: 74, column: 13, scope: !2038)
!2041 = !DILocation(line: 74, column: 5, scope: !2038)
!2042 = !DILocation(line: 76, column: 1, scope: !2004)
!2043 = !DILocation(line: 75, column: 3, scope: !2004)
!2044 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !182, file: !182, line: 51, type: !109, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !181, retainedNodes: !2045)
!2045 = !{!2046}
!2046 = !DILocalVariable(name: "file", arg: 1, scope: !2044, file: !182, line: 51, type: !42)
!2047 = !DILocation(line: 0, scope: !2044)
!2048 = !DILocation(line: 53, column: 13, scope: !2044)
!2049 = !DILocation(line: 54, column: 1, scope: !2044)
!2050 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !182, file: !182, line: 88, type: !2051, scopeLine: 89, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !181, retainedNodes: !2053)
!2051 = !DISubroutineType(types: !2052)
!2052 = !{null, !170}
!2053 = !{!2054}
!2054 = !DILocalVariable(name: "ignore", arg: 1, scope: !2050, file: !182, line: 88, type: !170)
!2055 = !DILocation(line: 0, scope: !2050)
!2056 = !DILocation(line: 90, column: 16, scope: !2050)
!2057 = !DILocation(line: 91, column: 1, scope: !2050)
!2058 = distinct !DISubprogram(name: "close_stdout", scope: !182, file: !182, line: 117, type: !126, scopeLine: 118, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !181, retainedNodes: !2059)
!2059 = !{!2060}
!2060 = !DILocalVariable(name: "write_error", scope: !2061, file: !182, line: 122, type: !42)
!2061 = distinct !DILexicalBlock(scope: !2062, file: !182, line: 121, column: 5)
!2062 = distinct !DILexicalBlock(scope: !2058, file: !182, line: 119, column: 7)
!2063 = !DILocation(line: 119, column: 21, scope: !2062)
!2064 = !DILocation(line: 119, column: 7, scope: !2062)
!2065 = !DILocation(line: 119, column: 29, scope: !2062)
!2066 = !DILocation(line: 120, column: 7, scope: !2062)
!2067 = !DILocation(line: 120, column: 12, scope: !2062)
!2068 = !{i8 0, i8 2}
!2069 = !DILocation(line: 120, column: 25, scope: !2062)
!2070 = !DILocation(line: 120, column: 28, scope: !2062)
!2071 = !DILocation(line: 120, column: 34, scope: !2062)
!2072 = !DILocation(line: 119, column: 7, scope: !2058)
!2073 = !DILocation(line: 122, column: 33, scope: !2061)
!2074 = !DILocation(line: 0, scope: !2061)
!2075 = !DILocation(line: 123, column: 11, scope: !2076)
!2076 = distinct !DILexicalBlock(scope: !2061, file: !182, line: 123, column: 11)
!2077 = !DILocation(line: 0, scope: !2076)
!2078 = !DILocation(line: 123, column: 11, scope: !2061)
!2079 = !DILocation(line: 124, column: 36, scope: !2076)
!2080 = !DILocation(line: 124, column: 9, scope: !2076)
!2081 = !DILocation(line: 127, column: 9, scope: !2076)
!2082 = !DILocation(line: 129, column: 14, scope: !2061)
!2083 = !DILocation(line: 129, column: 7, scope: !2061)
!2084 = !DILocation(line: 134, column: 42, scope: !2085)
!2085 = distinct !DILexicalBlock(scope: !2058, file: !182, line: 134, column: 7)
!2086 = !DILocation(line: 134, column: 28, scope: !2085)
!2087 = !DILocation(line: 134, column: 50, scope: !2085)
!2088 = !DILocation(line: 134, column: 7, scope: !2058)
!2089 = !DILocation(line: 135, column: 12, scope: !2085)
!2090 = !DILocation(line: 135, column: 5, scope: !2085)
!2091 = !DILocation(line: 136, column: 1, scope: !2058)
!2092 = distinct !DISubprogram(name: "set_program_name", scope: !233, file: !233, line: 39, type: !109, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !232, retainedNodes: !2093)
!2093 = !{!2094, !2095, !2096}
!2094 = !DILocalVariable(name: "argv0", arg: 1, scope: !2092, file: !233, line: 39, type: !42)
!2095 = !DILocalVariable(name: "slash", scope: !2092, file: !233, line: 46, type: !42)
!2096 = !DILocalVariable(name: "base", scope: !2092, file: !233, line: 47, type: !42)
!2097 = !DILocation(line: 0, scope: !2092)
!2098 = !DILocation(line: 51, column: 13, scope: !2099)
!2099 = distinct !DILexicalBlock(scope: !2092, file: !233, line: 51, column: 7)
!2100 = !DILocation(line: 51, column: 7, scope: !2092)
!2101 = !DILocation(line: 55, column: 14, scope: !2102)
!2102 = distinct !DILexicalBlock(scope: !2099, file: !233, line: 52, column: 5)
!2103 = !DILocation(line: 54, column: 7, scope: !2102)
!2104 = !DILocation(line: 56, column: 7, scope: !2102)
!2105 = !DILocation(line: 59, column: 11, scope: !2092)
!2106 = !DILocation(line: 60, column: 17, scope: !2092)
!2107 = !DILocation(line: 60, column: 11, scope: !2092)
!2108 = !DILocation(line: 61, column: 12, scope: !2109)
!2109 = distinct !DILexicalBlock(scope: !2092, file: !233, line: 61, column: 7)
!2110 = !DILocation(line: 61, column: 20, scope: !2109)
!2111 = !DILocation(line: 61, column: 25, scope: !2109)
!2112 = !DILocation(line: 61, column: 42, scope: !2109)
!2113 = !DILocation(line: 61, column: 28, scope: !2109)
!2114 = !DILocation(line: 61, column: 61, scope: !2109)
!2115 = !DILocation(line: 61, column: 7, scope: !2092)
!2116 = !DILocation(line: 64, column: 11, scope: !2117)
!2117 = distinct !DILexicalBlock(scope: !2118, file: !233, line: 64, column: 11)
!2118 = distinct !DILexicalBlock(scope: !2109, file: !233, line: 62, column: 5)
!2119 = !DILocation(line: 64, column: 36, scope: !2117)
!2120 = !DILocation(line: 64, column: 11, scope: !2118)
!2121 = !DILocation(line: 66, column: 24, scope: !2122)
!2122 = distinct !DILexicalBlock(scope: !2117, file: !233, line: 65, column: 9)
!2123 = !DILocation(line: 70, column: 41, scope: !2122)
!2124 = !DILocation(line: 72, column: 9, scope: !2122)
!2125 = !DILocation(line: 84, column: 16, scope: !2092)
!2126 = !DILocation(line: 90, column: 27, scope: !2092)
!2127 = !DILocation(line: 92, column: 1, scope: !2092)
!2128 = distinct !DISubprogram(name: "clone_quoting_options", scope: !274, file: !274, line: 122, type: !2129, scopeLine: 123, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !273, retainedNodes: !2132)
!2129 = !DISubroutineType(types: !2130)
!2130 = !{!2131, !2131}
!2131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !293, size: 64)
!2132 = !{!2133, !2134, !2135}
!2133 = !DILocalVariable(name: "o", arg: 1, scope: !2128, file: !274, line: 122, type: !2131)
!2134 = !DILocalVariable(name: "e", scope: !2128, file: !274, line: 124, type: !44)
!2135 = !DILocalVariable(name: "p", scope: !2128, file: !274, line: 125, type: !2131)
!2136 = !DILocation(line: 0, scope: !2128)
!2137 = !DILocation(line: 124, column: 11, scope: !2128)
!2138 = !DILocation(line: 125, column: 40, scope: !2128)
!2139 = !DILocation(line: 125, column: 31, scope: !2128)
!2140 = !DILocation(line: 127, column: 9, scope: !2128)
!2141 = !DILocation(line: 128, column: 3, scope: !2128)
!2142 = distinct !DISubprogram(name: "get_quoting_style", scope: !274, file: !274, line: 133, type: !2143, scopeLine: 134, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !273, retainedNodes: !2145)
!2143 = !DISubroutineType(types: !2144)
!2144 = !{!5, !291}
!2145 = !{!2146}
!2146 = !DILocalVariable(name: "o", arg: 1, scope: !2142, file: !274, line: 133, type: !291)
!2147 = !DILocation(line: 0, scope: !2142)
!2148 = !DILocation(line: 135, column: 11, scope: !2142)
!2149 = !DILocation(line: 135, column: 46, scope: !2142)
!2150 = !{!2151, !1265, i64 0}
!2151 = !{!"quoting_options", !1265, i64 0, !1479, i64 4, !1265, i64 8, !1264, i64 40, !1264, i64 48}
!2152 = !DILocation(line: 135, column: 3, scope: !2142)
!2153 = distinct !DISubprogram(name: "set_quoting_style", scope: !274, file: !274, line: 141, type: !2154, scopeLine: 142, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !273, retainedNodes: !2156)
!2154 = !DISubroutineType(types: !2155)
!2155 = !{null, !2131, !5}
!2156 = !{!2157, !2158}
!2157 = !DILocalVariable(name: "o", arg: 1, scope: !2153, file: !274, line: 141, type: !2131)
!2158 = !DILocalVariable(name: "s", arg: 2, scope: !2153, file: !274, line: 141, type: !5)
!2159 = !DILocation(line: 0, scope: !2153)
!2160 = !DILocation(line: 143, column: 4, scope: !2153)
!2161 = !DILocation(line: 143, column: 39, scope: !2153)
!2162 = !DILocation(line: 143, column: 45, scope: !2153)
!2163 = !DILocation(line: 144, column: 1, scope: !2153)
!2164 = distinct !DISubprogram(name: "set_char_quoting", scope: !274, file: !274, line: 152, type: !2165, scopeLine: 153, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !273, retainedNodes: !2167)
!2165 = !DISubroutineType(types: !2166)
!2166 = !{!44, !2131, !41, !44}
!2167 = !{!2168, !2169, !2170, !2171, !2172, !2174, !2175}
!2168 = !DILocalVariable(name: "o", arg: 1, scope: !2164, file: !274, line: 152, type: !2131)
!2169 = !DILocalVariable(name: "c", arg: 2, scope: !2164, file: !274, line: 152, type: !41)
!2170 = !DILocalVariable(name: "i", arg: 3, scope: !2164, file: !274, line: 152, type: !44)
!2171 = !DILocalVariable(name: "uc", scope: !2164, file: !274, line: 154, type: !144)
!2172 = !DILocalVariable(name: "p", scope: !2164, file: !274, line: 155, type: !2173)
!2173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!2174 = !DILocalVariable(name: "shift", scope: !2164, file: !274, line: 157, type: !44)
!2175 = !DILocalVariable(name: "r", scope: !2164, file: !274, line: 158, type: !44)
!2176 = !DILocation(line: 0, scope: !2164)
!2177 = !DILocation(line: 156, column: 6, scope: !2164)
!2178 = !DILocation(line: 156, column: 62, scope: !2164)
!2179 = !DILocation(line: 156, column: 57, scope: !2164)
!2180 = !DILocation(line: 157, column: 15, scope: !2164)
!2181 = !DILocation(line: 158, column: 12, scope: !2164)
!2182 = !DILocation(line: 158, column: 15, scope: !2164)
!2183 = !DILocation(line: 158, column: 25, scope: !2164)
!2184 = !DILocation(line: 159, column: 13, scope: !2164)
!2185 = !DILocation(line: 159, column: 18, scope: !2164)
!2186 = !DILocation(line: 159, column: 23, scope: !2164)
!2187 = !DILocation(line: 159, column: 6, scope: !2164)
!2188 = !DILocation(line: 160, column: 3, scope: !2164)
!2189 = distinct !DISubprogram(name: "set_quoting_flags", scope: !274, file: !274, line: 168, type: !2190, scopeLine: 169, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !273, retainedNodes: !2192)
!2190 = !DISubroutineType(types: !2191)
!2191 = !{!44, !2131, !44}
!2192 = !{!2193, !2194, !2195}
!2193 = !DILocalVariable(name: "o", arg: 1, scope: !2189, file: !274, line: 168, type: !2131)
!2194 = !DILocalVariable(name: "i", arg: 2, scope: !2189, file: !274, line: 168, type: !44)
!2195 = !DILocalVariable(name: "r", scope: !2189, file: !274, line: 170, type: !44)
!2196 = !DILocation(line: 0, scope: !2189)
!2197 = !DILocation(line: 171, column: 8, scope: !2198)
!2198 = distinct !DILexicalBlock(scope: !2189, file: !274, line: 171, column: 7)
!2199 = !DILocation(line: 171, column: 7, scope: !2189)
!2200 = !DILocation(line: 173, column: 10, scope: !2189)
!2201 = !{!2151, !1479, i64 4}
!2202 = !DILocation(line: 174, column: 12, scope: !2189)
!2203 = !DILocation(line: 175, column: 3, scope: !2189)
!2204 = distinct !DISubprogram(name: "set_custom_quoting", scope: !274, file: !274, line: 179, type: !2205, scopeLine: 181, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !273, retainedNodes: !2207)
!2205 = !DISubroutineType(types: !2206)
!2206 = !{null, !2131, !42, !42}
!2207 = !{!2208, !2209, !2210}
!2208 = !DILocalVariable(name: "o", arg: 1, scope: !2204, file: !274, line: 179, type: !2131)
!2209 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2204, file: !274, line: 180, type: !42)
!2210 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2204, file: !274, line: 180, type: !42)
!2211 = !DILocation(line: 0, scope: !2204)
!2212 = !DILocation(line: 182, column: 8, scope: !2213)
!2213 = distinct !DILexicalBlock(scope: !2204, file: !274, line: 182, column: 7)
!2214 = !DILocation(line: 182, column: 7, scope: !2204)
!2215 = !DILocation(line: 184, column: 6, scope: !2204)
!2216 = !DILocation(line: 184, column: 12, scope: !2204)
!2217 = !DILocation(line: 185, column: 8, scope: !2218)
!2218 = distinct !DILexicalBlock(scope: !2204, file: !274, line: 185, column: 7)
!2219 = !DILocation(line: 185, column: 23, scope: !2218)
!2220 = !DILocation(line: 185, column: 19, scope: !2218)
!2221 = !DILocation(line: 186, column: 5, scope: !2218)
!2222 = !DILocation(line: 187, column: 6, scope: !2204)
!2223 = !DILocation(line: 187, column: 17, scope: !2204)
!2224 = !{!2151, !1264, i64 40}
!2225 = !DILocation(line: 188, column: 6, scope: !2204)
!2226 = !DILocation(line: 188, column: 18, scope: !2204)
!2227 = !{!2151, !1264, i64 48}
!2228 = !DILocation(line: 189, column: 1, scope: !2204)
!2229 = distinct !DISubprogram(name: "quotearg_buffer", scope: !274, file: !274, line: 784, type: !2230, scopeLine: 787, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !273, retainedNodes: !2232)
!2230 = !DISubroutineType(types: !2231)
!2231 = !{!99, !40, !99, !42, !99, !291}
!2232 = !{!2233, !2234, !2235, !2236, !2237, !2238, !2239, !2240}
!2233 = !DILocalVariable(name: "buffer", arg: 1, scope: !2229, file: !274, line: 784, type: !40)
!2234 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2229, file: !274, line: 784, type: !99)
!2235 = !DILocalVariable(name: "arg", arg: 3, scope: !2229, file: !274, line: 785, type: !42)
!2236 = !DILocalVariable(name: "argsize", arg: 4, scope: !2229, file: !274, line: 785, type: !99)
!2237 = !DILocalVariable(name: "o", arg: 5, scope: !2229, file: !274, line: 786, type: !291)
!2238 = !DILocalVariable(name: "p", scope: !2229, file: !274, line: 788, type: !291)
!2239 = !DILocalVariable(name: "e", scope: !2229, file: !274, line: 789, type: !44)
!2240 = !DILocalVariable(name: "r", scope: !2229, file: !274, line: 790, type: !99)
!2241 = !DILocation(line: 0, scope: !2229)
!2242 = !DILocation(line: 788, column: 37, scope: !2229)
!2243 = !DILocation(line: 789, column: 11, scope: !2229)
!2244 = !DILocation(line: 791, column: 43, scope: !2229)
!2245 = !DILocation(line: 791, column: 53, scope: !2229)
!2246 = !DILocation(line: 791, column: 60, scope: !2229)
!2247 = !DILocation(line: 792, column: 43, scope: !2229)
!2248 = !DILocation(line: 792, column: 58, scope: !2229)
!2249 = !DILocation(line: 790, column: 14, scope: !2229)
!2250 = !DILocation(line: 793, column: 9, scope: !2229)
!2251 = !DILocation(line: 794, column: 3, scope: !2229)
!2252 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !274, file: !274, line: 256, type: !2253, scopeLine: 262, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !273, retainedNodes: !2257)
!2253 = !DISubroutineType(types: !2254)
!2254 = !{!99, !40, !99, !42, !99, !5, !44, !2255, !42, !42}
!2255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2256, size: 64)
!2256 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!2257 = !{!2258, !2259, !2260, !2261, !2262, !2263, !2264, !2265, !2266, !2267, !2268, !2269, !2270, !2271, !2272, !2273, !2274, !2275, !2276, !2277, !2278, !2282, !2283, !2284, !2285, !2286, !2289, !2290, !2296, !2299, !2300, !2307, !2310, !2311, !2312, !2313, !2314, !2315}
!2258 = !DILocalVariable(name: "buffer", arg: 1, scope: !2252, file: !274, line: 256, type: !40)
!2259 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2252, file: !274, line: 256, type: !99)
!2260 = !DILocalVariable(name: "arg", arg: 3, scope: !2252, file: !274, line: 257, type: !42)
!2261 = !DILocalVariable(name: "argsize", arg: 4, scope: !2252, file: !274, line: 257, type: !99)
!2262 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !2252, file: !274, line: 258, type: !5)
!2263 = !DILocalVariable(name: "flags", arg: 6, scope: !2252, file: !274, line: 258, type: !44)
!2264 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !2252, file: !274, line: 259, type: !2255)
!2265 = !DILocalVariable(name: "left_quote", arg: 8, scope: !2252, file: !274, line: 260, type: !42)
!2266 = !DILocalVariable(name: "right_quote", arg: 9, scope: !2252, file: !274, line: 261, type: !42)
!2267 = !DILocalVariable(name: "i", scope: !2252, file: !274, line: 263, type: !99)
!2268 = !DILocalVariable(name: "len", scope: !2252, file: !274, line: 264, type: !99)
!2269 = !DILocalVariable(name: "orig_buffersize", scope: !2252, file: !274, line: 265, type: !99)
!2270 = !DILocalVariable(name: "quote_string", scope: !2252, file: !274, line: 266, type: !42)
!2271 = !DILocalVariable(name: "quote_string_len", scope: !2252, file: !274, line: 267, type: !99)
!2272 = !DILocalVariable(name: "backslash_escapes", scope: !2252, file: !274, line: 268, type: !170)
!2273 = !DILocalVariable(name: "unibyte_locale", scope: !2252, file: !274, line: 269, type: !170)
!2274 = !DILocalVariable(name: "elide_outer_quotes", scope: !2252, file: !274, line: 270, type: !170)
!2275 = !DILocalVariable(name: "pending_shell_escape_end", scope: !2252, file: !274, line: 271, type: !170)
!2276 = !DILocalVariable(name: "encountered_single_quote", scope: !2252, file: !274, line: 272, type: !170)
!2277 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !2252, file: !274, line: 273, type: !170)
!2278 = !DILocalVariable(name: "c", scope: !2279, file: !274, line: 402, type: !144)
!2279 = distinct !DILexicalBlock(scope: !2280, file: !274, line: 401, column: 5)
!2280 = distinct !DILexicalBlock(scope: !2281, file: !274, line: 400, column: 3)
!2281 = distinct !DILexicalBlock(scope: !2252, file: !274, line: 400, column: 3)
!2282 = !DILocalVariable(name: "esc", scope: !2279, file: !274, line: 403, type: !144)
!2283 = !DILocalVariable(name: "is_right_quote", scope: !2279, file: !274, line: 404, type: !170)
!2284 = !DILocalVariable(name: "escaping", scope: !2279, file: !274, line: 405, type: !170)
!2285 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !2279, file: !274, line: 406, type: !170)
!2286 = !DILocalVariable(name: "m", scope: !2287, file: !274, line: 610, type: !99)
!2287 = distinct !DILexicalBlock(scope: !2288, file: !274, line: 608, column: 11)
!2288 = distinct !DILexicalBlock(scope: !2279, file: !274, line: 426, column: 9)
!2289 = !DILocalVariable(name: "printable", scope: !2287, file: !274, line: 612, type: !170)
!2290 = !DILocalVariable(name: "mbstate", scope: !2291, file: !274, line: 621, type: !2293)
!2291 = distinct !DILexicalBlock(scope: !2292, file: !274, line: 620, column: 15)
!2292 = distinct !DILexicalBlock(scope: !2287, file: !274, line: 614, column: 17)
!2293 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !2294, line: 6, baseType: !2295)
!2294 = !DIFile(filename: "/usr/include/bits/types/mbstate_t.h", directory: "")
!2295 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !313, line: 21, baseType: !312)
!2296 = !DILocalVariable(name: "w", scope: !2297, file: !274, line: 631, type: !2298)
!2297 = distinct !DILexicalBlock(scope: !2291, file: !274, line: 630, column: 19)
!2298 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !100, line: 74, baseType: !44)
!2299 = !DILocalVariable(name: "bytes", scope: !2297, file: !274, line: 632, type: !99)
!2300 = !DILocalVariable(name: "j", scope: !2301, file: !274, line: 657, type: !99)
!2301 = distinct !DILexicalBlock(scope: !2302, file: !274, line: 656, column: 27)
!2302 = distinct !DILexicalBlock(scope: !2303, file: !274, line: 654, column: 29)
!2303 = distinct !DILexicalBlock(scope: !2304, file: !274, line: 649, column: 23)
!2304 = distinct !DILexicalBlock(scope: !2305, file: !274, line: 641, column: 30)
!2305 = distinct !DILexicalBlock(scope: !2306, file: !274, line: 636, column: 30)
!2306 = distinct !DILexicalBlock(scope: !2297, file: !274, line: 634, column: 25)
!2307 = !DILocalVariable(name: "ilim", scope: !2308, file: !274, line: 684, type: !99)
!2308 = distinct !DILexicalBlock(scope: !2309, file: !274, line: 681, column: 15)
!2309 = distinct !DILexicalBlock(scope: !2287, file: !274, line: 680, column: 17)
!2310 = !DILabel(scope: !2252, name: "process_input", file: !274, line: 314)
!2311 = !DILabel(scope: !2288, name: "c_and_shell_escape", file: !274, line: 512)
!2312 = !DILabel(scope: !2288, name: "c_escape", file: !274, line: 517)
!2313 = !DILabel(scope: !2279, name: "store_escape", file: !274, line: 719)
!2314 = !DILabel(scope: !2279, name: "store_c", file: !274, line: 722)
!2315 = !DILabel(scope: !2252, name: "force_outer_quoting_style", file: !274, line: 763)
!2316 = !DILocation(line: 0, scope: !2252)
!2317 = !DILocation(line: 269, column: 25, scope: !2252)
!2318 = !DILocation(line: 269, column: 36, scope: !2252)
!2319 = !DILocation(line: 270, column: 8, scope: !2252)
!2320 = !DILocation(line: 0, scope: !2321)
!2321 = distinct !DILexicalBlock(scope: !2288, file: !274, line: 526, column: 15)
!2322 = !DILocation(line: 0, scope: !2323)
!2323 = distinct !DILexicalBlock(scope: !2324, file: !274, line: 462, column: 19)
!2324 = distinct !DILexicalBlock(scope: !2288, file: !274, line: 455, column: 13)
!2325 = !DILocation(line: 0, scope: !2326)
!2326 = distinct !DILexicalBlock(scope: !2327, file: !274, line: 449, column: 20)
!2327 = distinct !DILexicalBlock(scope: !2288, file: !274, line: 428, column: 15)
!2328 = !DILocation(line: 0, scope: !2291)
!2329 = !DILocation(line: 0, scope: !2297)
!2330 = !DILocation(line: 0, scope: !2331)
!2331 = distinct !DILexicalBlock(scope: !2279, file: !274, line: 712, column: 11)
!2332 = !DILocation(line: 273, column: 3, scope: !2252)
!2333 = !DILocation(line: 265, column: 10, scope: !2252)
!2334 = !DILocation(line: 266, column: 15, scope: !2252)
!2335 = !DILocation(line: 267, column: 10, scope: !2252)
!2336 = !DILocation(line: 268, column: 8, scope: !2252)
!2337 = !DILocation(line: 271, column: 8, scope: !2252)
!2338 = !DILocation(line: 272, column: 8, scope: !2252)
!2339 = !DILocation(line: 273, column: 8, scope: !2252)
!2340 = !DILocation(line: 314, column: 2, scope: !2252)
!2341 = !DILocation(line: 316, column: 3, scope: !2252)
!2342 = !DILocation(line: 323, column: 11, scope: !2343)
!2343 = distinct !DILexicalBlock(scope: !2252, file: !274, line: 317, column: 5)
!2344 = !DILocation(line: 323, column: 12, scope: !2345)
!2345 = distinct !DILexicalBlock(scope: !2343, file: !274, line: 323, column: 11)
!2346 = !DILocation(line: 324, column: 9, scope: !2347)
!2347 = distinct !DILexicalBlock(scope: !2348, file: !274, line: 324, column: 9)
!2348 = distinct !DILexicalBlock(scope: !2345, file: !274, line: 324, column: 9)
!2349 = !DILocation(line: 324, column: 9, scope: !2348)
!2350 = !DILocation(line: 362, column: 26, scope: !2351)
!2351 = distinct !DILexicalBlock(scope: !2352, file: !274, line: 340, column: 11)
!2352 = distinct !DILexicalBlock(scope: !2353, file: !274, line: 339, column: 13)
!2353 = distinct !DILexicalBlock(scope: !2343, file: !274, line: 338, column: 7)
!2354 = !DILocation(line: 363, column: 27, scope: !2351)
!2355 = !DILocation(line: 364, column: 11, scope: !2351)
!2356 = !DILocation(line: 365, column: 14, scope: !2357)
!2357 = distinct !DILexicalBlock(scope: !2353, file: !274, line: 365, column: 13)
!2358 = !DILocation(line: 365, column: 13, scope: !2353)
!2359 = !DILocation(line: 366, column: 43, scope: !2360)
!2360 = distinct !DILexicalBlock(scope: !2361, file: !274, line: 366, column: 11)
!2361 = distinct !DILexicalBlock(scope: !2357, file: !274, line: 366, column: 11)
!2362 = !DILocation(line: 366, column: 11, scope: !2361)
!2363 = !DILocation(line: 367, column: 13, scope: !2364)
!2364 = distinct !DILexicalBlock(scope: !2365, file: !274, line: 367, column: 13)
!2365 = distinct !DILexicalBlock(scope: !2360, file: !274, line: 367, column: 13)
!2366 = !DILocation(line: 367, column: 13, scope: !2365)
!2367 = !DILocation(line: 366, column: 70, scope: !2360)
!2368 = distinct !{!2368, !2362, !2369}
!2369 = !DILocation(line: 367, column: 13, scope: !2361)
!2370 = !DILocation(line: 264, column: 10, scope: !2252)
!2371 = !DILocation(line: 370, column: 28, scope: !2353)
!2372 = !DILocation(line: 372, column: 7, scope: !2343)
!2373 = !DILocation(line: 376, column: 7, scope: !2343)
!2374 = !DILocation(line: 379, column: 7, scope: !2343)
!2375 = !DILocation(line: 381, column: 12, scope: !2376)
!2376 = distinct !DILexicalBlock(scope: !2343, file: !274, line: 381, column: 11)
!2377 = !DILocation(line: 381, column: 11, scope: !2343)
!2378 = !DILocation(line: 386, column: 12, scope: !2379)
!2379 = distinct !DILexicalBlock(scope: !2343, file: !274, line: 386, column: 11)
!2380 = !DILocation(line: 386, column: 11, scope: !2343)
!2381 = !DILocation(line: 387, column: 9, scope: !2382)
!2382 = distinct !DILexicalBlock(scope: !2383, file: !274, line: 387, column: 9)
!2383 = distinct !DILexicalBlock(scope: !2379, file: !274, line: 387, column: 9)
!2384 = !DILocation(line: 387, column: 9, scope: !2383)
!2385 = !DILocation(line: 394, column: 7, scope: !2343)
!2386 = !DILocation(line: 397, column: 7, scope: !2343)
!2387 = !DILocation(line: 0, scope: !2388)
!2388 = distinct !DILexicalBlock(scope: !2279, file: !274, line: 408, column: 11)
!2389 = !DILocation(line: 0, scope: !2390)
!2390 = distinct !DILexicalBlock(scope: !2391, file: !274, line: 419, column: 15)
!2391 = distinct !DILexicalBlock(scope: !2388, file: !274, line: 418, column: 9)
!2392 = !DILocation(line: 0, scope: !2393)
!2393 = distinct !DILexicalBlock(scope: !2288, file: !274, line: 556, column: 15)
!2394 = !DILocation(line: 0, scope: !2395)
!2395 = distinct !DILexicalBlock(scope: !2288, file: !274, line: 548, column: 15)
!2396 = !DILocation(line: 0, scope: !2302)
!2397 = !DILocation(line: 0, scope: !2309)
!2398 = !DILocation(line: 0, scope: !2399)
!2399 = distinct !DILexicalBlock(scope: !2288, file: !274, line: 509, column: 15)
!2400 = !DILocation(line: 400, column: 8, scope: !2281)
!2401 = !DILocation(line: 0, scope: !2281)
!2402 = !DILocation(line: 400, column: 27, scope: !2280)
!2403 = !DILocation(line: 400, column: 19, scope: !2280)
!2404 = !DILocation(line: 400, column: 41, scope: !2280)
!2405 = !DILocation(line: 400, column: 48, scope: !2280)
!2406 = !DILocation(line: 400, column: 3, scope: !2281)
!2407 = !DILocation(line: 400, column: 60, scope: !2280)
!2408 = !DILocation(line: 0, scope: !2279)
!2409 = !DILocation(line: 409, column: 11, scope: !2388)
!2410 = !DILocation(line: 411, column: 17, scope: !2388)
!2411 = !DILocation(line: 412, column: 39, scope: !2388)
!2412 = !DILocation(line: 416, column: 32, scope: !2388)
!2413 = !DILocation(line: 412, column: 19, scope: !2388)
!2414 = !DILocation(line: 412, column: 15, scope: !2388)
!2415 = !DILocation(line: 417, column: 11, scope: !2388)
!2416 = !DILocation(line: 417, column: 26, scope: !2388)
!2417 = !DILocation(line: 417, column: 14, scope: !2388)
!2418 = !DILocation(line: 417, column: 63, scope: !2388)
!2419 = !DILocation(line: 408, column: 11, scope: !2279)
!2420 = !DILocation(line: 424, column: 11, scope: !2279)
!2421 = !DILocation(line: 425, column: 7, scope: !2279)
!2422 = !DILocation(line: 428, column: 15, scope: !2288)
!2423 = !DILocation(line: 430, column: 15, scope: !2424)
!2424 = distinct !DILexicalBlock(scope: !2425, file: !274, line: 430, column: 15)
!2425 = distinct !DILexicalBlock(scope: !2327, file: !274, line: 429, column: 13)
!2426 = !DILocation(line: 430, column: 15, scope: !2427)
!2427 = distinct !DILexicalBlock(scope: !2424, file: !274, line: 430, column: 15)
!2428 = !DILocation(line: 430, column: 15, scope: !2429)
!2429 = distinct !DILexicalBlock(scope: !2430, file: !274, line: 430, column: 15)
!2430 = distinct !DILexicalBlock(scope: !2431, file: !274, line: 430, column: 15)
!2431 = distinct !DILexicalBlock(scope: !2427, file: !274, line: 430, column: 15)
!2432 = !DILocation(line: 430, column: 15, scope: !2430)
!2433 = !DILocation(line: 430, column: 15, scope: !2434)
!2434 = distinct !DILexicalBlock(scope: !2435, file: !274, line: 430, column: 15)
!2435 = distinct !DILexicalBlock(scope: !2431, file: !274, line: 430, column: 15)
!2436 = !DILocation(line: 430, column: 15, scope: !2435)
!2437 = !DILocation(line: 430, column: 15, scope: !2438)
!2438 = distinct !DILexicalBlock(scope: !2439, file: !274, line: 430, column: 15)
!2439 = distinct !DILexicalBlock(scope: !2431, file: !274, line: 430, column: 15)
!2440 = !DILocation(line: 430, column: 15, scope: !2439)
!2441 = !DILocation(line: 430, column: 15, scope: !2431)
!2442 = !DILocation(line: 430, column: 15, scope: !2443)
!2443 = distinct !DILexicalBlock(scope: !2444, file: !274, line: 430, column: 15)
!2444 = distinct !DILexicalBlock(scope: !2424, file: !274, line: 430, column: 15)
!2445 = !DILocation(line: 430, column: 15, scope: !2444)
!2446 = !DILocation(line: 438, column: 19, scope: !2447)
!2447 = distinct !DILexicalBlock(scope: !2425, file: !274, line: 437, column: 19)
!2448 = !DILocation(line: 438, column: 24, scope: !2447)
!2449 = !DILocation(line: 438, column: 28, scope: !2447)
!2450 = !DILocation(line: 438, column: 38, scope: !2447)
!2451 = !DILocation(line: 438, column: 48, scope: !2447)
!2452 = !DILocation(line: 438, column: 59, scope: !2447)
!2453 = !DILocation(line: 440, column: 19, scope: !2454)
!2454 = distinct !DILexicalBlock(scope: !2455, file: !274, line: 440, column: 19)
!2455 = distinct !DILexicalBlock(scope: !2456, file: !274, line: 440, column: 19)
!2456 = distinct !DILexicalBlock(scope: !2447, file: !274, line: 439, column: 17)
!2457 = !DILocation(line: 440, column: 19, scope: !2455)
!2458 = !DILocation(line: 441, column: 19, scope: !2459)
!2459 = distinct !DILexicalBlock(scope: !2460, file: !274, line: 441, column: 19)
!2460 = distinct !DILexicalBlock(scope: !2456, file: !274, line: 441, column: 19)
!2461 = !DILocation(line: 441, column: 19, scope: !2460)
!2462 = !DILocation(line: 442, column: 17, scope: !2456)
!2463 = !DILocation(line: 449, column: 20, scope: !2327)
!2464 = !DILocation(line: 454, column: 11, scope: !2288)
!2465 = !DILocation(line: 457, column: 19, scope: !2324)
!2466 = !DILocation(line: 463, column: 19, scope: !2323)
!2467 = !DILocation(line: 463, column: 24, scope: !2323)
!2468 = !DILocation(line: 463, column: 28, scope: !2323)
!2469 = !DILocation(line: 463, column: 38, scope: !2323)
!2470 = !DILocation(line: 463, column: 47, scope: !2323)
!2471 = !DILocation(line: 463, column: 41, scope: !2323)
!2472 = !DILocation(line: 463, column: 52, scope: !2323)
!2473 = !DILocation(line: 462, column: 19, scope: !2324)
!2474 = !DILocation(line: 464, column: 25, scope: !2323)
!2475 = !DILocation(line: 464, column: 17, scope: !2323)
!2476 = !DILocation(line: 471, column: 25, scope: !2477)
!2477 = distinct !DILexicalBlock(scope: !2323, file: !274, line: 465, column: 19)
!2478 = !DILocation(line: 475, column: 21, scope: !2479)
!2479 = distinct !DILexicalBlock(scope: !2480, file: !274, line: 475, column: 21)
!2480 = distinct !DILexicalBlock(scope: !2477, file: !274, line: 475, column: 21)
!2481 = !DILocation(line: 475, column: 21, scope: !2480)
!2482 = !DILocation(line: 476, column: 21, scope: !2483)
!2483 = distinct !DILexicalBlock(scope: !2484, file: !274, line: 476, column: 21)
!2484 = distinct !DILexicalBlock(scope: !2477, file: !274, line: 476, column: 21)
!2485 = !DILocation(line: 476, column: 21, scope: !2484)
!2486 = !DILocation(line: 477, column: 21, scope: !2487)
!2487 = distinct !DILexicalBlock(scope: !2488, file: !274, line: 477, column: 21)
!2488 = distinct !DILexicalBlock(scope: !2477, file: !274, line: 477, column: 21)
!2489 = !DILocation(line: 477, column: 21, scope: !2488)
!2490 = !DILocation(line: 478, column: 21, scope: !2491)
!2491 = distinct !DILexicalBlock(scope: !2492, file: !274, line: 478, column: 21)
!2492 = distinct !DILexicalBlock(scope: !2477, file: !274, line: 478, column: 21)
!2493 = !DILocation(line: 478, column: 21, scope: !2492)
!2494 = !DILocation(line: 479, column: 21, scope: !2477)
!2495 = !DILocation(line: 492, column: 31, scope: !2288)
!2496 = !DILocation(line: 493, column: 31, scope: !2288)
!2497 = !DILocation(line: 495, column: 31, scope: !2288)
!2498 = !DILocation(line: 496, column: 31, scope: !2288)
!2499 = !DILocation(line: 497, column: 31, scope: !2288)
!2500 = !DILocation(line: 500, column: 15, scope: !2288)
!2501 = !DILocation(line: 502, column: 19, scope: !2502)
!2502 = distinct !DILexicalBlock(scope: !2503, file: !274, line: 501, column: 13)
!2503 = distinct !DILexicalBlock(scope: !2288, file: !274, line: 500, column: 15)
!2504 = !DILocation(line: 509, column: 33, scope: !2399)
!2505 = !DILocation(line: 0, scope: !2288)
!2506 = !DILocation(line: 512, column: 9, scope: !2288)
!2507 = !DILocation(line: 514, column: 15, scope: !2508)
!2508 = distinct !DILexicalBlock(scope: !2288, file: !274, line: 513, column: 15)
!2509 = !DILocation(line: 517, column: 9, scope: !2288)
!2510 = !DILocation(line: 518, column: 15, scope: !2288)
!2511 = !DILocation(line: 526, column: 15, scope: !2288)
!2512 = !DILocation(line: 526, column: 40, scope: !2321)
!2513 = !DILocation(line: 526, column: 47, scope: !2321)
!2514 = !DILocation(line: 526, column: 18, scope: !2321)
!2515 = !DILocation(line: 530, column: 17, scope: !2516)
!2516 = distinct !DILexicalBlock(scope: !2288, file: !274, line: 530, column: 15)
!2517 = !DILocation(line: 530, column: 15, scope: !2288)
!2518 = !DILocation(line: 535, column: 11, scope: !2288)
!2519 = !DILocation(line: 549, column: 15, scope: !2395)
!2520 = !DILocation(line: 556, column: 15, scope: !2288)
!2521 = !DILocation(line: 558, column: 19, scope: !2522)
!2522 = distinct !DILexicalBlock(scope: !2393, file: !274, line: 557, column: 13)
!2523 = !DILocation(line: 561, column: 19, scope: !2524)
!2524 = distinct !DILexicalBlock(scope: !2522, file: !274, line: 561, column: 19)
!2525 = !DILocation(line: 561, column: 35, scope: !2524)
!2526 = !DILocation(line: 561, column: 30, scope: !2524)
!2527 = !DILocation(line: 570, column: 15, scope: !2528)
!2528 = distinct !DILexicalBlock(scope: !2529, file: !274, line: 570, column: 15)
!2529 = distinct !DILexicalBlock(scope: !2522, file: !274, line: 570, column: 15)
!2530 = !DILocation(line: 570, column: 15, scope: !2529)
!2531 = !DILocation(line: 571, column: 15, scope: !2532)
!2532 = distinct !DILexicalBlock(scope: !2533, file: !274, line: 571, column: 15)
!2533 = distinct !DILexicalBlock(scope: !2522, file: !274, line: 571, column: 15)
!2534 = !DILocation(line: 571, column: 15, scope: !2533)
!2535 = !DILocation(line: 572, column: 15, scope: !2536)
!2536 = distinct !DILexicalBlock(scope: !2537, file: !274, line: 572, column: 15)
!2537 = distinct !DILexicalBlock(scope: !2522, file: !274, line: 572, column: 15)
!2538 = !DILocation(line: 572, column: 15, scope: !2537)
!2539 = !DILocation(line: 574, column: 13, scope: !2522)
!2540 = !DILocation(line: 614, column: 17, scope: !2287)
!2541 = !DILocation(line: 0, scope: !2287)
!2542 = !DILocation(line: 617, column: 29, scope: !2543)
!2543 = distinct !DILexicalBlock(scope: !2292, file: !274, line: 615, column: 15)
!2544 = !DILocation(line: 617, column: 27, scope: !2543)
!2545 = !DILocation(line: 618, column: 15, scope: !2543)
!2546 = !DILocation(line: 621, column: 17, scope: !2291)
!2547 = !DILocation(line: 621, column: 27, scope: !2291)
!2548 = !DILocalVariable(name: "__dest", arg: 1, scope: !2549, file: !1529, line: 59, type: !97)
!2549 = distinct !DISubprogram(name: "memset", scope: !1529, file: !1529, line: 59, type: !1530, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !273, retainedNodes: !2550)
!2550 = !{!2548, !2551, !2552}
!2551 = !DILocalVariable(name: "__ch", arg: 2, scope: !2549, file: !1529, line: 59, type: !44)
!2552 = !DILocalVariable(name: "__len", arg: 3, scope: !2549, file: !1529, line: 59, type: !99)
!2553 = !DILocation(line: 0, scope: !2549, inlinedAt: !2554)
!2554 = distinct !DILocation(line: 622, column: 17, scope: !2291)
!2555 = !DILocation(line: 71, column: 10, scope: !2549, inlinedAt: !2554)
!2556 = !DILocation(line: 626, column: 29, scope: !2557)
!2557 = distinct !DILexicalBlock(scope: !2291, file: !274, line: 626, column: 21)
!2558 = !DILocation(line: 626, column: 21, scope: !2291)
!2559 = !DILocation(line: 627, column: 29, scope: !2557)
!2560 = !DILocation(line: 627, column: 19, scope: !2557)
!2561 = !DILocation(line: 629, column: 17, scope: !2291)
!2562 = !DILocation(line: 624, column: 19, scope: !2291)
!2563 = !DILocation(line: 625, column: 27, scope: !2291)
!2564 = !DILocation(line: 631, column: 21, scope: !2297)
!2565 = !DILocation(line: 632, column: 56, scope: !2297)
!2566 = !DILocation(line: 632, column: 50, scope: !2297)
!2567 = !DILocation(line: 633, column: 53, scope: !2297)
!2568 = !DILocation(line: 632, column: 36, scope: !2297)
!2569 = !DILocation(line: 634, column: 25, scope: !2297)
!2570 = !DILocation(line: 644, column: 38, scope: !2571)
!2571 = distinct !DILexicalBlock(scope: !2304, file: !274, line: 642, column: 23)
!2572 = !DILocation(line: 644, column: 48, scope: !2571)
!2573 = !DILocation(line: 644, column: 25, scope: !2571)
!2574 = !DILocation(line: 644, column: 51, scope: !2571)
!2575 = !DILocation(line: 645, column: 28, scope: !2571)
!2576 = !DILocation(line: 644, column: 34, scope: !2571)
!2577 = distinct !{!2577, !2573, !2575}
!2578 = !DILocation(line: 658, column: 43, scope: !2579)
!2579 = distinct !DILexicalBlock(scope: !2580, file: !274, line: 658, column: 29)
!2580 = distinct !DILexicalBlock(scope: !2301, file: !274, line: 658, column: 29)
!2581 = !DILocation(line: 655, column: 29, scope: !2302)
!2582 = !DILocation(line: 0, scope: !2301)
!2583 = !DILocation(line: 659, column: 49, scope: !2579)
!2584 = !DILocation(line: 659, column: 39, scope: !2579)
!2585 = !DILocation(line: 659, column: 31, scope: !2579)
!2586 = !DILocation(line: 658, column: 53, scope: !2579)
!2587 = !DILocation(line: 658, column: 29, scope: !2580)
!2588 = distinct !{!2588, !2587, !2589}
!2589 = !DILocation(line: 667, column: 33, scope: !2580)
!2590 = !DILocation(line: 674, column: 19, scope: !2291)
!2591 = !DILocation(line: 670, column: 41, scope: !2592)
!2592 = distinct !DILexicalBlock(scope: !2303, file: !274, line: 670, column: 29)
!2593 = !DILocation(line: 670, column: 31, scope: !2592)
!2594 = !DILocation(line: 670, column: 29, scope: !2303)
!2595 = !DILocation(line: 672, column: 27, scope: !2303)
!2596 = !DILocation(line: 675, column: 26, scope: !2291)
!2597 = !DILocation(line: 675, column: 24, scope: !2291)
!2598 = !DILocation(line: 674, column: 19, scope: !2297)
!2599 = distinct !{!2599, !2561, !2600}
!2600 = !DILocation(line: 675, column: 44, scope: !2291)
!2601 = !DILocation(line: 676, column: 15, scope: !2292)
!2602 = !DILocation(line: 0, scope: !2292)
!2603 = !DILocation(line: 678, column: 40, scope: !2287)
!2604 = !DILocation(line: 680, column: 19, scope: !2309)
!2605 = !DILocation(line: 680, column: 45, scope: !2309)
!2606 = !DILocation(line: 680, column: 23, scope: !2309)
!2607 = !DILocation(line: 684, column: 33, scope: !2308)
!2608 = !DILocation(line: 0, scope: !2308)
!2609 = !DILocation(line: 686, column: 17, scope: !2308)
!2610 = !DILocation(line: 405, column: 12, scope: !2279)
!2611 = !DILocation(line: 688, column: 43, scope: !2612)
!2612 = distinct !DILexicalBlock(scope: !2613, file: !274, line: 688, column: 25)
!2613 = distinct !DILexicalBlock(scope: !2614, file: !274, line: 687, column: 19)
!2614 = distinct !DILexicalBlock(scope: !2615, file: !274, line: 686, column: 17)
!2615 = distinct !DILexicalBlock(scope: !2308, file: !274, line: 686, column: 17)
!2616 = !DILocation(line: 690, column: 25, scope: !2617)
!2617 = distinct !DILexicalBlock(scope: !2618, file: !274, line: 690, column: 25)
!2618 = distinct !DILexicalBlock(scope: !2612, file: !274, line: 689, column: 23)
!2619 = !DILocation(line: 690, column: 25, scope: !2620)
!2620 = distinct !DILexicalBlock(scope: !2617, file: !274, line: 690, column: 25)
!2621 = !DILocation(line: 690, column: 25, scope: !2622)
!2622 = distinct !DILexicalBlock(scope: !2623, file: !274, line: 690, column: 25)
!2623 = distinct !DILexicalBlock(scope: !2624, file: !274, line: 690, column: 25)
!2624 = distinct !DILexicalBlock(scope: !2620, file: !274, line: 690, column: 25)
!2625 = !DILocation(line: 690, column: 25, scope: !2623)
!2626 = !DILocation(line: 690, column: 25, scope: !2627)
!2627 = distinct !DILexicalBlock(scope: !2628, file: !274, line: 690, column: 25)
!2628 = distinct !DILexicalBlock(scope: !2624, file: !274, line: 690, column: 25)
!2629 = !DILocation(line: 690, column: 25, scope: !2628)
!2630 = !DILocation(line: 690, column: 25, scope: !2631)
!2631 = distinct !DILexicalBlock(scope: !2632, file: !274, line: 690, column: 25)
!2632 = distinct !DILexicalBlock(scope: !2624, file: !274, line: 690, column: 25)
!2633 = !DILocation(line: 690, column: 25, scope: !2632)
!2634 = !DILocation(line: 690, column: 25, scope: !2624)
!2635 = !DILocation(line: 690, column: 25, scope: !2636)
!2636 = distinct !DILexicalBlock(scope: !2637, file: !274, line: 690, column: 25)
!2637 = distinct !DILexicalBlock(scope: !2617, file: !274, line: 690, column: 25)
!2638 = !DILocation(line: 690, column: 25, scope: !2637)
!2639 = !DILocation(line: 691, column: 25, scope: !2640)
!2640 = distinct !DILexicalBlock(scope: !2641, file: !274, line: 691, column: 25)
!2641 = distinct !DILexicalBlock(scope: !2618, file: !274, line: 691, column: 25)
!2642 = !DILocation(line: 691, column: 25, scope: !2641)
!2643 = !DILocation(line: 692, column: 25, scope: !2644)
!2644 = distinct !DILexicalBlock(scope: !2645, file: !274, line: 692, column: 25)
!2645 = distinct !DILexicalBlock(scope: !2618, file: !274, line: 692, column: 25)
!2646 = !DILocation(line: 692, column: 25, scope: !2645)
!2647 = !DILocation(line: 693, column: 38, scope: !2618)
!2648 = !DILocation(line: 693, column: 33, scope: !2618)
!2649 = !DILocation(line: 694, column: 23, scope: !2618)
!2650 = !DILocation(line: 695, column: 30, scope: !2651)
!2651 = distinct !DILexicalBlock(scope: !2612, file: !274, line: 695, column: 30)
!2652 = !DILocation(line: 695, column: 30, scope: !2612)
!2653 = !DILocation(line: 697, column: 25, scope: !2654)
!2654 = distinct !DILexicalBlock(scope: !2655, file: !274, line: 697, column: 25)
!2655 = distinct !DILexicalBlock(scope: !2656, file: !274, line: 697, column: 25)
!2656 = distinct !DILexicalBlock(scope: !2651, file: !274, line: 696, column: 23)
!2657 = !DILocation(line: 697, column: 25, scope: !2655)
!2658 = !DILocation(line: 699, column: 23, scope: !2656)
!2659 = !DILocation(line: 700, column: 35, scope: !2660)
!2660 = distinct !DILexicalBlock(scope: !2613, file: !274, line: 700, column: 25)
!2661 = !DILocation(line: 700, column: 30, scope: !2660)
!2662 = !DILocation(line: 700, column: 25, scope: !2613)
!2663 = !DILocation(line: 702, column: 21, scope: !2664)
!2664 = distinct !DILexicalBlock(scope: !2665, file: !274, line: 702, column: 21)
!2665 = distinct !DILexicalBlock(scope: !2613, file: !274, line: 702, column: 21)
!2666 = !DILocation(line: 702, column: 21, scope: !2667)
!2667 = distinct !DILexicalBlock(scope: !2668, file: !274, line: 702, column: 21)
!2668 = distinct !DILexicalBlock(scope: !2669, file: !274, line: 702, column: 21)
!2669 = distinct !DILexicalBlock(scope: !2664, file: !274, line: 702, column: 21)
!2670 = !DILocation(line: 702, column: 21, scope: !2668)
!2671 = !DILocation(line: 702, column: 21, scope: !2672)
!2672 = distinct !DILexicalBlock(scope: !2673, file: !274, line: 702, column: 21)
!2673 = distinct !DILexicalBlock(scope: !2669, file: !274, line: 702, column: 21)
!2674 = !DILocation(line: 702, column: 21, scope: !2673)
!2675 = !DILocation(line: 702, column: 21, scope: !2669)
!2676 = !DILocation(line: 0, scope: !2613)
!2677 = !DILocation(line: 703, column: 21, scope: !2678)
!2678 = distinct !DILexicalBlock(scope: !2679, file: !274, line: 703, column: 21)
!2679 = distinct !DILexicalBlock(scope: !2613, file: !274, line: 703, column: 21)
!2680 = !DILocation(line: 703, column: 21, scope: !2679)
!2681 = !DILocation(line: 704, column: 25, scope: !2613)
!2682 = !DILocation(line: 686, column: 17, scope: !2614)
!2683 = distinct !{!2683, !2684, !2685}
!2684 = !DILocation(line: 686, column: 17, scope: !2615)
!2685 = !DILocation(line: 705, column: 19, scope: !2615)
!2686 = !DILocation(line: 416, column: 30, scope: !2388)
!2687 = !DILocation(line: 712, column: 34, scope: !2331)
!2688 = !DILocation(line: 715, column: 35, scope: !2331)
!2689 = !DILocation(line: 715, column: 17, scope: !2331)
!2690 = !DILocation(line: 715, column: 47, scope: !2331)
!2691 = !DILocation(line: 715, column: 65, scope: !2331)
!2692 = !DILocation(line: 716, column: 15, scope: !2331)
!2693 = !DILocation(line: 716, column: 11, scope: !2331)
!2694 = !DILocation(line: 712, column: 11, scope: !2279)
!2695 = !DILocation(line: 400, column: 10, scope: !2281)
!2696 = !DILocation(line: 719, column: 5, scope: !2279)
!2697 = !DILocation(line: 720, column: 7, scope: !2698)
!2698 = distinct !DILexicalBlock(scope: !2279, file: !274, line: 720, column: 7)
!2699 = !DILocation(line: 720, column: 7, scope: !2700)
!2700 = distinct !DILexicalBlock(scope: !2698, file: !274, line: 720, column: 7)
!2701 = !DILocation(line: 720, column: 7, scope: !2702)
!2702 = distinct !DILexicalBlock(scope: !2703, file: !274, line: 720, column: 7)
!2703 = distinct !DILexicalBlock(scope: !2704, file: !274, line: 720, column: 7)
!2704 = distinct !DILexicalBlock(scope: !2700, file: !274, line: 720, column: 7)
!2705 = !DILocation(line: 720, column: 7, scope: !2703)
!2706 = !DILocation(line: 720, column: 7, scope: !2707)
!2707 = distinct !DILexicalBlock(scope: !2708, file: !274, line: 720, column: 7)
!2708 = distinct !DILexicalBlock(scope: !2704, file: !274, line: 720, column: 7)
!2709 = !DILocation(line: 720, column: 7, scope: !2708)
!2710 = !DILocation(line: 720, column: 7, scope: !2711)
!2711 = distinct !DILexicalBlock(scope: !2712, file: !274, line: 720, column: 7)
!2712 = distinct !DILexicalBlock(scope: !2704, file: !274, line: 720, column: 7)
!2713 = !DILocation(line: 720, column: 7, scope: !2712)
!2714 = !DILocation(line: 720, column: 7, scope: !2704)
!2715 = !DILocation(line: 720, column: 7, scope: !2716)
!2716 = distinct !DILexicalBlock(scope: !2717, file: !274, line: 720, column: 7)
!2717 = distinct !DILexicalBlock(scope: !2698, file: !274, line: 720, column: 7)
!2718 = !DILocation(line: 720, column: 7, scope: !2717)
!2719 = !DILocation(line: 722, column: 5, scope: !2279)
!2720 = !DILocation(line: 723, column: 7, scope: !2721)
!2721 = distinct !DILexicalBlock(scope: !2722, file: !274, line: 723, column: 7)
!2722 = distinct !DILexicalBlock(scope: !2279, file: !274, line: 723, column: 7)
!2723 = !DILocation(line: 424, column: 9, scope: !2279)
!2724 = !DILocation(line: 723, column: 7, scope: !2725)
!2725 = distinct !DILexicalBlock(scope: !2726, file: !274, line: 723, column: 7)
!2726 = distinct !DILexicalBlock(scope: !2727, file: !274, line: 723, column: 7)
!2727 = distinct !DILexicalBlock(scope: !2721, file: !274, line: 723, column: 7)
!2728 = !DILocation(line: 723, column: 7, scope: !2726)
!2729 = !DILocation(line: 723, column: 7, scope: !2730)
!2730 = distinct !DILexicalBlock(scope: !2731, file: !274, line: 723, column: 7)
!2731 = distinct !DILexicalBlock(scope: !2727, file: !274, line: 723, column: 7)
!2732 = !DILocation(line: 723, column: 7, scope: !2731)
!2733 = !DILocation(line: 723, column: 7, scope: !2727)
!2734 = !DILocation(line: 724, column: 7, scope: !2735)
!2735 = distinct !DILexicalBlock(scope: !2736, file: !274, line: 724, column: 7)
!2736 = distinct !DILexicalBlock(scope: !2279, file: !274, line: 724, column: 7)
!2737 = !DILocation(line: 724, column: 7, scope: !2736)
!2738 = !DILocation(line: 726, column: 13, scope: !2739)
!2739 = distinct !DILexicalBlock(scope: !2279, file: !274, line: 726, column: 11)
!2740 = !DILocation(line: 726, column: 11, scope: !2279)
!2741 = !DILocation(line: 728, column: 5, scope: !2280)
!2742 = !DILocation(line: 400, column: 75, scope: !2280)
!2743 = !DILocation(line: 400, column: 3, scope: !2280)
!2744 = distinct !{!2744, !2406, !2745}
!2745 = !DILocation(line: 728, column: 5, scope: !2281)
!2746 = !DILocation(line: 730, column: 11, scope: !2747)
!2747 = distinct !DILexicalBlock(scope: !2252, file: !274, line: 730, column: 7)
!2748 = !DILocation(line: 730, column: 16, scope: !2747)
!2749 = !DILocation(line: 738, column: 51, scope: !2750)
!2750 = distinct !DILexicalBlock(scope: !2252, file: !274, line: 738, column: 7)
!2751 = !DILocation(line: 739, column: 10, scope: !2750)
!2752 = !DILocation(line: 741, column: 11, scope: !2753)
!2753 = distinct !DILexicalBlock(scope: !2754, file: !274, line: 741, column: 11)
!2754 = distinct !DILexicalBlock(scope: !2750, file: !274, line: 740, column: 5)
!2755 = !DILocation(line: 741, column: 11, scope: !2754)
!2756 = !DILocation(line: 742, column: 16, scope: !2753)
!2757 = !DILocation(line: 742, column: 9, scope: !2753)
!2758 = !DILocation(line: 746, column: 18, scope: !2759)
!2759 = distinct !DILexicalBlock(scope: !2753, file: !274, line: 746, column: 16)
!2760 = !DILocation(line: 746, column: 32, scope: !2759)
!2761 = !DILocation(line: 746, column: 29, scope: !2759)
!2762 = !DILocation(line: 755, column: 7, scope: !2763)
!2763 = distinct !DILexicalBlock(scope: !2252, file: !274, line: 755, column: 7)
!2764 = !DILocation(line: 755, column: 20, scope: !2763)
!2765 = !DILocation(line: 756, column: 12, scope: !2766)
!2766 = distinct !DILexicalBlock(scope: !2767, file: !274, line: 756, column: 5)
!2767 = distinct !DILexicalBlock(scope: !2763, file: !274, line: 756, column: 5)
!2768 = !DILocation(line: 756, column: 5, scope: !2767)
!2769 = !DILocation(line: 757, column: 7, scope: !2770)
!2770 = distinct !DILexicalBlock(scope: !2771, file: !274, line: 757, column: 7)
!2771 = distinct !DILexicalBlock(scope: !2766, file: !274, line: 757, column: 7)
!2772 = !DILocation(line: 757, column: 7, scope: !2771)
!2773 = !DILocation(line: 756, column: 39, scope: !2766)
!2774 = distinct !{!2774, !2768, !2775}
!2775 = !DILocation(line: 757, column: 7, scope: !2767)
!2776 = !DILocation(line: 759, column: 11, scope: !2777)
!2777 = distinct !DILexicalBlock(scope: !2252, file: !274, line: 759, column: 7)
!2778 = !DILocation(line: 759, column: 7, scope: !2252)
!2779 = !DILocation(line: 760, column: 5, scope: !2777)
!2780 = !DILocation(line: 760, column: 17, scope: !2777)
!2781 = !DILocation(line: 763, column: 2, scope: !2252)
!2782 = !DILocation(line: 766, column: 51, scope: !2783)
!2783 = distinct !DILexicalBlock(scope: !2252, file: !274, line: 766, column: 7)
!2784 = !DILocation(line: 766, column: 21, scope: !2783)
!2785 = !DILocation(line: 770, column: 42, scope: !2252)
!2786 = !DILocation(line: 768, column: 10, scope: !2252)
!2787 = !DILocation(line: 768, column: 3, scope: !2252)
!2788 = !DILocation(line: 772, column: 1, scope: !2252)
!2789 = distinct !DISubprogram(name: "gettext_quote", scope: !274, file: !274, line: 207, type: !2790, scopeLine: 208, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !273, retainedNodes: !2792)
!2790 = !DISubroutineType(types: !2791)
!2791 = !{!42, !42, !5}
!2792 = !{!2793, !2794, !2795, !2796}
!2793 = !DILocalVariable(name: "msgid", arg: 1, scope: !2789, file: !274, line: 207, type: !42)
!2794 = !DILocalVariable(name: "s", arg: 2, scope: !2789, file: !274, line: 207, type: !5)
!2795 = !DILocalVariable(name: "translation", scope: !2789, file: !274, line: 209, type: !42)
!2796 = !DILocalVariable(name: "locale_code", scope: !2789, file: !274, line: 210, type: !42)
!2797 = !DILocation(line: 0, scope: !2789)
!2798 = !DILocation(line: 209, column: 29, scope: !2789)
!2799 = !DILocation(line: 212, column: 19, scope: !2800)
!2800 = distinct !DILexicalBlock(scope: !2789, file: !274, line: 212, column: 7)
!2801 = !DILocation(line: 212, column: 7, scope: !2789)
!2802 = !DILocation(line: 233, column: 17, scope: !2789)
!2803 = !DILocalVariable(name: "s1", arg: 1, scope: !2804, file: !2805, line: 160, type: !42)
!2804 = distinct !DISubprogram(name: "strcaseeq0", scope: !2805, file: !2805, line: 160, type: !2806, scopeLine: 161, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !273, retainedNodes: !2808)
!2805 = !DIFile(filename: "./lib/c-strcaseeq.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!2806 = !DISubroutineType(types: !2807)
!2807 = !{!44, !42, !42, !41, !41, !41, !41, !41, !41, !41, !41, !41}
!2808 = !{!2803, !2809, !2810, !2811, !2812, !2813, !2814, !2815, !2816, !2817, !2818}
!2809 = !DILocalVariable(name: "s2", arg: 2, scope: !2804, file: !2805, line: 160, type: !42)
!2810 = !DILocalVariable(name: "s20", arg: 3, scope: !2804, file: !2805, line: 160, type: !41)
!2811 = !DILocalVariable(name: "s21", arg: 4, scope: !2804, file: !2805, line: 160, type: !41)
!2812 = !DILocalVariable(name: "s22", arg: 5, scope: !2804, file: !2805, line: 160, type: !41)
!2813 = !DILocalVariable(name: "s23", arg: 6, scope: !2804, file: !2805, line: 160, type: !41)
!2814 = !DILocalVariable(name: "s24", arg: 7, scope: !2804, file: !2805, line: 160, type: !41)
!2815 = !DILocalVariable(name: "s25", arg: 8, scope: !2804, file: !2805, line: 160, type: !41)
!2816 = !DILocalVariable(name: "s26", arg: 9, scope: !2804, file: !2805, line: 160, type: !41)
!2817 = !DILocalVariable(name: "s27", arg: 10, scope: !2804, file: !2805, line: 160, type: !41)
!2818 = !DILocalVariable(name: "s28", arg: 11, scope: !2804, file: !2805, line: 160, type: !41)
!2819 = !DILocation(line: 0, scope: !2804, inlinedAt: !2820)
!2820 = distinct !DILocation(line: 234, column: 7, scope: !2821)
!2821 = distinct !DILexicalBlock(scope: !2789, file: !274, line: 234, column: 7)
!2822 = !DILocation(line: 162, column: 7, scope: !2823, inlinedAt: !2820)
!2823 = distinct !DILexicalBlock(scope: !2804, file: !2805, line: 162, column: 7)
!2824 = !DILocalVariable(name: "s1", arg: 1, scope: !2825, file: !2805, line: 146, type: !42)
!2825 = distinct !DISubprogram(name: "strcaseeq1", scope: !2805, file: !2805, line: 146, type: !2826, scopeLine: 147, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !273, retainedNodes: !2828)
!2826 = !DISubroutineType(types: !2827)
!2827 = !{!44, !42, !42, !41, !41, !41, !41, !41, !41, !41, !41}
!2828 = !{!2824, !2829, !2830, !2831, !2832, !2833, !2834, !2835, !2836, !2837}
!2829 = !DILocalVariable(name: "s2", arg: 2, scope: !2825, file: !2805, line: 146, type: !42)
!2830 = !DILocalVariable(name: "s21", arg: 3, scope: !2825, file: !2805, line: 146, type: !41)
!2831 = !DILocalVariable(name: "s22", arg: 4, scope: !2825, file: !2805, line: 146, type: !41)
!2832 = !DILocalVariable(name: "s23", arg: 5, scope: !2825, file: !2805, line: 146, type: !41)
!2833 = !DILocalVariable(name: "s24", arg: 6, scope: !2825, file: !2805, line: 146, type: !41)
!2834 = !DILocalVariable(name: "s25", arg: 7, scope: !2825, file: !2805, line: 146, type: !41)
!2835 = !DILocalVariable(name: "s26", arg: 8, scope: !2825, file: !2805, line: 146, type: !41)
!2836 = !DILocalVariable(name: "s27", arg: 9, scope: !2825, file: !2805, line: 146, type: !41)
!2837 = !DILocalVariable(name: "s28", arg: 10, scope: !2825, file: !2805, line: 146, type: !41)
!2838 = !DILocation(line: 0, scope: !2825, inlinedAt: !2839)
!2839 = distinct !DILocation(line: 167, column: 16, scope: !2840, inlinedAt: !2820)
!2840 = distinct !DILexicalBlock(scope: !2841, file: !2805, line: 164, column: 11)
!2841 = distinct !DILexicalBlock(scope: !2823, file: !2805, line: 163, column: 5)
!2842 = !DILocation(line: 148, column: 7, scope: !2843, inlinedAt: !2839)
!2843 = distinct !DILexicalBlock(scope: !2825, file: !2805, line: 148, column: 7)
!2844 = !DILocalVariable(name: "s1", arg: 1, scope: !2845, file: !2805, line: 132, type: !42)
!2845 = distinct !DISubprogram(name: "strcaseeq2", scope: !2805, file: !2805, line: 132, type: !2846, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !273, retainedNodes: !2848)
!2846 = !DISubroutineType(types: !2847)
!2847 = !{!44, !42, !42, !41, !41, !41, !41, !41, !41, !41}
!2848 = !{!2844, !2849, !2850, !2851, !2852, !2853, !2854, !2855, !2856}
!2849 = !DILocalVariable(name: "s2", arg: 2, scope: !2845, file: !2805, line: 132, type: !42)
!2850 = !DILocalVariable(name: "s22", arg: 3, scope: !2845, file: !2805, line: 132, type: !41)
!2851 = !DILocalVariable(name: "s23", arg: 4, scope: !2845, file: !2805, line: 132, type: !41)
!2852 = !DILocalVariable(name: "s24", arg: 5, scope: !2845, file: !2805, line: 132, type: !41)
!2853 = !DILocalVariable(name: "s25", arg: 6, scope: !2845, file: !2805, line: 132, type: !41)
!2854 = !DILocalVariable(name: "s26", arg: 7, scope: !2845, file: !2805, line: 132, type: !41)
!2855 = !DILocalVariable(name: "s27", arg: 8, scope: !2845, file: !2805, line: 132, type: !41)
!2856 = !DILocalVariable(name: "s28", arg: 9, scope: !2845, file: !2805, line: 132, type: !41)
!2857 = !DILocation(line: 0, scope: !2845, inlinedAt: !2858)
!2858 = distinct !DILocation(line: 153, column: 16, scope: !2859, inlinedAt: !2839)
!2859 = distinct !DILexicalBlock(scope: !2860, file: !2805, line: 150, column: 11)
!2860 = distinct !DILexicalBlock(scope: !2843, file: !2805, line: 149, column: 5)
!2861 = !DILocation(line: 134, column: 7, scope: !2862, inlinedAt: !2858)
!2862 = distinct !DILexicalBlock(scope: !2845, file: !2805, line: 134, column: 7)
!2863 = !DILocalVariable(name: "s1", arg: 1, scope: !2864, file: !2805, line: 118, type: !42)
!2864 = distinct !DISubprogram(name: "strcaseeq3", scope: !2805, file: !2805, line: 118, type: !2865, scopeLine: 119, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !273, retainedNodes: !2867)
!2865 = !DISubroutineType(types: !2866)
!2866 = !{!44, !42, !42, !41, !41, !41, !41, !41, !41}
!2867 = !{!2863, !2868, !2869, !2870, !2871, !2872, !2873, !2874}
!2868 = !DILocalVariable(name: "s2", arg: 2, scope: !2864, file: !2805, line: 118, type: !42)
!2869 = !DILocalVariable(name: "s23", arg: 3, scope: !2864, file: !2805, line: 118, type: !41)
!2870 = !DILocalVariable(name: "s24", arg: 4, scope: !2864, file: !2805, line: 118, type: !41)
!2871 = !DILocalVariable(name: "s25", arg: 5, scope: !2864, file: !2805, line: 118, type: !41)
!2872 = !DILocalVariable(name: "s26", arg: 6, scope: !2864, file: !2805, line: 118, type: !41)
!2873 = !DILocalVariable(name: "s27", arg: 7, scope: !2864, file: !2805, line: 118, type: !41)
!2874 = !DILocalVariable(name: "s28", arg: 8, scope: !2864, file: !2805, line: 118, type: !41)
!2875 = !DILocation(line: 0, scope: !2864, inlinedAt: !2876)
!2876 = distinct !DILocation(line: 139, column: 16, scope: !2877, inlinedAt: !2858)
!2877 = distinct !DILexicalBlock(scope: !2878, file: !2805, line: 136, column: 11)
!2878 = distinct !DILexicalBlock(scope: !2862, file: !2805, line: 135, column: 5)
!2879 = !DILocation(line: 120, column: 7, scope: !2880, inlinedAt: !2876)
!2880 = distinct !DILexicalBlock(scope: !2864, file: !2805, line: 120, column: 7)
!2881 = !DILocation(line: 120, column: 7, scope: !2864, inlinedAt: !2876)
!2882 = !DILocalVariable(name: "s1", arg: 1, scope: !2883, file: !2805, line: 104, type: !42)
!2883 = distinct !DISubprogram(name: "strcaseeq4", scope: !2805, file: !2805, line: 104, type: !2884, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !273, retainedNodes: !2886)
!2884 = !DISubroutineType(types: !2885)
!2885 = !{!44, !42, !42, !41, !41, !41, !41, !41}
!2886 = !{!2882, !2887, !2888, !2889, !2890, !2891, !2892}
!2887 = !DILocalVariable(name: "s2", arg: 2, scope: !2883, file: !2805, line: 104, type: !42)
!2888 = !DILocalVariable(name: "s24", arg: 3, scope: !2883, file: !2805, line: 104, type: !41)
!2889 = !DILocalVariable(name: "s25", arg: 4, scope: !2883, file: !2805, line: 104, type: !41)
!2890 = !DILocalVariable(name: "s26", arg: 5, scope: !2883, file: !2805, line: 104, type: !41)
!2891 = !DILocalVariable(name: "s27", arg: 6, scope: !2883, file: !2805, line: 104, type: !41)
!2892 = !DILocalVariable(name: "s28", arg: 7, scope: !2883, file: !2805, line: 104, type: !41)
!2893 = !DILocation(line: 0, scope: !2883, inlinedAt: !2894)
!2894 = distinct !DILocation(line: 125, column: 16, scope: !2895, inlinedAt: !2876)
!2895 = distinct !DILexicalBlock(scope: !2896, file: !2805, line: 122, column: 11)
!2896 = distinct !DILexicalBlock(scope: !2880, file: !2805, line: 121, column: 5)
!2897 = !DILocation(line: 106, column: 7, scope: !2898, inlinedAt: !2894)
!2898 = distinct !DILexicalBlock(scope: !2883, file: !2805, line: 106, column: 7)
!2899 = !DILocation(line: 106, column: 7, scope: !2883, inlinedAt: !2894)
!2900 = !DILocalVariable(name: "s1", arg: 1, scope: !2901, file: !2805, line: 90, type: !42)
!2901 = distinct !DISubprogram(name: "strcaseeq5", scope: !2805, file: !2805, line: 90, type: !2902, scopeLine: 91, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !273, retainedNodes: !2904)
!2902 = !DISubroutineType(types: !2903)
!2903 = !{!44, !42, !42, !41, !41, !41, !41}
!2904 = !{!2900, !2905, !2906, !2907, !2908, !2909}
!2905 = !DILocalVariable(name: "s2", arg: 2, scope: !2901, file: !2805, line: 90, type: !42)
!2906 = !DILocalVariable(name: "s25", arg: 3, scope: !2901, file: !2805, line: 90, type: !41)
!2907 = !DILocalVariable(name: "s26", arg: 4, scope: !2901, file: !2805, line: 90, type: !41)
!2908 = !DILocalVariable(name: "s27", arg: 5, scope: !2901, file: !2805, line: 90, type: !41)
!2909 = !DILocalVariable(name: "s28", arg: 6, scope: !2901, file: !2805, line: 90, type: !41)
!2910 = !DILocation(line: 0, scope: !2901, inlinedAt: !2911)
!2911 = distinct !DILocation(line: 111, column: 16, scope: !2912, inlinedAt: !2894)
!2912 = distinct !DILexicalBlock(scope: !2913, file: !2805, line: 108, column: 11)
!2913 = distinct !DILexicalBlock(scope: !2898, file: !2805, line: 107, column: 5)
!2914 = !DILocation(line: 92, column: 7, scope: !2915, inlinedAt: !2911)
!2915 = distinct !DILexicalBlock(scope: !2901, file: !2805, line: 92, column: 7)
!2916 = !DILocation(line: 92, column: 7, scope: !2901, inlinedAt: !2911)
!2917 = !DILocation(line: 235, column: 12, scope: !2821)
!2918 = !DILocation(line: 235, column: 21, scope: !2821)
!2919 = !DILocation(line: 235, column: 5, scope: !2821)
!2920 = !DILocation(line: 0, scope: !2825, inlinedAt: !2921)
!2921 = distinct !DILocation(line: 167, column: 16, scope: !2840, inlinedAt: !2922)
!2922 = distinct !DILocation(line: 236, column: 7, scope: !2923)
!2923 = distinct !DILexicalBlock(scope: !2789, file: !274, line: 236, column: 7)
!2924 = !DILocation(line: 148, column: 7, scope: !2843, inlinedAt: !2921)
!2925 = !DILocation(line: 0, scope: !2845, inlinedAt: !2926)
!2926 = distinct !DILocation(line: 153, column: 16, scope: !2859, inlinedAt: !2921)
!2927 = !DILocation(line: 134, column: 7, scope: !2862, inlinedAt: !2926)
!2928 = !DILocation(line: 134, column: 7, scope: !2845, inlinedAt: !2926)
!2929 = !DILocation(line: 0, scope: !2864, inlinedAt: !2930)
!2930 = distinct !DILocation(line: 139, column: 16, scope: !2877, inlinedAt: !2926)
!2931 = !DILocation(line: 120, column: 7, scope: !2880, inlinedAt: !2930)
!2932 = !DILocation(line: 120, column: 7, scope: !2864, inlinedAt: !2930)
!2933 = !DILocation(line: 0, scope: !2883, inlinedAt: !2934)
!2934 = distinct !DILocation(line: 125, column: 16, scope: !2895, inlinedAt: !2930)
!2935 = !DILocation(line: 106, column: 7, scope: !2898, inlinedAt: !2934)
!2936 = !DILocation(line: 106, column: 7, scope: !2883, inlinedAt: !2934)
!2937 = !DILocation(line: 0, scope: !2901, inlinedAt: !2938)
!2938 = distinct !DILocation(line: 111, column: 16, scope: !2912, inlinedAt: !2934)
!2939 = !DILocation(line: 92, column: 7, scope: !2915, inlinedAt: !2938)
!2940 = !DILocation(line: 92, column: 7, scope: !2901, inlinedAt: !2938)
!2941 = !DILocalVariable(name: "s1", arg: 1, scope: !2942, file: !2805, line: 76, type: !42)
!2942 = distinct !DISubprogram(name: "strcaseeq6", scope: !2805, file: !2805, line: 76, type: !2943, scopeLine: 77, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !273, retainedNodes: !2945)
!2943 = !DISubroutineType(types: !2944)
!2944 = !{!44, !42, !42, !41, !41, !41}
!2945 = !{!2941, !2946, !2947, !2948, !2949}
!2946 = !DILocalVariable(name: "s2", arg: 2, scope: !2942, file: !2805, line: 76, type: !42)
!2947 = !DILocalVariable(name: "s26", arg: 3, scope: !2942, file: !2805, line: 76, type: !41)
!2948 = !DILocalVariable(name: "s27", arg: 4, scope: !2942, file: !2805, line: 76, type: !41)
!2949 = !DILocalVariable(name: "s28", arg: 5, scope: !2942, file: !2805, line: 76, type: !41)
!2950 = !DILocation(line: 0, scope: !2942, inlinedAt: !2951)
!2951 = distinct !DILocation(line: 97, column: 16, scope: !2952, inlinedAt: !2938)
!2952 = distinct !DILexicalBlock(scope: !2953, file: !2805, line: 94, column: 11)
!2953 = distinct !DILexicalBlock(scope: !2915, file: !2805, line: 93, column: 5)
!2954 = !DILocation(line: 78, column: 7, scope: !2955, inlinedAt: !2951)
!2955 = distinct !DILexicalBlock(scope: !2942, file: !2805, line: 78, column: 7)
!2956 = !DILocation(line: 78, column: 7, scope: !2942, inlinedAt: !2951)
!2957 = !DILocalVariable(name: "s1", arg: 1, scope: !2958, file: !2805, line: 62, type: !42)
!2958 = distinct !DISubprogram(name: "strcaseeq7", scope: !2805, file: !2805, line: 62, type: !2959, scopeLine: 63, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !273, retainedNodes: !2961)
!2959 = !DISubroutineType(types: !2960)
!2960 = !{!44, !42, !42, !41, !41}
!2961 = !{!2957, !2962, !2963, !2964}
!2962 = !DILocalVariable(name: "s2", arg: 2, scope: !2958, file: !2805, line: 62, type: !42)
!2963 = !DILocalVariable(name: "s27", arg: 3, scope: !2958, file: !2805, line: 62, type: !41)
!2964 = !DILocalVariable(name: "s28", arg: 4, scope: !2958, file: !2805, line: 62, type: !41)
!2965 = !DILocation(line: 0, scope: !2958, inlinedAt: !2966)
!2966 = distinct !DILocation(line: 83, column: 16, scope: !2967, inlinedAt: !2951)
!2967 = distinct !DILexicalBlock(scope: !2968, file: !2805, line: 80, column: 11)
!2968 = distinct !DILexicalBlock(scope: !2955, file: !2805, line: 79, column: 5)
!2969 = !DILocation(line: 64, column: 7, scope: !2970, inlinedAt: !2966)
!2970 = distinct !DILexicalBlock(scope: !2958, file: !2805, line: 64, column: 7)
!2971 = !DILocation(line: 236, column: 7, scope: !2789)
!2972 = !DILocation(line: 237, column: 12, scope: !2923)
!2973 = !DILocation(line: 237, column: 21, scope: !2923)
!2974 = !DILocation(line: 237, column: 5, scope: !2923)
!2975 = !DILocation(line: 239, column: 13, scope: !2789)
!2976 = !DILocation(line: 239, column: 11, scope: !2789)
!2977 = !DILocation(line: 239, column: 3, scope: !2789)
!2978 = !DILocation(line: 240, column: 1, scope: !2789)
!2979 = distinct !DISubprogram(name: "quotearg_alloc", scope: !274, file: !274, line: 799, type: !2980, scopeLine: 801, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !273, retainedNodes: !2982)
!2980 = !DISubroutineType(types: !2981)
!2981 = !{!40, !42, !99, !291}
!2982 = !{!2983, !2984, !2985}
!2983 = !DILocalVariable(name: "arg", arg: 1, scope: !2979, file: !274, line: 799, type: !42)
!2984 = !DILocalVariable(name: "argsize", arg: 2, scope: !2979, file: !274, line: 799, type: !99)
!2985 = !DILocalVariable(name: "o", arg: 3, scope: !2979, file: !274, line: 800, type: !291)
!2986 = !DILocation(line: 0, scope: !2979)
!2987 = !DILocalVariable(name: "arg", arg: 1, scope: !2988, file: !274, line: 812, type: !42)
!2988 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !274, file: !274, line: 812, type: !2989, scopeLine: 814, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !273, retainedNodes: !2991)
!2989 = !DISubroutineType(types: !2990)
!2990 = !{!40, !42, !99, !568, !291}
!2991 = !{!2987, !2992, !2993, !2994, !2995, !2996, !2997, !2998, !2999}
!2992 = !DILocalVariable(name: "argsize", arg: 2, scope: !2988, file: !274, line: 812, type: !99)
!2993 = !DILocalVariable(name: "size", arg: 3, scope: !2988, file: !274, line: 812, type: !568)
!2994 = !DILocalVariable(name: "o", arg: 4, scope: !2988, file: !274, line: 813, type: !291)
!2995 = !DILocalVariable(name: "p", scope: !2988, file: !274, line: 815, type: !291)
!2996 = !DILocalVariable(name: "e", scope: !2988, file: !274, line: 816, type: !44)
!2997 = !DILocalVariable(name: "flags", scope: !2988, file: !274, line: 818, type: !44)
!2998 = !DILocalVariable(name: "bufsize", scope: !2988, file: !274, line: 819, type: !99)
!2999 = !DILocalVariable(name: "buf", scope: !2988, file: !274, line: 823, type: !40)
!3000 = !DILocation(line: 0, scope: !2988, inlinedAt: !3001)
!3001 = distinct !DILocation(line: 802, column: 10, scope: !2979)
!3002 = !DILocation(line: 815, column: 37, scope: !2988, inlinedAt: !3001)
!3003 = !DILocation(line: 816, column: 11, scope: !2988, inlinedAt: !3001)
!3004 = !DILocation(line: 818, column: 18, scope: !2988, inlinedAt: !3001)
!3005 = !DILocation(line: 818, column: 24, scope: !2988, inlinedAt: !3001)
!3006 = !DILocation(line: 819, column: 69, scope: !2988, inlinedAt: !3001)
!3007 = !DILocation(line: 820, column: 53, scope: !2988, inlinedAt: !3001)
!3008 = !DILocation(line: 821, column: 49, scope: !2988, inlinedAt: !3001)
!3009 = !DILocation(line: 822, column: 49, scope: !2988, inlinedAt: !3001)
!3010 = !DILocation(line: 819, column: 20, scope: !2988, inlinedAt: !3001)
!3011 = !DILocation(line: 822, column: 62, scope: !2988, inlinedAt: !3001)
!3012 = !DILocalVariable(name: "n", arg: 1, scope: !3013, file: !146, line: 216, type: !99)
!3013 = distinct !DISubprogram(name: "xcharalloc", scope: !146, file: !146, line: 216, type: !3014, scopeLine: 217, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !273, retainedNodes: !3016)
!3014 = !DISubroutineType(types: !3015)
!3015 = !{!40, !99}
!3016 = !{!3012}
!3017 = !DILocation(line: 0, scope: !3013, inlinedAt: !3018)
!3018 = distinct !DILocation(line: 823, column: 15, scope: !2988, inlinedAt: !3001)
!3019 = !DILocation(line: 218, column: 10, scope: !3013, inlinedAt: !3018)
!3020 = !DILocation(line: 824, column: 60, scope: !2988, inlinedAt: !3001)
!3021 = !DILocation(line: 826, column: 32, scope: !2988, inlinedAt: !3001)
!3022 = !DILocation(line: 826, column: 47, scope: !2988, inlinedAt: !3001)
!3023 = !DILocation(line: 824, column: 3, scope: !2988, inlinedAt: !3001)
!3024 = !DILocation(line: 827, column: 9, scope: !2988, inlinedAt: !3001)
!3025 = !DILocation(line: 802, column: 3, scope: !2979)
!3026 = !DILocation(line: 0, scope: !2988)
!3027 = !DILocation(line: 815, column: 37, scope: !2988)
!3028 = !DILocation(line: 816, column: 11, scope: !2988)
!3029 = !DILocation(line: 818, column: 18, scope: !2988)
!3030 = !DILocation(line: 818, column: 27, scope: !2988)
!3031 = !DILocation(line: 818, column: 24, scope: !2988)
!3032 = !DILocation(line: 819, column: 69, scope: !2988)
!3033 = !DILocation(line: 820, column: 53, scope: !2988)
!3034 = !DILocation(line: 821, column: 49, scope: !2988)
!3035 = !DILocation(line: 822, column: 49, scope: !2988)
!3036 = !DILocation(line: 819, column: 20, scope: !2988)
!3037 = !DILocation(line: 822, column: 62, scope: !2988)
!3038 = !DILocation(line: 0, scope: !3013, inlinedAt: !3039)
!3039 = distinct !DILocation(line: 823, column: 15, scope: !2988)
!3040 = !DILocation(line: 218, column: 10, scope: !3013, inlinedAt: !3039)
!3041 = !DILocation(line: 824, column: 60, scope: !2988)
!3042 = !DILocation(line: 826, column: 32, scope: !2988)
!3043 = !DILocation(line: 826, column: 47, scope: !2988)
!3044 = !DILocation(line: 824, column: 3, scope: !2988)
!3045 = !DILocation(line: 827, column: 9, scope: !2988)
!3046 = !DILocation(line: 828, column: 7, scope: !2988)
!3047 = !DILocation(line: 829, column: 11, scope: !3048)
!3048 = distinct !DILexicalBlock(scope: !2988, file: !274, line: 828, column: 7)
!3049 = !{!1480, !1480, i64 0}
!3050 = !DILocation(line: 829, column: 5, scope: !3048)
!3051 = !DILocation(line: 830, column: 3, scope: !2988)
!3052 = distinct !DISubprogram(name: "quotearg_free", scope: !274, file: !274, line: 848, type: !126, scopeLine: 849, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !273, retainedNodes: !3053)
!3053 = !{!3054, !3055}
!3054 = !DILocalVariable(name: "sv", scope: !3052, file: !274, line: 850, type: !364)
!3055 = !DILocalVariable(name: "i", scope: !3052, file: !274, line: 851, type: !44)
!3056 = !DILocation(line: 850, column: 24, scope: !3052)
!3057 = !DILocation(line: 0, scope: !3052)
!3058 = !DILocation(line: 852, column: 19, scope: !3059)
!3059 = distinct !DILexicalBlock(scope: !3060, file: !274, line: 852, column: 3)
!3060 = distinct !DILexicalBlock(scope: !3052, file: !274, line: 852, column: 3)
!3061 = !DILocation(line: 852, column: 17, scope: !3059)
!3062 = !DILocation(line: 852, column: 3, scope: !3060)
!3063 = !DILocation(line: 853, column: 17, scope: !3059)
!3064 = !{!3065, !1264, i64 8}
!3065 = !{!"slotvec", !1480, i64 0, !1264, i64 8}
!3066 = !DILocation(line: 853, column: 5, scope: !3059)
!3067 = !DILocation(line: 852, column: 28, scope: !3059)
!3068 = distinct !{!3068, !3062, !3069}
!3069 = !DILocation(line: 853, column: 20, scope: !3060)
!3070 = !DILocation(line: 854, column: 13, scope: !3071)
!3071 = distinct !DILexicalBlock(scope: !3052, file: !274, line: 854, column: 7)
!3072 = !DILocation(line: 854, column: 17, scope: !3071)
!3073 = !DILocation(line: 854, column: 7, scope: !3052)
!3074 = !DILocation(line: 856, column: 7, scope: !3075)
!3075 = distinct !DILexicalBlock(scope: !3071, file: !274, line: 855, column: 5)
!3076 = !DILocation(line: 857, column: 21, scope: !3075)
!3077 = !{!3065, !1480, i64 0}
!3078 = !DILocation(line: 858, column: 20, scope: !3075)
!3079 = !DILocation(line: 859, column: 5, scope: !3075)
!3080 = !DILocation(line: 860, column: 10, scope: !3081)
!3081 = distinct !DILexicalBlock(scope: !3052, file: !274, line: 860, column: 7)
!3082 = !DILocation(line: 860, column: 7, scope: !3052)
!3083 = !DILocation(line: 862, column: 13, scope: !3084)
!3084 = distinct !DILexicalBlock(scope: !3081, file: !274, line: 861, column: 5)
!3085 = !DILocation(line: 862, column: 7, scope: !3084)
!3086 = !DILocation(line: 863, column: 15, scope: !3084)
!3087 = !DILocation(line: 864, column: 5, scope: !3084)
!3088 = !DILocation(line: 865, column: 10, scope: !3052)
!3089 = !DILocation(line: 866, column: 1, scope: !3052)
!3090 = distinct !DISubprogram(name: "quotearg_n", scope: !274, file: !274, line: 931, type: !113, scopeLine: 932, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !273, retainedNodes: !3091)
!3091 = !{!3092, !3093}
!3092 = !DILocalVariable(name: "n", arg: 1, scope: !3090, file: !274, line: 931, type: !44)
!3093 = !DILocalVariable(name: "arg", arg: 2, scope: !3090, file: !274, line: 931, type: !42)
!3094 = !DILocation(line: 0, scope: !3090)
!3095 = !DILocation(line: 933, column: 10, scope: !3090)
!3096 = !DILocation(line: 933, column: 3, scope: !3090)
!3097 = distinct !DISubprogram(name: "quotearg_n_options", scope: !274, file: !274, line: 877, type: !3098, scopeLine: 879, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !273, retainedNodes: !3100)
!3098 = !DISubroutineType(types: !3099)
!3099 = !{!40, !44, !42, !99, !291}
!3100 = !{!3101, !3102, !3103, !3104, !3105, !3106, !3107, !3110, !3111, !3113, !3114, !3115}
!3101 = !DILocalVariable(name: "n", arg: 1, scope: !3097, file: !274, line: 877, type: !44)
!3102 = !DILocalVariable(name: "arg", arg: 2, scope: !3097, file: !274, line: 877, type: !42)
!3103 = !DILocalVariable(name: "argsize", arg: 3, scope: !3097, file: !274, line: 877, type: !99)
!3104 = !DILocalVariable(name: "options", arg: 4, scope: !3097, file: !274, line: 878, type: !291)
!3105 = !DILocalVariable(name: "e", scope: !3097, file: !274, line: 880, type: !44)
!3106 = !DILocalVariable(name: "sv", scope: !3097, file: !274, line: 882, type: !364)
!3107 = !DILocalVariable(name: "preallocated", scope: !3108, file: !274, line: 889, type: !170)
!3108 = distinct !DILexicalBlock(scope: !3109, file: !274, line: 888, column: 5)
!3109 = distinct !DILexicalBlock(scope: !3097, file: !274, line: 887, column: 7)
!3110 = !DILocalVariable(name: "nmax", scope: !3108, file: !274, line: 890, type: !44)
!3111 = !DILocalVariable(name: "size", scope: !3112, file: !274, line: 903, type: !99)
!3112 = distinct !DILexicalBlock(scope: !3097, file: !274, line: 902, column: 3)
!3113 = !DILocalVariable(name: "val", scope: !3112, file: !274, line: 904, type: !40)
!3114 = !DILocalVariable(name: "flags", scope: !3112, file: !274, line: 906, type: !44)
!3115 = !DILocalVariable(name: "qsize", scope: !3112, file: !274, line: 907, type: !99)
!3116 = !DILocation(line: 0, scope: !3097)
!3117 = !DILocation(line: 880, column: 11, scope: !3097)
!3118 = !DILocation(line: 882, column: 24, scope: !3097)
!3119 = !DILocation(line: 884, column: 9, scope: !3120)
!3120 = distinct !DILexicalBlock(scope: !3097, file: !274, line: 884, column: 7)
!3121 = !DILocation(line: 884, column: 7, scope: !3097)
!3122 = !DILocation(line: 885, column: 5, scope: !3120)
!3123 = !DILocation(line: 887, column: 7, scope: !3109)
!3124 = !DILocation(line: 887, column: 14, scope: !3109)
!3125 = !DILocation(line: 887, column: 7, scope: !3097)
!3126 = !DILocation(line: 889, column: 31, scope: !3108)
!3127 = !DILocation(line: 0, scope: !3108)
!3128 = !DILocation(line: 892, column: 16, scope: !3129)
!3129 = distinct !DILexicalBlock(scope: !3108, file: !274, line: 892, column: 11)
!3130 = !DILocation(line: 892, column: 11, scope: !3108)
!3131 = !DILocation(line: 893, column: 9, scope: !3129)
!3132 = !DILocation(line: 895, column: 32, scope: !3108)
!3133 = !DILocation(line: 895, column: 61, scope: !3108)
!3134 = !DILocation(line: 895, column: 58, scope: !3108)
!3135 = !DILocation(line: 895, column: 66, scope: !3108)
!3136 = !DILocation(line: 895, column: 22, scope: !3108)
!3137 = !DILocation(line: 895, column: 15, scope: !3108)
!3138 = !DILocation(line: 896, column: 11, scope: !3108)
!3139 = !DILocation(line: 897, column: 15, scope: !3140)
!3140 = distinct !DILexicalBlock(scope: !3108, file: !274, line: 896, column: 11)
!3141 = !{i64 0, i64 8, !3049, i64 8, i64 8, !1263}
!3142 = !DILocation(line: 897, column: 9, scope: !3140)
!3143 = !DILocation(line: 898, column: 20, scope: !3108)
!3144 = !DILocation(line: 898, column: 18, scope: !3108)
!3145 = !DILocation(line: 898, column: 15, scope: !3108)
!3146 = !DILocation(line: 898, column: 38, scope: !3108)
!3147 = !DILocation(line: 898, column: 31, scope: !3108)
!3148 = !DILocation(line: 898, column: 48, scope: !3108)
!3149 = !DILocation(line: 0, scope: !2549, inlinedAt: !3150)
!3150 = distinct !DILocation(line: 898, column: 7, scope: !3108)
!3151 = !DILocation(line: 71, column: 10, scope: !2549, inlinedAt: !3150)
!3152 = !DILocation(line: 899, column: 14, scope: !3108)
!3153 = !DILocation(line: 900, column: 5, scope: !3108)
!3154 = !DILocation(line: 903, column: 19, scope: !3112)
!3155 = !DILocation(line: 903, column: 25, scope: !3112)
!3156 = !DILocation(line: 0, scope: !3112)
!3157 = !DILocation(line: 904, column: 23, scope: !3112)
!3158 = !DILocation(line: 906, column: 26, scope: !3112)
!3159 = !DILocation(line: 906, column: 32, scope: !3112)
!3160 = !DILocation(line: 908, column: 55, scope: !3112)
!3161 = !DILocation(line: 909, column: 46, scope: !3112)
!3162 = !DILocation(line: 910, column: 55, scope: !3112)
!3163 = !DILocation(line: 911, column: 55, scope: !3112)
!3164 = !DILocation(line: 907, column: 20, scope: !3112)
!3165 = !DILocation(line: 913, column: 14, scope: !3166)
!3166 = distinct !DILexicalBlock(scope: !3112, file: !274, line: 913, column: 9)
!3167 = !DILocation(line: 913, column: 9, scope: !3112)
!3168 = !DILocation(line: 915, column: 35, scope: !3169)
!3169 = distinct !DILexicalBlock(scope: !3166, file: !274, line: 914, column: 7)
!3170 = !DILocation(line: 915, column: 20, scope: !3169)
!3171 = !DILocation(line: 916, column: 17, scope: !3172)
!3172 = distinct !DILexicalBlock(scope: !3169, file: !274, line: 916, column: 13)
!3173 = !DILocation(line: 916, column: 13, scope: !3169)
!3174 = !DILocation(line: 917, column: 11, scope: !3172)
!3175 = !DILocation(line: 0, scope: !3013, inlinedAt: !3176)
!3176 = distinct !DILocation(line: 918, column: 27, scope: !3169)
!3177 = !DILocation(line: 218, column: 10, scope: !3013, inlinedAt: !3176)
!3178 = !DILocation(line: 918, column: 19, scope: !3169)
!3179 = !DILocation(line: 919, column: 69, scope: !3169)
!3180 = !DILocation(line: 921, column: 44, scope: !3169)
!3181 = !DILocation(line: 922, column: 44, scope: !3169)
!3182 = !DILocation(line: 919, column: 9, scope: !3169)
!3183 = !DILocation(line: 923, column: 7, scope: !3169)
!3184 = !DILocation(line: 925, column: 11, scope: !3112)
!3185 = !DILocation(line: 926, column: 5, scope: !3112)
!3186 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !274, file: !274, line: 937, type: !3187, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !273, retainedNodes: !3189)
!3187 = !DISubroutineType(types: !3188)
!3188 = !{!40, !44, !42, !99}
!3189 = !{!3190, !3191, !3192}
!3190 = !DILocalVariable(name: "n", arg: 1, scope: !3186, file: !274, line: 937, type: !44)
!3191 = !DILocalVariable(name: "arg", arg: 2, scope: !3186, file: !274, line: 937, type: !42)
!3192 = !DILocalVariable(name: "argsize", arg: 3, scope: !3186, file: !274, line: 937, type: !99)
!3193 = !DILocation(line: 0, scope: !3186)
!3194 = !DILocation(line: 939, column: 10, scope: !3186)
!3195 = !DILocation(line: 939, column: 3, scope: !3186)
!3196 = distinct !DISubprogram(name: "quotearg", scope: !274, file: !274, line: 943, type: !119, scopeLine: 944, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !273, retainedNodes: !3197)
!3197 = !{!3198}
!3198 = !DILocalVariable(name: "arg", arg: 1, scope: !3196, file: !274, line: 943, type: !42)
!3199 = !DILocation(line: 0, scope: !3196)
!3200 = !DILocation(line: 0, scope: !3090, inlinedAt: !3201)
!3201 = distinct !DILocation(line: 945, column: 10, scope: !3196)
!3202 = !DILocation(line: 933, column: 10, scope: !3090, inlinedAt: !3201)
!3203 = !DILocation(line: 945, column: 3, scope: !3196)
!3204 = distinct !DISubprogram(name: "quotearg_mem", scope: !274, file: !274, line: 949, type: !3205, scopeLine: 950, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !273, retainedNodes: !3207)
!3205 = !DISubroutineType(types: !3206)
!3206 = !{!40, !42, !99}
!3207 = !{!3208, !3209}
!3208 = !DILocalVariable(name: "arg", arg: 1, scope: !3204, file: !274, line: 949, type: !42)
!3209 = !DILocalVariable(name: "argsize", arg: 2, scope: !3204, file: !274, line: 949, type: !99)
!3210 = !DILocation(line: 0, scope: !3204)
!3211 = !DILocation(line: 0, scope: !3186, inlinedAt: !3212)
!3212 = distinct !DILocation(line: 951, column: 10, scope: !3204)
!3213 = !DILocation(line: 939, column: 10, scope: !3186, inlinedAt: !3212)
!3214 = !DILocation(line: 951, column: 3, scope: !3204)
!3215 = distinct !DISubprogram(name: "quotearg_n_style", scope: !274, file: !274, line: 955, type: !3216, scopeLine: 956, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !273, retainedNodes: !3218)
!3216 = !DISubroutineType(types: !3217)
!3217 = !{!40, !44, !5, !42}
!3218 = !{!3219, !3220, !3221, !3222}
!3219 = !DILocalVariable(name: "n", arg: 1, scope: !3215, file: !274, line: 955, type: !44)
!3220 = !DILocalVariable(name: "s", arg: 2, scope: !3215, file: !274, line: 955, type: !5)
!3221 = !DILocalVariable(name: "arg", arg: 3, scope: !3215, file: !274, line: 955, type: !42)
!3222 = !DILocalVariable(name: "o", scope: !3215, file: !274, line: 957, type: !292)
!3223 = !DILocation(line: 0, scope: !3215)
!3224 = !DILocation(line: 957, column: 3, scope: !3215)
!3225 = !DILocation(line: 957, column: 32, scope: !3215)
!3226 = !DILocalVariable(name: "style", arg: 1, scope: !3227, file: !274, line: 193, type: !5)
!3227 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !274, file: !274, line: 193, type: !3228, scopeLine: 194, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !273, retainedNodes: !3230)
!3228 = !DISubroutineType(types: !3229)
!3229 = !{!293, !5}
!3230 = !{!3226, !3231}
!3231 = !DILocalVariable(name: "o", scope: !3227, file: !274, line: 195, type: !293)
!3232 = !DILocation(line: 0, scope: !3227, inlinedAt: !3233)
!3233 = distinct !DILocation(line: 957, column: 36, scope: !3215)
!3234 = !DILocation(line: 195, column: 26, scope: !3227, inlinedAt: !3233)
!3235 = !{!3236}
!3236 = distinct !{!3236, !3237, !"quoting_options_from_style: argument 0"}
!3237 = distinct !{!3237, !"quoting_options_from_style"}
!3238 = !DILocation(line: 196, column: 13, scope: !3239, inlinedAt: !3233)
!3239 = distinct !DILexicalBlock(scope: !3227, file: !274, line: 196, column: 7)
!3240 = !DILocation(line: 196, column: 7, scope: !3227, inlinedAt: !3233)
!3241 = !DILocation(line: 197, column: 5, scope: !3239, inlinedAt: !3233)
!3242 = !DILocation(line: 198, column: 5, scope: !3227, inlinedAt: !3233)
!3243 = !DILocation(line: 198, column: 11, scope: !3227, inlinedAt: !3233)
!3244 = !DILocation(line: 958, column: 10, scope: !3215)
!3245 = !DILocation(line: 959, column: 1, scope: !3215)
!3246 = !DILocation(line: 958, column: 3, scope: !3215)
!3247 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !274, file: !274, line: 962, type: !3248, scopeLine: 964, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !273, retainedNodes: !3250)
!3248 = !DISubroutineType(types: !3249)
!3249 = !{!40, !44, !5, !42, !99}
!3250 = !{!3251, !3252, !3253, !3254, !3255}
!3251 = !DILocalVariable(name: "n", arg: 1, scope: !3247, file: !274, line: 962, type: !44)
!3252 = !DILocalVariable(name: "s", arg: 2, scope: !3247, file: !274, line: 962, type: !5)
!3253 = !DILocalVariable(name: "arg", arg: 3, scope: !3247, file: !274, line: 963, type: !42)
!3254 = !DILocalVariable(name: "argsize", arg: 4, scope: !3247, file: !274, line: 963, type: !99)
!3255 = !DILocalVariable(name: "o", scope: !3247, file: !274, line: 965, type: !292)
!3256 = !DILocation(line: 0, scope: !3247)
!3257 = !DILocation(line: 965, column: 3, scope: !3247)
!3258 = !DILocation(line: 965, column: 32, scope: !3247)
!3259 = !DILocation(line: 0, scope: !3227, inlinedAt: !3260)
!3260 = distinct !DILocation(line: 965, column: 36, scope: !3247)
!3261 = !DILocation(line: 195, column: 26, scope: !3227, inlinedAt: !3260)
!3262 = !{!3263}
!3263 = distinct !{!3263, !3264, !"quoting_options_from_style: argument 0"}
!3264 = distinct !{!3264, !"quoting_options_from_style"}
!3265 = !DILocation(line: 196, column: 13, scope: !3239, inlinedAt: !3260)
!3266 = !DILocation(line: 196, column: 7, scope: !3227, inlinedAt: !3260)
!3267 = !DILocation(line: 197, column: 5, scope: !3239, inlinedAt: !3260)
!3268 = !DILocation(line: 198, column: 5, scope: !3227, inlinedAt: !3260)
!3269 = !DILocation(line: 198, column: 11, scope: !3227, inlinedAt: !3260)
!3270 = !DILocation(line: 966, column: 10, scope: !3247)
!3271 = !DILocation(line: 967, column: 1, scope: !3247)
!3272 = !DILocation(line: 966, column: 3, scope: !3247)
!3273 = distinct !DISubprogram(name: "quotearg_style", scope: !274, file: !274, line: 970, type: !142, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !273, retainedNodes: !3274)
!3274 = !{!3275, !3276}
!3275 = !DILocalVariable(name: "s", arg: 1, scope: !3273, file: !274, line: 970, type: !5)
!3276 = !DILocalVariable(name: "arg", arg: 2, scope: !3273, file: !274, line: 970, type: !42)
!3277 = !DILocation(line: 195, column: 26, scope: !3227, inlinedAt: !3278)
!3278 = distinct !DILocation(line: 957, column: 36, scope: !3215, inlinedAt: !3279)
!3279 = distinct !DILocation(line: 972, column: 10, scope: !3273)
!3280 = !DILocation(line: 957, column: 32, scope: !3215, inlinedAt: !3279)
!3281 = !DILocation(line: 0, scope: !3273)
!3282 = !DILocation(line: 0, scope: !3215, inlinedAt: !3279)
!3283 = !DILocation(line: 957, column: 3, scope: !3215, inlinedAt: !3279)
!3284 = !DILocation(line: 0, scope: !3227, inlinedAt: !3278)
!3285 = !{!3286}
!3286 = distinct !{!3286, !3287, !"quoting_options_from_style: argument 0"}
!3287 = distinct !{!3287, !"quoting_options_from_style"}
!3288 = !DILocation(line: 196, column: 13, scope: !3239, inlinedAt: !3278)
!3289 = !DILocation(line: 196, column: 7, scope: !3227, inlinedAt: !3278)
!3290 = !DILocation(line: 197, column: 5, scope: !3239, inlinedAt: !3278)
!3291 = !DILocation(line: 198, column: 5, scope: !3227, inlinedAt: !3278)
!3292 = !DILocation(line: 198, column: 11, scope: !3227, inlinedAt: !3278)
!3293 = !DILocation(line: 958, column: 10, scope: !3215, inlinedAt: !3279)
!3294 = !DILocation(line: 959, column: 1, scope: !3215, inlinedAt: !3279)
!3295 = !DILocation(line: 972, column: 3, scope: !3273)
!3296 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !274, file: !274, line: 976, type: !3297, scopeLine: 977, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !273, retainedNodes: !3299)
!3297 = !DISubroutineType(types: !3298)
!3298 = !{!40, !5, !42, !99}
!3299 = !{!3300, !3301, !3302}
!3300 = !DILocalVariable(name: "s", arg: 1, scope: !3296, file: !274, line: 976, type: !5)
!3301 = !DILocalVariable(name: "arg", arg: 2, scope: !3296, file: !274, line: 976, type: !42)
!3302 = !DILocalVariable(name: "argsize", arg: 3, scope: !3296, file: !274, line: 976, type: !99)
!3303 = !DILocation(line: 195, column: 26, scope: !3227, inlinedAt: !3304)
!3304 = distinct !DILocation(line: 965, column: 36, scope: !3247, inlinedAt: !3305)
!3305 = distinct !DILocation(line: 978, column: 10, scope: !3296)
!3306 = !DILocation(line: 965, column: 32, scope: !3247, inlinedAt: !3305)
!3307 = !DILocation(line: 0, scope: !3296)
!3308 = !DILocation(line: 0, scope: !3247, inlinedAt: !3305)
!3309 = !DILocation(line: 965, column: 3, scope: !3247, inlinedAt: !3305)
!3310 = !DILocation(line: 0, scope: !3227, inlinedAt: !3304)
!3311 = !{!3312}
!3312 = distinct !{!3312, !3313, !"quoting_options_from_style: argument 0"}
!3313 = distinct !{!3313, !"quoting_options_from_style"}
!3314 = !DILocation(line: 196, column: 13, scope: !3239, inlinedAt: !3304)
!3315 = !DILocation(line: 196, column: 7, scope: !3227, inlinedAt: !3304)
!3316 = !DILocation(line: 197, column: 5, scope: !3239, inlinedAt: !3304)
!3317 = !DILocation(line: 198, column: 5, scope: !3227, inlinedAt: !3304)
!3318 = !DILocation(line: 198, column: 11, scope: !3227, inlinedAt: !3304)
!3319 = !DILocation(line: 966, column: 10, scope: !3247, inlinedAt: !3305)
!3320 = !DILocation(line: 967, column: 1, scope: !3247, inlinedAt: !3305)
!3321 = !DILocation(line: 978, column: 3, scope: !3296)
!3322 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !274, file: !274, line: 982, type: !3323, scopeLine: 983, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !273, retainedNodes: !3325)
!3323 = !DISubroutineType(types: !3324)
!3324 = !{!40, !42, !99, !41}
!3325 = !{!3326, !3327, !3328, !3329}
!3326 = !DILocalVariable(name: "arg", arg: 1, scope: !3322, file: !274, line: 982, type: !42)
!3327 = !DILocalVariable(name: "argsize", arg: 2, scope: !3322, file: !274, line: 982, type: !99)
!3328 = !DILocalVariable(name: "ch", arg: 3, scope: !3322, file: !274, line: 982, type: !41)
!3329 = !DILocalVariable(name: "options", scope: !3322, file: !274, line: 984, type: !293)
!3330 = !DILocation(line: 0, scope: !3322)
!3331 = !DILocation(line: 984, column: 3, scope: !3322)
!3332 = !DILocation(line: 984, column: 26, scope: !3322)
!3333 = !DILocation(line: 985, column: 13, scope: !3322)
!3334 = !{i64 0, i64 4, !1459, i64 4, i64 4, !1707, i64 8, i64 32, !1459, i64 40, i64 8, !1263, i64 48, i64 8, !1263}
!3335 = !DILocation(line: 0, scope: !2164, inlinedAt: !3336)
!3336 = distinct !DILocation(line: 986, column: 3, scope: !3322)
!3337 = !DILocation(line: 156, column: 62, scope: !2164, inlinedAt: !3336)
!3338 = !DILocation(line: 156, column: 57, scope: !2164, inlinedAt: !3336)
!3339 = !DILocation(line: 157, column: 15, scope: !2164, inlinedAt: !3336)
!3340 = !DILocation(line: 158, column: 12, scope: !2164, inlinedAt: !3336)
!3341 = !DILocation(line: 158, column: 15, scope: !2164, inlinedAt: !3336)
!3342 = !DILocation(line: 158, column: 25, scope: !2164, inlinedAt: !3336)
!3343 = !DILocation(line: 159, column: 18, scope: !2164, inlinedAt: !3336)
!3344 = !DILocation(line: 159, column: 23, scope: !2164, inlinedAt: !3336)
!3345 = !DILocation(line: 159, column: 6, scope: !2164, inlinedAt: !3336)
!3346 = !DILocation(line: 987, column: 10, scope: !3322)
!3347 = !DILocation(line: 988, column: 1, scope: !3322)
!3348 = !DILocation(line: 987, column: 3, scope: !3322)
!3349 = distinct !DISubprogram(name: "quotearg_char", scope: !274, file: !274, line: 991, type: !3350, scopeLine: 992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !273, retainedNodes: !3352)
!3350 = !DISubroutineType(types: !3351)
!3351 = !{!40, !42, !41}
!3352 = !{!3353, !3354}
!3353 = !DILocalVariable(name: "arg", arg: 1, scope: !3349, file: !274, line: 991, type: !42)
!3354 = !DILocalVariable(name: "ch", arg: 2, scope: !3349, file: !274, line: 991, type: !41)
!3355 = !DILocation(line: 984, column: 26, scope: !3322, inlinedAt: !3356)
!3356 = distinct !DILocation(line: 993, column: 10, scope: !3349)
!3357 = !DILocation(line: 0, scope: !3349)
!3358 = !DILocation(line: 0, scope: !3322, inlinedAt: !3356)
!3359 = !DILocation(line: 984, column: 3, scope: !3322, inlinedAt: !3356)
!3360 = !DILocation(line: 985, column: 13, scope: !3322, inlinedAt: !3356)
!3361 = !DILocation(line: 0, scope: !2164, inlinedAt: !3362)
!3362 = distinct !DILocation(line: 986, column: 3, scope: !3322, inlinedAt: !3356)
!3363 = !DILocation(line: 156, column: 62, scope: !2164, inlinedAt: !3362)
!3364 = !DILocation(line: 156, column: 57, scope: !2164, inlinedAt: !3362)
!3365 = !DILocation(line: 157, column: 15, scope: !2164, inlinedAt: !3362)
!3366 = !DILocation(line: 158, column: 12, scope: !2164, inlinedAt: !3362)
!3367 = !DILocation(line: 158, column: 15, scope: !2164, inlinedAt: !3362)
!3368 = !DILocation(line: 158, column: 25, scope: !2164, inlinedAt: !3362)
!3369 = !DILocation(line: 159, column: 18, scope: !2164, inlinedAt: !3362)
!3370 = !DILocation(line: 159, column: 23, scope: !2164, inlinedAt: !3362)
!3371 = !DILocation(line: 159, column: 6, scope: !2164, inlinedAt: !3362)
!3372 = !DILocation(line: 987, column: 10, scope: !3322, inlinedAt: !3356)
!3373 = !DILocation(line: 988, column: 1, scope: !3322, inlinedAt: !3356)
!3374 = !DILocation(line: 993, column: 3, scope: !3349)
!3375 = distinct !DISubprogram(name: "quotearg_colon", scope: !274, file: !274, line: 997, type: !119, scopeLine: 998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !273, retainedNodes: !3376)
!3376 = !{!3377}
!3377 = !DILocalVariable(name: "arg", arg: 1, scope: !3375, file: !274, line: 997, type: !42)
!3378 = !DILocation(line: 984, column: 26, scope: !3322, inlinedAt: !3379)
!3379 = distinct !DILocation(line: 993, column: 10, scope: !3349, inlinedAt: !3380)
!3380 = distinct !DILocation(line: 999, column: 10, scope: !3375)
!3381 = !DILocation(line: 0, scope: !3375)
!3382 = !DILocation(line: 0, scope: !3349, inlinedAt: !3380)
!3383 = !DILocation(line: 0, scope: !3322, inlinedAt: !3379)
!3384 = !DILocation(line: 984, column: 3, scope: !3322, inlinedAt: !3379)
!3385 = !DILocation(line: 985, column: 13, scope: !3322, inlinedAt: !3379)
!3386 = !DILocation(line: 0, scope: !2164, inlinedAt: !3387)
!3387 = distinct !DILocation(line: 986, column: 3, scope: !3322, inlinedAt: !3379)
!3388 = !DILocation(line: 156, column: 57, scope: !2164, inlinedAt: !3387)
!3389 = !DILocation(line: 158, column: 12, scope: !2164, inlinedAt: !3387)
!3390 = !DILocation(line: 159, column: 6, scope: !2164, inlinedAt: !3387)
!3391 = !DILocation(line: 987, column: 10, scope: !3322, inlinedAt: !3379)
!3392 = !DILocation(line: 988, column: 1, scope: !3322, inlinedAt: !3379)
!3393 = !DILocation(line: 999, column: 3, scope: !3375)
!3394 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !274, file: !274, line: 1003, type: !3205, scopeLine: 1004, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !273, retainedNodes: !3395)
!3395 = !{!3396, !3397}
!3396 = !DILocalVariable(name: "arg", arg: 1, scope: !3394, file: !274, line: 1003, type: !42)
!3397 = !DILocalVariable(name: "argsize", arg: 2, scope: !3394, file: !274, line: 1003, type: !99)
!3398 = !DILocation(line: 984, column: 26, scope: !3322, inlinedAt: !3399)
!3399 = distinct !DILocation(line: 1005, column: 10, scope: !3394)
!3400 = !DILocation(line: 0, scope: !3394)
!3401 = !DILocation(line: 0, scope: !3322, inlinedAt: !3399)
!3402 = !DILocation(line: 984, column: 3, scope: !3322, inlinedAt: !3399)
!3403 = !DILocation(line: 985, column: 13, scope: !3322, inlinedAt: !3399)
!3404 = !DILocation(line: 0, scope: !2164, inlinedAt: !3405)
!3405 = distinct !DILocation(line: 986, column: 3, scope: !3322, inlinedAt: !3399)
!3406 = !DILocation(line: 156, column: 57, scope: !2164, inlinedAt: !3405)
!3407 = !DILocation(line: 158, column: 12, scope: !2164, inlinedAt: !3405)
!3408 = !DILocation(line: 159, column: 6, scope: !2164, inlinedAt: !3405)
!3409 = !DILocation(line: 987, column: 10, scope: !3322, inlinedAt: !3399)
!3410 = !DILocation(line: 988, column: 1, scope: !3322, inlinedAt: !3399)
!3411 = !DILocation(line: 1005, column: 3, scope: !3394)
!3412 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !274, file: !274, line: 1009, type: !3216, scopeLine: 1010, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !273, retainedNodes: !3413)
!3413 = !{!3414, !3415, !3416, !3417}
!3414 = !DILocalVariable(name: "n", arg: 1, scope: !3412, file: !274, line: 1009, type: !44)
!3415 = !DILocalVariable(name: "s", arg: 2, scope: !3412, file: !274, line: 1009, type: !5)
!3416 = !DILocalVariable(name: "arg", arg: 3, scope: !3412, file: !274, line: 1009, type: !42)
!3417 = !DILocalVariable(name: "options", scope: !3412, file: !274, line: 1011, type: !293)
!3418 = !DILocation(line: 195, column: 26, scope: !3227, inlinedAt: !3419)
!3419 = distinct !DILocation(line: 1012, column: 13, scope: !3412)
!3420 = !DILocation(line: 0, scope: !3412)
!3421 = !DILocation(line: 1011, column: 3, scope: !3412)
!3422 = !DILocation(line: 1011, column: 26, scope: !3412)
!3423 = !DILocation(line: 1012, column: 13, scope: !3412)
!3424 = !DILocation(line: 0, scope: !3227, inlinedAt: !3419)
!3425 = !{!3426}
!3426 = distinct !{!3426, !3427, !"quoting_options_from_style: argument 0"}
!3427 = distinct !{!3427, !"quoting_options_from_style"}
!3428 = !DILocation(line: 196, column: 13, scope: !3239, inlinedAt: !3419)
!3429 = !DILocation(line: 196, column: 7, scope: !3227, inlinedAt: !3419)
!3430 = !DILocation(line: 197, column: 5, scope: !3239, inlinedAt: !3419)
!3431 = !DILocation(line: 0, scope: !2164, inlinedAt: !3432)
!3432 = distinct !DILocation(line: 1013, column: 3, scope: !3412)
!3433 = !DILocation(line: 156, column: 57, scope: !2164, inlinedAt: !3432)
!3434 = !DILocation(line: 158, column: 12, scope: !2164, inlinedAt: !3432)
!3435 = !DILocation(line: 159, column: 6, scope: !2164, inlinedAt: !3432)
!3436 = !DILocation(line: 1014, column: 10, scope: !3412)
!3437 = !DILocation(line: 1015, column: 1, scope: !3412)
!3438 = !DILocation(line: 1014, column: 3, scope: !3412)
!3439 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !274, file: !274, line: 1018, type: !3440, scopeLine: 1020, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !273, retainedNodes: !3442)
!3440 = !DISubroutineType(types: !3441)
!3441 = !{!40, !44, !42, !42, !42}
!3442 = !{!3443, !3444, !3445, !3446}
!3443 = !DILocalVariable(name: "n", arg: 1, scope: !3439, file: !274, line: 1018, type: !44)
!3444 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3439, file: !274, line: 1018, type: !42)
!3445 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3439, file: !274, line: 1019, type: !42)
!3446 = !DILocalVariable(name: "arg", arg: 4, scope: !3439, file: !274, line: 1019, type: !42)
!3447 = !DILocalVariable(name: "o", scope: !3448, file: !274, line: 1030, type: !293)
!3448 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !274, file: !274, line: 1026, type: !3449, scopeLine: 1029, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !273, retainedNodes: !3451)
!3449 = !DISubroutineType(types: !3450)
!3450 = !{!40, !44, !42, !42, !42, !99}
!3451 = !{!3452, !3453, !3454, !3455, !3456, !3447}
!3452 = !DILocalVariable(name: "n", arg: 1, scope: !3448, file: !274, line: 1026, type: !44)
!3453 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3448, file: !274, line: 1026, type: !42)
!3454 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3448, file: !274, line: 1027, type: !42)
!3455 = !DILocalVariable(name: "arg", arg: 4, scope: !3448, file: !274, line: 1028, type: !42)
!3456 = !DILocalVariable(name: "argsize", arg: 5, scope: !3448, file: !274, line: 1028, type: !99)
!3457 = !DILocation(line: 1030, column: 26, scope: !3448, inlinedAt: !3458)
!3458 = distinct !DILocation(line: 1021, column: 10, scope: !3439)
!3459 = !DILocation(line: 0, scope: !3439)
!3460 = !DILocation(line: 0, scope: !3448, inlinedAt: !3458)
!3461 = !DILocation(line: 1030, column: 3, scope: !3448, inlinedAt: !3458)
!3462 = !DILocation(line: 1030, column: 30, scope: !3448, inlinedAt: !3458)
!3463 = !DILocation(line: 0, scope: !2204, inlinedAt: !3464)
!3464 = distinct !DILocation(line: 1031, column: 3, scope: !3448, inlinedAt: !3458)
!3465 = !DILocation(line: 184, column: 6, scope: !2204, inlinedAt: !3464)
!3466 = !DILocation(line: 184, column: 12, scope: !2204, inlinedAt: !3464)
!3467 = !DILocation(line: 185, column: 8, scope: !2218, inlinedAt: !3464)
!3468 = !DILocation(line: 185, column: 23, scope: !2218, inlinedAt: !3464)
!3469 = !DILocation(line: 185, column: 19, scope: !2218, inlinedAt: !3464)
!3470 = !DILocation(line: 186, column: 5, scope: !2218, inlinedAt: !3464)
!3471 = !DILocation(line: 187, column: 6, scope: !2204, inlinedAt: !3464)
!3472 = !DILocation(line: 187, column: 17, scope: !2204, inlinedAt: !3464)
!3473 = !DILocation(line: 188, column: 6, scope: !2204, inlinedAt: !3464)
!3474 = !DILocation(line: 188, column: 18, scope: !2204, inlinedAt: !3464)
!3475 = !DILocation(line: 1032, column: 10, scope: !3448, inlinedAt: !3458)
!3476 = !DILocation(line: 1033, column: 1, scope: !3448, inlinedAt: !3458)
!3477 = !DILocation(line: 1021, column: 3, scope: !3439)
!3478 = !DILocation(line: 0, scope: !3448)
!3479 = !DILocation(line: 1030, column: 3, scope: !3448)
!3480 = !DILocation(line: 1030, column: 26, scope: !3448)
!3481 = !DILocation(line: 1030, column: 30, scope: !3448)
!3482 = !DILocation(line: 0, scope: !2204, inlinedAt: !3483)
!3483 = distinct !DILocation(line: 1031, column: 3, scope: !3448)
!3484 = !DILocation(line: 184, column: 6, scope: !2204, inlinedAt: !3483)
!3485 = !DILocation(line: 184, column: 12, scope: !2204, inlinedAt: !3483)
!3486 = !DILocation(line: 185, column: 8, scope: !2218, inlinedAt: !3483)
!3487 = !DILocation(line: 185, column: 23, scope: !2218, inlinedAt: !3483)
!3488 = !DILocation(line: 185, column: 19, scope: !2218, inlinedAt: !3483)
!3489 = !DILocation(line: 186, column: 5, scope: !2218, inlinedAt: !3483)
!3490 = !DILocation(line: 187, column: 6, scope: !2204, inlinedAt: !3483)
!3491 = !DILocation(line: 187, column: 17, scope: !2204, inlinedAt: !3483)
!3492 = !DILocation(line: 188, column: 6, scope: !2204, inlinedAt: !3483)
!3493 = !DILocation(line: 188, column: 18, scope: !2204, inlinedAt: !3483)
!3494 = !DILocation(line: 1032, column: 10, scope: !3448)
!3495 = !DILocation(line: 1033, column: 1, scope: !3448)
!3496 = !DILocation(line: 1032, column: 3, scope: !3448)
!3497 = distinct !DISubprogram(name: "quotearg_custom", scope: !274, file: !274, line: 1036, type: !3498, scopeLine: 1038, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !273, retainedNodes: !3500)
!3498 = !DISubroutineType(types: !3499)
!3499 = !{!40, !42, !42, !42}
!3500 = !{!3501, !3502, !3503}
!3501 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3497, file: !274, line: 1036, type: !42)
!3502 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3497, file: !274, line: 1036, type: !42)
!3503 = !DILocalVariable(name: "arg", arg: 3, scope: !3497, file: !274, line: 1037, type: !42)
!3504 = !DILocation(line: 1030, column: 26, scope: !3448, inlinedAt: !3505)
!3505 = distinct !DILocation(line: 1021, column: 10, scope: !3439, inlinedAt: !3506)
!3506 = distinct !DILocation(line: 1039, column: 10, scope: !3497)
!3507 = !DILocation(line: 0, scope: !3497)
!3508 = !DILocation(line: 0, scope: !3439, inlinedAt: !3506)
!3509 = !DILocation(line: 0, scope: !3448, inlinedAt: !3505)
!3510 = !DILocation(line: 1030, column: 3, scope: !3448, inlinedAt: !3505)
!3511 = !DILocation(line: 1030, column: 30, scope: !3448, inlinedAt: !3505)
!3512 = !DILocation(line: 0, scope: !2204, inlinedAt: !3513)
!3513 = distinct !DILocation(line: 1031, column: 3, scope: !3448, inlinedAt: !3505)
!3514 = !DILocation(line: 184, column: 6, scope: !2204, inlinedAt: !3513)
!3515 = !DILocation(line: 184, column: 12, scope: !2204, inlinedAt: !3513)
!3516 = !DILocation(line: 185, column: 8, scope: !2218, inlinedAt: !3513)
!3517 = !DILocation(line: 185, column: 23, scope: !2218, inlinedAt: !3513)
!3518 = !DILocation(line: 185, column: 19, scope: !2218, inlinedAt: !3513)
!3519 = !DILocation(line: 186, column: 5, scope: !2218, inlinedAt: !3513)
!3520 = !DILocation(line: 187, column: 6, scope: !2204, inlinedAt: !3513)
!3521 = !DILocation(line: 187, column: 17, scope: !2204, inlinedAt: !3513)
!3522 = !DILocation(line: 188, column: 6, scope: !2204, inlinedAt: !3513)
!3523 = !DILocation(line: 188, column: 18, scope: !2204, inlinedAt: !3513)
!3524 = !DILocation(line: 1032, column: 10, scope: !3448, inlinedAt: !3505)
!3525 = !DILocation(line: 1033, column: 1, scope: !3448, inlinedAt: !3505)
!3526 = !DILocation(line: 1039, column: 3, scope: !3497)
!3527 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !274, file: !274, line: 1043, type: !3528, scopeLine: 1045, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !273, retainedNodes: !3530)
!3528 = !DISubroutineType(types: !3529)
!3529 = !{!40, !42, !42, !42, !99}
!3530 = !{!3531, !3532, !3533, !3534}
!3531 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3527, file: !274, line: 1043, type: !42)
!3532 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3527, file: !274, line: 1043, type: !42)
!3533 = !DILocalVariable(name: "arg", arg: 3, scope: !3527, file: !274, line: 1044, type: !42)
!3534 = !DILocalVariable(name: "argsize", arg: 4, scope: !3527, file: !274, line: 1044, type: !99)
!3535 = !DILocation(line: 1030, column: 26, scope: !3448, inlinedAt: !3536)
!3536 = distinct !DILocation(line: 1046, column: 10, scope: !3527)
!3537 = !DILocation(line: 0, scope: !3527)
!3538 = !DILocation(line: 0, scope: !3448, inlinedAt: !3536)
!3539 = !DILocation(line: 1030, column: 3, scope: !3448, inlinedAt: !3536)
!3540 = !DILocation(line: 1030, column: 30, scope: !3448, inlinedAt: !3536)
!3541 = !DILocation(line: 0, scope: !2204, inlinedAt: !3542)
!3542 = distinct !DILocation(line: 1031, column: 3, scope: !3448, inlinedAt: !3536)
!3543 = !DILocation(line: 184, column: 6, scope: !2204, inlinedAt: !3542)
!3544 = !DILocation(line: 184, column: 12, scope: !2204, inlinedAt: !3542)
!3545 = !DILocation(line: 185, column: 8, scope: !2218, inlinedAt: !3542)
!3546 = !DILocation(line: 185, column: 23, scope: !2218, inlinedAt: !3542)
!3547 = !DILocation(line: 185, column: 19, scope: !2218, inlinedAt: !3542)
!3548 = !DILocation(line: 186, column: 5, scope: !2218, inlinedAt: !3542)
!3549 = !DILocation(line: 187, column: 6, scope: !2204, inlinedAt: !3542)
!3550 = !DILocation(line: 187, column: 17, scope: !2204, inlinedAt: !3542)
!3551 = !DILocation(line: 188, column: 6, scope: !2204, inlinedAt: !3542)
!3552 = !DILocation(line: 188, column: 18, scope: !2204, inlinedAt: !3542)
!3553 = !DILocation(line: 1032, column: 10, scope: !3448, inlinedAt: !3536)
!3554 = !DILocation(line: 1033, column: 1, scope: !3448, inlinedAt: !3536)
!3555 = !DILocation(line: 1046, column: 3, scope: !3527)
!3556 = distinct !DISubprogram(name: "quote_n_mem", scope: !274, file: !274, line: 1061, type: !3557, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !273, retainedNodes: !3559)
!3557 = !DISubroutineType(types: !3558)
!3558 = !{!42, !44, !42, !99}
!3559 = !{!3560, !3561, !3562}
!3560 = !DILocalVariable(name: "n", arg: 1, scope: !3556, file: !274, line: 1061, type: !44)
!3561 = !DILocalVariable(name: "arg", arg: 2, scope: !3556, file: !274, line: 1061, type: !42)
!3562 = !DILocalVariable(name: "argsize", arg: 3, scope: !3556, file: !274, line: 1061, type: !99)
!3563 = !DILocation(line: 0, scope: !3556)
!3564 = !DILocation(line: 1063, column: 10, scope: !3556)
!3565 = !DILocation(line: 1063, column: 3, scope: !3556)
!3566 = distinct !DISubprogram(name: "quote_mem", scope: !274, file: !274, line: 1067, type: !3567, scopeLine: 1068, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !273, retainedNodes: !3569)
!3567 = !DISubroutineType(types: !3568)
!3568 = !{!42, !42, !99}
!3569 = !{!3570, !3571}
!3570 = !DILocalVariable(name: "arg", arg: 1, scope: !3566, file: !274, line: 1067, type: !42)
!3571 = !DILocalVariable(name: "argsize", arg: 2, scope: !3566, file: !274, line: 1067, type: !99)
!3572 = !DILocation(line: 0, scope: !3566)
!3573 = !DILocation(line: 0, scope: !3556, inlinedAt: !3574)
!3574 = distinct !DILocation(line: 1069, column: 10, scope: !3566)
!3575 = !DILocation(line: 1063, column: 10, scope: !3556, inlinedAt: !3574)
!3576 = !DILocation(line: 1069, column: 3, scope: !3566)
!3577 = distinct !DISubprogram(name: "quote_n", scope: !274, file: !274, line: 1073, type: !3578, scopeLine: 1074, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !273, retainedNodes: !3580)
!3578 = !DISubroutineType(types: !3579)
!3579 = !{!42, !44, !42}
!3580 = !{!3581, !3582}
!3581 = !DILocalVariable(name: "n", arg: 1, scope: !3577, file: !274, line: 1073, type: !44)
!3582 = !DILocalVariable(name: "arg", arg: 2, scope: !3577, file: !274, line: 1073, type: !42)
!3583 = !DILocation(line: 0, scope: !3577)
!3584 = !DILocation(line: 0, scope: !3556, inlinedAt: !3585)
!3585 = distinct !DILocation(line: 1075, column: 10, scope: !3577)
!3586 = !DILocation(line: 1063, column: 10, scope: !3556, inlinedAt: !3585)
!3587 = !DILocation(line: 1075, column: 3, scope: !3577)
!3588 = distinct !DISubprogram(name: "quote", scope: !274, file: !274, line: 1079, type: !139, scopeLine: 1080, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !273, retainedNodes: !3589)
!3589 = !{!3590}
!3590 = !DILocalVariable(name: "arg", arg: 1, scope: !3588, file: !274, line: 1079, type: !42)
!3591 = !DILocation(line: 0, scope: !3588)
!3592 = !DILocation(line: 0, scope: !3577, inlinedAt: !3593)
!3593 = distinct !DILocation(line: 1081, column: 10, scope: !3588)
!3594 = !DILocation(line: 0, scope: !3556, inlinedAt: !3595)
!3595 = distinct !DILocation(line: 1075, column: 10, scope: !3577, inlinedAt: !3593)
!3596 = !DILocation(line: 1063, column: 10, scope: !3556, inlinedAt: !3595)
!3597 = !DILocation(line: 1081, column: 3, scope: !3588)
!3598 = !DILocation(line: 0, scope: !378)
!3599 = !DILocation(line: 77, column: 3, scope: !378)
!3600 = !DILocation(line: 77, column: 8, scope: !378)
!3601 = !DILocation(line: 80, column: 8, scope: !456)
!3602 = !DILocation(line: 80, column: 7, scope: !378)
!3603 = !DILocation(line: 82, column: 29, scope: !455)
!3604 = !DILocation(line: 0, scope: !455)
!3605 = !DILocation(line: 84, column: 18, scope: !455)
!3606 = !DILocation(line: 84, column: 17, scope: !455)
!3607 = !DILocation(line: 84, column: 15, scope: !455)
!3608 = !DILocation(line: 86, column: 11, scope: !455)
!3609 = !DILocation(line: 88, column: 27, scope: !3610)
!3610 = distinct !DILexicalBlock(scope: !3611, file: !379, line: 87, column: 9)
!3611 = distinct !DILexicalBlock(scope: !455, file: !379, line: 86, column: 11)
!3612 = !DILocation(line: 88, column: 25, scope: !3610)
!3613 = !DILocation(line: 89, column: 29, scope: !3614)
!3614 = distinct !DILexicalBlock(scope: !3610, file: !379, line: 89, column: 15)
!3615 = !DILocation(line: 89, column: 15, scope: !3610)
!3616 = !DILocation(line: 91, column: 29, scope: !3614)
!3617 = !DILocation(line: 91, column: 27, scope: !3614)
!3618 = !DILocation(line: 91, column: 13, scope: !3614)
!3619 = !DILocation(line: 94, column: 19, scope: !455)
!3620 = !DILocation(line: 95, column: 5, scope: !455)
!3621 = !DILocation(line: 98, column: 8, scope: !3622)
!3622 = distinct !DILexicalBlock(scope: !378, file: !379, line: 98, column: 7)
!3623 = !DILocation(line: 101, column: 11, scope: !3624)
!3624 = distinct !DILexicalBlock(scope: !3625, file: !379, line: 101, column: 11)
!3625 = distinct !DILexicalBlock(scope: !3622, file: !379, line: 99, column: 5)
!3626 = !DILocation(line: 101, column: 25, scope: !3624)
!3627 = !DILocation(line: 98, column: 7, scope: !378)
!3628 = !DILocation(line: 102, column: 16, scope: !3624)
!3629 = !DILocation(line: 102, column: 9, scope: !3624)
!3630 = !DILocalVariable(name: "s", arg: 1, scope: !3631, file: !435, line: 315, type: !3634)
!3631 = distinct !DISubprogram(name: "u8_uctomb", scope: !435, file: !435, line: 315, type: !3632, scopeLine: 316, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !388, retainedNodes: !3642)
!3632 = !DISubroutineType(types: !3633)
!3633 = !{!44, !3634, !3638, !44}
!3634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3635, size: 64)
!3635 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !3636, line: 24, baseType: !3637)
!3636 = !DIFile(filename: "/usr/include/bits/stdint-uintn.h", directory: "")
!3637 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !74, line: 38, baseType: !144)
!3638 = !DIDerivedType(tag: DW_TAG_typedef, name: "ucs4_t", file: !3639, line: 25, baseType: !3640)
!3639 = !DIFile(filename: "./lib/unitypes.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!3640 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !3636, line: 26, baseType: !3641)
!3641 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !74, line: 42, baseType: !7)
!3642 = !{!3630, !3643, !3644}
!3643 = !DILocalVariable(name: "uc", arg: 2, scope: !3631, file: !435, line: 315, type: !3638)
!3644 = !DILocalVariable(name: "n", arg: 3, scope: !3631, file: !435, line: 315, type: !44)
!3645 = !DILocation(line: 0, scope: !3631, inlinedAt: !3646)
!3646 = distinct !DILocation(line: 109, column: 11, scope: !378)
!3647 = !DILocation(line: 317, column: 10, scope: !3648, inlinedAt: !3646)
!3648 = distinct !DILexicalBlock(scope: !3631, file: !435, line: 317, column: 7)
!3649 = !DILocation(line: 317, column: 17, scope: !3648, inlinedAt: !3646)
!3650 = !DILocation(line: 319, column: 14, scope: !3651, inlinedAt: !3646)
!3651 = distinct !DILexicalBlock(scope: !3648, file: !435, line: 318, column: 5)
!3652 = !DILocation(line: 319, column: 12, scope: !3651, inlinedAt: !3646)
!3653 = !DILocation(line: 110, column: 7, scope: !378)
!3654 = !DILocation(line: 323, column: 12, scope: !3648, inlinedAt: !3646)
!3655 = !DILocation(line: 110, column: 13, scope: !3656)
!3656 = distinct !DILexicalBlock(scope: !378, file: !379, line: 110, column: 7)
!3657 = !DILocation(line: 114, column: 8, scope: !459)
!3658 = !DILocation(line: 111, column: 12, scope: !3656)
!3659 = !DILocation(line: 111, column: 5, scope: !3656)
!3660 = !DILocation(line: 114, column: 7, scope: !378)
!3661 = !DILocation(line: 116, column: 7, scope: !458)
!3662 = !DILocation(line: 116, column: 12, scope: !458)
!3663 = !DILocation(line: 117, column: 7, scope: !458)
!3664 = !DILocation(line: 118, column: 7, scope: !458)
!3665 = !DILocation(line: 119, column: 7, scope: !458)
!3666 = !DILocation(line: 120, column: 7, scope: !458)
!3667 = !DILocation(line: 0, scope: !458)
!3668 = !DILocation(line: 123, column: 13, scope: !458)
!3669 = !DILocation(line: 124, column: 19, scope: !458)
!3670 = !DILocation(line: 125, column: 14, scope: !458)
!3671 = !DILocation(line: 126, column: 20, scope: !458)
!3672 = !DILocation(line: 129, column: 20, scope: !458)
!3673 = !DILocation(line: 129, column: 13, scope: !458)
!3674 = !DILocation(line: 132, column: 11, scope: !3675)
!3675 = distinct !DILexicalBlock(scope: !458, file: !379, line: 132, column: 11)
!3676 = !DILocation(line: 132, column: 23, scope: !3675)
!3677 = !DILocation(line: 132, column: 34, scope: !3675)
!3678 = !DILocation(line: 132, column: 27, scope: !3675)
!3679 = !DILocation(line: 138, column: 16, scope: !3675)
!3680 = !DILocation(line: 138, column: 9, scope: !3675)
!3681 = !DILocation(line: 147, column: 20, scope: !458)
!3682 = !DILocation(line: 147, column: 13, scope: !458)
!3683 = !DILocation(line: 148, column: 15, scope: !3684)
!3684 = distinct !DILexicalBlock(scope: !458, file: !379, line: 148, column: 11)
!3685 = !DILocation(line: 148, column: 11, scope: !458)
!3686 = !DILocation(line: 149, column: 16, scope: !3684)
!3687 = !DILocation(line: 149, column: 9, scope: !3684)
!3688 = !DILocation(line: 152, column: 31, scope: !458)
!3689 = !DILocation(line: 152, column: 38, scope: !458)
!3690 = !DILocation(line: 152, column: 14, scope: !458)
!3691 = !DILocation(line: 152, column: 7, scope: !458)
!3692 = !DILocation(line: 153, column: 5, scope: !459)
!3693 = !DILocation(line: 157, column: 10, scope: !378)
!3694 = !DILocation(line: 157, column: 3, scope: !378)
!3695 = !DILocation(line: 158, column: 1, scope: !378)
!3696 = distinct !DISubprogram(name: "fwrite_success_callback", scope: !379, file: !379, line: 163, type: !383, scopeLine: 164, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !388, retainedNodes: !3697)
!3697 = !{!3698, !3699, !3700, !3701}
!3698 = !DILocalVariable(name: "buf", arg: 1, scope: !3696, file: !379, line: 163, type: !42)
!3699 = !DILocalVariable(name: "buflen", arg: 2, scope: !3696, file: !379, line: 163, type: !99)
!3700 = !DILocalVariable(name: "callback_arg", arg: 3, scope: !3696, file: !379, line: 163, type: !97)
!3701 = !DILocalVariable(name: "stream", scope: !3696, file: !379, line: 165, type: !399)
!3702 = !DILocation(line: 0, scope: !3696)
!3703 = !DILocation(line: 165, column: 18, scope: !3696)
!3704 = !DILocation(line: 171, column: 3, scope: !3696)
!3705 = !DILocation(line: 172, column: 3, scope: !3696)
!3706 = distinct !DISubprogram(name: "print_unicode_char", scope: !379, file: !379, line: 208, type: !3707, scopeLine: 209, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !388, retainedNodes: !3709)
!3707 = !DISubroutineType(types: !3708)
!3708 = !{null, !399, !7, !44}
!3709 = !{!3710, !3711, !3712}
!3710 = !DILocalVariable(name: "stream", arg: 1, scope: !3706, file: !379, line: 208, type: !399)
!3711 = !DILocalVariable(name: "code", arg: 2, scope: !3706, file: !379, line: 208, type: !7)
!3712 = !DILocalVariable(name: "exit_on_error", arg: 3, scope: !3706, file: !379, line: 208, type: !44)
!3713 = !DILocation(line: 0, scope: !3706)
!3714 = !DILocation(line: 211, column: 18, scope: !3706)
!3715 = !DILocation(line: 214, column: 18, scope: !3706)
!3716 = !DILocation(line: 210, column: 3, scope: !3706)
!3717 = !DILocation(line: 215, column: 1, scope: !3706)
!3718 = distinct !DISubprogram(name: "fallback_failure_callback", scope: !379, file: !379, line: 191, type: !386, scopeLine: 194, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !388, retainedNodes: !3719)
!3719 = !{!3720, !3721, !3722, !3723}
!3720 = !DILocalVariable(name: "code", arg: 1, scope: !3718, file: !379, line: 191, type: !7)
!3721 = !DILocalVariable(name: "msg", arg: 2, scope: !3718, file: !379, line: 192, type: !42)
!3722 = !DILocalVariable(name: "callback_arg", arg: 3, scope: !3718, file: !379, line: 193, type: !97)
!3723 = !DILocalVariable(name: "stream", scope: !3718, file: !379, line: 195, type: !399)
!3724 = !DILocation(line: 0, scope: !3718)
!3725 = !DILocation(line: 195, column: 18, scope: !3718)
!3726 = !DILocation(line: 197, column: 12, scope: !3727)
!3727 = distinct !DILexicalBlock(scope: !3718, file: !379, line: 197, column: 7)
!3728 = !DILocation(line: 197, column: 7, scope: !3718)
!3729 = !DILocation(line: 0, scope: !3727)
!3730 = !DILocation(line: 201, column: 3, scope: !3718)
!3731 = distinct !DISubprogram(name: "exit_failure_callback", scope: !379, file: !379, line: 177, type: !386, scopeLine: 179, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !388, retainedNodes: !3732)
!3732 = !{!3733, !3734, !3735}
!3733 = !DILocalVariable(name: "code", arg: 1, scope: !3731, file: !379, line: 177, type: !7)
!3734 = !DILocalVariable(name: "msg", arg: 2, scope: !3731, file: !379, line: 177, type: !42)
!3735 = !DILocalVariable(name: "callback_arg", arg: 3, scope: !3731, file: !379, line: 178, type: !97)
!3736 = !DILocation(line: 0, scope: !3731)
!3737 = !DILocation(line: 180, column: 11, scope: !3738)
!3738 = distinct !DILexicalBlock(scope: !3731, file: !379, line: 180, column: 7)
!3739 = !DILocation(line: 180, column: 7, scope: !3731)
!3740 = !DILocation(line: 181, column: 18, scope: !3738)
!3741 = !DILocation(line: 181, column: 5, scope: !3738)
!3742 = !DILocation(line: 183, column: 18, scope: !3738)
!3743 = !DILocation(line: 184, column: 12, scope: !3738)
!3744 = !DILocation(line: 183, column: 5, scope: !3738)
!3745 = !DILocation(line: 185, column: 3, scope: !3731)
!3746 = distinct !DISubprogram(name: "u8_uctomb_aux", scope: !518, file: !518, line: 32, type: !3632, scopeLine: 33, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !517, retainedNodes: !3747)
!3747 = !{!3748, !3749, !3750, !3751}
!3748 = !DILocalVariable(name: "s", arg: 1, scope: !3746, file: !518, line: 32, type: !3634)
!3749 = !DILocalVariable(name: "uc", arg: 2, scope: !3746, file: !518, line: 32, type: !3638)
!3750 = !DILocalVariable(name: "n", arg: 3, scope: !3746, file: !518, line: 32, type: !44)
!3751 = !DILocalVariable(name: "count", scope: !3746, file: !518, line: 34, type: !44)
!3752 = !DILocation(line: 0, scope: !3746)
!3753 = !DILocation(line: 36, column: 10, scope: !3754)
!3754 = distinct !DILexicalBlock(scope: !3746, file: !518, line: 36, column: 7)
!3755 = !DILocation(line: 36, column: 7, scope: !3746)
!3756 = !DILocation(line: 39, column: 15, scope: !3757)
!3757 = distinct !DILexicalBlock(scope: !3754, file: !518, line: 39, column: 12)
!3758 = !DILocation(line: 39, column: 12, scope: !3754)
!3759 = !DILocation(line: 41, column: 15, scope: !3760)
!3760 = distinct !DILexicalBlock(scope: !3757, file: !518, line: 41, column: 12)
!3761 = !DILocation(line: 41, column: 12, scope: !3757)
!3762 = !DILocation(line: 43, column: 23, scope: !3763)
!3763 = distinct !DILexicalBlock(scope: !3764, file: !518, line: 43, column: 11)
!3764 = distinct !DILexicalBlock(scope: !3760, file: !518, line: 42, column: 5)
!3765 = !DILocation(line: 48, column: 15, scope: !3766)
!3766 = distinct !DILexicalBlock(scope: !3760, file: !518, line: 48, column: 12)
!3767 = !DILocation(line: 48, column: 12, scope: !3760)
!3768 = !DILocation(line: 0, scope: !3757)
!3769 = !DILocation(line: 53, column: 9, scope: !3770)
!3770 = distinct !DILexicalBlock(scope: !3746, file: !518, line: 53, column: 7)
!3771 = !DILocation(line: 53, column: 7, scope: !3746)
!3772 = !DILocation(line: 56, column: 3, scope: !3746)
!3773 = !DILocation(line: 58, column: 20, scope: !3774)
!3774 = distinct !DILexicalBlock(scope: !3746, file: !518, line: 57, column: 5)
!3775 = !DILocation(line: 58, column: 13, scope: !3774)
!3776 = !DILocation(line: 58, column: 18, scope: !3774)
!3777 = !DILocation(line: 58, column: 48, scope: !3774)
!3778 = !DILocation(line: 58, column: 57, scope: !3774)
!3779 = !DILocation(line: 59, column: 7, scope: !3774)
!3780 = !DILocation(line: 60, column: 20, scope: !3774)
!3781 = !DILocation(line: 60, column: 13, scope: !3774)
!3782 = !DILocation(line: 60, column: 18, scope: !3774)
!3783 = !DILocation(line: 60, column: 48, scope: !3774)
!3784 = !DILocation(line: 60, column: 57, scope: !3774)
!3785 = !DILocation(line: 61, column: 7, scope: !3774)
!3786 = !DILocation(line: 62, column: 20, scope: !3774)
!3787 = !DILocation(line: 62, column: 13, scope: !3774)
!3788 = !DILocation(line: 62, column: 18, scope: !3774)
!3789 = !DILocation(line: 62, column: 48, scope: !3774)
!3790 = !DILocation(line: 63, column: 22, scope: !3774)
!3791 = !DILocation(line: 63, column: 20, scope: !3774)
!3792 = !DILocation(line: 64, column: 5, scope: !3774)
!3793 = !DILocation(line: 66, column: 1, scope: !3746)
!3794 = distinct !DISubprogram(name: "version_etc_arn", scope: !520, file: !520, line: 61, type: !3795, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !519, retainedNodes: !3800)
!3795 = !DISubroutineType(types: !3796)
!3796 = !{null, !3797, !42, !42, !42, !3799, !99}
!3797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3798, size: 64)
!3798 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !401, line: 7, baseType: !530)
!3799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !173, size: 64)
!3800 = !{!3801, !3802, !3803, !3804, !3805, !3806}
!3801 = !DILocalVariable(name: "stream", arg: 1, scope: !3794, file: !520, line: 61, type: !3797)
!3802 = !DILocalVariable(name: "command_name", arg: 2, scope: !3794, file: !520, line: 62, type: !42)
!3803 = !DILocalVariable(name: "package", arg: 3, scope: !3794, file: !520, line: 62, type: !42)
!3804 = !DILocalVariable(name: "version", arg: 4, scope: !3794, file: !520, line: 63, type: !42)
!3805 = !DILocalVariable(name: "authors", arg: 5, scope: !3794, file: !520, line: 64, type: !3799)
!3806 = !DILocalVariable(name: "n_authors", arg: 6, scope: !3794, file: !520, line: 64, type: !99)
!3807 = !DILocation(line: 0, scope: !3794)
!3808 = !DILocation(line: 66, column: 7, scope: !3809)
!3809 = distinct !DILexicalBlock(scope: !3794, file: !520, line: 66, column: 7)
!3810 = !DILocation(line: 66, column: 7, scope: !3794)
!3811 = !DILocation(line: 67, column: 5, scope: !3809)
!3812 = !DILocation(line: 69, column: 5, scope: !3809)
!3813 = !DILocation(line: 83, column: 3, scope: !3794)
!3814 = !DILocation(line: 85, column: 3, scope: !3794)
!3815 = !DILocation(line: 88, column: 3, scope: !3794)
!3816 = !DILocation(line: 95, column: 3, scope: !3794)
!3817 = !DILocation(line: 97, column: 3, scope: !3794)
!3818 = !DILocation(line: 105, column: 7, scope: !3819)
!3819 = distinct !DILexicalBlock(scope: !3794, file: !520, line: 98, column: 5)
!3820 = !DILocation(line: 106, column: 7, scope: !3819)
!3821 = !DILocation(line: 109, column: 7, scope: !3819)
!3822 = !DILocation(line: 110, column: 7, scope: !3819)
!3823 = !DILocation(line: 113, column: 7, scope: !3819)
!3824 = !DILocation(line: 115, column: 7, scope: !3819)
!3825 = !DILocation(line: 120, column: 7, scope: !3819)
!3826 = !DILocation(line: 122, column: 7, scope: !3819)
!3827 = !DILocation(line: 127, column: 7, scope: !3819)
!3828 = !DILocation(line: 129, column: 7, scope: !3819)
!3829 = !DILocation(line: 134, column: 7, scope: !3819)
!3830 = !DILocation(line: 137, column: 7, scope: !3819)
!3831 = !DILocation(line: 142, column: 7, scope: !3819)
!3832 = !DILocation(line: 145, column: 7, scope: !3819)
!3833 = !DILocation(line: 150, column: 7, scope: !3819)
!3834 = !DILocation(line: 154, column: 7, scope: !3819)
!3835 = !DILocation(line: 159, column: 7, scope: !3819)
!3836 = !DILocation(line: 163, column: 7, scope: !3819)
!3837 = !DILocation(line: 170, column: 7, scope: !3819)
!3838 = !DILocation(line: 174, column: 7, scope: !3819)
!3839 = !DILocation(line: 176, column: 1, scope: !3794)
!3840 = distinct !DISubprogram(name: "version_etc_ar", scope: !520, file: !520, line: 183, type: !3841, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !519, retainedNodes: !3843)
!3841 = !DISubroutineType(types: !3842)
!3842 = !{null, !3797, !42, !42, !42, !3799}
!3843 = !{!3844, !3845, !3846, !3847, !3848, !3849}
!3844 = !DILocalVariable(name: "stream", arg: 1, scope: !3840, file: !520, line: 183, type: !3797)
!3845 = !DILocalVariable(name: "command_name", arg: 2, scope: !3840, file: !520, line: 184, type: !42)
!3846 = !DILocalVariable(name: "package", arg: 3, scope: !3840, file: !520, line: 184, type: !42)
!3847 = !DILocalVariable(name: "version", arg: 4, scope: !3840, file: !520, line: 185, type: !42)
!3848 = !DILocalVariable(name: "authors", arg: 5, scope: !3840, file: !520, line: 185, type: !3799)
!3849 = !DILocalVariable(name: "n_authors", scope: !3840, file: !520, line: 187, type: !99)
!3850 = !DILocation(line: 0, scope: !3840)
!3851 = !DILocation(line: 189, column: 8, scope: !3852)
!3852 = distinct !DILexicalBlock(scope: !3840, file: !520, line: 189, column: 3)
!3853 = !DILocation(line: 0, scope: !3852)
!3854 = !DILocation(line: 189, column: 23, scope: !3855)
!3855 = distinct !DILexicalBlock(scope: !3852, file: !520, line: 189, column: 3)
!3856 = !DILocation(line: 189, column: 3, scope: !3852)
!3857 = !DILocation(line: 189, column: 52, scope: !3855)
!3858 = distinct !{!3858, !3856, !3859}
!3859 = !DILocation(line: 190, column: 5, scope: !3852)
!3860 = !DILocation(line: 191, column: 3, scope: !3840)
!3861 = !DILocation(line: 192, column: 1, scope: !3840)
!3862 = distinct !DISubprogram(name: "version_etc_va", scope: !520, file: !520, line: 199, type: !3863, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !519, retainedNodes: !3872)
!3863 = !DISubroutineType(types: !3864)
!3864 = !{null, !3797, !42, !42, !42, !3865}
!3865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3866, size: 64)
!3866 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !520, line: 192, size: 192, elements: !3867)
!3867 = !{!3868, !3869, !3870, !3871}
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !3866, file: !520, line: 192, baseType: !7, size: 32)
!3869 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !3866, file: !520, line: 192, baseType: !7, size: 32, offset: 32)
!3870 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !3866, file: !520, line: 192, baseType: !97, size: 64, offset: 64)
!3871 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !3866, file: !520, line: 192, baseType: !97, size: 64, offset: 128)
!3872 = !{!3873, !3874, !3875, !3876, !3877, !3878, !3879}
!3873 = !DILocalVariable(name: "stream", arg: 1, scope: !3862, file: !520, line: 199, type: !3797)
!3874 = !DILocalVariable(name: "command_name", arg: 2, scope: !3862, file: !520, line: 200, type: !42)
!3875 = !DILocalVariable(name: "package", arg: 3, scope: !3862, file: !520, line: 200, type: !42)
!3876 = !DILocalVariable(name: "version", arg: 4, scope: !3862, file: !520, line: 201, type: !42)
!3877 = !DILocalVariable(name: "authors", arg: 5, scope: !3862, file: !520, line: 201, type: !3865)
!3878 = !DILocalVariable(name: "n_authors", scope: !3862, file: !520, line: 203, type: !99)
!3879 = !DILocalVariable(name: "authtab", scope: !3862, file: !520, line: 204, type: !3880)
!3880 = !DICompositeType(tag: DW_TAG_array_type, baseType: !42, size: 640, elements: !351)
!3881 = !DILocation(line: 0, scope: !3862)
!3882 = !DILocation(line: 204, column: 3, scope: !3862)
!3883 = !DILocation(line: 204, column: 15, scope: !3862)
!3884 = !DILocation(line: 0, scope: !3885)
!3885 = distinct !DILexicalBlock(scope: !3886, file: !520, line: 206, column: 3)
!3886 = distinct !DILexicalBlock(scope: !3862, file: !520, line: 206, column: 3)
!3887 = !DILocation(line: 208, column: 35, scope: !3885)
!3888 = !DILocation(line: 208, column: 14, scope: !3885)
!3889 = !DILocation(line: 208, column: 33, scope: !3885)
!3890 = !DILocation(line: 208, column: 67, scope: !3885)
!3891 = !DILocation(line: 206, column: 3, scope: !3886)
!3892 = !DILocation(line: 0, scope: !3886)
!3893 = !DILocation(line: 211, column: 3, scope: !3862)
!3894 = !DILocation(line: 213, column: 1, scope: !3862)
!3895 = distinct !DISubprogram(name: "version_etc", scope: !520, file: !520, line: 230, type: !3896, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !519, retainedNodes: !3898)
!3896 = !DISubroutineType(types: !3897)
!3897 = !{null, !3797, !42, !42, !42, null}
!3898 = !{!3899, !3900, !3901, !3902, !3903}
!3899 = !DILocalVariable(name: "stream", arg: 1, scope: !3895, file: !520, line: 230, type: !3797)
!3900 = !DILocalVariable(name: "command_name", arg: 2, scope: !3895, file: !520, line: 231, type: !42)
!3901 = !DILocalVariable(name: "package", arg: 3, scope: !3895, file: !520, line: 231, type: !42)
!3902 = !DILocalVariable(name: "version", arg: 4, scope: !3895, file: !520, line: 232, type: !42)
!3903 = !DILocalVariable(name: "authors", scope: !3895, file: !520, line: 234, type: !3904)
!3904 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !47, line: 52, baseType: !3905)
!3905 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !3906, line: 32, baseType: !3907)
!3906 = !DIFile(filename: "/usr/lib/clang/10.0.0/include/stdarg.h", directory: "")
!3907 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !520, line: 234, baseType: !3908)
!3908 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3866, size: 192, elements: !82)
!3909 = !DILocation(line: 0, scope: !3895)
!3910 = !DILocation(line: 234, column: 3, scope: !3895)
!3911 = !DILocation(line: 234, column: 11, scope: !3895)
!3912 = !DILocation(line: 236, column: 3, scope: !3895)
!3913 = !DILocation(line: 237, column: 3, scope: !3895)
!3914 = !DILocation(line: 238, column: 3, scope: !3895)
!3915 = !DILocation(line: 239, column: 1, scope: !3895)
!3916 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !520, file: !520, line: 242, type: !126, scopeLine: 243, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !519, retainedNodes: !45)
!3917 = !DILocation(line: 244, column: 3, scope: !3916)
!3918 = !DILocation(line: 249, column: 3, scope: !3916)
!3919 = !DILocation(line: 255, column: 3, scope: !3916)
!3920 = !DILocation(line: 260, column: 3, scope: !3916)
!3921 = !DILocation(line: 262, column: 1, scope: !3916)
!3922 = distinct !DISubprogram(name: "xnmalloc", scope: !146, file: !146, line: 99, type: !3923, scopeLine: 100, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !561, retainedNodes: !3925)
!3923 = !DISubroutineType(types: !3924)
!3924 = !{!97, !99, !99}
!3925 = !{!3926, !3927}
!3926 = !DILocalVariable(name: "n", arg: 1, scope: !3922, file: !146, line: 99, type: !99)
!3927 = !DILocalVariable(name: "s", arg: 2, scope: !3922, file: !146, line: 99, type: !99)
!3928 = !DILocation(line: 0, scope: !3922)
!3929 = !DILocation(line: 101, column: 7, scope: !3930)
!3930 = distinct !DILexicalBlock(scope: !3922, file: !146, line: 101, column: 7)
!3931 = !DILocation(line: 101, column: 7, scope: !3922)
!3932 = !DILocation(line: 102, column: 5, scope: !3930)
!3933 = !DILocation(line: 103, column: 21, scope: !3922)
!3934 = !DILocalVariable(name: "n", arg: 1, scope: !3935, file: !562, line: 39, type: !99)
!3935 = distinct !DISubprogram(name: "xmalloc", scope: !562, file: !562, line: 39, type: !3936, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !561, retainedNodes: !3938)
!3936 = !DISubroutineType(types: !3937)
!3937 = !{!97, !99}
!3938 = !{!3934, !3939}
!3939 = !DILocalVariable(name: "p", scope: !3935, file: !562, line: 41, type: !97)
!3940 = !DILocation(line: 0, scope: !3935, inlinedAt: !3941)
!3941 = distinct !DILocation(line: 103, column: 10, scope: !3922)
!3942 = !DILocation(line: 41, column: 13, scope: !3935, inlinedAt: !3941)
!3943 = !DILocation(line: 42, column: 8, scope: !3944, inlinedAt: !3941)
!3944 = distinct !DILexicalBlock(scope: !3935, file: !562, line: 42, column: 7)
!3945 = !DILocation(line: 42, column: 15, scope: !3944, inlinedAt: !3941)
!3946 = !DILocation(line: 42, column: 10, scope: !3944, inlinedAt: !3941)
!3947 = !DILocation(line: 43, column: 5, scope: !3944, inlinedAt: !3941)
!3948 = !DILocation(line: 103, column: 3, scope: !3922)
!3949 = !DILocation(line: 0, scope: !3935)
!3950 = !DILocation(line: 41, column: 13, scope: !3935)
!3951 = !DILocation(line: 42, column: 8, scope: !3944)
!3952 = !DILocation(line: 42, column: 15, scope: !3944)
!3953 = !DILocation(line: 42, column: 10, scope: !3944)
!3954 = !DILocation(line: 43, column: 5, scope: !3944)
!3955 = !DILocation(line: 44, column: 3, scope: !3935)
!3956 = distinct !DISubprogram(name: "xnrealloc", scope: !146, file: !146, line: 112, type: !3957, scopeLine: 113, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !561, retainedNodes: !3959)
!3957 = !DISubroutineType(types: !3958)
!3958 = !{!97, !97, !99, !99}
!3959 = !{!3960, !3961, !3962}
!3960 = !DILocalVariable(name: "p", arg: 1, scope: !3956, file: !146, line: 112, type: !97)
!3961 = !DILocalVariable(name: "n", arg: 2, scope: !3956, file: !146, line: 112, type: !99)
!3962 = !DILocalVariable(name: "s", arg: 3, scope: !3956, file: !146, line: 112, type: !99)
!3963 = !DILocation(line: 0, scope: !3956)
!3964 = !DILocation(line: 114, column: 7, scope: !3965)
!3965 = distinct !DILexicalBlock(scope: !3956, file: !146, line: 114, column: 7)
!3966 = !DILocation(line: 114, column: 7, scope: !3956)
!3967 = !DILocation(line: 115, column: 5, scope: !3965)
!3968 = !DILocation(line: 116, column: 25, scope: !3956)
!3969 = !DILocalVariable(name: "p", arg: 1, scope: !3970, file: !562, line: 51, type: !97)
!3970 = distinct !DISubprogram(name: "xrealloc", scope: !562, file: !562, line: 51, type: !3971, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !561, retainedNodes: !3973)
!3971 = !DISubroutineType(types: !3972)
!3972 = !{!97, !97, !99}
!3973 = !{!3969, !3974}
!3974 = !DILocalVariable(name: "n", arg: 2, scope: !3970, file: !562, line: 51, type: !99)
!3975 = !DILocation(line: 0, scope: !3970, inlinedAt: !3976)
!3976 = distinct !DILocation(line: 116, column: 10, scope: !3956)
!3977 = !DILocation(line: 53, column: 8, scope: !3978, inlinedAt: !3976)
!3978 = distinct !DILexicalBlock(scope: !3970, file: !562, line: 53, column: 7)
!3979 = !DILocation(line: 53, column: 13, scope: !3978, inlinedAt: !3976)
!3980 = !DILocation(line: 53, column: 10, scope: !3978, inlinedAt: !3976)
!3981 = !DILocation(line: 57, column: 7, scope: !3982, inlinedAt: !3976)
!3982 = distinct !DILexicalBlock(scope: !3978, file: !562, line: 54, column: 5)
!3983 = !DILocation(line: 58, column: 7, scope: !3982, inlinedAt: !3976)
!3984 = !DILocation(line: 61, column: 7, scope: !3970, inlinedAt: !3976)
!3985 = !DILocation(line: 62, column: 8, scope: !3986, inlinedAt: !3976)
!3986 = distinct !DILexicalBlock(scope: !3970, file: !562, line: 62, column: 7)
!3987 = !DILocation(line: 62, column: 13, scope: !3986, inlinedAt: !3976)
!3988 = !DILocation(line: 62, column: 10, scope: !3986, inlinedAt: !3976)
!3989 = !DILocation(line: 63, column: 5, scope: !3986, inlinedAt: !3976)
!3990 = !DILocation(line: 116, column: 3, scope: !3956)
!3991 = !DILocation(line: 0, scope: !3970)
!3992 = !DILocation(line: 53, column: 8, scope: !3978)
!3993 = !DILocation(line: 53, column: 13, scope: !3978)
!3994 = !DILocation(line: 53, column: 10, scope: !3978)
!3995 = !DILocation(line: 57, column: 7, scope: !3982)
!3996 = !DILocation(line: 58, column: 7, scope: !3982)
!3997 = !DILocation(line: 61, column: 7, scope: !3970)
!3998 = !DILocation(line: 62, column: 8, scope: !3986)
!3999 = !DILocation(line: 62, column: 13, scope: !3986)
!4000 = !DILocation(line: 62, column: 10, scope: !3986)
!4001 = !DILocation(line: 63, column: 5, scope: !3986)
!4002 = !DILocation(line: 65, column: 1, scope: !3970)
!4003 = !DILocation(line: 0, scope: !565)
!4004 = !DILocation(line: 176, column: 14, scope: !565)
!4005 = !DILocation(line: 178, column: 9, scope: !4006)
!4006 = distinct !DILexicalBlock(scope: !565, file: !146, line: 178, column: 7)
!4007 = !DILocation(line: 178, column: 7, scope: !565)
!4008 = !DILocation(line: 180, column: 13, scope: !4009)
!4009 = distinct !DILexicalBlock(scope: !4010, file: !146, line: 180, column: 11)
!4010 = distinct !DILexicalBlock(scope: !4006, file: !146, line: 179, column: 5)
!4011 = !DILocation(line: 180, column: 11, scope: !4010)
!4012 = !DILocation(line: 188, column: 30, scope: !4013)
!4013 = distinct !DILexicalBlock(scope: !4009, file: !146, line: 181, column: 9)
!4014 = !DILocation(line: 189, column: 16, scope: !4013)
!4015 = !DILocation(line: 189, column: 13, scope: !4013)
!4016 = !DILocation(line: 190, column: 9, scope: !4013)
!4017 = !DILocation(line: 191, column: 11, scope: !4018)
!4018 = distinct !DILexicalBlock(scope: !4010, file: !146, line: 191, column: 11)
!4019 = !DILocation(line: 191, column: 11, scope: !4010)
!4020 = !DILocation(line: 206, column: 7, scope: !565)
!4021 = !DILocation(line: 207, column: 25, scope: !565)
!4022 = !DILocation(line: 0, scope: !3970, inlinedAt: !4023)
!4023 = distinct !DILocation(line: 207, column: 10, scope: !565)
!4024 = !DILocation(line: 53, column: 10, scope: !3978, inlinedAt: !4023)
!4025 = !DILocation(line: 192, column: 9, scope: !4018)
!4026 = !DILocation(line: 200, column: 69, scope: !4027)
!4027 = distinct !DILexicalBlock(scope: !4028, file: !146, line: 200, column: 11)
!4028 = distinct !DILexicalBlock(scope: !4006, file: !146, line: 195, column: 5)
!4029 = !DILocation(line: 201, column: 11, scope: !4027)
!4030 = !DILocation(line: 200, column: 11, scope: !4028)
!4031 = !DILocation(line: 202, column: 9, scope: !4027)
!4032 = !DILocation(line: 203, column: 14, scope: !4028)
!4033 = !DILocation(line: 203, column: 18, scope: !4028)
!4034 = !DILocation(line: 203, column: 9, scope: !4028)
!4035 = !DILocation(line: 53, column: 8, scope: !3978, inlinedAt: !4023)
!4036 = !DILocation(line: 57, column: 7, scope: !3982, inlinedAt: !4023)
!4037 = !DILocation(line: 58, column: 7, scope: !3982, inlinedAt: !4023)
!4038 = !DILocation(line: 61, column: 7, scope: !3970, inlinedAt: !4023)
!4039 = !DILocation(line: 62, column: 8, scope: !3986, inlinedAt: !4023)
!4040 = !DILocation(line: 62, column: 13, scope: !3986, inlinedAt: !4023)
!4041 = !DILocation(line: 62, column: 10, scope: !3986, inlinedAt: !4023)
!4042 = !DILocation(line: 63, column: 5, scope: !3986, inlinedAt: !4023)
!4043 = !DILocation(line: 207, column: 3, scope: !565)
!4044 = distinct !DISubprogram(name: "xcharalloc", scope: !146, file: !146, line: 216, type: !3014, scopeLine: 217, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !561, retainedNodes: !4045)
!4045 = !{!4046}
!4046 = !DILocalVariable(name: "n", arg: 1, scope: !4044, file: !146, line: 216, type: !99)
!4047 = !DILocation(line: 0, scope: !4044)
!4048 = !DILocation(line: 0, scope: !3935, inlinedAt: !4049)
!4049 = distinct !DILocation(line: 218, column: 10, scope: !4044)
!4050 = !DILocation(line: 41, column: 13, scope: !3935, inlinedAt: !4049)
!4051 = !DILocation(line: 42, column: 8, scope: !3944, inlinedAt: !4049)
!4052 = !DILocation(line: 42, column: 15, scope: !3944, inlinedAt: !4049)
!4053 = !DILocation(line: 42, column: 10, scope: !3944, inlinedAt: !4049)
!4054 = !DILocation(line: 43, column: 5, scope: !3944, inlinedAt: !4049)
!4055 = !DILocation(line: 218, column: 3, scope: !4044)
!4056 = distinct !DISubprogram(name: "x2realloc", scope: !562, file: !562, line: 74, type: !4057, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !561, retainedNodes: !4059)
!4057 = !DISubroutineType(types: !4058)
!4058 = !{!97, !97, !568}
!4059 = !{!4060, !4061}
!4060 = !DILocalVariable(name: "p", arg: 1, scope: !4056, file: !562, line: 74, type: !97)
!4061 = !DILocalVariable(name: "pn", arg: 2, scope: !4056, file: !562, line: 74, type: !568)
!4062 = !DILocation(line: 0, scope: !4056)
!4063 = !DILocation(line: 0, scope: !565, inlinedAt: !4064)
!4064 = distinct !DILocation(line: 76, column: 10, scope: !4056)
!4065 = !DILocation(line: 176, column: 14, scope: !565, inlinedAt: !4064)
!4066 = !DILocation(line: 178, column: 9, scope: !4006, inlinedAt: !4064)
!4067 = !DILocation(line: 178, column: 7, scope: !565, inlinedAt: !4064)
!4068 = !DILocation(line: 180, column: 13, scope: !4009, inlinedAt: !4064)
!4069 = !DILocation(line: 180, column: 11, scope: !4010, inlinedAt: !4064)
!4070 = !DILocation(line: 191, column: 11, scope: !4018, inlinedAt: !4064)
!4071 = !DILocation(line: 191, column: 11, scope: !4010, inlinedAt: !4064)
!4072 = !DILocation(line: 206, column: 7, scope: !565, inlinedAt: !4064)
!4073 = !DILocation(line: 0, scope: !3970, inlinedAt: !4074)
!4074 = distinct !DILocation(line: 207, column: 10, scope: !565, inlinedAt: !4064)
!4075 = !DILocation(line: 53, column: 10, scope: !3978, inlinedAt: !4074)
!4076 = !DILocation(line: 192, column: 9, scope: !4018, inlinedAt: !4064)
!4077 = !DILocation(line: 201, column: 11, scope: !4027, inlinedAt: !4064)
!4078 = !DILocation(line: 200, column: 11, scope: !4028, inlinedAt: !4064)
!4079 = !DILocation(line: 202, column: 9, scope: !4027, inlinedAt: !4064)
!4080 = !DILocation(line: 203, column: 14, scope: !4028, inlinedAt: !4064)
!4081 = !DILocation(line: 203, column: 18, scope: !4028, inlinedAt: !4064)
!4082 = !DILocation(line: 203, column: 9, scope: !4028, inlinedAt: !4064)
!4083 = !DILocation(line: 53, column: 8, scope: !3978, inlinedAt: !4074)
!4084 = !DILocation(line: 57, column: 7, scope: !3982, inlinedAt: !4074)
!4085 = !DILocation(line: 58, column: 7, scope: !3982, inlinedAt: !4074)
!4086 = !DILocation(line: 61, column: 7, scope: !3970, inlinedAt: !4074)
!4087 = !DILocation(line: 62, column: 8, scope: !3986, inlinedAt: !4074)
!4088 = !DILocation(line: 62, column: 13, scope: !3986, inlinedAt: !4074)
!4089 = !DILocation(line: 62, column: 10, scope: !3986, inlinedAt: !4074)
!4090 = !DILocation(line: 63, column: 5, scope: !3986, inlinedAt: !4074)
!4091 = !DILocation(line: 76, column: 3, scope: !4056)
!4092 = distinct !DISubprogram(name: "xzalloc", scope: !562, file: !562, line: 84, type: !3936, scopeLine: 85, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !561, retainedNodes: !4093)
!4093 = !{!4094}
!4094 = !DILocalVariable(name: "n", arg: 1, scope: !4092, file: !562, line: 84, type: !99)
!4095 = !DILocation(line: 0, scope: !4092)
!4096 = !DILocalVariable(name: "n", arg: 1, scope: !4097, file: !562, line: 93, type: !99)
!4097 = distinct !DISubprogram(name: "xcalloc", scope: !562, file: !562, line: 93, type: !3923, scopeLine: 94, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !561, retainedNodes: !4098)
!4098 = !{!4096, !4099, !4100}
!4099 = !DILocalVariable(name: "s", arg: 2, scope: !4097, file: !562, line: 93, type: !99)
!4100 = !DILocalVariable(name: "p", scope: !4097, file: !562, line: 95, type: !97)
!4101 = !DILocation(line: 0, scope: !4097, inlinedAt: !4102)
!4102 = distinct !DILocation(line: 86, column: 10, scope: !4092)
!4103 = !DILocation(line: 100, column: 7, scope: !4104, inlinedAt: !4102)
!4104 = distinct !DILexicalBlock(scope: !4097, file: !562, line: 100, column: 7)
!4105 = !DILocation(line: 101, column: 7, scope: !4104, inlinedAt: !4102)
!4106 = !DILocation(line: 101, column: 18, scope: !4104, inlinedAt: !4102)
!4107 = !DILocation(line: 101, column: 16, scope: !4104, inlinedAt: !4102)
!4108 = !DILocation(line: 100, column: 7, scope: !4097, inlinedAt: !4102)
!4109 = !DILocation(line: 102, column: 5, scope: !4104, inlinedAt: !4102)
!4110 = !DILocation(line: 86, column: 3, scope: !4092)
!4111 = !DILocation(line: 0, scope: !4097)
!4112 = !DILocation(line: 100, column: 7, scope: !4104)
!4113 = !DILocation(line: 101, column: 7, scope: !4104)
!4114 = !DILocation(line: 101, column: 18, scope: !4104)
!4115 = !DILocation(line: 101, column: 16, scope: !4104)
!4116 = !DILocation(line: 100, column: 7, scope: !4097)
!4117 = !DILocation(line: 102, column: 5, scope: !4104)
!4118 = !DILocation(line: 103, column: 3, scope: !4097)
!4119 = distinct !DISubprogram(name: "xmemdup", scope: !562, file: !562, line: 111, type: !4120, scopeLine: 112, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !561, retainedNodes: !4122)
!4120 = !DISubroutineType(types: !4121)
!4121 = !{!97, !285, !99}
!4122 = !{!4123, !4124}
!4123 = !DILocalVariable(name: "p", arg: 1, scope: !4119, file: !562, line: 111, type: !285)
!4124 = !DILocalVariable(name: "s", arg: 2, scope: !4119, file: !562, line: 111, type: !99)
!4125 = !DILocation(line: 0, scope: !4119)
!4126 = !DILocation(line: 0, scope: !3935, inlinedAt: !4127)
!4127 = distinct !DILocation(line: 113, column: 18, scope: !4119)
!4128 = !DILocation(line: 41, column: 13, scope: !3935, inlinedAt: !4127)
!4129 = !DILocation(line: 42, column: 8, scope: !3944, inlinedAt: !4127)
!4130 = !DILocation(line: 42, column: 15, scope: !3944, inlinedAt: !4127)
!4131 = !DILocation(line: 42, column: 10, scope: !3944, inlinedAt: !4127)
!4132 = !DILocation(line: 43, column: 5, scope: !3944, inlinedAt: !4127)
!4133 = !DILocalVariable(name: "__dest", arg: 1, scope: !4134, file: !1529, line: 31, type: !1670)
!4134 = distinct !DISubprogram(name: "memcpy", scope: !1529, file: !1529, line: 31, type: !1668, scopeLine: 33, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !561, retainedNodes: !4135)
!4135 = !{!4133, !4136, !4137}
!4136 = !DILocalVariable(name: "__src", arg: 2, scope: !4134, file: !1529, line: 31, type: !1671)
!4137 = !DILocalVariable(name: "__len", arg: 3, scope: !4134, file: !1529, line: 31, type: !99)
!4138 = !DILocation(line: 0, scope: !4134, inlinedAt: !4139)
!4139 = distinct !DILocation(line: 113, column: 10, scope: !4119)
!4140 = !DILocation(line: 34, column: 10, scope: !4134, inlinedAt: !4139)
!4141 = !DILocation(line: 113, column: 3, scope: !4119)
!4142 = distinct !DISubprogram(name: "xstrdup", scope: !562, file: !562, line: 119, type: !119, scopeLine: 120, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !561, retainedNodes: !4143)
!4143 = !{!4144}
!4144 = !DILocalVariable(name: "string", arg: 1, scope: !4142, file: !562, line: 119, type: !42)
!4145 = !DILocation(line: 0, scope: !4142)
!4146 = !DILocation(line: 121, column: 27, scope: !4142)
!4147 = !DILocation(line: 121, column: 43, scope: !4142)
!4148 = !DILocation(line: 0, scope: !4119, inlinedAt: !4149)
!4149 = distinct !DILocation(line: 121, column: 10, scope: !4142)
!4150 = !DILocation(line: 0, scope: !3935, inlinedAt: !4151)
!4151 = distinct !DILocation(line: 113, column: 18, scope: !4119, inlinedAt: !4149)
!4152 = !DILocation(line: 41, column: 13, scope: !3935, inlinedAt: !4151)
!4153 = !DILocation(line: 42, column: 8, scope: !3944, inlinedAt: !4151)
!4154 = !DILocation(line: 42, column: 15, scope: !3944, inlinedAt: !4151)
!4155 = !DILocation(line: 42, column: 10, scope: !3944, inlinedAt: !4151)
!4156 = !DILocation(line: 43, column: 5, scope: !3944, inlinedAt: !4151)
!4157 = !DILocation(line: 0, scope: !4134, inlinedAt: !4158)
!4158 = distinct !DILocation(line: 113, column: 10, scope: !4119, inlinedAt: !4149)
!4159 = !DILocation(line: 34, column: 10, scope: !4134, inlinedAt: !4158)
!4160 = !DILocation(line: 121, column: 3, scope: !4142)
!4161 = distinct !DISubprogram(name: "xalloc_die", scope: !583, file: !583, line: 32, type: !126, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !582, retainedNodes: !45)
!4162 = !DILocation(line: 34, column: 10, scope: !4161)
!4163 = !DILocation(line: 34, column: 33, scope: !4161)
!4164 = !DILocation(line: 34, column: 3, scope: !4161)
!4165 = !DILocation(line: 40, column: 3, scope: !4161)
!4166 = distinct !DISubprogram(name: "xprintf", scope: !586, file: !586, line: 32, type: !4167, scopeLine: 33, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !585, retainedNodes: !4169)
!4167 = !DISubroutineType(types: !4168)
!4168 = !{!44, !1713, null}
!4169 = !{!4170, !4171, !4176}
!4170 = !DILocalVariable(name: "format", arg: 1, scope: !4166, file: !586, line: 32, type: !1713)
!4171 = !DILocalVariable(name: "args", scope: !4166, file: !586, line: 34, type: !4172)
!4172 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !47, line: 52, baseType: !4173)
!4173 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !3906, line: 32, baseType: !4174)
!4174 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !586, line: 34, baseType: !4175)
!4175 = !DICompositeType(tag: DW_TAG_array_type, baseType: !592, size: 192, elements: !82)
!4176 = !DILocalVariable(name: "retval", scope: !4166, file: !586, line: 35, type: !44)
!4177 = !DILocation(line: 0, scope: !4166)
!4178 = !DILocation(line: 34, column: 3, scope: !4166)
!4179 = !DILocation(line: 34, column: 11, scope: !4166)
!4180 = !DILocation(line: 36, column: 3, scope: !4166)
!4181 = !DILocalVariable(name: "format", arg: 1, scope: !4182, file: !586, line: 46, type: !1713)
!4182 = distinct !DISubprogram(name: "xvprintf", scope: !586, file: !586, line: 46, type: !4183, scopeLine: 47, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !585, retainedNodes: !4185)
!4183 = !DISubroutineType(types: !4184)
!4184 = !{!44, !1713, !591}
!4185 = !{!4181, !4186, !4187}
!4186 = !DILocalVariable(name: "args", arg: 2, scope: !4182, file: !586, line: 46, type: !591)
!4187 = !DILocalVariable(name: "retval", scope: !4182, file: !586, line: 48, type: !44)
!4188 = !DILocation(line: 0, scope: !4182, inlinedAt: !4189)
!4189 = distinct !DILocation(line: 37, column: 12, scope: !4166)
!4190 = !DILocalVariable(name: "__fmt", arg: 1, scope: !4191, file: !4192, line: 117, type: !1713)
!4191 = distinct !DISubprogram(name: "vprintf", scope: !4192, file: !4192, line: 117, type: !4183, scopeLine: 118, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !585, retainedNodes: !4193)
!4192 = !DIFile(filename: "/usr/include/bits/stdio2.h", directory: "")
!4193 = !{!4190, !4194}
!4194 = !DILocalVariable(name: "__ap", arg: 2, scope: !4191, file: !4192, line: 117, type: !591)
!4195 = !DILocation(line: 0, scope: !4191, inlinedAt: !4196)
!4196 = distinct !DILocation(line: 48, column: 16, scope: !4182, inlinedAt: !4189)
!4197 = !DILocation(line: 120, column: 26, scope: !4191, inlinedAt: !4196)
!4198 = !{!4199, !4201}
!4199 = distinct !{!4199, !4200, !"vprintf: argument 0"}
!4200 = distinct !{!4200, !"vprintf"}
!4201 = distinct !{!4201, !4202, !"xvprintf: argument 0"}
!4202 = distinct !{!4202, !"xvprintf"}
!4203 = !DILocation(line: 120, column: 10, scope: !4191, inlinedAt: !4196)
!4204 = !DILocation(line: 49, column: 14, scope: !4205, inlinedAt: !4189)
!4205 = distinct !DILexicalBlock(scope: !4182, file: !586, line: 49, column: 7)
!4206 = !DILocation(line: 49, column: 18, scope: !4205, inlinedAt: !4189)
!4207 = !DILocation(line: 49, column: 31, scope: !4205, inlinedAt: !4189)
!4208 = !DILocation(line: 49, column: 23, scope: !4205, inlinedAt: !4189)
!4209 = !DILocation(line: 49, column: 7, scope: !4182, inlinedAt: !4189)
!4210 = !DILocation(line: 50, column: 12, scope: !4205, inlinedAt: !4189)
!4211 = !DILocation(line: 50, column: 26, scope: !4205, inlinedAt: !4189)
!4212 = !DILocation(line: 50, column: 33, scope: !4205, inlinedAt: !4189)
!4213 = !DILocation(line: 50, column: 5, scope: !4205, inlinedAt: !4189)
!4214 = !DILocation(line: 38, column: 3, scope: !4166)
!4215 = !DILocation(line: 41, column: 1, scope: !4166)
!4216 = !DILocation(line: 40, column: 3, scope: !4166)
!4217 = !DILocation(line: 0, scope: !4182)
!4218 = !DILocation(line: 0, scope: !4191, inlinedAt: !4219)
!4219 = distinct !DILocation(line: 48, column: 16, scope: !4182)
!4220 = !DILocation(line: 120, column: 26, scope: !4191, inlinedAt: !4219)
!4221 = !{!4222}
!4222 = distinct !{!4222, !4223, !"vprintf: argument 0"}
!4223 = distinct !{!4223, !"vprintf"}
!4224 = !DILocation(line: 120, column: 10, scope: !4191, inlinedAt: !4219)
!4225 = !DILocation(line: 49, column: 14, scope: !4205)
!4226 = !DILocation(line: 49, column: 18, scope: !4205)
!4227 = !DILocation(line: 49, column: 31, scope: !4205)
!4228 = !DILocation(line: 49, column: 23, scope: !4205)
!4229 = !DILocation(line: 49, column: 7, scope: !4182)
!4230 = !DILocation(line: 50, column: 12, scope: !4205)
!4231 = !DILocation(line: 50, column: 26, scope: !4205)
!4232 = !DILocation(line: 50, column: 33, scope: !4205)
!4233 = !DILocation(line: 50, column: 5, scope: !4205)
!4234 = !DILocation(line: 52, column: 3, scope: !4182)
!4235 = distinct !DISubprogram(name: "xfprintf", scope: !586, file: !586, line: 58, type: !4236, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !585, retainedNodes: !4241)
!4236 = !DISubroutineType(types: !4237)
!4237 = !{!44, !4238, !1713, null}
!4238 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !4239)
!4239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4240, size: 64)
!4240 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !401, line: 7, baseType: !602)
!4241 = !{!4242, !4243, !4244, !4245}
!4242 = !DILocalVariable(name: "stream", arg: 1, scope: !4235, file: !586, line: 58, type: !4238)
!4243 = !DILocalVariable(name: "format", arg: 2, scope: !4235, file: !586, line: 58, type: !1713)
!4244 = !DILocalVariable(name: "args", scope: !4235, file: !586, line: 60, type: !4172)
!4245 = !DILocalVariable(name: "retval", scope: !4235, file: !586, line: 61, type: !44)
!4246 = !DILocation(line: 0, scope: !4235)
!4247 = !DILocation(line: 60, column: 3, scope: !4235)
!4248 = !DILocation(line: 60, column: 11, scope: !4235)
!4249 = !DILocation(line: 62, column: 3, scope: !4235)
!4250 = !DILocalVariable(name: "stream", arg: 1, scope: !4251, file: !586, line: 72, type: !4238)
!4251 = distinct !DISubprogram(name: "xvfprintf", scope: !586, file: !586, line: 72, type: !4252, scopeLine: 73, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !585, retainedNodes: !4254)
!4252 = !DISubroutineType(types: !4253)
!4253 = !{!44, !4238, !1713, !591}
!4254 = !{!4250, !4255, !4256, !4257}
!4255 = !DILocalVariable(name: "format", arg: 2, scope: !4251, file: !586, line: 72, type: !1713)
!4256 = !DILocalVariable(name: "args", arg: 3, scope: !4251, file: !586, line: 72, type: !591)
!4257 = !DILocalVariable(name: "retval", scope: !4251, file: !586, line: 74, type: !44)
!4258 = !DILocation(line: 0, scope: !4251, inlinedAt: !4259)
!4259 = distinct !DILocation(line: 63, column: 12, scope: !4235)
!4260 = !DILocalVariable(name: "__stream", arg: 1, scope: !4261, file: !4192, line: 127, type: !4238)
!4261 = distinct !DISubprogram(name: "vfprintf", scope: !4192, file: !4192, line: 127, type: !4252, scopeLine: 129, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !585, retainedNodes: !4262)
!4262 = !{!4260, !4263, !4264}
!4263 = !DILocalVariable(name: "__fmt", arg: 2, scope: !4261, file: !4192, line: 128, type: !1713)
!4264 = !DILocalVariable(name: "__ap", arg: 3, scope: !4261, file: !4192, line: 128, type: !591)
!4265 = !DILocation(line: 0, scope: !4261, inlinedAt: !4266)
!4266 = distinct !DILocation(line: 74, column: 16, scope: !4251, inlinedAt: !4259)
!4267 = !DILocation(line: 130, column: 10, scope: !4261, inlinedAt: !4266)
!4268 = !DILocation(line: 75, column: 14, scope: !4269, inlinedAt: !4259)
!4269 = distinct !DILexicalBlock(scope: !4251, file: !586, line: 75, column: 7)
!4270 = !DILocation(line: 75, column: 18, scope: !4269, inlinedAt: !4259)
!4271 = !DILocation(line: 75, column: 23, scope: !4269, inlinedAt: !4259)
!4272 = !DILocation(line: 75, column: 7, scope: !4251, inlinedAt: !4259)
!4273 = !DILocation(line: 76, column: 12, scope: !4269, inlinedAt: !4259)
!4274 = !DILocation(line: 76, column: 26, scope: !4269, inlinedAt: !4259)
!4275 = !DILocation(line: 76, column: 33, scope: !4269, inlinedAt: !4259)
!4276 = !DILocation(line: 76, column: 5, scope: !4269, inlinedAt: !4259)
!4277 = !DILocation(line: 64, column: 3, scope: !4235)
!4278 = !DILocation(line: 67, column: 1, scope: !4235)
!4279 = !DILocation(line: 66, column: 3, scope: !4235)
!4280 = !DILocation(line: 0, scope: !4251)
!4281 = !DILocation(line: 0, scope: !4261, inlinedAt: !4282)
!4282 = distinct !DILocation(line: 74, column: 16, scope: !4251)
!4283 = !DILocation(line: 130, column: 10, scope: !4261, inlinedAt: !4282)
!4284 = !DILocation(line: 75, column: 14, scope: !4269)
!4285 = !DILocation(line: 75, column: 18, scope: !4269)
!4286 = !DILocation(line: 75, column: 23, scope: !4269)
!4287 = !DILocation(line: 75, column: 7, scope: !4251)
!4288 = !DILocation(line: 76, column: 12, scope: !4269)
!4289 = !DILocation(line: 76, column: 26, scope: !4269)
!4290 = !DILocation(line: 76, column: 33, scope: !4269)
!4291 = !DILocation(line: 76, column: 5, scope: !4269)
!4292 = !DILocation(line: 78, column: 3, scope: !4251)
!4293 = distinct !DISubprogram(name: "rpl_calloc", scope: !637, file: !637, line: 42, type: !3923, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !636, retainedNodes: !4294)
!4294 = !{!4295, !4296, !4297, !4298}
!4295 = !DILocalVariable(name: "n", arg: 1, scope: !4293, file: !637, line: 42, type: !99)
!4296 = !DILocalVariable(name: "s", arg: 2, scope: !4293, file: !637, line: 42, type: !99)
!4297 = !DILocalVariable(name: "result", scope: !4293, file: !637, line: 44, type: !97)
!4298 = !DILocalVariable(name: "bytes", scope: !4299, file: !637, line: 56, type: !99)
!4299 = distinct !DILexicalBlock(scope: !4300, file: !637, line: 53, column: 5)
!4300 = distinct !DILexicalBlock(scope: !4293, file: !637, line: 47, column: 7)
!4301 = !DILocation(line: 0, scope: !4293)
!4302 = !DILocation(line: 47, column: 9, scope: !4300)
!4303 = !DILocation(line: 47, column: 19, scope: !4300)
!4304 = !DILocation(line: 47, column: 14, scope: !4300)
!4305 = !DILocation(line: 0, scope: !4299)
!4306 = !DILocation(line: 57, column: 21, scope: !4307)
!4307 = distinct !DILexicalBlock(scope: !4299, file: !637, line: 57, column: 11)
!4308 = !DILocation(line: 57, column: 11, scope: !4299)
!4309 = !DILocation(line: 59, column: 11, scope: !4310)
!4310 = distinct !DILexicalBlock(scope: !4307, file: !637, line: 58, column: 9)
!4311 = !DILocation(line: 59, column: 17, scope: !4310)
!4312 = !DILocation(line: 65, column: 12, scope: !4293)
!4313 = !DILocation(line: 72, column: 3, scope: !4293)
!4314 = !DILocation(line: 73, column: 1, scope: !4293)
!4315 = distinct !DISubprogram(name: "rpl_mbrtowc", scope: !640, file: !640, line: 86, type: !4316, scopeLine: 87, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !639, retainedNodes: !4322)
!4316 = !DISubroutineType(types: !4317)
!4317 = !{!99, !4318, !42, !99, !4319}
!4318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2298, size: 64)
!4319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4320, size: 64)
!4320 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !2294, line: 6, baseType: !4321)
!4321 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !313, line: 21, baseType: !646)
!4322 = !{!4323, !4324, !4325, !4326, !4327, !4328, !4329}
!4323 = !DILocalVariable(name: "pwc", arg: 1, scope: !4315, file: !640, line: 86, type: !4318)
!4324 = !DILocalVariable(name: "s", arg: 2, scope: !4315, file: !640, line: 86, type: !42)
!4325 = !DILocalVariable(name: "n", arg: 3, scope: !4315, file: !640, line: 86, type: !99)
!4326 = !DILocalVariable(name: "ps", arg: 4, scope: !4315, file: !640, line: 86, type: !4319)
!4327 = !DILocalVariable(name: "ret", scope: !4315, file: !640, line: 88, type: !99)
!4328 = !DILocalVariable(name: "wc", scope: !4315, file: !640, line: 89, type: !2298)
!4329 = !DILocalVariable(name: "uc", scope: !4330, file: !640, line: 156, type: !144)
!4330 = distinct !DILexicalBlock(scope: !4331, file: !640, line: 155, column: 5)
!4331 = distinct !DILexicalBlock(scope: !4315, file: !640, line: 154, column: 7)
!4332 = !DILocation(line: 0, scope: !4315)
!4333 = !DILocation(line: 89, column: 3, scope: !4315)
!4334 = !DILocation(line: 105, column: 9, scope: !4335)
!4335 = distinct !DILexicalBlock(scope: !4315, file: !640, line: 105, column: 7)
!4336 = !DILocation(line: 105, column: 7, scope: !4315)
!4337 = !DILocation(line: 145, column: 9, scope: !4315)
!4338 = !DILocation(line: 154, column: 19, scope: !4331)
!4339 = !DILocation(line: 154, column: 31, scope: !4331)
!4340 = !DILocation(line: 154, column: 26, scope: !4331)
!4341 = !DILocation(line: 154, column: 41, scope: !4331)
!4342 = !DILocation(line: 154, column: 7, scope: !4315)
!4343 = !DILocation(line: 156, column: 26, scope: !4330)
!4344 = !DILocation(line: 0, scope: !4330)
!4345 = !DILocation(line: 157, column: 14, scope: !4330)
!4346 = !DILocation(line: 157, column: 12, scope: !4330)
!4347 = !DILocation(line: 163, column: 1, scope: !4315)
!4348 = distinct !DISubprogram(name: "c_strtold", scope: !510, file: !510, line: 65, type: !158, scopeLine: 66, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !478, retainedNodes: !4349)
!4349 = !{!4350, !4351, !4352, !4353, !4354, !4355}
!4350 = !DILocalVariable(name: "nptr", arg: 1, scope: !4348, file: !510, line: 65, type: !42)
!4351 = !DILocalVariable(name: "endptr", arg: 2, scope: !4348, file: !510, line: 65, type: !161)
!4352 = !DILocalVariable(name: "r", scope: !4348, file: !510, line: 67, type: !160)
!4353 = !DILocalVariable(name: "locale", scope: !4348, file: !510, line: 73, type: !503)
!4354 = !DILocalVariable(name: "old_locale", scope: !4348, file: !510, line: 87, type: !503)
!4355 = !DILocalVariable(name: "saved_errno", scope: !4348, file: !510, line: 97, type: !44)
!4356 = !DILocation(line: 0, scope: !4348)
!4357 = !DILocation(line: 57, column: 8, scope: !4358, inlinedAt: !4362)
!4358 = distinct !DILexicalBlock(scope: !4359, file: !510, line: 57, column: 7)
!4359 = distinct !DISubprogram(name: "c_locale", scope: !510, file: !510, line: 55, type: !4360, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !478, retainedNodes: !45)
!4360 = !DISubroutineType(types: !4361)
!4361 = !{!503}
!4362 = distinct !DILocation(line: 73, column: 21, scope: !4348)
!4363 = !DILocation(line: 57, column: 7, scope: !4359, inlinedAt: !4362)
!4364 = !DILocation(line: 58, column: 22, scope: !4358, inlinedAt: !4362)
!4365 = !DILocation(line: 58, column: 20, scope: !4358, inlinedAt: !4362)
!4366 = !DILocation(line: 58, column: 5, scope: !4358, inlinedAt: !4362)
!4367 = !DILocation(line: 59, column: 10, scope: !4359, inlinedAt: !4362)
!4368 = !DILocation(line: 74, column: 8, scope: !4369)
!4369 = distinct !DILexicalBlock(scope: !4348, file: !510, line: 74, column: 7)
!4370 = !DILocation(line: 74, column: 7, scope: !4348)
!4371 = !DILocation(line: 76, column: 11, scope: !4372)
!4372 = distinct !DILexicalBlock(scope: !4373, file: !510, line: 76, column: 11)
!4373 = distinct !DILexicalBlock(scope: !4369, file: !510, line: 75, column: 5)
!4374 = !DILocation(line: 76, column: 11, scope: !4373)
!4375 = !DILocation(line: 77, column: 17, scope: !4372)
!4376 = !DILocation(line: 77, column: 9, scope: !4372)
!4377 = !DILocation(line: 87, column: 25, scope: !4348)
!4378 = !DILocation(line: 88, column: 18, scope: !4379)
!4379 = distinct !DILexicalBlock(scope: !4348, file: !510, line: 88, column: 7)
!4380 = !DILocation(line: 88, column: 7, scope: !4348)
!4381 = !DILocation(line: 90, column: 11, scope: !4382)
!4382 = distinct !DILexicalBlock(scope: !4383, file: !510, line: 90, column: 11)
!4383 = distinct !DILexicalBlock(scope: !4379, file: !510, line: 89, column: 5)
!4384 = !DILocation(line: 90, column: 11, scope: !4383)
!4385 = !DILocation(line: 91, column: 17, scope: !4382)
!4386 = !DILocation(line: 91, column: 9, scope: !4382)
!4387 = !DILocation(line: 95, column: 7, scope: !4348)
!4388 = !DILocation(line: 97, column: 21, scope: !4348)
!4389 = !DILocation(line: 98, column: 7, scope: !4390)
!4390 = distinct !DILexicalBlock(scope: !4348, file: !510, line: 98, column: 7)
!4391 = !DILocation(line: 98, column: 30, scope: !4390)
!4392 = !DILocation(line: 98, column: 7, scope: !4348)
!4393 = !DILocation(line: 100, column: 5, scope: !4390)
!4394 = !DILocation(line: 101, column: 9, scope: !4348)
!4395 = !DILocation(line: 135, column: 1, scope: !4348)
!4396 = distinct !DISubprogram(name: "close_stream", scope: !659, file: !659, line: 56, type: !4397, scopeLine: 57, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !658, retainedNodes: !4401)
!4397 = !DISubroutineType(types: !4398)
!4398 = !{!44, !4399}
!4399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4400, size: 64)
!4400 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !401, line: 7, baseType: !666)
!4401 = !{!4402, !4403, !4405, !4406}
!4402 = !DILocalVariable(name: "stream", arg: 1, scope: !4396, file: !659, line: 56, type: !4399)
!4403 = !DILocalVariable(name: "some_pending", scope: !4396, file: !659, line: 58, type: !4404)
!4404 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !170)
!4405 = !DILocalVariable(name: "prev_fail", scope: !4396, file: !659, line: 59, type: !4404)
!4406 = !DILocalVariable(name: "fclose_fail", scope: !4396, file: !659, line: 60, type: !4404)
!4407 = !DILocation(line: 0, scope: !4396)
!4408 = !DILocation(line: 58, column: 30, scope: !4396)
!4409 = !DILocalVariable(name: "__stream", arg: 1, scope: !4410, file: !1469, line: 135, type: !4399)
!4410 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1469, file: !1469, line: 135, type: !4397, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !658, retainedNodes: !4411)
!4411 = !{!4409}
!4412 = !DILocation(line: 0, scope: !4410, inlinedAt: !4413)
!4413 = distinct !DILocation(line: 59, column: 27, scope: !4396)
!4414 = !DILocation(line: 137, column: 10, scope: !4410, inlinedAt: !4413)
!4415 = !{!1478, !1479, i64 0}
!4416 = !DILocation(line: 59, column: 43, scope: !4396)
!4417 = !DILocation(line: 60, column: 29, scope: !4396)
!4418 = !DILocation(line: 60, column: 45, scope: !4396)
!4419 = !DILocation(line: 70, column: 17, scope: !4420)
!4420 = distinct !DILexicalBlock(scope: !4396, file: !659, line: 70, column: 7)
!4421 = !DILocation(line: 58, column: 50, scope: !4396)
!4422 = !DILocation(line: 70, column: 33, scope: !4420)
!4423 = !DILocation(line: 70, column: 53, scope: !4420)
!4424 = !DILocation(line: 70, column: 59, scope: !4420)
!4425 = !DILocation(line: 70, column: 7, scope: !4396)
!4426 = !DILocation(line: 72, column: 11, scope: !4427)
!4427 = distinct !DILexicalBlock(scope: !4420, file: !659, line: 71, column: 5)
!4428 = !DILocation(line: 73, column: 9, scope: !4429)
!4429 = distinct !DILexicalBlock(scope: !4427, file: !659, line: 72, column: 11)
!4430 = !DILocation(line: 73, column: 15, scope: !4429)
!4431 = !DILocation(line: 78, column: 1, scope: !4396)
!4432 = distinct !DISubprogram(name: "hard_locale", scope: !698, file: !698, line: 27, type: !656, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !697, retainedNodes: !4433)
!4433 = !{!4434, !4435}
!4434 = !DILocalVariable(name: "category", arg: 1, scope: !4432, file: !698, line: 27, type: !44)
!4435 = !DILocalVariable(name: "locale", scope: !4432, file: !698, line: 29, type: !4436)
!4436 = !DICompositeType(tag: DW_TAG_array_type, baseType: !41, size: 2056, elements: !4437)
!4437 = !{!4438}
!4438 = !DISubrange(count: 257)
!4439 = !DILocation(line: 0, scope: !4432)
!4440 = !DILocation(line: 29, column: 3, scope: !4432)
!4441 = !DILocation(line: 29, column: 8, scope: !4432)
!4442 = !DILocation(line: 31, column: 7, scope: !4443)
!4443 = distinct !DILexicalBlock(scope: !4432, file: !698, line: 31, column: 7)
!4444 = !DILocation(line: 31, column: 7, scope: !4432)
!4445 = !DILocation(line: 34, column: 12, scope: !4432)
!4446 = !DILocation(line: 34, column: 38, scope: !4432)
!4447 = !DILocation(line: 34, column: 41, scope: !4432)
!4448 = !DILocation(line: 34, column: 66, scope: !4432)
!4449 = !DILocation(line: 35, column: 1, scope: !4432)
!4450 = distinct !DISubprogram(name: "locale_charset", scope: !705, file: !705, line: 831, type: !336, scopeLine: 832, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !704, retainedNodes: !4451)
!4451 = !{!4452}
!4452 = !DILocalVariable(name: "codeset", scope: !4450, file: !705, line: 833, type: !42)
!4453 = !DILocation(line: 847, column: 13, scope: !4450)
!4454 = !DILocation(line: 0, scope: !4450)
!4455 = !DILocation(line: 911, column: 15, scope: !4456)
!4456 = distinct !DILexicalBlock(scope: !4450, file: !705, line: 911, column: 7)
!4457 = !DILocation(line: 911, column: 7, scope: !4450)
!4458 = !DILocation(line: 1070, column: 13, scope: !4459)
!4459 = distinct !DILexicalBlock(scope: !4460, file: !705, line: 1070, column: 13)
!4460 = distinct !DILexicalBlock(scope: !4461, file: !705, line: 1060, column: 7)
!4461 = distinct !DILexicalBlock(scope: !4450, file: !705, line: 1019, column: 3)
!4462 = !DILocation(line: 1070, column: 24, scope: !4459)
!4463 = !DILocation(line: 1070, column: 13, scope: !4460)
!4464 = !DILocation(line: 1158, column: 3, scope: !4450)
!4465 = distinct !DISubprogram(name: "setlocale_null_r", scope: !1098, file: !1098, line: 269, type: !4466, scopeLine: 270, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1097, retainedNodes: !4468)
!4466 = !DISubroutineType(types: !4467)
!4467 = !{!44, !44, !40, !99}
!4468 = !{!4469, !4470, !4471}
!4469 = !DILocalVariable(name: "category", arg: 1, scope: !4465, file: !1098, line: 269, type: !44)
!4470 = !DILocalVariable(name: "buf", arg: 2, scope: !4465, file: !1098, line: 269, type: !40)
!4471 = !DILocalVariable(name: "bufsize", arg: 3, scope: !4465, file: !1098, line: 269, type: !99)
!4472 = !DILocation(line: 0, scope: !4465)
!4473 = !DILocalVariable(name: "category", arg: 1, scope: !4474, file: !1098, line: 91, type: !44)
!4474 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !1098, file: !1098, line: 91, type: !4466, scopeLine: 92, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1097, retainedNodes: !4475)
!4475 = !{!4473, !4476, !4477, !4478, !4479}
!4476 = !DILocalVariable(name: "buf", arg: 2, scope: !4474, file: !1098, line: 91, type: !40)
!4477 = !DILocalVariable(name: "bufsize", arg: 3, scope: !4474, file: !1098, line: 91, type: !99)
!4478 = !DILocalVariable(name: "result", scope: !4474, file: !1098, line: 140, type: !42)
!4479 = !DILocalVariable(name: "length", scope: !4480, file: !1098, line: 154, type: !99)
!4480 = distinct !DILexicalBlock(scope: !4481, file: !1098, line: 153, column: 5)
!4481 = distinct !DILexicalBlock(scope: !4474, file: !1098, line: 142, column: 7)
!4482 = !DILocation(line: 0, scope: !4474, inlinedAt: !4483)
!4483 = distinct !DILocation(line: 274, column: 10, scope: !4465)
!4484 = !DILocalVariable(name: "category", arg: 1, scope: !4485, file: !1098, line: 60, type: !44)
!4485 = distinct !DISubprogram(name: "setlocale_null_androidfix", scope: !1098, file: !1098, line: 60, type: !4486, scopeLine: 61, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1097, retainedNodes: !4488)
!4486 = !DISubroutineType(types: !4487)
!4487 = !{!42, !44}
!4488 = !{!4484, !4489}
!4489 = !DILocalVariable(name: "result", scope: !4485, file: !1098, line: 62, type: !42)
!4490 = !DILocation(line: 0, scope: !4485, inlinedAt: !4491)
!4491 = distinct !DILocation(line: 140, column: 24, scope: !4474, inlinedAt: !4483)
!4492 = !DILocation(line: 62, column: 24, scope: !4485, inlinedAt: !4491)
!4493 = !DILocation(line: 142, column: 14, scope: !4481, inlinedAt: !4483)
!4494 = !DILocation(line: 142, column: 7, scope: !4474, inlinedAt: !4483)
!4495 = !DILocation(line: 145, column: 19, scope: !4496, inlinedAt: !4483)
!4496 = distinct !DILexicalBlock(scope: !4497, file: !1098, line: 145, column: 11)
!4497 = distinct !DILexicalBlock(scope: !4481, file: !1098, line: 143, column: 5)
!4498 = !DILocation(line: 145, column: 11, scope: !4497, inlinedAt: !4483)
!4499 = !DILocation(line: 149, column: 16, scope: !4496, inlinedAt: !4483)
!4500 = !DILocation(line: 149, column: 9, scope: !4496, inlinedAt: !4483)
!4501 = !DILocation(line: 154, column: 23, scope: !4480, inlinedAt: !4483)
!4502 = !DILocation(line: 0, scope: !4480, inlinedAt: !4483)
!4503 = !DILocation(line: 155, column: 18, scope: !4504, inlinedAt: !4483)
!4504 = distinct !DILexicalBlock(scope: !4480, file: !1098, line: 155, column: 11)
!4505 = !DILocation(line: 155, column: 11, scope: !4480, inlinedAt: !4483)
!4506 = !DILocation(line: 157, column: 39, scope: !4507, inlinedAt: !4483)
!4507 = distinct !DILexicalBlock(scope: !4504, file: !1098, line: 156, column: 9)
!4508 = !DILocalVariable(name: "__dest", arg: 1, scope: !4509, file: !1529, line: 31, type: !1670)
!4509 = distinct !DISubprogram(name: "memcpy", scope: !1529, file: !1529, line: 31, type: !1668, scopeLine: 33, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1097, retainedNodes: !4510)
!4510 = !{!4508, !4511, !4512}
!4511 = !DILocalVariable(name: "__src", arg: 2, scope: !4509, file: !1529, line: 31, type: !1671)
!4512 = !DILocalVariable(name: "__len", arg: 3, scope: !4509, file: !1529, line: 31, type: !99)
!4513 = !DILocation(line: 0, scope: !4509, inlinedAt: !4514)
!4514 = distinct !DILocation(line: 157, column: 11, scope: !4507, inlinedAt: !4483)
!4515 = !DILocation(line: 34, column: 10, scope: !4509, inlinedAt: !4514)
!4516 = !DILocation(line: 158, column: 11, scope: !4507, inlinedAt: !4483)
!4517 = !DILocation(line: 162, column: 23, scope: !4518, inlinedAt: !4483)
!4518 = distinct !DILexicalBlock(scope: !4519, file: !1098, line: 162, column: 15)
!4519 = distinct !DILexicalBlock(scope: !4504, file: !1098, line: 161, column: 9)
!4520 = !DILocation(line: 162, column: 15, scope: !4519, inlinedAt: !4483)
!4521 = !DILocation(line: 167, column: 44, scope: !4522, inlinedAt: !4483)
!4522 = distinct !DILexicalBlock(scope: !4518, file: !1098, line: 163, column: 13)
!4523 = !DILocation(line: 0, scope: !4509, inlinedAt: !4524)
!4524 = distinct !DILocation(line: 167, column: 15, scope: !4522, inlinedAt: !4483)
!4525 = !DILocation(line: 34, column: 10, scope: !4509, inlinedAt: !4524)
!4526 = !DILocation(line: 168, column: 15, scope: !4522, inlinedAt: !4483)
!4527 = !DILocation(line: 168, column: 32, scope: !4522, inlinedAt: !4483)
!4528 = !DILocation(line: 169, column: 13, scope: !4522, inlinedAt: !4483)
!4529 = !DILocation(line: 0, scope: !4481, inlinedAt: !4483)
!4530 = !DILocation(line: 274, column: 3, scope: !4465)
!4531 = distinct !DISubprogram(name: "setlocale_null", scope: !1098, file: !1098, line: 301, type: !4486, scopeLine: 302, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1097, retainedNodes: !4532)
!4532 = !{!4533}
!4533 = !DILocalVariable(name: "category", arg: 1, scope: !4531, file: !1098, line: 301, type: !44)
!4534 = !DILocation(line: 0, scope: !4531)
!4535 = !DILocation(line: 0, scope: !4485, inlinedAt: !4536)
!4536 = distinct !DILocation(line: 304, column: 10, scope: !4531)
!4537 = !DILocation(line: 62, column: 24, scope: !4485, inlinedAt: !4536)
!4538 = !DILocation(line: 304, column: 3, scope: !4531)
!4539 = distinct !DISubprogram(name: "rpl_fclose", scope: !1101, file: !1101, line: 58, type: !4540, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1100, retainedNodes: !4544)
!4540 = !DISubroutineType(types: !4541)
!4541 = !{!44, !4542}
!4542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4543, size: 64)
!4543 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !401, line: 7, baseType: !1107)
!4544 = !{!4545, !4546, !4547, !4548}
!4545 = !DILocalVariable(name: "fp", arg: 1, scope: !4539, file: !1101, line: 58, type: !4542)
!4546 = !DILocalVariable(name: "saved_errno", scope: !4539, file: !1101, line: 60, type: !44)
!4547 = !DILocalVariable(name: "fd", scope: !4539, file: !1101, line: 61, type: !44)
!4548 = !DILocalVariable(name: "result", scope: !4539, file: !1101, line: 62, type: !44)
!4549 = !DILocation(line: 0, scope: !4539)
!4550 = !DILocation(line: 65, column: 8, scope: !4539)
!4551 = !DILocation(line: 66, column: 10, scope: !4552)
!4552 = distinct !DILexicalBlock(scope: !4539, file: !1101, line: 66, column: 7)
!4553 = !DILocation(line: 66, column: 7, scope: !4539)
!4554 = !DILocation(line: 67, column: 12, scope: !4552)
!4555 = !DILocation(line: 67, column: 5, scope: !4552)
!4556 = !DILocation(line: 72, column: 9, scope: !4557)
!4557 = distinct !DILexicalBlock(scope: !4539, file: !1101, line: 72, column: 7)
!4558 = !DILocation(line: 72, column: 23, scope: !4557)
!4559 = !DILocation(line: 72, column: 33, scope: !4557)
!4560 = !DILocation(line: 72, column: 26, scope: !4557)
!4561 = !DILocation(line: 72, column: 59, scope: !4557)
!4562 = !DILocation(line: 73, column: 7, scope: !4557)
!4563 = !DILocation(line: 73, column: 10, scope: !4557)
!4564 = !DILocation(line: 72, column: 7, scope: !4539)
!4565 = !DILocation(line: 100, column: 12, scope: !4539)
!4566 = !DILocation(line: 105, column: 7, scope: !4539)
!4567 = !DILocation(line: 74, column: 19, scope: !4557)
!4568 = !DILocation(line: 105, column: 19, scope: !4569)
!4569 = distinct !DILexicalBlock(scope: !4539, file: !1101, line: 105, column: 7)
!4570 = !DILocation(line: 107, column: 13, scope: !4571)
!4571 = distinct !DILexicalBlock(scope: !4569, file: !1101, line: 106, column: 5)
!4572 = !DILocation(line: 109, column: 5, scope: !4571)
!4573 = !DILocation(line: 112, column: 1, scope: !4539)
!4574 = distinct !DISubprogram(name: "rpl_fflush", scope: !1145, file: !1145, line: 129, type: !4575, scopeLine: 130, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1144, retainedNodes: !4579)
!4575 = !DISubroutineType(types: !4576)
!4576 = !{!44, !4577}
!4577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4578, size: 64)
!4578 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !401, line: 7, baseType: !1151)
!4579 = !{!4580}
!4580 = !DILocalVariable(name: "stream", arg: 1, scope: !4574, file: !1145, line: 129, type: !4577)
!4581 = !DILocation(line: 0, scope: !4574)
!4582 = !DILocation(line: 150, column: 14, scope: !4583)
!4583 = distinct !DILexicalBlock(scope: !4574, file: !1145, line: 150, column: 7)
!4584 = !DILocation(line: 150, column: 22, scope: !4583)
!4585 = !DILocation(line: 150, column: 27, scope: !4583)
!4586 = !DILocation(line: 150, column: 7, scope: !4574)
!4587 = !DILocation(line: 151, column: 12, scope: !4583)
!4588 = !DILocation(line: 151, column: 5, scope: !4583)
!4589 = !DILocalVariable(name: "fp", arg: 1, scope: !4590, file: !1145, line: 41, type: !4577)
!4590 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !1145, file: !1145, line: 41, type: !4591, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1144, retainedNodes: !4593)
!4591 = !DISubroutineType(types: !4592)
!4592 = !{null, !4577}
!4593 = !{!4589}
!4594 = !DILocation(line: 0, scope: !4590, inlinedAt: !4595)
!4595 = distinct !DILocation(line: 156, column: 3, scope: !4574)
!4596 = !DILocation(line: 43, column: 11, scope: !4597, inlinedAt: !4595)
!4597 = distinct !DILexicalBlock(scope: !4590, file: !1145, line: 43, column: 7)
!4598 = !DILocation(line: 43, column: 18, scope: !4597, inlinedAt: !4595)
!4599 = !DILocation(line: 43, column: 7, scope: !4590, inlinedAt: !4595)
!4600 = !DILocation(line: 45, column: 5, scope: !4597, inlinedAt: !4595)
!4601 = !DILocation(line: 158, column: 10, scope: !4574)
!4602 = !DILocation(line: 158, column: 3, scope: !4574)
!4603 = !DILocation(line: 235, column: 1, scope: !4574)
!4604 = distinct !DISubprogram(name: "rpl_fseeko", scope: !1186, file: !1186, line: 28, type: !4605, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1185, retainedNodes: !4610)
!4605 = !DISubroutineType(types: !4606)
!4606 = !{!44, !4607, !4609, !44}
!4607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4608, size: 64)
!4608 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !401, line: 7, baseType: !1192)
!4609 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !47, line: 63, baseType: !73)
!4610 = !{!4611, !4612, !4613, !4614}
!4611 = !DILocalVariable(name: "fp", arg: 1, scope: !4604, file: !1186, line: 28, type: !4607)
!4612 = !DILocalVariable(name: "offset", arg: 2, scope: !4604, file: !1186, line: 28, type: !4609)
!4613 = !DILocalVariable(name: "whence", arg: 3, scope: !4604, file: !1186, line: 28, type: !44)
!4614 = !DILocalVariable(name: "pos", scope: !4615, file: !1186, line: 117, type: !4609)
!4615 = distinct !DILexicalBlock(scope: !4616, file: !1186, line: 113, column: 5)
!4616 = distinct !DILexicalBlock(scope: !4604, file: !1186, line: 52, column: 7)
!4617 = !DILocation(line: 0, scope: !4604)
!4618 = !DILocation(line: 52, column: 11, scope: !4616)
!4619 = !{!1478, !1264, i64 16}
!4620 = !DILocation(line: 52, column: 31, scope: !4616)
!4621 = !{!1478, !1264, i64 8}
!4622 = !DILocation(line: 52, column: 24, scope: !4616)
!4623 = !DILocation(line: 53, column: 7, scope: !4616)
!4624 = !DILocation(line: 53, column: 14, scope: !4616)
!4625 = !DILocation(line: 53, column: 35, scope: !4616)
!4626 = !{!1478, !1264, i64 32}
!4627 = !DILocation(line: 53, column: 28, scope: !4616)
!4628 = !DILocation(line: 54, column: 7, scope: !4616)
!4629 = !DILocation(line: 54, column: 14, scope: !4616)
!4630 = !{!1478, !1264, i64 72}
!4631 = !DILocation(line: 54, column: 28, scope: !4616)
!4632 = !DILocation(line: 52, column: 7, scope: !4604)
!4633 = !DILocation(line: 117, column: 26, scope: !4615)
!4634 = !DILocation(line: 117, column: 19, scope: !4615)
!4635 = !DILocation(line: 0, scope: !4615)
!4636 = !DILocation(line: 118, column: 15, scope: !4637)
!4637 = distinct !DILexicalBlock(scope: !4615, file: !1186, line: 118, column: 11)
!4638 = !DILocation(line: 118, column: 11, scope: !4615)
!4639 = !DILocation(line: 129, column: 11, scope: !4615)
!4640 = !DILocation(line: 129, column: 18, scope: !4615)
!4641 = !DILocation(line: 130, column: 11, scope: !4615)
!4642 = !DILocation(line: 130, column: 19, scope: !4615)
!4643 = !{!1478, !1480, i64 144}
!4644 = !DILocation(line: 161, column: 7, scope: !4615)
!4645 = !DILocation(line: 163, column: 10, scope: !4604)
!4646 = !DILocation(line: 163, column: 3, scope: !4604)
!4647 = !DILocation(line: 164, column: 1, scope: !4604)
