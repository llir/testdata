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
@posixly_correct = internal unnamed_addr global i8 0, align 1, !dbg !44
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
@Version = dso_local local_unnamed_addr global i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.49, i64 0, i64 0), align 8, !dbg !52
@.str.49 = private unnamed_addr constant [5 x i8] c"8.32\00", align 1
@file_name = internal unnamed_addr global i8* null, align 8, !dbg !58
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !63
@.str.54 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.1.55 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.2.56 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@exit_failure = dso_local global i32 1, align 4, !dbg !65
@program_name = dso_local local_unnamed_addr global i8* null, align 8, !dbg !71
@.str.63 = private unnamed_addr constant [56 x i8] c"A NULL argv[0] was passed through an exec system call.\0A\00", align 1
@.str.1.64 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.2.65 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@quoting_style_args = dso_local local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.66, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.67, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.68, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.69, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.70, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.71, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.72, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.73, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.74, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.75, i32 0, i32 0), i8* null], align 16, !dbg !77
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
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !92
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !98
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !110
@.str.11.76 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.77 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.10.78 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.14.79 = private unnamed_addr constant [4 x i8] c"\E2\80\98\00", align 1
@.str.15.80 = private unnamed_addr constant [4 x i8] c"\E2\80\99\00", align 1
@.str.17.81 = private unnamed_addr constant [4 x i8] c"\A1\07e\00", align 1
@.str.18.82 = private unnamed_addr constant [3 x i8] c"\A1\AF\00", align 1
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8, !dbg !117
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !124
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !112
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !126
@unicode_to_mb.initialized = internal unnamed_addr global i1 false, align 4, !dbg !131
@.str.89 = private unnamed_addr constant [6 x i8] c"UTF-8\00", align 1
@unicode_to_mb.is_utf8 = internal unnamed_addr global i32 0, align 4, !dbg !206
@unicode_to_mb.utf8_to_local = internal unnamed_addr global i8* null, align 8, !dbg !208
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
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !234
@.str.1.136 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.137 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.140 = private unnamed_addr constant [32 x i8] c"cannot perform formatted output\00", align 1
@c_locale_cache = internal global %struct.__locale_struct* null, align 8, !dbg !242
@.str.147 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.1.152 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1
@.str.155 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1.156 = private unnamed_addr constant [6 x i8] c"ASCII\00", align 1

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @usage(i32 %0) local_unnamed_addr #0 !dbg !716 {
  %2 = alloca [7 x %struct.infomap], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !720, metadata !DIExpression()), !dbg !721
  %3 = icmp eq i32 %0, 0, !dbg !722
  br i1 %3, label %9, label %4, !dbg !724

4:                                                ; preds = %1
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !725, !tbaa !727
  %6 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 5) #27, !dbg !725
  %7 = load i8*, i8** @program_name, align 8, !dbg !725, !tbaa !727
  %8 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %5, i32 1, i8* %6, i8* %7) #27, !dbg !725
  br label %72, !dbg !725

9:                                                ; preds = %1
  %10 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i32 5) #27, !dbg !731
  %11 = load i8*, i8** @program_name, align 8, !dbg !731, !tbaa !727
  %12 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %10, i8* %11, i8* %11) #27, !dbg !731
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.2, i64 0, i64 0), i32 5) #27, !dbg !733
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !733, !tbaa !727
  %15 = tail call i32 @fputs_unlocked(i8* %13, %struct._IO_FILE* %14), !dbg !733
  %16 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0), i32 5) #27, !dbg !734
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !734, !tbaa !727
  %18 = tail call i32 @fputs_unlocked(i8* %16, %struct._IO_FILE* %17), !dbg !734
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.4, i64 0, i64 0), i32 5) #27, !dbg !735
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !735, !tbaa !727
  %21 = tail call i32 @fputs_unlocked(i8* %19, %struct._IO_FILE* %20), !dbg !735
  %22 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([97 x i8], [97 x i8]* @.str.5, i64 0, i64 0), i32 5) #27, !dbg !736
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !736, !tbaa !727
  %24 = tail call i32 @fputs_unlocked(i8* %22, %struct._IO_FILE* %23), !dbg !736
  %25 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([229 x i8], [229 x i8]* @.str.6, i64 0, i64 0), i32 5) #27, !dbg !737
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !737, !tbaa !727
  %27 = tail call i32 @fputs_unlocked(i8* %25, %struct._IO_FILE* %26), !dbg !737
  %28 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([252 x i8], [252 x i8]* @.str.7, i64 0, i64 0), i32 5) #27, !dbg !738
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !738, !tbaa !727
  %30 = tail call i32 @fputs_unlocked(i8* %28, %struct._IO_FILE* %29), !dbg !738
  %31 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([448 x i8], [448 x i8]* @.str.8, i64 0, i64 0), i32 5) #27, !dbg !739
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !739, !tbaa !727
  %33 = tail call i32 @fputs_unlocked(i8* %31, %struct._IO_FILE* %32), !dbg !739
  %34 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([191 x i8], [191 x i8]* @.str.9, i64 0, i64 0), i32 5) #27, !dbg !740
  %35 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %34, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0)) #27, !dbg !740
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0), metadata !741, metadata !DIExpression()) #27, !dbg !760
  %36 = bitcast [7 x %struct.infomap]* %2 to i8*, !dbg !762
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %36) #27, !dbg !762
  call void @llvm.dbg.declare(metadata [7 x %struct.infomap]* %2, metadata !747, metadata !DIExpression()) #27, !dbg !763
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 dereferenceable(112) %36, i8* nonnull align 16 dereferenceable(112) bitcast ([7 x %struct.infomap]* @__const.emit_ancillary_info.infomap to i8*), i64 112, i1 false) #27, !dbg !763
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0), metadata !756, metadata !DIExpression()) #27, !dbg !760
  call void @llvm.dbg.value(metadata [7 x %struct.infomap]* %2, metadata !757, metadata !DIExpression()) #27, !dbg !760
  %37 = getelementptr inbounds [7 x %struct.infomap], [7 x %struct.infomap]* %2, i64 0, i64 0, !dbg !764
  call void @llvm.dbg.value(metadata %struct.infomap* %37, metadata !757, metadata !DIExpression()) #27, !dbg !760
  br label %38, !dbg !765

38:                                               ; preds = %43, %9
  %39 = phi i8* [ %46, %43 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.22, i64 0, i64 0), %9 ]
  %40 = phi %struct.infomap* [ %44, %43 ], [ %37, %9 ]
  call void @llvm.dbg.value(metadata %struct.infomap* %40, metadata !757, metadata !DIExpression()) #27, !dbg !760
  %41 = tail call i32 @strcmp(i8* nonnull dereferenceable(7) getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0), i8* nonnull %39) #28, !dbg !766
  %42 = icmp eq i32 %41, 0, !dbg !766
  br i1 %42, label %48, label %43, !dbg !765

43:                                               ; preds = %38
  %44 = getelementptr inbounds %struct.infomap, %struct.infomap* %40, i64 1, !dbg !767
  call void @llvm.dbg.value(metadata %struct.infomap* %44, metadata !757, metadata !DIExpression()) #27, !dbg !760
  %45 = getelementptr inbounds %struct.infomap, %struct.infomap* %44, i64 0, i32 0, !dbg !768
  %46 = load i8*, i8** %45, align 8, !dbg !768, !tbaa !769
  %47 = icmp eq i8* %46, null, !dbg !771
  br i1 %47, label %48, label %38, !dbg !772, !llvm.loop !773

48:                                               ; preds = %43, %38
  %49 = phi %struct.infomap* [ %40, %38 ], [ %44, %43 ]
  %50 = getelementptr inbounds %struct.infomap, %struct.infomap* %49, i64 0, i32 1, !dbg !775
  %51 = load i8*, i8** %50, align 8, !dbg !775, !tbaa !777
  %52 = icmp eq i8* %51, null, !dbg !778
  %53 = select i1 %52, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0), i8* %51, !dbg !779
  call void @llvm.dbg.value(metadata i8* %53, metadata !756, metadata !DIExpression()) #27, !dbg !760
  %54 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.30, i64 0, i64 0), i32 5) #27, !dbg !780
  %55 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %54, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.31, i64 0, i64 0)) #27, !dbg !780
  %56 = tail call i8* @setlocale(i32 5, i8* null) #27, !dbg !781
  call void @llvm.dbg.value(metadata i8* %56, metadata !759, metadata !DIExpression()) #27, !dbg !760
  %57 = icmp eq i8* %56, null, !dbg !782
  br i1 %57, label %65, label %58, !dbg !784

58:                                               ; preds = %48
  %59 = tail call i32 @strncmp(i8* nonnull %56, i8* nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.32, i64 0, i64 0), i64 3) #28, !dbg !785
  %60 = icmp eq i32 %59, 0, !dbg !785
  br i1 %60, label %65, label %61, !dbg !786

61:                                               ; preds = %58
  %62 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.33, i64 0, i64 0), i32 5) #27, !dbg !787
  %63 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !787, !tbaa !727
  %64 = tail call i32 @fputs_unlocked(i8* %62, %struct._IO_FILE* %63) #27, !dbg !787
  br label %65, !dbg !789

65:                                               ; preds = %48, %58, %61
  %66 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.34, i64 0, i64 0), i32 5) #27, !dbg !790
  %67 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %66, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.31, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0)) #27, !dbg !790
  %68 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.35, i64 0, i64 0), i32 5) #27, !dbg !791
  %69 = icmp eq i8* %53, getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0), !dbg !791
  %70 = select i1 %69, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.36, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.11, i64 0, i64 0), !dbg !791
  %71 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %68, i8* %53, i8* %70) #27, !dbg !791
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %36) #27, !dbg !792
  br label %72

72:                                               ; preds = %65, %4
  tail call void @exit(i32 %0) #29, !dbg !793
  unreachable, !dbg !793
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !794 i8* @dcgettext(i8*, i8*, i32) local_unnamed_addr #2

declare i32 @__fprintf_chk(%struct._IO_FILE*, i32, i8*, ...) local_unnamed_addr #3

declare i32 @__printf_chk(i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !798 noundef i32 @fputs_unlocked(i8* nocapture noundef readonly, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #5

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @strcmp(i8* nocapture, i8* nocapture) local_unnamed_addr #6

; Function Attrs: nounwind
declare !dbg !834 i8* @setlocale(i32, i8*) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @strncmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #6

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #5

; Function Attrs: noreturn nounwind
declare void @exit(i32) local_unnamed_addr #7

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @main(i32 %0, i8** nocapture readonly %1) local_unnamed_addr #8 !dbg !838 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca [256 x i8], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !842, metadata !DIExpression()), !dbg !846
  call void @llvm.dbg.value(metadata i8** %1, metadata !843, metadata !DIExpression()), !dbg !846
  %6 = load i8*, i8** %1, align 8, !dbg !847, !tbaa !727
  tail call void @set_program_name(i8* %6) #27, !dbg !848
  %7 = tail call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.11, i64 0, i64 0)) #27, !dbg !849
  %8 = tail call i8* @bindtextdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.13, i64 0, i64 0)) #27, !dbg !850
  %9 = tail call i8* @textdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i64 0, i64 0)) #27, !dbg !851
  %10 = tail call i32 @atexit(void ()* nonnull @close_stdout) #27, !dbg !852
  store i1 false, i1* @exit_status, align 4, !dbg !853
  %11 = tail call i8* @getenv(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i64 0, i64 0)) #27, !dbg !854
  %12 = icmp ne i8* %11, null, !dbg !855
  %13 = zext i1 %12 to i8, !dbg !856
  store i8 %13, i8* @posixly_correct, align 1, !dbg !856, !tbaa !857
  %14 = icmp eq i32 %0, 2, !dbg !859
  br i1 %14, label %15, label %27, !dbg !861

15:                                               ; preds = %2
  %16 = getelementptr inbounds i8*, i8** %1, i64 1, !dbg !862
  %17 = load i8*, i8** %16, align 8, !dbg !862, !tbaa !727
  %18 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %17, i8* nonnull dereferenceable(7) getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i64 0, i64 0)) #28, !dbg !862
  %19 = icmp eq i32 %18, 0, !dbg !862
  br i1 %19, label %20, label %21, !dbg !865

20:                                               ; preds = %15
  tail call void @usage(i32 0) #30, !dbg !866
  unreachable, !dbg !866

21:                                               ; preds = %15
  %22 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %17, i8* nonnull dereferenceable(10) getelementptr inbounds ([10 x i8], [10 x i8]* @.str.16, i64 0, i64 0)) #28, !dbg !867
  %23 = icmp eq i32 %22, 0, !dbg !867
  br i1 %23, label %24, label %32, !dbg !869

24:                                               ; preds = %21
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !870, !tbaa !727
  %26 = load i8*, i8** @Version, align 8, !dbg !872, !tbaa !727
  tail call void (%struct._IO_FILE*, i8*, i8*, i8*, ...) @version_etc(%struct._IO_FILE* %25, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i8* %26, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0), i8* null) #27, !dbg !873
  br label %412, !dbg !874

27:                                               ; preds = %2
  %28 = icmp sgt i32 %0, 1, !dbg !875
  br i1 %28, label %29, label %43, !dbg !877

29:                                               ; preds = %27
  %30 = getelementptr inbounds i8*, i8** %1, i64 1
  %31 = load i8*, i8** %30, align 8, !dbg !878, !tbaa !727
  br label %32, !dbg !877

32:                                               ; preds = %29, %21
  %33 = phi i8* [ %31, %29 ], [ %17, %21 ], !dbg !878
  %34 = getelementptr inbounds i8*, i8** %1, i64 1, !dbg !878
  %35 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %33, i8* nonnull dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.19, i64 0, i64 0)) #28, !dbg !878
  %36 = icmp eq i32 %35, 0, !dbg !878
  br i1 %36, label %37, label %45, !dbg !879

37:                                               ; preds = %32
  call void @llvm.dbg.value(metadata i32 %0, metadata !842, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !846
  call void @llvm.dbg.value(metadata i8** %34, metadata !843, metadata !DIExpression()), !dbg !846
  %38 = icmp slt i32 %0, 3, !dbg !880
  br i1 %38, label %43, label %39, !dbg !882

39:                                               ; preds = %37
  %40 = add nsw i32 %0, -1, !dbg !883
  call void @llvm.dbg.value(metadata i32 %40, metadata !842, metadata !DIExpression()), !dbg !846
  %41 = getelementptr inbounds i8*, i8** %1, i64 2
  %42 = load i8*, i8** %41, align 8, !dbg !885, !tbaa !727
  br label %45, !dbg !882

43:                                               ; preds = %27, %37
  %44 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.20, i64 0, i64 0), i32 5) #27, !dbg !886
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %44) #27, !dbg !888
  tail call void @usage(i32 1) #30, !dbg !889
  unreachable, !dbg !889

45:                                               ; preds = %39, %32
  %46 = phi i8* [ %42, %39 ], [ %33, %32 ], !dbg !885
  %47 = phi i32 [ %40, %39 ], [ %0, %32 ]
  %48 = phi i8** [ %34, %39 ], [ %1, %32 ]
  call void @llvm.dbg.value(metadata i8* %46, metadata !844, metadata !DIExpression()), !dbg !846
  %49 = add nsw i32 %47, -2, !dbg !890
  call void @llvm.dbg.value(metadata i32 %49, metadata !842, metadata !DIExpression()), !dbg !846
  %50 = getelementptr inbounds i8*, i8** %48, i64 2, !dbg !891
  call void @llvm.dbg.value(metadata i8** %50, metadata !843, metadata !DIExpression()), !dbg !846
  %51 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0
  %52 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 88
  %53 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 120
  %54 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 117
  %55 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 115
  %56 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 111
  %57 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 105
  %58 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 71
  %59 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 70
  %60 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 69
  %61 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 101
  %62 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 100
  %63 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 99
  %64 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 65
  %65 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 97
  %66 = bitcast i8** %3 to i8*
  %67 = bitcast i8** %4 to i8*
  br label %68, !dbg !892

68:                                               ; preds = %396, %45
  %69 = phi i8** [ %50, %45 ], [ %400, %396 ], !dbg !846
  %70 = phi i32 [ %49, %45 ], [ %397, %396 ], !dbg !846
  call void @llvm.dbg.value(metadata i32 %70, metadata !842, metadata !DIExpression()), !dbg !846
  call void @llvm.dbg.value(metadata i8** %69, metadata !843, metadata !DIExpression()), !dbg !846
  call void @llvm.dbg.value(metadata i8* %46, metadata !893, metadata !DIExpression()) #27, !dbg !931
  call void @llvm.dbg.value(metadata i32 %70, metadata !898, metadata !DIExpression()) #27, !dbg !931
  call void @llvm.dbg.value(metadata i8** %69, metadata !899, metadata !DIExpression()) #27, !dbg !931
  call void @llvm.dbg.value(metadata i32 %70, metadata !900, metadata !DIExpression()) #27, !dbg !931
  call void @llvm.dbg.value(metadata i32 0, metadata !905, metadata !DIExpression()) #27, !dbg !931
  call void @llvm.dbg.value(metadata i32 0, metadata !907, metadata !DIExpression()) #27, !dbg !931
  call void @llvm.lifetime.start.p0i8(i64 256, i8* nonnull %51) #27, !dbg !934
  call void @llvm.dbg.declare(metadata [256 x i8]* %5, metadata !908, metadata !DIExpression()) #27, !dbg !935
  call void @llvm.dbg.value(metadata i8* %46, metadata !901, metadata !DIExpression()) #27, !dbg !931
  %71 = load i8, i8* %46, align 1, !dbg !936, !tbaa !937
  %72 = icmp eq i8 %71, 0, !dbg !938
  br i1 %72, label %396, label %73, !dbg !938

73:                                               ; preds = %68, %387
  %74 = phi i8 [ %394, %387 ], [ %71, %68 ]
  %75 = phi i32 [ %392, %387 ], [ %70, %68 ]
  %76 = phi i8** [ %391, %387 ], [ %69, %68 ]
  %77 = phi i8* [ %393, %387 ], [ %46, %68 ]
  %78 = phi i32 [ %389, %387 ], [ 0, %68 ]
  %79 = phi i32 [ %388, %387 ], [ 0, %68 ]
  call void @llvm.dbg.value(metadata i32 %75, metadata !898, metadata !DIExpression()) #27, !dbg !931
  call void @llvm.dbg.value(metadata i8** %76, metadata !899, metadata !DIExpression()) #27, !dbg !931
  call void @llvm.dbg.value(metadata i8* %77, metadata !901, metadata !DIExpression()) #27, !dbg !931
  call void @llvm.dbg.value(metadata i32 %78, metadata !907, metadata !DIExpression()) #27, !dbg !931
  call void @llvm.dbg.value(metadata i32 %79, metadata !905, metadata !DIExpression()) #27, !dbg !931
  %80 = sext i8 %74 to i32, !dbg !939
  switch i32 %80, label %375 [
    i32 37, label %81
    i32 92, label %371
  ], !dbg !940

81:                                               ; preds = %73
  %82 = getelementptr inbounds i8, i8* %77, i64 1, !dbg !941
  call void @llvm.dbg.value(metadata i8* %82, metadata !901, metadata !DIExpression()) #27, !dbg !931
  call void @llvm.dbg.value(metadata i8* %77, metadata !902, metadata !DIExpression()) #27, !dbg !931
  call void @llvm.dbg.value(metadata i64 1, metadata !903, metadata !DIExpression()) #27, !dbg !931
  call void @llvm.dbg.value(metadata i8 0, metadata !906, metadata !DIExpression()) #27, !dbg !931
  call void @llvm.dbg.value(metadata i8 0, metadata !904, metadata !DIExpression()) #27, !dbg !931
  %83 = load i8, i8* %82, align 1, !dbg !942, !tbaa !937
  switch i8 %83, label %133 [
    i8 37, label %84
    i8 98, label %95
    i8 113, label %124
  ], !dbg !944

84:                                               ; preds = %81
  call void @llvm.dbg.value(metadata i32 37, metadata !945, metadata !DIExpression()) #27, !dbg !951
  %85 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !954, !tbaa !727
  %86 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %85, i64 0, i32 5, !dbg !954
  %87 = load i8*, i8** %86, align 8, !dbg !954, !tbaa !955
  %88 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %85, i64 0, i32 6, !dbg !954
  %89 = load i8*, i8** %88, align 8, !dbg !954, !tbaa !960
  %90 = icmp ult i8* %87, %89, !dbg !954
  br i1 %90, label %93, label %91, !dbg !954, !prof !961

91:                                               ; preds = %84
  %92 = call i32 @__overflow(%struct._IO_FILE* nonnull %85, i32 37) #27, !dbg !954
  br label %387, !dbg !954

93:                                               ; preds = %84
  %94 = getelementptr inbounds i8, i8* %87, i64 1, !dbg !954
  store i8* %94, i8** %86, align 8, !dbg !954, !tbaa !955
  store i8 37, i8* %87, align 1, !dbg !954, !tbaa !937
  br label %387, !dbg !954

95:                                               ; preds = %81
  %96 = icmp sgt i32 %75, 0, !dbg !962
  br i1 %96, label %97, label %387, !dbg !966

97:                                               ; preds = %95
  %98 = load i8*, i8** %76, align 8, !dbg !967, !tbaa !727
  call void @llvm.dbg.value(metadata i8* %98, metadata !969, metadata !DIExpression()) #27, !dbg !972
  br label %99, !dbg !974

99:                                               ; preds = %118, %97
  %100 = phi i8* [ %98, %97 ], [ %120, %118 ]
  call void @llvm.dbg.value(metadata i8* %100, metadata !969, metadata !DIExpression()) #27, !dbg !972
  %101 = load i8, i8* %100, align 1, !dbg !975, !tbaa !937
  switch i8 %101, label %106 [
    i8 0, label %121
    i8 92, label %102
  ], !dbg !978

102:                                              ; preds = %99
  %103 = call fastcc i32 @print_esc(i8* nonnull %100, i1 zeroext true) #27, !dbg !979
  %104 = sext i32 %103 to i64, !dbg !981
  %105 = getelementptr inbounds i8, i8* %100, i64 %104, !dbg !981
  call void @llvm.dbg.value(metadata i8* %105, metadata !969, metadata !DIExpression()) #27, !dbg !972
  br label %118, !dbg !982

106:                                              ; preds = %99
  call void @llvm.dbg.value(metadata i8 %101, metadata !945, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)) #27, !dbg !983
  %107 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !985, !tbaa !727
  %108 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %107, i64 0, i32 5, !dbg !985
  %109 = load i8*, i8** %108, align 8, !dbg !985, !tbaa !955
  %110 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %107, i64 0, i32 6, !dbg !985
  %111 = load i8*, i8** %110, align 8, !dbg !985, !tbaa !960
  %112 = icmp ult i8* %109, %111, !dbg !985
  br i1 %112, label %116, label %113, !dbg !985, !prof !961

113:                                              ; preds = %106
  %114 = zext i8 %101 to i32, !dbg !986
  call void @llvm.dbg.value(metadata i8 %101, metadata !945, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)) #27, !dbg !983
  %115 = call i32 @__overflow(%struct._IO_FILE* nonnull %107, i32 %114) #27, !dbg !985
  br label %118, !dbg !985

116:                                              ; preds = %106
  %117 = getelementptr inbounds i8, i8* %109, i64 1, !dbg !985
  store i8* %117, i8** %108, align 8, !dbg !985, !tbaa !955
  store i8 %101, i8* %109, align 1, !dbg !985, !tbaa !937
  br label %118, !dbg !985

118:                                              ; preds = %116, %113, %102
  %119 = phi i8* [ %105, %102 ], [ %100, %113 ], [ %100, %116 ]
  call void @llvm.dbg.value(metadata i8* %119, metadata !969, metadata !DIExpression()) #27, !dbg !972
  %120 = getelementptr inbounds i8, i8* %119, i64 1, !dbg !987
  call void @llvm.dbg.value(metadata i8* %120, metadata !969, metadata !DIExpression()) #27, !dbg !972
  br label %99, !dbg !988, !llvm.loop !989

121:                                              ; preds = %99
  %122 = getelementptr inbounds i8*, i8** %76, i64 1, !dbg !991
  call void @llvm.dbg.value(metadata i8** %122, metadata !899, metadata !DIExpression()) #27, !dbg !931
  %123 = add nsw i32 %75, -1, !dbg !992
  call void @llvm.dbg.value(metadata i32 %123, metadata !898, metadata !DIExpression()) #27, !dbg !931
  br label %387, !dbg !993

124:                                              ; preds = %81
  %125 = icmp sgt i32 %75, 0, !dbg !994
  br i1 %125, label %126, label %387, !dbg !998

126:                                              ; preds = %124
  %127 = load i8*, i8** %76, align 8, !dbg !999, !tbaa !727
  %128 = call i8* @quotearg_style(i32 3, i8* %127) #27, !dbg !999
  %129 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !999, !tbaa !727
  %130 = call i32 @fputs_unlocked(i8* %128, %struct._IO_FILE* %129) #27, !dbg !999
  %131 = getelementptr inbounds i8*, i8** %76, i64 1, !dbg !1001
  call void @llvm.dbg.value(metadata i8** %131, metadata !899, metadata !DIExpression()) #27, !dbg !931
  %132 = add nsw i32 %75, -1, !dbg !1002
  call void @llvm.dbg.value(metadata i32 %132, metadata !898, metadata !DIExpression()) #27, !dbg !931
  br label %387, !dbg !1003

133:                                              ; preds = %81
  call void @llvm.dbg.value(metadata i8* %51, metadata !1004, metadata !DIExpression()) #27, !dbg !1012
  call void @llvm.dbg.value(metadata i32 0, metadata !1010, metadata !DIExpression()) #27, !dbg !1012
  call void @llvm.dbg.value(metadata i64 256, metadata !1011, metadata !DIExpression()) #27, !dbg !1012
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 dereferenceable(256) %51, i8 0, i64 256, i1 false) #27, !dbg !1014
  store i8 1, i8* %52, align 8, !dbg !1015, !tbaa !937
  store i8 1, i8* %53, align 8, !dbg !1016, !tbaa !937
  store i8 1, i8* %54, align 1, !dbg !1017, !tbaa !937
  store i8 1, i8* %55, align 1, !dbg !1018, !tbaa !937
  store i8 1, i8* %56, align 1, !dbg !1019, !tbaa !937
  store i8 1, i8* %57, align 1, !dbg !1020, !tbaa !937
  store i8 1, i8* %58, align 1, !dbg !1021, !tbaa !937
  store i8 1, i8* %59, align 2, !dbg !1022, !tbaa !937
  store i8 1, i8* %60, align 1, !dbg !1023, !tbaa !937
  store i8 1, i8* %64, align 1, !dbg !1024, !tbaa !937
  store i8 1, i8* %65, align 1, !dbg !1025, !tbaa !937
  call void @llvm.memset.p0i8.i64(i8* nonnull align 1 dereferenceable(5) %63, i8 1, i64 5, i1 false) #27, !dbg !1026
  br label %134, !dbg !1027

134:                                              ; preds = %142, %133
  %135 = phi i64 [ 1, %133 ], [ %144, %142 ], !dbg !1028
  %136 = phi i8* [ %82, %133 ], [ %143, %142 ], !dbg !1028
  call void @llvm.dbg.value(metadata i8* %136, metadata !901, metadata !DIExpression()) #27, !dbg !931
  call void @llvm.dbg.value(metadata i64 %135, metadata !903, metadata !DIExpression()) #27, !dbg !931
  %137 = load i8, i8* %136, align 1, !dbg !1029, !tbaa !937
  %138 = sext i8 %137 to i32, !dbg !1029
  switch i32 %138, label %145 [
    i32 73, label %139
    i32 39, label %139
    i32 45, label %142
    i32 43, label %142
    i32 32, label %142
    i32 35, label %140
    i32 48, label %141
  ], !dbg !1032

139:                                              ; preds = %134, %134
  store i8 0, i8* %52, align 8, !dbg !1033, !tbaa !937
  store i8 0, i8* %53, align 8, !dbg !1035, !tbaa !937
  store i8 0, i8* %55, align 1, !dbg !1036, !tbaa !937
  store i8 0, i8* %56, align 1, !dbg !1037, !tbaa !937
  store i8 0, i8* %60, align 1, !dbg !1038, !tbaa !937
  store i8 0, i8* %61, align 1, !dbg !1039, !tbaa !937
  store i8 0, i8* %63, align 1, !dbg !1040, !tbaa !937
  store i8 0, i8* %64, align 1, !dbg !1041, !tbaa !937
  store i8 0, i8* %65, align 1, !dbg !1042, !tbaa !937
  br label %142, !dbg !1043

140:                                              ; preds = %134
  store i8 0, i8* %54, align 1, !dbg !1044, !tbaa !937
  store i8 0, i8* %55, align 1, !dbg !1045, !tbaa !937
  store i8 0, i8* %57, align 1, !dbg !1046, !tbaa !937
  store i8 0, i8* %62, align 4, !dbg !1047, !tbaa !937
  store i8 0, i8* %63, align 1, !dbg !1048, !tbaa !937
  br label %142, !dbg !1049

141:                                              ; preds = %134
  store i8 0, i8* %55, align 1, !dbg !1050, !tbaa !937
  store i8 0, i8* %63, align 1, !dbg !1051, !tbaa !937
  br label %142, !dbg !1052

142:                                              ; preds = %141, %140, %139, %134, %134, %134
  %143 = getelementptr inbounds i8, i8* %136, i64 1, !dbg !1053
  call void @llvm.dbg.value(metadata i8* %143, metadata !901, metadata !DIExpression()) #27, !dbg !931
  %144 = add i64 %135, 1, !dbg !1054
  call void @llvm.dbg.value(metadata i64 %144, metadata !903, metadata !DIExpression()) #27, !dbg !931
  br label %134, !dbg !1055, !llvm.loop !1056

145:                                              ; preds = %134
  call void @llvm.dbg.label(metadata !930) #27, !dbg !1059
  %146 = icmp eq i8 %137, 42, !dbg !1060
  br i1 %146, label %151, label %147, !dbg !1061

147:                                              ; preds = %145
  %148 = sext i8 %137 to i32, !dbg !1029
  call void @llvm.dbg.value(metadata i8* %136, metadata !901, metadata !DIExpression()) #27, !dbg !931
  call void @llvm.dbg.value(metadata i64 %135, metadata !903, metadata !DIExpression()) #27, !dbg !931
  %149 = add nsw i32 %148, -48, !dbg !1062
  %150 = icmp ult i32 %149, 10, !dbg !1062
  br i1 %150, label %168, label %182, !dbg !1063

151:                                              ; preds = %145
  %152 = getelementptr inbounds i8, i8* %136, i64 1, !dbg !1064
  call void @llvm.dbg.value(metadata i8* %152, metadata !901, metadata !DIExpression()) #27, !dbg !931
  %153 = add i64 %135, 1, !dbg !1065
  call void @llvm.dbg.value(metadata i64 %153, metadata !903, metadata !DIExpression()) #27, !dbg !931
  %154 = icmp sgt i32 %75, 0, !dbg !1066
  br i1 %154, label %155, label %177, !dbg !1067

155:                                              ; preds = %151
  %156 = load i8*, i8** %76, align 8, !dbg !1068, !tbaa !727
  %157 = call fastcc i64 @vstrtoimax(i8* %156) #27, !dbg !1069
  call void @llvm.dbg.value(metadata i64 %157, metadata !909, metadata !DIExpression()) #27, !dbg !1070
  %158 = add i64 %157, 2147483648, !dbg !1071
  %159 = icmp ult i64 %158, 4294967296, !dbg !1071
  br i1 %159, label %160, label %164, !dbg !1071

160:                                              ; preds = %155
  %161 = trunc i64 %157 to i32, !dbg !1073
  call void @llvm.dbg.value(metadata i32 %161, metadata !905, metadata !DIExpression()) #27, !dbg !931
  %162 = getelementptr inbounds i8*, i8** %76, i64 1, !dbg !1074
  call void @llvm.dbg.value(metadata i8** %162, metadata !899, metadata !DIExpression()) #27, !dbg !931
  %163 = add nsw i32 %75, -1, !dbg !1075
  call void @llvm.dbg.value(metadata i32 %163, metadata !898, metadata !DIExpression()) #27, !dbg !931
  br label %177, !dbg !1076

164:                                              ; preds = %155
  %165 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.37, i64 0, i64 0), i32 5) #27, !dbg !1077
  %166 = load i8*, i8** %76, align 8, !dbg !1077, !tbaa !727
  %167 = call i8* @quote(i8* %166) #27, !dbg !1077
  call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %165, i8* %167) #27, !dbg !1077
  unreachable, !dbg !1077

168:                                              ; preds = %147, %168
  %169 = phi i8* [ %171, %168 ], [ %136, %147 ]
  %170 = phi i64 [ %172, %168 ], [ %135, %147 ]
  call void @llvm.dbg.value(metadata i8* %169, metadata !901, metadata !DIExpression()) #27, !dbg !931
  call void @llvm.dbg.value(metadata i64 %170, metadata !903, metadata !DIExpression()) #27, !dbg !931
  %171 = getelementptr inbounds i8, i8* %169, i64 1, !dbg !1078
  call void @llvm.dbg.value(metadata i8* %171, metadata !901, metadata !DIExpression()) #27, !dbg !931
  %172 = add i64 %170, 1, !dbg !1080
  call void @llvm.dbg.value(metadata i64 %172, metadata !903, metadata !DIExpression()) #27, !dbg !931
  %173 = load i8, i8* %171, align 1, !dbg !1062, !tbaa !937
  %174 = sext i8 %173 to i32, !dbg !1062
  %175 = add nsw i32 %174, -48, !dbg !1062
  %176 = icmp ult i32 %175, 10, !dbg !1062
  br i1 %176, label %168, label %182, !dbg !1063, !llvm.loop !1081

177:                                              ; preds = %160, %151
  %178 = phi i32 [ 0, %151 ], [ %161, %160 ]
  %179 = phi i8** [ %76, %151 ], [ %162, %160 ]
  %180 = phi i32 [ %75, %151 ], [ %163, %160 ]
  %181 = load i8, i8* %152, align 1, !dbg !1083, !tbaa !937
  br label %182, !dbg !1083

182:                                              ; preds = %168, %177, %147
  %183 = phi i8 [ %181, %177 ], [ %137, %147 ], [ %173, %168 ], !dbg !1083
  %184 = phi i64 [ %153, %177 ], [ %135, %147 ], [ %172, %168 ], !dbg !1028
  %185 = phi i32 [ %178, %177 ], [ %79, %147 ], [ %79, %168 ], !dbg !931
  %186 = phi i8* [ %152, %177 ], [ %136, %147 ], [ %171, %168 ], !dbg !1028
  %187 = phi i8** [ %179, %177 ], [ %76, %147 ], [ %76, %168 ]
  %188 = phi i32 [ %180, %177 ], [ %75, %147 ], [ %75, %168 ]
  call void @llvm.dbg.value(metadata i32 %188, metadata !898, metadata !DIExpression()) #27, !dbg !931
  call void @llvm.dbg.value(metadata i8** %187, metadata !899, metadata !DIExpression()) #27, !dbg !931
  call void @llvm.dbg.value(metadata i8* %186, metadata !901, metadata !DIExpression()) #27, !dbg !931
  call void @llvm.dbg.value(metadata i32 %185, metadata !905, metadata !DIExpression()) #27, !dbg !931
  call void @llvm.dbg.value(metadata i8 undef, metadata !904, metadata !DIExpression()) #27, !dbg !931
  call void @llvm.dbg.value(metadata i64 %184, metadata !903, metadata !DIExpression()) #27, !dbg !931
  %189 = icmp eq i8 %183, 46, !dbg !1084
  br i1 %189, label %190, label %230, !dbg !1085

190:                                              ; preds = %182
  %191 = getelementptr inbounds i8, i8* %186, i64 1, !dbg !1086
  call void @llvm.dbg.value(metadata i8* %191, metadata !901, metadata !DIExpression()) #27, !dbg !931
  call void @llvm.dbg.value(metadata i64 %184, metadata !903, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)) #27, !dbg !931
  store i8 0, i8* %63, align 1, !dbg !1087, !tbaa !937
  %192 = load i8, i8* %191, align 1, !dbg !1088, !tbaa !937
  %193 = icmp eq i8 %192, 42, !dbg !1089
  br i1 %193, label %201, label %194, !dbg !1090

194:                                              ; preds = %190
  %195 = add i64 %184, 1, !dbg !1091
  call void @llvm.dbg.value(metadata i8* %191, metadata !901, metadata !DIExpression()) #27, !dbg !931
  call void @llvm.dbg.value(metadata i64 %195, metadata !903, metadata !DIExpression()) #27, !dbg !931
  %196 = sext i8 %192 to i32, !dbg !1092
  %197 = add nsw i32 %196, -48, !dbg !1092
  %198 = icmp ult i32 %197, 10, !dbg !1092
  call void @llvm.dbg.value(metadata i8* %186, metadata !901, metadata !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value)) #27, !dbg !931
  call void @llvm.dbg.value(metadata i64 %195, metadata !903, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)) #27, !dbg !931
  br i1 %198, label %199, label %230, !dbg !1093, !llvm.loop !1094

199:                                              ; preds = %194
  %200 = getelementptr inbounds i8, i8* %186, i64 2, !dbg !1096
  call void @llvm.dbg.value(metadata i8* %200, metadata !901, metadata !DIExpression()) #27, !dbg !931
  br label %221, !dbg !1093

201:                                              ; preds = %190
  %202 = getelementptr inbounds i8, i8* %186, i64 2, !dbg !1098
  call void @llvm.dbg.value(metadata i8* %202, metadata !901, metadata !DIExpression()) #27, !dbg !931
  %203 = add i64 %184, 2, !dbg !1099
  call void @llvm.dbg.value(metadata i64 %203, metadata !903, metadata !DIExpression()) #27, !dbg !931
  %204 = icmp sgt i32 %188, 0, !dbg !1100
  br i1 %204, label %205, label %230, !dbg !1101

205:                                              ; preds = %201
  %206 = load i8*, i8** %187, align 8, !dbg !1102, !tbaa !727
  %207 = call fastcc i64 @vstrtoimax(i8* %206) #27, !dbg !1103
  call void @llvm.dbg.value(metadata i64 %207, metadata !921, metadata !DIExpression()) #27, !dbg !1104
  %208 = icmp slt i64 %207, 0, !dbg !1105
  br i1 %208, label %217, label %209, !dbg !1107

209:                                              ; preds = %205
  %210 = icmp sgt i64 %207, 2147483647, !dbg !1108
  br i1 %210, label %211, label %215, !dbg !1110

211:                                              ; preds = %209
  %212 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.38, i64 0, i64 0), i32 5) #27, !dbg !1111
  %213 = load i8*, i8** %187, align 8, !dbg !1111, !tbaa !727
  %214 = call i8* @quote(i8* %213) #27, !dbg !1111
  call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %212, i8* %214) #27, !dbg !1111
  unreachable, !dbg !1111

215:                                              ; preds = %209
  %216 = trunc i64 %207 to i32, !dbg !1112
  call void @llvm.dbg.value(metadata i32 %216, metadata !907, metadata !DIExpression()) #27, !dbg !931
  br label %217

217:                                              ; preds = %215, %205
  %218 = phi i32 [ %216, %215 ], [ -1, %205 ], !dbg !1113
  call void @llvm.dbg.value(metadata i32 %218, metadata !907, metadata !DIExpression()) #27, !dbg !931
  %219 = getelementptr inbounds i8*, i8** %187, i64 1, !dbg !1114
  call void @llvm.dbg.value(metadata i8** %219, metadata !899, metadata !DIExpression()) #27, !dbg !931
  %220 = add nsw i32 %188, -1, !dbg !1115
  call void @llvm.dbg.value(metadata i32 %220, metadata !898, metadata !DIExpression()) #27, !dbg !931
  br label %230, !dbg !1116

221:                                              ; preds = %199, %221
  %222 = phi i8* [ %229, %221 ], [ %200, %199 ]
  %223 = phi i64 [ %225, %221 ], [ %195, %199 ]
  %224 = load i8, i8* %222, align 1, !dbg !1092, !tbaa !937
  %225 = add i64 %223, 1, !dbg !1091
  call void @llvm.dbg.value(metadata i8* %222, metadata !901, metadata !DIExpression()) #27, !dbg !931
  call void @llvm.dbg.value(metadata i64 %225, metadata !903, metadata !DIExpression()) #27, !dbg !931
  %226 = sext i8 %224 to i32, !dbg !1092
  %227 = add nsw i32 %226, -48, !dbg !1092
  %228 = icmp ult i32 %227, 10, !dbg !1092
  %229 = getelementptr inbounds i8, i8* %222, i64 1, !dbg !1096
  call void @llvm.dbg.value(metadata i8* %229, metadata !901, metadata !DIExpression()) #27, !dbg !931
  call void @llvm.dbg.value(metadata i64 %225, metadata !903, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)) #27, !dbg !931
  br i1 %228, label %221, label %230, !dbg !1093, !llvm.loop !1094

230:                                              ; preds = %221, %194, %217, %201, %182
  %231 = phi i64 [ %184, %182 ], [ %203, %201 ], [ %203, %217 ], [ %195, %194 ], [ %225, %221 ], !dbg !1028
  %232 = phi i1 [ false, %182 ], [ true, %201 ], [ true, %217 ], [ false, %194 ], [ false, %221 ]
  %233 = phi i32 [ %78, %182 ], [ 0, %201 ], [ %218, %217 ], [ %78, %194 ], [ %78, %221 ], !dbg !931
  %234 = phi i8* [ %186, %182 ], [ %202, %201 ], [ %202, %217 ], [ %191, %194 ], [ %222, %221 ], !dbg !1028
  %235 = phi i8** [ %187, %182 ], [ %187, %201 ], [ %219, %217 ], [ %187, %194 ], [ %187, %221 ], !dbg !1028
  %236 = phi i32 [ %188, %182 ], [ %188, %201 ], [ %220, %217 ], [ %188, %194 ], [ %188, %221 ], !dbg !1028
  call void @llvm.dbg.value(metadata i32 %236, metadata !898, metadata !DIExpression()) #27, !dbg !931
  call void @llvm.dbg.value(metadata i8** %235, metadata !899, metadata !DIExpression()) #27, !dbg !931
  call void @llvm.dbg.value(metadata i8* %234, metadata !901, metadata !DIExpression()) #27, !dbg !931
  call void @llvm.dbg.value(metadata i32 %233, metadata !907, metadata !DIExpression()) #27, !dbg !931
  call void @llvm.dbg.value(metadata i8 undef, metadata !906, metadata !DIExpression()) #27, !dbg !931
  call void @llvm.dbg.value(metadata i64 %231, metadata !903, metadata !DIExpression()) #27, !dbg !931
  br label %237, !dbg !1117

237:                                              ; preds = %240, %230
  %238 = phi i8* [ %234, %230 ], [ %241, %240 ], !dbg !1028
  call void @llvm.dbg.value(metadata i8* %238, metadata !901, metadata !DIExpression()) #27, !dbg !931
  %239 = load i8, i8* %238, align 1, !dbg !1118, !tbaa !937
  switch i8 %239, label %242 [
    i8 108, label %240
    i8 76, label %240
    i8 104, label %240
    i8 106, label %240
    i8 116, label %240
    i8 122, label %240
  ], !dbg !1119

240:                                              ; preds = %237, %237, %237, %237, %237, %237
  %241 = getelementptr inbounds i8, i8* %238, i64 1, !dbg !1120
  call void @llvm.dbg.value(metadata i8* %241, metadata !901, metadata !DIExpression()) #27, !dbg !931
  br label %237, !dbg !1117, !llvm.loop !1121

242:                                              ; preds = %237
  call void @llvm.dbg.value(metadata i8 %239, metadata !928, metadata !DIExpression()) #27, !dbg !1123
  %243 = zext i8 %239 to i64, !dbg !1124
  %244 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 %243, !dbg !1124
  %245 = load i8, i8* %244, align 1, !dbg !1124, !tbaa !937
  %246 = icmp eq i8 %245, 0, !dbg !1124
  br i1 %246, label %247, label %254, !dbg !1126

247:                                              ; preds = %242
  %248 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.39, i64 0, i64 0), i32 5) #27, !dbg !1127
  %249 = getelementptr inbounds i8, i8* %238, i64 1, !dbg !1127
  %250 = ptrtoint i8* %249 to i64, !dbg !1127
  %251 = ptrtoint i8* %77 to i64, !dbg !1127
  %252 = sub i64 %250, %251, !dbg !1127
  %253 = trunc i64 %252 to i32, !dbg !1127
  call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %248, i32 %253, i8* nonnull %77) #27, !dbg !1127
  unreachable, !dbg !1127

254:                                              ; preds = %242
  %255 = icmp slt i32 %236, 1, !dbg !1128
  br i1 %255, label %260, label %256, !dbg !1129

256:                                              ; preds = %254
  %257 = add nsw i32 %236, -1, !dbg !1130
  call void @llvm.dbg.value(metadata i32 %257, metadata !898, metadata !DIExpression()) #27, !dbg !931
  %258 = getelementptr inbounds i8*, i8** %235, i64 1, !dbg !1131
  call void @llvm.dbg.value(metadata i8** %258, metadata !899, metadata !DIExpression()) #27, !dbg !931
  %259 = load i8*, i8** %235, align 8, !dbg !1132, !tbaa !727
  br label %260, !dbg !1129

260:                                              ; preds = %256, %254
  %261 = phi i8** [ %235, %254 ], [ %258, %256 ], !dbg !1028
  %262 = phi i32 [ %236, %254 ], [ %257, %256 ], !dbg !1028
  %263 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.11, i64 0, i64 0), %254 ], [ %259, %256 ], !dbg !1129
  call void @llvm.dbg.value(metadata i32 %262, metadata !898, metadata !DIExpression()) #27, !dbg !931
  call void @llvm.dbg.value(metadata i8** %261, metadata !899, metadata !DIExpression()) #27, !dbg !931
  call void @llvm.dbg.declare(metadata [6 x i8]* undef, metadata !1133, metadata !DIExpression(DW_OP_LLVM_fragment, 80, 48)) #27, !dbg !1160
  call void @llvm.dbg.value(metadata i8* %77, metadata !1140, metadata !DIExpression()) #27, !dbg !1162
  call void @llvm.dbg.value(metadata i64 %231, metadata !1141, metadata !DIExpression()) #27, !dbg !1162
  call void @llvm.dbg.value(metadata i8 %239, metadata !1142, metadata !DIExpression()) #27, !dbg !1162
  call void @llvm.dbg.value(metadata i1 %146, metadata !1143, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !1162
  call void @llvm.dbg.value(metadata i32 %185, metadata !1144, metadata !DIExpression()) #27, !dbg !1162
  call void @llvm.dbg.value(metadata i1 %232, metadata !1145, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !1162
  call void @llvm.dbg.value(metadata i32 %233, metadata !1146, metadata !DIExpression()) #27, !dbg !1162
  call void @llvm.dbg.value(metadata i8* %263, metadata !1147, metadata !DIExpression()) #27, !dbg !1162
  %264 = sext i8 %239 to i32, !dbg !1163
  switch i32 %264, label %266 [
    i32 100, label %267
    i32 105, label %267
    i32 111, label %267
    i32 117, label %267
    i32 120, label %267
    i32 88, label %267
    i32 97, label %265
    i32 101, label %265
    i32 102, label %265
    i32 103, label %265
    i32 65, label %265
    i32 69, label %265
    i32 70, label %265
    i32 71, label %265
  ], !dbg !1164

265:                                              ; preds = %260, %260, %260, %260, %260, %260, %260, %260
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.45, i64 0, i64 0), metadata !1151, metadata !DIExpression()) #27, !dbg !1165
  call void @llvm.dbg.value(metadata i64 1, metadata !1152, metadata !DIExpression()) #27, !dbg !1165
  br label %267, !dbg !1166

266:                                              ; preds = %260
  call void @llvm.dbg.value(metadata i8* %77, metadata !1151, metadata !DIExpression()) #27, !dbg !1165
  call void @llvm.dbg.value(metadata i64 0, metadata !1152, metadata !DIExpression()) #27, !dbg !1165
  br label %267, !dbg !1168

267:                                              ; preds = %266, %265, %260, %260, %260, %260, %260, %260
  %268 = phi i64 [ 0, %266 ], [ 1, %265 ], [ 1, %260 ], [ 1, %260 ], [ 1, %260 ], [ 1, %260 ], [ 1, %260 ], [ 1, %260 ], !dbg !1169
  %269 = phi i8* [ %77, %266 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.45, i64 0, i64 0), %265 ], [ getelementptr inbounds ([3 x i8], [3 x i8]* @.str.44, i64 0, i64 0), %260 ], [ getelementptr inbounds ([3 x i8], [3 x i8]* @.str.44, i64 0, i64 0), %260 ], [ getelementptr inbounds ([3 x i8], [3 x i8]* @.str.44, i64 0, i64 0), %260 ], [ getelementptr inbounds ([3 x i8], [3 x i8]* @.str.44, i64 0, i64 0), %260 ], [ getelementptr inbounds ([3 x i8], [3 x i8]* @.str.44, i64 0, i64 0), %260 ], [ getelementptr inbounds ([3 x i8], [3 x i8]* @.str.44, i64 0, i64 0), %260 ], !dbg !1169
  call void @llvm.dbg.value(metadata i8* %269, metadata !1151, metadata !DIExpression()) #27, !dbg !1165
  call void @llvm.dbg.value(metadata i64 %268, metadata !1152, metadata !DIExpression()) #27, !dbg !1165
  %270 = add i64 %231, 2, !dbg !1170
  %271 = add i64 %270, %268, !dbg !1171
  %272 = call noalias i8* @xmalloc(i64 %271) #27, !dbg !1172
  call void @llvm.dbg.value(metadata i8* %272, metadata !1148, metadata !DIExpression()) #27, !dbg !1162
  call void @llvm.dbg.value(metadata i8* %272, metadata !1173, metadata !DIExpression()) #27, !dbg !1184
  call void @llvm.dbg.value(metadata i8* %77, metadata !1182, metadata !DIExpression()) #27, !dbg !1184
  call void @llvm.dbg.value(metadata i64 %231, metadata !1183, metadata !DIExpression()) #27, !dbg !1184
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %272, i8* nonnull align 1 %77, i64 %231, i1 false) #27, !dbg !1186
  %273 = getelementptr inbounds i8, i8* %272, i64 %231, !dbg !1186
  call void @llvm.dbg.value(metadata i8* %273, metadata !1149, metadata !DIExpression()) #27, !dbg !1165
  call void @llvm.dbg.value(metadata i8* %273, metadata !1173, metadata !DIExpression()) #27, !dbg !1187
  call void @llvm.dbg.value(metadata i8* %269, metadata !1182, metadata !DIExpression()) #27, !dbg !1187
  call void @llvm.dbg.value(metadata i64 %268, metadata !1183, metadata !DIExpression()) #27, !dbg !1187
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %273, i8* nonnull align 1 %269, i64 %268, i1 false) #27, !dbg !1189
  %274 = getelementptr inbounds i8, i8* %273, i64 %268, !dbg !1189
  call void @llvm.dbg.value(metadata i8* %274, metadata !1149, metadata !DIExpression()) #27, !dbg !1165
  %275 = getelementptr inbounds i8, i8* %274, i64 1, !dbg !1190
  call void @llvm.dbg.value(metadata i8* %275, metadata !1149, metadata !DIExpression()) #27, !dbg !1165
  store i8 %239, i8* %274, align 1, !dbg !1191, !tbaa !937
  store i8 0, i8* %275, align 1, !dbg !1192, !tbaa !937
  switch i32 %264, label %370 [
    i32 100, label %276
    i32 105, label %276
    i32 111, label %288
    i32 117, label %288
    i32 120, label %288
    i32 88, label %288
    i32 97, label %320
    i32 65, label %320
    i32 101, label %320
    i32 69, label %320
    i32 102, label %320
    i32 70, label %320
    i32 103, label %320
    i32 71, label %320
    i32 99, label %352
    i32 115, label %359
  ], !dbg !1193

276:                                              ; preds = %267, %267
  %277 = call fastcc i64 @vstrtoimax(i8* %263) #27, !dbg !1194
  call void @llvm.dbg.value(metadata i64 %277, metadata !1153, metadata !DIExpression()) #27, !dbg !1195
  br i1 %146, label %283, label %278, !dbg !1196

278:                                              ; preds = %276
  br i1 %232, label %281, label %279, !dbg !1197

279:                                              ; preds = %278
  %280 = call i32 (i8*, ...) @xprintf(i8* %272, i64 %277) #27, !dbg !1200
  br label %370, !dbg !1200

281:                                              ; preds = %278
  %282 = call i32 (i8*, ...) @xprintf(i8* %272, i32 %233, i64 %277) #27, !dbg !1202
  br label %370

283:                                              ; preds = %276
  br i1 %232, label %286, label %284, !dbg !1203

284:                                              ; preds = %283
  %285 = call i32 (i8*, ...) @xprintf(i8* %272, i32 %185, i64 %277) #27, !dbg !1205
  br label %370, !dbg !1205

286:                                              ; preds = %283
  %287 = call i32 (i8*, ...) @xprintf(i8* %272, i32 %185, i32 %233, i64 %277) #27, !dbg !1207
  br label %370

288:                                              ; preds = %267, %267, %267, %267
  call void @llvm.dbg.value(metadata i8* %263, metadata !1208, metadata !DIExpression()) #27, !dbg !1218
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %67) #27, !dbg !1220
  %289 = load i8, i8* %263, align 1, !dbg !1221, !tbaa !937
  switch i8 %289, label %304 [
    i8 34, label %290
    i8 39, label %290
  ], !dbg !1221

290:                                              ; preds = %288, %288
  %291 = getelementptr inbounds i8, i8* %263, i64 1, !dbg !1221
  %292 = load i8, i8* %291, align 1, !dbg !1221, !tbaa !937
  %293 = icmp eq i8 %292, 0, !dbg !1221
  br i1 %293, label %304, label %294, !dbg !1220

294:                                              ; preds = %290
  call void @llvm.dbg.value(metadata i8* %291, metadata !1208, metadata !DIExpression()) #27, !dbg !1218
  call void @llvm.dbg.value(metadata i8 %292, metadata !1215, metadata !DIExpression()) #27, !dbg !1222
  %295 = zext i8 %292 to i64, !dbg !1223
  call void @llvm.dbg.value(metadata i64 %295, metadata !1214, metadata !DIExpression()) #27, !dbg !1218
  %296 = getelementptr inbounds i8, i8* %263, i64 2, !dbg !1224
  call void @llvm.dbg.value(metadata i8* %296, metadata !1208, metadata !DIExpression()) #27, !dbg !1218
  %297 = load i8, i8* %296, align 1, !dbg !1224, !tbaa !937
  %298 = icmp ne i8 %297, 0, !dbg !1224
  %299 = load i8, i8* @posixly_correct, align 1, !dbg !1224
  %300 = icmp eq i8 %299, 0, !dbg !1224
  %301 = and i1 %298, %300, !dbg !1224
  br i1 %301, label %302, label %308, !dbg !1224

302:                                              ; preds = %294
  %303 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.40, i64 0, i64 0), i32 5) #27, !dbg !1224
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %303, i8* nonnull %296) #27, !dbg !1224
  br label %308, !dbg !1224

304:                                              ; preds = %290, %288
  %305 = tail call i32* @__errno_location() #31, !dbg !1226
  store i32 0, i32* %305, align 4, !dbg !1226, !tbaa !1228
  call void @llvm.dbg.value(metadata i8** %4, metadata !1213, metadata !DIExpression(DW_OP_deref)) #27, !dbg !1218
  %306 = call i64 @strtoumax(i8* nonnull %263, i8** nonnull %4, i32 0) #27, !dbg !1226
  call void @llvm.dbg.value(metadata i64 %306, metadata !1214, metadata !DIExpression()) #27, !dbg !1218
  %307 = load i8*, i8** %4, align 8, !dbg !1226, !tbaa !727
  call void @llvm.dbg.value(metadata i8* %307, metadata !1213, metadata !DIExpression()) #27, !dbg !1218
  call fastcc void @verify_numeric(i8* nonnull %263, i8* %307) #27, !dbg !1226
  br label %308

308:                                              ; preds = %304, %302, %294
  %309 = phi i64 [ %306, %304 ], [ %295, %302 ], [ %295, %294 ], !dbg !1229
  call void @llvm.dbg.value(metadata i64 %309, metadata !1214, metadata !DIExpression()) #27, !dbg !1218
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %67) #27, !dbg !1220
  call void @llvm.dbg.value(metadata i64 %309, metadata !1155, metadata !DIExpression()) #27, !dbg !1230
  br i1 %146, label %315, label %310, !dbg !1231

310:                                              ; preds = %308
  br i1 %232, label %313, label %311, !dbg !1232

311:                                              ; preds = %310
  %312 = call i32 (i8*, ...) @xprintf(i8* %272, i64 %309) #27, !dbg !1235
  br label %370, !dbg !1235

313:                                              ; preds = %310
  %314 = call i32 (i8*, ...) @xprintf(i8* %272, i32 %233, i64 %309) #27, !dbg !1237
  br label %370

315:                                              ; preds = %308
  br i1 %232, label %318, label %316, !dbg !1238

316:                                              ; preds = %315
  %317 = call i32 (i8*, ...) @xprintf(i8* %272, i32 %185, i64 %309) #27, !dbg !1240
  br label %370, !dbg !1240

318:                                              ; preds = %315
  %319 = call i32 (i8*, ...) @xprintf(i8* %272, i32 %185, i32 %233, i64 %309) #27, !dbg !1242
  br label %370

320:                                              ; preds = %267, %267, %267, %267, %267, %267, %267, %267
  call void @llvm.dbg.declare(metadata [6 x i8]* undef, metadata !1243, metadata !DIExpression(DW_OP_LLVM_fragment, 80, 48)) #27, !dbg !1253
  call void @llvm.dbg.value(metadata i8* %263, metadata !1248, metadata !DIExpression()) #27, !dbg !1255
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %66) #27, !dbg !1253
  %321 = load i8, i8* %263, align 1, !dbg !1256, !tbaa !937
  switch i8 %321, label %336 [
    i8 34, label %322
    i8 39, label %322
  ], !dbg !1256

322:                                              ; preds = %320, %320
  %323 = getelementptr inbounds i8, i8* %263, i64 1, !dbg !1256
  %324 = load i8, i8* %323, align 1, !dbg !1256, !tbaa !937
  %325 = icmp eq i8 %324, 0, !dbg !1256
  br i1 %325, label %336, label %326, !dbg !1253

326:                                              ; preds = %322
  call void @llvm.dbg.value(metadata i8* %323, metadata !1248, metadata !DIExpression()) #27, !dbg !1255
  call void @llvm.dbg.value(metadata i8 %324, metadata !1250, metadata !DIExpression()) #27, !dbg !1257
  %327 = uitofp i8 %324 to x86_fp80, !dbg !1258
  call void @llvm.dbg.value(metadata x86_fp80 %327, metadata !1243, metadata !DIExpression()) #27, !dbg !1255
  %328 = getelementptr inbounds i8, i8* %263, i64 2, !dbg !1259
  call void @llvm.dbg.value(metadata i8* %328, metadata !1248, metadata !DIExpression()) #27, !dbg !1255
  %329 = load i8, i8* %328, align 1, !dbg !1259, !tbaa !937
  %330 = icmp ne i8 %329, 0, !dbg !1259
  %331 = load i8, i8* @posixly_correct, align 1, !dbg !1259
  %332 = icmp eq i8 %331, 0, !dbg !1259
  %333 = and i1 %330, %332, !dbg !1259
  br i1 %333, label %334, label %340, !dbg !1259

334:                                              ; preds = %326
  %335 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.40, i64 0, i64 0), i32 5) #27, !dbg !1259
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %335, i8* nonnull %328) #27, !dbg !1259
  br label %340, !dbg !1259

336:                                              ; preds = %322, %320
  %337 = tail call i32* @__errno_location() #31, !dbg !1261
  store i32 0, i32* %337, align 4, !dbg !1261, !tbaa !1228
  call void @llvm.dbg.value(metadata i8** %3, metadata !1249, metadata !DIExpression(DW_OP_deref)) #27, !dbg !1255
  %338 = call x86_fp80 @cl_strtold(i8* nonnull %263, i8** nonnull %3) #27, !dbg !1261
  call void @llvm.dbg.value(metadata x86_fp80 %338, metadata !1243, metadata !DIExpression()) #27, !dbg !1255
  %339 = load i8*, i8** %3, align 8, !dbg !1261, !tbaa !727
  call void @llvm.dbg.value(metadata i8* %339, metadata !1249, metadata !DIExpression()) #27, !dbg !1255
  call fastcc void @verify_numeric(i8* nonnull %263, i8* %339) #27, !dbg !1261
  br label %340

340:                                              ; preds = %336, %334, %326
  %341 = phi x86_fp80 [ %338, %336 ], [ %327, %334 ], [ %327, %326 ], !dbg !1263
  call void @llvm.dbg.value(metadata x86_fp80 %341, metadata !1243, metadata !DIExpression()) #27, !dbg !1255
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %66) #27, !dbg !1253
  call void @llvm.dbg.value(metadata x86_fp80 %341, metadata !1133, metadata !DIExpression()) #27, !dbg !1264
  br i1 %146, label %347, label %342, !dbg !1265

342:                                              ; preds = %340
  br i1 %232, label %345, label %343, !dbg !1266

343:                                              ; preds = %342
  %344 = call i32 (i8*, ...) @xprintf(i8* %272, x86_fp80 %341) #27, !dbg !1269
  br label %370, !dbg !1269

345:                                              ; preds = %342
  %346 = call i32 (i8*, ...) @xprintf(i8* %272, i32 %233, x86_fp80 %341) #27, !dbg !1271
  br label %370

347:                                              ; preds = %340
  br i1 %232, label %350, label %348, !dbg !1272

348:                                              ; preds = %347
  %349 = call i32 (i8*, ...) @xprintf(i8* %272, i32 %185, x86_fp80 %341) #27, !dbg !1274
  br label %370, !dbg !1274

350:                                              ; preds = %347
  %351 = call i32 (i8*, ...) @xprintf(i8* %272, i32 %185, i32 %233, x86_fp80 %341) #27, !dbg !1276
  br label %370

352:                                              ; preds = %267
  %353 = load i8, i8* %263, align 1, !dbg !1277, !tbaa !937
  %354 = sext i8 %353 to i32, !dbg !1277
  br i1 %146, label %357, label %355, !dbg !1279

355:                                              ; preds = %352
  %356 = call i32 (i8*, ...) @xprintf(i8* %272, i32 %354) #27, !dbg !1280
  br label %370, !dbg !1280

357:                                              ; preds = %352
  %358 = call i32 (i8*, ...) @xprintf(i8* %272, i32 %185, i32 %354) #27, !dbg !1281
  br label %370

359:                                              ; preds = %267
  br i1 %146, label %365, label %360, !dbg !1282

360:                                              ; preds = %359
  br i1 %232, label %363, label %361, !dbg !1283

361:                                              ; preds = %360
  %362 = call i32 (i8*, ...) @xprintf(i8* %272, i8* %263) #27, !dbg !1286
  br label %370, !dbg !1286

363:                                              ; preds = %360
  %364 = call i32 (i8*, ...) @xprintf(i8* %272, i32 %233, i8* %263) #27, !dbg !1288
  br label %370

365:                                              ; preds = %359
  br i1 %232, label %368, label %366, !dbg !1289

366:                                              ; preds = %365
  %367 = call i32 (i8*, ...) @xprintf(i8* %272, i32 %185, i8* %263) #27, !dbg !1291
  br label %370, !dbg !1291

368:                                              ; preds = %365
  %369 = call i32 (i8*, ...) @xprintf(i8* %272, i32 %185, i32 %233, i8* %263) #27, !dbg !1293
  br label %370

370:                                              ; preds = %368, %366, %363, %361, %357, %355, %350, %348, %345, %343, %318, %316, %313, %311, %286, %284, %281, %279, %267
  call void @free(i8* %272) #27, !dbg !1294
  br label %387, !dbg !1295

371:                                              ; preds = %73
  %372 = call fastcc i32 @print_esc(i8* nonnull %77, i1 zeroext false) #27, !dbg !1296
  %373 = sext i32 %372 to i64, !dbg !1297
  %374 = getelementptr inbounds i8, i8* %77, i64 %373, !dbg !1297
  call void @llvm.dbg.value(metadata i8* %374, metadata !901, metadata !DIExpression()) #27, !dbg !931
  br label %387, !dbg !1298

375:                                              ; preds = %73
  call void @llvm.dbg.value(metadata i32 %80, metadata !945, metadata !DIExpression()) #27, !dbg !1299
  %376 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1301, !tbaa !727
  %377 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %376, i64 0, i32 5, !dbg !1301
  %378 = load i8*, i8** %377, align 8, !dbg !1301, !tbaa !955
  %379 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %376, i64 0, i32 6, !dbg !1301
  %380 = load i8*, i8** %379, align 8, !dbg !1301, !tbaa !960
  %381 = icmp ult i8* %378, %380, !dbg !1301
  br i1 %381, label %385, label %382, !dbg !1301, !prof !961

382:                                              ; preds = %375
  %383 = and i32 %80, 255, !dbg !1301
  %384 = call i32 @__overflow(%struct._IO_FILE* nonnull %376, i32 %383) #27, !dbg !1301
  br label %387, !dbg !1301

385:                                              ; preds = %375
  %386 = getelementptr inbounds i8, i8* %378, i64 1, !dbg !1301
  store i8* %386, i8** %377, align 8, !dbg !1301, !tbaa !955
  store i8 %74, i8* %378, align 1, !dbg !1301, !tbaa !937
  br label %387, !dbg !1301

387:                                              ; preds = %385, %382, %371, %370, %126, %124, %121, %95, %93, %91
  %388 = phi i32 [ %79, %371 ], [ %79, %121 ], [ %79, %95 ], [ %79, %126 ], [ %79, %124 ], [ %185, %370 ], [ %79, %91 ], [ %79, %93 ], [ %79, %382 ], [ %79, %385 ], !dbg !931
  %389 = phi i32 [ %78, %371 ], [ %78, %121 ], [ %78, %95 ], [ %78, %126 ], [ %78, %124 ], [ %233, %370 ], [ %78, %91 ], [ %78, %93 ], [ %78, %382 ], [ %78, %385 ], !dbg !931
  %390 = phi i8* [ %374, %371 ], [ %82, %121 ], [ %82, %95 ], [ %82, %126 ], [ %82, %124 ], [ %238, %370 ], [ %82, %91 ], [ %82, %93 ], [ %77, %382 ], [ %77, %385 ], !dbg !1302
  %391 = phi i8** [ %76, %371 ], [ %122, %121 ], [ %76, %95 ], [ %131, %126 ], [ %76, %124 ], [ %261, %370 ], [ %76, %91 ], [ %76, %93 ], [ %76, %382 ], [ %76, %385 ]
  %392 = phi i32 [ %75, %371 ], [ %123, %121 ], [ %75, %95 ], [ %132, %126 ], [ %75, %124 ], [ %262, %370 ], [ %75, %91 ], [ %75, %93 ], [ %75, %382 ], [ %75, %385 ]
  call void @llvm.dbg.value(metadata i32 %392, metadata !898, metadata !DIExpression()) #27, !dbg !931
  call void @llvm.dbg.value(metadata i8** %391, metadata !899, metadata !DIExpression()) #27, !dbg !931
  call void @llvm.dbg.value(metadata i8* %390, metadata !901, metadata !DIExpression()) #27, !dbg !931
  call void @llvm.dbg.value(metadata i32 %389, metadata !907, metadata !DIExpression()) #27, !dbg !931
  call void @llvm.dbg.value(metadata i32 %388, metadata !905, metadata !DIExpression()) #27, !dbg !931
  %393 = getelementptr inbounds i8, i8* %390, i64 1, !dbg !1303
  call void @llvm.dbg.value(metadata i8* %393, metadata !901, metadata !DIExpression()) #27, !dbg !931
  %394 = load i8, i8* %393, align 1, !dbg !936, !tbaa !937
  %395 = icmp eq i8 %394, 0, !dbg !938
  br i1 %395, label %396, label %73, !dbg !938, !llvm.loop !1304

396:                                              ; preds = %387, %68
  %397 = phi i32 [ %70, %68 ], [ %392, %387 ]
  %398 = sub nsw i32 %70, %397, !dbg !1306
  call void @llvm.lifetime.end.p0i8(i64 256, i8* nonnull %51) #27, !dbg !1307
  call void @llvm.dbg.value(metadata i32 %398, metadata !845, metadata !DIExpression()), !dbg !846
  call void @llvm.dbg.value(metadata i32 %397, metadata !842, metadata !DIExpression()), !dbg !846
  %399 = sext i32 %398 to i64, !dbg !1308
  %400 = getelementptr inbounds i8*, i8** %69, i64 %399, !dbg !1308
  call void @llvm.dbg.value(metadata i8** %400, metadata !843, metadata !DIExpression()), !dbg !846
  %401 = icmp sgt i32 %398, 0, !dbg !1309
  %402 = icmp sgt i32 %397, 0, !dbg !1310
  %403 = and i1 %402, %401, !dbg !1310
  br i1 %403, label %68, label %404, !dbg !1311, !llvm.loop !1312

404:                                              ; preds = %396
  br i1 %402, label %405, label %409, !dbg !1314

405:                                              ; preds = %404
  %406 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.21, i64 0, i64 0), i32 5) #27, !dbg !1315
  %407 = load i8*, i8** %400, align 8, !dbg !1317, !tbaa !727
  %408 = call i8* @quote(i8* %407) #27, !dbg !1318
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %406, i8* %408) #27, !dbg !1319
  br label %409, !dbg !1319

409:                                              ; preds = %405, %404
  %410 = load i1, i1* @exit_status, align 4, !dbg !1320
  %411 = zext i1 %410 to i32, !dbg !1320
  br label %412, !dbg !1321

412:                                              ; preds = %409, %24
  %413 = phi i32 [ 0, %24 ], [ %411, %409 ], !dbg !846
  ret i32 %413, !dbg !1322
}

; Function Attrs: nounwind
declare !dbg !1323 i8* @bindtextdomain(i8*, i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1326 i8* @textdomain(i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1329 i32 @atexit(void ()*) local_unnamed_addr #2

; Function Attrs: nofree nounwind readonly
declare !dbg !1336 noundef i8* @getenv(i8* nocapture noundef) local_unnamed_addr #9

declare !dbg !1337 void @error(i32, i32, i8*, ...) local_unnamed_addr #3

declare i32 @__overflow(%struct._IO_FILE*, i32) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i32 @print_esc(i8* %0, i1 zeroext %1) unnamed_addr #8 !dbg !1341 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1345, metadata !DIExpression()), !dbg !1357
  call void @llvm.dbg.value(metadata i1 %1, metadata !1346, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1357
  %3 = getelementptr inbounds i8, i8* %0, i64 1, !dbg !1358
  call void @llvm.dbg.value(metadata i8* %3, metadata !1347, metadata !DIExpression()), !dbg !1357
  call void @llvm.dbg.value(metadata i32 0, metadata !1348, metadata !DIExpression()), !dbg !1357
  %4 = load i8, i8* %3, align 1, !dbg !1359, !tbaa !937
  %5 = icmp eq i8 %4, 120, !dbg !1360
  br i1 %5, label %6, label %50, !dbg !1361

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i32 0, metadata !1349, metadata !DIExpression()), !dbg !1357
  %7 = getelementptr inbounds i8, i8* %0, i64 2, !dbg !1362
  call void @llvm.dbg.value(metadata i8* %7, metadata !1347, metadata !DIExpression()), !dbg !1357
  call void @llvm.dbg.value(metadata i32 0, metadata !1349, metadata !DIExpression()), !dbg !1357
  call void @llvm.dbg.value(metadata i32 0, metadata !1348, metadata !DIExpression()), !dbg !1357
  %8 = tail call i16** @__ctype_b_loc() #31, !dbg !1357
  %9 = load i16*, i16** %8, align 8, !tbaa !727
  %10 = getelementptr i8, i8* %0, i64 4, !dbg !1365
  call void @llvm.dbg.value(metadata i8* %7, metadata !1347, metadata !DIExpression()), !dbg !1357
  call void @llvm.dbg.value(metadata i32 0, metadata !1349, metadata !DIExpression()), !dbg !1357
  call void @llvm.dbg.value(metadata i32 0, metadata !1348, metadata !DIExpression()), !dbg !1357
  %11 = load i8, i8* %7, align 1, !dbg !1367, !tbaa !937
  %12 = zext i8 %11 to i64, !dbg !1367
  %13 = getelementptr inbounds i16, i16* %9, i64 %12, !dbg !1367
  %14 = load i16, i16* %13, align 2, !dbg !1367, !tbaa !1368
  %15 = and i16 %14, 4096, !dbg !1367
  %16 = icmp eq i16 %15, 0, !dbg !1365
  br i1 %16, label %33, label %17, !dbg !1369

17:                                               ; preds = %6
  %18 = sext i8 %11 to i32, !dbg !1370
  %19 = add i8 %11, -97, !dbg !1370
  %20 = icmp ult i8 %19, 6, !dbg !1370
  %21 = add i8 %11, -65, !dbg !1370
  %22 = icmp ult i8 %21, 6, !dbg !1370
  %23 = select i1 %22, i32 -55, i32 -48, !dbg !1370
  %24 = select i1 %20, i32 -87, i32 %23, !dbg !1370
  %25 = add nsw i32 %24, %18, !dbg !1370
  call void @llvm.dbg.value(metadata i32 %25, metadata !1348, metadata !DIExpression()), !dbg !1357
  call void @llvm.dbg.value(metadata i32 1, metadata !1349, metadata !DIExpression()), !dbg !1357
  %26 = getelementptr inbounds i8, i8* %0, i64 3, !dbg !1371
  call void @llvm.dbg.value(metadata i8* %26, metadata !1347, metadata !DIExpression()), !dbg !1357
  call void @llvm.dbg.value(metadata i8* %26, metadata !1347, metadata !DIExpression()), !dbg !1357
  call void @llvm.dbg.value(metadata i32 1, metadata !1349, metadata !DIExpression()), !dbg !1357
  call void @llvm.dbg.value(metadata i32 %25, metadata !1348, metadata !DIExpression()), !dbg !1357
  %27 = load i8, i8* %26, align 1, !dbg !1367, !tbaa !937
  %28 = zext i8 %27 to i64, !dbg !1367
  %29 = getelementptr inbounds i16, i16* %9, i64 %28, !dbg !1367
  %30 = load i16, i16* %29, align 2, !dbg !1367, !tbaa !1368
  %31 = and i16 %30, 4096, !dbg !1367
  %32 = icmp eq i16 %31, 0, !dbg !1365
  br i1 %32, label %35, label %272, !dbg !1369

33:                                               ; preds = %6
  %34 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.46, i64 0, i64 0), i32 5) #27, !dbg !1372
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %34) #27, !dbg !1372
  unreachable, !dbg !1372

35:                                               ; preds = %17, %272
  %36 = phi i32 [ %282, %272 ], [ %25, %17 ]
  %37 = phi i8* [ %10, %272 ], [ %26, %17 ]
  call void @llvm.dbg.value(metadata i32 %36, metadata !945, metadata !DIExpression()) #27, !dbg !1374
  %38 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1376, !tbaa !727
  %39 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %38, i64 0, i32 5, !dbg !1376
  %40 = load i8*, i8** %39, align 8, !dbg !1376, !tbaa !955
  %41 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %38, i64 0, i32 6, !dbg !1376
  %42 = load i8*, i8** %41, align 8, !dbg !1376, !tbaa !960
  %43 = icmp ult i8* %40, %42, !dbg !1376
  br i1 %43, label %47, label %44, !dbg !1376, !prof !961

44:                                               ; preds = %35
  %45 = and i32 %36, 255, !dbg !1376
  %46 = tail call i32 @__overflow(%struct._IO_FILE* nonnull %38, i32 %45) #27, !dbg !1376
  br label %265, !dbg !1376

47:                                               ; preds = %35
  %48 = trunc i32 %36 to i8, !dbg !1376
  %49 = getelementptr inbounds i8, i8* %40, i64 1, !dbg !1376
  store i8* %49, i8** %39, align 8, !dbg !1376, !tbaa !955
  store i8 %48, i8* %40, align 1, !dbg !1376, !tbaa !937
  br label %265, !dbg !1376

50:                                               ; preds = %2
  %51 = and i8 %4, -8, !dbg !1377
  %52 = icmp eq i8 %51, 48, !dbg !1377
  br i1 %52, label %53, label %85, !dbg !1377

53:                                               ; preds = %50
  call void @llvm.dbg.value(metadata i32 0, metadata !1349, metadata !DIExpression()), !dbg !1357
  %54 = icmp eq i8 %4, 48, !dbg !1378
  %55 = and i1 %54, %1, !dbg !1378
  %56 = zext i1 %55 to i64, !dbg !1378
  %57 = getelementptr inbounds i8, i8* %3, i64 %56, !dbg !1381
  call void @llvm.dbg.value(metadata i8* %57, metadata !1347, metadata !DIExpression()), !dbg !1357
  call void @llvm.dbg.value(metadata i32 0, metadata !1348, metadata !DIExpression()), !dbg !1357
  %58 = select i1 %55, i64 5, i64 4, !dbg !1382
  %59 = getelementptr i8, i8* %0, i64 %58, !dbg !1382
  %60 = load i8, i8* %57, align 1, !dbg !1384, !tbaa !937
  %61 = and i8 %60, -8, !dbg !1384
  %62 = icmp eq i8 %61, 48, !dbg !1384
  br i1 %62, label %63, label %70, !dbg !1384

63:                                               ; preds = %53
  %64 = zext i8 %60 to i32, !dbg !1384
  %65 = add nsw i32 %64, -48, !dbg !1385
  call void @llvm.dbg.value(metadata i32 %65, metadata !1348, metadata !DIExpression()), !dbg !1357
  call void @llvm.dbg.value(metadata i32 1, metadata !1349, metadata !DIExpression()), !dbg !1357
  %66 = getelementptr inbounds i8, i8* %57, i64 1, !dbg !1386
  call void @llvm.dbg.value(metadata i8* %66, metadata !1347, metadata !DIExpression()), !dbg !1357
  %67 = load i8, i8* %66, align 1, !dbg !1384, !tbaa !937
  %68 = and i8 %67, -8, !dbg !1384
  %69 = icmp eq i8 %68, 48, !dbg !1384
  br i1 %69, label %283, label %70, !dbg !1384

70:                                               ; preds = %292, %283, %63, %53
  %71 = phi i32 [ 0, %53 ], [ %65, %63 ], [ %287, %283 ], [ %296, %292 ], !dbg !1357
  %72 = phi i8* [ %57, %53 ], [ %66, %63 ], [ %288, %283 ], [ %59, %292 ], !dbg !1387
  call void @llvm.dbg.value(metadata i32 %71, metadata !945, metadata !DIExpression()) #27, !dbg !1388
  %73 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1390, !tbaa !727
  %74 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %73, i64 0, i32 5, !dbg !1390
  %75 = load i8*, i8** %74, align 8, !dbg !1390, !tbaa !955
  %76 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %73, i64 0, i32 6, !dbg !1390
  %77 = load i8*, i8** %76, align 8, !dbg !1390, !tbaa !960
  %78 = icmp ult i8* %75, %77, !dbg !1390
  br i1 %78, label %82, label %79, !dbg !1390, !prof !961

79:                                               ; preds = %70
  %80 = and i32 %71, 255, !dbg !1390
  %81 = tail call i32 @__overflow(%struct._IO_FILE* nonnull %73, i32 %80) #27, !dbg !1390
  br label %265, !dbg !1390

82:                                               ; preds = %70
  %83 = trunc i32 %71 to i8, !dbg !1390
  %84 = getelementptr inbounds i8, i8* %75, i64 1, !dbg !1390
  store i8* %84, i8** %74, align 8, !dbg !1390, !tbaa !955
  store i8 %83, i8* %75, align 1, !dbg !1390, !tbaa !937
  br label %265, !dbg !1390

85:                                               ; preds = %50
  %86 = icmp eq i8 %4, 0, !dbg !1391
  br i1 %86, label %237, label %87, !dbg !1392

87:                                               ; preds = %85
  %88 = sext i8 %4 to i32, !dbg !1391
  %89 = tail call i8* @memchr(i8* nonnull dereferenceable(12) getelementptr inbounds ([12 x i8], [12 x i8]* @.str.47, i64 0, i64 0), i32 %88, i64 12), !dbg !1393
  %90 = icmp eq i8* %89, null, !dbg !1393
  br i1 %90, label %194, label %91, !dbg !1394

91:                                               ; preds = %87
  %92 = getelementptr inbounds i8, i8* %0, i64 2, !dbg !1395
  call void @llvm.dbg.value(metadata i8* %92, metadata !1347, metadata !DIExpression()), !dbg !1357
  call void @llvm.dbg.value(metadata i8 %4, metadata !1396, metadata !DIExpression()) #27, !dbg !1401
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
  ], !dbg !1403

93:                                               ; preds = %91
  call void @llvm.dbg.value(metadata i32 7, metadata !945, metadata !DIExpression()) #27, !dbg !1404
  %94 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1407, !tbaa !727
  %95 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %94, i64 0, i32 5, !dbg !1407
  %96 = load i8*, i8** %95, align 8, !dbg !1407, !tbaa !955
  %97 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %94, i64 0, i32 6, !dbg !1407
  %98 = load i8*, i8** %97, align 8, !dbg !1407, !tbaa !960
  %99 = icmp ult i8* %96, %98, !dbg !1407
  br i1 %99, label %102, label %100, !dbg !1407, !prof !961

100:                                              ; preds = %93
  %101 = tail call i32 @__overflow(%struct._IO_FILE* nonnull %94, i32 7) #27, !dbg !1407
  br label %265, !dbg !1407

102:                                              ; preds = %93
  %103 = getelementptr inbounds i8, i8* %96, i64 1, !dbg !1407
  store i8* %103, i8** %95, align 8, !dbg !1407, !tbaa !955
  store i8 7, i8* %96, align 1, !dbg !1407, !tbaa !937
  br label %265, !dbg !1407

104:                                              ; preds = %91
  call void @llvm.dbg.value(metadata i32 8, metadata !945, metadata !DIExpression()) #27, !dbg !1408
  %105 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1410, !tbaa !727
  %106 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %105, i64 0, i32 5, !dbg !1410
  %107 = load i8*, i8** %106, align 8, !dbg !1410, !tbaa !955
  %108 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %105, i64 0, i32 6, !dbg !1410
  %109 = load i8*, i8** %108, align 8, !dbg !1410, !tbaa !960
  %110 = icmp ult i8* %107, %109, !dbg !1410
  br i1 %110, label %113, label %111, !dbg !1410, !prof !961

111:                                              ; preds = %104
  %112 = tail call i32 @__overflow(%struct._IO_FILE* nonnull %105, i32 8) #27, !dbg !1410
  br label %265, !dbg !1410

113:                                              ; preds = %104
  %114 = getelementptr inbounds i8, i8* %107, i64 1, !dbg !1410
  store i8* %114, i8** %106, align 8, !dbg !1410, !tbaa !955
  store i8 8, i8* %107, align 1, !dbg !1410, !tbaa !937
  br label %265, !dbg !1410

115:                                              ; preds = %91
  tail call void @exit(i32 0) #29, !dbg !1411
  unreachable, !dbg !1411

116:                                              ; preds = %91
  call void @llvm.dbg.value(metadata i32 27, metadata !945, metadata !DIExpression()) #27, !dbg !1412
  %117 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1414, !tbaa !727
  %118 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %117, i64 0, i32 5, !dbg !1414
  %119 = load i8*, i8** %118, align 8, !dbg !1414, !tbaa !955
  %120 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %117, i64 0, i32 6, !dbg !1414
  %121 = load i8*, i8** %120, align 8, !dbg !1414, !tbaa !960
  %122 = icmp ult i8* %119, %121, !dbg !1414
  br i1 %122, label %125, label %123, !dbg !1414, !prof !961

123:                                              ; preds = %116
  %124 = tail call i32 @__overflow(%struct._IO_FILE* nonnull %117, i32 27) #27, !dbg !1414
  br label %265, !dbg !1414

125:                                              ; preds = %116
  %126 = getelementptr inbounds i8, i8* %119, i64 1, !dbg !1414
  store i8* %126, i8** %118, align 8, !dbg !1414, !tbaa !955
  store i8 27, i8* %119, align 1, !dbg !1414, !tbaa !937
  br label %265, !dbg !1414

127:                                              ; preds = %91
  call void @llvm.dbg.value(metadata i32 12, metadata !945, metadata !DIExpression()) #27, !dbg !1415
  %128 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1417, !tbaa !727
  %129 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %128, i64 0, i32 5, !dbg !1417
  %130 = load i8*, i8** %129, align 8, !dbg !1417, !tbaa !955
  %131 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %128, i64 0, i32 6, !dbg !1417
  %132 = load i8*, i8** %131, align 8, !dbg !1417, !tbaa !960
  %133 = icmp ult i8* %130, %132, !dbg !1417
  br i1 %133, label %136, label %134, !dbg !1417, !prof !961

134:                                              ; preds = %127
  %135 = tail call i32 @__overflow(%struct._IO_FILE* nonnull %128, i32 12) #27, !dbg !1417
  br label %265, !dbg !1417

136:                                              ; preds = %127
  %137 = getelementptr inbounds i8, i8* %130, i64 1, !dbg !1417
  store i8* %137, i8** %129, align 8, !dbg !1417, !tbaa !955
  store i8 12, i8* %130, align 1, !dbg !1417, !tbaa !937
  br label %265, !dbg !1417

138:                                              ; preds = %91
  call void @llvm.dbg.value(metadata i32 10, metadata !945, metadata !DIExpression()) #27, !dbg !1418
  %139 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1420, !tbaa !727
  %140 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %139, i64 0, i32 5, !dbg !1420
  %141 = load i8*, i8** %140, align 8, !dbg !1420, !tbaa !955
  %142 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %139, i64 0, i32 6, !dbg !1420
  %143 = load i8*, i8** %142, align 8, !dbg !1420, !tbaa !960
  %144 = icmp ult i8* %141, %143, !dbg !1420
  br i1 %144, label %147, label %145, !dbg !1420, !prof !961

145:                                              ; preds = %138
  %146 = tail call i32 @__overflow(%struct._IO_FILE* nonnull %139, i32 10) #27, !dbg !1420
  br label %265, !dbg !1420

147:                                              ; preds = %138
  %148 = getelementptr inbounds i8, i8* %141, i64 1, !dbg !1420
  store i8* %148, i8** %140, align 8, !dbg !1420, !tbaa !955
  store i8 10, i8* %141, align 1, !dbg !1420, !tbaa !937
  br label %265, !dbg !1420

149:                                              ; preds = %91
  call void @llvm.dbg.value(metadata i32 13, metadata !945, metadata !DIExpression()) #27, !dbg !1421
  %150 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1423, !tbaa !727
  %151 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %150, i64 0, i32 5, !dbg !1423
  %152 = load i8*, i8** %151, align 8, !dbg !1423, !tbaa !955
  %153 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %150, i64 0, i32 6, !dbg !1423
  %154 = load i8*, i8** %153, align 8, !dbg !1423, !tbaa !960
  %155 = icmp ult i8* %152, %154, !dbg !1423
  br i1 %155, label %158, label %156, !dbg !1423, !prof !961

156:                                              ; preds = %149
  %157 = tail call i32 @__overflow(%struct._IO_FILE* nonnull %150, i32 13) #27, !dbg !1423
  br label %265, !dbg !1423

158:                                              ; preds = %149
  %159 = getelementptr inbounds i8, i8* %152, i64 1, !dbg !1423
  store i8* %159, i8** %151, align 8, !dbg !1423, !tbaa !955
  store i8 13, i8* %152, align 1, !dbg !1423, !tbaa !937
  br label %265, !dbg !1423

160:                                              ; preds = %91
  call void @llvm.dbg.value(metadata i32 9, metadata !945, metadata !DIExpression()) #27, !dbg !1424
  %161 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1426, !tbaa !727
  %162 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %161, i64 0, i32 5, !dbg !1426
  %163 = load i8*, i8** %162, align 8, !dbg !1426, !tbaa !955
  %164 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %161, i64 0, i32 6, !dbg !1426
  %165 = load i8*, i8** %164, align 8, !dbg !1426, !tbaa !960
  %166 = icmp ult i8* %163, %165, !dbg !1426
  br i1 %166, label %169, label %167, !dbg !1426, !prof !961

167:                                              ; preds = %160
  %168 = tail call i32 @__overflow(%struct._IO_FILE* nonnull %161, i32 9) #27, !dbg !1426
  br label %265, !dbg !1426

169:                                              ; preds = %160
  %170 = getelementptr inbounds i8, i8* %163, i64 1, !dbg !1426
  store i8* %170, i8** %162, align 8, !dbg !1426, !tbaa !955
  store i8 9, i8* %163, align 1, !dbg !1426, !tbaa !937
  br label %265, !dbg !1426

171:                                              ; preds = %91
  call void @llvm.dbg.value(metadata i32 11, metadata !945, metadata !DIExpression()) #27, !dbg !1427
  %172 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1429, !tbaa !727
  %173 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %172, i64 0, i32 5, !dbg !1429
  %174 = load i8*, i8** %173, align 8, !dbg !1429, !tbaa !955
  %175 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %172, i64 0, i32 6, !dbg !1429
  %176 = load i8*, i8** %175, align 8, !dbg !1429, !tbaa !960
  %177 = icmp ult i8* %174, %176, !dbg !1429
  br i1 %177, label %180, label %178, !dbg !1429, !prof !961

178:                                              ; preds = %171
  %179 = tail call i32 @__overflow(%struct._IO_FILE* nonnull %172, i32 11) #27, !dbg !1429
  br label %265, !dbg !1429

180:                                              ; preds = %171
  %181 = getelementptr inbounds i8, i8* %174, i64 1, !dbg !1429
  store i8* %181, i8** %173, align 8, !dbg !1429, !tbaa !955
  store i8 11, i8* %174, align 1, !dbg !1429, !tbaa !937
  br label %265, !dbg !1429

182:                                              ; preds = %91
  call void @llvm.dbg.value(metadata i32 %88, metadata !945, metadata !DIExpression()) #27, !dbg !1430
  %183 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1432, !tbaa !727
  %184 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %183, i64 0, i32 5, !dbg !1432
  %185 = load i8*, i8** %184, align 8, !dbg !1432, !tbaa !955
  %186 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %183, i64 0, i32 6, !dbg !1432
  %187 = load i8*, i8** %186, align 8, !dbg !1432, !tbaa !960
  %188 = icmp ult i8* %185, %187, !dbg !1432
  br i1 %188, label %192, label %189, !dbg !1432, !prof !961

189:                                              ; preds = %182
  %190 = and i32 %88, 255, !dbg !1432
  %191 = tail call i32 @__overflow(%struct._IO_FILE* nonnull %183, i32 %190) #27, !dbg !1432
  br label %265, !dbg !1432

192:                                              ; preds = %182
  %193 = getelementptr inbounds i8, i8* %185, i64 1, !dbg !1432
  store i8* %193, i8** %184, align 8, !dbg !1432, !tbaa !955
  store i8 %4, i8* %185, align 1, !dbg !1432, !tbaa !937
  br label %265, !dbg !1432

194:                                              ; preds = %87
  switch i8 %4, label %237 [
    i8 117, label %195
    i8 85, label %195
  ], !dbg !1433

195:                                              ; preds = %194, %194
  call void @llvm.dbg.value(metadata i8 %4, metadata !1350, metadata !DIExpression()), !dbg !1434
  call void @llvm.dbg.value(metadata i32 0, metadata !1356, metadata !DIExpression()), !dbg !1434
  %196 = icmp eq i8 %4, 117, !dbg !1435
  %197 = select i1 %196, i32 4, i32 8, !dbg !1437
  call void @llvm.dbg.value(metadata i32 %197, metadata !1349, metadata !DIExpression()), !dbg !1357
  %198 = getelementptr inbounds i8, i8* %0, i64 2, !dbg !1438
  call void @llvm.dbg.value(metadata i8* %198, metadata !1347, metadata !DIExpression()), !dbg !1357
  %199 = tail call i16** @__ctype_b_loc() #31, !dbg !1357
  %200 = load i16*, i16** %199, align 8, !tbaa !727
  br label %201, !dbg !1439

201:                                              ; preds = %195, %213
  %202 = phi i32 [ 0, %195 ], [ %223, %213 ]
  %203 = phi i8* [ %198, %195 ], [ %225, %213 ]
  %204 = phi i32 [ %197, %195 ], [ %224, %213 ]
  call void @llvm.dbg.value(metadata i32 %202, metadata !1356, metadata !DIExpression()), !dbg !1434
  call void @llvm.dbg.value(metadata i8* %203, metadata !1347, metadata !DIExpression()), !dbg !1357
  call void @llvm.dbg.value(metadata i32 %204, metadata !1349, metadata !DIExpression()), !dbg !1357
  %205 = load i8, i8* %203, align 1, !dbg !1440, !tbaa !937
  %206 = zext i8 %205 to i64, !dbg !1440
  %207 = getelementptr inbounds i16, i16* %200, i64 %206, !dbg !1440
  %208 = load i16, i16* %207, align 2, !dbg !1440, !tbaa !1368
  %209 = and i16 %208, 4096, !dbg !1440
  %210 = icmp eq i16 %209, 0, !dbg !1440
  br i1 %210, label %211, label %213, !dbg !1444

211:                                              ; preds = %201
  %212 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.46, i64 0, i64 0), i32 5) #27, !dbg !1445
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %212) #27, !dbg !1445
  unreachable, !dbg !1445

213:                                              ; preds = %201
  %214 = shl i32 %202, 4, !dbg !1446
  %215 = sext i8 %205 to i32, !dbg !1447
  %216 = add i8 %205, -97, !dbg !1447
  %217 = icmp ult i8 %216, 6, !dbg !1447
  %218 = add i8 %205, -65, !dbg !1447
  %219 = icmp ult i8 %218, 6, !dbg !1447
  %220 = select i1 %219, i32 -55, i32 -48, !dbg !1447
  %221 = select i1 %217, i32 -87, i32 %220, !dbg !1447
  %222 = add nsw i32 %221, %215, !dbg !1447
  %223 = add i32 %222, %214, !dbg !1448
  call void @llvm.dbg.value(metadata i32 %223, metadata !1356, metadata !DIExpression()), !dbg !1434
  %224 = add nsw i32 %204, -1, !dbg !1449
  call void @llvm.dbg.value(metadata i32 %224, metadata !1349, metadata !DIExpression()), !dbg !1357
  %225 = getelementptr inbounds i8, i8* %203, i64 1, !dbg !1450
  call void @llvm.dbg.value(metadata i8* %225, metadata !1347, metadata !DIExpression()), !dbg !1357
  %226 = icmp sgt i32 %204, 1, !dbg !1451
  br i1 %226, label %201, label %227, !dbg !1439, !llvm.loop !1452

227:                                              ; preds = %213
  %228 = icmp ult i32 %223, 160, !dbg !1454
  br i1 %228, label %229, label %230, !dbg !1456

229:                                              ; preds = %227
  switch i32 %223, label %233 [
    i32 96, label %230
    i32 64, label %230
    i32 36, label %230
  ], !dbg !1456

230:                                              ; preds = %229, %229, %229, %227
  %231 = and i32 %223, -2048, !dbg !1457
  %232 = icmp eq i32 %231, 55296, !dbg !1457
  br i1 %232, label %233, label %235, !dbg !1457

233:                                              ; preds = %229, %230
  %234 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.48, i64 0, i64 0), i32 5) #27, !dbg !1458
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %234, i32 %88, i32 %197, i32 %223) #27, !dbg !1458
  unreachable, !dbg !1458

235:                                              ; preds = %230
  %236 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1459, !tbaa !727
  tail call void @print_unicode_char(%struct._IO_FILE* %236, i32 %223, i32 0) #27, !dbg !1460
  br label %265, !dbg !1461

237:                                              ; preds = %85, %194
  call void @llvm.dbg.value(metadata i32 92, metadata !945, metadata !DIExpression()) #27, !dbg !1462
  %238 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1465, !tbaa !727
  %239 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %238, i64 0, i32 5, !dbg !1465
  %240 = load i8*, i8** %239, align 8, !dbg !1465, !tbaa !955
  %241 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %238, i64 0, i32 6, !dbg !1465
  %242 = load i8*, i8** %241, align 8, !dbg !1465, !tbaa !960
  %243 = icmp ult i8* %240, %242, !dbg !1465
  br i1 %243, label %246, label %244, !dbg !1465, !prof !961

244:                                              ; preds = %237
  %245 = tail call i32 @__overflow(%struct._IO_FILE* nonnull %238, i32 92) #27, !dbg !1465
  br label %248, !dbg !1465

246:                                              ; preds = %237
  %247 = getelementptr inbounds i8, i8* %240, i64 1, !dbg !1465
  store i8* %247, i8** %239, align 8, !dbg !1465, !tbaa !955
  store i8 92, i8* %240, align 1, !dbg !1465, !tbaa !937
  br label %248, !dbg !1465

248:                                              ; preds = %244, %246
  %249 = load i8, i8* %3, align 1, !dbg !1466, !tbaa !937
  %250 = icmp eq i8 %249, 0, !dbg !1466
  br i1 %250, label %265, label %251, !dbg !1468

251:                                              ; preds = %248
  call void @llvm.dbg.value(metadata i8 %249, metadata !945, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)) #27, !dbg !1469
  %252 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1472, !tbaa !727
  %253 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %252, i64 0, i32 5, !dbg !1472
  %254 = load i8*, i8** %253, align 8, !dbg !1472, !tbaa !955
  %255 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %252, i64 0, i32 6, !dbg !1472
  %256 = load i8*, i8** %255, align 8, !dbg !1472, !tbaa !960
  %257 = icmp ult i8* %254, %256, !dbg !1472
  br i1 %257, label %261, label %258, !dbg !1472, !prof !961

258:                                              ; preds = %251
  %259 = zext i8 %249 to i32, !dbg !1473
  call void @llvm.dbg.value(metadata i8 %249, metadata !945, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)) #27, !dbg !1469
  %260 = tail call i32 @__overflow(%struct._IO_FILE* nonnull %252, i32 %259) #27, !dbg !1472
  br label %263, !dbg !1472

261:                                              ; preds = %251
  %262 = getelementptr inbounds i8, i8* %254, i64 1, !dbg !1472
  store i8* %262, i8** %253, align 8, !dbg !1472, !tbaa !955
  store i8 %249, i8* %254, align 1, !dbg !1472, !tbaa !937
  br label %263, !dbg !1472

263:                                              ; preds = %258, %261
  %264 = getelementptr inbounds i8, i8* %0, i64 2, !dbg !1474
  call void @llvm.dbg.value(metadata i8* %264, metadata !1347, metadata !DIExpression()), !dbg !1357
  br label %265, !dbg !1475

265:                                              ; preds = %192, %189, %180, %178, %169, %167, %158, %156, %147, %145, %136, %134, %125, %123, %113, %111, %102, %100, %82, %79, %47, %44, %235, %263, %248
  %266 = phi i8* [ %225, %235 ], [ %264, %263 ], [ %3, %248 ], [ %37, %44 ], [ %37, %47 ], [ %72, %79 ], [ %72, %82 ], [ %92, %100 ], [ %92, %102 ], [ %92, %111 ], [ %92, %113 ], [ %92, %123 ], [ %92, %125 ], [ %92, %134 ], [ %92, %136 ], [ %92, %145 ], [ %92, %147 ], [ %92, %156 ], [ %92, %158 ], [ %92, %167 ], [ %92, %169 ], [ %92, %178 ], [ %92, %180 ], [ %92, %189 ], [ %92, %192 ], !dbg !1357
  call void @llvm.dbg.value(metadata i8* %266, metadata !1347, metadata !DIExpression()), !dbg !1357
  %267 = ptrtoint i8* %266 to i64, !dbg !1476
  %268 = ptrtoint i8* %0 to i64, !dbg !1476
  %269 = xor i64 %268, -1, !dbg !1477
  %270 = add i64 %267, %269, !dbg !1477
  %271 = trunc i64 %270 to i32, !dbg !1478
  ret i32 %271, !dbg !1479

272:                                              ; preds = %17
  %273 = shl nsw i32 %25, 4, !dbg !1480
  %274 = zext i8 %27 to i32, !dbg !1370
  %275 = add i8 %27, -97, !dbg !1370
  %276 = icmp ult i8 %275, 6, !dbg !1370
  %277 = add i8 %27, -65, !dbg !1370
  %278 = icmp ult i8 %277, 6, !dbg !1370
  %279 = select i1 %278, i32 -55, i32 -48, !dbg !1370
  %280 = select i1 %276, i32 -87, i32 %279, !dbg !1370
  %281 = add nsw i32 %280, %274, !dbg !1370
  %282 = add nsw i32 %281, %273, !dbg !1481
  call void @llvm.dbg.value(metadata i32 %282, metadata !1348, metadata !DIExpression()), !dbg !1357
  call void @llvm.dbg.value(metadata i32 2, metadata !1349, metadata !DIExpression()), !dbg !1357
  call void @llvm.dbg.value(metadata i8* undef, metadata !1347, metadata !DIExpression()), !dbg !1357
  br label %35, !dbg !1376

283:                                              ; preds = %63
  %284 = zext i8 %67 to i32, !dbg !1384
  %285 = shl nuw nsw i32 %65, 3, !dbg !1482
  %286 = add nsw i32 %285, -48, !dbg !1483
  %287 = add nsw i32 %286, %284, !dbg !1385
  call void @llvm.dbg.value(metadata i32 %287, metadata !1348, metadata !DIExpression()), !dbg !1357
  call void @llvm.dbg.value(metadata i32 2, metadata !1349, metadata !DIExpression()), !dbg !1357
  %288 = getelementptr inbounds i8, i8* %66, i64 1, !dbg !1386
  call void @llvm.dbg.value(metadata i8* %288, metadata !1347, metadata !DIExpression()), !dbg !1357
  %289 = load i8, i8* %288, align 1, !dbg !1384, !tbaa !937
  %290 = and i8 %289, -8, !dbg !1384
  %291 = icmp eq i8 %290, 48, !dbg !1384
  br i1 %291, label %292, label %70, !dbg !1384

292:                                              ; preds = %283
  %293 = zext i8 %289 to i32, !dbg !1384
  %294 = shl nuw nsw i32 %287, 3, !dbg !1482
  %295 = add nsw i32 %294, -48, !dbg !1483
  %296 = add nsw i32 %295, %293, !dbg !1385
  call void @llvm.dbg.value(metadata i32 %296, metadata !1348, metadata !DIExpression()), !dbg !1357
  call void @llvm.dbg.value(metadata i32 3, metadata !1349, metadata !DIExpression()), !dbg !1357
  call void @llvm.dbg.value(metadata i8* undef, metadata !1347, metadata !DIExpression()), !dbg !1357
  br label %70
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #10

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @vstrtoimax(i8* %0) unnamed_addr #8 !dbg !1484 {
  %2 = alloca i8*, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !1488, metadata !DIExpression()), !dbg !1494
  %3 = bitcast i8** %2 to i8*, !dbg !1495
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #27, !dbg !1495
  %4 = load i8, i8* %0, align 1, !dbg !1496, !tbaa !937
  switch i8 %4, label %19 [
    i8 34, label %5
    i8 39, label %5
  ], !dbg !1496

5:                                                ; preds = %1, %1
  %6 = getelementptr inbounds i8, i8* %0, i64 1, !dbg !1496
  %7 = load i8, i8* %6, align 1, !dbg !1496, !tbaa !937
  %8 = icmp eq i8 %7, 0, !dbg !1496
  br i1 %8, label %19, label %9, !dbg !1495

9:                                                ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !1488, metadata !DIExpression()), !dbg !1494
  call void @llvm.dbg.value(metadata i8 %7, metadata !1491, metadata !DIExpression()), !dbg !1497
  %10 = zext i8 %7 to i64, !dbg !1498
  call void @llvm.dbg.value(metadata i64 %10, metadata !1490, metadata !DIExpression()), !dbg !1494
  %11 = getelementptr inbounds i8, i8* %0, i64 2, !dbg !1499
  call void @llvm.dbg.value(metadata i8* %11, metadata !1488, metadata !DIExpression()), !dbg !1494
  %12 = load i8, i8* %11, align 1, !dbg !1499, !tbaa !937
  %13 = icmp ne i8 %12, 0, !dbg !1499
  %14 = load i8, i8* @posixly_correct, align 1, !dbg !1499
  %15 = icmp eq i8 %14, 0, !dbg !1499
  %16 = and i1 %13, %15, !dbg !1499
  br i1 %16, label %17, label %23, !dbg !1499

17:                                               ; preds = %9
  %18 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.40, i64 0, i64 0), i32 5) #27, !dbg !1499
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %18, i8* nonnull %11) #27, !dbg !1499
  br label %23, !dbg !1499

19:                                               ; preds = %1, %5
  %20 = tail call i32* @__errno_location() #31, !dbg !1501
  store i32 0, i32* %20, align 4, !dbg !1501, !tbaa !1228
  call void @llvm.dbg.value(metadata i8** %2, metadata !1489, metadata !DIExpression(DW_OP_deref)), !dbg !1494
  %21 = call i64 @strtoimax(i8* nonnull %0, i8** nonnull %2, i32 0) #27, !dbg !1501
  call void @llvm.dbg.value(metadata i64 %21, metadata !1490, metadata !DIExpression()), !dbg !1494
  %22 = load i8*, i8** %2, align 8, !dbg !1501, !tbaa !727
  call void @llvm.dbg.value(metadata i8* %22, metadata !1489, metadata !DIExpression()), !dbg !1494
  call fastcc void @verify_numeric(i8* nonnull %0, i8* %22), !dbg !1501
  br label %23

23:                                               ; preds = %9, %17, %19
  %24 = phi i64 [ %21, %19 ], [ %10, %17 ], [ %10, %9 ], !dbg !1503
  call void @llvm.dbg.value(metadata i64 %24, metadata !1490, metadata !DIExpression()), !dbg !1494
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #27, !dbg !1495
  ret i64 %24, !dbg !1495
}

; Function Attrs: nounwind readnone willreturn
declare i32* @__errno_location() local_unnamed_addr #11

; Function Attrs: nounwind
declare !dbg !1504 i64 @strtoumax(i8*, i8**, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @verify_numeric(i8* %0, i8* readonly %1) unnamed_addr #8 !dbg !1508 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1512, metadata !DIExpression()), !dbg !1514
  call void @llvm.dbg.value(metadata i8* %1, metadata !1513, metadata !DIExpression()), !dbg !1514
  %3 = tail call i32* @__errno_location() #31, !dbg !1515
  %4 = load i32, i32* %3, align 4, !dbg !1515, !tbaa !1228
  %5 = icmp eq i32 %4, 0, !dbg !1515
  br i1 %5, label %8, label %6, !dbg !1517

6:                                                ; preds = %2
  %7 = tail call i8* @quote(i8* %0) #27, !dbg !1518
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.41, i64 0, i64 0), i8* %7) #27, !dbg !1520
  br label %16, !dbg !1521

8:                                                ; preds = %2
  %9 = load i8, i8* %1, align 1, !dbg !1522, !tbaa !937
  %10 = icmp eq i8 %9, 0, !dbg !1522
  br i1 %10, label %17, label %11, !dbg !1524

11:                                               ; preds = %8
  %12 = icmp eq i8* %0, %1, !dbg !1525
  %13 = select i1 %12, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.42, i64 0, i64 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.43, i64 0, i64 0), !dbg !1528
  %14 = tail call i8* @dcgettext(i8* null, i8* %13, i32 5) #27, !dbg !1529
  %15 = tail call i8* @quote(i8* %0) #27, !dbg !1529
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %14, i8* %15) #27, !dbg !1529
  br label %16, !dbg !1530

16:                                               ; preds = %6, %11
  store i1 true, i1* @exit_status, align 4, !dbg !1531
  br label %17, !dbg !1532

17:                                               ; preds = %16, %8
  ret void, !dbg !1532
}

; Function Attrs: inaccessiblemem_or_argmemonly nounwind willreturn
declare void @free(i8* nocapture noundef) local_unnamed_addr #12

; Function Attrs: nounwind
declare !dbg !1533 i64 @strtoimax(i8*, i8**, i32) local_unnamed_addr #2

; Function Attrs: nounwind readnone willreturn
declare i16** @__ctype_b_loc() local_unnamed_addr #11

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i8* @memchr(i8*, i32, i64) local_unnamed_addr #13

; Function Attrs: nounwind sspstrong uwtable
define dso_local x86_fp80 @cl_strtold(i8* %0, i8** noalias %1) local_unnamed_addr #8 !dbg !1536 {
  %3 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata [6 x i8]* undef, metadata !1545, metadata !DIExpression(DW_OP_LLVM_fragment, 80, 48)), !dbg !1551
  %4 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata [6 x i8]* undef, metadata !1550, metadata !DIExpression(DW_OP_LLVM_fragment, 80, 48)), !dbg !1552
  call void @llvm.dbg.value(metadata i8* %0, metadata !1542, metadata !DIExpression()), !dbg !1553
  call void @llvm.dbg.value(metadata i8** %1, metadata !1543, metadata !DIExpression()), !dbg !1553
  %5 = bitcast i8** %3 to i8*, !dbg !1554
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #27, !dbg !1554
  call void @llvm.dbg.value(metadata i8** %3, metadata !1544, metadata !DIExpression(DW_OP_deref)), !dbg !1553
  %6 = call x86_fp80 @strtold(i8* %0, i8** nonnull %3) #27, !dbg !1555
  call void @llvm.dbg.value(metadata x86_fp80 %6, metadata !1545, metadata !DIExpression()), !dbg !1553
  %7 = load i8*, i8** %3, align 8, !dbg !1556, !tbaa !727
  call void @llvm.dbg.value(metadata i8* %7, metadata !1544, metadata !DIExpression()), !dbg !1553
  %8 = load i8, i8* %7, align 1, !dbg !1557, !tbaa !937
  %9 = icmp eq i8 %8, 0, !dbg !1557
  br i1 %9, label %21, label %10, !dbg !1558

10:                                               ; preds = %2
  %11 = tail call i32* @__errno_location() #31, !dbg !1559
  %12 = load i32, i32* %11, align 4, !dbg !1559, !tbaa !1228
  call void @llvm.dbg.value(metadata i32 %12, metadata !1546, metadata !DIExpression()), !dbg !1560
  %13 = bitcast i8** %4 to i8*, !dbg !1561
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %13) #27, !dbg !1561
  call void @llvm.dbg.value(metadata i8** %4, metadata !1549, metadata !DIExpression(DW_OP_deref)), !dbg !1560
  %14 = call x86_fp80 @c_strtold(i8* %0, i8** nonnull %4) #27, !dbg !1562
  call void @llvm.dbg.value(metadata x86_fp80 %14, metadata !1550, metadata !DIExpression()), !dbg !1560
  call void @llvm.dbg.value(metadata i8* %7, metadata !1544, metadata !DIExpression()), !dbg !1553
  %15 = load i8*, i8** %4, align 8, !dbg !1563, !tbaa !727
  call void @llvm.dbg.value(metadata i8* %15, metadata !1549, metadata !DIExpression()), !dbg !1560
  %16 = icmp ult i8* %7, %15, !dbg !1565
  br i1 %16, label %18, label %17, !dbg !1566

17:                                               ; preds = %10
  store i32 %12, i32* %11, align 4, !dbg !1567, !tbaa !1228
  br label %18

18:                                               ; preds = %10, %17
  %19 = phi i8* [ %7, %17 ], [ %15, %10 ]
  %20 = phi x86_fp80 [ %6, %17 ], [ %14, %10 ], !dbg !1553
  call void @llvm.dbg.value(metadata x86_fp80 %20, metadata !1545, metadata !DIExpression()), !dbg !1553
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %13) #27, !dbg !1568
  br label %21, !dbg !1569

21:                                               ; preds = %18, %2
  %22 = phi i8* [ %19, %18 ], [ %7, %2 ]
  %23 = phi x86_fp80 [ %20, %18 ], [ %6, %2 ], !dbg !1553
  call void @llvm.dbg.value(metadata x86_fp80 %23, metadata !1545, metadata !DIExpression()), !dbg !1553
  %24 = icmp eq i8** %1, null, !dbg !1570
  br i1 %24, label %26, label %25, !dbg !1572

25:                                               ; preds = %21
  call void @llvm.dbg.value(metadata i8* %22, metadata !1544, metadata !DIExpression()), !dbg !1553
  store i8* %22, i8** %1, align 8, !dbg !1573, !tbaa !727
  br label %26, !dbg !1574

26:                                               ; preds = %25, %21
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #27, !dbg !1575
  ret x86_fp80 %23, !dbg !1576
}

; Function Attrs: nofree nounwind willreturn
declare x86_fp80 @strtold(i8* readonly, i8** nocapture) local_unnamed_addr #14

; Function Attrs: nofree norecurse nounwind sspstrong uwtable willreturn writeonly
define dso_local void @close_stdout_set_file_name(i8* %0) local_unnamed_addr #15 !dbg !1577 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1579, metadata !DIExpression()), !dbg !1580
  store i8* %0, i8** @file_name, align 8, !dbg !1581, !tbaa !727
  ret void, !dbg !1582
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable willreturn writeonly
define dso_local void @close_stdout_set_ignore_EPIPE(i1 zeroext %0) local_unnamed_addr #15 !dbg !1583 {
  %2 = zext i1 %0 to i8
  call void @llvm.dbg.value(metadata i8 %2, metadata !1587, metadata !DIExpression()), !dbg !1588
  store i8 %2, i8* @ignore_EPIPE, align 1, !dbg !1589, !tbaa !857
  ret void, !dbg !1590
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @close_stdout() #8 !dbg !1591 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1596, !tbaa !727
  %2 = tail call i32 @close_stream(%struct._IO_FILE* %1) #27, !dbg !1597
  %3 = icmp eq i32 %2, 0, !dbg !1598
  br i1 %3, label %22, label %4, !dbg !1599

4:                                                ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 1, !dbg !1600, !tbaa !857, !range !1601
  %6 = icmp eq i8 %5, 0, !dbg !1600
  br i1 %6, label %11, label %7, !dbg !1602

7:                                                ; preds = %4
  %8 = tail call i32* @__errno_location() #31, !dbg !1603
  %9 = load i32, i32* %8, align 4, !dbg !1603, !tbaa !1228
  %10 = icmp eq i32 %9, 32, !dbg !1604
  br i1 %10, label %22, label %11, !dbg !1605

11:                                               ; preds = %7, %4
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.54, i64 0, i64 0), i32 5) #27, !dbg !1606
  call void @llvm.dbg.value(metadata i8* %12, metadata !1593, metadata !DIExpression()), !dbg !1607
  %13 = load i8*, i8** @file_name, align 8, !dbg !1608, !tbaa !727
  %14 = icmp eq i8* %13, null, !dbg !1608
  %15 = tail call i32* @__errno_location() #31, !dbg !1610
  %16 = load i32, i32* %15, align 4, !dbg !1610, !tbaa !1228
  br i1 %14, label %19, label %17, !dbg !1611

17:                                               ; preds = %11
  %18 = tail call i8* @quotearg_colon(i8* nonnull %13) #27, !dbg !1612
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.55, i64 0, i64 0), i8* %18, i8* %12) #27, !dbg !1613
  br label %20, !dbg !1613

19:                                               ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.56, i64 0, i64 0), i8* %12) #27, !dbg !1614
  br label %20

20:                                               ; preds = %19, %17
  %21 = load volatile i32, i32* @exit_failure, align 4, !dbg !1615, !tbaa !1228
  tail call void @_exit(i32 %21) #29, !dbg !1616
  unreachable, !dbg !1616

22:                                               ; preds = %7, %0
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1617, !tbaa !727
  %24 = tail call i32 @close_stream(%struct._IO_FILE* %23) #27, !dbg !1619
  %25 = icmp eq i32 %24, 0, !dbg !1620
  br i1 %25, label %28, label %26, !dbg !1621

26:                                               ; preds = %22
  %27 = load volatile i32, i32* @exit_failure, align 4, !dbg !1622, !tbaa !1228
  tail call void @_exit(i32 %27) #29, !dbg !1623
  unreachable, !dbg !1623

28:                                               ; preds = %22
  ret void, !dbg !1624
}

; Function Attrs: noreturn
declare void @_exit(i32) local_unnamed_addr #16

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_program_name(i8* %0) local_unnamed_addr #8 !dbg !1625 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1627, metadata !DIExpression()), !dbg !1630
  %2 = icmp eq i8* %0, null, !dbg !1631
  br i1 %2, label %3, label %6, !dbg !1633

3:                                                ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1634, !tbaa !727
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.63, i64 0, i64 0), i64 55, i64 1, %struct._IO_FILE* %4) #32, !dbg !1636
  tail call void @abort() #29, !dbg !1637
  unreachable, !dbg !1637

6:                                                ; preds = %1
  %7 = tail call i8* @strrchr(i8* nonnull %0, i32 47) #28, !dbg !1638
  call void @llvm.dbg.value(metadata i8* %7, metadata !1628, metadata !DIExpression()), !dbg !1630
  %8 = icmp eq i8* %7, null, !dbg !1639
  %9 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !1640
  %10 = select i1 %8, i8* %0, i8* %9, !dbg !1640
  call void @llvm.dbg.value(metadata i8* %10, metadata !1629, metadata !DIExpression()), !dbg !1630
  %11 = ptrtoint i8* %10 to i64, !dbg !1641
  %12 = ptrtoint i8* %0 to i64, !dbg !1641
  %13 = sub i64 %11, %12, !dbg !1641
  %14 = icmp sgt i64 %13, 6, !dbg !1643
  br i1 %14, label %15, label %24, !dbg !1644

15:                                               ; preds = %6
  %16 = getelementptr inbounds i8, i8* %10, i64 -7, !dbg !1645
  %17 = tail call i32 @strncmp(i8* nonnull %16, i8* nonnull dereferenceable(8) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.64, i64 0, i64 0), i64 7) #28, !dbg !1646
  %18 = icmp eq i32 %17, 0, !dbg !1647
  br i1 %18, label %19, label %24, !dbg !1648

19:                                               ; preds = %15
  call void @llvm.dbg.value(metadata i8* %10, metadata !1627, metadata !DIExpression()), !dbg !1630
  %20 = tail call i32 @strncmp(i8* nonnull %10, i8* nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.65, i64 0, i64 0), i64 3) #28, !dbg !1649
  %21 = icmp eq i32 %20, 0, !dbg !1652
  br i1 %21, label %22, label %24, !dbg !1653

22:                                               ; preds = %19
  %23 = getelementptr inbounds i8, i8* %10, i64 3, !dbg !1654
  call void @llvm.dbg.value(metadata i8* %23, metadata !1627, metadata !DIExpression()), !dbg !1630
  store i8* %23, i8** @program_invocation_short_name, align 8, !dbg !1656, !tbaa !727
  br label %24, !dbg !1657

24:                                               ; preds = %19, %22, %15, %6
  %25 = phi i8* [ %23, %22 ], [ %10, %19 ], [ %0, %15 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i8* %25, metadata !1627, metadata !DIExpression()), !dbg !1630
  store i8* %25, i8** @program_name, align 8, !dbg !1658, !tbaa !727
  store i8* %25, i8** @program_invocation_name, align 8, !dbg !1659, !tbaa !727
  ret void, !dbg !1660
}

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(i8* nocapture noundef, i64 noundef, i64 noundef, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #17

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #7

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i8* @strrchr(i8*, i32) local_unnamed_addr #6

; Function Attrs: nounwind sspstrong uwtable
define dso_local %struct.quoting_options* @clone_quoting_options(%struct.quoting_options* %0) local_unnamed_addr #8 !dbg !1661 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1666, metadata !DIExpression()), !dbg !1669
  %2 = tail call i32* @__errno_location() #31, !dbg !1670
  %3 = load i32, i32* %2, align 4, !dbg !1670, !tbaa !1228
  call void @llvm.dbg.value(metadata i32 %3, metadata !1667, metadata !DIExpression()), !dbg !1669
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1671
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1671
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !1671
  %7 = tail call i8* @xmemdup(i8* %6, i64 56) #27, !dbg !1672
  %8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !1672
  call void @llvm.dbg.value(metadata %struct.quoting_options* %8, metadata !1668, metadata !DIExpression()), !dbg !1669
  store i32 %3, i32* %2, align 4, !dbg !1673, !tbaa !1228
  ret %struct.quoting_options* %8, !dbg !1674
}

; Function Attrs: norecurse nounwind readonly sspstrong uwtable willreturn
define dso_local i32 @get_quoting_style(%struct.quoting_options* readonly %0) local_unnamed_addr #18 !dbg !1675 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1681, metadata !DIExpression()), !dbg !1682
  %2 = icmp eq %struct.quoting_options* %0, null, !dbg !1683
  %3 = select i1 %2, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1683
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !1684
  %5 = load i32, i32* %4, align 8, !dbg !1684, !tbaa !1685
  ret i32 %5, !dbg !1687
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable willreturn writeonly
define dso_local void @set_quoting_style(%struct.quoting_options* %0, i32 %1) local_unnamed_addr #15 !dbg !1688 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1692, metadata !DIExpression()), !dbg !1694
  call void @llvm.dbg.value(metadata i32 %1, metadata !1693, metadata !DIExpression()), !dbg !1694
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1695
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1695
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !1696
  store i32 %1, i32* %5, align 8, !dbg !1697, !tbaa !1685
  ret void, !dbg !1698
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable willreturn
define dso_local i32 @set_char_quoting(%struct.quoting_options* %0, i8 signext %1, i32 %2) local_unnamed_addr #19 !dbg !1699 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1703, metadata !DIExpression()), !dbg !1711
  call void @llvm.dbg.value(metadata i8 %1, metadata !1704, metadata !DIExpression()), !dbg !1711
  call void @llvm.dbg.value(metadata i32 %2, metadata !1705, metadata !DIExpression()), !dbg !1711
  call void @llvm.dbg.value(metadata i8 %1, metadata !1706, metadata !DIExpression()), !dbg !1711
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1712
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1712
  %6 = lshr i8 %1, 5, !dbg !1713
  %7 = zext i8 %6 to i64, !dbg !1713
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !1714
  call void @llvm.dbg.value(metadata i32* %8, metadata !1707, metadata !DIExpression()), !dbg !1711
  %9 = and i8 %1, 31, !dbg !1715
  %10 = zext i8 %9 to i32, !dbg !1715
  call void @llvm.dbg.value(metadata i32 %10, metadata !1709, metadata !DIExpression()), !dbg !1711
  %11 = load i32, i32* %8, align 4, !dbg !1716, !tbaa !1228
  %12 = lshr i32 %11, %10, !dbg !1717
  %13 = and i32 %12, 1, !dbg !1718
  call void @llvm.dbg.value(metadata i32 %13, metadata !1710, metadata !DIExpression()), !dbg !1711
  %14 = and i32 %2, 1, !dbg !1719
  %15 = xor i32 %13, %14, !dbg !1720
  %16 = shl i32 %15, %10, !dbg !1721
  %17 = xor i32 %16, %11, !dbg !1722
  store i32 %17, i32* %8, align 4, !dbg !1722, !tbaa !1228
  ret i32 %13, !dbg !1723
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable willreturn
define dso_local i32 @set_quoting_flags(%struct.quoting_options* %0, i32 %1) local_unnamed_addr #19 !dbg !1724 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1728, metadata !DIExpression()), !dbg !1731
  call void @llvm.dbg.value(metadata i32 %1, metadata !1729, metadata !DIExpression()), !dbg !1731
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1732
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1734
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1728, metadata !DIExpression()), !dbg !1731
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !1735
  %6 = load i32, i32* %5, align 4, !dbg !1735, !tbaa !1736
  call void @llvm.dbg.value(metadata i32 %6, metadata !1730, metadata !DIExpression()), !dbg !1731
  store i32 %1, i32* %5, align 4, !dbg !1737, !tbaa !1736
  ret i32 %6, !dbg !1738
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_custom_quoting(%struct.quoting_options* %0, i8* %1, i8* %2) local_unnamed_addr #8 !dbg !1739 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1743, metadata !DIExpression()), !dbg !1746
  call void @llvm.dbg.value(metadata i8* %1, metadata !1744, metadata !DIExpression()), !dbg !1746
  call void @llvm.dbg.value(metadata i8* %2, metadata !1745, metadata !DIExpression()), !dbg !1746
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1747
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1749
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1743, metadata !DIExpression()), !dbg !1746
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !1750
  store i32 10, i32* %6, align 8, !dbg !1751, !tbaa !1685
  %7 = icmp ne i8* %1, null, !dbg !1752
  %8 = icmp ne i8* %2, null
  %9 = and i1 %7, %8, !dbg !1754
  br i1 %9, label %11, label %10, !dbg !1754

10:                                               ; preds = %3
  tail call void @abort() #29, !dbg !1755
  unreachable, !dbg !1755

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !1756
  store i8* %1, i8** %12, align 8, !dbg !1757, !tbaa !1758
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !1759
  store i8* %2, i8** %13, align 8, !dbg !1760, !tbaa !1761
  ret void, !dbg !1762
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @quotearg_buffer(i8* %0, i64 %1, i8* %2, i64 %3, %struct.quoting_options* readonly %4) local_unnamed_addr #8 !dbg !1763 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1767, metadata !DIExpression()), !dbg !1775
  call void @llvm.dbg.value(metadata i64 %1, metadata !1768, metadata !DIExpression()), !dbg !1775
  call void @llvm.dbg.value(metadata i8* %2, metadata !1769, metadata !DIExpression()), !dbg !1775
  call void @llvm.dbg.value(metadata i64 %3, metadata !1770, metadata !DIExpression()), !dbg !1775
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1771, metadata !DIExpression()), !dbg !1775
  %6 = icmp eq %struct.quoting_options* %4, null, !dbg !1776
  %7 = select i1 %6, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %4, !dbg !1776
  call void @llvm.dbg.value(metadata %struct.quoting_options* %7, metadata !1772, metadata !DIExpression()), !dbg !1775
  %8 = tail call i32* @__errno_location() #31, !dbg !1777
  %9 = load i32, i32* %8, align 4, !dbg !1777, !tbaa !1228
  call void @llvm.dbg.value(metadata i32 %9, metadata !1773, metadata !DIExpression()), !dbg !1775
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !1778
  %11 = load i32, i32* %10, align 8, !dbg !1778, !tbaa !1685
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !1779
  %13 = load i32, i32* %12, align 4, !dbg !1779, !tbaa !1736
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !1780
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !1781
  %16 = load i8*, i8** %15, align 8, !dbg !1781, !tbaa !1758
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !1782
  %18 = load i8*, i8** %17, align 8, !dbg !1782, !tbaa !1761
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %11, i32 %13, i32* nonnull %14, i8* %16, i8* %18), !dbg !1783
  call void @llvm.dbg.value(metadata i64 %19, metadata !1774, metadata !DIExpression()), !dbg !1775
  store i32 %9, i32* %8, align 4, !dbg !1784, !tbaa !1228
  ret i64 %19, !dbg !1785
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %4, i32 %5, i32* readonly %6, i8* readonly %7, i8* readonly %8) unnamed_addr #8 !dbg !1786 {
  %10 = alloca i64, align 8
  %11 = bitcast i64* %10 to %struct.__mbstate_t*
  %12 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !1792, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i64 %1, metadata !1793, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i8* %2, metadata !1794, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i64 %3, metadata !1795, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i32 %4, metadata !1796, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i32 %5, metadata !1797, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i32* %6, metadata !1798, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i8* %7, metadata !1799, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i8* %8, metadata !1800, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i64 0, metadata !1802, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i64 0, metadata !1803, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i8* null, metadata !1804, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i64 0, metadata !1805, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i8 0, metadata !1806, metadata !DIExpression()), !dbg !1862
  %13 = tail call i64 @__ctype_get_mb_cur_max() #27, !dbg !1863
  %14 = icmp eq i64 %13, 1, !dbg !1864
  call void @llvm.dbg.value(metadata i1 %14, metadata !1807, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1862
  %15 = lshr i32 %5, 1, !dbg !1865
  %16 = trunc i32 %15 to i8, !dbg !1865
  %17 = and i8 %16, 1, !dbg !1865
  call void @llvm.dbg.value(metadata i8 %17, metadata !1808, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i8 0, metadata !1809, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i8 0, metadata !1810, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i8 1, metadata !1811, metadata !DIExpression()), !dbg !1862
  %18 = getelementptr inbounds i8, i8* %2, i64 1
  %19 = and i32 %5, 4
  %20 = icmp ne i32 %19, 0
  %21 = and i32 %5, 1
  %22 = icmp eq i32 %21, 0
  %23 = bitcast i64* %10 to i8*
  %24 = bitcast i32* %12 to i8*
  %25 = icmp eq i32* %6, null
  br label %26, !dbg !1866

26:                                               ; preds = %603, %9
  %27 = phi i32 [ %4, %9 ], [ 2, %603 ]
  %28 = phi i8* [ %7, %9 ], [ %94, %603 ]
  %29 = phi i8* [ %8, %9 ], [ %95, %603 ]
  %30 = phi i64 [ 0, %9 ], [ %124, %603 ], !dbg !1867
  %31 = phi i8* [ null, %9 ], [ %97, %603 ], !dbg !1868
  %32 = phi i64 [ 0, %9 ], [ %98, %603 ], !dbg !1869
  %33 = phi i8 [ 0, %9 ], [ %99, %603 ], !dbg !1870
  %34 = phi i64 [ %3, %9 ], [ %588, %603 ]
  %35 = phi i8 [ %17, %9 ], [ %100, %603 ], !dbg !1862
  %36 = phi i8 [ 0, %9 ], [ %126, %603 ], !dbg !1871
  %37 = phi i8 [ 0, %9 ], [ %127, %603 ], !dbg !1872
  %38 = phi i8 [ 1, %9 ], [ %128, %603 ], !dbg !1873
  %39 = phi i64 [ %1, %9 ], [ %124, %603 ]
  call void @llvm.dbg.value(metadata i64 %39, metadata !1793, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i8 %38, metadata !1811, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i8 %37, metadata !1810, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i8 %36, metadata !1809, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i8 %35, metadata !1808, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i64 %34, metadata !1795, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i8 %33, metadata !1806, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i64 %32, metadata !1805, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i8* %31, metadata !1804, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i64 %30, metadata !1803, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i64 0, metadata !1802, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i8* %29, metadata !1800, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i8* %28, metadata !1799, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i32 %27, metadata !1796, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.label(metadata !1856), !dbg !1874
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
  ], !dbg !1875

40:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 %35, metadata !1808, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i32 5, metadata !1796, metadata !DIExpression()), !dbg !1862
  br label %92, !dbg !1876

41:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 %35, metadata !1808, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i32 5, metadata !1796, metadata !DIExpression()), !dbg !1862
  %42 = and i8 %35, 1, !dbg !1878
  %43 = icmp eq i8 %42, 0, !dbg !1878
  br i1 %43, label %44, label %92, !dbg !1876

44:                                               ; preds = %41
  %45 = icmp eq i64 %39, 0, !dbg !1880
  br i1 %45, label %92, label %46, !dbg !1883

46:                                               ; preds = %44
  store i8 34, i8* %0, align 1, !dbg !1880, !tbaa !937
  br label %92, !dbg !1880

47:                                               ; preds = %26, %26
  %48 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.76, i64 0, i64 0), i32 %27), !dbg !1884
  call void @llvm.dbg.value(metadata i8* %48, metadata !1799, metadata !DIExpression()), !dbg !1862
  %49 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.77, i64 0, i64 0), i32 %27), !dbg !1888
  call void @llvm.dbg.value(metadata i8* %49, metadata !1800, metadata !DIExpression()), !dbg !1862
  br label %50, !dbg !1889

50:                                               ; preds = %26, %47
  %51 = phi i8* [ %48, %47 ], [ %28, %26 ]
  %52 = phi i8* [ %49, %47 ], [ %29, %26 ]
  call void @llvm.dbg.value(metadata i8* %52, metadata !1800, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i8* %51, metadata !1799, metadata !DIExpression()), !dbg !1862
  %53 = and i8 %35, 1, !dbg !1890
  %54 = icmp eq i8 %53, 0, !dbg !1890
  br i1 %54, label %55, label %70, !dbg !1892

55:                                               ; preds = %50
  call void @llvm.dbg.value(metadata i8* %51, metadata !1804, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i64 0, metadata !1802, metadata !DIExpression()), !dbg !1862
  %56 = load i8, i8* %51, align 1, !dbg !1893, !tbaa !937
  %57 = icmp eq i8 %56, 0, !dbg !1896
  br i1 %57, label %70, label %58, !dbg !1896

58:                                               ; preds = %55, %65
  %59 = phi i8 [ %68, %65 ], [ %56, %55 ]
  %60 = phi i8* [ %67, %65 ], [ %51, %55 ]
  %61 = phi i64 [ %66, %65 ], [ 0, %55 ]
  call void @llvm.dbg.value(metadata i8* %60, metadata !1804, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i64 %61, metadata !1802, metadata !DIExpression()), !dbg !1862
  %62 = icmp ult i64 %61, %39, !dbg !1897
  br i1 %62, label %63, label %65, !dbg !1900

63:                                               ; preds = %58
  %64 = getelementptr inbounds i8, i8* %0, i64 %61, !dbg !1897
  store i8 %59, i8* %64, align 1, !dbg !1897, !tbaa !937
  br label %65, !dbg !1897

65:                                               ; preds = %63, %58
  %66 = add i64 %61, 1, !dbg !1900
  call void @llvm.dbg.value(metadata i64 %66, metadata !1802, metadata !DIExpression()), !dbg !1862
  %67 = getelementptr inbounds i8, i8* %60, i64 1, !dbg !1901
  call void @llvm.dbg.value(metadata i8* %67, metadata !1804, metadata !DIExpression()), !dbg !1862
  %68 = load i8, i8* %67, align 1, !dbg !1893, !tbaa !937
  %69 = icmp eq i8 %68, 0, !dbg !1896
  br i1 %69, label %70, label %58, !dbg !1896, !llvm.loop !1902

70:                                               ; preds = %65, %55, %50
  %71 = phi i64 [ 0, %50 ], [ 0, %55 ], [ %66, %65 ], !dbg !1904
  call void @llvm.dbg.value(metadata i64 %71, metadata !1802, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i8 1, metadata !1806, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i8* %52, metadata !1804, metadata !DIExpression()), !dbg !1862
  %72 = call i64 @strlen(i8* nonnull dereferenceable(1) %52) #28, !dbg !1905
  call void @llvm.dbg.value(metadata i64 %72, metadata !1805, metadata !DIExpression()), !dbg !1862
  br label %92, !dbg !1906

73:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 1, metadata !1806, metadata !DIExpression()), !dbg !1862
  br label %74, !dbg !1907

74:                                               ; preds = %26, %73
  %75 = phi i8 [ %33, %26 ], [ 1, %73 ], !dbg !1862
  call void @llvm.dbg.value(metadata i8 %75, metadata !1806, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i8 1, metadata !1808, metadata !DIExpression()), !dbg !1862
  br label %76, !dbg !1908

76:                                               ; preds = %26, %74
  %77 = phi i8 [ %33, %26 ], [ %75, %74 ], !dbg !1870
  %78 = phi i8 [ %35, %26 ], [ 1, %74 ], !dbg !1862
  call void @llvm.dbg.value(metadata i8 %78, metadata !1808, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i8 %77, metadata !1806, metadata !DIExpression()), !dbg !1862
  %79 = and i8 %78, 1, !dbg !1909
  %80 = icmp eq i8 %79, 0, !dbg !1909
  %81 = select i1 %80, i8 1, i8 %77, !dbg !1911
  br label %82, !dbg !1911

82:                                               ; preds = %76, %26
  %83 = phi i8 [ %33, %26 ], [ %81, %76 ], !dbg !1862
  %84 = phi i8 [ %35, %26 ], [ %78, %76 ], !dbg !1865
  call void @llvm.dbg.value(metadata i8 %84, metadata !1808, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i8 %83, metadata !1806, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i32 2, metadata !1796, metadata !DIExpression()), !dbg !1862
  %85 = and i8 %84, 1, !dbg !1912
  %86 = icmp eq i8 %85, 0, !dbg !1912
  br i1 %86, label %87, label %92, !dbg !1914

87:                                               ; preds = %82
  %88 = icmp eq i64 %39, 0, !dbg !1915
  br i1 %88, label %92, label %89, !dbg !1918

89:                                               ; preds = %87
  store i8 39, i8* %0, align 1, !dbg !1915, !tbaa !937
  br label %92, !dbg !1915

90:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 0, metadata !1808, metadata !DIExpression()), !dbg !1862
  br label %92, !dbg !1919

91:                                               ; preds = %26
  call void @abort() #29, !dbg !1920
  unreachable, !dbg !1920

92:                                               ; preds = %40, %82, %89, %87, %26, %41, %46, %44, %90, %70
  %93 = phi i32 [ 0, %90 ], [ %27, %70 ], [ 5, %44 ], [ 5, %46 ], [ 5, %41 ], [ %27, %26 ], [ 2, %87 ], [ 2, %89 ], [ 2, %82 ], [ 5, %40 ]
  %94 = phi i8* [ %28, %90 ], [ %51, %70 ], [ %28, %44 ], [ %28, %46 ], [ %28, %41 ], [ %28, %26 ], [ %28, %87 ], [ %28, %89 ], [ %28, %82 ], [ %28, %40 ]
  %95 = phi i8* [ %29, %90 ], [ %52, %70 ], [ %29, %44 ], [ %29, %46 ], [ %29, %41 ], [ %29, %26 ], [ %29, %87 ], [ %29, %89 ], [ %29, %82 ], [ %29, %40 ]
  %96 = phi i64 [ 0, %90 ], [ %71, %70 ], [ 1, %44 ], [ 1, %46 ], [ 0, %41 ], [ 0, %26 ], [ 1, %87 ], [ 1, %89 ], [ 0, %82 ], [ 0, %40 ], !dbg !1904
  %97 = phi i8* [ %31, %90 ], [ %52, %70 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.78, i64 0, i64 0), %44 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.78, i64 0, i64 0), %46 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.78, i64 0, i64 0), %41 ], [ %31, %26 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.77, i64 0, i64 0), %87 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.77, i64 0, i64 0), %89 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.77, i64 0, i64 0), %82 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.78, i64 0, i64 0), %40 ], !dbg !1862
  %98 = phi i64 [ %32, %90 ], [ %72, %70 ], [ 1, %44 ], [ 1, %46 ], [ 1, %41 ], [ %32, %26 ], [ 1, %87 ], [ 1, %89 ], [ 1, %82 ], [ 1, %40 ], !dbg !1862
  %99 = phi i8 [ %33, %90 ], [ 1, %70 ], [ 1, %44 ], [ 1, %46 ], [ 1, %41 ], [ 1, %26 ], [ %83, %87 ], [ %83, %89 ], [ %83, %82 ], [ 1, %40 ], !dbg !1862
  %100 = phi i8 [ 0, %90 ], [ %35, %70 ], [ %35, %44 ], [ %35, %46 ], [ %35, %41 ], [ 0, %26 ], [ %84, %87 ], [ %84, %89 ], [ %84, %82 ], [ 1, %40 ], !dbg !1862
  call void @llvm.dbg.value(metadata i8 %100, metadata !1808, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i8 %99, metadata !1806, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i64 %98, metadata !1805, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i8* %97, metadata !1804, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i64 %96, metadata !1802, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i8* %95, metadata !1800, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i8* %94, metadata !1799, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i32 %93, metadata !1796, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i64 0, metadata !1801, metadata !DIExpression()), !dbg !1862
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
  br label %121, !dbg !1921

121:                                              ; preds = %577, %92
  %122 = phi i64 [ 0, %92 ], [ %586, %577 ], !dbg !1922
  %123 = phi i64 [ %96, %92 ], [ %579, %577 ], !dbg !1904
  %124 = phi i64 [ %30, %92 ], [ %580, %577 ], !dbg !1867
  %125 = phi i64 [ %34, %92 ], [ %581, %577 ]
  %126 = phi i8 [ %36, %92 ], [ %582, %577 ], !dbg !1871
  %127 = phi i8 [ %37, %92 ], [ %583, %577 ], !dbg !1872
  %128 = phi i8 [ %38, %92 ], [ %584, %577 ], !dbg !1873
  %129 = phi i64 [ %39, %92 ], [ %585, %577 ]
  call void @llvm.dbg.value(metadata i64 %129, metadata !1793, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i8 %128, metadata !1811, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i8 %127, metadata !1810, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i8 %126, metadata !1809, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i64 %125, metadata !1795, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i64 %124, metadata !1803, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i64 %123, metadata !1802, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i64 %122, metadata !1801, metadata !DIExpression()), !dbg !1862
  %130 = icmp eq i64 %125, -1, !dbg !1923
  br i1 %130, label %131, label %135, !dbg !1924

131:                                              ; preds = %121
  %132 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !1925
  %133 = load i8, i8* %132, align 1, !dbg !1925, !tbaa !937
  %134 = icmp eq i8 %133, 0, !dbg !1926
  br i1 %134, label %587, label %137, !dbg !1927

135:                                              ; preds = %121
  %136 = icmp eq i64 %122, %125, !dbg !1928
  br i1 %136, label %587, label %137, !dbg !1927

137:                                              ; preds = %131, %135
  call void @llvm.dbg.value(metadata i8 0, metadata !1817, metadata !DIExpression()), !dbg !1929
  call void @llvm.dbg.value(metadata i8 0, metadata !1818, metadata !DIExpression()), !dbg !1929
  call void @llvm.dbg.value(metadata i8 0, metadata !1819, metadata !DIExpression()), !dbg !1929
  br i1 %106, label %138, label %153, !dbg !1930

138:                                              ; preds = %137
  %139 = add i64 %122, %98, !dbg !1932
  %140 = and i1 %107, %130, !dbg !1933
  br i1 %140, label %141, label %143, !dbg !1933

141:                                              ; preds = %138
  %142 = call i64 @strlen(i8* nonnull dereferenceable(1) %2) #28, !dbg !1934
  call void @llvm.dbg.value(metadata i64 %142, metadata !1795, metadata !DIExpression()), !dbg !1862
  br label %143, !dbg !1935

143:                                              ; preds = %138, %141
  %144 = phi i64 [ %142, %141 ], [ %125, %138 ], !dbg !1935
  call void @llvm.dbg.value(metadata i64 %144, metadata !1795, metadata !DIExpression()), !dbg !1862
  %145 = icmp ugt i64 %139, %144, !dbg !1936
  br i1 %145, label %153, label %146, !dbg !1937

146:                                              ; preds = %143
  %147 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !1938
  %148 = call i32 @bcmp(i8* %147, i8* %97, i64 %98), !dbg !1939
  %149 = icmp ne i32 %148, 0, !dbg !1940
  %150 = or i1 %149, %109, !dbg !1941
  %151 = xor i1 %149, true, !dbg !1941
  %152 = zext i1 %151 to i8, !dbg !1941
  br i1 %150, label %153, label %646, !dbg !1941

153:                                              ; preds = %146, %143, %137
  %154 = phi i64 [ %144, %146 ], [ %144, %143 ], [ %125, %137 ]
  %155 = phi i1 [ %149, %146 ], [ true, %143 ], [ true, %137 ], !dbg !1929
  %156 = phi i8 [ %152, %146 ], [ 0, %143 ], [ 0, %137 ], !dbg !1929
  call void @llvm.dbg.value(metadata i8 %156, metadata !1817, metadata !DIExpression()), !dbg !1929
  call void @llvm.dbg.value(metadata i64 %154, metadata !1795, metadata !DIExpression()), !dbg !1862
  %157 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !1942
  %158 = load i8, i8* %157, align 1, !dbg !1942, !tbaa !937
  call void @llvm.dbg.value(metadata i8 %158, metadata !1812, metadata !DIExpression()), !dbg !1929
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
  ], !dbg !1943

159:                                              ; preds = %153
  br i1 %102, label %160, label %208, !dbg !1944

160:                                              ; preds = %159
  br i1 %109, label %161, label %635, !dbg !1945

161:                                              ; preds = %160
  call void @llvm.dbg.value(metadata i8 1, metadata !1818, metadata !DIExpression()), !dbg !1929
  %162 = and i8 %126, 1, !dbg !1949
  %163 = icmp eq i8 %162, 0, !dbg !1949
  %164 = and i1 %110, %163, !dbg !1949
  br i1 %164, label %165, label %181, !dbg !1949

165:                                              ; preds = %161
  %166 = icmp ult i64 %123, %129, !dbg !1951
  br i1 %166, label %167, label %169, !dbg !1955

167:                                              ; preds = %165
  %168 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !1951
  store i8 39, i8* %168, align 1, !dbg !1951, !tbaa !937
  br label %169, !dbg !1951

169:                                              ; preds = %167, %165
  %170 = add i64 %123, 1, !dbg !1955
  call void @llvm.dbg.value(metadata i64 %170, metadata !1802, metadata !DIExpression()), !dbg !1862
  %171 = icmp ult i64 %170, %129, !dbg !1956
  br i1 %171, label %172, label %174, !dbg !1959

172:                                              ; preds = %169
  %173 = getelementptr inbounds i8, i8* %0, i64 %170, !dbg !1956
  store i8 36, i8* %173, align 1, !dbg !1956, !tbaa !937
  br label %174, !dbg !1956

174:                                              ; preds = %172, %169
  %175 = add i64 %123, 2, !dbg !1959
  call void @llvm.dbg.value(metadata i64 %175, metadata !1802, metadata !DIExpression()), !dbg !1862
  %176 = icmp ult i64 %175, %129, !dbg !1960
  br i1 %176, label %177, label %179, !dbg !1963

177:                                              ; preds = %174
  %178 = getelementptr inbounds i8, i8* %0, i64 %175, !dbg !1960
  store i8 39, i8* %178, align 1, !dbg !1960, !tbaa !937
  br label %179, !dbg !1960

179:                                              ; preds = %177, %174
  %180 = add i64 %123, 3, !dbg !1963
  call void @llvm.dbg.value(metadata i64 %180, metadata !1802, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i8 1, metadata !1809, metadata !DIExpression()), !dbg !1862
  br label %181, !dbg !1964

181:                                              ; preds = %161, %179
  %182 = phi i64 [ %180, %179 ], [ %123, %161 ], !dbg !1862
  %183 = phi i8 [ 1, %179 ], [ %126, %161 ], !dbg !1862
  call void @llvm.dbg.value(metadata i8 %183, metadata !1809, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i64 %182, metadata !1802, metadata !DIExpression()), !dbg !1862
  %184 = icmp ult i64 %182, %129, !dbg !1965
  br i1 %184, label %185, label %187, !dbg !1968

185:                                              ; preds = %181
  %186 = getelementptr inbounds i8, i8* %0, i64 %182, !dbg !1965
  store i8 92, i8* %186, align 1, !dbg !1965, !tbaa !937
  br label %187, !dbg !1965

187:                                              ; preds = %185, %181
  %188 = add i64 %182, 1, !dbg !1968
  call void @llvm.dbg.value(metadata i64 %188, metadata !1802, metadata !DIExpression()), !dbg !1862
  %189 = add i64 %122, 1
  %190 = icmp ult i64 %189, %154
  %191 = and i1 %103, %190, !dbg !1969
  br i1 %191, label %192, label %473, !dbg !1969

192:                                              ; preds = %187
  %193 = getelementptr inbounds i8, i8* %2, i64 %189, !dbg !1971
  %194 = load i8, i8* %193, align 1, !dbg !1971, !tbaa !937
  %195 = add i8 %194, -48, !dbg !1972
  %196 = icmp ult i8 %195, 10, !dbg !1972
  br i1 %196, label %197, label %473, !dbg !1972

197:                                              ; preds = %192
  %198 = icmp ult i64 %188, %129, !dbg !1973
  br i1 %198, label %199, label %201, !dbg !1977

199:                                              ; preds = %197
  %200 = getelementptr inbounds i8, i8* %0, i64 %188, !dbg !1973
  store i8 48, i8* %200, align 1, !dbg !1973, !tbaa !937
  br label %201, !dbg !1973

201:                                              ; preds = %199, %197
  %202 = add i64 %182, 2, !dbg !1977
  call void @llvm.dbg.value(metadata i64 %202, metadata !1802, metadata !DIExpression()), !dbg !1862
  %203 = icmp ult i64 %202, %129, !dbg !1978
  br i1 %203, label %204, label %206, !dbg !1981

204:                                              ; preds = %201
  %205 = getelementptr inbounds i8, i8* %0, i64 %202, !dbg !1978
  store i8 48, i8* %205, align 1, !dbg !1978, !tbaa !937
  br label %206, !dbg !1978

206:                                              ; preds = %204, %201
  %207 = add i64 %182, 3, !dbg !1981
  call void @llvm.dbg.value(metadata i64 %207, metadata !1802, metadata !DIExpression()), !dbg !1862
  br label %473, !dbg !1982

208:                                              ; preds = %159
  br i1 %22, label %473, label %577, !dbg !1983

209:                                              ; preds = %153
  switch i32 %93, label %473 [
    i32 2, label %210
    i32 5, label %211
  ], !dbg !1984

210:                                              ; preds = %209
  br i1 %109, label %473, label %631, !dbg !1985

211:                                              ; preds = %209
  %212 = add i64 %122, 2
  %213 = icmp ult i64 %212, %154
  %214 = and i1 %20, %213, !dbg !1987
  br i1 %214, label %215, label %473, !dbg !1987

215:                                              ; preds = %211
  %216 = add i64 %122, 1, !dbg !1989
  %217 = getelementptr inbounds i8, i8* %2, i64 %216, !dbg !1990
  %218 = load i8, i8* %217, align 1, !dbg !1990, !tbaa !937
  %219 = icmp eq i8 %218, 63, !dbg !1991
  br i1 %219, label %220, label %473, !dbg !1992

220:                                              ; preds = %215
  %221 = getelementptr inbounds i8, i8* %2, i64 %212, !dbg !1993
  %222 = load i8, i8* %221, align 1, !dbg !1993, !tbaa !937
  %223 = sext i8 %222 to i32, !dbg !1993
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
  ], !dbg !1994

224:                                              ; preds = %220, %220, %220, %220, %220, %220, %220, %220, %220
  br i1 %109, label %225, label %646, !dbg !1995

225:                                              ; preds = %224
  call void @llvm.dbg.value(metadata i8 %222, metadata !1812, metadata !DIExpression()), !dbg !1929
  call void @llvm.dbg.value(metadata i64 undef, metadata !1801, metadata !DIExpression()), !dbg !1862
  %226 = icmp ult i64 %123, %129, !dbg !1997
  br i1 %226, label %227, label %229, !dbg !2000

227:                                              ; preds = %225
  %228 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !1997
  store i8 63, i8* %228, align 1, !dbg !1997, !tbaa !937
  br label %229, !dbg !1997

229:                                              ; preds = %227, %225
  %230 = add i64 %123, 1, !dbg !2000
  call void @llvm.dbg.value(metadata i64 %230, metadata !1802, metadata !DIExpression()), !dbg !1862
  %231 = icmp ult i64 %230, %129, !dbg !2001
  br i1 %231, label %232, label %234, !dbg !2004

232:                                              ; preds = %229
  %233 = getelementptr inbounds i8, i8* %0, i64 %230, !dbg !2001
  store i8 34, i8* %233, align 1, !dbg !2001, !tbaa !937
  br label %234, !dbg !2001

234:                                              ; preds = %232, %229
  %235 = add i64 %123, 2, !dbg !2004
  call void @llvm.dbg.value(metadata i64 %235, metadata !1802, metadata !DIExpression()), !dbg !1862
  %236 = icmp ult i64 %235, %129, !dbg !2005
  br i1 %236, label %237, label %239, !dbg !2008

237:                                              ; preds = %234
  %238 = getelementptr inbounds i8, i8* %0, i64 %235, !dbg !2005
  store i8 34, i8* %238, align 1, !dbg !2005, !tbaa !937
  br label %239, !dbg !2005

239:                                              ; preds = %237, %234
  %240 = add i64 %123, 3, !dbg !2008
  call void @llvm.dbg.value(metadata i64 %240, metadata !1802, metadata !DIExpression()), !dbg !1862
  %241 = icmp ult i64 %240, %129, !dbg !2009
  br i1 %241, label %242, label %244, !dbg !2012

242:                                              ; preds = %239
  %243 = getelementptr inbounds i8, i8* %0, i64 %240, !dbg !2009
  store i8 63, i8* %243, align 1, !dbg !2009, !tbaa !937
  br label %244, !dbg !2009

244:                                              ; preds = %242, %239
  %245 = add i64 %123, 4, !dbg !2012
  call void @llvm.dbg.value(metadata i64 %245, metadata !1802, metadata !DIExpression()), !dbg !1862
  br label %473, !dbg !2013

246:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 98, metadata !1816, metadata !DIExpression()), !dbg !1929
  br label %256, !dbg !2014

247:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 102, metadata !1816, metadata !DIExpression()), !dbg !1929
  br label %256, !dbg !2015

248:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 114, metadata !1816, metadata !DIExpression()), !dbg !1929
  br label %254, !dbg !2016

249:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 116, metadata !1816, metadata !DIExpression()), !dbg !1929
  br label %254, !dbg !2017

250:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 118, metadata !1816, metadata !DIExpression()), !dbg !1929
  br label %256, !dbg !2018

251:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 %158, metadata !1816, metadata !DIExpression()), !dbg !1929
  br i1 %110, label %252, label %253, !dbg !2019

252:                                              ; preds = %251
  br i1 %109, label %533, label %631, !dbg !2020

253:                                              ; preds = %251
  br i1 %120, label %533, label %254, !dbg !2023

254:                                              ; preds = %253, %153, %249, %248
  %255 = phi i8 [ 92, %253 ], [ 116, %249 ], [ 114, %248 ], [ 110, %153 ], !dbg !2025
  call void @llvm.dbg.value(metadata i8 %255, metadata !1816, metadata !DIExpression()), !dbg !1929
  call void @llvm.dbg.label(metadata !1857), !dbg !2026
  br i1 %111, label %256, label %631, !dbg !2027

256:                                              ; preds = %153, %254, %250, %247, %246
  %257 = phi i8 [ %255, %254 ], [ 118, %250 ], [ 102, %247 ], [ 98, %246 ], [ 97, %153 ], !dbg !2025
  call void @llvm.dbg.value(metadata i8 %257, metadata !1816, metadata !DIExpression()), !dbg !1929
  call void @llvm.dbg.label(metadata !1858), !dbg !2029
  br i1 %102, label %495, label %473, !dbg !2030

258:                                              ; preds = %153, %153
  switch i64 %154, label %473 [
    i64 -1, label %259
    i64 1, label %262
  ], !dbg !2031

259:                                              ; preds = %258
  %260 = load i8, i8* %18, align 1, !dbg !2032, !tbaa !937
  %261 = icmp eq i8 %260, 0, !dbg !2034
  br i1 %261, label %262, label %473, !dbg !2035

262:                                              ; preds = %258, %259, %153, %153
  %263 = icmp eq i64 %122, 0, !dbg !2036
  br i1 %263, label %264, label %473, !dbg !2038

264:                                              ; preds = %262, %153
  call void @llvm.dbg.value(metadata i8 1, metadata !1819, metadata !DIExpression()), !dbg !1929
  br label %265, !dbg !2039

265:                                              ; preds = %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %264
  %266 = phi i8 [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 1, %264 ], !dbg !1929
  call void @llvm.dbg.value(metadata i8 %266, metadata !1819, metadata !DIExpression()), !dbg !1929
  br i1 %111, label %473, label %631, !dbg !2040

267:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 1, metadata !1810, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i8 1, metadata !1819, metadata !DIExpression()), !dbg !1929
  br i1 %110, label %268, label %473, !dbg !2042

268:                                              ; preds = %267
  br i1 %109, label %269, label %631, !dbg !2043

269:                                              ; preds = %268
  %270 = icmp eq i64 %129, 0, !dbg !2046
  %271 = icmp ne i64 %124, 0
  %272 = or i1 %271, %270, !dbg !2048
  %273 = select i1 %272, i64 %124, i64 %129, !dbg !2048
  %274 = select i1 %272, i64 %129, i64 0, !dbg !2048
  call void @llvm.dbg.value(metadata i64 %274, metadata !1793, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i64 %273, metadata !1803, metadata !DIExpression()), !dbg !1862
  %275 = icmp ult i64 %123, %274, !dbg !2049
  br i1 %275, label %276, label %278, !dbg !2052

276:                                              ; preds = %269
  %277 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !2049
  store i8 39, i8* %277, align 1, !dbg !2049, !tbaa !937
  br label %278, !dbg !2049

278:                                              ; preds = %276, %269
  %279 = add i64 %123, 1, !dbg !2052
  call void @llvm.dbg.value(metadata i64 %279, metadata !1802, metadata !DIExpression()), !dbg !1862
  %280 = icmp ult i64 %279, %274, !dbg !2053
  br i1 %280, label %281, label %283, !dbg !2056

281:                                              ; preds = %278
  %282 = getelementptr inbounds i8, i8* %0, i64 %279, !dbg !2053
  store i8 92, i8* %282, align 1, !dbg !2053, !tbaa !937
  br label %283, !dbg !2053

283:                                              ; preds = %281, %278
  %284 = add i64 %123, 2, !dbg !2056
  call void @llvm.dbg.value(metadata i64 %284, metadata !1802, metadata !DIExpression()), !dbg !1862
  %285 = icmp ult i64 %284, %274, !dbg !2057
  br i1 %285, label %286, label %288, !dbg !2060

286:                                              ; preds = %283
  %287 = getelementptr inbounds i8, i8* %0, i64 %284, !dbg !2057
  store i8 39, i8* %287, align 1, !dbg !2057, !tbaa !937
  br label %288, !dbg !2057

288:                                              ; preds = %286, %283
  %289 = add i64 %123, 3, !dbg !2060
  call void @llvm.dbg.value(metadata i64 %289, metadata !1802, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i8 0, metadata !1809, metadata !DIExpression()), !dbg !1862
  br label %473, !dbg !2061

290:                                              ; preds = %153
  br i1 %14, label %291, label %301, !dbg !2062

291:                                              ; preds = %290
  call void @llvm.dbg.value(metadata i64 1, metadata !1820, metadata !DIExpression()), !dbg !2063
  %292 = tail call i16** @__ctype_b_loc() #31, !dbg !2064
  %293 = load i16*, i16** %292, align 8, !dbg !2064, !tbaa !727
  %294 = zext i8 %158 to i64, !dbg !2064
  %295 = getelementptr inbounds i16, i16* %293, i64 %294, !dbg !2064
  %296 = load i16, i16* %295, align 2, !dbg !2064, !tbaa !1368
  %297 = lshr i16 %296, 14, !dbg !2066
  %298 = trunc i16 %297 to i8, !dbg !2066
  %299 = and i8 %298, 1, !dbg !2066
  call void @llvm.dbg.value(metadata i8 %354, metadata !1823, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i64 %355, metadata !1820, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i64 %306, metadata !1795, metadata !DIExpression()), !dbg !1862
  %300 = icmp eq i8 %299, 0, !dbg !2067
  call void @llvm.dbg.value(metadata i1 %357, metadata !1819, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1929
  br label %359, !dbg !2068

301:                                              ; preds = %290
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %23) #27, !dbg !2069
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %11, metadata !1824, metadata !DIExpression()), !dbg !2070
  call void @llvm.dbg.value(metadata i8* %23, metadata !2071, metadata !DIExpression()) #27, !dbg !2076
  call void @llvm.dbg.value(metadata i32 0, metadata !2074, metadata !DIExpression()) #27, !dbg !2076
  call void @llvm.dbg.value(metadata i64 8, metadata !2075, metadata !DIExpression()) #27, !dbg !2076
  store i64 0, i64* %10, align 8, !dbg !2078
  call void @llvm.dbg.value(metadata i64 0, metadata !1820, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i8 1, metadata !1823, metadata !DIExpression()), !dbg !2063
  %302 = icmp eq i64 %154, -1, !dbg !2079
  br i1 %302, label %303, label %305, !dbg !2081

303:                                              ; preds = %301
  %304 = call i64 @strlen(i8* nonnull dereferenceable(1) %2) #28, !dbg !2082
  call void @llvm.dbg.value(metadata i64 %304, metadata !1795, metadata !DIExpression()), !dbg !1862
  br label %305, !dbg !2083

305:                                              ; preds = %303, %301
  %306 = phi i64 [ %304, %303 ], [ %154, %301 ], !dbg !1929
  call void @llvm.dbg.value(metadata i64 %306, metadata !1795, metadata !DIExpression()), !dbg !1862
  br label %307, !dbg !2084

307:                                              ; preds = %344, %305
  %308 = phi i64 [ 0, %305 ], [ %349, %344 ], !dbg !2085
  %309 = phi i8 [ 1, %305 ], [ %348, %344 ], !dbg !2086
  call void @llvm.dbg.value(metadata i8 %309, metadata !1823, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i64 %308, metadata !1820, metadata !DIExpression()), !dbg !2063
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %24) #27, !dbg !2087
  %310 = add i64 %308, %122, !dbg !2088
  %311 = getelementptr inbounds i8, i8* %2, i64 %310, !dbg !2089
  %312 = sub i64 %306, %310, !dbg !2090
  call void @llvm.dbg.value(metadata i32* %12, metadata !1842, metadata !DIExpression(DW_OP_deref)), !dbg !2091
  %313 = call i64 @rpl_mbrtowc(i32* nonnull %12, i8* %311, i64 %312, %struct.__mbstate_t* nonnull %11) #27, !dbg !2092
  call void @llvm.dbg.value(metadata i64 %313, metadata !1845, metadata !DIExpression()), !dbg !2091
  switch i64 %313, label %328 [
    i64 0, label %340
    i64 -1, label %341
    i64 -2, label %314
  ], !dbg !2093

314:                                              ; preds = %307
  call void @llvm.dbg.value(metadata i64 %308, metadata !1820, metadata !DIExpression()), !dbg !2063
  %315 = icmp ugt i64 %306, %310, !dbg !2094
  br i1 %315, label %316, label %341, !dbg !2096

316:                                              ; preds = %314
  %317 = sub i64 %306, %122, !dbg !2097
  br label %318, !dbg !2097

318:                                              ; preds = %316, %324
  %319 = phi i64 [ %326, %324 ], [ %310, %316 ]
  %320 = phi i64 [ %325, %324 ], [ %308, %316 ]
  call void @llvm.dbg.value(metadata i64 %320, metadata !1820, metadata !DIExpression()), !dbg !2063
  %321 = getelementptr inbounds i8, i8* %2, i64 %319, !dbg !2098
  %322 = load i8, i8* %321, align 1, !dbg !2098, !tbaa !937
  %323 = icmp eq i8 %322, 0, !dbg !2096
  br i1 %323, label %341, label %324, !dbg !2097

324:                                              ; preds = %318
  %325 = add i64 %320, 1, !dbg !2099
  call void @llvm.dbg.value(metadata i64 %325, metadata !1820, metadata !DIExpression()), !dbg !2063
  %326 = add i64 %325, %122, !dbg !2100
  %327 = icmp ult i64 %326, %306, !dbg !2094
  br i1 %327, label %318, label %341, !dbg !2096, !llvm.loop !2101

328:                                              ; preds = %307
  %329 = icmp ugt i64 %313, 1
  %330 = and i1 %113, %329, !dbg !2102
  call void @llvm.dbg.value(metadata i64 1, metadata !1846, metadata !DIExpression()), !dbg !2103
  br i1 %330, label %331, label %344, !dbg !2102

331:                                              ; preds = %328, %337
  %332 = phi i64 [ %338, %337 ], [ 1, %328 ]
  call void @llvm.dbg.value(metadata i64 %332, metadata !1846, metadata !DIExpression()), !dbg !2103
  %333 = add i64 %332, %310, !dbg !2104
  %334 = getelementptr inbounds i8, i8* %2, i64 %333, !dbg !2107
  %335 = load i8, i8* %334, align 1, !dbg !2107, !tbaa !937
  %336 = sext i8 %335 to i32, !dbg !2107
  switch i32 %336, label %337 [
    i32 91, label %352
    i32 92, label %352
    i32 94, label %352
    i32 96, label %352
    i32 124, label %352
  ], !dbg !2108

337:                                              ; preds = %331
  %338 = add nuw i64 %332, 1, !dbg !2109
  call void @llvm.dbg.value(metadata i64 %338, metadata !1846, metadata !DIExpression()), !dbg !2103
  %339 = icmp eq i64 %338, %313, !dbg !2110
  br i1 %339, label %344, label %331, !dbg !2111, !llvm.loop !2112

340:                                              ; preds = %307
  br label %341, !dbg !2114

341:                                              ; preds = %318, %324, %307, %340, %314
  %342 = phi i64 [ %308, %314 ], [ %308, %340 ], [ %308, %307 ], [ %320, %318 ], [ %317, %324 ]
  %343 = phi i8 [ 0, %314 ], [ %309, %340 ], [ 0, %307 ], [ 0, %324 ], [ 0, %318 ]
  call void @llvm.dbg.value(metadata i8 undef, metadata !1823, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i64 undef, metadata !1820, metadata !DIExpression()), !dbg !2063
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #27, !dbg !2114
  br label %353

344:                                              ; preds = %337, %328
  %345 = load i32, i32* %12, align 4, !dbg !2115, !tbaa !1228
  call void @llvm.dbg.value(metadata i32 %345, metadata !1842, metadata !DIExpression()), !dbg !2091
  %346 = call i32 @iswprint(i32 %345) #27, !dbg !2117
  %347 = icmp eq i32 %346, 0, !dbg !2117
  %348 = select i1 %347, i8 0, i8 %309, !dbg !2118
  call void @llvm.dbg.value(metadata i8 %348, metadata !1823, metadata !DIExpression()), !dbg !2063
  %349 = add i64 %313, %308, !dbg !2119
  call void @llvm.dbg.value(metadata i64 %349, metadata !1820, metadata !DIExpression()), !dbg !2063
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #27, !dbg !2114
  %350 = call i32 @mbsinit(%struct.__mbstate_t* nonnull %11) #28, !dbg !2120
  %351 = icmp eq i32 %350, 0, !dbg !2121
  br i1 %351, label %307, label %353, !dbg !2122, !llvm.loop !2123

352:                                              ; preds = %331, %331, %331, %331, %331
  call void @llvm.dbg.value(metadata i8 undef, metadata !1823, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i64 undef, metadata !1820, metadata !DIExpression()), !dbg !2063
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #27, !dbg !2114
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %23) #27, !dbg !2125
  br label %631

353:                                              ; preds = %344, %341
  %354 = phi i8 [ %343, %341 ], [ %348, %344 ]
  %355 = phi i64 [ %342, %341 ], [ %349, %344 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %23) #27, !dbg !2125
  call void @llvm.dbg.value(metadata i8 %354, metadata !1823, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i64 %355, metadata !1820, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i64 %306, metadata !1795, metadata !DIExpression()), !dbg !1862
  %356 = and i8 %354, 1, !dbg !2067
  %357 = icmp eq i8 %356, 0, !dbg !2067
  call void @llvm.dbg.value(metadata i1 %357, metadata !1819, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1929
  %358 = icmp ugt i64 %355, 1, !dbg !2126
  br i1 %358, label %367, label %359, !dbg !2068

359:                                              ; preds = %291, %353
  %360 = phi i1 [ %300, %291 ], [ %357, %353 ]
  %361 = phi i8 [ %299, %291 ], [ %354, %353 ]
  %362 = phi i64 [ 1, %291 ], [ %355, %353 ]
  %363 = phi i64 [ %154, %291 ], [ %306, %353 ]
  %364 = and i1 %102, %360, !dbg !2127
  br i1 %364, label %367, label %365, !dbg !2127

365:                                              ; preds = %359
  %366 = and i8 %361, 1, !dbg !1929
  call void @llvm.dbg.value(metadata i8 %472, metadata !1819, metadata !DIExpression()), !dbg !1929
  call void @llvm.dbg.value(metadata i8 %441, metadata !1818, metadata !DIExpression()), !dbg !1929
  call void @llvm.dbg.value(metadata i8 %440, metadata !1817, metadata !DIExpression()), !dbg !1929
  call void @llvm.dbg.value(metadata i8 %439, metadata !1812, metadata !DIExpression()), !dbg !1929
  call void @llvm.dbg.value(metadata i8 %438, metadata !1809, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i64 %371, metadata !1795, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i64 %437, metadata !1802, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i64 %375, metadata !1801, metadata !DIExpression()), !dbg !1862
  br label %473

367:                                              ; preds = %359, %353
  %368 = phi i1 [ true, %359 ], [ %357, %353 ]
  %369 = phi i8 [ %361, %359 ], [ %354, %353 ]
  %370 = phi i64 [ %362, %359 ], [ %355, %353 ]
  %371 = phi i64 [ %363, %359 ], [ %306, %353 ]
  %372 = add i64 %370, %122, !dbg !2128
  call void @llvm.dbg.value(metadata i64 %372, metadata !1853, metadata !DIExpression()), !dbg !2129
  %373 = and i1 %102, %368
  br label %374, !dbg !2130

374:                                              ; preds = %467, %367
  %375 = phi i64 [ %122, %367 ], [ %442, %467 ], !dbg !1922
  %376 = phi i64 [ %123, %367 ], [ %468, %467 ], !dbg !1862
  %377 = phi i8 [ %126, %367 ], [ %463, %467 ], !dbg !1871
  %378 = phi i8 [ %158, %367 ], [ %470, %467 ], !dbg !1929
  %379 = phi i8 [ %156, %367 ], [ %440, %467 ], !dbg !1929
  %380 = phi i8 [ 0, %367 ], [ %441, %467 ], !dbg !2131
  call void @llvm.dbg.value(metadata i8 %380, metadata !1818, metadata !DIExpression()), !dbg !1929
  call void @llvm.dbg.value(metadata i8 %379, metadata !1817, metadata !DIExpression()), !dbg !1929
  call void @llvm.dbg.value(metadata i8 %378, metadata !1812, metadata !DIExpression()), !dbg !1929
  call void @llvm.dbg.value(metadata i8 %377, metadata !1809, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i64 %376, metadata !1802, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i64 %375, metadata !1801, metadata !DIExpression()), !dbg !1862
  br i1 %373, label %381, label %427, !dbg !2132

381:                                              ; preds = %374
  br i1 %109, label %382, label %635, !dbg !2137

382:                                              ; preds = %381
  call void @llvm.dbg.value(metadata i8 1, metadata !1818, metadata !DIExpression()), !dbg !1929
  %383 = and i8 %377, 1, !dbg !2140
  %384 = icmp eq i8 %383, 0, !dbg !2140
  %385 = and i1 %110, %384, !dbg !2140
  br i1 %385, label %386, label %402, !dbg !2140

386:                                              ; preds = %382
  %387 = icmp ult i64 %376, %129, !dbg !2142
  br i1 %387, label %388, label %390, !dbg !2146

388:                                              ; preds = %386
  %389 = getelementptr inbounds i8, i8* %0, i64 %376, !dbg !2142
  store i8 39, i8* %389, align 1, !dbg !2142, !tbaa !937
  br label %390, !dbg !2142

390:                                              ; preds = %388, %386
  %391 = add i64 %376, 1, !dbg !2146
  call void @llvm.dbg.value(metadata i64 %391, metadata !1802, metadata !DIExpression()), !dbg !1862
  %392 = icmp ult i64 %391, %129, !dbg !2147
  br i1 %392, label %393, label %395, !dbg !2150

393:                                              ; preds = %390
  %394 = getelementptr inbounds i8, i8* %0, i64 %391, !dbg !2147
  store i8 36, i8* %394, align 1, !dbg !2147, !tbaa !937
  br label %395, !dbg !2147

395:                                              ; preds = %393, %390
  %396 = add i64 %376, 2, !dbg !2150
  call void @llvm.dbg.value(metadata i64 %396, metadata !1802, metadata !DIExpression()), !dbg !1862
  %397 = icmp ult i64 %396, %129, !dbg !2151
  br i1 %397, label %398, label %400, !dbg !2154

398:                                              ; preds = %395
  %399 = getelementptr inbounds i8, i8* %0, i64 %396, !dbg !2151
  store i8 39, i8* %399, align 1, !dbg !2151, !tbaa !937
  br label %400, !dbg !2151

400:                                              ; preds = %398, %395
  %401 = add i64 %376, 3, !dbg !2154
  call void @llvm.dbg.value(metadata i64 %401, metadata !1802, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i8 1, metadata !1809, metadata !DIExpression()), !dbg !1862
  br label %402, !dbg !2155

402:                                              ; preds = %382, %400
  %403 = phi i64 [ %401, %400 ], [ %376, %382 ], !dbg !1862
  %404 = phi i8 [ 1, %400 ], [ %377, %382 ], !dbg !1862
  call void @llvm.dbg.value(metadata i8 %404, metadata !1809, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i64 %403, metadata !1802, metadata !DIExpression()), !dbg !1862
  %405 = icmp ult i64 %403, %129, !dbg !2156
  br i1 %405, label %406, label %408, !dbg !2159

406:                                              ; preds = %402
  %407 = getelementptr inbounds i8, i8* %0, i64 %403, !dbg !2156
  store i8 92, i8* %407, align 1, !dbg !2156, !tbaa !937
  br label %408, !dbg !2156

408:                                              ; preds = %406, %402
  %409 = add i64 %403, 1, !dbg !2159
  call void @llvm.dbg.value(metadata i64 %409, metadata !1802, metadata !DIExpression()), !dbg !1862
  %410 = icmp ult i64 %409, %129, !dbg !2160
  br i1 %410, label %411, label %415, !dbg !2163

411:                                              ; preds = %408
  %412 = lshr i8 %378, 6, !dbg !2160
  %413 = or i8 %412, 48, !dbg !2160
  %414 = getelementptr inbounds i8, i8* %0, i64 %409, !dbg !2160
  store i8 %413, i8* %414, align 1, !dbg !2160, !tbaa !937
  br label %415, !dbg !2160

415:                                              ; preds = %411, %408
  %416 = add i64 %403, 2, !dbg !2163
  call void @llvm.dbg.value(metadata i64 %416, metadata !1802, metadata !DIExpression()), !dbg !1862
  %417 = icmp ult i64 %416, %129, !dbg !2164
  br i1 %417, label %418, label %423, !dbg !2167

418:                                              ; preds = %415
  %419 = lshr i8 %378, 3, !dbg !2164
  %420 = and i8 %419, 7, !dbg !2164
  %421 = or i8 %420, 48, !dbg !2164
  %422 = getelementptr inbounds i8, i8* %0, i64 %416, !dbg !2164
  store i8 %421, i8* %422, align 1, !dbg !2164, !tbaa !937
  br label %423, !dbg !2164

423:                                              ; preds = %418, %415
  %424 = add i64 %403, 3, !dbg !2167
  call void @llvm.dbg.value(metadata i64 %424, metadata !1802, metadata !DIExpression()), !dbg !1862
  %425 = and i8 %378, 7, !dbg !2168
  %426 = or i8 %425, 48, !dbg !2169
  call void @llvm.dbg.value(metadata i8 %426, metadata !1812, metadata !DIExpression()), !dbg !1929
  br label %436, !dbg !2170

427:                                              ; preds = %374
  %428 = and i8 %379, 1, !dbg !2171
  %429 = icmp eq i8 %428, 0, !dbg !2171
  br i1 %429, label %436, label %430, !dbg !2173

430:                                              ; preds = %427
  %431 = icmp ult i64 %376, %129, !dbg !2174
  br i1 %431, label %432, label %434, !dbg !2178

432:                                              ; preds = %430
  %433 = getelementptr inbounds i8, i8* %0, i64 %376, !dbg !2174
  store i8 92, i8* %433, align 1, !dbg !2174, !tbaa !937
  br label %434, !dbg !2174

434:                                              ; preds = %432, %430
  %435 = add i64 %376, 1, !dbg !2178
  call void @llvm.dbg.value(metadata i64 %435, metadata !1802, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i8 0, metadata !1817, metadata !DIExpression()), !dbg !1929
  br label %436, !dbg !2179

436:                                              ; preds = %427, %434, %423
  %437 = phi i64 [ %435, %434 ], [ %376, %427 ], [ %424, %423 ], !dbg !1862
  %438 = phi i8 [ %377, %434 ], [ %377, %427 ], [ %404, %423 ], !dbg !1871
  %439 = phi i8 [ %378, %434 ], [ %378, %427 ], [ %426, %423 ], !dbg !1929
  %440 = phi i8 [ 0, %434 ], [ %379, %427 ], [ %379, %423 ], !dbg !1929
  %441 = phi i8 [ %380, %434 ], [ %380, %427 ], [ 1, %423 ], !dbg !1929
  call void @llvm.dbg.value(metadata i8 %441, metadata !1818, metadata !DIExpression()), !dbg !1929
  call void @llvm.dbg.value(metadata i8 %440, metadata !1817, metadata !DIExpression()), !dbg !1929
  call void @llvm.dbg.value(metadata i8 %439, metadata !1812, metadata !DIExpression()), !dbg !1929
  call void @llvm.dbg.value(metadata i8 %438, metadata !1809, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i64 %437, metadata !1802, metadata !DIExpression()), !dbg !1862
  %442 = add i64 %375, 1, !dbg !2180
  %443 = icmp ugt i64 %372, %442, !dbg !2182
  br i1 %443, label %444, label %471, !dbg !2183

444:                                              ; preds = %436
  %445 = and i8 %438, 1, !dbg !2184
  %446 = icmp ne i8 %445, 0, !dbg !2184
  %447 = and i8 %441, 1, !dbg !2184
  %448 = icmp eq i8 %447, 0, !dbg !2184
  %449 = and i1 %446, %448, !dbg !2184
  br i1 %449, label %450, label %461, !dbg !2184

450:                                              ; preds = %444
  %451 = icmp ult i64 %437, %129, !dbg !2187
  br i1 %451, label %452, label %454, !dbg !2191

452:                                              ; preds = %450
  %453 = getelementptr inbounds i8, i8* %0, i64 %437, !dbg !2187
  store i8 39, i8* %453, align 1, !dbg !2187, !tbaa !937
  br label %454, !dbg !2187

454:                                              ; preds = %452, %450
  %455 = add i64 %437, 1, !dbg !2191
  call void @llvm.dbg.value(metadata i64 %455, metadata !1802, metadata !DIExpression()), !dbg !1862
  %456 = icmp ult i64 %455, %129, !dbg !2192
  br i1 %456, label %457, label %459, !dbg !2195

457:                                              ; preds = %454
  %458 = getelementptr inbounds i8, i8* %0, i64 %455, !dbg !2192
  store i8 39, i8* %458, align 1, !dbg !2192, !tbaa !937
  br label %459, !dbg !2192

459:                                              ; preds = %457, %454
  %460 = add i64 %437, 2, !dbg !2195
  call void @llvm.dbg.value(metadata i64 %460, metadata !1802, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i8 0, metadata !1809, metadata !DIExpression()), !dbg !1862
  br label %461, !dbg !2196

461:                                              ; preds = %444, %459
  %462 = phi i64 [ %460, %459 ], [ %437, %444 ], !dbg !2197
  %463 = phi i8 [ 0, %459 ], [ %438, %444 ], !dbg !1862
  call void @llvm.dbg.value(metadata i8 %463, metadata !1809, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i64 %462, metadata !1802, metadata !DIExpression()), !dbg !1862
  %464 = icmp ult i64 %462, %129, !dbg !2198
  br i1 %464, label %465, label %467, !dbg !2201

465:                                              ; preds = %461
  %466 = getelementptr inbounds i8, i8* %0, i64 %462, !dbg !2198
  store i8 %439, i8* %466, align 1, !dbg !2198, !tbaa !937
  br label %467, !dbg !2198

467:                                              ; preds = %465, %461
  %468 = add i64 %462, 1, !dbg !2201
  call void @llvm.dbg.value(metadata i64 %468, metadata !1802, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i64 %442, metadata !1801, metadata !DIExpression()), !dbg !1862
  %469 = getelementptr inbounds i8, i8* %2, i64 %442, !dbg !2202
  %470 = load i8, i8* %469, align 1, !dbg !2202, !tbaa !937
  call void @llvm.dbg.value(metadata i8 %470, metadata !1812, metadata !DIExpression()), !dbg !1929
  br label %374, !dbg !2203, !llvm.loop !2204

471:                                              ; preds = %436
  %472 = and i8 %369, 1, !dbg !1929
  call void @llvm.dbg.value(metadata i8 %472, metadata !1819, metadata !DIExpression()), !dbg !1929
  call void @llvm.dbg.value(metadata i8 %441, metadata !1818, metadata !DIExpression()), !dbg !1929
  call void @llvm.dbg.value(metadata i8 %440, metadata !1817, metadata !DIExpression()), !dbg !1929
  call void @llvm.dbg.value(metadata i8 %439, metadata !1812, metadata !DIExpression()), !dbg !1929
  call void @llvm.dbg.value(metadata i8 %438, metadata !1809, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i64 %371, metadata !1795, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i64 %437, metadata !1802, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i64 %375, metadata !1801, metadata !DIExpression()), !dbg !1862
  br label %533

473:                                              ; preds = %365, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %258, %187, %192, %206, %267, %288, %265, %262, %259, %256, %210, %244, %220, %215, %211, %209, %208
  %474 = phi i64 [ %122, %288 ], [ %122, %267 ], [ %122, %265 ], [ %122, %262 ], [ %122, %259 ], [ %122, %256 ], [ %122, %209 ], [ %122, %220 ], [ %212, %244 ], [ %122, %215 ], [ %122, %211 ], [ %122, %210 ], [ %122, %208 ], [ %122, %206 ], [ %122, %192 ], [ %122, %187 ], [ %122, %258 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %365 ], !dbg !1922
  %475 = phi i64 [ %289, %288 ], [ %123, %267 ], [ %123, %265 ], [ %123, %262 ], [ %123, %259 ], [ %123, %256 ], [ %123, %209 ], [ %123, %220 ], [ %245, %244 ], [ %123, %215 ], [ %123, %211 ], [ %123, %210 ], [ %123, %208 ], [ %207, %206 ], [ %188, %192 ], [ %188, %187 ], [ %123, %258 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %365 ], !dbg !1862
  %476 = phi i64 [ %273, %288 ], [ %124, %267 ], [ %124, %265 ], [ %124, %262 ], [ %124, %259 ], [ %124, %256 ], [ %124, %209 ], [ %124, %220 ], [ %124, %244 ], [ %124, %215 ], [ %124, %211 ], [ %124, %210 ], [ %124, %208 ], [ %124, %206 ], [ %124, %192 ], [ %124, %187 ], [ %124, %258 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %365 ], !dbg !1867
  %477 = phi i64 [ %154, %288 ], [ %154, %267 ], [ %154, %265 ], [ %154, %262 ], [ -1, %259 ], [ %154, %256 ], [ %154, %209 ], [ %154, %220 ], [ %154, %244 ], [ %154, %215 ], [ %154, %211 ], [ %154, %210 ], [ %154, %208 ], [ %154, %206 ], [ %154, %192 ], [ %154, %187 ], [ %154, %258 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %363, %365 ], !dbg !2207
  %478 = phi i8 [ 0, %288 ], [ %126, %267 ], [ %126, %265 ], [ %126, %262 ], [ %126, %259 ], [ %126, %256 ], [ %126, %209 ], [ %126, %220 ], [ %126, %244 ], [ %126, %215 ], [ %126, %211 ], [ %126, %210 ], [ %126, %208 ], [ %183, %206 ], [ %183, %192 ], [ %183, %187 ], [ %126, %258 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %365 ], !dbg !1862
  %479 = phi i8 [ 1, %288 ], [ 1, %267 ], [ %127, %265 ], [ %127, %262 ], [ %127, %259 ], [ %127, %256 ], [ %127, %209 ], [ %127, %220 ], [ %127, %244 ], [ %127, %215 ], [ %127, %211 ], [ %127, %210 ], [ %127, %208 ], [ %127, %206 ], [ %127, %192 ], [ %127, %187 ], [ %127, %258 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %365 ], !dbg !1862
  %480 = phi i8 [ 39, %288 ], [ 39, %267 ], [ %158, %265 ], [ %158, %262 ], [ %158, %259 ], [ %158, %256 ], [ 63, %209 ], [ 63, %220 ], [ %222, %244 ], [ 63, %215 ], [ 63, %211 ], [ 63, %210 ], [ 0, %208 ], [ 48, %206 ], [ 48, %192 ], [ 48, %187 ], [ %158, %258 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %365 ], !dbg !1929
  %481 = phi i8 [ 0, %288 ], [ 0, %267 ], [ 0, %265 ], [ 0, %262 ], [ 0, %259 ], [ 0, %256 ], [ 0, %209 ], [ 0, %220 ], [ 0, %244 ], [ 0, %215 ], [ 0, %211 ], [ 0, %210 ], [ 0, %208 ], [ 1, %206 ], [ 1, %192 ], [ 1, %187 ], [ 0, %258 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %365 ], !dbg !1929
  %482 = phi i8 [ 1, %288 ], [ 1, %267 ], [ %266, %265 ], [ 0, %262 ], [ 0, %259 ], [ 0, %256 ], [ 0, %209 ], [ 0, %220 ], [ 0, %244 ], [ 0, %215 ], [ 0, %211 ], [ 0, %210 ], [ 0, %208 ], [ 0, %206 ], [ 0, %192 ], [ 0, %187 ], [ 0, %258 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ %366, %365 ], !dbg !1929
  %483 = phi i64 [ %274, %288 ], [ %129, %267 ], [ %129, %265 ], [ %129, %262 ], [ %129, %259 ], [ %129, %256 ], [ %129, %209 ], [ %129, %220 ], [ %129, %244 ], [ %129, %215 ], [ %129, %211 ], [ %129, %210 ], [ %129, %208 ], [ %129, %206 ], [ %129, %192 ], [ %129, %187 ], [ %129, %258 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %365 ]
  call void @llvm.dbg.value(metadata i64 %483, metadata !1793, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i8 %482, metadata !1819, metadata !DIExpression()), !dbg !1929
  call void @llvm.dbg.value(metadata i8 %481, metadata !1818, metadata !DIExpression()), !dbg !1929
  call void @llvm.dbg.value(metadata i8 %156, metadata !1817, metadata !DIExpression()), !dbg !1929
  call void @llvm.dbg.value(metadata i8 %480, metadata !1812, metadata !DIExpression()), !dbg !1929
  call void @llvm.dbg.value(metadata i8 %479, metadata !1810, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i8 %478, metadata !1809, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i64 %477, metadata !1795, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i64 %476, metadata !1803, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i64 %475, metadata !1802, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i64 %474, metadata !1801, metadata !DIExpression()), !dbg !1862
  br i1 %116, label %494, label %484, !dbg !2208

484:                                              ; preds = %473
  %485 = lshr i8 %480, 5, !dbg !2210
  %486 = zext i8 %485 to i64, !dbg !2210
  %487 = getelementptr inbounds i32, i32* %6, i64 %486, !dbg !2211
  %488 = load i32, i32* %487, align 4, !dbg !2211, !tbaa !1228
  %489 = and i8 %480, 31, !dbg !2212
  %490 = zext i8 %489 to i32, !dbg !2212
  %491 = shl nuw i32 1, %490, !dbg !2213
  %492 = and i32 %488, %491, !dbg !2213
  %493 = icmp eq i32 %492, 0, !dbg !2213
  br i1 %493, label %494, label %495, !dbg !2214

494:                                              ; preds = %473, %484
  br i1 %155, label %533, label %495, !dbg !2215

495:                                              ; preds = %256, %494, %484
  %496 = phi i64 [ %474, %484 ], [ %474, %494 ], [ %122, %256 ], !dbg !2216
  %497 = phi i64 [ %475, %484 ], [ %475, %494 ], [ %123, %256 ], !dbg !1862
  %498 = phi i64 [ %476, %484 ], [ %476, %494 ], [ %124, %256 ], !dbg !1867
  %499 = phi i64 [ %477, %484 ], [ %477, %494 ], [ %154, %256 ], !dbg !2207
  %500 = phi i8 [ %478, %484 ], [ %478, %494 ], [ %126, %256 ], !dbg !1871
  %501 = phi i8 [ %479, %484 ], [ %479, %494 ], [ %127, %256 ], !dbg !1872
  %502 = phi i8 [ %480, %484 ], [ %480, %494 ], [ %257, %256 ], !dbg !1929
  %503 = phi i8 [ %482, %484 ], [ %482, %494 ], [ 0, %256 ], !dbg !1929
  %504 = phi i64 [ %483, %484 ], [ %483, %494 ], [ %129, %256 ]
  call void @llvm.dbg.value(metadata i64 %504, metadata !1793, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i8 %503, metadata !1819, metadata !DIExpression()), !dbg !1929
  call void @llvm.dbg.value(metadata i8 %502, metadata !1812, metadata !DIExpression()), !dbg !1929
  call void @llvm.dbg.value(metadata i8 %501, metadata !1810, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i8 %500, metadata !1809, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i64 %499, metadata !1795, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i64 %498, metadata !1803, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i64 %497, metadata !1802, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i64 %496, metadata !1801, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.label(metadata !1859), !dbg !2217
  br i1 %109, label %505, label %635, !dbg !2218

505:                                              ; preds = %495
  call void @llvm.dbg.value(metadata i8 1, metadata !1818, metadata !DIExpression()), !dbg !1929
  %506 = and i8 %500, 1, !dbg !2220
  %507 = icmp eq i8 %506, 0, !dbg !2220
  %508 = and i1 %110, %507, !dbg !2220
  br i1 %508, label %509, label %525, !dbg !2220

509:                                              ; preds = %505
  %510 = icmp ult i64 %497, %504, !dbg !2222
  br i1 %510, label %511, label %513, !dbg !2226

511:                                              ; preds = %509
  %512 = getelementptr inbounds i8, i8* %0, i64 %497, !dbg !2222
  store i8 39, i8* %512, align 1, !dbg !2222, !tbaa !937
  br label %513, !dbg !2222

513:                                              ; preds = %511, %509
  %514 = add i64 %497, 1, !dbg !2226
  call void @llvm.dbg.value(metadata i64 %514, metadata !1802, metadata !DIExpression()), !dbg !1862
  %515 = icmp ult i64 %514, %504, !dbg !2227
  br i1 %515, label %516, label %518, !dbg !2230

516:                                              ; preds = %513
  %517 = getelementptr inbounds i8, i8* %0, i64 %514, !dbg !2227
  store i8 36, i8* %517, align 1, !dbg !2227, !tbaa !937
  br label %518, !dbg !2227

518:                                              ; preds = %516, %513
  %519 = add i64 %497, 2, !dbg !2230
  call void @llvm.dbg.value(metadata i64 %519, metadata !1802, metadata !DIExpression()), !dbg !1862
  %520 = icmp ult i64 %519, %504, !dbg !2231
  br i1 %520, label %521, label %523, !dbg !2234

521:                                              ; preds = %518
  %522 = getelementptr inbounds i8, i8* %0, i64 %519, !dbg !2231
  store i8 39, i8* %522, align 1, !dbg !2231, !tbaa !937
  br label %523, !dbg !2231

523:                                              ; preds = %521, %518
  %524 = add i64 %497, 3, !dbg !2234
  call void @llvm.dbg.value(metadata i64 %524, metadata !1802, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i8 1, metadata !1809, metadata !DIExpression()), !dbg !1862
  br label %525, !dbg !2235

525:                                              ; preds = %505, %523
  %526 = phi i64 [ %524, %523 ], [ %497, %505 ], !dbg !1929
  %527 = phi i8 [ 1, %523 ], [ %500, %505 ], !dbg !1862
  call void @llvm.dbg.value(metadata i8 %527, metadata !1809, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i64 %526, metadata !1802, metadata !DIExpression()), !dbg !1862
  %528 = icmp ult i64 %526, %504, !dbg !2236
  br i1 %528, label %529, label %531, !dbg !2239

529:                                              ; preds = %525
  %530 = getelementptr inbounds i8, i8* %0, i64 %526, !dbg !2236
  store i8 92, i8* %530, align 1, !dbg !2236, !tbaa !937
  br label %531, !dbg !2236

531:                                              ; preds = %525, %529
  %532 = add i64 %526, 1, !dbg !2239
  call void @llvm.dbg.value(metadata i64 %543, metadata !1793, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i8 %542, metadata !1819, metadata !DIExpression()), !dbg !1929
  call void @llvm.dbg.value(metadata i8 %541, metadata !1818, metadata !DIExpression()), !dbg !1929
  call void @llvm.dbg.value(metadata i8 %540, metadata !1812, metadata !DIExpression()), !dbg !1929
  call void @llvm.dbg.value(metadata i8 %539, metadata !1810, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i8 %538, metadata !1809, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i64 %537, metadata !1795, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i64 %536, metadata !1803, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i64 %535, metadata !1802, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i64 %534, metadata !1801, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.label(metadata !1860), !dbg !2240
  br label %560, !dbg !2241

533:                                              ; preds = %253, %471, %252, %494
  %534 = phi i64 [ %375, %471 ], [ %474, %494 ], [ %122, %252 ], [ %122, %253 ], !dbg !2216
  %535 = phi i64 [ %437, %471 ], [ %475, %494 ], [ %123, %252 ], [ %123, %253 ], !dbg !1862
  %536 = phi i64 [ %124, %471 ], [ %476, %494 ], [ %124, %252 ], [ %124, %253 ], !dbg !1867
  %537 = phi i64 [ %371, %471 ], [ %477, %494 ], [ %154, %252 ], [ %154, %253 ], !dbg !2207
  %538 = phi i8 [ %438, %471 ], [ %478, %494 ], [ %126, %252 ], [ %126, %253 ], !dbg !1871
  %539 = phi i8 [ %127, %471 ], [ %479, %494 ], [ %127, %252 ], [ %127, %253 ], !dbg !1872
  %540 = phi i8 [ %439, %471 ], [ %480, %494 ], [ 92, %252 ], [ 92, %253 ], !dbg !2244
  %541 = phi i8 [ %441, %471 ], [ %481, %494 ], [ 0, %252 ], [ 0, %253 ], !dbg !1929
  %542 = phi i8 [ %472, %471 ], [ %482, %494 ], [ 0, %252 ], [ 0, %253 ], !dbg !1929
  %543 = phi i64 [ %129, %471 ], [ %483, %494 ], [ %129, %252 ], [ %129, %253 ]
  call void @llvm.dbg.value(metadata i64 %543, metadata !1793, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i8 %542, metadata !1819, metadata !DIExpression()), !dbg !1929
  call void @llvm.dbg.value(metadata i8 %541, metadata !1818, metadata !DIExpression()), !dbg !1929
  call void @llvm.dbg.value(metadata i8 %540, metadata !1812, metadata !DIExpression()), !dbg !1929
  call void @llvm.dbg.value(metadata i8 %539, metadata !1810, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i8 %538, metadata !1809, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i64 %537, metadata !1795, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i64 %536, metadata !1803, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i64 %535, metadata !1802, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i64 %534, metadata !1801, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.label(metadata !1860), !dbg !2240
  %544 = and i8 %538, 1, !dbg !2241
  %545 = icmp ne i8 %544, 0, !dbg !2241
  %546 = and i8 %541, 1, !dbg !2241
  %547 = icmp eq i8 %546, 0, !dbg !2241
  %548 = and i1 %545, %547, !dbg !2241
  br i1 %548, label %549, label %560, !dbg !2241

549:                                              ; preds = %533
  %550 = icmp ult i64 %535, %543, !dbg !2245
  br i1 %550, label %551, label %553, !dbg !2249

551:                                              ; preds = %549
  %552 = getelementptr inbounds i8, i8* %0, i64 %535, !dbg !2245
  store i8 39, i8* %552, align 1, !dbg !2245, !tbaa !937
  br label %553, !dbg !2245

553:                                              ; preds = %551, %549
  %554 = add i64 %535, 1, !dbg !2249
  call void @llvm.dbg.value(metadata i64 %554, metadata !1802, metadata !DIExpression()), !dbg !1862
  %555 = icmp ult i64 %554, %543, !dbg !2250
  br i1 %555, label %556, label %558, !dbg !2253

556:                                              ; preds = %553
  %557 = getelementptr inbounds i8, i8* %0, i64 %554, !dbg !2250
  store i8 39, i8* %557, align 1, !dbg !2250, !tbaa !937
  br label %558, !dbg !2250

558:                                              ; preds = %556, %553
  %559 = add i64 %535, 2, !dbg !2253
  call void @llvm.dbg.value(metadata i64 %559, metadata !1802, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i8 0, metadata !1809, metadata !DIExpression()), !dbg !1862
  br label %560, !dbg !2254

560:                                              ; preds = %531, %533, %558
  %561 = phi i64 [ %543, %558 ], [ %543, %533 ], [ %504, %531 ]
  %562 = phi i8 [ %542, %558 ], [ %542, %533 ], [ %503, %531 ]
  %563 = phi i8 [ %540, %558 ], [ %540, %533 ], [ %502, %531 ]
  %564 = phi i8 [ %539, %558 ], [ %539, %533 ], [ %501, %531 ]
  %565 = phi i64 [ %537, %558 ], [ %537, %533 ], [ %499, %531 ]
  %566 = phi i64 [ %536, %558 ], [ %536, %533 ], [ %498, %531 ]
  %567 = phi i64 [ %534, %558 ], [ %534, %533 ], [ %496, %531 ]
  %568 = phi i64 [ %559, %558 ], [ %535, %533 ], [ %532, %531 ], !dbg !1929
  %569 = phi i8 [ 0, %558 ], [ %538, %533 ], [ %527, %531 ], !dbg !1862
  call void @llvm.dbg.value(metadata i8 %569, metadata !1809, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i64 %568, metadata !1802, metadata !DIExpression()), !dbg !1862
  %570 = icmp ult i64 %568, %561, !dbg !2255
  br i1 %570, label %571, label %573, !dbg !2258

571:                                              ; preds = %560
  %572 = getelementptr inbounds i8, i8* %0, i64 %568, !dbg !2255
  store i8 %563, i8* %572, align 1, !dbg !2255, !tbaa !937
  br label %573, !dbg !2255

573:                                              ; preds = %571, %560
  %574 = add i64 %568, 1, !dbg !2258
  call void @llvm.dbg.value(metadata i64 %574, metadata !1802, metadata !DIExpression()), !dbg !1862
  %575 = icmp eq i8 %562, 0, !dbg !2259
  %576 = select i1 %575, i8 0, i8 %128, !dbg !2261
  call void @llvm.dbg.value(metadata i8 %576, metadata !1811, metadata !DIExpression()), !dbg !1862
  br label %577, !dbg !2262

577:                                              ; preds = %573, %208
  %578 = phi i64 [ %567, %573 ], [ %122, %208 ], !dbg !2216
  %579 = phi i64 [ %574, %573 ], [ %123, %208 ], !dbg !1862
  %580 = phi i64 [ %566, %573 ], [ %124, %208 ], !dbg !1867
  %581 = phi i64 [ %565, %573 ], [ %154, %208 ], !dbg !2207
  %582 = phi i8 [ %569, %573 ], [ %126, %208 ], !dbg !1871
  %583 = phi i8 [ %564, %573 ], [ %127, %208 ], !dbg !1862
  %584 = phi i8 [ %576, %573 ], [ %128, %208 ], !dbg !1873
  %585 = phi i64 [ %561, %573 ], [ %129, %208 ]
  call void @llvm.dbg.value(metadata i64 %585, metadata !1793, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i8 %584, metadata !1811, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i8 %583, metadata !1810, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i8 %582, metadata !1809, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i64 %581, metadata !1795, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i64 %580, metadata !1803, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i64 %579, metadata !1802, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i64 %578, metadata !1801, metadata !DIExpression()), !dbg !1862
  %586 = add i64 %578, 1, !dbg !2263
  call void @llvm.dbg.value(metadata i64 %586, metadata !1801, metadata !DIExpression()), !dbg !1862
  br label %121, !dbg !2264, !llvm.loop !2265

587:                                              ; preds = %131, %135
  %588 = phi i64 [ -1, %131 ], [ %122, %135 ]
  %589 = icmp eq i64 %123, 0, !dbg !2267
  %590 = and i1 %110, %589, !dbg !2269
  %591 = xor i1 %590, true, !dbg !2269
  %592 = or i1 %109, %591, !dbg !2269
  br i1 %592, label %593, label %635, !dbg !2269

593:                                              ; preds = %587
  %594 = and i1 %110, %109, !dbg !2270
  %595 = and i8 %127, 1
  %596 = icmp ne i8 %595, 0
  %597 = and i1 %594, %596, !dbg !2270
  br i1 %597, label %598, label %607, !dbg !2270

598:                                              ; preds = %593
  %599 = and i8 %128, 1, !dbg !2272
  %600 = icmp eq i8 %599, 0, !dbg !2272
  br i1 %600, label %603, label %601, !dbg !2275

601:                                              ; preds = %598
  %602 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %124, i8* %2, i64 %588, i32 5, i32 %5, i32* %6, i8* %94, i8* %95), !dbg !2276
  br label %652, !dbg !2277

603:                                              ; preds = %598
  %604 = icmp eq i64 %129, 0, !dbg !2278
  %605 = icmp ne i64 %124, 0
  %606 = and i1 %605, %604, !dbg !2280
  br i1 %606, label %26, label %607, !dbg !2280

607:                                              ; preds = %603, %593
  %608 = phi i1 [ true, %603 ], [ %109, %593 ]
  %609 = icmp ne i8* %97, null, !dbg !2281
  %610 = and i1 %609, %608, !dbg !2283
  br i1 %610, label %611, label %626, !dbg !2283

611:                                              ; preds = %607
  call void @llvm.dbg.value(metadata i8* %97, metadata !1804, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i64 %123, metadata !1802, metadata !DIExpression()), !dbg !1862
  %612 = load i8, i8* %97, align 1, !dbg !2284, !tbaa !937
  %613 = icmp eq i8 %612, 0, !dbg !2287
  br i1 %613, label %626, label %614, !dbg !2287

614:                                              ; preds = %611, %621
  %615 = phi i8 [ %624, %621 ], [ %612, %611 ]
  %616 = phi i8* [ %623, %621 ], [ %97, %611 ]
  %617 = phi i64 [ %622, %621 ], [ %123, %611 ]
  call void @llvm.dbg.value(metadata i8* %616, metadata !1804, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i64 %617, metadata !1802, metadata !DIExpression()), !dbg !1862
  %618 = icmp ult i64 %617, %129, !dbg !2288
  br i1 %618, label %619, label %621, !dbg !2291

619:                                              ; preds = %614
  %620 = getelementptr inbounds i8, i8* %0, i64 %617, !dbg !2288
  store i8 %615, i8* %620, align 1, !dbg !2288, !tbaa !937
  br label %621, !dbg !2288

621:                                              ; preds = %619, %614
  %622 = add i64 %617, 1, !dbg !2291
  call void @llvm.dbg.value(metadata i64 %622, metadata !1802, metadata !DIExpression()), !dbg !1862
  %623 = getelementptr inbounds i8, i8* %616, i64 1, !dbg !2292
  call void @llvm.dbg.value(metadata i8* %623, metadata !1804, metadata !DIExpression()), !dbg !1862
  %624 = load i8, i8* %623, align 1, !dbg !2284, !tbaa !937
  %625 = icmp eq i8 %624, 0, !dbg !2287
  br i1 %625, label %626, label %614, !dbg !2287, !llvm.loop !2293

626:                                              ; preds = %621, %611, %607
  %627 = phi i64 [ %123, %607 ], [ %123, %611 ], [ %622, %621 ], !dbg !1904
  call void @llvm.dbg.value(metadata i64 %627, metadata !1802, metadata !DIExpression()), !dbg !1862
  %628 = icmp ult i64 %627, %129, !dbg !2295
  br i1 %628, label %629, label %652, !dbg !2297

629:                                              ; preds = %626
  %630 = getelementptr inbounds i8, i8* %0, i64 %627, !dbg !2298
  store i8 0, i8* %630, align 1, !dbg !2299, !tbaa !937
  br label %652, !dbg !2298

631:                                              ; preds = %210, %252, %254, %265, %268, %352
  %632 = phi i64 [ %306, %352 ], [ %154, %268 ], [ %154, %265 ], [ %154, %254 ], [ %154, %252 ], [ %154, %210 ]
  call void @llvm.dbg.value(metadata i64 %638, metadata !1793, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i64 %637, metadata !1795, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.label(metadata !1861), !dbg !2300
  %633 = icmp eq i8 %101, 0, !dbg !2301
  %634 = select i1 %633, i32 2, i32 4, !dbg !2301
  br label %642, !dbg !2301

635:                                              ; preds = %587, %495, %160, %381
  %636 = phi i8 [ 1, %381 ], [ %101, %495 ], [ 1, %160 ], [ %101, %587 ]
  %637 = phi i64 [ %371, %381 ], [ %499, %495 ], [ %154, %160 ], [ %588, %587 ]
  %638 = phi i64 [ %129, %381 ], [ %504, %495 ], [ %129, %160 ], [ %129, %587 ]
  call void @llvm.dbg.value(metadata i64 %638, metadata !1793, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i64 %637, metadata !1795, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.label(metadata !1861), !dbg !2300
  %639 = icmp eq i32 %93, 2, !dbg !2303
  %640 = icmp eq i8 %636, 0, !dbg !2301
  %641 = select i1 %640, i32 2, i32 4, !dbg !2301
  br i1 %639, label %642, label %646, !dbg !2301

642:                                              ; preds = %631, %635
  %643 = phi i32 [ %634, %631 ], [ %641, %635 ]
  %644 = phi i64 [ %129, %631 ], [ %638, %635 ]
  %645 = phi i64 [ %632, %631 ], [ %637, %635 ]
  br label %646, !dbg !2301

646:                                              ; preds = %224, %146, %635, %642
  %647 = phi i64 [ %644, %642 ], [ %638, %635 ], [ %129, %146 ], [ %129, %224 ]
  %648 = phi i64 [ %645, %642 ], [ %637, %635 ], [ %154, %224 ], [ %144, %146 ]
  %649 = phi i32 [ %643, %642 ], [ %93, %635 ], [ 5, %224 ], [ %93, %146 ]
  call void @llvm.dbg.value(metadata i32 %649, metadata !1796, metadata !DIExpression()), !dbg !1862
  %650 = and i32 %5, -3, !dbg !2304
  %651 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %647, i8* %2, i64 %648, i32 %649, i32 %650, i32* null, i8* %94, i8* %95), !dbg !2305
  br label %652, !dbg !2306

652:                                              ; preds = %626, %629, %646, %601
  %653 = phi i64 [ %651, %646 ], [ %602, %601 ], [ %627, %629 ], [ %627, %626 ]
  ret i64 %653, !dbg !2307
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @gettext_quote(i8* %0, i32 %1) unnamed_addr #8 !dbg !2308 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2312, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i32 %1, metadata !2313, metadata !DIExpression()), !dbg !2316
  %3 = tail call i8* @dcgettext(i8* null, i8* %0, i32 5) #27, !dbg !2317
  call void @llvm.dbg.value(metadata i8* %3, metadata !2314, metadata !DIExpression()), !dbg !2316
  %4 = icmp eq i8* %3, %0, !dbg !2318
  br i1 %4, label %5, label %72, !dbg !2320

5:                                                ; preds = %2
  %6 = tail call i8* @locale_charset() #27, !dbg !2321
  call void @llvm.dbg.value(metadata i8* %6, metadata !2315, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i8* %6, metadata !2322, metadata !DIExpression()), !dbg !2338
  call void @llvm.dbg.value(metadata i8* undef, metadata !2328, metadata !DIExpression()), !dbg !2338
  call void @llvm.dbg.value(metadata i8 85, metadata !2329, metadata !DIExpression()), !dbg !2338
  call void @llvm.dbg.value(metadata i8 84, metadata !2330, metadata !DIExpression()), !dbg !2338
  call void @llvm.dbg.value(metadata i8 70, metadata !2331, metadata !DIExpression()), !dbg !2338
  call void @llvm.dbg.value(metadata i8 45, metadata !2332, metadata !DIExpression()), !dbg !2338
  call void @llvm.dbg.value(metadata i8 56, metadata !2333, metadata !DIExpression()), !dbg !2338
  call void @llvm.dbg.value(metadata i8 0, metadata !2334, metadata !DIExpression()), !dbg !2338
  call void @llvm.dbg.value(metadata i8 0, metadata !2335, metadata !DIExpression()), !dbg !2338
  call void @llvm.dbg.value(metadata i8 0, metadata !2336, metadata !DIExpression()), !dbg !2338
  call void @llvm.dbg.value(metadata i8 0, metadata !2337, metadata !DIExpression()), !dbg !2338
  %7 = load i8, i8* %6, align 1, !dbg !2341, !tbaa !937
  %8 = and i8 %7, -33, !dbg !2341
  %9 = sext i8 %8 to i32, !dbg !2341
  switch i32 %9, label %69 [
    i32 85, label %10
    i32 71, label %36
  ], !dbg !2341

10:                                               ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !2343, metadata !DIExpression()), !dbg !2357
  call void @llvm.dbg.value(metadata i8* undef, metadata !2348, metadata !DIExpression()), !dbg !2357
  call void @llvm.dbg.value(metadata i8 84, metadata !2349, metadata !DIExpression()), !dbg !2357
  call void @llvm.dbg.value(metadata i8 70, metadata !2350, metadata !DIExpression()), !dbg !2357
  call void @llvm.dbg.value(metadata i8 45, metadata !2351, metadata !DIExpression()), !dbg !2357
  call void @llvm.dbg.value(metadata i8 56, metadata !2352, metadata !DIExpression()), !dbg !2357
  call void @llvm.dbg.value(metadata i8 0, metadata !2353, metadata !DIExpression()), !dbg !2357
  call void @llvm.dbg.value(metadata i8 0, metadata !2354, metadata !DIExpression()), !dbg !2357
  call void @llvm.dbg.value(metadata i8 0, metadata !2355, metadata !DIExpression()), !dbg !2357
  call void @llvm.dbg.value(metadata i8 0, metadata !2356, metadata !DIExpression()), !dbg !2357
  %11 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !2361
  %12 = load i8, i8* %11, align 1, !dbg !2361, !tbaa !937
  %13 = and i8 %12, -33, !dbg !2361
  %14 = icmp eq i8 %13, 84, !dbg !2361
  br i1 %14, label %15, label %69, !dbg !2361

15:                                               ; preds = %10
  call void @llvm.dbg.value(metadata i8* %6, metadata !2363, metadata !DIExpression()), !dbg !2376
  call void @llvm.dbg.value(metadata i8* undef, metadata !2368, metadata !DIExpression()), !dbg !2376
  call void @llvm.dbg.value(metadata i8 70, metadata !2369, metadata !DIExpression()), !dbg !2376
  call void @llvm.dbg.value(metadata i8 45, metadata !2370, metadata !DIExpression()), !dbg !2376
  call void @llvm.dbg.value(metadata i8 56, metadata !2371, metadata !DIExpression()), !dbg !2376
  call void @llvm.dbg.value(metadata i8 0, metadata !2372, metadata !DIExpression()), !dbg !2376
  call void @llvm.dbg.value(metadata i8 0, metadata !2373, metadata !DIExpression()), !dbg !2376
  call void @llvm.dbg.value(metadata i8 0, metadata !2374, metadata !DIExpression()), !dbg !2376
  call void @llvm.dbg.value(metadata i8 0, metadata !2375, metadata !DIExpression()), !dbg !2376
  %16 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !2380
  %17 = load i8, i8* %16, align 1, !dbg !2380, !tbaa !937
  %18 = and i8 %17, -33, !dbg !2380
  %19 = icmp eq i8 %18, 70, !dbg !2380
  br i1 %19, label %20, label %69, !dbg !2380

20:                                               ; preds = %15
  call void @llvm.dbg.value(metadata i8* %6, metadata !2382, metadata !DIExpression()), !dbg !2394
  call void @llvm.dbg.value(metadata i8* undef, metadata !2387, metadata !DIExpression()), !dbg !2394
  call void @llvm.dbg.value(metadata i8 45, metadata !2388, metadata !DIExpression()), !dbg !2394
  call void @llvm.dbg.value(metadata i8 56, metadata !2389, metadata !DIExpression()), !dbg !2394
  call void @llvm.dbg.value(metadata i8 0, metadata !2390, metadata !DIExpression()), !dbg !2394
  call void @llvm.dbg.value(metadata i8 0, metadata !2391, metadata !DIExpression()), !dbg !2394
  call void @llvm.dbg.value(metadata i8 0, metadata !2392, metadata !DIExpression()), !dbg !2394
  call void @llvm.dbg.value(metadata i8 0, metadata !2393, metadata !DIExpression()), !dbg !2394
  %21 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !2398
  %22 = load i8, i8* %21, align 1, !dbg !2398, !tbaa !937
  %23 = icmp eq i8 %22, 45, !dbg !2398
  br i1 %23, label %24, label %69, !dbg !2400

24:                                               ; preds = %20
  call void @llvm.dbg.value(metadata i8* %6, metadata !2401, metadata !DIExpression()), !dbg !2412
  call void @llvm.dbg.value(metadata i8* undef, metadata !2406, metadata !DIExpression()), !dbg !2412
  call void @llvm.dbg.value(metadata i8 56, metadata !2407, metadata !DIExpression()), !dbg !2412
  call void @llvm.dbg.value(metadata i8 0, metadata !2408, metadata !DIExpression()), !dbg !2412
  call void @llvm.dbg.value(metadata i8 0, metadata !2409, metadata !DIExpression()), !dbg !2412
  call void @llvm.dbg.value(metadata i8 0, metadata !2410, metadata !DIExpression()), !dbg !2412
  call void @llvm.dbg.value(metadata i8 0, metadata !2411, metadata !DIExpression()), !dbg !2412
  %25 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !2416
  %26 = load i8, i8* %25, align 1, !dbg !2416, !tbaa !937
  %27 = icmp eq i8 %26, 56, !dbg !2416
  br i1 %27, label %28, label %69, !dbg !2418

28:                                               ; preds = %24
  call void @llvm.dbg.value(metadata i8* %6, metadata !2419, metadata !DIExpression()), !dbg !2429
  call void @llvm.dbg.value(metadata i8* undef, metadata !2424, metadata !DIExpression()), !dbg !2429
  call void @llvm.dbg.value(metadata i8 0, metadata !2425, metadata !DIExpression()), !dbg !2429
  call void @llvm.dbg.value(metadata i8 0, metadata !2426, metadata !DIExpression()), !dbg !2429
  call void @llvm.dbg.value(metadata i8 0, metadata !2427, metadata !DIExpression()), !dbg !2429
  call void @llvm.dbg.value(metadata i8 0, metadata !2428, metadata !DIExpression()), !dbg !2429
  %29 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !2433
  %30 = load i8, i8* %29, align 1, !dbg !2433, !tbaa !937
  %31 = icmp eq i8 %30, 0, !dbg !2433
  br i1 %31, label %32, label %69, !dbg !2435

32:                                               ; preds = %28
  %33 = load i8, i8* %0, align 1, !dbg !2436, !tbaa !937
  %34 = icmp eq i8 %33, 96, !dbg !2437
  %35 = select i1 %34, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14.79, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15.80, i64 0, i64 0), !dbg !2436
  br label %72, !dbg !2438

36:                                               ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !2343, metadata !DIExpression()), !dbg !2439
  call void @llvm.dbg.value(metadata i8* undef, metadata !2348, metadata !DIExpression()), !dbg !2439
  call void @llvm.dbg.value(metadata i8 66, metadata !2349, metadata !DIExpression()), !dbg !2439
  call void @llvm.dbg.value(metadata i8 49, metadata !2350, metadata !DIExpression()), !dbg !2439
  call void @llvm.dbg.value(metadata i8 56, metadata !2351, metadata !DIExpression()), !dbg !2439
  call void @llvm.dbg.value(metadata i8 48, metadata !2352, metadata !DIExpression()), !dbg !2439
  call void @llvm.dbg.value(metadata i8 51, metadata !2353, metadata !DIExpression()), !dbg !2439
  call void @llvm.dbg.value(metadata i8 48, metadata !2354, metadata !DIExpression()), !dbg !2439
  call void @llvm.dbg.value(metadata i8 0, metadata !2355, metadata !DIExpression()), !dbg !2439
  call void @llvm.dbg.value(metadata i8 0, metadata !2356, metadata !DIExpression()), !dbg !2439
  %37 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !2443
  %38 = load i8, i8* %37, align 1, !dbg !2443, !tbaa !937
  %39 = and i8 %38, -33, !dbg !2443
  %40 = icmp eq i8 %39, 66, !dbg !2443
  br i1 %40, label %41, label %69, !dbg !2443

41:                                               ; preds = %36
  call void @llvm.dbg.value(metadata i8* %6, metadata !2363, metadata !DIExpression()), !dbg !2444
  call void @llvm.dbg.value(metadata i8* undef, metadata !2368, metadata !DIExpression()), !dbg !2444
  call void @llvm.dbg.value(metadata i8 49, metadata !2369, metadata !DIExpression()), !dbg !2444
  call void @llvm.dbg.value(metadata i8 56, metadata !2370, metadata !DIExpression()), !dbg !2444
  call void @llvm.dbg.value(metadata i8 48, metadata !2371, metadata !DIExpression()), !dbg !2444
  call void @llvm.dbg.value(metadata i8 51, metadata !2372, metadata !DIExpression()), !dbg !2444
  call void @llvm.dbg.value(metadata i8 48, metadata !2373, metadata !DIExpression()), !dbg !2444
  call void @llvm.dbg.value(metadata i8 0, metadata !2374, metadata !DIExpression()), !dbg !2444
  call void @llvm.dbg.value(metadata i8 0, metadata !2375, metadata !DIExpression()), !dbg !2444
  %42 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !2446
  %43 = load i8, i8* %42, align 1, !dbg !2446, !tbaa !937
  %44 = icmp eq i8 %43, 49, !dbg !2446
  br i1 %44, label %45, label %69, !dbg !2447

45:                                               ; preds = %41
  call void @llvm.dbg.value(metadata i8* %6, metadata !2382, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i8* undef, metadata !2387, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i8 56, metadata !2388, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i8 48, metadata !2389, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i8 51, metadata !2390, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i8 48, metadata !2391, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i8 0, metadata !2392, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i8 0, metadata !2393, metadata !DIExpression()), !dbg !2448
  %46 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !2450
  %47 = load i8, i8* %46, align 1, !dbg !2450, !tbaa !937
  %48 = icmp eq i8 %47, 56, !dbg !2450
  br i1 %48, label %49, label %69, !dbg !2451

49:                                               ; preds = %45
  call void @llvm.dbg.value(metadata i8* %6, metadata !2401, metadata !DIExpression()), !dbg !2452
  call void @llvm.dbg.value(metadata i8* undef, metadata !2406, metadata !DIExpression()), !dbg !2452
  call void @llvm.dbg.value(metadata i8 48, metadata !2407, metadata !DIExpression()), !dbg !2452
  call void @llvm.dbg.value(metadata i8 51, metadata !2408, metadata !DIExpression()), !dbg !2452
  call void @llvm.dbg.value(metadata i8 48, metadata !2409, metadata !DIExpression()), !dbg !2452
  call void @llvm.dbg.value(metadata i8 0, metadata !2410, metadata !DIExpression()), !dbg !2452
  call void @llvm.dbg.value(metadata i8 0, metadata !2411, metadata !DIExpression()), !dbg !2452
  %50 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !2454
  %51 = load i8, i8* %50, align 1, !dbg !2454, !tbaa !937
  %52 = icmp eq i8 %51, 48, !dbg !2454
  br i1 %52, label %53, label %69, !dbg !2455

53:                                               ; preds = %49
  call void @llvm.dbg.value(metadata i8* %6, metadata !2419, metadata !DIExpression()), !dbg !2456
  call void @llvm.dbg.value(metadata i8* undef, metadata !2424, metadata !DIExpression()), !dbg !2456
  call void @llvm.dbg.value(metadata i8 51, metadata !2425, metadata !DIExpression()), !dbg !2456
  call void @llvm.dbg.value(metadata i8 48, metadata !2426, metadata !DIExpression()), !dbg !2456
  call void @llvm.dbg.value(metadata i8 0, metadata !2427, metadata !DIExpression()), !dbg !2456
  call void @llvm.dbg.value(metadata i8 0, metadata !2428, metadata !DIExpression()), !dbg !2456
  %54 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !2458
  %55 = load i8, i8* %54, align 1, !dbg !2458, !tbaa !937
  %56 = icmp eq i8 %55, 51, !dbg !2458
  br i1 %56, label %57, label %69, !dbg !2459

57:                                               ; preds = %53
  call void @llvm.dbg.value(metadata i8* %6, metadata !2460, metadata !DIExpression()), !dbg !2469
  call void @llvm.dbg.value(metadata i8* undef, metadata !2465, metadata !DIExpression()), !dbg !2469
  call void @llvm.dbg.value(metadata i8 48, metadata !2466, metadata !DIExpression()), !dbg !2469
  call void @llvm.dbg.value(metadata i8 0, metadata !2467, metadata !DIExpression()), !dbg !2469
  call void @llvm.dbg.value(metadata i8 0, metadata !2468, metadata !DIExpression()), !dbg !2469
  %58 = getelementptr inbounds i8, i8* %6, i64 6, !dbg !2473
  %59 = load i8, i8* %58, align 1, !dbg !2473, !tbaa !937
  %60 = icmp eq i8 %59, 48, !dbg !2473
  br i1 %60, label %61, label %69, !dbg !2475

61:                                               ; preds = %57
  call void @llvm.dbg.value(metadata i8* %6, metadata !2476, metadata !DIExpression()), !dbg !2484
  call void @llvm.dbg.value(metadata i8* undef, metadata !2481, metadata !DIExpression()), !dbg !2484
  call void @llvm.dbg.value(metadata i8 0, metadata !2482, metadata !DIExpression()), !dbg !2484
  call void @llvm.dbg.value(metadata i8 0, metadata !2483, metadata !DIExpression()), !dbg !2484
  %62 = getelementptr inbounds i8, i8* %6, i64 7, !dbg !2488
  %63 = load i8, i8* %62, align 1, !dbg !2488, !tbaa !937
  %64 = icmp eq i8 %63, 0, !dbg !2488
  br i1 %64, label %65, label %69, !dbg !2490

65:                                               ; preds = %61
  %66 = load i8, i8* %0, align 1, !dbg !2491, !tbaa !937
  %67 = icmp eq i8 %66, 96, !dbg !2492
  %68 = select i1 %67, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17.81, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18.82, i64 0, i64 0), !dbg !2491
  br label %72, !dbg !2493

69:                                               ; preds = %5, %28, %24, %20, %15, %10, %57, %53, %49, %45, %41, %36, %61
  %70 = icmp eq i32 %1, 9, !dbg !2494
  %71 = select i1 %70, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.78, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.77, i64 0, i64 0), !dbg !2495
  br label %72, !dbg !2496

72:                                               ; preds = %2, %69, %65, %32
  %73 = phi i8* [ %35, %32 ], [ %68, %65 ], [ %71, %69 ], [ %3, %2 ], !dbg !2316
  ret i8* %73, !dbg !2497
}

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i64 @strlen(i8* nocapture) local_unnamed_addr #6

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #13

; Function Attrs: nounwind
declare !dbg !2498 i32 @iswprint(i32) local_unnamed_addr #2

; Function Attrs: nounwind readonly willreturn
declare !dbg !2502 i32 @mbsinit(%struct.__mbstate_t*) local_unnamed_addr #20

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_alloc(i8* %0, i64 %1, %struct.quoting_options* %2) local_unnamed_addr #8 !dbg !2508 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2512, metadata !DIExpression()), !dbg !2515
  call void @llvm.dbg.value(metadata i64 %1, metadata !2513, metadata !DIExpression()), !dbg !2515
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2514, metadata !DIExpression()), !dbg !2515
  call void @llvm.dbg.value(metadata i8* %0, metadata !2516, metadata !DIExpression()) #27, !dbg !2529
  call void @llvm.dbg.value(metadata i64 %1, metadata !2521, metadata !DIExpression()) #27, !dbg !2529
  call void @llvm.dbg.value(metadata i64* null, metadata !2522, metadata !DIExpression()) #27, !dbg !2529
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2523, metadata !DIExpression()) #27, !dbg !2529
  %4 = icmp eq %struct.quoting_options* %2, null, !dbg !2531
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %2, !dbg !2531
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2524, metadata !DIExpression()) #27, !dbg !2529
  %6 = tail call i32* @__errno_location() #31, !dbg !2532
  %7 = load i32, i32* %6, align 4, !dbg !2532, !tbaa !1228
  call void @llvm.dbg.value(metadata i32 %7, metadata !2525, metadata !DIExpression()) #27, !dbg !2529
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2533
  %9 = load i32, i32* %8, align 4, !dbg !2533, !tbaa !1736
  %10 = or i32 %9, 1, !dbg !2534
  call void @llvm.dbg.value(metadata i32 %10, metadata !2526, metadata !DIExpression()) #27, !dbg !2529
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2535
  %12 = load i32, i32* %11, align 8, !dbg !2535, !tbaa !1685
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !2536
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2537
  %15 = load i8*, i8** %14, align 8, !dbg !2537, !tbaa !1758
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2538
  %17 = load i8*, i8** %16, align 8, !dbg !2538, !tbaa !1761
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %12, i32 %10, i32* nonnull %13, i8* %15, i8* %17) #27, !dbg !2539
  %19 = add i64 %18, 1, !dbg !2540
  call void @llvm.dbg.value(metadata i64 %19, metadata !2527, metadata !DIExpression()) #27, !dbg !2529
  call void @llvm.dbg.value(metadata i64 %19, metadata !2541, metadata !DIExpression()) #27, !dbg !2546
  %20 = tail call noalias i8* @xmalloc(i64 %19) #27, !dbg !2548
  call void @llvm.dbg.value(metadata i8* %20, metadata !2528, metadata !DIExpression()) #27, !dbg !2529
  %21 = load i32, i32* %11, align 8, !dbg !2549, !tbaa !1685
  %22 = load i8*, i8** %14, align 8, !dbg !2550, !tbaa !1758
  %23 = load i8*, i8** %16, align 8, !dbg !2551, !tbaa !1761
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %20, i64 %19, i8* %0, i64 %1, i32 %21, i32 %10, i32* nonnull %13, i8* %22, i8* %23) #27, !dbg !2552
  store i32 %7, i32* %6, align 4, !dbg !2553, !tbaa !1228
  ret i8* %20, !dbg !2554
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_alloc_mem(i8* %0, i64 %1, i64* %2, %struct.quoting_options* %3) local_unnamed_addr #8 !dbg !2517 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2516, metadata !DIExpression()), !dbg !2555
  call void @llvm.dbg.value(metadata i64 %1, metadata !2521, metadata !DIExpression()), !dbg !2555
  call void @llvm.dbg.value(metadata i64* %2, metadata !2522, metadata !DIExpression()), !dbg !2555
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2523, metadata !DIExpression()), !dbg !2555
  %5 = icmp eq %struct.quoting_options* %3, null, !dbg !2556
  %6 = select i1 %5, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %3, !dbg !2556
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !2524, metadata !DIExpression()), !dbg !2555
  %7 = tail call i32* @__errno_location() #31, !dbg !2557
  %8 = load i32, i32* %7, align 4, !dbg !2557, !tbaa !1228
  call void @llvm.dbg.value(metadata i32 %8, metadata !2525, metadata !DIExpression()), !dbg !2555
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !2558
  %10 = load i32, i32* %9, align 4, !dbg !2558, !tbaa !1736
  %11 = icmp eq i64* %2, null, !dbg !2559
  %12 = zext i1 %11 to i32, !dbg !2559
  %13 = or i32 %10, %12, !dbg !2560
  call void @llvm.dbg.value(metadata i32 %13, metadata !2526, metadata !DIExpression()), !dbg !2555
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2561
  %15 = load i32, i32* %14, align 8, !dbg !2561, !tbaa !1685
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !2562
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2563
  %18 = load i8*, i8** %17, align 8, !dbg !2563, !tbaa !1758
  %19 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2564
  %20 = load i8*, i8** %19, align 8, !dbg !2564, !tbaa !1761
  %21 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %15, i32 %13, i32* nonnull %16, i8* %18, i8* %20), !dbg !2565
  %22 = add i64 %21, 1, !dbg !2566
  call void @llvm.dbg.value(metadata i64 %22, metadata !2527, metadata !DIExpression()), !dbg !2555
  call void @llvm.dbg.value(metadata i64 %22, metadata !2541, metadata !DIExpression()) #27, !dbg !2567
  %23 = tail call noalias i8* @xmalloc(i64 %22) #27, !dbg !2569
  call void @llvm.dbg.value(metadata i8* %23, metadata !2528, metadata !DIExpression()), !dbg !2555
  %24 = load i32, i32* %14, align 8, !dbg !2570, !tbaa !1685
  %25 = load i8*, i8** %17, align 8, !dbg !2571, !tbaa !1758
  %26 = load i8*, i8** %19, align 8, !dbg !2572, !tbaa !1761
  %27 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %23, i64 %22, i8* %0, i64 %1, i32 %24, i32 %13, i32* nonnull %16, i8* %25, i8* %26), !dbg !2573
  store i32 %8, i32* %7, align 4, !dbg !2574, !tbaa !1228
  br i1 %11, label %29, label %28, !dbg !2575

28:                                               ; preds = %4
  store i64 %21, i64* %2, align 8, !dbg !2576, !tbaa !2578
  br label %29, !dbg !2579

29:                                               ; preds = %28, %4
  ret i8* %23, !dbg !2580
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @quotearg_free() local_unnamed_addr #8 !dbg !2581 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2585, !tbaa !727
  call void @llvm.dbg.value(metadata %struct.slotvec* %1, metadata !2583, metadata !DIExpression()), !dbg !2586
  call void @llvm.dbg.value(metadata i32 1, metadata !2584, metadata !DIExpression()), !dbg !2586
  %2 = load i32, i32* @nslots, align 4, !dbg !2587, !tbaa !1228
  %3 = icmp sgt i32 %2, 1, !dbg !2590
  br i1 %3, label %4, label %12, !dbg !2591

4:                                                ; preds = %0
  %5 = zext i32 %2 to i64, !dbg !2590
  br label %6, !dbg !2591

6:                                                ; preds = %4, %6
  %7 = phi i64 [ 1, %4 ], [ %10, %6 ]
  call void @llvm.dbg.value(metadata i64 %7, metadata !2584, metadata !DIExpression()), !dbg !2586
  %8 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %7, i32 1, !dbg !2592
  %9 = load i8*, i8** %8, align 8, !dbg !2592, !tbaa !2593
  tail call void @free(i8* %9) #27, !dbg !2595
  %10 = add nuw nsw i64 %7, 1, !dbg !2596
  call void @llvm.dbg.value(metadata i64 %10, metadata !2584, metadata !DIExpression()), !dbg !2586
  %11 = icmp eq i64 %10, %5, !dbg !2590
  br i1 %11, label %12, label %6, !dbg !2591, !llvm.loop !2597

12:                                               ; preds = %6, %0
  %13 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1, !dbg !2599
  %14 = load i8*, i8** %13, align 8, !dbg !2599, !tbaa !2593
  %15 = icmp eq i8* %14, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2601
  br i1 %15, label %17, label %16, !dbg !2602

16:                                               ; preds = %12
  tail call void @free(i8* %14) #27, !dbg !2603
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !dbg !2605, !tbaa !2606
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !dbg !2607, !tbaa !2593
  br label %17, !dbg !2608

17:                                               ; preds = %16, %12
  %18 = icmp eq %struct.slotvec* %1, @slotvec0, !dbg !2609
  br i1 %18, label %21, label %19, !dbg !2611

19:                                               ; preds = %17
  %20 = bitcast %struct.slotvec* %1 to i8*, !dbg !2612
  tail call void @free(i8* %20) #27, !dbg !2614
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !2615, !tbaa !727
  br label %21, !dbg !2616

21:                                               ; preds = %19, %17
  store i32 1, i32* @nslots, align 4, !dbg !2617, !tbaa !1228
  ret void, !dbg !2618
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n(i32 %0, i8* %1) local_unnamed_addr #8 !dbg !2619 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2621, metadata !DIExpression()), !dbg !2623
  call void @llvm.dbg.value(metadata i8* %1, metadata !2622, metadata !DIExpression()), !dbg !2623
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2624
  ret i8* %3, !dbg !2625
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* %3) unnamed_addr #8 !dbg !2626 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2630, metadata !DIExpression()), !dbg !2645
  call void @llvm.dbg.value(metadata i8* %1, metadata !2631, metadata !DIExpression()), !dbg !2645
  call void @llvm.dbg.value(metadata i64 %2, metadata !2632, metadata !DIExpression()), !dbg !2645
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2633, metadata !DIExpression()), !dbg !2645
  %5 = tail call i32* @__errno_location() #31, !dbg !2646
  %6 = load i32, i32* %5, align 4, !dbg !2646, !tbaa !1228
  call void @llvm.dbg.value(metadata i32 %6, metadata !2634, metadata !DIExpression()), !dbg !2645
  %7 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2647, !tbaa !727
  call void @llvm.dbg.value(metadata %struct.slotvec* %7, metadata !2635, metadata !DIExpression()), !dbg !2645
  %8 = icmp slt i32 %0, 0, !dbg !2648
  br i1 %8, label %9, label %10, !dbg !2650

9:                                                ; preds = %4
  tail call void @abort() #29, !dbg !2651
  unreachable, !dbg !2651

10:                                               ; preds = %4
  %11 = load i32, i32* @nslots, align 4, !dbg !2652, !tbaa !1228
  %12 = icmp sgt i32 %11, %0, !dbg !2653
  br i1 %12, label %34, label %13, !dbg !2654

13:                                               ; preds = %10
  %14 = icmp eq %struct.slotvec* %7, @slotvec0, !dbg !2655
  call void @llvm.dbg.value(metadata i1 %14, metadata !2636, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2656
  call void @llvm.dbg.value(metadata i32 2147483646, metadata !2639, metadata !DIExpression()), !dbg !2656
  %15 = icmp eq i32 %0, 2147483647, !dbg !2657
  br i1 %15, label %16, label %17, !dbg !2659

16:                                               ; preds = %13
  tail call void @xalloc_die() #29, !dbg !2660
  unreachable, !dbg !2660

17:                                               ; preds = %13
  %18 = select i1 %14, %struct.slotvec* null, %struct.slotvec* %7, !dbg !2661
  %19 = bitcast %struct.slotvec* %18 to i8*, !dbg !2661
  %20 = add nuw nsw i32 %0, 1, !dbg !2662
  %21 = zext i32 %20 to i64
  %22 = shl nuw nsw i64 %21, 4, !dbg !2663
  %23 = tail call i8* @xrealloc(i8* %19, i64 %22) #27, !dbg !2664
  %24 = bitcast i8* %23 to %struct.slotvec*, !dbg !2664
  call void @llvm.dbg.value(metadata %struct.slotvec* %24, metadata !2635, metadata !DIExpression()), !dbg !2645
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !dbg !2665, !tbaa !727
  br i1 %14, label %25, label %26, !dbg !2666

25:                                               ; preds = %17
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(16) %23, i8* nonnull align 8 dereferenceable(16) bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i1 false), !dbg !2667, !tbaa.struct !2669
  br label %26, !dbg !2670

26:                                               ; preds = %25, %17
  %27 = load i32, i32* @nslots, align 4, !dbg !2671, !tbaa !1228
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28, !dbg !2672
  %30 = bitcast %struct.slotvec* %29 to i8*, !dbg !2673
  %31 = sub nsw i32 %20, %27, !dbg !2674
  %32 = sext i32 %31 to i64, !dbg !2675
  %33 = shl nsw i64 %32, 4, !dbg !2676
  call void @llvm.dbg.value(metadata i8* %30, metadata !2071, metadata !DIExpression()) #27, !dbg !2677
  call void @llvm.dbg.value(metadata i32 0, metadata !2074, metadata !DIExpression()) #27, !dbg !2677
  call void @llvm.dbg.value(metadata i64 %33, metadata !2075, metadata !DIExpression()) #27, !dbg !2677
  call void @llvm.memset.p0i8.i64(i8* nonnull align 1 %30, i8 0, i64 %33, i1 false) #27, !dbg !2679
  store i32 %20, i32* @nslots, align 4, !dbg !2680, !tbaa !1228
  br label %34, !dbg !2681

34:                                               ; preds = %26, %10
  %35 = phi %struct.slotvec* [ %24, %26 ], [ %7, %10 ], !dbg !2645
  call void @llvm.dbg.value(metadata %struct.slotvec* %35, metadata !2635, metadata !DIExpression()), !dbg !2645
  %36 = zext i32 %0 to i64, !dbg !2682
  %37 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 0, !dbg !2683
  %38 = load i64, i64* %37, align 8, !dbg !2683, !tbaa !2606
  call void @llvm.dbg.value(metadata i64 %38, metadata !2640, metadata !DIExpression()), !dbg !2684
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 1, !dbg !2685
  %40 = load i8*, i8** %39, align 8, !dbg !2685, !tbaa !2593
  call void @llvm.dbg.value(metadata i8* %40, metadata !2642, metadata !DIExpression()), !dbg !2684
  %41 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !2686
  %42 = load i32, i32* %41, align 4, !dbg !2686, !tbaa !1736
  %43 = or i32 %42, 1, !dbg !2687
  call void @llvm.dbg.value(metadata i32 %43, metadata !2643, metadata !DIExpression()), !dbg !2684
  %44 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2688
  %45 = load i32, i32* %44, align 8, !dbg !2688, !tbaa !1685
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !2689
  %47 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !2690
  %48 = load i8*, i8** %47, align 8, !dbg !2690, !tbaa !1758
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !2691
  %50 = load i8*, i8** %49, align 8, !dbg !2691, !tbaa !1761
  %51 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %40, i64 %38, i8* %1, i64 %2, i32 %45, i32 %43, i32* nonnull %46, i8* %48, i8* %50), !dbg !2692
  call void @llvm.dbg.value(metadata i64 %51, metadata !2644, metadata !DIExpression()), !dbg !2684
  %52 = icmp ugt i64 %38, %51, !dbg !2693
  br i1 %52, label %63, label %53, !dbg !2695

53:                                               ; preds = %34
  %54 = add i64 %51, 1, !dbg !2696
  call void @llvm.dbg.value(metadata i64 %54, metadata !2640, metadata !DIExpression()), !dbg !2684
  store i64 %54, i64* %37, align 8, !dbg !2698, !tbaa !2606
  %55 = icmp eq i8* %40, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2699
  br i1 %55, label %57, label %56, !dbg !2701

56:                                               ; preds = %53
  tail call void @free(i8* %40) #27, !dbg !2702
  br label %57, !dbg !2702

57:                                               ; preds = %56, %53
  call void @llvm.dbg.value(metadata i64 %54, metadata !2541, metadata !DIExpression()) #27, !dbg !2703
  %58 = tail call noalias i8* @xmalloc(i64 %54) #27, !dbg !2705
  call void @llvm.dbg.value(metadata i8* %58, metadata !2642, metadata !DIExpression()), !dbg !2684
  store i8* %58, i8** %39, align 8, !dbg !2706, !tbaa !2593
  %59 = load i32, i32* %44, align 8, !dbg !2707, !tbaa !1685
  %60 = load i8*, i8** %47, align 8, !dbg !2708, !tbaa !1758
  %61 = load i8*, i8** %49, align 8, !dbg !2709, !tbaa !1761
  %62 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %58, i64 %54, i8* %1, i64 %2, i32 %59, i32 %43, i32* nonnull %46, i8* %60, i8* %61), !dbg !2710
  br label %63, !dbg !2711

63:                                               ; preds = %57, %34
  %64 = phi i8* [ %58, %57 ], [ %40, %34 ], !dbg !2684
  call void @llvm.dbg.value(metadata i8* %64, metadata !2642, metadata !DIExpression()), !dbg !2684
  store i32 %6, i32* %5, align 4, !dbg !2712, !tbaa !1228
  ret i8* %64, !dbg !2713
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_mem(i32 %0, i8* %1, i64 %2) local_unnamed_addr #8 !dbg !2714 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2718, metadata !DIExpression()), !dbg !2721
  call void @llvm.dbg.value(metadata i8* %1, metadata !2719, metadata !DIExpression()), !dbg !2721
  call void @llvm.dbg.value(metadata i64 %2, metadata !2720, metadata !DIExpression()), !dbg !2721
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2722
  ret i8* %4, !dbg !2723
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg(i8* %0) local_unnamed_addr #8 !dbg !2724 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2726, metadata !DIExpression()), !dbg !2727
  call void @llvm.dbg.value(metadata i32 0, metadata !2621, metadata !DIExpression()) #27, !dbg !2728
  call void @llvm.dbg.value(metadata i8* %0, metadata !2622, metadata !DIExpression()) #27, !dbg !2728
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @default_quoting_options) #27, !dbg !2730
  ret i8* %2, !dbg !2731
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_mem(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !2732 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2736, metadata !DIExpression()), !dbg !2738
  call void @llvm.dbg.value(metadata i64 %1, metadata !2737, metadata !DIExpression()), !dbg !2738
  call void @llvm.dbg.value(metadata i32 0, metadata !2718, metadata !DIExpression()) #27, !dbg !2739
  call void @llvm.dbg.value(metadata i8* %0, metadata !2719, metadata !DIExpression()) #27, !dbg !2739
  call void @llvm.dbg.value(metadata i64 %1, metadata !2720, metadata !DIExpression()) #27, !dbg !2739
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @default_quoting_options) #27, !dbg !2741
  ret i8* %3, !dbg !2742
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style(i32 %0, i32 %1, i8* %2) local_unnamed_addr #8 !dbg !2743 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2747, metadata !DIExpression()), !dbg !2751
  call void @llvm.dbg.value(metadata i32 %1, metadata !2748, metadata !DIExpression()), !dbg !2751
  call void @llvm.dbg.value(metadata i8* %2, metadata !2749, metadata !DIExpression()), !dbg !2751
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2752
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #27, !dbg !2752
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2750, metadata !DIExpression()), !dbg !2753
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2754), !dbg !2757
  call void @llvm.dbg.value(metadata i32 %1, metadata !2758, metadata !DIExpression()) #27, !dbg !2764
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2763, metadata !DIExpression()) #27, !dbg !2766
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false) #27, !dbg !2766, !alias.scope !2754
  %6 = icmp eq i32 %1, 10, !dbg !2767
  br i1 %6, label %7, label %8, !dbg !2769

7:                                                ; preds = %3
  tail call void @abort() #29, !dbg !2770, !noalias !2754
  unreachable, !dbg !2770

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2771
  store i32 %1, i32* %9, align 8, !dbg !2772, !tbaa !1685, !alias.scope !2754
  %10 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !2773
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #27, !dbg !2774
  ret i8* %10, !dbg !2775
}

; Function Attrs: inaccessiblememonly nofree nosync nounwind willreturn
declare void @llvm.experimental.noalias.scope.decl(metadata) #21

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_mem(i32 %0, i32 %1, i8* %2, i64 %3) local_unnamed_addr #8 !dbg !2776 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2780, metadata !DIExpression()), !dbg !2785
  call void @llvm.dbg.value(metadata i32 %1, metadata !2781, metadata !DIExpression()), !dbg !2785
  call void @llvm.dbg.value(metadata i8* %2, metadata !2782, metadata !DIExpression()), !dbg !2785
  call void @llvm.dbg.value(metadata i64 %3, metadata !2783, metadata !DIExpression()), !dbg !2785
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2786
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #27, !dbg !2786
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2784, metadata !DIExpression()), !dbg !2787
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2788), !dbg !2791
  call void @llvm.dbg.value(metadata i32 %1, metadata !2758, metadata !DIExpression()) #27, !dbg !2792
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2763, metadata !DIExpression()) #27, !dbg !2794
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %6, i8 0, i64 56, i1 false) #27, !dbg !2794, !alias.scope !2788
  %7 = icmp eq i32 %1, 10, !dbg !2795
  br i1 %7, label %8, label %9, !dbg !2796

8:                                                ; preds = %4
  tail call void @abort() #29, !dbg !2797, !noalias !2788
  unreachable, !dbg !2797

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2798
  store i32 %1, i32* %10, align 8, !dbg !2799, !tbaa !1685, !alias.scope !2788
  %11 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5), !dbg !2800
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #27, !dbg !2801
  ret i8* %11, !dbg !2802
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style(i32 %0, i8* %1) local_unnamed_addr #8 !dbg !2803 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2807, metadata !DIExpression()), !dbg !2809
  call void @llvm.dbg.value(metadata i8* %1, metadata !2808, metadata !DIExpression()), !dbg !2809
  call void @llvm.dbg.value(metadata i32 0, metadata !2747, metadata !DIExpression()) #27, !dbg !2810
  call void @llvm.dbg.value(metadata i32 %0, metadata !2748, metadata !DIExpression()) #27, !dbg !2810
  call void @llvm.dbg.value(metadata i8* %1, metadata !2749, metadata !DIExpression()) #27, !dbg !2810
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2812
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #27, !dbg !2812
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2750, metadata !DIExpression()) #27, !dbg !2813
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2814) #27, !dbg !2817
  call void @llvm.dbg.value(metadata i32 %0, metadata !2758, metadata !DIExpression()) #27, !dbg !2818
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2763, metadata !DIExpression()) #27, !dbg !2820
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false) #27, !dbg !2820, !alias.scope !2814
  %5 = icmp eq i32 %0, 10, !dbg !2821
  br i1 %5, label %6, label %7, !dbg !2822

6:                                                ; preds = %2
  tail call void @abort() #29, !dbg !2823, !noalias !2814
  unreachable, !dbg !2823

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2824
  store i32 %0, i32* %8, align 8, !dbg !2825, !tbaa !1685, !alias.scope !2814
  %9 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 -1, %struct.quoting_options* nonnull %3) #27, !dbg !2826
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #27, !dbg !2827
  ret i8* %9, !dbg !2828
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style_mem(i32 %0, i8* %1, i64 %2) local_unnamed_addr #8 !dbg !2829 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2833, metadata !DIExpression()), !dbg !2836
  call void @llvm.dbg.value(metadata i8* %1, metadata !2834, metadata !DIExpression()), !dbg !2836
  call void @llvm.dbg.value(metadata i64 %2, metadata !2835, metadata !DIExpression()), !dbg !2836
  call void @llvm.dbg.value(metadata i32 0, metadata !2780, metadata !DIExpression()) #27, !dbg !2837
  call void @llvm.dbg.value(metadata i32 %0, metadata !2781, metadata !DIExpression()) #27, !dbg !2837
  call void @llvm.dbg.value(metadata i8* %1, metadata !2782, metadata !DIExpression()) #27, !dbg !2837
  call void @llvm.dbg.value(metadata i64 %2, metadata !2783, metadata !DIExpression()) #27, !dbg !2837
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2839
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #27, !dbg !2839
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2784, metadata !DIExpression()) #27, !dbg !2840
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2841) #27, !dbg !2844
  call void @llvm.dbg.value(metadata i32 %0, metadata !2758, metadata !DIExpression()) #27, !dbg !2845
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2763, metadata !DIExpression()) #27, !dbg !2847
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false) #27, !dbg !2847, !alias.scope !2841
  %6 = icmp eq i32 %0, 10, !dbg !2848
  br i1 %6, label %7, label %8, !dbg !2849

7:                                                ; preds = %3
  tail call void @abort() #29, !dbg !2850, !noalias !2841
  unreachable, !dbg !2850

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2851
  store i32 %0, i32* %9, align 8, !dbg !2852, !tbaa !1685, !alias.scope !2841
  %10 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 %2, %struct.quoting_options* nonnull %4) #27, !dbg !2853
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #27, !dbg !2854
  ret i8* %10, !dbg !2855
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char_mem(i8* %0, i64 %1, i8 signext %2) local_unnamed_addr #8 !dbg !2856 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2860, metadata !DIExpression()), !dbg !2864
  call void @llvm.dbg.value(metadata i64 %1, metadata !2861, metadata !DIExpression()), !dbg !2864
  call void @llvm.dbg.value(metadata i8 %2, metadata !2862, metadata !DIExpression()), !dbg !2864
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2865
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #27, !dbg !2865
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2863, metadata !DIExpression()), !dbg !2866
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !2867, !tbaa.struct !2868
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1703, metadata !DIExpression()), !dbg !2869
  call void @llvm.dbg.value(metadata i8 %2, metadata !1704, metadata !DIExpression()), !dbg !2869
  call void @llvm.dbg.value(metadata i32 1, metadata !1705, metadata !DIExpression()), !dbg !2869
  call void @llvm.dbg.value(metadata i8 %2, metadata !1706, metadata !DIExpression()), !dbg !2869
  %6 = lshr i8 %2, 5, !dbg !2871
  %7 = zext i8 %6 to i64, !dbg !2871
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !2872
  call void @llvm.dbg.value(metadata i32* %8, metadata !1707, metadata !DIExpression()), !dbg !2869
  %9 = and i8 %2, 31, !dbg !2873
  %10 = zext i8 %9 to i32, !dbg !2873
  call void @llvm.dbg.value(metadata i32 %10, metadata !1709, metadata !DIExpression()), !dbg !2869
  %11 = load i32, i32* %8, align 4, !dbg !2874, !tbaa !1228
  %12 = lshr i32 %11, %10, !dbg !2875
  %13 = and i32 %12, 1, !dbg !2876
  call void @llvm.dbg.value(metadata i32 %13, metadata !1710, metadata !DIExpression()), !dbg !2869
  %14 = xor i32 %13, 1, !dbg !2877
  %15 = shl i32 %14, %10, !dbg !2878
  %16 = xor i32 %15, %11, !dbg !2879
  store i32 %16, i32* %8, align 4, !dbg !2879, !tbaa !1228
  %17 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %4), !dbg !2880
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #27, !dbg !2881
  ret i8* %17, !dbg !2882
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char(i8* %0, i8 signext %1) local_unnamed_addr #8 !dbg !2883 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2887, metadata !DIExpression()), !dbg !2889
  call void @llvm.dbg.value(metadata i8 %1, metadata !2888, metadata !DIExpression()), !dbg !2889
  call void @llvm.dbg.value(metadata i8* %0, metadata !2860, metadata !DIExpression()) #27, !dbg !2890
  call void @llvm.dbg.value(metadata i64 -1, metadata !2861, metadata !DIExpression()) #27, !dbg !2890
  call void @llvm.dbg.value(metadata i8 %1, metadata !2862, metadata !DIExpression()) #27, !dbg !2890
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2892
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #27, !dbg !2892
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2863, metadata !DIExpression()) #27, !dbg !2893
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %4, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #27, !dbg !2894, !tbaa.struct !2868
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1703, metadata !DIExpression()) #27, !dbg !2895
  call void @llvm.dbg.value(metadata i8 %1, metadata !1704, metadata !DIExpression()) #27, !dbg !2895
  call void @llvm.dbg.value(metadata i32 1, metadata !1705, metadata !DIExpression()) #27, !dbg !2895
  call void @llvm.dbg.value(metadata i8 %1, metadata !1706, metadata !DIExpression()) #27, !dbg !2895
  %5 = lshr i8 %1, 5, !dbg !2897
  %6 = zext i8 %5 to i64, !dbg !2897
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !2898
  call void @llvm.dbg.value(metadata i32* %7, metadata !1707, metadata !DIExpression()) #27, !dbg !2895
  %8 = and i8 %1, 31, !dbg !2899
  %9 = zext i8 %8 to i32, !dbg !2899
  call void @llvm.dbg.value(metadata i32 %9, metadata !1709, metadata !DIExpression()) #27, !dbg !2895
  %10 = load i32, i32* %7, align 4, !dbg !2900, !tbaa !1228
  %11 = lshr i32 %10, %9, !dbg !2901
  %12 = and i32 %11, 1, !dbg !2902
  call void @llvm.dbg.value(metadata i32 %12, metadata !1710, metadata !DIExpression()) #27, !dbg !2895
  %13 = xor i32 %12, 1, !dbg !2903
  %14 = shl i32 %13, %9, !dbg !2904
  %15 = xor i32 %14, %10, !dbg !2905
  store i32 %15, i32* %7, align 4, !dbg !2905, !tbaa !1228
  %16 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %3) #27, !dbg !2906
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #27, !dbg !2907
  ret i8* %16, !dbg !2908
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon(i8* %0) local_unnamed_addr #8 !dbg !2909 {
  %2 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2911, metadata !DIExpression()), !dbg !2912
  call void @llvm.dbg.value(metadata i8* %0, metadata !2887, metadata !DIExpression()) #27, !dbg !2913
  call void @llvm.dbg.value(metadata i8 58, metadata !2888, metadata !DIExpression()) #27, !dbg !2913
  call void @llvm.dbg.value(metadata i8* %0, metadata !2860, metadata !DIExpression()) #27, !dbg !2915
  call void @llvm.dbg.value(metadata i64 -1, metadata !2861, metadata !DIExpression()) #27, !dbg !2915
  call void @llvm.dbg.value(metadata i8 58, metadata !2862, metadata !DIExpression()) #27, !dbg !2915
  %3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !2917
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %3) #27, !dbg !2917
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %2, metadata !2863, metadata !DIExpression()) #27, !dbg !2918
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %3, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #27, !dbg !2919, !tbaa.struct !2868
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !1703, metadata !DIExpression()) #27, !dbg !2920
  call void @llvm.dbg.value(metadata i8 58, metadata !1704, metadata !DIExpression()) #27, !dbg !2920
  call void @llvm.dbg.value(metadata i32 1, metadata !1705, metadata !DIExpression()) #27, !dbg !2920
  call void @llvm.dbg.value(metadata i8 58, metadata !1706, metadata !DIExpression()) #27, !dbg !2920
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !2922
  call void @llvm.dbg.value(metadata i32* %4, metadata !1707, metadata !DIExpression()) #27, !dbg !2920
  call void @llvm.dbg.value(metadata i32 26, metadata !1709, metadata !DIExpression()) #27, !dbg !2920
  %5 = load i32, i32* %4, align 4, !dbg !2923, !tbaa !1228
  call void @llvm.dbg.value(metadata i32 %5, metadata !1710, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)) #27, !dbg !2920
  %6 = or i32 %5, 67108864, !dbg !2924
  store i32 %6, i32* %4, align 4, !dbg !2924, !tbaa !1228
  %7 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %2) #27, !dbg !2925
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %3) #27, !dbg !2926
  ret i8* %7, !dbg !2927
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon_mem(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !2928 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2930, metadata !DIExpression()), !dbg !2932
  call void @llvm.dbg.value(metadata i64 %1, metadata !2931, metadata !DIExpression()), !dbg !2932
  call void @llvm.dbg.value(metadata i8* %0, metadata !2860, metadata !DIExpression()) #27, !dbg !2933
  call void @llvm.dbg.value(metadata i64 %1, metadata !2861, metadata !DIExpression()) #27, !dbg !2933
  call void @llvm.dbg.value(metadata i8 58, metadata !2862, metadata !DIExpression()) #27, !dbg !2933
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2935
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #27, !dbg !2935
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2863, metadata !DIExpression()) #27, !dbg !2936
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %4, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #27, !dbg !2937, !tbaa.struct !2868
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1703, metadata !DIExpression()) #27, !dbg !2938
  call void @llvm.dbg.value(metadata i8 58, metadata !1704, metadata !DIExpression()) #27, !dbg !2938
  call void @llvm.dbg.value(metadata i32 1, metadata !1705, metadata !DIExpression()) #27, !dbg !2938
  call void @llvm.dbg.value(metadata i8 58, metadata !1706, metadata !DIExpression()) #27, !dbg !2938
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !2940
  call void @llvm.dbg.value(metadata i32* %5, metadata !1707, metadata !DIExpression()) #27, !dbg !2938
  call void @llvm.dbg.value(metadata i32 26, metadata !1709, metadata !DIExpression()) #27, !dbg !2938
  %6 = load i32, i32* %5, align 4, !dbg !2941, !tbaa !1228
  call void @llvm.dbg.value(metadata i32 %6, metadata !1710, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)) #27, !dbg !2938
  %7 = or i32 %6, 67108864, !dbg !2942
  store i32 %7, i32* %5, align 4, !dbg !2942, !tbaa !1228
  %8 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %3) #27, !dbg !2943
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #27, !dbg !2944
  ret i8* %8, !dbg !2945
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_colon(i32 %0, i32 %1, i8* %2) local_unnamed_addr #8 !dbg !2946 {
  %4 = alloca %struct.quoting_options, align 8
  %5 = alloca [52 x i8], align 4
  call void @llvm.dbg.declare(metadata [52 x i8]* %5, metadata !2763, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416)), !dbg !2952
  call void @llvm.dbg.value(metadata i32 %0, metadata !2948, metadata !DIExpression()), !dbg !2954
  call void @llvm.dbg.value(metadata i32 %1, metadata !2949, metadata !DIExpression()), !dbg !2954
  call void @llvm.dbg.value(metadata i8* %2, metadata !2950, metadata !DIExpression()), !dbg !2954
  %6 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2955
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #27, !dbg !2955
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2951, metadata !DIExpression()), !dbg !2956
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %5, i64 0, i64 0, !dbg !2957
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %7), !dbg !2957
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2958), !dbg !2957
  call void @llvm.dbg.value(metadata i32 %1, metadata !2758, metadata !DIExpression()) #27, !dbg !2961
  call void @llvm.dbg.value(metadata i32 0, metadata !2763, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2961
  call void @llvm.memset.p0i8.i64(i8* nonnull align 4 dereferenceable(52) %7, i8 0, i64 52, i1 false), !dbg !2952, !alias.scope !2958
  %8 = icmp eq i32 %1, 10, !dbg !2962
  br i1 %8, label %9, label %10, !dbg !2963

9:                                                ; preds = %3
  tail call void @abort() #29, !dbg !2964, !noalias !2958
  unreachable, !dbg !2964

10:                                               ; preds = %3
  call void @llvm.dbg.value(metadata i32 %1, metadata !2763, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2961
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2957
  store i32 %1, i32* %11, align 8, !dbg !2957, !tbaa.struct !2868
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !2957
  %13 = bitcast i32* %12 to i8*, !dbg !2957
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 4 dereferenceable(52) %13, i8* nonnull align 4 dereferenceable(52) %7, i64 52, i1 false), !dbg !2957, !tbaa.struct !2965
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %7), !dbg !2957
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1703, metadata !DIExpression()), !dbg !2966
  call void @llvm.dbg.value(metadata i8 58, metadata !1704, metadata !DIExpression()), !dbg !2966
  call void @llvm.dbg.value(metadata i32 1, metadata !1705, metadata !DIExpression()), !dbg !2966
  call void @llvm.dbg.value(metadata i8 58, metadata !1706, metadata !DIExpression()), !dbg !2966
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 1, !dbg !2968
  call void @llvm.dbg.value(metadata i32* %14, metadata !1707, metadata !DIExpression()), !dbg !2966
  call void @llvm.dbg.value(metadata i32 26, metadata !1709, metadata !DIExpression()), !dbg !2966
  %15 = load i32, i32* %14, align 4, !dbg !2969, !tbaa !1228
  call void @llvm.dbg.value(metadata i32 %15, metadata !1710, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)), !dbg !2966
  %16 = or i32 %15, 67108864, !dbg !2970
  store i32 %16, i32* %14, align 4, !dbg !2970, !tbaa !1228
  %17 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !2971
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #27, !dbg !2972
  ret i8* %17, !dbg !2973
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom(i32 %0, i8* %1, i8* %2, i8* %3) local_unnamed_addr #8 !dbg !2974 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2978, metadata !DIExpression()), !dbg !2982
  call void @llvm.dbg.value(metadata i8* %1, metadata !2979, metadata !DIExpression()), !dbg !2982
  call void @llvm.dbg.value(metadata i8* %2, metadata !2980, metadata !DIExpression()), !dbg !2982
  call void @llvm.dbg.value(metadata i8* %3, metadata !2981, metadata !DIExpression()), !dbg !2982
  call void @llvm.dbg.value(metadata i32 %0, metadata !2983, metadata !DIExpression()) #27, !dbg !2993
  call void @llvm.dbg.value(metadata i8* %1, metadata !2988, metadata !DIExpression()) #27, !dbg !2993
  call void @llvm.dbg.value(metadata i8* %2, metadata !2989, metadata !DIExpression()) #27, !dbg !2993
  call void @llvm.dbg.value(metadata i8* %3, metadata !2990, metadata !DIExpression()) #27, !dbg !2993
  call void @llvm.dbg.value(metadata i64 -1, metadata !2991, metadata !DIExpression()) #27, !dbg !2993
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2995
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #27, !dbg !2995
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2992, metadata !DIExpression()) #27, !dbg !2996
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %6, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false) #27, !dbg !2997, !tbaa.struct !2868
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1743, metadata !DIExpression()) #27, !dbg !2998
  call void @llvm.dbg.value(metadata i8* %1, metadata !1744, metadata !DIExpression()) #27, !dbg !2998
  call void @llvm.dbg.value(metadata i8* %2, metadata !1745, metadata !DIExpression()) #27, !dbg !2998
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1743, metadata !DIExpression()) #27, !dbg !2998
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3000
  store i32 10, i32* %7, align 8, !dbg !3001, !tbaa !1685
  %8 = icmp ne i8* %1, null, !dbg !3002
  %9 = icmp ne i8* %2, null
  %10 = and i1 %8, %9, !dbg !3003
  br i1 %10, label %12, label %11, !dbg !3003

11:                                               ; preds = %4
  tail call void @abort() #29, !dbg !3004
  unreachable, !dbg !3004

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3005
  store i8* %1, i8** %13, align 8, !dbg !3006, !tbaa !1758
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3007
  store i8* %2, i8** %14, align 8, !dbg !3008, !tbaa !1761
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 -1, %struct.quoting_options* nonnull %5) #27, !dbg !3009
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #27, !dbg !3010
  ret i8* %15, !dbg !3011
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom_mem(i32 %0, i8* %1, i8* %2, i8* %3, i64 %4) local_unnamed_addr #8 !dbg !2984 {
  %6 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2983, metadata !DIExpression()), !dbg !3012
  call void @llvm.dbg.value(metadata i8* %1, metadata !2988, metadata !DIExpression()), !dbg !3012
  call void @llvm.dbg.value(metadata i8* %2, metadata !2989, metadata !DIExpression()), !dbg !3012
  call void @llvm.dbg.value(metadata i8* %3, metadata !2990, metadata !DIExpression()), !dbg !3012
  call void @llvm.dbg.value(metadata i64 %4, metadata !2991, metadata !DIExpression()), !dbg !3012
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !3013
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #27, !dbg !3013
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %6, metadata !2992, metadata !DIExpression()), !dbg !3014
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %7, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false), !dbg !3015, !tbaa.struct !2868
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !1743, metadata !DIExpression()) #27, !dbg !3016
  call void @llvm.dbg.value(metadata i8* %1, metadata !1744, metadata !DIExpression()) #27, !dbg !3016
  call void @llvm.dbg.value(metadata i8* %2, metadata !1745, metadata !DIExpression()) #27, !dbg !3016
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !1743, metadata !DIExpression()) #27, !dbg !3016
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !3018
  store i32 10, i32* %8, align 8, !dbg !3019, !tbaa !1685
  %9 = icmp ne i8* %1, null, !dbg !3020
  %10 = icmp ne i8* %2, null
  %11 = and i1 %9, %10, !dbg !3021
  br i1 %11, label %13, label %12, !dbg !3021

12:                                               ; preds = %5
  tail call void @abort() #29, !dbg !3022
  unreachable, !dbg !3022

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !3023
  store i8* %1, i8** %14, align 8, !dbg !3024, !tbaa !1758
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !3025
  store i8* %2, i8** %15, align 8, !dbg !3026, !tbaa !1761
  %16 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 %4, %struct.quoting_options* nonnull %6), !dbg !3027
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #27, !dbg !3028
  ret i8* %16, !dbg !3029
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom(i8* %0, i8* %1, i8* %2) local_unnamed_addr #8 !dbg !3030 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3034, metadata !DIExpression()), !dbg !3037
  call void @llvm.dbg.value(metadata i8* %1, metadata !3035, metadata !DIExpression()), !dbg !3037
  call void @llvm.dbg.value(metadata i8* %2, metadata !3036, metadata !DIExpression()), !dbg !3037
  call void @llvm.dbg.value(metadata i32 0, metadata !2978, metadata !DIExpression()) #27, !dbg !3038
  call void @llvm.dbg.value(metadata i8* %0, metadata !2979, metadata !DIExpression()) #27, !dbg !3038
  call void @llvm.dbg.value(metadata i8* %1, metadata !2980, metadata !DIExpression()) #27, !dbg !3038
  call void @llvm.dbg.value(metadata i8* %2, metadata !2981, metadata !DIExpression()) #27, !dbg !3038
  call void @llvm.dbg.value(metadata i32 0, metadata !2983, metadata !DIExpression()) #27, !dbg !3040
  call void @llvm.dbg.value(metadata i8* %0, metadata !2988, metadata !DIExpression()) #27, !dbg !3040
  call void @llvm.dbg.value(metadata i8* %1, metadata !2989, metadata !DIExpression()) #27, !dbg !3040
  call void @llvm.dbg.value(metadata i8* %2, metadata !2990, metadata !DIExpression()) #27, !dbg !3040
  call void @llvm.dbg.value(metadata i64 -1, metadata !2991, metadata !DIExpression()) #27, !dbg !3040
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3042
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #27, !dbg !3042
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2992, metadata !DIExpression()) #27, !dbg !3043
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false) #27, !dbg !3044, !tbaa.struct !2868
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1743, metadata !DIExpression()) #27, !dbg !3045
  call void @llvm.dbg.value(metadata i8* %0, metadata !1744, metadata !DIExpression()) #27, !dbg !3045
  call void @llvm.dbg.value(metadata i8* %1, metadata !1745, metadata !DIExpression()) #27, !dbg !3045
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1743, metadata !DIExpression()) #27, !dbg !3045
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3047
  store i32 10, i32* %6, align 8, !dbg !3048, !tbaa !1685
  %7 = icmp ne i8* %0, null, !dbg !3049
  %8 = icmp ne i8* %1, null
  %9 = and i1 %7, %8, !dbg !3050
  br i1 %9, label %11, label %10, !dbg !3050

10:                                               ; preds = %3
  tail call void @abort() #29, !dbg !3051
  unreachable, !dbg !3051

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !3052
  store i8* %0, i8** %12, align 8, !dbg !3053, !tbaa !1758
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !3054
  store i8* %1, i8** %13, align 8, !dbg !3055, !tbaa !1761
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4) #27, !dbg !3056
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #27, !dbg !3057
  ret i8* %14, !dbg !3058
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom_mem(i8* %0, i8* %1, i8* %2, i64 %3) local_unnamed_addr #8 !dbg !3059 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3063, metadata !DIExpression()), !dbg !3067
  call void @llvm.dbg.value(metadata i8* %1, metadata !3064, metadata !DIExpression()), !dbg !3067
  call void @llvm.dbg.value(metadata i8* %2, metadata !3065, metadata !DIExpression()), !dbg !3067
  call void @llvm.dbg.value(metadata i64 %3, metadata !3066, metadata !DIExpression()), !dbg !3067
  call void @llvm.dbg.value(metadata i32 0, metadata !2983, metadata !DIExpression()) #27, !dbg !3068
  call void @llvm.dbg.value(metadata i8* %0, metadata !2988, metadata !DIExpression()) #27, !dbg !3068
  call void @llvm.dbg.value(metadata i8* %1, metadata !2989, metadata !DIExpression()) #27, !dbg !3068
  call void @llvm.dbg.value(metadata i8* %2, metadata !2990, metadata !DIExpression()) #27, !dbg !3068
  call void @llvm.dbg.value(metadata i64 %3, metadata !2991, metadata !DIExpression()) #27, !dbg !3068
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3070
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #27, !dbg !3070
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2992, metadata !DIExpression()) #27, !dbg !3071
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %6, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false) #27, !dbg !3072, !tbaa.struct !2868
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1743, metadata !DIExpression()) #27, !dbg !3073
  call void @llvm.dbg.value(metadata i8* %0, metadata !1744, metadata !DIExpression()) #27, !dbg !3073
  call void @llvm.dbg.value(metadata i8* %1, metadata !1745, metadata !DIExpression()) #27, !dbg !3073
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1743, metadata !DIExpression()) #27, !dbg !3073
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3075
  store i32 10, i32* %7, align 8, !dbg !3076, !tbaa !1685
  %8 = icmp ne i8* %0, null, !dbg !3077
  %9 = icmp ne i8* %1, null
  %10 = and i1 %8, %9, !dbg !3078
  br i1 %10, label %12, label %11, !dbg !3078

11:                                               ; preds = %4
  tail call void @abort() #29, !dbg !3079
  unreachable, !dbg !3079

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3080
  store i8* %0, i8** %13, align 8, !dbg !3081, !tbaa !1758
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3082
  store i8* %1, i8** %14, align 8, !dbg !3083, !tbaa !1761
  %15 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5) #27, !dbg !3084
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #27, !dbg !3085
  ret i8* %15, !dbg !3086
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n_mem(i32 %0, i8* %1, i64 %2) local_unnamed_addr #8 !dbg !3087 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3091, metadata !DIExpression()), !dbg !3094
  call void @llvm.dbg.value(metadata i8* %1, metadata !3092, metadata !DIExpression()), !dbg !3094
  call void @llvm.dbg.value(metadata i64 %2, metadata !3093, metadata !DIExpression()), !dbg !3094
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @quote_quoting_options), !dbg !3095
  ret i8* %4, !dbg !3096
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_mem(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !3097 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3101, metadata !DIExpression()), !dbg !3103
  call void @llvm.dbg.value(metadata i64 %1, metadata !3102, metadata !DIExpression()), !dbg !3103
  call void @llvm.dbg.value(metadata i32 0, metadata !3091, metadata !DIExpression()) #27, !dbg !3104
  call void @llvm.dbg.value(metadata i8* %0, metadata !3092, metadata !DIExpression()) #27, !dbg !3104
  call void @llvm.dbg.value(metadata i64 %1, metadata !3093, metadata !DIExpression()) #27, !dbg !3104
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @quote_quoting_options) #27, !dbg !3106
  ret i8* %3, !dbg !3107
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n(i32 %0, i8* %1) local_unnamed_addr #8 !dbg !3108 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3112, metadata !DIExpression()), !dbg !3114
  call void @llvm.dbg.value(metadata i8* %1, metadata !3113, metadata !DIExpression()), !dbg !3114
  call void @llvm.dbg.value(metadata i32 %0, metadata !3091, metadata !DIExpression()) #27, !dbg !3115
  call void @llvm.dbg.value(metadata i8* %1, metadata !3092, metadata !DIExpression()) #27, !dbg !3115
  call void @llvm.dbg.value(metadata i64 -1, metadata !3093, metadata !DIExpression()) #27, !dbg !3115
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #27, !dbg !3117
  ret i8* %3, !dbg !3118
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote(i8* %0) local_unnamed_addr #8 !dbg !3119 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3123, metadata !DIExpression()), !dbg !3124
  call void @llvm.dbg.value(metadata i32 0, metadata !3112, metadata !DIExpression()) #27, !dbg !3125
  call void @llvm.dbg.value(metadata i8* %0, metadata !3113, metadata !DIExpression()) #27, !dbg !3125
  call void @llvm.dbg.value(metadata i32 0, metadata !3091, metadata !DIExpression()) #27, !dbg !3127
  call void @llvm.dbg.value(metadata i8* %0, metadata !3092, metadata !DIExpression()) #27, !dbg !3127
  call void @llvm.dbg.value(metadata i64 -1, metadata !3093, metadata !DIExpression()) #27, !dbg !3127
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #27, !dbg !3129
  ret i8* %2, !dbg !3130
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @unicode_to_mb(i32 %0, i64 (i8*, i64, i8*)* nocapture %1, i64 (i32, i8*, i8*)* nocapture %2, i8* %3) local_unnamed_addr #8 !dbg !133 {
  %5 = alloca [6 x i8], align 1
  %6 = alloca [25 x i8], align 16
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !211, metadata !DIExpression()), !dbg !3131
  call void @llvm.dbg.value(metadata i64 (i8*, i64, i8*)* %1, metadata !212, metadata !DIExpression()), !dbg !3131
  call void @llvm.dbg.value(metadata i64 (i32, i8*, i8*)* %2, metadata !213, metadata !DIExpression()), !dbg !3131
  call void @llvm.dbg.value(metadata i8* %3, metadata !214, metadata !DIExpression()), !dbg !3131
  %11 = getelementptr inbounds [6 x i8], [6 x i8]* %5, i64 0, i64 0, !dbg !3132
  call void @llvm.lifetime.start.p0i8(i64 6, i8* nonnull %11) #27, !dbg !3132
  call void @llvm.dbg.declare(metadata [6 x i8]* %5, metadata !215, metadata !DIExpression()), !dbg !3133
  %12 = load i1, i1* @unicode_to_mb.initialized, align 4, !dbg !3134
  br i1 %12, label %24, label %13, !dbg !3135

13:                                               ; preds = %4
  %14 = tail call i8* @locale_charset() #27, !dbg !3136
  call void @llvm.dbg.value(metadata i8* %14, metadata !220, metadata !DIExpression()), !dbg !3137
  %15 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %14, i8* nonnull dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.89, i64 0, i64 0)) #28, !dbg !3138
  %16 = icmp eq i32 %15, 0, !dbg !3139
  %17 = zext i1 %16 to i32, !dbg !3139
  store i32 %17, i32* @unicode_to_mb.is_utf8, align 4, !dbg !3140, !tbaa !1228
  br i1 %16, label %23, label %18, !dbg !3141

18:                                               ; preds = %13
  %19 = tail call i8* @iconv_open(i8* %14, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.89, i64 0, i64 0)) #27, !dbg !3142
  store i8* %19, i8** @unicode_to_mb.utf8_to_local, align 8, !dbg !3145, !tbaa !727
  %20 = icmp eq i8* %19, inttoptr (i64 -1 to i8*), !dbg !3146
  br i1 %20, label %21, label %23, !dbg !3148

21:                                               ; preds = %18
  %22 = tail call i8* @iconv_open(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.90, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.89, i64 0, i64 0)) #27, !dbg !3149
  store i8* %22, i8** @unicode_to_mb.utf8_to_local, align 8, !dbg !3150, !tbaa !727
  br label %23, !dbg !3151

23:                                               ; preds = %18, %21, %13
  store i1 true, i1* @unicode_to_mb.initialized, align 4, !dbg !3152
  br label %24, !dbg !3153

24:                                               ; preds = %23, %4
  %25 = load i32, i32* @unicode_to_mb.is_utf8, align 4, !dbg !3154, !tbaa !1228
  %26 = icmp eq i32 %25, 0, !dbg !3154
  %27 = load i8*, i8** @unicode_to_mb.utf8_to_local, align 8
  %28 = icmp eq i8* %27, inttoptr (i64 -1 to i8*)
  %29 = and i1 %26, %28, !dbg !3156
  br i1 %29, label %30, label %32, !dbg !3156

30:                                               ; preds = %24
  %31 = tail call i64 %2(i32 %0, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2.91, i64 0, i64 0), i8* %3) #27, !dbg !3157
  br label %78, !dbg !3160

32:                                               ; preds = %24
  call void @llvm.dbg.value(metadata i8* %11, metadata !3161, metadata !DIExpression()) #27, !dbg !3177
  call void @llvm.dbg.value(metadata i32 %0, metadata !3175, metadata !DIExpression()) #27, !dbg !3177
  call void @llvm.dbg.value(metadata i32 6, metadata !3176, metadata !DIExpression()) #27, !dbg !3177
  %33 = icmp ult i32 %0, 128, !dbg !3179
  br i1 %33, label %34, label %36, !dbg !3181

34:                                               ; preds = %32
  %35 = trunc i32 %0 to i8, !dbg !3182
  store i8 %35, i8* %11, align 1, !dbg !3184, !tbaa !937
  call void @llvm.dbg.value(metadata i32 %37, metadata !219, metadata !DIExpression()), !dbg !3131
  br label %44, !dbg !3185

36:                                               ; preds = %32
  %37 = call i32 @u8_uctomb_aux(i8* nonnull %11, i32 %0, i32 6) #27, !dbg !3186
  call void @llvm.dbg.value(metadata i32 %37, metadata !219, metadata !DIExpression()), !dbg !3131
  %38 = icmp slt i32 %37, 0, !dbg !3187
  br i1 %38, label %42, label %39, !dbg !3185

39:                                               ; preds = %36
  %40 = load i32, i32* @unicode_to_mb.is_utf8, align 4, !dbg !3189, !tbaa !1228
  %41 = zext i32 %37 to i64, !dbg !3185
  br label %44, !dbg !3185

42:                                               ; preds = %36
  %43 = call i64 %2(i32 %0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3.92, i64 0, i64 0), i8* %3) #27, !dbg !3190
  br label %78, !dbg !3191

44:                                               ; preds = %39, %34
  %45 = phi i32 [ %25, %34 ], [ %40, %39 ], !dbg !3189
  %46 = phi i64 [ 1, %34 ], [ %41, %39 ]
  %47 = icmp eq i32 %45, 0, !dbg !3189
  br i1 %47, label %48, label %76, !dbg !3192

48:                                               ; preds = %44
  %49 = getelementptr inbounds [25 x i8], [25 x i8]* %6, i64 0, i64 0, !dbg !3193
  call void @llvm.lifetime.start.p0i8(i64 25, i8* nonnull %49) #27, !dbg !3193
  call void @llvm.dbg.declare(metadata [25 x i8]* %6, metadata !223, metadata !DIExpression()), !dbg !3194
  %50 = bitcast i8** %7 to i8*, !dbg !3195
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %50) #27, !dbg !3195
  %51 = bitcast i64* %8 to i8*, !dbg !3196
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %51) #27, !dbg !3196
  %52 = bitcast i8** %9 to i8*, !dbg !3197
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %52) #27, !dbg !3197
  %53 = bitcast i64* %10 to i8*, !dbg !3198
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %53) #27, !dbg !3198
  call void @llvm.dbg.value(metadata i8* %11, metadata !229, metadata !DIExpression()), !dbg !3199
  store i8* %11, i8** %7, align 8, !dbg !3200, !tbaa !727
  call void @llvm.dbg.value(metadata i64 %46, metadata !230, metadata !DIExpression()), !dbg !3199
  store i64 %46, i64* %8, align 8, !dbg !3201, !tbaa !2578
  call void @llvm.dbg.value(metadata i8* %49, metadata !231, metadata !DIExpression()), !dbg !3199
  store i8* %49, i8** %9, align 8, !dbg !3202, !tbaa !727
  call void @llvm.dbg.value(metadata i64 25, metadata !232, metadata !DIExpression()), !dbg !3199
  store i64 25, i64* %10, align 8, !dbg !3203, !tbaa !2578
  %54 = load i8*, i8** @unicode_to_mb.utf8_to_local, align 8, !dbg !3204, !tbaa !727
  call void @llvm.dbg.value(metadata i8** %7, metadata !229, metadata !DIExpression(DW_OP_deref)), !dbg !3199
  call void @llvm.dbg.value(metadata i64* %8, metadata !230, metadata !DIExpression(DW_OP_deref)), !dbg !3199
  call void @llvm.dbg.value(metadata i8** %9, metadata !231, metadata !DIExpression(DW_OP_deref)), !dbg !3199
  call void @llvm.dbg.value(metadata i64* %10, metadata !232, metadata !DIExpression(DW_OP_deref)), !dbg !3199
  %55 = call i64 @iconv(i8* %54, i8** nonnull %7, i64* nonnull %8, i8** nonnull %9, i64* nonnull %10) #27, !dbg !3205
  call void @llvm.dbg.value(metadata i64 %55, metadata !233, metadata !DIExpression()), !dbg !3199
  %56 = load i64, i64* %8, align 8, !dbg !3206, !tbaa !2578
  call void @llvm.dbg.value(metadata i64 %56, metadata !230, metadata !DIExpression()), !dbg !3199
  %57 = icmp ne i64 %56, 0, !dbg !3208
  %58 = icmp eq i64 %55, -1
  %59 = or i1 %58, %57, !dbg !3209
  br i1 %59, label %60, label %62, !dbg !3209

60:                                               ; preds = %48
  %61 = call i64 %2(i32 %0, i8* null, i8* %3) #27, !dbg !3210
  br label %74, !dbg !3211

62:                                               ; preds = %48
  %63 = load i8*, i8** @unicode_to_mb.utf8_to_local, align 8, !dbg !3212, !tbaa !727
  call void @llvm.dbg.value(metadata i8** %9, metadata !231, metadata !DIExpression(DW_OP_deref)), !dbg !3199
  call void @llvm.dbg.value(metadata i64* %10, metadata !232, metadata !DIExpression(DW_OP_deref)), !dbg !3199
  %64 = call i64 @iconv(i8* %63, i8** null, i64* null, i8** nonnull %9, i64* nonnull %10) #27, !dbg !3213
  call void @llvm.dbg.value(metadata i64 %64, metadata !233, metadata !DIExpression()), !dbg !3199
  %65 = icmp eq i64 %64, -1, !dbg !3214
  br i1 %65, label %66, label %68, !dbg !3216

66:                                               ; preds = %62
  %67 = call i64 %2(i32 %0, i8* null, i8* %3) #27, !dbg !3217
  br label %74, !dbg !3218

68:                                               ; preds = %62
  %69 = load i8*, i8** %9, align 8, !dbg !3219, !tbaa !727
  call void @llvm.dbg.value(metadata i8* %69, metadata !231, metadata !DIExpression()), !dbg !3199
  %70 = ptrtoint i8* %69 to i64, !dbg !3220
  %71 = ptrtoint [25 x i8]* %6 to i64, !dbg !3220
  %72 = sub i64 %70, %71, !dbg !3220
  %73 = call i64 %1(i8* nonnull %49, i64 %72, i8* %3) #27, !dbg !3221
  br label %74, !dbg !3222

74:                                               ; preds = %68, %66, %60
  %75 = phi i64 [ %61, %60 ], [ %67, %66 ], [ %73, %68 ], !dbg !3199
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %53) #27, !dbg !3223
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %52) #27, !dbg !3223
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %51) #27, !dbg !3223
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %50) #27, !dbg !3223
  call void @llvm.lifetime.end.p0i8(i64 25, i8* nonnull %49) #27, !dbg !3223
  br label %78

76:                                               ; preds = %44
  %77 = call i64 %1(i8* nonnull %11, i64 %46, i8* %3) #27, !dbg !3224
  br label %78, !dbg !3225

78:                                               ; preds = %76, %74, %42, %30
  %79 = phi i64 [ %31, %30 ], [ %43, %42 ], [ %77, %76 ], [ %75, %74 ], !dbg !3131
  call void @llvm.lifetime.end.p0i8(i64 6, i8* nonnull %11) #27, !dbg !3226
  ret i64 %79, !dbg !3226
}

declare !dbg !3227 i8* @iconv_open(i8*, i8*) local_unnamed_addr #3

declare !dbg !3230 i64 @iconv(i8*, i8**, i64*, i8**, i64*) local_unnamed_addr #3

; Function Attrs: nofree nounwind sspstrong uwtable
define dso_local i64 @fwrite_success_callback(i8* nocapture %0, i64 %1, i8* nocapture %2) #22 !dbg !3234 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3236, metadata !DIExpression()), !dbg !3240
  call void @llvm.dbg.value(metadata i64 %1, metadata !3237, metadata !DIExpression()), !dbg !3240
  call void @llvm.dbg.value(metadata i8* %2, metadata !3238, metadata !DIExpression()), !dbg !3240
  %4 = bitcast i8* %2 to %struct._IO_FILE*, !dbg !3241
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %4, metadata !3239, metadata !DIExpression()), !dbg !3240
  %5 = tail call i64 @fwrite(i8* %0, i64 1, i64 %1, %struct._IO_FILE* %4), !dbg !3242
  ret i64 0, !dbg !3243
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @print_unicode_char(%struct._IO_FILE* %0, i32 %1, i32 %2) local_unnamed_addr #8 !dbg !3244 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3248, metadata !DIExpression()), !dbg !3251
  call void @llvm.dbg.value(metadata i32 %1, metadata !3249, metadata !DIExpression()), !dbg !3251
  call void @llvm.dbg.value(metadata i32 %2, metadata !3250, metadata !DIExpression()), !dbg !3251
  %4 = icmp eq i32 %2, 0, !dbg !3252
  %5 = select i1 %4, i64 (i32, i8*, i8*)* @fallback_failure_callback, i64 (i32, i8*, i8*)* @exit_failure_callback, !dbg !3252
  %6 = bitcast %struct._IO_FILE* %0 to i8*, !dbg !3253
  %7 = tail call i64 @unicode_to_mb(i32 %1, i64 (i8*, i64, i8*)* nonnull @fwrite_success_callback, i64 (i32, i8*, i8*)* nonnull %5, i8* %6), !dbg !3254
  ret void, !dbg !3255
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @fallback_failure_callback(i32 %0, i8* nocapture readnone %1, i8* %2) #8 !dbg !3256 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3258, metadata !DIExpression()), !dbg !3262
  call void @llvm.dbg.value(metadata i8* %1, metadata !3259, metadata !DIExpression()), !dbg !3262
  call void @llvm.dbg.value(metadata i8* %2, metadata !3260, metadata !DIExpression()), !dbg !3262
  %4 = bitcast i8* %2 to %struct._IO_FILE*, !dbg !3263
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %4, metadata !3261, metadata !DIExpression()), !dbg !3262
  %5 = icmp ult i32 %0, 65536, !dbg !3264
  %6 = select i1 %5, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6.97, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.98, i64 0, i64 0), !dbg !3266
  %7 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %4, i32 1, i8* %6, i32 %0) #27, !dbg !3267
  ret i64 -1, !dbg !3268
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @exit_failure_callback(i32 %0, i8* %1, i8* nocapture readnone %2) #8 !dbg !3269 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3271, metadata !DIExpression()), !dbg !3274
  call void @llvm.dbg.value(metadata i8* %1, metadata !3272, metadata !DIExpression()), !dbg !3274
  call void @llvm.dbg.value(metadata i8* %2, metadata !3273, metadata !DIExpression()), !dbg !3274
  %4 = icmp eq i8* %1, null, !dbg !3275
  br i1 %4, label %5, label %7, !dbg !3277

5:                                                ; preds = %3
  %6 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4.95, i64 0, i64 0), i32 5) #27, !dbg !3278
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %6, i32 %0) #27, !dbg !3279
  br label %10, !dbg !3279

7:                                                ; preds = %3
  %8 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.5.96, i64 0, i64 0), i32 5) #27, !dbg !3280
  %9 = tail call i8* @dcgettext(i8* null, i8* nonnull %1, i32 5) #27, !dbg !3281
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %8, i32 %0, i8* %9) #27, !dbg !3282
  br label %10

10:                                               ; preds = %7, %5
  ret i64 -1, !dbg !3283
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable willreturn writeonly
define dso_local i32 @u8_uctomb_aux(i8* nocapture %0, i32 %1, i32 %2) local_unnamed_addr #15 !dbg !3284 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3286, metadata !DIExpression()), !dbg !3290
  call void @llvm.dbg.value(metadata i32 %1, metadata !3287, metadata !DIExpression()), !dbg !3290
  call void @llvm.dbg.value(metadata i32 %2, metadata !3288, metadata !DIExpression()), !dbg !3290
  %4 = icmp ult i32 %1, 128, !dbg !3291
  br i1 %4, label %42, label %5, !dbg !3293

5:                                                ; preds = %3
  %6 = icmp ult i32 %1, 2048, !dbg !3294
  br i1 %6, label %14, label %7, !dbg !3296

7:                                                ; preds = %5
  %8 = icmp ult i32 %1, 65536, !dbg !3297
  br i1 %8, label %9, label %12, !dbg !3299

9:                                                ; preds = %7
  %10 = and i32 %1, -2048, !dbg !3300
  %11 = icmp eq i32 %10, 55296, !dbg !3300
  br i1 %11, label %42, label %14, !dbg !3300

12:                                               ; preds = %7
  %13 = icmp ult i32 %1, 1114112, !dbg !3303
  br i1 %13, label %14, label %42, !dbg !3305

14:                                               ; preds = %12, %9, %5
  %15 = phi i32 [ 2, %5 ], [ 3, %9 ], [ 4, %12 ], !dbg !3306
  call void @llvm.dbg.value(metadata i32 %15, metadata !3289, metadata !DIExpression()), !dbg !3290
  %16 = icmp sgt i32 %15, %2, !dbg !3307
  br i1 %16, label %42, label %17, !dbg !3309

17:                                               ; preds = %14
  switch i32 %15, label %42 [
    i32 4, label %18
    i32 3, label %25
    i32 2, label %33
  ], !dbg !3310

18:                                               ; preds = %17
  %19 = trunc i32 %1 to i8, !dbg !3311
  %20 = and i8 %19, 63, !dbg !3311
  %21 = or i8 %20, -128, !dbg !3311
  %22 = getelementptr inbounds i8, i8* %0, i64 3, !dbg !3313
  store i8 %21, i8* %22, align 1, !dbg !3314, !tbaa !937
  %23 = lshr i32 %1, 6, !dbg !3315
  call void @llvm.dbg.value(metadata i32 %23, metadata !3287, metadata !DIExpression()), !dbg !3290
  %24 = or i32 %23, 65536, !dbg !3316
  call void @llvm.dbg.value(metadata i32 %24, metadata !3287, metadata !DIExpression()), !dbg !3290
  br label %25, !dbg !3317

25:                                               ; preds = %17, %18
  %26 = phi i32 [ %1, %17 ], [ %24, %18 ]
  call void @llvm.dbg.value(metadata i32 %26, metadata !3287, metadata !DIExpression()), !dbg !3290
  %27 = trunc i32 %26 to i8, !dbg !3318
  %28 = and i8 %27, 63, !dbg !3318
  %29 = or i8 %28, -128, !dbg !3318
  %30 = getelementptr inbounds i8, i8* %0, i64 2, !dbg !3319
  store i8 %29, i8* %30, align 1, !dbg !3320, !tbaa !937
  %31 = lshr i32 %26, 6, !dbg !3321
  call void @llvm.dbg.value(metadata i32 %31, metadata !3287, metadata !DIExpression()), !dbg !3290
  %32 = or i32 %31, 2048, !dbg !3322
  call void @llvm.dbg.value(metadata i32 %32, metadata !3287, metadata !DIExpression()), !dbg !3290
  br label %33, !dbg !3323

33:                                               ; preds = %17, %25
  %34 = phi i32 [ %1, %17 ], [ %32, %25 ]
  call void @llvm.dbg.value(metadata i32 %34, metadata !3287, metadata !DIExpression()), !dbg !3290
  %35 = trunc i32 %34 to i8, !dbg !3324
  %36 = and i8 %35, 63, !dbg !3324
  %37 = or i8 %36, -128, !dbg !3324
  %38 = getelementptr inbounds i8, i8* %0, i64 1, !dbg !3325
  store i8 %37, i8* %38, align 1, !dbg !3326, !tbaa !937
  %39 = lshr i32 %34, 6, !dbg !3327
  call void @llvm.dbg.value(metadata i32 %39, metadata !3287, metadata !DIExpression()), !dbg !3290
  call void @llvm.dbg.value(metadata i32 %39, metadata !3287, metadata !DIExpression(DW_OP_constu, 192, DW_OP_or, DW_OP_stack_value)), !dbg !3290
  %40 = trunc i32 %39 to i8, !dbg !3328
  %41 = or i8 %40, -64, !dbg !3328
  store i8 %41, i8* %0, align 1, !dbg !3329, !tbaa !937
  br label %42, !dbg !3330

42:                                               ; preds = %17, %33, %14, %12, %9, %3
  %43 = phi i32 [ -2, %3 ], [ -1, %9 ], [ -1, %12 ], [ -2, %14 ], [ %15, %33 ], [ %15, %17 ], !dbg !3290
  ret i32 %43, !dbg !3331
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** readonly %4, i64 %5) local_unnamed_addr #8 !dbg !3332 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3371, metadata !DIExpression()), !dbg !3377
  call void @llvm.dbg.value(metadata i8* %1, metadata !3372, metadata !DIExpression()), !dbg !3377
  call void @llvm.dbg.value(metadata i8* %2, metadata !3373, metadata !DIExpression()), !dbg !3377
  call void @llvm.dbg.value(metadata i8* %3, metadata !3374, metadata !DIExpression()), !dbg !3377
  call void @llvm.dbg.value(metadata i8** %4, metadata !3375, metadata !DIExpression()), !dbg !3377
  call void @llvm.dbg.value(metadata i64 %5, metadata !3376, metadata !DIExpression()), !dbg !3377
  %7 = icmp eq i8* %1, null, !dbg !3378
  br i1 %7, label %10, label %8, !dbg !3380

8:                                                ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.101, i64 0, i64 0), i8* nonnull %1, i8* %2, i8* %3) #27, !dbg !3381
  br label %12, !dbg !3381

10:                                               ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.102, i64 0, i64 0), i8* %2, i8* %3) #27, !dbg !3382
  br label %12

12:                                               ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.103, i64 0, i64 0), i32 5) #27, !dbg !3383
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* %13, i32 2020) #27, !dbg !3383
  %15 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.104, i64 0, i64 0), %struct._IO_FILE* %0), !dbg !3384
  %16 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([171 x i8], [171 x i8]* @.str.4.105, i64 0, i64 0), i32 5) #27, !dbg !3385
  %17 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %16, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5.106, i64 0, i64 0)) #27, !dbg !3385
  %18 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.104, i64 0, i64 0), %struct._IO_FILE* %0), !dbg !3386
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
  ], !dbg !3387

19:                                               ; preds = %12
  %20 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6.107, i64 0, i64 0), i32 5) #27, !dbg !3388
  %21 = load i8*, i8** %4, align 8, !dbg !3388, !tbaa !727
  %22 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %20, i8* %21) #27, !dbg !3388
  br label %147, !dbg !3390

23:                                               ; preds = %12
  %24 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7.108, i64 0, i64 0), i32 5) #27, !dbg !3391
  %25 = load i8*, i8** %4, align 8, !dbg !3391, !tbaa !727
  %26 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3391
  %27 = load i8*, i8** %26, align 8, !dbg !3391, !tbaa !727
  %28 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %24, i8* %25, i8* %27) #27, !dbg !3391
  br label %147, !dbg !3392

29:                                               ; preds = %12
  %30 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8.109, i64 0, i64 0), i32 5) #27, !dbg !3393
  %31 = load i8*, i8** %4, align 8, !dbg !3393, !tbaa !727
  %32 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3393
  %33 = load i8*, i8** %32, align 8, !dbg !3393, !tbaa !727
  %34 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3393
  %35 = load i8*, i8** %34, align 8, !dbg !3393, !tbaa !727
  %36 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %30, i8* %31, i8* %33, i8* %35) #27, !dbg !3393
  br label %147, !dbg !3394

37:                                               ; preds = %12
  %38 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9.110, i64 0, i64 0), i32 5) #27, !dbg !3395
  %39 = load i8*, i8** %4, align 8, !dbg !3395, !tbaa !727
  %40 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3395
  %41 = load i8*, i8** %40, align 8, !dbg !3395, !tbaa !727
  %42 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3395
  %43 = load i8*, i8** %42, align 8, !dbg !3395, !tbaa !727
  %44 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3395
  %45 = load i8*, i8** %44, align 8, !dbg !3395, !tbaa !727
  %46 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %38, i8* %39, i8* %41, i8* %43, i8* %45) #27, !dbg !3395
  br label %147, !dbg !3396

47:                                               ; preds = %12
  %48 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.10.111, i64 0, i64 0), i32 5) #27, !dbg !3397
  %49 = load i8*, i8** %4, align 8, !dbg !3397, !tbaa !727
  %50 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3397
  %51 = load i8*, i8** %50, align 8, !dbg !3397, !tbaa !727
  %52 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3397
  %53 = load i8*, i8** %52, align 8, !dbg !3397, !tbaa !727
  %54 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3397
  %55 = load i8*, i8** %54, align 8, !dbg !3397, !tbaa !727
  %56 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3397
  %57 = load i8*, i8** %56, align 8, !dbg !3397, !tbaa !727
  %58 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %48, i8* %49, i8* %51, i8* %53, i8* %55, i8* %57) #27, !dbg !3397
  br label %147, !dbg !3398

59:                                               ; preds = %12
  %60 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.11.112, i64 0, i64 0), i32 5) #27, !dbg !3399
  %61 = load i8*, i8** %4, align 8, !dbg !3399, !tbaa !727
  %62 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3399
  %63 = load i8*, i8** %62, align 8, !dbg !3399, !tbaa !727
  %64 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3399
  %65 = load i8*, i8** %64, align 8, !dbg !3399, !tbaa !727
  %66 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3399
  %67 = load i8*, i8** %66, align 8, !dbg !3399, !tbaa !727
  %68 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3399
  %69 = load i8*, i8** %68, align 8, !dbg !3399, !tbaa !727
  %70 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3399
  %71 = load i8*, i8** %70, align 8, !dbg !3399, !tbaa !727
  %72 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %60, i8* %61, i8* %63, i8* %65, i8* %67, i8* %69, i8* %71) #27, !dbg !3399
  br label %147, !dbg !3400

73:                                               ; preds = %12
  %74 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.12.113, i64 0, i64 0), i32 5) #27, !dbg !3401
  %75 = load i8*, i8** %4, align 8, !dbg !3401, !tbaa !727
  %76 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3401
  %77 = load i8*, i8** %76, align 8, !dbg !3401, !tbaa !727
  %78 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3401
  %79 = load i8*, i8** %78, align 8, !dbg !3401, !tbaa !727
  %80 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3401
  %81 = load i8*, i8** %80, align 8, !dbg !3401, !tbaa !727
  %82 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3401
  %83 = load i8*, i8** %82, align 8, !dbg !3401, !tbaa !727
  %84 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3401
  %85 = load i8*, i8** %84, align 8, !dbg !3401, !tbaa !727
  %86 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3401
  %87 = load i8*, i8** %86, align 8, !dbg !3401, !tbaa !727
  %88 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %74, i8* %75, i8* %77, i8* %79, i8* %81, i8* %83, i8* %85, i8* %87) #27, !dbg !3401
  br label %147, !dbg !3402

89:                                               ; preds = %12
  %90 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.13.114, i64 0, i64 0), i32 5) #27, !dbg !3403
  %91 = load i8*, i8** %4, align 8, !dbg !3403, !tbaa !727
  %92 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3403
  %93 = load i8*, i8** %92, align 8, !dbg !3403, !tbaa !727
  %94 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3403
  %95 = load i8*, i8** %94, align 8, !dbg !3403, !tbaa !727
  %96 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3403
  %97 = load i8*, i8** %96, align 8, !dbg !3403, !tbaa !727
  %98 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3403
  %99 = load i8*, i8** %98, align 8, !dbg !3403, !tbaa !727
  %100 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3403
  %101 = load i8*, i8** %100, align 8, !dbg !3403, !tbaa !727
  %102 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3403
  %103 = load i8*, i8** %102, align 8, !dbg !3403, !tbaa !727
  %104 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3403
  %105 = load i8*, i8** %104, align 8, !dbg !3403, !tbaa !727
  %106 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %90, i8* %91, i8* %93, i8* %95, i8* %97, i8* %99, i8* %101, i8* %103, i8* %105) #27, !dbg !3403
  br label %147, !dbg !3404

107:                                              ; preds = %12
  %108 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.14.115, i64 0, i64 0), i32 5) #27, !dbg !3405
  %109 = load i8*, i8** %4, align 8, !dbg !3405, !tbaa !727
  %110 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3405
  %111 = load i8*, i8** %110, align 8, !dbg !3405, !tbaa !727
  %112 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3405
  %113 = load i8*, i8** %112, align 8, !dbg !3405, !tbaa !727
  %114 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3405
  %115 = load i8*, i8** %114, align 8, !dbg !3405, !tbaa !727
  %116 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3405
  %117 = load i8*, i8** %116, align 8, !dbg !3405, !tbaa !727
  %118 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3405
  %119 = load i8*, i8** %118, align 8, !dbg !3405, !tbaa !727
  %120 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3405
  %121 = load i8*, i8** %120, align 8, !dbg !3405, !tbaa !727
  %122 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3405
  %123 = load i8*, i8** %122, align 8, !dbg !3405, !tbaa !727
  %124 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3405
  %125 = load i8*, i8** %124, align 8, !dbg !3405, !tbaa !727
  %126 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %108, i8* %109, i8* %111, i8* %113, i8* %115, i8* %117, i8* %119, i8* %121, i8* %123, i8* %125) #27, !dbg !3405
  br label %147, !dbg !3406

127:                                              ; preds = %12
  %128 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.15.116, i64 0, i64 0), i32 5) #27, !dbg !3407
  %129 = load i8*, i8** %4, align 8, !dbg !3407, !tbaa !727
  %130 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3407
  %131 = load i8*, i8** %130, align 8, !dbg !3407, !tbaa !727
  %132 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3407
  %133 = load i8*, i8** %132, align 8, !dbg !3407, !tbaa !727
  %134 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3407
  %135 = load i8*, i8** %134, align 8, !dbg !3407, !tbaa !727
  %136 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3407
  %137 = load i8*, i8** %136, align 8, !dbg !3407, !tbaa !727
  %138 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3407
  %139 = load i8*, i8** %138, align 8, !dbg !3407, !tbaa !727
  %140 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3407
  %141 = load i8*, i8** %140, align 8, !dbg !3407, !tbaa !727
  %142 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3407
  %143 = load i8*, i8** %142, align 8, !dbg !3407, !tbaa !727
  %144 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3407
  %145 = load i8*, i8** %144, align 8, !dbg !3407, !tbaa !727
  %146 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %128, i8* %129, i8* %131, i8* %133, i8* %135, i8* %137, i8* %139, i8* %141, i8* %143, i8* %145) #27, !dbg !3407
  br label %147, !dbg !3408

147:                                              ; preds = %127, %107, %89, %73, %59, %47, %37, %29, %23, %19, %12
  ret void, !dbg !3409
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_ar(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** readonly %4) local_unnamed_addr #8 !dbg !3410 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3414, metadata !DIExpression()), !dbg !3420
  call void @llvm.dbg.value(metadata i8* %1, metadata !3415, metadata !DIExpression()), !dbg !3420
  call void @llvm.dbg.value(metadata i8* %2, metadata !3416, metadata !DIExpression()), !dbg !3420
  call void @llvm.dbg.value(metadata i8* %3, metadata !3417, metadata !DIExpression()), !dbg !3420
  call void @llvm.dbg.value(metadata i8** %4, metadata !3418, metadata !DIExpression()), !dbg !3420
  call void @llvm.dbg.value(metadata i64 0, metadata !3419, metadata !DIExpression()), !dbg !3420
  br label %6, !dbg !3421

6:                                                ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !3423
  call void @llvm.dbg.value(metadata i64 %7, metadata !3419, metadata !DIExpression()), !dbg !3420
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7, !dbg !3424
  %9 = load i8*, i8** %8, align 8, !dbg !3424, !tbaa !727
  %10 = icmp eq i8* %9, null, !dbg !3426
  %11 = add i64 %7, 1, !dbg !3427
  call void @llvm.dbg.value(metadata i64 %11, metadata !3419, metadata !DIExpression()), !dbg !3420
  br i1 %10, label %12, label %6, !dbg !3426, !llvm.loop !3428

12:                                               ; preds = %6
  tail call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %4, i64 %7), !dbg !3430
  ret void, !dbg !3431
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nocapture %4) local_unnamed_addr #8 !dbg !3432 {
  %6 = alloca [10 x i8*], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3443, metadata !DIExpression()), !dbg !3451
  call void @llvm.dbg.value(metadata i8* %1, metadata !3444, metadata !DIExpression()), !dbg !3451
  call void @llvm.dbg.value(metadata i8* %2, metadata !3445, metadata !DIExpression()), !dbg !3451
  call void @llvm.dbg.value(metadata i8* %3, metadata !3446, metadata !DIExpression()), !dbg !3451
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %4, metadata !3447, metadata !DIExpression()), !dbg !3451
  %7 = bitcast [10 x i8*]* %6 to i8*, !dbg !3452
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %7) #27, !dbg !3452
  call void @llvm.dbg.declare(metadata [10 x i8*]* %6, metadata !3449, metadata !DIExpression()), !dbg !3453
  call void @llvm.dbg.value(metadata i64 0, metadata !3448, metadata !DIExpression()), !dbg !3451
  %8 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 0
  %9 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 2
  %10 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 3
  call void @llvm.dbg.value(metadata i64 0, metadata !3448, metadata !DIExpression()), !dbg !3451
  %11 = load i32, i32* %8, align 8, !dbg !3454
  %12 = icmp ult i32 %11, 41, !dbg !3454
  br i1 %12, label %13, label %18, !dbg !3454

13:                                               ; preds = %5
  %14 = load i8*, i8** %10, align 8, !dbg !3454
  %15 = zext i32 %11 to i64, !dbg !3454
  %16 = getelementptr i8, i8* %14, i64 %15, !dbg !3454
  %17 = add nuw nsw i32 %11, 8, !dbg !3454
  store i32 %17, i32* %8, align 8, !dbg !3454
  br label %21, !dbg !3454

18:                                               ; preds = %5
  %19 = load i8*, i8** %9, align 8, !dbg !3454
  %20 = getelementptr i8, i8* %19, i64 8, !dbg !3454
  store i8* %20, i8** %9, align 8, !dbg !3454
  br label %21, !dbg !3454

21:                                               ; preds = %18, %13
  %22 = phi i32 [ %17, %13 ], [ %11, %18 ]
  %23 = phi i8* [ %16, %13 ], [ %19, %18 ]
  %24 = bitcast i8* %23 to i8**, !dbg !3454
  %25 = load i8*, i8** %24, align 8, !dbg !3454
  %26 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !3457
  store i8* %25, i8** %26, align 16, !dbg !3458, !tbaa !727
  %27 = icmp eq i8* %25, null, !dbg !3459
  br i1 %27, label %30, label %28, !dbg !3460

28:                                               ; preds = %21
  call void @llvm.dbg.value(metadata i64 1, metadata !3448, metadata !DIExpression()), !dbg !3451
  call void @llvm.dbg.value(metadata i64 1, metadata !3448, metadata !DIExpression()), !dbg !3451
  %29 = icmp ult i32 %22, 41, !dbg !3454
  br i1 %29, label %35, label %32, !dbg !3454

30:                                               ; preds = %135, %128, %121, %114, %108, %91, %74, %57, %40, %21
  %31 = phi i64 [ 0, %21 ], [ 1, %40 ], [ 2, %57 ], [ 3, %74 ], [ 4, %91 ], [ 5, %108 ], [ 6, %114 ], [ 7, %121 ], [ 8, %128 ], [ %142, %135 ], !dbg !3461
  call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %26, i64 %31), !dbg !3462
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %7) #27, !dbg !3463
  ret void, !dbg !3463

32:                                               ; preds = %28
  %33 = load i8*, i8** %9, align 8, !dbg !3454
  %34 = getelementptr i8, i8* %33, i64 8, !dbg !3454
  store i8* %34, i8** %9, align 8, !dbg !3454
  br label %40, !dbg !3454

35:                                               ; preds = %28
  %36 = load i8*, i8** %10, align 8, !dbg !3454
  %37 = zext i32 %22 to i64, !dbg !3454
  %38 = getelementptr i8, i8* %36, i64 %37, !dbg !3454
  %39 = add nuw nsw i32 %22, 8, !dbg !3454
  store i32 %39, i32* %8, align 8, !dbg !3454
  br label %40, !dbg !3454

40:                                               ; preds = %35, %32
  %41 = phi i32 [ %39, %35 ], [ %22, %32 ]
  %42 = phi i8* [ %38, %35 ], [ %33, %32 ]
  %43 = bitcast i8* %42 to i8**, !dbg !3454
  %44 = load i8*, i8** %43, align 8, !dbg !3454
  %45 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !3457
  store i8* %44, i8** %45, align 8, !dbg !3458, !tbaa !727
  %46 = icmp eq i8* %44, null, !dbg !3459
  br i1 %46, label %30, label %47, !dbg !3460

47:                                               ; preds = %40
  call void @llvm.dbg.value(metadata i64 2, metadata !3448, metadata !DIExpression()), !dbg !3451
  call void @llvm.dbg.value(metadata i64 2, metadata !3448, metadata !DIExpression()), !dbg !3451
  %48 = icmp ult i32 %41, 41, !dbg !3454
  br i1 %48, label %52, label %49, !dbg !3454

49:                                               ; preds = %47
  %50 = load i8*, i8** %9, align 8, !dbg !3454
  %51 = getelementptr i8, i8* %50, i64 8, !dbg !3454
  store i8* %51, i8** %9, align 8, !dbg !3454
  br label %57, !dbg !3454

52:                                               ; preds = %47
  %53 = load i8*, i8** %10, align 8, !dbg !3454
  %54 = zext i32 %41 to i64, !dbg !3454
  %55 = getelementptr i8, i8* %53, i64 %54, !dbg !3454
  %56 = add nuw nsw i32 %41, 8, !dbg !3454
  store i32 %56, i32* %8, align 8, !dbg !3454
  br label %57, !dbg !3454

57:                                               ; preds = %52, %49
  %58 = phi i32 [ %56, %52 ], [ %41, %49 ]
  %59 = phi i8* [ %55, %52 ], [ %50, %49 ]
  %60 = bitcast i8* %59 to i8**, !dbg !3454
  %61 = load i8*, i8** %60, align 8, !dbg !3454
  %62 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !3457
  store i8* %61, i8** %62, align 16, !dbg !3458, !tbaa !727
  %63 = icmp eq i8* %61, null, !dbg !3459
  br i1 %63, label %30, label %64, !dbg !3460

64:                                               ; preds = %57
  call void @llvm.dbg.value(metadata i64 3, metadata !3448, metadata !DIExpression()), !dbg !3451
  call void @llvm.dbg.value(metadata i64 3, metadata !3448, metadata !DIExpression()), !dbg !3451
  %65 = icmp ult i32 %58, 41, !dbg !3454
  br i1 %65, label %69, label %66, !dbg !3454

66:                                               ; preds = %64
  %67 = load i8*, i8** %9, align 8, !dbg !3454
  %68 = getelementptr i8, i8* %67, i64 8, !dbg !3454
  store i8* %68, i8** %9, align 8, !dbg !3454
  br label %74, !dbg !3454

69:                                               ; preds = %64
  %70 = load i8*, i8** %10, align 8, !dbg !3454
  %71 = zext i32 %58 to i64, !dbg !3454
  %72 = getelementptr i8, i8* %70, i64 %71, !dbg !3454
  %73 = add nuw nsw i32 %58, 8, !dbg !3454
  store i32 %73, i32* %8, align 8, !dbg !3454
  br label %74, !dbg !3454

74:                                               ; preds = %69, %66
  %75 = phi i32 [ %73, %69 ], [ %58, %66 ]
  %76 = phi i8* [ %72, %69 ], [ %67, %66 ]
  %77 = bitcast i8* %76 to i8**, !dbg !3454
  %78 = load i8*, i8** %77, align 8, !dbg !3454
  %79 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !3457
  store i8* %78, i8** %79, align 8, !dbg !3458, !tbaa !727
  %80 = icmp eq i8* %78, null, !dbg !3459
  br i1 %80, label %30, label %81, !dbg !3460

81:                                               ; preds = %74
  call void @llvm.dbg.value(metadata i64 4, metadata !3448, metadata !DIExpression()), !dbg !3451
  call void @llvm.dbg.value(metadata i64 4, metadata !3448, metadata !DIExpression()), !dbg !3451
  %82 = icmp ult i32 %75, 41, !dbg !3454
  br i1 %82, label %86, label %83, !dbg !3454

83:                                               ; preds = %81
  %84 = load i8*, i8** %9, align 8, !dbg !3454
  %85 = getelementptr i8, i8* %84, i64 8, !dbg !3454
  store i8* %85, i8** %9, align 8, !dbg !3454
  br label %91, !dbg !3454

86:                                               ; preds = %81
  %87 = load i8*, i8** %10, align 8, !dbg !3454
  %88 = zext i32 %75 to i64, !dbg !3454
  %89 = getelementptr i8, i8* %87, i64 %88, !dbg !3454
  %90 = add nuw nsw i32 %75, 8, !dbg !3454
  store i32 %90, i32* %8, align 8, !dbg !3454
  br label %91, !dbg !3454

91:                                               ; preds = %86, %83
  %92 = phi i32 [ %90, %86 ], [ %75, %83 ]
  %93 = phi i8* [ %89, %86 ], [ %84, %83 ]
  %94 = bitcast i8* %93 to i8**, !dbg !3454
  %95 = load i8*, i8** %94, align 8, !dbg !3454
  %96 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !3457
  store i8* %95, i8** %96, align 16, !dbg !3458, !tbaa !727
  %97 = icmp eq i8* %95, null, !dbg !3459
  br i1 %97, label %30, label %98, !dbg !3460

98:                                               ; preds = %91
  call void @llvm.dbg.value(metadata i64 5, metadata !3448, metadata !DIExpression()), !dbg !3451
  call void @llvm.dbg.value(metadata i64 5, metadata !3448, metadata !DIExpression()), !dbg !3451
  %99 = icmp ult i32 %92, 41, !dbg !3454
  br i1 %99, label %103, label %100, !dbg !3454

100:                                              ; preds = %98
  %101 = load i8*, i8** %9, align 8, !dbg !3454
  %102 = getelementptr i8, i8* %101, i64 8, !dbg !3454
  store i8* %102, i8** %9, align 8, !dbg !3454
  br label %108, !dbg !3454

103:                                              ; preds = %98
  %104 = load i8*, i8** %10, align 8, !dbg !3454
  %105 = zext i32 %92 to i64, !dbg !3454
  %106 = getelementptr i8, i8* %104, i64 %105, !dbg !3454
  %107 = add nuw nsw i32 %92, 8, !dbg !3454
  store i32 %107, i32* %8, align 8, !dbg !3454
  br label %108, !dbg !3454

108:                                              ; preds = %103, %100
  %109 = phi i8* [ %106, %103 ], [ %101, %100 ]
  %110 = bitcast i8* %109 to i8**, !dbg !3454
  %111 = load i8*, i8** %110, align 8, !dbg !3454
  %112 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !3457
  store i8* %111, i8** %112, align 8, !dbg !3458, !tbaa !727
  %113 = icmp eq i8* %111, null, !dbg !3459
  br i1 %113, label %30, label %114, !dbg !3460

114:                                              ; preds = %108
  call void @llvm.dbg.value(metadata i64 6, metadata !3448, metadata !DIExpression()), !dbg !3451
  %115 = load i8*, i8** %9, align 8, !dbg !3454
  %116 = getelementptr i8, i8* %115, i64 8, !dbg !3454
  store i8* %116, i8** %9, align 8, !dbg !3454
  %117 = bitcast i8* %115 to i8**, !dbg !3454
  %118 = load i8*, i8** %117, align 8, !dbg !3454
  %119 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !3457
  store i8* %118, i8** %119, align 16, !dbg !3458, !tbaa !727
  %120 = icmp eq i8* %118, null, !dbg !3459
  br i1 %120, label %30, label %121, !dbg !3460

121:                                              ; preds = %114
  call void @llvm.dbg.value(metadata i64 7, metadata !3448, metadata !DIExpression()), !dbg !3451
  %122 = load i8*, i8** %9, align 8, !dbg !3454
  %123 = getelementptr i8, i8* %122, i64 8, !dbg !3454
  store i8* %123, i8** %9, align 8, !dbg !3454
  %124 = bitcast i8* %122 to i8**, !dbg !3454
  %125 = load i8*, i8** %124, align 8, !dbg !3454
  %126 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !3457
  store i8* %125, i8** %126, align 8, !dbg !3458, !tbaa !727
  %127 = icmp eq i8* %125, null, !dbg !3459
  br i1 %127, label %30, label %128, !dbg !3460

128:                                              ; preds = %121
  call void @llvm.dbg.value(metadata i64 8, metadata !3448, metadata !DIExpression()), !dbg !3451
  %129 = load i8*, i8** %9, align 8, !dbg !3454
  %130 = getelementptr i8, i8* %129, i64 8, !dbg !3454
  store i8* %130, i8** %9, align 8, !dbg !3454
  %131 = bitcast i8* %129 to i8**, !dbg !3454
  %132 = load i8*, i8** %131, align 8, !dbg !3454
  %133 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !3457
  store i8* %132, i8** %133, align 16, !dbg !3458, !tbaa !727
  %134 = icmp eq i8* %132, null, !dbg !3459
  br i1 %134, label %30, label %135, !dbg !3460

135:                                              ; preds = %128
  call void @llvm.dbg.value(metadata i64 9, metadata !3448, metadata !DIExpression()), !dbg !3451
  %136 = load i8*, i8** %9, align 8, !dbg !3454
  %137 = getelementptr i8, i8* %136, i64 8, !dbg !3454
  store i8* %137, i8** %9, align 8, !dbg !3454
  %138 = bitcast i8* %136 to i8**, !dbg !3454
  %139 = load i8*, i8** %138, align 8, !dbg !3454
  %140 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9, !dbg !3457
  store i8* %139, i8** %140, align 8, !dbg !3458, !tbaa !727
  %141 = icmp eq i8* %139, null, !dbg !3459
  %142 = select i1 %141, i64 9, i64 10, !dbg !3460
  br label %30, !dbg !3460
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, ...) local_unnamed_addr #8 !dbg !3464 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3468, metadata !DIExpression()), !dbg !3478
  call void @llvm.dbg.value(metadata i8* %1, metadata !3469, metadata !DIExpression()), !dbg !3478
  call void @llvm.dbg.value(metadata i8* %2, metadata !3470, metadata !DIExpression()), !dbg !3478
  call void @llvm.dbg.value(metadata i8* %3, metadata !3471, metadata !DIExpression()), !dbg !3478
  %6 = bitcast [1 x %struct.__va_list_tag]* %5 to i8*, !dbg !3479
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %6) #27, !dbg !3479
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %5, metadata !3472, metadata !DIExpression()), !dbg !3480
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0, !dbg !3481
  call void @llvm.va_start(i8* nonnull %6), !dbg !3481
  call void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nonnull %7), !dbg !3482
  call void @llvm.va_end(i8* nonnull %6), !dbg !3483
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %6) #27, !dbg !3484
  ret void, !dbg !3484
}

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #23

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #23

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #8 !dbg !3485 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !3486, !tbaa !727
  %2 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.104, i64 0, i64 0), %struct._IO_FILE* %1), !dbg !3486
  %3 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16.119, i64 0, i64 0), i32 5) #27, !dbg !3487
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %3, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.17.120, i64 0, i64 0)) #27, !dbg !3487
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.18.121, i64 0, i64 0), i32 5) #27, !dbg !3488
  %6 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %5, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.19.122, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.20.123, i64 0, i64 0)) #27, !dbg !3488
  %7 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.21.124, i64 0, i64 0), i32 5) #27, !dbg !3489
  %8 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %7, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.22.125, i64 0, i64 0)) #27, !dbg !3489
  ret void, !dbg !3490
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnmalloc(i64 %0, i64 %1) local_unnamed_addr #24 !dbg !3491 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3495, metadata !DIExpression()), !dbg !3497
  call void @llvm.dbg.value(metadata i64 %1, metadata !3496, metadata !DIExpression()), !dbg !3497
  %3 = udiv i64 9223372036854775807, %1, !dbg !3498
  %4 = icmp ult i64 %3, %0, !dbg !3498
  br i1 %4, label %5, label %6, !dbg !3500

5:                                                ; preds = %2
  tail call void @xalloc_die() #29, !dbg !3501
  unreachable, !dbg !3501

6:                                                ; preds = %2
  %7 = mul i64 %1, %0, !dbg !3502
  call void @llvm.dbg.value(metadata i64 %7, metadata !3503, metadata !DIExpression()) #27, !dbg !3509
  %8 = tail call noalias i8* @malloc(i64 %7) #27, !dbg !3511
  call void @llvm.dbg.value(metadata i8* %8, metadata !3508, metadata !DIExpression()) #27, !dbg !3509
  %9 = icmp eq i8* %8, null, !dbg !3512
  %10 = icmp ne i64 %7, 0
  %11 = and i1 %10, %9, !dbg !3514
  br i1 %11, label %12, label %13, !dbg !3514

12:                                               ; preds = %6
  tail call void @xalloc_die() #29, !dbg !3515
  unreachable, !dbg !3515

13:                                               ; preds = %6
  ret i8* %8, !dbg !3516
}

; Function Attrs: inaccessiblememonly nofree nounwind willreturn
declare noalias noundef i8* @malloc(i64) local_unnamed_addr #25

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xmalloc(i64 %0) local_unnamed_addr #8 !dbg !3504 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3503, metadata !DIExpression()), !dbg !3517
  %2 = tail call noalias i8* @malloc(i64 %0) #27, !dbg !3518
  call void @llvm.dbg.value(metadata i8* %2, metadata !3508, metadata !DIExpression()), !dbg !3517
  %3 = icmp eq i8* %2, null, !dbg !3519
  %4 = icmp ne i64 %0, 0
  %5 = and i1 %4, %3, !dbg !3520
  br i1 %5, label %6, label %7, !dbg !3520

6:                                                ; preds = %1
  tail call void @xalloc_die() #29, !dbg !3521
  unreachable, !dbg !3521

7:                                                ; preds = %1
  ret i8* %2, !dbg !3522
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnrealloc(i8* %0, i64 %1, i64 %2) local_unnamed_addr #24 !dbg !3523 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3527, metadata !DIExpression()), !dbg !3530
  call void @llvm.dbg.value(metadata i64 %1, metadata !3528, metadata !DIExpression()), !dbg !3530
  call void @llvm.dbg.value(metadata i64 %2, metadata !3529, metadata !DIExpression()), !dbg !3530
  %4 = udiv i64 9223372036854775807, %2, !dbg !3531
  %5 = icmp ult i64 %4, %1, !dbg !3531
  br i1 %5, label %6, label %7, !dbg !3533

6:                                                ; preds = %3
  tail call void @xalloc_die() #29, !dbg !3534
  unreachable, !dbg !3534

7:                                                ; preds = %3
  %8 = mul i64 %2, %1, !dbg !3535
  call void @llvm.dbg.value(metadata i8* %0, metadata !3536, metadata !DIExpression()) #27, !dbg !3542
  call void @llvm.dbg.value(metadata i64 %8, metadata !3541, metadata !DIExpression()) #27, !dbg !3542
  %9 = icmp eq i64 %8, 0, !dbg !3544
  %10 = icmp ne i8* %0, null
  %11 = and i1 %10, %9, !dbg !3546
  br i1 %11, label %12, label %13, !dbg !3546

12:                                               ; preds = %7
  tail call void @free(i8* nonnull %0) #27, !dbg !3547
  br label %19, !dbg !3549

13:                                               ; preds = %7
  %14 = tail call i8* @realloc(i8* %0, i64 %8) #27, !dbg !3550
  call void @llvm.dbg.value(metadata i8* %14, metadata !3536, metadata !DIExpression()) #27, !dbg !3542
  %15 = icmp eq i8* %14, null, !dbg !3551
  %16 = icmp ne i64 %8, 0
  %17 = and i1 %16, %15, !dbg !3553
  br i1 %17, label %18, label %19, !dbg !3553

18:                                               ; preds = %13
  tail call void @xalloc_die() #29, !dbg !3554
  unreachable, !dbg !3554

19:                                               ; preds = %12, %13
  %20 = phi i8* [ null, %12 ], [ %14, %13 ], !dbg !3542
  ret i8* %20, !dbg !3555
}

; Function Attrs: inaccessiblemem_or_argmemonly nounwind willreturn
declare noalias noundef i8* @realloc(i8* nocapture, i64) local_unnamed_addr #12

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xrealloc(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !3537 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3536, metadata !DIExpression()), !dbg !3556
  call void @llvm.dbg.value(metadata i64 %1, metadata !3541, metadata !DIExpression()), !dbg !3556
  %3 = icmp eq i64 %1, 0, !dbg !3557
  %4 = icmp ne i8* %0, null
  %5 = and i1 %4, %3, !dbg !3558
  br i1 %5, label %6, label %7, !dbg !3558

6:                                                ; preds = %2
  tail call void @free(i8* nonnull %0) #27, !dbg !3559
  br label %13, !dbg !3560

7:                                                ; preds = %2
  %8 = tail call i8* @realloc(i8* %0, i64 %1) #27, !dbg !3561
  call void @llvm.dbg.value(metadata i8* %8, metadata !3536, metadata !DIExpression()), !dbg !3556
  %9 = icmp eq i8* %8, null, !dbg !3562
  %10 = icmp ne i64 %1, 0
  %11 = and i1 %10, %9, !dbg !3563
  br i1 %11, label %12, label %13, !dbg !3563

12:                                               ; preds = %7
  tail call void @xalloc_die() #29, !dbg !3564
  unreachable, !dbg !3564

13:                                               ; preds = %7, %6
  %14 = phi i8* [ null, %6 ], [ %8, %7 ], !dbg !3556
  ret i8* %14, !dbg !3565
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @x2nrealloc(i8* %0, i64* nocapture %1, i64 %2) local_unnamed_addr #24 !dbg !288 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !293, metadata !DIExpression()), !dbg !3566
  call void @llvm.dbg.value(metadata i64* %1, metadata !294, metadata !DIExpression()), !dbg !3566
  call void @llvm.dbg.value(metadata i64 %2, metadata !295, metadata !DIExpression()), !dbg !3566
  %4 = load i64, i64* %1, align 8, !dbg !3567, !tbaa !2578
  call void @llvm.dbg.value(metadata i64 %4, metadata !296, metadata !DIExpression()), !dbg !3566
  %5 = icmp eq i8* %0, null, !dbg !3568
  br i1 %5, label %6, label %20, !dbg !3570

6:                                                ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !3571
  br i1 %7, label %8, label %13, !dbg !3574

8:                                                ; preds = %6
  %9 = udiv i64 128, %2, !dbg !3575
  call void @llvm.dbg.value(metadata i64 %9, metadata !296, metadata !DIExpression()), !dbg !3566
  %10 = icmp ugt i64 %2, 128, !dbg !3577
  %11 = zext i1 %10 to i64, !dbg !3577
  %12 = add nuw nsw i64 %9, %11, !dbg !3578
  call void @llvm.dbg.value(metadata i64 %12, metadata !296, metadata !DIExpression()), !dbg !3566
  br label %13, !dbg !3579

13:                                               ; preds = %8, %6
  %14 = phi i64 [ %4, %6 ], [ %12, %8 ], !dbg !3566
  call void @llvm.dbg.value(metadata i64 %14, metadata !296, metadata !DIExpression()), !dbg !3566
  %15 = udiv i64 9223372036854775807, %2, !dbg !3580
  %16 = icmp ult i64 %15, %14, !dbg !3580
  br i1 %16, label %19, label %17, !dbg !3582

17:                                               ; preds = %13
  call void @llvm.dbg.value(metadata i64 %27, metadata !296, metadata !DIExpression()), !dbg !3566
  store i64 %14, i64* %1, align 8, !dbg !3583, !tbaa !2578
  %18 = mul i64 %14, %2, !dbg !3584
  call void @llvm.dbg.value(metadata i8* %0, metadata !3536, metadata !DIExpression()) #27, !dbg !3585
  call void @llvm.dbg.value(metadata i64 %28, metadata !3541, metadata !DIExpression()) #27, !dbg !3585
  br label %31, !dbg !3587

19:                                               ; preds = %13
  tail call void @xalloc_die() #29, !dbg !3588
  unreachable, !dbg !3588

20:                                               ; preds = %3
  %21 = udiv i64 6148914691236517204, %2, !dbg !3589
  %22 = icmp ugt i64 %21, %4, !dbg !3592
  br i1 %22, label %24, label %23, !dbg !3593

23:                                               ; preds = %20
  tail call void @xalloc_die() #29, !dbg !3594
  unreachable, !dbg !3594

24:                                               ; preds = %20
  %25 = lshr i64 %4, 1, !dbg !3595
  %26 = add nuw i64 %4, 1, !dbg !3596
  %27 = add i64 %26, %25, !dbg !3597
  call void @llvm.dbg.value(metadata i64 %27, metadata !296, metadata !DIExpression()), !dbg !3566
  store i64 %27, i64* %1, align 8, !dbg !3583, !tbaa !2578
  %28 = mul i64 %27, %2, !dbg !3584
  call void @llvm.dbg.value(metadata i8* %0, metadata !3536, metadata !DIExpression()) #27, !dbg !3585
  call void @llvm.dbg.value(metadata i64 %28, metadata !3541, metadata !DIExpression()) #27, !dbg !3585
  %29 = icmp eq i64 %28, 0, !dbg !3598
  br i1 %29, label %30, label %31, !dbg !3587

30:                                               ; preds = %24
  tail call void @free(i8* nonnull %0) #27, !dbg !3599
  br label %38, !dbg !3600

31:                                               ; preds = %17, %24
  %32 = phi i64 [ %18, %17 ], [ %28, %24 ]
  %33 = tail call i8* @realloc(i8* %0, i64 %32) #27, !dbg !3601
  call void @llvm.dbg.value(metadata i8* %33, metadata !3536, metadata !DIExpression()) #27, !dbg !3585
  %34 = icmp eq i8* %33, null, !dbg !3602
  %35 = icmp ne i64 %32, 0
  %36 = and i1 %35, %34, !dbg !3603
  br i1 %36, label %37, label %38, !dbg !3603

37:                                               ; preds = %31
  tail call void @xalloc_die() #29, !dbg !3604
  unreachable, !dbg !3604

38:                                               ; preds = %30, %31
  %39 = phi i8* [ null, %30 ], [ %33, %31 ], !dbg !3585
  ret i8* %39, !dbg !3605
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xcharalloc(i64 %0) local_unnamed_addr #24 !dbg !3606 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3608, metadata !DIExpression()), !dbg !3609
  call void @llvm.dbg.value(metadata i64 %0, metadata !3503, metadata !DIExpression()) #27, !dbg !3610
  %2 = tail call noalias i8* @malloc(i64 %0) #27, !dbg !3612
  call void @llvm.dbg.value(metadata i8* %2, metadata !3508, metadata !DIExpression()) #27, !dbg !3610
  %3 = icmp eq i8* %2, null, !dbg !3613
  %4 = icmp ne i64 %0, 0
  %5 = and i1 %4, %3, !dbg !3614
  br i1 %5, label %6, label %7, !dbg !3614

6:                                                ; preds = %1
  tail call void @xalloc_die() #29, !dbg !3615
  unreachable, !dbg !3615

7:                                                ; preds = %1
  ret i8* %2, !dbg !3616
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @x2realloc(i8* %0, i64* nocapture %1) local_unnamed_addr #8 !dbg !3617 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3621, metadata !DIExpression()), !dbg !3623
  call void @llvm.dbg.value(metadata i64* %1, metadata !3622, metadata !DIExpression()), !dbg !3623
  call void @llvm.dbg.value(metadata i8* %0, metadata !293, metadata !DIExpression()) #27, !dbg !3624
  call void @llvm.dbg.value(metadata i64* %1, metadata !294, metadata !DIExpression()) #27, !dbg !3624
  call void @llvm.dbg.value(metadata i64 1, metadata !295, metadata !DIExpression()) #27, !dbg !3624
  %3 = load i64, i64* %1, align 8, !dbg !3626, !tbaa !2578
  call void @llvm.dbg.value(metadata i64 %3, metadata !296, metadata !DIExpression()) #27, !dbg !3624
  %4 = icmp eq i8* %0, null, !dbg !3627
  br i1 %4, label %5, label %10, !dbg !3628

5:                                                ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !3629
  br i1 %6, label %17, label %7, !dbg !3630

7:                                                ; preds = %5
  call void @llvm.dbg.value(metadata i64 %3, metadata !296, metadata !DIExpression()) #27, !dbg !3624
  %8 = icmp slt i64 %3, 0, !dbg !3631
  br i1 %8, label %9, label %17, !dbg !3632

9:                                                ; preds = %7
  tail call void @xalloc_die() #29, !dbg !3633
  unreachable, !dbg !3633

10:                                               ; preds = %2
  %11 = icmp ult i64 %3, 6148914691236517204, !dbg !3634
  br i1 %11, label %13, label %12, !dbg !3635

12:                                               ; preds = %10
  tail call void @xalloc_die() #29, !dbg !3636
  unreachable, !dbg !3636

13:                                               ; preds = %10
  %14 = lshr i64 %3, 1, !dbg !3637
  %15 = add nuw nsw i64 %3, 1, !dbg !3638
  %16 = add nuw nsw i64 %15, %14, !dbg !3639
  call void @llvm.dbg.value(metadata i64 %16, metadata !296, metadata !DIExpression()) #27, !dbg !3624
  call void @llvm.dbg.value(metadata i8* %0, metadata !3536, metadata !DIExpression()) #27, !dbg !3640
  call void @llvm.dbg.value(metadata i64 %16, metadata !3541, metadata !DIExpression()) #27, !dbg !3640
  br label %17, !dbg !3642

17:                                               ; preds = %7, %5, %13
  %18 = phi i64 [ %16, %13 ], [ %3, %7 ], [ 128, %5 ], !dbg !3643
  store i64 %18, i64* %1, align 8, !dbg !3643, !tbaa !2578
  %19 = tail call i8* @realloc(i8* %0, i64 %18) #27, !dbg !3644
  call void @llvm.dbg.value(metadata i8* %19, metadata !3536, metadata !DIExpression()) #27, !dbg !3640
  %20 = icmp eq i8* %19, null, !dbg !3645
  br i1 %20, label %21, label %22, !dbg !3646

21:                                               ; preds = %17
  tail call void @xalloc_die() #29, !dbg !3647
  unreachable, !dbg !3647

22:                                               ; preds = %17
  ret i8* %19, !dbg !3648
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xzalloc(i64 %0) local_unnamed_addr #8 !dbg !3649 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3651, metadata !DIExpression()), !dbg !3652
  call void @llvm.dbg.value(metadata i64 %0, metadata !3653, metadata !DIExpression()) #27, !dbg !3658
  call void @llvm.dbg.value(metadata i64 1, metadata !3656, metadata !DIExpression()) #27, !dbg !3658
  %2 = icmp slt i64 %0, 0, !dbg !3660
  br i1 %2, label %6, label %3, !dbg !3662

3:                                                ; preds = %1
  %4 = tail call i8* @rpl_calloc(i64 %0, i64 1) #27, !dbg !3663
  call void @llvm.dbg.value(metadata i8* %4, metadata !3657, metadata !DIExpression()) #27, !dbg !3658
  %5 = icmp eq i8* %4, null, !dbg !3664
  br i1 %5, label %6, label %7, !dbg !3665

6:                                                ; preds = %3, %1
  tail call void @xalloc_die() #29, !dbg !3666
  unreachable, !dbg !3666

7:                                                ; preds = %3
  ret i8* %4, !dbg !3667
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xcalloc(i64 %0, i64 %1) local_unnamed_addr #8 !dbg !3654 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3653, metadata !DIExpression()), !dbg !3668
  call void @llvm.dbg.value(metadata i64 %1, metadata !3656, metadata !DIExpression()), !dbg !3668
  %3 = udiv i64 9223372036854775807, %1, !dbg !3669
  %4 = icmp ult i64 %3, %0, !dbg !3669
  br i1 %4, label %8, label %5, !dbg !3670

5:                                                ; preds = %2
  %6 = tail call i8* @rpl_calloc(i64 %0, i64 %1) #27, !dbg !3671
  call void @llvm.dbg.value(metadata i8* %6, metadata !3657, metadata !DIExpression()), !dbg !3668
  %7 = icmp eq i8* %6, null, !dbg !3672
  br i1 %7, label %8, label %9, !dbg !3673

8:                                                ; preds = %5, %2
  tail call void @xalloc_die() #29, !dbg !3674
  unreachable, !dbg !3674

9:                                                ; preds = %5
  ret i8* %6, !dbg !3675
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @xmemdup(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !3676 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3680, metadata !DIExpression()), !dbg !3682
  call void @llvm.dbg.value(metadata i64 %1, metadata !3681, metadata !DIExpression()), !dbg !3682
  call void @llvm.dbg.value(metadata i64 %1, metadata !3503, metadata !DIExpression()) #27, !dbg !3683
  %3 = tail call noalias i8* @malloc(i64 %1) #27, !dbg !3685
  call void @llvm.dbg.value(metadata i8* %3, metadata !3508, metadata !DIExpression()) #27, !dbg !3683
  %4 = icmp eq i8* %3, null, !dbg !3686
  %5 = icmp ne i64 %1, 0
  %6 = and i1 %5, %4, !dbg !3687
  br i1 %6, label %7, label %8, !dbg !3687

7:                                                ; preds = %2
  tail call void @xalloc_die() #29, !dbg !3688
  unreachable, !dbg !3688

8:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i8* %3, metadata !3689, metadata !DIExpression()) #27, !dbg !3694
  call void @llvm.dbg.value(metadata i8* %0, metadata !3692, metadata !DIExpression()) #27, !dbg !3694
  call void @llvm.dbg.value(metadata i64 %1, metadata !3693, metadata !DIExpression()) #27, !dbg !3694
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %3, i8* nonnull align 1 %0, i64 %1, i1 false) #27, !dbg !3696
  ret i8* %3, !dbg !3697
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xstrdup(i8* %0) local_unnamed_addr #8 !dbg !3698 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3700, metadata !DIExpression()), !dbg !3701
  %2 = tail call i64 @strlen(i8* nonnull dereferenceable(1) %0) #28, !dbg !3702
  %3 = add i64 %2, 1, !dbg !3703
  call void @llvm.dbg.value(metadata i8* %0, metadata !3680, metadata !DIExpression()) #27, !dbg !3704
  call void @llvm.dbg.value(metadata i64 %3, metadata !3681, metadata !DIExpression()) #27, !dbg !3704
  call void @llvm.dbg.value(metadata i64 %3, metadata !3503, metadata !DIExpression()) #27, !dbg !3706
  %4 = tail call noalias i8* @malloc(i64 %3) #27, !dbg !3708
  call void @llvm.dbg.value(metadata i8* %4, metadata !3508, metadata !DIExpression()) #27, !dbg !3706
  %5 = icmp eq i8* %4, null, !dbg !3709
  %6 = icmp ne i64 %3, 0
  %7 = and i1 %6, %5, !dbg !3710
  br i1 %7, label %8, label %9, !dbg !3710

8:                                                ; preds = %1
  tail call void @xalloc_die() #29, !dbg !3711
  unreachable, !dbg !3711

9:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i8* %4, metadata !3689, metadata !DIExpression()) #27, !dbg !3712
  call void @llvm.dbg.value(metadata i8* %0, metadata !3692, metadata !DIExpression()) #27, !dbg !3712
  call void @llvm.dbg.value(metadata i64 %3, metadata !3693, metadata !DIExpression()) #27, !dbg !3712
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %4, i8* nonnull align 1 %0, i64 %3, i1 false) #27, !dbg !3714
  ret i8* %4, !dbg !3715
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !3716 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !3717, !tbaa !1228
  %2 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.136, i64 0, i64 0), i32 5) #27, !dbg !3718
  tail call void (i32, i32, i8*, ...) @error(i32 %1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.137, i64 0, i64 0), i8* %2) #27, !dbg !3719
  tail call void @abort() #29, !dbg !3720
  unreachable, !dbg !3720
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @xprintf(i8* noalias %0, ...) local_unnamed_addr #8 !dbg !3721 {
  %2 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata i8* %0, metadata !3726, metadata !DIExpression()), !dbg !3739
  %3 = bitcast [1 x %struct.__va_list_tag]* %2 to i8*, !dbg !3740
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %3) #27, !dbg !3740
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %2, metadata !3727, metadata !DIExpression()), !dbg !3741
  %4 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, !dbg !3742
  call void @llvm.va_start(i8* nonnull %3), !dbg !3742
  call void @llvm.dbg.value(metadata i8* %0, metadata !3743, metadata !DIExpression()) #27, !dbg !3751
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %4, metadata !3749, metadata !DIExpression()) #27, !dbg !3751
  call void @llvm.dbg.value(metadata i8* %0, metadata !3753, metadata !DIExpression()) #27, !dbg !3758
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %4, metadata !3757, metadata !DIExpression()) #27, !dbg !3758
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !3760, !tbaa !727, !noalias !3761
  %6 = call i32 @__vfprintf_chk(%struct._IO_FILE* %5, i32 1, i8* %0, %struct.__va_list_tag* nonnull %4) #27, !dbg !3766
  call void @llvm.dbg.value(metadata i32 %6, metadata !3750, metadata !DIExpression()) #27, !dbg !3751
  %7 = icmp slt i32 %6, 0, !dbg !3767
  br i1 %7, label %8, label %17, !dbg !3769

8:                                                ; preds = %1
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !3770, !tbaa !727
  %10 = call i32 @ferror(%struct._IO_FILE* %9) #27, !dbg !3771
  %11 = icmp eq i32 %10, 0, !dbg !3771
  br i1 %11, label %12, label %17, !dbg !3772

12:                                               ; preds = %8
  %13 = load volatile i32, i32* @exit_failure, align 4, !dbg !3773, !tbaa !1228
  %14 = tail call i32* @__errno_location() #31, !dbg !3774
  %15 = load i32, i32* %14, align 4, !dbg !3774, !tbaa !1228
  %16 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.140, i64 0, i64 0), i32 5) #27, !dbg !3775
  call void (i32, i32, i8*, ...) @error(i32 %13, i32 %15, i8* %16) #27, !dbg !3776
  br label %17, !dbg !3776

17:                                               ; preds = %1, %8, %12
  call void @llvm.dbg.value(metadata i32 %6, metadata !3738, metadata !DIExpression()), !dbg !3739
  call void @llvm.va_end(i8* nonnull %3), !dbg !3777
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %3) #27, !dbg !3778
  ret i32 %6, !dbg !3779
}

declare i32 @__vfprintf_chk(%struct._IO_FILE*, i32, i8*, %struct.__va_list_tag*) local_unnamed_addr #3

; Function Attrs: nofree nounwind readonly
declare !dbg !3780 noundef i32 @ferror(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #9

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @xvprintf(i8* noalias %0, %struct.__va_list_tag* %1) local_unnamed_addr #8 !dbg !3744 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3743, metadata !DIExpression()), !dbg !3815
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %1, metadata !3749, metadata !DIExpression()), !dbg !3815
  call void @llvm.dbg.value(metadata i8* %0, metadata !3753, metadata !DIExpression()) #27, !dbg !3816
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %1, metadata !3757, metadata !DIExpression()) #27, !dbg !3816
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !3818, !tbaa !727, !noalias !3819
  %4 = tail call i32 @__vfprintf_chk(%struct._IO_FILE* %3, i32 1, i8* %0, %struct.__va_list_tag* %1) #27, !dbg !3822
  call void @llvm.dbg.value(metadata i32 %4, metadata !3750, metadata !DIExpression()), !dbg !3815
  %5 = icmp slt i32 %4, 0, !dbg !3823
  br i1 %5, label %6, label %15, !dbg !3824

6:                                                ; preds = %2
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !3825, !tbaa !727
  %8 = tail call i32 @ferror(%struct._IO_FILE* %7) #27, !dbg !3826
  %9 = icmp eq i32 %8, 0, !dbg !3826
  br i1 %9, label %10, label %15, !dbg !3827

10:                                               ; preds = %6
  %11 = load volatile i32, i32* @exit_failure, align 4, !dbg !3828, !tbaa !1228
  %12 = tail call i32* @__errno_location() #31, !dbg !3829
  %13 = load i32, i32* %12, align 4, !dbg !3829, !tbaa !1228
  %14 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.140, i64 0, i64 0), i32 5) #27, !dbg !3830
  tail call void (i32, i32, i8*, ...) @error(i32 %11, i32 %13, i8* %14) #27, !dbg !3831
  br label %15, !dbg !3831

15:                                               ; preds = %10, %6, %2
  ret i32 %4, !dbg !3832
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @xfprintf(%struct._IO_FILE* noalias %0, i8* noalias %1, ...) local_unnamed_addr #8 !dbg !3833 {
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3840, metadata !DIExpression()), !dbg !3844
  call void @llvm.dbg.value(metadata i8* %1, metadata !3841, metadata !DIExpression()), !dbg !3844
  %4 = bitcast [1 x %struct.__va_list_tag]* %3 to i8*, !dbg !3845
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %4) #27, !dbg !3845
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %3, metadata !3842, metadata !DIExpression()), !dbg !3846
  %5 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, !dbg !3847
  call void @llvm.va_start(i8* nonnull %4), !dbg !3847
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3848, metadata !DIExpression()) #27, !dbg !3856
  call void @llvm.dbg.value(metadata i8* %1, metadata !3853, metadata !DIExpression()) #27, !dbg !3856
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %5, metadata !3854, metadata !DIExpression()) #27, !dbg !3856
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3858, metadata !DIExpression()) #27, !dbg !3863
  call void @llvm.dbg.value(metadata i8* %1, metadata !3861, metadata !DIExpression()) #27, !dbg !3863
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %5, metadata !3862, metadata !DIExpression()) #27, !dbg !3863
  %6 = call i32 @__vfprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %1, %struct.__va_list_tag* nonnull %5) #27, !dbg !3865
  call void @llvm.dbg.value(metadata i32 %6, metadata !3855, metadata !DIExpression()) #27, !dbg !3856
  %7 = icmp slt i32 %6, 0, !dbg !3866
  br i1 %7, label %8, label %16, !dbg !3868

8:                                                ; preds = %2
  %9 = call i32 @ferror(%struct._IO_FILE* %0) #27, !dbg !3869
  %10 = icmp eq i32 %9, 0, !dbg !3869
  br i1 %10, label %11, label %16, !dbg !3870

11:                                               ; preds = %8
  %12 = load volatile i32, i32* @exit_failure, align 4, !dbg !3871, !tbaa !1228
  %13 = tail call i32* @__errno_location() #31, !dbg !3872
  %14 = load i32, i32* %13, align 4, !dbg !3872, !tbaa !1228
  %15 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.140, i64 0, i64 0), i32 5) #27, !dbg !3873
  call void (i32, i32, i8*, ...) @error(i32 %12, i32 %14, i8* %15) #27, !dbg !3874
  br label %16, !dbg !3874

16:                                               ; preds = %2, %8, %11
  call void @llvm.dbg.value(metadata i32 %6, metadata !3843, metadata !DIExpression()), !dbg !3844
  call void @llvm.va_end(i8* nonnull %4), !dbg !3875
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %4) #27, !dbg !3876
  ret i32 %6, !dbg !3877
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @xvfprintf(%struct._IO_FILE* noalias %0, i8* noalias %1, %struct.__va_list_tag* %2) local_unnamed_addr #8 !dbg !3849 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3848, metadata !DIExpression()), !dbg !3878
  call void @llvm.dbg.value(metadata i8* %1, metadata !3853, metadata !DIExpression()), !dbg !3878
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %2, metadata !3854, metadata !DIExpression()), !dbg !3878
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3858, metadata !DIExpression()) #27, !dbg !3879
  call void @llvm.dbg.value(metadata i8* %1, metadata !3861, metadata !DIExpression()) #27, !dbg !3879
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %2, metadata !3862, metadata !DIExpression()) #27, !dbg !3879
  %4 = tail call i32 @__vfprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %1, %struct.__va_list_tag* %2) #27, !dbg !3881
  call void @llvm.dbg.value(metadata i32 %4, metadata !3855, metadata !DIExpression()), !dbg !3878
  %5 = icmp slt i32 %4, 0, !dbg !3882
  br i1 %5, label %6, label %14, !dbg !3883

6:                                                ; preds = %3
  %7 = tail call i32 @ferror(%struct._IO_FILE* %0) #27, !dbg !3884
  %8 = icmp eq i32 %7, 0, !dbg !3884
  br i1 %8, label %9, label %14, !dbg !3885

9:                                                ; preds = %6
  %10 = load volatile i32, i32* @exit_failure, align 4, !dbg !3886, !tbaa !1228
  %11 = tail call i32* @__errno_location() #31, !dbg !3887
  %12 = load i32, i32* %11, align 4, !dbg !3887, !tbaa !1228
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.140, i64 0, i64 0), i32 5) #27, !dbg !3888
  tail call void (i32, i32, i8*, ...) @error(i32 %10, i32 %12, i8* %13) #27, !dbg !3889
  br label %14, !dbg !3889

14:                                               ; preds = %9, %6, %3
  ret i32 %4, !dbg !3890
}

; Function Attrs: nofree nounwind sspstrong uwtable willreturn
define dso_local noalias i8* @rpl_calloc(i64 %0, i64 %1) local_unnamed_addr #26 !dbg !3891 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3893, metadata !DIExpression()), !dbg !3899
  call void @llvm.dbg.value(metadata i64 %1, metadata !3894, metadata !DIExpression()), !dbg !3899
  %3 = icmp eq i64 %0, 0, !dbg !3900
  %4 = icmp eq i64 %1, 0
  %5 = or i1 %3, %4, !dbg !3901
  br i1 %5, label %11, label %6, !dbg !3901

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i64 undef, metadata !3896, metadata !DIExpression()), !dbg !3902
  %7 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %1, i64 %0), !dbg !3903
  %8 = extractvalue { i64, i1 } %7, 1, !dbg !3903
  br i1 %8, label %9, label %11, !dbg !3905

9:                                                ; preds = %6
  %10 = tail call i32* @__errno_location() #31, !dbg !3906
  store i32 12, i32* %10, align 4, !dbg !3908, !tbaa !1228
  br label %15

11:                                               ; preds = %6, %2
  %12 = phi i64 [ 1, %2 ], [ %1, %6 ]
  %13 = phi i64 [ 1, %2 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i64 %13, metadata !3893, metadata !DIExpression()), !dbg !3899
  call void @llvm.dbg.value(metadata i64 %12, metadata !3894, metadata !DIExpression()), !dbg !3899
  %14 = tail call noalias i8* @calloc(i64 %13, i64 %12) #27, !dbg !3909
  call void @llvm.dbg.value(metadata i8* %14, metadata !3895, metadata !DIExpression()), !dbg !3899
  br label %15, !dbg !3910

15:                                               ; preds = %9, %11
  %16 = phi i8* [ %14, %11 ], [ null, %9 ], !dbg !3899
  ret i8* %16, !dbg !3911
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: inaccessiblememonly nofree nounwind willreturn
declare noalias noundef i8* @calloc(i64, i64) local_unnamed_addr #25

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rpl_mbrtowc(i32* %0, i8* %1, i64 %2, %struct.__mbstate_t* %3) local_unnamed_addr #8 !dbg !3912 {
  %5 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32* %0, metadata !3928, metadata !DIExpression()), !dbg !3937
  call void @llvm.dbg.value(metadata i8* %1, metadata !3929, metadata !DIExpression()), !dbg !3937
  call void @llvm.dbg.value(metadata i64 %2, metadata !3930, metadata !DIExpression()), !dbg !3937
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %3, metadata !3931, metadata !DIExpression()), !dbg !3937
  %6 = bitcast i32* %5 to i8*, !dbg !3938
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #27, !dbg !3938
  %7 = icmp eq i32* %0, null, !dbg !3939
  %8 = select i1 %7, i32* %5, i32* %0, !dbg !3941
  call void @llvm.dbg.value(metadata i32* %8, metadata !3928, metadata !DIExpression()), !dbg !3937
  %9 = call i64 @mbrtowc(i32* %8, i8* %1, i64 %2, %struct.__mbstate_t* %3) #27, !dbg !3942
  call void @llvm.dbg.value(metadata i64 %9, metadata !3932, metadata !DIExpression()), !dbg !3937
  %10 = icmp ugt i64 %9, -3, !dbg !3943
  %11 = icmp ne i64 %2, 0
  %12 = and i1 %11, %10, !dbg !3944
  br i1 %12, label %13, label %18, !dbg !3944

13:                                               ; preds = %4
  %14 = call zeroext i1 @hard_locale(i32 0) #27, !dbg !3945
  br i1 %14, label %18, label %15, !dbg !3946

15:                                               ; preds = %13
  %16 = load i8, i8* %1, align 1, !dbg !3947, !tbaa !937
  call void @llvm.dbg.value(metadata i8 %16, metadata !3934, metadata !DIExpression()), !dbg !3948
  %17 = zext i8 %16 to i32, !dbg !3949
  store i32 %17, i32* %8, align 4, !dbg !3950, !tbaa !1228
  br label %18

18:                                               ; preds = %4, %13, %15
  %19 = phi i64 [ 1, %15 ], [ %9, %13 ], [ %9, %4 ], !dbg !3937
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #27, !dbg !3951
  ret i64 %19, !dbg !3951
}

; Function Attrs: nounwind
declare !dbg !3952 i64 @mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local x86_fp80 @c_strtold(i8* %0, i8** %1) local_unnamed_addr #8 !dbg !3957 {
  call void @llvm.dbg.declare(metadata [6 x i8]* undef, metadata !3963, metadata !DIExpression(DW_OP_LLVM_fragment, 80, 48)), !dbg !3967
  call void @llvm.dbg.value(metadata i8* %0, metadata !3961, metadata !DIExpression()), !dbg !3968
  call void @llvm.dbg.value(metadata i8** %1, metadata !3962, metadata !DIExpression()), !dbg !3968
  %3 = load volatile %struct.__locale_struct*, %struct.__locale_struct** @c_locale_cache, align 8, !dbg !3969, !tbaa !727
  %4 = icmp eq %struct.__locale_struct* %3, null, !dbg !3969
  br i1 %4, label %5, label %7, !dbg !3975

5:                                                ; preds = %2
  %6 = tail call %struct.__locale_struct* @newlocale(i32 8127, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.147, i64 0, i64 0), %struct.__locale_struct* null) #27, !dbg !3976
  store volatile %struct.__locale_struct* %6, %struct.__locale_struct** @c_locale_cache, align 8, !dbg !3977, !tbaa !727
  br label %7, !dbg !3978

7:                                                ; preds = %2, %5
  %8 = load volatile %struct.__locale_struct*, %struct.__locale_struct** @c_locale_cache, align 8, !dbg !3979, !tbaa !727
  call void @llvm.dbg.value(metadata %struct.__locale_struct* %8, metadata !3964, metadata !DIExpression()), !dbg !3968
  %9 = icmp eq %struct.__locale_struct* %8, null, !dbg !3980
  br i1 %9, label %10, label %13, !dbg !3982

10:                                               ; preds = %7
  %11 = icmp eq i8** %1, null, !dbg !3983
  br i1 %11, label %27, label %12, !dbg !3986

12:                                               ; preds = %10
  store i8* %0, i8** %1, align 8, !dbg !3987, !tbaa !727
  br label %27, !dbg !3988

13:                                               ; preds = %7
  %14 = tail call %struct.__locale_struct* @uselocale(%struct.__locale_struct* nonnull %8) #27, !dbg !3989
  call void @llvm.dbg.value(metadata %struct.__locale_struct* %14, metadata !3965, metadata !DIExpression()), !dbg !3968
  %15 = icmp eq %struct.__locale_struct* %14, null, !dbg !3990
  br i1 %15, label %16, label %19, !dbg !3992

16:                                               ; preds = %13
  %17 = icmp eq i8** %1, null, !dbg !3993
  br i1 %17, label %27, label %18, !dbg !3996

18:                                               ; preds = %16
  store i8* %0, i8** %1, align 8, !dbg !3997, !tbaa !727
  br label %27, !dbg !3998

19:                                               ; preds = %13
  %20 = tail call x86_fp80 @strtold(i8* %0, i8** %1) #27, !dbg !3999
  call void @llvm.dbg.value(metadata x86_fp80 %20, metadata !3963, metadata !DIExpression()), !dbg !3968
  %21 = tail call i32* @__errno_location() #31, !dbg !4000
  %22 = load i32, i32* %21, align 4, !dbg !4000, !tbaa !1228
  call void @llvm.dbg.value(metadata i32 %22, metadata !3966, metadata !DIExpression()), !dbg !3968
  %23 = tail call %struct.__locale_struct* @uselocale(%struct.__locale_struct* nonnull %14) #27, !dbg !4001
  %24 = icmp eq %struct.__locale_struct* %23, null, !dbg !4003
  br i1 %24, label %25, label %26, !dbg !4004

25:                                               ; preds = %19
  tail call void @abort() #29, !dbg !4005
  unreachable, !dbg !4005

26:                                               ; preds = %19
  store i32 %22, i32* %21, align 4, !dbg !4006, !tbaa !1228
  br label %27

27:                                               ; preds = %26, %18, %16, %10, %12
  %28 = phi x86_fp80 [ 0xK00000000000000000000, %12 ], [ 0xK00000000000000000000, %10 ], [ %20, %26 ], [ 0xK00000000000000000000, %18 ], [ 0xK00000000000000000000, %16 ], !dbg !3968
  ret x86_fp80 %28, !dbg !4007
}

; Function Attrs: nounwind
declare !dbg !4008 %struct.__locale_struct* @newlocale(i32, i8*, %struct.__locale_struct*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !4011 %struct.__locale_struct* @uselocale(%struct.__locale_struct*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @close_stream(%struct._IO_FILE* %0) local_unnamed_addr #8 !dbg !4014 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4052, metadata !DIExpression()), !dbg !4057
  %2 = tail call i64 @__fpending(%struct._IO_FILE* %0) #27, !dbg !4058
  call void @llvm.dbg.value(metadata i1 undef, metadata !4053, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4057
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4059, metadata !DIExpression()), !dbg !4062
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4064
  %4 = load i32, i32* %3, align 8, !dbg !4064, !tbaa !4065
  %5 = and i32 %4, 32, !dbg !4066
  %6 = icmp eq i32 %5, 0, !dbg !4066
  call void @llvm.dbg.value(metadata i1 %6, metadata !4055, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4057
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* %0) #27, !dbg !4067
  %8 = icmp eq i32 %7, 0, !dbg !4068
  call void @llvm.dbg.value(metadata i1 %8, metadata !4056, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4057
  br i1 %6, label %9, label %19, !dbg !4069

9:                                                ; preds = %1
  %10 = icmp ne i64 %2, 0, !dbg !4071
  call void @llvm.dbg.value(metadata i1 %10, metadata !4053, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4057
  %11 = or i1 %10, %8, !dbg !4072
  %12 = xor i1 %8, true, !dbg !4072
  %13 = sext i1 %12 to i32, !dbg !4072
  br i1 %11, label %22, label %14, !dbg !4072

14:                                               ; preds = %9
  %15 = tail call i32* @__errno_location() #31, !dbg !4073
  %16 = load i32, i32* %15, align 4, !dbg !4073, !tbaa !1228
  %17 = icmp ne i32 %16, 9, !dbg !4074
  %18 = sext i1 %17 to i32, !dbg !4075
  br label %22, !dbg !4075

19:                                               ; preds = %1
  br i1 %8, label %20, label %22, !dbg !4076

20:                                               ; preds = %19
  %21 = tail call i32* @__errno_location() #31, !dbg !4078
  store i32 0, i32* %21, align 4, !dbg !4080, !tbaa !1228
  br label %22, !dbg !4078

22:                                               ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ], !dbg !4057
  ret i32 %23, !dbg !4081
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local zeroext i1 @hard_locale(i32 %0) local_unnamed_addr #8 !dbg !4082 {
  %2 = alloca [257 x i8], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !4086, metadata !DIExpression()), !dbg !4091
  %3 = getelementptr inbounds [257 x i8], [257 x i8]* %2, i64 0, i64 0, !dbg !4092
  call void @llvm.lifetime.start.p0i8(i64 257, i8* nonnull %3) #27, !dbg !4092
  call void @llvm.dbg.declare(metadata [257 x i8]* %2, metadata !4087, metadata !DIExpression()), !dbg !4093
  %4 = call i32 @setlocale_null_r(i32 %0, i8* nonnull %3, i64 257) #27, !dbg !4094
  %5 = icmp eq i32 %4, 0, !dbg !4094
  br i1 %5, label %6, label %13, !dbg !4096

6:                                                ; preds = %1
  %7 = bitcast [257 x i8]* %2 to i16*, !dbg !4097
  %8 = load i16, i16* %7, align 16, !dbg !4097
  %9 = icmp eq i16 %8, 67, !dbg !4097
  br i1 %9, label %13, label %10, !dbg !4098

10:                                               ; preds = %6
  %11 = call i32 @bcmp(i8* nonnull dereferenceable(6) %3, i8* nonnull dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.152, i64 0, i64 0), i64 6), !dbg !4099
  %12 = icmp ne i32 %11, 0, !dbg !4100
  br label %13, !dbg !4098

13:                                               ; preds = %6, %10, %1
  %14 = phi i1 [ false, %1 ], [ false, %6 ], [ %12, %10 ], !dbg !4091
  call void @llvm.lifetime.end.p0i8(i64 257, i8* nonnull %3) #27, !dbg !4101
  ret i1 %14, !dbg !4101
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @locale_charset() local_unnamed_addr #8 !dbg !4102 {
  %1 = tail call i8* @nl_langinfo(i32 14) #27, !dbg !4107
  call void @llvm.dbg.value(metadata i8* %1, metadata !4106, metadata !DIExpression()), !dbg !4108
  %2 = icmp eq i8* %1, null, !dbg !4109
  %3 = select i1 %2, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.155, i64 0, i64 0), i8* %1, !dbg !4111
  call void @llvm.dbg.value(metadata i8* %3, metadata !4106, metadata !DIExpression()), !dbg !4108
  %4 = load i8, i8* %3, align 1, !dbg !4112, !tbaa !937
  %5 = icmp eq i8 %4, 0, !dbg !4116
  %6 = select i1 %5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.156, i64 0, i64 0), i8* %3, !dbg !4117
  call void @llvm.dbg.value(metadata i8* %6, metadata !4106, metadata !DIExpression()), !dbg !4108
  ret i8* %6, !dbg !4118
}

; Function Attrs: nounwind
declare !dbg !4119 i8* @nl_langinfo(i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @setlocale_null_r(i32 %0, i8* nonnull %1, i64 %2) local_unnamed_addr #8 !dbg !4122 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4126, metadata !DIExpression()), !dbg !4129
  call void @llvm.dbg.value(metadata i8* %1, metadata !4127, metadata !DIExpression()), !dbg !4129
  call void @llvm.dbg.value(metadata i64 %2, metadata !4128, metadata !DIExpression()), !dbg !4129
  call void @llvm.dbg.value(metadata i32 %0, metadata !4130, metadata !DIExpression()) #27, !dbg !4139
  call void @llvm.dbg.value(metadata i8* %1, metadata !4133, metadata !DIExpression()) #27, !dbg !4139
  call void @llvm.dbg.value(metadata i64 %2, metadata !4134, metadata !DIExpression()) #27, !dbg !4139
  call void @llvm.dbg.value(metadata i32 %0, metadata !4141, metadata !DIExpression()) #27, !dbg !4147
  %4 = tail call i8* @setlocale(i32 %0, i8* null) #27, !dbg !4149
  call void @llvm.dbg.value(metadata i8* %4, metadata !4146, metadata !DIExpression()) #27, !dbg !4147
  call void @llvm.dbg.value(metadata i8* %4, metadata !4135, metadata !DIExpression()) #27, !dbg !4139
  %5 = icmp eq i8* %4, null, !dbg !4150
  br i1 %5, label %6, label %9, !dbg !4151

6:                                                ; preds = %3
  %7 = icmp eq i64 %2, 0, !dbg !4152
  br i1 %7, label %19, label %8, !dbg !4155

8:                                                ; preds = %6
  store i8 0, i8* %1, align 1, !dbg !4156, !tbaa !937
  br label %19, !dbg !4157

9:                                                ; preds = %3
  %10 = tail call i64 @strlen(i8* nonnull %4) #28, !dbg !4158
  call void @llvm.dbg.value(metadata i64 %10, metadata !4136, metadata !DIExpression()) #27, !dbg !4159
  %11 = icmp ult i64 %10, %2, !dbg !4160
  br i1 %11, label %12, label %14, !dbg !4162

12:                                               ; preds = %9
  %13 = add nuw i64 %10, 1, !dbg !4163
  call void @llvm.dbg.value(metadata i8* %1, metadata !4165, metadata !DIExpression()) #27, !dbg !4170
  call void @llvm.dbg.value(metadata i8* %4, metadata !4168, metadata !DIExpression()) #27, !dbg !4170
  call void @llvm.dbg.value(metadata i64 %13, metadata !4169, metadata !DIExpression()) #27, !dbg !4170
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %1, i8* nonnull align 1 %4, i64 %13, i1 false) #27, !dbg !4172
  br label %19, !dbg !4173

14:                                               ; preds = %9
  %15 = icmp eq i64 %2, 0, !dbg !4174
  br i1 %15, label %19, label %16, !dbg !4177

16:                                               ; preds = %14
  %17 = add i64 %2, -1, !dbg !4178
  call void @llvm.dbg.value(metadata i8* %1, metadata !4165, metadata !DIExpression()) #27, !dbg !4180
  call void @llvm.dbg.value(metadata i8* %4, metadata !4168, metadata !DIExpression()) #27, !dbg !4180
  call void @llvm.dbg.value(metadata i64 %17, metadata !4169, metadata !DIExpression()) #27, !dbg !4180
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %1, i8* nonnull align 1 %4, i64 %17, i1 false) #27, !dbg !4182
  %18 = getelementptr inbounds i8, i8* %1, i64 %17, !dbg !4183
  store i8 0, i8* %18, align 1, !dbg !4184, !tbaa !937
  br label %19, !dbg !4185

19:                                               ; preds = %6, %8, %12, %14, %16
  %20 = phi i32 [ 22, %8 ], [ 22, %6 ], [ 0, %12 ], [ 34, %16 ], [ 34, %14 ], !dbg !4186
  ret i32 %20, !dbg !4187
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @setlocale_null(i32 %0) local_unnamed_addr #8 !dbg !4188 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4190, metadata !DIExpression()), !dbg !4191
  call void @llvm.dbg.value(metadata i32 %0, metadata !4141, metadata !DIExpression()) #27, !dbg !4192
  %2 = tail call i8* @setlocale(i32 %0, i8* null) #27, !dbg !4194
  call void @llvm.dbg.value(metadata i8* %2, metadata !4146, metadata !DIExpression()) #27, !dbg !4192
  ret i8* %2, !dbg !4195
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fclose(%struct._IO_FILE* nonnull %0) local_unnamed_addr #8 !dbg !4196 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4234, metadata !DIExpression()), !dbg !4238
  call void @llvm.dbg.value(metadata i32 0, metadata !4235, metadata !DIExpression()), !dbg !4238
  call void @llvm.dbg.value(metadata i32 0, metadata !4237, metadata !DIExpression()), !dbg !4238
  %2 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #27, !dbg !4239
  call void @llvm.dbg.value(metadata i32 %2, metadata !4236, metadata !DIExpression()), !dbg !4238
  %3 = icmp slt i32 %2, 0, !dbg !4240
  br i1 %3, label %4, label %6, !dbg !4242

4:                                                ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4243
  br label %24, !dbg !4244

6:                                                ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #27, !dbg !4245
  %8 = icmp eq i32 %7, 0, !dbg !4245
  br i1 %8, label %13, label %9, !dbg !4247

9:                                                ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #27, !dbg !4248
  %11 = tail call i64 @lseek(i32 %10, i64 0, i32 1) #27, !dbg !4249
  %12 = icmp eq i64 %11, -1, !dbg !4250
  br i1 %12, label %16, label %13, !dbg !4251

13:                                               ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* nonnull %0) #27, !dbg !4252
  %15 = icmp eq i32 %14, 0, !dbg !4252
  br i1 %15, label %16, label %18, !dbg !4253

16:                                               ; preds = %13, %9
  call void @llvm.dbg.value(metadata i32 %20, metadata !4235, metadata !DIExpression()), !dbg !4238
  %17 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4254
  call void @llvm.dbg.value(metadata i32 %21, metadata !4237, metadata !DIExpression()), !dbg !4238
  br label %24, !dbg !4255

18:                                               ; preds = %13
  %19 = tail call i32* @__errno_location() #31, !dbg !4256
  %20 = load i32, i32* %19, align 4, !dbg !4256, !tbaa !1228
  call void @llvm.dbg.value(metadata i32 %20, metadata !4235, metadata !DIExpression()), !dbg !4238
  %21 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4254
  call void @llvm.dbg.value(metadata i32 %21, metadata !4237, metadata !DIExpression()), !dbg !4238
  %22 = icmp eq i32 %20, 0, !dbg !4257
  br i1 %22, label %24, label %23, !dbg !4255

23:                                               ; preds = %18
  store i32 %20, i32* %19, align 4, !dbg !4259, !tbaa !1228
  call void @llvm.dbg.value(metadata i32 -1, metadata !4237, metadata !DIExpression()), !dbg !4238
  br label %24, !dbg !4261

24:                                               ; preds = %16, %18, %23, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !4238
  ret i32 %25, !dbg !4262
}

; Function Attrs: nofree nounwind
declare !dbg !4263 noundef i32 @fileno(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare !dbg !4266 noundef i32 @fclose(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @__freading(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !4267 i64 @lseek(i32, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fflush(%struct._IO_FILE* %0) local_unnamed_addr #8 !dbg !4271 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4309, metadata !DIExpression()), !dbg !4310
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !4311
  br i1 %2, label %6, label %3, !dbg !4313

3:                                                ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #27, !dbg !4314
  %5 = icmp eq i32 %4, 0, !dbg !4314
  br i1 %5, label %6, label %8, !dbg !4315

6:                                                ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* %0), !dbg !4316
  br label %17, !dbg !4317

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4318, metadata !DIExpression()) #27, !dbg !4323
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4325
  %10 = load i32, i32* %9, align 8, !dbg !4325, !tbaa !4065
  %11 = and i32 %10, 256, !dbg !4327
  %12 = icmp eq i32 %11, 0, !dbg !4327
  br i1 %12, label %15, label %13, !dbg !4328

13:                                               ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* nonnull %0, i64 0, i32 1) #27, !dbg !4329
  br label %15, !dbg !4329

15:                                               ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* nonnull %0), !dbg !4330
  br label %17, !dbg !4331

17:                                               ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ], !dbg !4310
  ret i32 %18, !dbg !4332
}

; Function Attrs: nofree nounwind
declare !dbg !4333 noundef i32 @fflush(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fseeko(%struct._IO_FILE* nocapture nonnull %0, i64 %1, i32 %2) local_unnamed_addr #8 !dbg !4336 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4375, metadata !DIExpression()), !dbg !4381
  call void @llvm.dbg.value(metadata i64 %1, metadata !4376, metadata !DIExpression()), !dbg !4381
  call void @llvm.dbg.value(metadata i32 %2, metadata !4377, metadata !DIExpression()), !dbg !4381
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !4382
  %5 = load i8*, i8** %4, align 8, !dbg !4382, !tbaa !4383
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !4384
  %7 = load i8*, i8** %6, align 8, !dbg !4384, !tbaa !4385
  %8 = icmp eq i8* %5, %7, !dbg !4386
  br i1 %8, label %9, label %28, !dbg !4387

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !4388
  %11 = load i8*, i8** %10, align 8, !dbg !4388, !tbaa !955
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !4389
  %13 = load i8*, i8** %12, align 8, !dbg !4389, !tbaa !4390
  %14 = icmp eq i8* %11, %13, !dbg !4391
  br i1 %14, label %15, label %28, !dbg !4392

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !4393
  %17 = load i8*, i8** %16, align 8, !dbg !4393, !tbaa !4394
  %18 = icmp eq i8* %17, null, !dbg !4395
  br i1 %18, label %19, label %28, !dbg !4396

19:                                               ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #27, !dbg !4397
  %21 = tail call i64 @lseek(i32 %20, i64 %1, i32 %2) #27, !dbg !4398
  call void @llvm.dbg.value(metadata i64 %21, metadata !4378, metadata !DIExpression()), !dbg !4399
  %22 = icmp eq i64 %21, -1, !dbg !4400
  br i1 %22, label %30, label %23, !dbg !4402

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4403
  %25 = load i32, i32* %24, align 8, !dbg !4404, !tbaa !4065
  %26 = and i32 %25, -17, !dbg !4404
  store i32 %26, i32* %24, align 8, !dbg !4404, !tbaa !4065
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !4405
  store i64 %21, i64* %27, align 8, !dbg !4406, !tbaa !4407
  br label %30, !dbg !4408

28:                                               ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* nonnull %0, i64 %1, i32 %2), !dbg !4409
  br label %30, !dbg !4410

30:                                               ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ], !dbg !4381
  ret i32 %31, !dbg !4411
}

; Function Attrs: nofree nounwind
declare !dbg !4412 noundef i32 @fseeko(%struct._IO_FILE* nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

attributes #0 = { noreturn nounwind sspstrong uwtable "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nofree nounwind "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { argmemonly nofree nosync nounwind willreturn }
attributes #6 = { argmemonly nofree nounwind readonly willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { noreturn nounwind "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind sspstrong uwtable "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { nofree nounwind readonly "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #10 = { argmemonly nofree nosync nounwind willreturn writeonly }
attributes #11 = { nounwind readnone willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #12 = { inaccessiblemem_or_argmemonly nounwind willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #13 = { argmemonly nofree nounwind readonly willreturn }
attributes #14 = { nofree nounwind willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #15 = { nofree norecurse nounwind sspstrong uwtable willreturn writeonly "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #16 = { noreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #17 = { nofree nounwind }
attributes #18 = { norecurse nounwind readonly sspstrong uwtable willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #19 = { nofree norecurse nounwind sspstrong uwtable willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #20 = { nounwind readonly willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #21 = { inaccessiblememonly nofree nosync nounwind willreturn }
attributes #22 = { nofree nounwind sspstrong uwtable "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #23 = { nofree nosync nounwind willreturn }
attributes #24 = { inlinehint nounwind sspstrong uwtable "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #25 = { inaccessiblememonly nofree nounwind willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #26 = { nofree nounwind sspstrong uwtable willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #27 = { nounwind }
attributes #28 = { nounwind readonly willreturn }
attributes #29 = { noreturn nounwind }
attributes #30 = { noreturn }
attributes #31 = { nounwind readnone willreturn }
attributes #32 = { cold }

!llvm.dbg.cu = !{!2, !54, !272, !60, !67, !73, !79, !144, !274, !276, !236, !283, !300, !302, !304, !306, !244, !309, !311, !313, !702, !704, !706, !708}
!llvm.ident = !{!710, !710, !710, !710, !710, !710, !710, !710, !710, !710, !710, !710, !710, !710, !710, !710, !710, !710, !710, !710, !710, !710, !710, !710}
!llvm.module.flags = !{!711, !712, !713, !714, !715}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!1 = distinct !DIGlobalVariable(name: "exit_status", scope: !2, file: !3, line: 76, type: !39, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !35, globals: !42, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "src/printf.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!4 = !{!5, !20}
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
!35 = !{!36, !37, !7, !39, !40, !41}
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!37 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64)
!38 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!39 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!40 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!41 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!42 = !{!43, !44, !47}
!43 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!44 = !DIGlobalVariableExpression(var: !45, expr: !DIExpression())
!45 = distinct !DIGlobalVariable(name: "posixly_correct", scope: !2, file: !3, line: 79, type: !46, isLocal: true, isDefinition: true)
!46 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!47 = !DIGlobalVariableExpression(var: !48, expr: !DIExpression())
!48 = distinct !DIGlobalVariable(name: "cfcc_msg", scope: !2, file: !3, line: 83, type: !49, isLocal: true, isDefinition: true)
!49 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !50)
!50 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !51, size: 64)
!51 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !38)
!52 = !DIGlobalVariableExpression(var: !53, expr: !DIExpression())
!53 = distinct !DIGlobalVariable(name: "Version", scope: !54, file: !55, line: 2, type: !50, isLocal: false, isDefinition: true)
!54 = distinct !DICompileUnit(language: DW_LANG_C99, file: !55, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !56, globals: !57, splitDebugInlining: false, nameTableKind: None)
!55 = !DIFile(filename: "src/version.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!56 = !{}
!57 = !{!52}
!58 = !DIGlobalVariableExpression(var: !59, expr: !DIExpression())
!59 = distinct !DIGlobalVariable(name: "file_name", scope: !60, file: !61, line: 46, type: !50, isLocal: true, isDefinition: true)
!60 = distinct !DICompileUnit(language: DW_LANG_C99, file: !61, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !56, globals: !62, splitDebugInlining: false, nameTableKind: None)
!61 = !DIFile(filename: "lib/closeout.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!62 = !{!58, !63}
!63 = !DIGlobalVariableExpression(var: !64, expr: !DIExpression())
!64 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !60, file: !61, line: 56, type: !46, isLocal: true, isDefinition: true)
!65 = !DIGlobalVariableExpression(var: !66, expr: !DIExpression())
!66 = distinct !DIGlobalVariable(name: "exit_failure", scope: !67, file: !68, line: 24, type: !70, isLocal: false, isDefinition: true)
!67 = distinct !DICompileUnit(language: DW_LANG_C99, file: !68, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !56, globals: !69, splitDebugInlining: false, nameTableKind: None)
!68 = !DIFile(filename: "lib/exitfail.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!69 = !{!65}
!70 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !39)
!71 = !DIGlobalVariableExpression(var: !72, expr: !DIExpression())
!72 = distinct !DIGlobalVariable(name: "program_name", scope: !73, file: !74, line: 33, type: !50, isLocal: false, isDefinition: true)
!73 = distinct !DICompileUnit(language: DW_LANG_C99, file: !74, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !56, retainedTypes: !75, globals: !76, splitDebugInlining: false, nameTableKind: None)
!74 = !DIFile(filename: "lib/progname.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!75 = !{!36, !37}
!76 = !{!71}
!77 = !DIGlobalVariableExpression(var: !78, expr: !DIExpression())
!78 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !79, file: !80, line: 85, type: !128, isLocal: false, isDefinition: true)
!79 = distinct !DICompileUnit(language: DW_LANG_C99, file: !80, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !81, retainedTypes: !87, globals: !91, splitDebugInlining: false, nameTableKind: None)
!80 = !DIFile(filename: "lib/quotearg.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!81 = !{!5, !82, !20}
!82 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !6, line: 242, baseType: !7, size: 32, elements: !83)
!83 = !{!84, !85, !86}
!84 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1, isUnsigned: true)
!85 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2, isUnsigned: true)
!86 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4, isUnsigned: true)
!87 = !{!39, !41, !88, !37}
!88 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !89, line: 46, baseType: !90)
!89 = !DIFile(filename: "/usr/lib/clang/12.0.1/include/stddef.h", directory: "")
!90 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!91 = !{!77, !92, !98, !110, !112, !117, !124, !126}
!92 = !DIGlobalVariableExpression(var: !93, expr: !DIExpression())
!93 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !79, file: !80, line: 101, type: !94, isLocal: false, isDefinition: true)
!94 = !DICompositeType(tag: DW_TAG_array_type, baseType: !95, size: 320, elements: !96)
!95 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5)
!96 = !{!97}
!97 = !DISubrange(count: 10)
!98 = !DIGlobalVariableExpression(var: !99, expr: !DIExpression())
!99 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !79, file: !80, line: 1052, type: !100, isLocal: false, isDefinition: true)
!100 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !80, line: 65, size: 448, elements: !101)
!101 = !{!102, !103, !104, !108, !109}
!102 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !100, file: !80, line: 68, baseType: !5, size: 32)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !100, file: !80, line: 71, baseType: !39, size: 32, offset: 32)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !100, file: !80, line: 75, baseType: !105, size: 256, offset: 64)
!105 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 256, elements: !106)
!106 = !{!107}
!107 = !DISubrange(count: 8)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !100, file: !80, line: 78, baseType: !50, size: 64, offset: 320)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !100, file: !80, line: 81, baseType: !50, size: 64, offset: 384)
!110 = !DIGlobalVariableExpression(var: !111, expr: !DIExpression())
!111 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !79, file: !80, line: 116, type: !100, isLocal: true, isDefinition: true)
!112 = !DIGlobalVariableExpression(var: !113, expr: !DIExpression())
!113 = distinct !DIGlobalVariable(name: "slot0", scope: !79, file: !80, line: 842, type: !114, isLocal: true, isDefinition: true)
!114 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 2048, elements: !115)
!115 = !{!116}
!116 = !DISubrange(count: 256)
!117 = !DIGlobalVariableExpression(var: !118, expr: !DIExpression())
!118 = distinct !DIGlobalVariable(name: "slotvec", scope: !79, file: !80, line: 845, type: !119, isLocal: true, isDefinition: true)
!119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !120, size: 64)
!120 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !80, line: 834, size: 128, elements: !121)
!121 = !{!122, !123}
!122 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !120, file: !80, line: 836, baseType: !88, size: 64)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !120, file: !80, line: 837, baseType: !37, size: 64, offset: 64)
!124 = !DIGlobalVariableExpression(var: !125, expr: !DIExpression())
!125 = distinct !DIGlobalVariable(name: "nslots", scope: !79, file: !80, line: 843, type: !39, isLocal: true, isDefinition: true)
!126 = !DIGlobalVariableExpression(var: !127, expr: !DIExpression())
!127 = distinct !DIGlobalVariable(name: "slotvec0", scope: !79, file: !80, line: 844, type: !120, isLocal: true, isDefinition: true)
!128 = !DICompositeType(tag: DW_TAG_array_type, baseType: !49, size: 704, elements: !129)
!129 = !{!130}
!130 = !DISubrange(count: 11)
!131 = !DIGlobalVariableExpression(var: !132, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!132 = distinct !DIGlobalVariable(name: "initialized", scope: !133, file: !134, line: 71, type: !39, isLocal: true, isDefinition: true)
!133 = distinct !DISubprogram(name: "unicode_to_mb", scope: !134, file: !134, line: 64, type: !135, scopeLine: 70, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !144, retainedNodes: !210)
!134 = !DIFile(filename: "lib/unicodeio.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!135 = !DISubroutineType(types: !136)
!136 = !{!137, !7, !138, !141, !36}
!137 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !139, size: 64)
!139 = !DISubroutineType(types: !140)
!140 = !{!137, !50, !88, !36}
!141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !142, size: 64)
!142 = !DISubroutineType(types: !143)
!143 = !{!137, !7, !50, !36}
!144 = distinct !DICompileUnit(language: DW_LANG_C99, file: !134, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !56, retainedTypes: !145, globals: !204, splitDebugInlining: false, nameTableKind: None)
!145 = !{!146, !148, !149, !88, !150, !36}
!146 = !DIDerivedType(tag: DW_TAG_typedef, name: "iconv_t", file: !147, line: 29, baseType: !36)
!147 = !DIFile(filename: "/usr/include/iconv.h", directory: "")
!148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64)
!149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64)
!150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !151, size: 64)
!151 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !152, line: 7, baseType: !153)
!152 = !DIFile(filename: "/usr/include/bits/types/FILE.h", directory: "")
!153 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !154, line: 49, size: 1728, elements: !155)
!154 = !DIFile(filename: "/usr/include/bits/types/struct_FILE.h", directory: "")
!155 = !{!156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !171, !173, !174, !175, !178, !179, !181, !185, !188, !190, !193, !196, !197, !198, !199, !200}
!156 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !153, file: !154, line: 51, baseType: !39, size: 32)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !153, file: !154, line: 54, baseType: !37, size: 64, offset: 64)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !153, file: !154, line: 55, baseType: !37, size: 64, offset: 128)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !153, file: !154, line: 56, baseType: !37, size: 64, offset: 192)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !153, file: !154, line: 57, baseType: !37, size: 64, offset: 256)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !153, file: !154, line: 58, baseType: !37, size: 64, offset: 320)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !153, file: !154, line: 59, baseType: !37, size: 64, offset: 384)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !153, file: !154, line: 60, baseType: !37, size: 64, offset: 448)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !153, file: !154, line: 61, baseType: !37, size: 64, offset: 512)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !153, file: !154, line: 64, baseType: !37, size: 64, offset: 576)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !153, file: !154, line: 65, baseType: !37, size: 64, offset: 640)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !153, file: !154, line: 66, baseType: !37, size: 64, offset: 704)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !153, file: !154, line: 68, baseType: !169, size: 64, offset: 768)
!169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !170, size: 64)
!170 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !154, line: 36, flags: DIFlagFwdDecl)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !153, file: !154, line: 70, baseType: !172, size: 64, offset: 832)
!172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !153, size: 64)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !153, file: !154, line: 72, baseType: !39, size: 32, offset: 896)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !153, file: !154, line: 73, baseType: !39, size: 32, offset: 928)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !153, file: !154, line: 74, baseType: !176, size: 64, offset: 960)
!176 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !177, line: 152, baseType: !137)
!177 = !DIFile(filename: "/usr/include/bits/types.h", directory: "")
!178 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !153, file: !154, line: 77, baseType: !41, size: 16, offset: 1024)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !153, file: !154, line: 78, baseType: !180, size: 8, offset: 1040)
!180 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !153, file: !154, line: 79, baseType: !182, size: 8, offset: 1048)
!182 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 8, elements: !183)
!183 = !{!184}
!184 = !DISubrange(count: 1)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !153, file: !154, line: 81, baseType: !186, size: 64, offset: 1088)
!186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !187, size: 64)
!187 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !154, line: 43, baseType: null)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !153, file: !154, line: 89, baseType: !189, size: 64, offset: 1152)
!189 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !177, line: 153, baseType: !137)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !153, file: !154, line: 91, baseType: !191, size: 64, offset: 1216)
!191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !192, size: 64)
!192 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !154, line: 37, flags: DIFlagFwdDecl)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !153, file: !154, line: 92, baseType: !194, size: 64, offset: 1280)
!194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !195, size: 64)
!195 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !154, line: 38, flags: DIFlagFwdDecl)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !153, file: !154, line: 93, baseType: !172, size: 64, offset: 1344)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !153, file: !154, line: 94, baseType: !36, size: 64, offset: 1408)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !153, file: !154, line: 95, baseType: !88, size: 64, offset: 1472)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !153, file: !154, line: 96, baseType: !39, size: 32, offset: 1536)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !153, file: !154, line: 98, baseType: !201, size: 160, offset: 1568)
!201 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 160, elements: !202)
!202 = !{!203}
!203 = !DISubrange(count: 20)
!204 = !{!205, !206, !208}
!205 = !DIGlobalVariableExpression(var: !132, expr: !DIExpression())
!206 = !DIGlobalVariableExpression(var: !207, expr: !DIExpression())
!207 = distinct !DIGlobalVariable(name: "is_utf8", scope: !133, file: !134, line: 72, type: !39, isLocal: true, isDefinition: true)
!208 = !DIGlobalVariableExpression(var: !209, expr: !DIExpression())
!209 = distinct !DIGlobalVariable(name: "utf8_to_local", scope: !133, file: !134, line: 74, type: !146, isLocal: true, isDefinition: true)
!210 = !{!211, !212, !213, !214, !215, !219, !220, !223, !229, !230, !231, !232, !233}
!211 = !DILocalVariable(name: "code", arg: 1, scope: !133, file: !134, line: 64, type: !7)
!212 = !DILocalVariable(name: "success", arg: 2, scope: !133, file: !134, line: 65, type: !138)
!213 = !DILocalVariable(name: "failure", arg: 3, scope: !133, file: !134, line: 67, type: !141)
!214 = !DILocalVariable(name: "callback_arg", arg: 4, scope: !133, file: !134, line: 69, type: !36)
!215 = !DILocalVariable(name: "inbuf", scope: !133, file: !134, line: 77, type: !216)
!216 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 48, elements: !217)
!217 = !{!218}
!218 = !DISubrange(count: 6)
!219 = !DILocalVariable(name: "count", scope: !133, file: !134, line: 78, type: !39)
!220 = !DILocalVariable(name: "charset", scope: !221, file: !134, line: 82, type: !50)
!221 = distinct !DILexicalBlock(scope: !222, file: !134, line: 81, column: 5)
!222 = distinct !DILexicalBlock(scope: !133, file: !134, line: 80, column: 7)
!223 = !DILocalVariable(name: "outbuf", scope: !224, file: !134, line: 116, type: !226)
!224 = distinct !DILexicalBlock(scope: !225, file: !134, line: 115, column: 5)
!225 = distinct !DILexicalBlock(scope: !133, file: !134, line: 114, column: 7)
!226 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 200, elements: !227)
!227 = !{!228}
!228 = !DISubrange(count: 25)
!229 = !DILocalVariable(name: "inptr", scope: !224, file: !134, line: 117, type: !50)
!230 = !DILocalVariable(name: "inbytesleft", scope: !224, file: !134, line: 118, type: !88)
!231 = !DILocalVariable(name: "outptr", scope: !224, file: !134, line: 119, type: !37)
!232 = !DILocalVariable(name: "outbytesleft", scope: !224, file: !134, line: 120, type: !88)
!233 = !DILocalVariable(name: "res", scope: !224, file: !134, line: 121, type: !88)
!234 = !DIGlobalVariableExpression(var: !235, expr: !DIExpression())
!235 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !236, file: !237, line: 26, type: !239, isLocal: false, isDefinition: true)
!236 = distinct !DICompileUnit(language: DW_LANG_C99, file: !237, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !56, globals: !238, splitDebugInlining: false, nameTableKind: None)
!237 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!238 = !{!234}
!239 = !DICompositeType(tag: DW_TAG_array_type, baseType: !51, size: 376, elements: !240)
!240 = !{!241}
!241 = !DISubrange(count: 47)
!242 = !DIGlobalVariableExpression(var: !243, expr: !DIExpression())
!243 = distinct !DIGlobalVariable(name: "c_locale_cache", scope: !244, file: !270, line: 50, type: !271, isLocal: true, isDefinition: true)
!244 = distinct !DICompileUnit(language: DW_LANG_C99, file: !245, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !56, retainedTypes: !246, globals: !269, splitDebugInlining: false, nameTableKind: None)
!245 = !DIFile(filename: "lib/c-strtold.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!246 = !{!37, !247}
!247 = !DIDerivedType(tag: DW_TAG_typedef, name: "locale_t", file: !248, line: 24, baseType: !249)
!248 = !DIFile(filename: "/usr/include/bits/types/locale_t.h", directory: "")
!249 = !DIDerivedType(tag: DW_TAG_typedef, name: "__locale_t", file: !250, line: 42, baseType: !251)
!250 = !DIFile(filename: "/usr/include/bits/types/__locale_t.h", directory: "")
!251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !252, size: 64)
!252 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__locale_struct", file: !250, line: 28, size: 1856, elements: !253)
!253 = !{!254, !260, !263, !266, !267}
!254 = !DIDerivedType(tag: DW_TAG_member, name: "__locales", scope: !252, file: !250, line: 31, baseType: !255, size: 832)
!255 = !DICompositeType(tag: DW_TAG_array_type, baseType: !256, size: 832, elements: !258)
!256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !257, size: 64)
!257 = !DICompositeType(tag: DW_TAG_structure_type, name: "__locale_data", file: !250, line: 31, flags: DIFlagFwdDecl)
!258 = !{!259}
!259 = !DISubrange(count: 13)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "__ctype_b", scope: !252, file: !250, line: 34, baseType: !261, size: 64, offset: 832)
!261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !262, size: 64)
!262 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !41)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "__ctype_tolower", scope: !252, file: !250, line: 35, baseType: !264, size: 64, offset: 896)
!264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !265, size: 64)
!265 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !39)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "__ctype_toupper", scope: !252, file: !250, line: 36, baseType: !264, size: 64, offset: 960)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "__names", scope: !252, file: !250, line: 39, baseType: !268, size: 832, offset: 1024)
!268 = !DICompositeType(tag: DW_TAG_array_type, baseType: !50, size: 832, elements: !258)
!269 = !{!242}
!270 = !DIFile(filename: "./lib/c-strtod.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!271 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !247)
!272 = distinct !DICompileUnit(language: DW_LANG_C99, file: !273, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !56, splitDebugInlining: false, nameTableKind: None)
!273 = !DIFile(filename: "lib/cl-strtold.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!274 = distinct !DICompileUnit(language: DW_LANG_C99, file: !275, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !56, splitDebugInlining: false, nameTableKind: None)
!275 = !DIFile(filename: "lib/unistr/u8-uctomb-aux.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!276 = distinct !DICompileUnit(language: DW_LANG_C99, file: !277, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !278, retainedTypes: !282, splitDebugInlining: false, nameTableKind: None)
!277 = !DIFile(filename: "lib/version-etc.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!278 = !{!279}
!279 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !277, line: 40, baseType: !7, size: 32, elements: !280)
!280 = !{!281}
!281 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2020, isUnsigned: true)
!282 = !{!36}
!283 = distinct !DICompileUnit(language: DW_LANG_C99, file: !284, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !285, retainedTypes: !299, splitDebugInlining: false, nameTableKind: None)
!284 = !DIFile(filename: "lib/xmalloc.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!285 = !{!286}
!286 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !288, file: !287, line: 186, baseType: !7, size: 32, elements: !297)
!287 = !DIFile(filename: "./lib/xalloc.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!288 = distinct !DISubprogram(name: "x2nrealloc", scope: !287, file: !287, line: 174, type: !289, scopeLine: 175, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !283, retainedNodes: !292)
!289 = !DISubroutineType(types: !290)
!290 = !{!36, !36, !291, !88}
!291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !88, size: 64)
!292 = !{!293, !294, !295, !296}
!293 = !DILocalVariable(name: "p", arg: 1, scope: !288, file: !287, line: 174, type: !36)
!294 = !DILocalVariable(name: "pn", arg: 2, scope: !288, file: !287, line: 174, type: !291)
!295 = !DILocalVariable(name: "s", arg: 3, scope: !288, file: !287, line: 174, type: !88)
!296 = !DILocalVariable(name: "n", scope: !288, file: !287, line: 176, type: !88)
!297 = !{!298}
!298 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128, isUnsigned: true)
!299 = !{!88, !37, !36}
!300 = distinct !DICompileUnit(language: DW_LANG_C99, file: !301, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !56, splitDebugInlining: false, nameTableKind: None)
!301 = !DIFile(filename: "lib/xalloc-die.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!302 = distinct !DICompileUnit(language: DW_LANG_C99, file: !303, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !56, splitDebugInlining: false, nameTableKind: None)
!303 = !DIFile(filename: "lib/xprintf.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!304 = distinct !DICompileUnit(language: DW_LANG_C99, file: !305, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !56, retainedTypes: !282, splitDebugInlining: false, nameTableKind: None)
!305 = !DIFile(filename: "lib/calloc.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!306 = distinct !DICompileUnit(language: DW_LANG_C99, file: !307, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !56, retainedTypes: !308, splitDebugInlining: false, nameTableKind: None)
!307 = !DIFile(filename: "lib/mbrtowc.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!308 = !{!88}
!309 = distinct !DICompileUnit(language: DW_LANG_C99, file: !310, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !56, splitDebugInlining: false, nameTableKind: None)
!310 = !DIFile(filename: "lib/close-stream.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!311 = distinct !DICompileUnit(language: DW_LANG_C99, file: !312, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !56, splitDebugInlining: false, nameTableKind: None)
!312 = !DIFile(filename: "lib/hard-locale.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!313 = distinct !DICompileUnit(language: DW_LANG_C99, file: !314, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !315, retainedTypes: !282, splitDebugInlining: false, nameTableKind: None)
!314 = !DIFile(filename: "lib/localcharset.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!315 = !{!316}
!316 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !317, line: 41, baseType: !7, size: 32, elements: !318)
!317 = !DIFile(filename: "/usr/include/langinfo.h", directory: "")
!318 = !{!319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558, !559, !560, !561, !562, !563, !564, !565, !566, !567, !568, !569, !570, !571, !572, !573, !574, !575, !576, !577, !578, !579, !580, !581, !582, !583, !584, !585, !586, !587, !588, !589, !590, !591, !592, !593, !594, !595, !596, !597, !598, !599, !600, !601, !602, !603, !604, !605, !606, !607, !608, !609, !610, !611, !612, !613, !614, !615, !616, !617, !618, !619, !620, !621, !622, !623, !624, !625, !626, !627, !628, !629, !630, !631, !632, !633, !634, !635, !636, !637, !638, !639, !640, !641, !642, !643, !644, !645, !646, !647, !648, !649, !650, !651, !652, !653, !654, !655, !656, !657, !658, !659, !660, !661, !662, !663, !664, !665, !666, !667, !668, !669, !670, !671, !672, !673, !674, !675, !676, !677, !678, !679, !680, !681, !682, !683, !684, !685, !686, !687, !688, !689, !690, !691, !692, !693, !694, !695, !696, !697, !698, !699, !700, !701}
!319 = !DIEnumerator(name: "ABDAY_1", value: 131072, isUnsigned: true)
!320 = !DIEnumerator(name: "ABDAY_2", value: 131073, isUnsigned: true)
!321 = !DIEnumerator(name: "ABDAY_3", value: 131074, isUnsigned: true)
!322 = !DIEnumerator(name: "ABDAY_4", value: 131075, isUnsigned: true)
!323 = !DIEnumerator(name: "ABDAY_5", value: 131076, isUnsigned: true)
!324 = !DIEnumerator(name: "ABDAY_6", value: 131077, isUnsigned: true)
!325 = !DIEnumerator(name: "ABDAY_7", value: 131078, isUnsigned: true)
!326 = !DIEnumerator(name: "DAY_1", value: 131079, isUnsigned: true)
!327 = !DIEnumerator(name: "DAY_2", value: 131080, isUnsigned: true)
!328 = !DIEnumerator(name: "DAY_3", value: 131081, isUnsigned: true)
!329 = !DIEnumerator(name: "DAY_4", value: 131082, isUnsigned: true)
!330 = !DIEnumerator(name: "DAY_5", value: 131083, isUnsigned: true)
!331 = !DIEnumerator(name: "DAY_6", value: 131084, isUnsigned: true)
!332 = !DIEnumerator(name: "DAY_7", value: 131085, isUnsigned: true)
!333 = !DIEnumerator(name: "ABMON_1", value: 131086, isUnsigned: true)
!334 = !DIEnumerator(name: "ABMON_2", value: 131087, isUnsigned: true)
!335 = !DIEnumerator(name: "ABMON_3", value: 131088, isUnsigned: true)
!336 = !DIEnumerator(name: "ABMON_4", value: 131089, isUnsigned: true)
!337 = !DIEnumerator(name: "ABMON_5", value: 131090, isUnsigned: true)
!338 = !DIEnumerator(name: "ABMON_6", value: 131091, isUnsigned: true)
!339 = !DIEnumerator(name: "ABMON_7", value: 131092, isUnsigned: true)
!340 = !DIEnumerator(name: "ABMON_8", value: 131093, isUnsigned: true)
!341 = !DIEnumerator(name: "ABMON_9", value: 131094, isUnsigned: true)
!342 = !DIEnumerator(name: "ABMON_10", value: 131095, isUnsigned: true)
!343 = !DIEnumerator(name: "ABMON_11", value: 131096, isUnsigned: true)
!344 = !DIEnumerator(name: "ABMON_12", value: 131097, isUnsigned: true)
!345 = !DIEnumerator(name: "MON_1", value: 131098, isUnsigned: true)
!346 = !DIEnumerator(name: "MON_2", value: 131099, isUnsigned: true)
!347 = !DIEnumerator(name: "MON_3", value: 131100, isUnsigned: true)
!348 = !DIEnumerator(name: "MON_4", value: 131101, isUnsigned: true)
!349 = !DIEnumerator(name: "MON_5", value: 131102, isUnsigned: true)
!350 = !DIEnumerator(name: "MON_6", value: 131103, isUnsigned: true)
!351 = !DIEnumerator(name: "MON_7", value: 131104, isUnsigned: true)
!352 = !DIEnumerator(name: "MON_8", value: 131105, isUnsigned: true)
!353 = !DIEnumerator(name: "MON_9", value: 131106, isUnsigned: true)
!354 = !DIEnumerator(name: "MON_10", value: 131107, isUnsigned: true)
!355 = !DIEnumerator(name: "MON_11", value: 131108, isUnsigned: true)
!356 = !DIEnumerator(name: "MON_12", value: 131109, isUnsigned: true)
!357 = !DIEnumerator(name: "AM_STR", value: 131110, isUnsigned: true)
!358 = !DIEnumerator(name: "PM_STR", value: 131111, isUnsigned: true)
!359 = !DIEnumerator(name: "D_T_FMT", value: 131112, isUnsigned: true)
!360 = !DIEnumerator(name: "D_FMT", value: 131113, isUnsigned: true)
!361 = !DIEnumerator(name: "T_FMT", value: 131114, isUnsigned: true)
!362 = !DIEnumerator(name: "T_FMT_AMPM", value: 131115, isUnsigned: true)
!363 = !DIEnumerator(name: "ERA", value: 131116, isUnsigned: true)
!364 = !DIEnumerator(name: "__ERA_YEAR", value: 131117, isUnsigned: true)
!365 = !DIEnumerator(name: "ERA_D_FMT", value: 131118, isUnsigned: true)
!366 = !DIEnumerator(name: "ALT_DIGITS", value: 131119, isUnsigned: true)
!367 = !DIEnumerator(name: "ERA_D_T_FMT", value: 131120, isUnsigned: true)
!368 = !DIEnumerator(name: "ERA_T_FMT", value: 131121, isUnsigned: true)
!369 = !DIEnumerator(name: "_NL_TIME_ERA_NUM_ENTRIES", value: 131122, isUnsigned: true)
!370 = !DIEnumerator(name: "_NL_TIME_ERA_ENTRIES", value: 131123, isUnsigned: true)
!371 = !DIEnumerator(name: "_NL_WABDAY_1", value: 131124, isUnsigned: true)
!372 = !DIEnumerator(name: "_NL_WABDAY_2", value: 131125, isUnsigned: true)
!373 = !DIEnumerator(name: "_NL_WABDAY_3", value: 131126, isUnsigned: true)
!374 = !DIEnumerator(name: "_NL_WABDAY_4", value: 131127, isUnsigned: true)
!375 = !DIEnumerator(name: "_NL_WABDAY_5", value: 131128, isUnsigned: true)
!376 = !DIEnumerator(name: "_NL_WABDAY_6", value: 131129, isUnsigned: true)
!377 = !DIEnumerator(name: "_NL_WABDAY_7", value: 131130, isUnsigned: true)
!378 = !DIEnumerator(name: "_NL_WDAY_1", value: 131131, isUnsigned: true)
!379 = !DIEnumerator(name: "_NL_WDAY_2", value: 131132, isUnsigned: true)
!380 = !DIEnumerator(name: "_NL_WDAY_3", value: 131133, isUnsigned: true)
!381 = !DIEnumerator(name: "_NL_WDAY_4", value: 131134, isUnsigned: true)
!382 = !DIEnumerator(name: "_NL_WDAY_5", value: 131135, isUnsigned: true)
!383 = !DIEnumerator(name: "_NL_WDAY_6", value: 131136, isUnsigned: true)
!384 = !DIEnumerator(name: "_NL_WDAY_7", value: 131137, isUnsigned: true)
!385 = !DIEnumerator(name: "_NL_WABMON_1", value: 131138, isUnsigned: true)
!386 = !DIEnumerator(name: "_NL_WABMON_2", value: 131139, isUnsigned: true)
!387 = !DIEnumerator(name: "_NL_WABMON_3", value: 131140, isUnsigned: true)
!388 = !DIEnumerator(name: "_NL_WABMON_4", value: 131141, isUnsigned: true)
!389 = !DIEnumerator(name: "_NL_WABMON_5", value: 131142, isUnsigned: true)
!390 = !DIEnumerator(name: "_NL_WABMON_6", value: 131143, isUnsigned: true)
!391 = !DIEnumerator(name: "_NL_WABMON_7", value: 131144, isUnsigned: true)
!392 = !DIEnumerator(name: "_NL_WABMON_8", value: 131145, isUnsigned: true)
!393 = !DIEnumerator(name: "_NL_WABMON_9", value: 131146, isUnsigned: true)
!394 = !DIEnumerator(name: "_NL_WABMON_10", value: 131147, isUnsigned: true)
!395 = !DIEnumerator(name: "_NL_WABMON_11", value: 131148, isUnsigned: true)
!396 = !DIEnumerator(name: "_NL_WABMON_12", value: 131149, isUnsigned: true)
!397 = !DIEnumerator(name: "_NL_WMON_1", value: 131150, isUnsigned: true)
!398 = !DIEnumerator(name: "_NL_WMON_2", value: 131151, isUnsigned: true)
!399 = !DIEnumerator(name: "_NL_WMON_3", value: 131152, isUnsigned: true)
!400 = !DIEnumerator(name: "_NL_WMON_4", value: 131153, isUnsigned: true)
!401 = !DIEnumerator(name: "_NL_WMON_5", value: 131154, isUnsigned: true)
!402 = !DIEnumerator(name: "_NL_WMON_6", value: 131155, isUnsigned: true)
!403 = !DIEnumerator(name: "_NL_WMON_7", value: 131156, isUnsigned: true)
!404 = !DIEnumerator(name: "_NL_WMON_8", value: 131157, isUnsigned: true)
!405 = !DIEnumerator(name: "_NL_WMON_9", value: 131158, isUnsigned: true)
!406 = !DIEnumerator(name: "_NL_WMON_10", value: 131159, isUnsigned: true)
!407 = !DIEnumerator(name: "_NL_WMON_11", value: 131160, isUnsigned: true)
!408 = !DIEnumerator(name: "_NL_WMON_12", value: 131161, isUnsigned: true)
!409 = !DIEnumerator(name: "_NL_WAM_STR", value: 131162, isUnsigned: true)
!410 = !DIEnumerator(name: "_NL_WPM_STR", value: 131163, isUnsigned: true)
!411 = !DIEnumerator(name: "_NL_WD_T_FMT", value: 131164, isUnsigned: true)
!412 = !DIEnumerator(name: "_NL_WD_FMT", value: 131165, isUnsigned: true)
!413 = !DIEnumerator(name: "_NL_WT_FMT", value: 131166, isUnsigned: true)
!414 = !DIEnumerator(name: "_NL_WT_FMT_AMPM", value: 131167, isUnsigned: true)
!415 = !DIEnumerator(name: "_NL_WERA_YEAR", value: 131168, isUnsigned: true)
!416 = !DIEnumerator(name: "_NL_WERA_D_FMT", value: 131169, isUnsigned: true)
!417 = !DIEnumerator(name: "_NL_WALT_DIGITS", value: 131170, isUnsigned: true)
!418 = !DIEnumerator(name: "_NL_WERA_D_T_FMT", value: 131171, isUnsigned: true)
!419 = !DIEnumerator(name: "_NL_WERA_T_FMT", value: 131172, isUnsigned: true)
!420 = !DIEnumerator(name: "_NL_TIME_WEEK_NDAYS", value: 131173, isUnsigned: true)
!421 = !DIEnumerator(name: "_NL_TIME_WEEK_1STDAY", value: 131174, isUnsigned: true)
!422 = !DIEnumerator(name: "_NL_TIME_WEEK_1STWEEK", value: 131175, isUnsigned: true)
!423 = !DIEnumerator(name: "_NL_TIME_FIRST_WEEKDAY", value: 131176, isUnsigned: true)
!424 = !DIEnumerator(name: "_NL_TIME_FIRST_WORKDAY", value: 131177, isUnsigned: true)
!425 = !DIEnumerator(name: "_NL_TIME_CAL_DIRECTION", value: 131178, isUnsigned: true)
!426 = !DIEnumerator(name: "_NL_TIME_TIMEZONE", value: 131179, isUnsigned: true)
!427 = !DIEnumerator(name: "_DATE_FMT", value: 131180, isUnsigned: true)
!428 = !DIEnumerator(name: "_NL_W_DATE_FMT", value: 131181, isUnsigned: true)
!429 = !DIEnumerator(name: "_NL_TIME_CODESET", value: 131182, isUnsigned: true)
!430 = !DIEnumerator(name: "__ALTMON_1", value: 131183, isUnsigned: true)
!431 = !DIEnumerator(name: "__ALTMON_2", value: 131184, isUnsigned: true)
!432 = !DIEnumerator(name: "__ALTMON_3", value: 131185, isUnsigned: true)
!433 = !DIEnumerator(name: "__ALTMON_4", value: 131186, isUnsigned: true)
!434 = !DIEnumerator(name: "__ALTMON_5", value: 131187, isUnsigned: true)
!435 = !DIEnumerator(name: "__ALTMON_6", value: 131188, isUnsigned: true)
!436 = !DIEnumerator(name: "__ALTMON_7", value: 131189, isUnsigned: true)
!437 = !DIEnumerator(name: "__ALTMON_8", value: 131190, isUnsigned: true)
!438 = !DIEnumerator(name: "__ALTMON_9", value: 131191, isUnsigned: true)
!439 = !DIEnumerator(name: "__ALTMON_10", value: 131192, isUnsigned: true)
!440 = !DIEnumerator(name: "__ALTMON_11", value: 131193, isUnsigned: true)
!441 = !DIEnumerator(name: "__ALTMON_12", value: 131194, isUnsigned: true)
!442 = !DIEnumerator(name: "_NL_WALTMON_1", value: 131195, isUnsigned: true)
!443 = !DIEnumerator(name: "_NL_WALTMON_2", value: 131196, isUnsigned: true)
!444 = !DIEnumerator(name: "_NL_WALTMON_3", value: 131197, isUnsigned: true)
!445 = !DIEnumerator(name: "_NL_WALTMON_4", value: 131198, isUnsigned: true)
!446 = !DIEnumerator(name: "_NL_WALTMON_5", value: 131199, isUnsigned: true)
!447 = !DIEnumerator(name: "_NL_WALTMON_6", value: 131200, isUnsigned: true)
!448 = !DIEnumerator(name: "_NL_WALTMON_7", value: 131201, isUnsigned: true)
!449 = !DIEnumerator(name: "_NL_WALTMON_8", value: 131202, isUnsigned: true)
!450 = !DIEnumerator(name: "_NL_WALTMON_9", value: 131203, isUnsigned: true)
!451 = !DIEnumerator(name: "_NL_WALTMON_10", value: 131204, isUnsigned: true)
!452 = !DIEnumerator(name: "_NL_WALTMON_11", value: 131205, isUnsigned: true)
!453 = !DIEnumerator(name: "_NL_WALTMON_12", value: 131206, isUnsigned: true)
!454 = !DIEnumerator(name: "_NL_ABALTMON_1", value: 131207, isUnsigned: true)
!455 = !DIEnumerator(name: "_NL_ABALTMON_2", value: 131208, isUnsigned: true)
!456 = !DIEnumerator(name: "_NL_ABALTMON_3", value: 131209, isUnsigned: true)
!457 = !DIEnumerator(name: "_NL_ABALTMON_4", value: 131210, isUnsigned: true)
!458 = !DIEnumerator(name: "_NL_ABALTMON_5", value: 131211, isUnsigned: true)
!459 = !DIEnumerator(name: "_NL_ABALTMON_6", value: 131212, isUnsigned: true)
!460 = !DIEnumerator(name: "_NL_ABALTMON_7", value: 131213, isUnsigned: true)
!461 = !DIEnumerator(name: "_NL_ABALTMON_8", value: 131214, isUnsigned: true)
!462 = !DIEnumerator(name: "_NL_ABALTMON_9", value: 131215, isUnsigned: true)
!463 = !DIEnumerator(name: "_NL_ABALTMON_10", value: 131216, isUnsigned: true)
!464 = !DIEnumerator(name: "_NL_ABALTMON_11", value: 131217, isUnsigned: true)
!465 = !DIEnumerator(name: "_NL_ABALTMON_12", value: 131218, isUnsigned: true)
!466 = !DIEnumerator(name: "_NL_WABALTMON_1", value: 131219, isUnsigned: true)
!467 = !DIEnumerator(name: "_NL_WABALTMON_2", value: 131220, isUnsigned: true)
!468 = !DIEnumerator(name: "_NL_WABALTMON_3", value: 131221, isUnsigned: true)
!469 = !DIEnumerator(name: "_NL_WABALTMON_4", value: 131222, isUnsigned: true)
!470 = !DIEnumerator(name: "_NL_WABALTMON_5", value: 131223, isUnsigned: true)
!471 = !DIEnumerator(name: "_NL_WABALTMON_6", value: 131224, isUnsigned: true)
!472 = !DIEnumerator(name: "_NL_WABALTMON_7", value: 131225, isUnsigned: true)
!473 = !DIEnumerator(name: "_NL_WABALTMON_8", value: 131226, isUnsigned: true)
!474 = !DIEnumerator(name: "_NL_WABALTMON_9", value: 131227, isUnsigned: true)
!475 = !DIEnumerator(name: "_NL_WABALTMON_10", value: 131228, isUnsigned: true)
!476 = !DIEnumerator(name: "_NL_WABALTMON_11", value: 131229, isUnsigned: true)
!477 = !DIEnumerator(name: "_NL_WABALTMON_12", value: 131230, isUnsigned: true)
!478 = !DIEnumerator(name: "_NL_NUM_LC_TIME", value: 131231, isUnsigned: true)
!479 = !DIEnumerator(name: "_NL_COLLATE_NRULES", value: 196608, isUnsigned: true)
!480 = !DIEnumerator(name: "_NL_COLLATE_RULESETS", value: 196609, isUnsigned: true)
!481 = !DIEnumerator(name: "_NL_COLLATE_TABLEMB", value: 196610, isUnsigned: true)
!482 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTMB", value: 196611, isUnsigned: true)
!483 = !DIEnumerator(name: "_NL_COLLATE_EXTRAMB", value: 196612, isUnsigned: true)
!484 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTMB", value: 196613, isUnsigned: true)
!485 = !DIEnumerator(name: "_NL_COLLATE_GAP1", value: 196614, isUnsigned: true)
!486 = !DIEnumerator(name: "_NL_COLLATE_GAP2", value: 196615, isUnsigned: true)
!487 = !DIEnumerator(name: "_NL_COLLATE_GAP3", value: 196616, isUnsigned: true)
!488 = !DIEnumerator(name: "_NL_COLLATE_TABLEWC", value: 196617, isUnsigned: true)
!489 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTWC", value: 196618, isUnsigned: true)
!490 = !DIEnumerator(name: "_NL_COLLATE_EXTRAWC", value: 196619, isUnsigned: true)
!491 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTWC", value: 196620, isUnsigned: true)
!492 = !DIEnumerator(name: "_NL_COLLATE_SYMB_HASH_SIZEMB", value: 196621, isUnsigned: true)
!493 = !DIEnumerator(name: "_NL_COLLATE_SYMB_TABLEMB", value: 196622, isUnsigned: true)
!494 = !DIEnumerator(name: "_NL_COLLATE_SYMB_EXTRAMB", value: 196623, isUnsigned: true)
!495 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQMB", value: 196624, isUnsigned: true)
!496 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQWC", value: 196625, isUnsigned: true)
!497 = !DIEnumerator(name: "_NL_COLLATE_CODESET", value: 196626, isUnsigned: true)
!498 = !DIEnumerator(name: "_NL_NUM_LC_COLLATE", value: 196627, isUnsigned: true)
!499 = !DIEnumerator(name: "_NL_CTYPE_CLASS", value: 0, isUnsigned: true)
!500 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER", value: 1, isUnsigned: true)
!501 = !DIEnumerator(name: "_NL_CTYPE_GAP1", value: 2, isUnsigned: true)
!502 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER", value: 3, isUnsigned: true)
!503 = !DIEnumerator(name: "_NL_CTYPE_GAP2", value: 4, isUnsigned: true)
!504 = !DIEnumerator(name: "_NL_CTYPE_CLASS32", value: 5, isUnsigned: true)
!505 = !DIEnumerator(name: "_NL_CTYPE_GAP3", value: 6, isUnsigned: true)
!506 = !DIEnumerator(name: "_NL_CTYPE_GAP4", value: 7, isUnsigned: true)
!507 = !DIEnumerator(name: "_NL_CTYPE_GAP5", value: 8, isUnsigned: true)
!508 = !DIEnumerator(name: "_NL_CTYPE_GAP6", value: 9, isUnsigned: true)
!509 = !DIEnumerator(name: "_NL_CTYPE_CLASS_NAMES", value: 10, isUnsigned: true)
!510 = !DIEnumerator(name: "_NL_CTYPE_MAP_NAMES", value: 11, isUnsigned: true)
!511 = !DIEnumerator(name: "_NL_CTYPE_WIDTH", value: 12, isUnsigned: true)
!512 = !DIEnumerator(name: "_NL_CTYPE_MB_CUR_MAX", value: 13, isUnsigned: true)
!513 = !DIEnumerator(name: "_NL_CTYPE_CODESET_NAME", value: 14, isUnsigned: true)
!514 = !DIEnumerator(name: "CODESET", value: 14, isUnsigned: true)
!515 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER32", value: 15, isUnsigned: true)
!516 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER32", value: 16, isUnsigned: true)
!517 = !DIEnumerator(name: "_NL_CTYPE_CLASS_OFFSET", value: 17, isUnsigned: true)
!518 = !DIEnumerator(name: "_NL_CTYPE_MAP_OFFSET", value: 18, isUnsigned: true)
!519 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_MB_LEN", value: 19, isUnsigned: true)
!520 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_MB", value: 20, isUnsigned: true)
!521 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_MB", value: 21, isUnsigned: true)
!522 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_MB", value: 22, isUnsigned: true)
!523 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_MB", value: 23, isUnsigned: true)
!524 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_MB", value: 24, isUnsigned: true)
!525 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_MB", value: 25, isUnsigned: true)
!526 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_MB", value: 26, isUnsigned: true)
!527 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_MB", value: 27, isUnsigned: true)
!528 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_MB", value: 28, isUnsigned: true)
!529 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_MB", value: 29, isUnsigned: true)
!530 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_WC_LEN", value: 30, isUnsigned: true)
!531 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_WC", value: 31, isUnsigned: true)
!532 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_WC", value: 32, isUnsigned: true)
!533 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_WC", value: 33, isUnsigned: true)
!534 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_WC", value: 34, isUnsigned: true)
!535 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_WC", value: 35, isUnsigned: true)
!536 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_WC", value: 36, isUnsigned: true)
!537 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_WC", value: 37, isUnsigned: true)
!538 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_WC", value: 38, isUnsigned: true)
!539 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_WC", value: 39, isUnsigned: true)
!540 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_WC", value: 40, isUnsigned: true)
!541 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_MB", value: 41, isUnsigned: true)
!542 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_MB", value: 42, isUnsigned: true)
!543 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_MB", value: 43, isUnsigned: true)
!544 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_MB", value: 44, isUnsigned: true)
!545 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_MB", value: 45, isUnsigned: true)
!546 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_MB", value: 46, isUnsigned: true)
!547 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_MB", value: 47, isUnsigned: true)
!548 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_MB", value: 48, isUnsigned: true)
!549 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_MB", value: 49, isUnsigned: true)
!550 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_MB", value: 50, isUnsigned: true)
!551 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_WC", value: 51, isUnsigned: true)
!552 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_WC", value: 52, isUnsigned: true)
!553 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_WC", value: 53, isUnsigned: true)
!554 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_WC", value: 54, isUnsigned: true)
!555 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_WC", value: 55, isUnsigned: true)
!556 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_WC", value: 56, isUnsigned: true)
!557 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_WC", value: 57, isUnsigned: true)
!558 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_WC", value: 58, isUnsigned: true)
!559 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_WC", value: 59, isUnsigned: true)
!560 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_WC", value: 60, isUnsigned: true)
!561 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TAB_SIZE", value: 61, isUnsigned: true)
!562 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_IDX", value: 62, isUnsigned: true)
!563 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_TBL", value: 63, isUnsigned: true)
!564 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_IDX", value: 64, isUnsigned: true)
!565 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_TBL", value: 65, isUnsigned: true)
!566 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING_LEN", value: 66, isUnsigned: true)
!567 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING", value: 67, isUnsigned: true)
!568 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE_LEN", value: 68, isUnsigned: true)
!569 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE", value: 69, isUnsigned: true)
!570 = !DIEnumerator(name: "_NL_CTYPE_MAP_TO_NONASCII", value: 70, isUnsigned: true)
!571 = !DIEnumerator(name: "_NL_CTYPE_NONASCII_CASE", value: 71, isUnsigned: true)
!572 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_1", value: 72, isUnsigned: true)
!573 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_2", value: 73, isUnsigned: true)
!574 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_3", value: 74, isUnsigned: true)
!575 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_4", value: 75, isUnsigned: true)
!576 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_5", value: 76, isUnsigned: true)
!577 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_6", value: 77, isUnsigned: true)
!578 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_7", value: 78, isUnsigned: true)
!579 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_8", value: 79, isUnsigned: true)
!580 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_9", value: 80, isUnsigned: true)
!581 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_10", value: 81, isUnsigned: true)
!582 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_11", value: 82, isUnsigned: true)
!583 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_12", value: 83, isUnsigned: true)
!584 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_13", value: 84, isUnsigned: true)
!585 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_14", value: 85, isUnsigned: true)
!586 = !DIEnumerator(name: "_NL_NUM_LC_CTYPE", value: 86, isUnsigned: true)
!587 = !DIEnumerator(name: "__INT_CURR_SYMBOL", value: 262144, isUnsigned: true)
!588 = !DIEnumerator(name: "__CURRENCY_SYMBOL", value: 262145, isUnsigned: true)
!589 = !DIEnumerator(name: "__MON_DECIMAL_POINT", value: 262146, isUnsigned: true)
!590 = !DIEnumerator(name: "__MON_THOUSANDS_SEP", value: 262147, isUnsigned: true)
!591 = !DIEnumerator(name: "__MON_GROUPING", value: 262148, isUnsigned: true)
!592 = !DIEnumerator(name: "__POSITIVE_SIGN", value: 262149, isUnsigned: true)
!593 = !DIEnumerator(name: "__NEGATIVE_SIGN", value: 262150, isUnsigned: true)
!594 = !DIEnumerator(name: "__INT_FRAC_DIGITS", value: 262151, isUnsigned: true)
!595 = !DIEnumerator(name: "__FRAC_DIGITS", value: 262152, isUnsigned: true)
!596 = !DIEnumerator(name: "__P_CS_PRECEDES", value: 262153, isUnsigned: true)
!597 = !DIEnumerator(name: "__P_SEP_BY_SPACE", value: 262154, isUnsigned: true)
!598 = !DIEnumerator(name: "__N_CS_PRECEDES", value: 262155, isUnsigned: true)
!599 = !DIEnumerator(name: "__N_SEP_BY_SPACE", value: 262156, isUnsigned: true)
!600 = !DIEnumerator(name: "__P_SIGN_POSN", value: 262157, isUnsigned: true)
!601 = !DIEnumerator(name: "__N_SIGN_POSN", value: 262158, isUnsigned: true)
!602 = !DIEnumerator(name: "_NL_MONETARY_CRNCYSTR", value: 262159, isUnsigned: true)
!603 = !DIEnumerator(name: "__INT_P_CS_PRECEDES", value: 262160, isUnsigned: true)
!604 = !DIEnumerator(name: "__INT_P_SEP_BY_SPACE", value: 262161, isUnsigned: true)
!605 = !DIEnumerator(name: "__INT_N_CS_PRECEDES", value: 262162, isUnsigned: true)
!606 = !DIEnumerator(name: "__INT_N_SEP_BY_SPACE", value: 262163, isUnsigned: true)
!607 = !DIEnumerator(name: "__INT_P_SIGN_POSN", value: 262164, isUnsigned: true)
!608 = !DIEnumerator(name: "__INT_N_SIGN_POSN", value: 262165, isUnsigned: true)
!609 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_CURR_SYMBOL", value: 262166, isUnsigned: true)
!610 = !DIEnumerator(name: "_NL_MONETARY_DUO_CURRENCY_SYMBOL", value: 262167, isUnsigned: true)
!611 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_FRAC_DIGITS", value: 262168, isUnsigned: true)
!612 = !DIEnumerator(name: "_NL_MONETARY_DUO_FRAC_DIGITS", value: 262169, isUnsigned: true)
!613 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_CS_PRECEDES", value: 262170, isUnsigned: true)
!614 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SEP_BY_SPACE", value: 262171, isUnsigned: true)
!615 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_CS_PRECEDES", value: 262172, isUnsigned: true)
!616 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SEP_BY_SPACE", value: 262173, isUnsigned: true)
!617 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_CS_PRECEDES", value: 262174, isUnsigned: true)
!618 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SEP_BY_SPACE", value: 262175, isUnsigned: true)
!619 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_CS_PRECEDES", value: 262176, isUnsigned: true)
!620 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SEP_BY_SPACE", value: 262177, isUnsigned: true)
!621 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SIGN_POSN", value: 262178, isUnsigned: true)
!622 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SIGN_POSN", value: 262179, isUnsigned: true)
!623 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SIGN_POSN", value: 262180, isUnsigned: true)
!624 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SIGN_POSN", value: 262181, isUnsigned: true)
!625 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_FROM", value: 262182, isUnsigned: true)
!626 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_TO", value: 262183, isUnsigned: true)
!627 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_FROM", value: 262184, isUnsigned: true)
!628 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_TO", value: 262185, isUnsigned: true)
!629 = !DIEnumerator(name: "_NL_MONETARY_CONVERSION_RATE", value: 262186, isUnsigned: true)
!630 = !DIEnumerator(name: "_NL_MONETARY_DECIMAL_POINT_WC", value: 262187, isUnsigned: true)
!631 = !DIEnumerator(name: "_NL_MONETARY_THOUSANDS_SEP_WC", value: 262188, isUnsigned: true)
!632 = !DIEnumerator(name: "_NL_MONETARY_CODESET", value: 262189, isUnsigned: true)
!633 = !DIEnumerator(name: "_NL_NUM_LC_MONETARY", value: 262190, isUnsigned: true)
!634 = !DIEnumerator(name: "__DECIMAL_POINT", value: 65536, isUnsigned: true)
!635 = !DIEnumerator(name: "RADIXCHAR", value: 65536, isUnsigned: true)
!636 = !DIEnumerator(name: "__THOUSANDS_SEP", value: 65537, isUnsigned: true)
!637 = !DIEnumerator(name: "THOUSEP", value: 65537, isUnsigned: true)
!638 = !DIEnumerator(name: "__GROUPING", value: 65538, isUnsigned: true)
!639 = !DIEnumerator(name: "_NL_NUMERIC_DECIMAL_POINT_WC", value: 65539, isUnsigned: true)
!640 = !DIEnumerator(name: "_NL_NUMERIC_THOUSANDS_SEP_WC", value: 65540, isUnsigned: true)
!641 = !DIEnumerator(name: "_NL_NUMERIC_CODESET", value: 65541, isUnsigned: true)
!642 = !DIEnumerator(name: "_NL_NUM_LC_NUMERIC", value: 65542, isUnsigned: true)
!643 = !DIEnumerator(name: "__YESEXPR", value: 327680, isUnsigned: true)
!644 = !DIEnumerator(name: "__NOEXPR", value: 327681, isUnsigned: true)
!645 = !DIEnumerator(name: "__YESSTR", value: 327682, isUnsigned: true)
!646 = !DIEnumerator(name: "__NOSTR", value: 327683, isUnsigned: true)
!647 = !DIEnumerator(name: "_NL_MESSAGES_CODESET", value: 327684, isUnsigned: true)
!648 = !DIEnumerator(name: "_NL_NUM_LC_MESSAGES", value: 327685, isUnsigned: true)
!649 = !DIEnumerator(name: "_NL_PAPER_HEIGHT", value: 458752, isUnsigned: true)
!650 = !DIEnumerator(name: "_NL_PAPER_WIDTH", value: 458753, isUnsigned: true)
!651 = !DIEnumerator(name: "_NL_PAPER_CODESET", value: 458754, isUnsigned: true)
!652 = !DIEnumerator(name: "_NL_NUM_LC_PAPER", value: 458755, isUnsigned: true)
!653 = !DIEnumerator(name: "_NL_NAME_NAME_FMT", value: 524288, isUnsigned: true)
!654 = !DIEnumerator(name: "_NL_NAME_NAME_GEN", value: 524289, isUnsigned: true)
!655 = !DIEnumerator(name: "_NL_NAME_NAME_MR", value: 524290, isUnsigned: true)
!656 = !DIEnumerator(name: "_NL_NAME_NAME_MRS", value: 524291, isUnsigned: true)
!657 = !DIEnumerator(name: "_NL_NAME_NAME_MISS", value: 524292, isUnsigned: true)
!658 = !DIEnumerator(name: "_NL_NAME_NAME_MS", value: 524293, isUnsigned: true)
!659 = !DIEnumerator(name: "_NL_NAME_CODESET", value: 524294, isUnsigned: true)
!660 = !DIEnumerator(name: "_NL_NUM_LC_NAME", value: 524295, isUnsigned: true)
!661 = !DIEnumerator(name: "_NL_ADDRESS_POSTAL_FMT", value: 589824, isUnsigned: true)
!662 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NAME", value: 589825, isUnsigned: true)
!663 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_POST", value: 589826, isUnsigned: true)
!664 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB2", value: 589827, isUnsigned: true)
!665 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB3", value: 589828, isUnsigned: true)
!666 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_CAR", value: 589829, isUnsigned: true)
!667 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NUM", value: 589830, isUnsigned: true)
!668 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_ISBN", value: 589831, isUnsigned: true)
!669 = !DIEnumerator(name: "_NL_ADDRESS_LANG_NAME", value: 589832, isUnsigned: true)
!670 = !DIEnumerator(name: "_NL_ADDRESS_LANG_AB", value: 589833, isUnsigned: true)
!671 = !DIEnumerator(name: "_NL_ADDRESS_LANG_TERM", value: 589834, isUnsigned: true)
!672 = !DIEnumerator(name: "_NL_ADDRESS_LANG_LIB", value: 589835, isUnsigned: true)
!673 = !DIEnumerator(name: "_NL_ADDRESS_CODESET", value: 589836, isUnsigned: true)
!674 = !DIEnumerator(name: "_NL_NUM_LC_ADDRESS", value: 589837, isUnsigned: true)
!675 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_INT_FMT", value: 655360, isUnsigned: true)
!676 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_DOM_FMT", value: 655361, isUnsigned: true)
!677 = !DIEnumerator(name: "_NL_TELEPHONE_INT_SELECT", value: 655362, isUnsigned: true)
!678 = !DIEnumerator(name: "_NL_TELEPHONE_INT_PREFIX", value: 655363, isUnsigned: true)
!679 = !DIEnumerator(name: "_NL_TELEPHONE_CODESET", value: 655364, isUnsigned: true)
!680 = !DIEnumerator(name: "_NL_NUM_LC_TELEPHONE", value: 655365, isUnsigned: true)
!681 = !DIEnumerator(name: "_NL_MEASUREMENT_MEASUREMENT", value: 720896, isUnsigned: true)
!682 = !DIEnumerator(name: "_NL_MEASUREMENT_CODESET", value: 720897, isUnsigned: true)
!683 = !DIEnumerator(name: "_NL_NUM_LC_MEASUREMENT", value: 720898, isUnsigned: true)
!684 = !DIEnumerator(name: "_NL_IDENTIFICATION_TITLE", value: 786432, isUnsigned: true)
!685 = !DIEnumerator(name: "_NL_IDENTIFICATION_SOURCE", value: 786433, isUnsigned: true)
!686 = !DIEnumerator(name: "_NL_IDENTIFICATION_ADDRESS", value: 786434, isUnsigned: true)
!687 = !DIEnumerator(name: "_NL_IDENTIFICATION_CONTACT", value: 786435, isUnsigned: true)
!688 = !DIEnumerator(name: "_NL_IDENTIFICATION_EMAIL", value: 786436, isUnsigned: true)
!689 = !DIEnumerator(name: "_NL_IDENTIFICATION_TEL", value: 786437, isUnsigned: true)
!690 = !DIEnumerator(name: "_NL_IDENTIFICATION_FAX", value: 786438, isUnsigned: true)
!691 = !DIEnumerator(name: "_NL_IDENTIFICATION_LANGUAGE", value: 786439, isUnsigned: true)
!692 = !DIEnumerator(name: "_NL_IDENTIFICATION_TERRITORY", value: 786440, isUnsigned: true)
!693 = !DIEnumerator(name: "_NL_IDENTIFICATION_AUDIENCE", value: 786441, isUnsigned: true)
!694 = !DIEnumerator(name: "_NL_IDENTIFICATION_APPLICATION", value: 786442, isUnsigned: true)
!695 = !DIEnumerator(name: "_NL_IDENTIFICATION_ABBREVIATION", value: 786443, isUnsigned: true)
!696 = !DIEnumerator(name: "_NL_IDENTIFICATION_REVISION", value: 786444, isUnsigned: true)
!697 = !DIEnumerator(name: "_NL_IDENTIFICATION_DATE", value: 786445, isUnsigned: true)
!698 = !DIEnumerator(name: "_NL_IDENTIFICATION_CATEGORY", value: 786446, isUnsigned: true)
!699 = !DIEnumerator(name: "_NL_IDENTIFICATION_CODESET", value: 786447, isUnsigned: true)
!700 = !DIEnumerator(name: "_NL_NUM_LC_IDENTIFICATION", value: 786448, isUnsigned: true)
!701 = !DIEnumerator(name: "_NL_NUM", value: 786449, isUnsigned: true)
!702 = distinct !DICompileUnit(language: DW_LANG_C99, file: !703, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !56, retainedTypes: !282, splitDebugInlining: false, nameTableKind: None)
!703 = !DIFile(filename: "lib/setlocale_null.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!704 = distinct !DICompileUnit(language: DW_LANG_C99, file: !705, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !56, splitDebugInlining: false, nameTableKind: None)
!705 = !DIFile(filename: "lib/fclose.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!706 = distinct !DICompileUnit(language: DW_LANG_C99, file: !707, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !56, retainedTypes: !282, splitDebugInlining: false, nameTableKind: None)
!707 = !DIFile(filename: "lib/fflush.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!708 = distinct !DICompileUnit(language: DW_LANG_C99, file: !709, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !56, retainedTypes: !282, splitDebugInlining: false, nameTableKind: None)
!709 = !DIFile(filename: "lib/fseeko.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!710 = !{!"clang version 12.0.1"}
!711 = !{i32 7, !"Dwarf Version", i32 4}
!712 = !{i32 2, !"Debug Info Version", i32 3}
!713 = !{i32 1, !"wchar_size", i32 4}
!714 = !{i32 7, !"PIC Level", i32 2}
!715 = !{i32 7, !"PIE Level", i32 2}
!716 = distinct !DISubprogram(name: "usage", scope: !3, file: !3, line: 87, type: !717, scopeLine: 88, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !719)
!717 = !DISubroutineType(types: !718)
!718 = !{null, !39}
!719 = !{!720}
!720 = !DILocalVariable(name: "status", arg: 1, scope: !716, file: !3, line: 87, type: !39)
!721 = !DILocation(line: 0, scope: !716)
!722 = !DILocation(line: 89, column: 14, scope: !723)
!723 = distinct !DILexicalBlock(scope: !716, file: !3, line: 89, column: 7)
!724 = !DILocation(line: 89, column: 7, scope: !716)
!725 = !DILocation(line: 90, column: 5, scope: !726)
!726 = distinct !DILexicalBlock(scope: !723, file: !3, line: 90, column: 5)
!727 = !{!728, !728, i64 0}
!728 = !{!"any pointer", !729, i64 0}
!729 = !{!"omnipotent char", !730, i64 0}
!730 = !{!"Simple C/C++ TBAA"}
!731 = !DILocation(line: 93, column: 7, scope: !732)
!732 = distinct !DILexicalBlock(scope: !723, file: !3, line: 92, column: 5)
!733 = !DILocation(line: 98, column: 7, scope: !732)
!734 = !DILocation(line: 102, column: 7, scope: !732)
!735 = !DILocation(line: 103, column: 7, scope: !732)
!736 = !DILocation(line: 104, column: 7, scope: !732)
!737 = !DILocation(line: 110, column: 7, scope: !732)
!738 = !DILocation(line: 122, column: 7, scope: !732)
!739 = !DILocation(line: 128, column: 7, scope: !732)
!740 = !DILocation(line: 138, column: 7, scope: !732)
!741 = !DILocalVariable(name: "program", arg: 1, scope: !742, file: !743, line: 634, type: !50)
!742 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !743, file: !743, line: 634, type: !744, scopeLine: 635, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !746)
!743 = !DIFile(filename: "src/system.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!744 = !DISubroutineType(types: !745)
!745 = !{null, !50}
!746 = !{!741, !747, !756, !757, !759}
!747 = !DILocalVariable(name: "infomap", scope: !742, file: !743, line: 636, type: !748)
!748 = !DICompositeType(tag: DW_TAG_array_type, baseType: !749, size: 896, elements: !754)
!749 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !750)
!750 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !742, file: !743, line: 636, size: 128, elements: !751)
!751 = !{!752, !753}
!752 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !750, file: !743, line: 636, baseType: !50, size: 64)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !750, file: !743, line: 636, baseType: !50, size: 64, offset: 64)
!754 = !{!755}
!755 = !DISubrange(count: 7)
!756 = !DILocalVariable(name: "node", scope: !742, file: !743, line: 646, type: !50)
!757 = !DILocalVariable(name: "map_prog", scope: !742, file: !743, line: 647, type: !758)
!758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !749, size: 64)
!759 = !DILocalVariable(name: "lc_messages", scope: !742, file: !743, line: 659, type: !50)
!760 = !DILocation(line: 0, scope: !742, inlinedAt: !761)
!761 = distinct !DILocation(line: 139, column: 7, scope: !732)
!762 = !DILocation(line: 636, column: 3, scope: !742, inlinedAt: !761)
!763 = !DILocation(line: 636, column: 67, scope: !742, inlinedAt: !761)
!764 = !DILocation(line: 647, column: 36, scope: !742, inlinedAt: !761)
!765 = !DILocation(line: 649, column: 3, scope: !742, inlinedAt: !761)
!766 = !DILocation(line: 649, column: 33, scope: !742, inlinedAt: !761)
!767 = !DILocation(line: 650, column: 13, scope: !742, inlinedAt: !761)
!768 = !DILocation(line: 649, column: 20, scope: !742, inlinedAt: !761)
!769 = !{!770, !728, i64 0}
!770 = !{!"infomap", !728, i64 0, !728, i64 8}
!771 = !DILocation(line: 649, column: 10, scope: !742, inlinedAt: !761)
!772 = !DILocation(line: 649, column: 28, scope: !742, inlinedAt: !761)
!773 = distinct !{!773, !765, !767, !774}
!774 = !{!"llvm.loop.mustprogress"}
!775 = !DILocation(line: 652, column: 17, scope: !776, inlinedAt: !761)
!776 = distinct !DILexicalBlock(scope: !742, file: !743, line: 652, column: 7)
!777 = !{!770, !728, i64 8}
!778 = !DILocation(line: 652, column: 7, scope: !776, inlinedAt: !761)
!779 = !DILocation(line: 652, column: 7, scope: !742, inlinedAt: !761)
!780 = !DILocation(line: 655, column: 3, scope: !742, inlinedAt: !761)
!781 = !DILocation(line: 659, column: 29, scope: !742, inlinedAt: !761)
!782 = !DILocation(line: 660, column: 7, scope: !783, inlinedAt: !761)
!783 = distinct !DILexicalBlock(scope: !742, file: !743, line: 660, column: 7)
!784 = !DILocation(line: 660, column: 19, scope: !783, inlinedAt: !761)
!785 = !DILocation(line: 660, column: 22, scope: !783, inlinedAt: !761)
!786 = !DILocation(line: 660, column: 7, scope: !742, inlinedAt: !761)
!787 = !DILocation(line: 666, column: 7, scope: !788, inlinedAt: !761)
!788 = distinct !DILexicalBlock(scope: !783, file: !743, line: 661, column: 5)
!789 = !DILocation(line: 668, column: 5, scope: !788, inlinedAt: !761)
!790 = !DILocation(line: 669, column: 3, scope: !742, inlinedAt: !761)
!791 = !DILocation(line: 671, column: 3, scope: !742, inlinedAt: !761)
!792 = !DILocation(line: 673, column: 1, scope: !742, inlinedAt: !761)
!793 = !DILocation(line: 141, column: 3, scope: !716)
!794 = !DISubprogram(name: "dcgettext", scope: !795, file: !795, line: 51, type: !796, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !56)
!795 = !DIFile(filename: "/usr/include/libintl.h", directory: "")
!796 = !DISubroutineType(types: !797)
!797 = !{!37, !50, !50, !39}
!798 = !DISubprogram(name: "fputs_unlocked", scope: !799, file: !799, line: 667, type: !800, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !56)
!799 = !DIFile(filename: "/usr/include/stdio.h", directory: "")
!800 = !DISubroutineType(types: !801)
!801 = !{!39, !50, !802}
!802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !803, size: 64)
!803 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !154, line: 49, size: 1728, elements: !804)
!804 = !{!805, !806, !807, !808, !809, !810, !811, !812, !813, !814, !815, !816, !817, !818, !819, !820, !821, !822, !823, !824, !825, !826, !827, !828, !829, !830, !831, !832, !833}
!805 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !803, file: !154, line: 51, baseType: !39, size: 32)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !803, file: !154, line: 54, baseType: !37, size: 64, offset: 64)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !803, file: !154, line: 55, baseType: !37, size: 64, offset: 128)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !803, file: !154, line: 56, baseType: !37, size: 64, offset: 192)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !803, file: !154, line: 57, baseType: !37, size: 64, offset: 256)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !803, file: !154, line: 58, baseType: !37, size: 64, offset: 320)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !803, file: !154, line: 59, baseType: !37, size: 64, offset: 384)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !803, file: !154, line: 60, baseType: !37, size: 64, offset: 448)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !803, file: !154, line: 61, baseType: !37, size: 64, offset: 512)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !803, file: !154, line: 64, baseType: !37, size: 64, offset: 576)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !803, file: !154, line: 65, baseType: !37, size: 64, offset: 640)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !803, file: !154, line: 66, baseType: !37, size: 64, offset: 704)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !803, file: !154, line: 68, baseType: !169, size: 64, offset: 768)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !803, file: !154, line: 70, baseType: !802, size: 64, offset: 832)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !803, file: !154, line: 72, baseType: !39, size: 32, offset: 896)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !803, file: !154, line: 73, baseType: !39, size: 32, offset: 928)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !803, file: !154, line: 74, baseType: !176, size: 64, offset: 960)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !803, file: !154, line: 77, baseType: !41, size: 16, offset: 1024)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !803, file: !154, line: 78, baseType: !180, size: 8, offset: 1040)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !803, file: !154, line: 79, baseType: !182, size: 8, offset: 1048)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !803, file: !154, line: 81, baseType: !186, size: 64, offset: 1088)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !803, file: !154, line: 89, baseType: !189, size: 64, offset: 1152)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !803, file: !154, line: 91, baseType: !191, size: 64, offset: 1216)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !803, file: !154, line: 92, baseType: !194, size: 64, offset: 1280)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !803, file: !154, line: 93, baseType: !802, size: 64, offset: 1344)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !803, file: !154, line: 94, baseType: !36, size: 64, offset: 1408)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !803, file: !154, line: 95, baseType: !88, size: 64, offset: 1472)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !803, file: !154, line: 96, baseType: !39, size: 32, offset: 1536)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !803, file: !154, line: 98, baseType: !201, size: 160, offset: 1568)
!834 = !DISubprogram(name: "setlocale", scope: !835, file: !835, line: 122, type: !836, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !56)
!835 = !DIFile(filename: "/usr/include/locale.h", directory: "")
!836 = !DISubroutineType(types: !837)
!837 = !{!37, !39, !50}
!838 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 651, type: !839, scopeLine: 652, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !841)
!839 = !DISubroutineType(types: !840)
!840 = !{!39, !39, !149}
!841 = !{!842, !843, !844, !845}
!842 = !DILocalVariable(name: "argc", arg: 1, scope: !838, file: !3, line: 651, type: !39)
!843 = !DILocalVariable(name: "argv", arg: 2, scope: !838, file: !3, line: 651, type: !149)
!844 = !DILocalVariable(name: "format", scope: !838, file: !3, line: 653, type: !37)
!845 = !DILocalVariable(name: "args_used", scope: !838, file: !3, line: 654, type: !39)
!846 = !DILocation(line: 0, scope: !838)
!847 = !DILocation(line: 657, column: 21, scope: !838)
!848 = !DILocation(line: 657, column: 3, scope: !838)
!849 = !DILocation(line: 658, column: 3, scope: !838)
!850 = !DILocation(line: 659, column: 3, scope: !838)
!851 = !DILocation(line: 660, column: 3, scope: !838)
!852 = !DILocation(line: 662, column: 3, scope: !838)
!853 = !DILocation(line: 664, column: 15, scope: !838)
!854 = !DILocation(line: 666, column: 22, scope: !838)
!855 = !DILocation(line: 666, column: 49, scope: !838)
!856 = !DILocation(line: 666, column: 19, scope: !838)
!857 = !{!858, !858, i64 0}
!858 = !{!"_Bool", !729, i64 0}
!859 = !DILocation(line: 670, column: 12, scope: !860)
!860 = distinct !DILexicalBlock(scope: !838, file: !3, line: 670, column: 7)
!861 = !DILocation(line: 670, column: 7, scope: !838)
!862 = !DILocation(line: 672, column: 11, scope: !863)
!863 = distinct !DILexicalBlock(scope: !864, file: !3, line: 672, column: 11)
!864 = distinct !DILexicalBlock(scope: !860, file: !3, line: 671, column: 5)
!865 = !DILocation(line: 672, column: 11, scope: !864)
!866 = !DILocation(line: 673, column: 9, scope: !863)
!867 = !DILocation(line: 675, column: 11, scope: !868)
!868 = distinct !DILexicalBlock(scope: !864, file: !3, line: 675, column: 11)
!869 = !DILocation(line: 675, column: 11, scope: !864)
!870 = !DILocation(line: 677, column: 24, scope: !871)
!871 = distinct !DILexicalBlock(scope: !868, file: !3, line: 676, column: 9)
!872 = !DILocation(line: 677, column: 60, scope: !871)
!873 = !DILocation(line: 677, column: 11, scope: !871)
!874 = !DILocation(line: 679, column: 11, scope: !871)
!875 = !DILocation(line: 685, column: 9, scope: !876)
!876 = distinct !DILexicalBlock(scope: !838, file: !3, line: 685, column: 7)
!877 = !DILocation(line: 685, column: 16, scope: !876)
!878 = !DILocation(line: 685, column: 19, scope: !876)
!879 = !DILocation(line: 685, column: 7, scope: !838)
!880 = !DILocation(line: 691, column: 12, scope: !881)
!881 = distinct !DILexicalBlock(scope: !838, file: !3, line: 691, column: 7)
!882 = !DILocation(line: 691, column: 7, scope: !838)
!883 = !DILocation(line: 687, column: 7, scope: !884)
!884 = distinct !DILexicalBlock(scope: !876, file: !3, line: 686, column: 5)
!885 = !DILocation(line: 697, column: 12, scope: !838)
!886 = !DILocation(line: 693, column: 20, scope: !887)
!887 = distinct !DILexicalBlock(scope: !881, file: !3, line: 692, column: 5)
!888 = !DILocation(line: 693, column: 7, scope: !887)
!889 = !DILocation(line: 694, column: 7, scope: !887)
!890 = !DILocation(line: 698, column: 8, scope: !838)
!891 = !DILocation(line: 699, column: 8, scope: !838)
!892 = !DILocation(line: 701, column: 3, scope: !838)
!893 = !DILocalVariable(name: "format", arg: 1, scope: !894, file: !3, line: 478, type: !50)
!894 = distinct !DISubprogram(name: "print_formatted", scope: !3, file: !3, line: 478, type: !895, scopeLine: 479, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !897)
!895 = !DISubroutineType(types: !896)
!896 = !{!39, !50, !39, !149}
!897 = !{!893, !898, !899, !900, !901, !902, !903, !904, !905, !906, !907, !908, !909, !921, !928, !930}
!898 = !DILocalVariable(name: "argc", arg: 2, scope: !894, file: !3, line: 478, type: !39)
!899 = !DILocalVariable(name: "argv", arg: 3, scope: !894, file: !3, line: 478, type: !149)
!900 = !DILocalVariable(name: "save_argc", scope: !894, file: !3, line: 480, type: !39)
!901 = !DILocalVariable(name: "f", scope: !894, file: !3, line: 481, type: !50)
!902 = !DILocalVariable(name: "direc_start", scope: !894, file: !3, line: 482, type: !50)
!903 = !DILocalVariable(name: "direc_length", scope: !894, file: !3, line: 483, type: !88)
!904 = !DILocalVariable(name: "have_field_width", scope: !894, file: !3, line: 484, type: !46)
!905 = !DILocalVariable(name: "field_width", scope: !894, file: !3, line: 485, type: !39)
!906 = !DILocalVariable(name: "have_precision", scope: !894, file: !3, line: 486, type: !46)
!907 = !DILocalVariable(name: "precision", scope: !894, file: !3, line: 487, type: !39)
!908 = !DILocalVariable(name: "ok", scope: !894, file: !3, line: 488, type: !114)
!909 = !DILocalVariable(name: "width", scope: !910, file: !3, line: 562, type: !918)
!910 = distinct !DILexicalBlock(scope: !911, file: !3, line: 561, column: 17)
!911 = distinct !DILexicalBlock(scope: !912, file: !3, line: 560, column: 19)
!912 = distinct !DILexicalBlock(scope: !913, file: !3, line: 557, column: 13)
!913 = distinct !DILexicalBlock(scope: !914, file: !3, line: 556, column: 15)
!914 = distinct !DILexicalBlock(scope: !915, file: !3, line: 493, column: 9)
!915 = distinct !DILexicalBlock(scope: !916, file: !3, line: 491, column: 5)
!916 = distinct !DILexicalBlock(scope: !917, file: !3, line: 490, column: 3)
!917 = distinct !DILexicalBlock(scope: !894, file: !3, line: 490, column: 3)
!918 = !DIDerivedType(tag: DW_TAG_typedef, name: "intmax_t", file: !919, line: 101, baseType: !920)
!919 = !DIFile(filename: "/usr/include/stdint.h", directory: "")
!920 = !DIDerivedType(tag: DW_TAG_typedef, name: "__intmax_t", file: !177, line: 72, baseType: !137)
!921 = !DILocalVariable(name: "prec", scope: !922, file: !3, line: 592, type: !918)
!922 = distinct !DILexicalBlock(scope: !923, file: !3, line: 591, column: 21)
!923 = distinct !DILexicalBlock(scope: !924, file: !3, line: 590, column: 23)
!924 = distinct !DILexicalBlock(scope: !925, file: !3, line: 587, column: 17)
!925 = distinct !DILexicalBlock(scope: !926, file: !3, line: 586, column: 19)
!926 = distinct !DILexicalBlock(scope: !927, file: !3, line: 582, column: 13)
!927 = distinct !DILexicalBlock(scope: !914, file: !3, line: 581, column: 15)
!928 = !DILocalVariable(name: "conversion", scope: !929, file: !3, line: 625, type: !40)
!929 = distinct !DILexicalBlock(scope: !914, file: !3, line: 624, column: 11)
!930 = !DILabel(scope: !914, name: "no_more_flag_characters", file: !3, line: 554)
!931 = !DILocation(line: 0, scope: !894, inlinedAt: !932)
!932 = distinct !DILocation(line: 703, column: 19, scope: !933)
!933 = distinct !DILexicalBlock(scope: !838, file: !3, line: 702, column: 5)
!934 = !DILocation(line: 488, column: 3, scope: !894, inlinedAt: !932)
!935 = !DILocation(line: 488, column: 8, scope: !894, inlinedAt: !932)
!936 = !DILocation(line: 490, column: 20, scope: !916, inlinedAt: !932)
!937 = !{!729, !729, i64 0}
!938 = !DILocation(line: 490, column: 3, scope: !917, inlinedAt: !932)
!939 = !DILocation(line: 492, column: 15, scope: !915, inlinedAt: !932)
!940 = !DILocation(line: 492, column: 7, scope: !915, inlinedAt: !932)
!941 = !DILocation(line: 495, column: 26, scope: !914, inlinedAt: !932)
!942 = !DILocation(line: 498, column: 15, scope: !943, inlinedAt: !932)
!943 = distinct !DILexicalBlock(scope: !914, file: !3, line: 498, column: 15)
!944 = !DILocation(line: 498, column: 15, scope: !914, inlinedAt: !932)
!945 = !DILocalVariable(name: "__c", arg: 1, scope: !946, file: !947, line: 108, type: !39)
!946 = distinct !DISubprogram(name: "putchar_unlocked", scope: !947, file: !947, line: 108, type: !948, scopeLine: 109, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !950)
!947 = !DIFile(filename: "/usr/include/bits/stdio.h", directory: "")
!948 = !DISubroutineType(types: !949)
!949 = !{!39, !39}
!950 = !{!945}
!951 = !DILocation(line: 0, scope: !946, inlinedAt: !952)
!952 = distinct !DILocation(line: 500, column: 15, scope: !953, inlinedAt: !932)
!953 = distinct !DILexicalBlock(scope: !943, file: !3, line: 499, column: 13)
!954 = !DILocation(line: 110, column: 10, scope: !946, inlinedAt: !952)
!955 = !{!956, !728, i64 40}
!956 = !{!"_IO_FILE", !957, i64 0, !728, i64 8, !728, i64 16, !728, i64 24, !728, i64 32, !728, i64 40, !728, i64 48, !728, i64 56, !728, i64 64, !728, i64 72, !728, i64 80, !728, i64 88, !728, i64 96, !728, i64 104, !957, i64 112, !957, i64 116, !958, i64 120, !959, i64 128, !729, i64 130, !729, i64 131, !728, i64 136, !958, i64 144, !728, i64 152, !728, i64 160, !728, i64 168, !728, i64 176, !958, i64 184, !957, i64 192, !729, i64 196}
!957 = !{!"int", !729, i64 0}
!958 = !{!"long", !729, i64 0}
!959 = !{!"short", !729, i64 0}
!960 = !{!956, !728, i64 48}
!961 = !{!"branch_weights", i32 2000, i32 1}
!962 = !DILocation(line: 507, column: 24, scope: !963, inlinedAt: !932)
!963 = distinct !DILexicalBlock(scope: !964, file: !3, line: 507, column: 19)
!964 = distinct !DILexicalBlock(scope: !965, file: !3, line: 504, column: 13)
!965 = distinct !DILexicalBlock(scope: !914, file: !3, line: 503, column: 15)
!966 = !DILocation(line: 507, column: 19, scope: !964, inlinedAt: !932)
!967 = !DILocation(line: 509, column: 37, scope: !968, inlinedAt: !932)
!968 = distinct !DILexicalBlock(scope: !963, file: !3, line: 508, column: 17)
!969 = !DILocalVariable(name: "str", arg: 1, scope: !970, file: !3, line: 313, type: !50)
!970 = distinct !DISubprogram(name: "print_esc_string", scope: !3, file: !3, line: 313, type: !744, scopeLine: 314, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !971)
!971 = !{!969}
!972 = !DILocation(line: 0, scope: !970, inlinedAt: !973)
!973 = distinct !DILocation(line: 509, column: 19, scope: !968, inlinedAt: !932)
!974 = !DILocation(line: 315, column: 3, scope: !970, inlinedAt: !973)
!975 = !DILocation(line: 315, column: 10, scope: !976, inlinedAt: !973)
!976 = distinct !DILexicalBlock(scope: !977, file: !3, line: 315, column: 3)
!977 = distinct !DILexicalBlock(scope: !970, file: !3, line: 315, column: 3)
!978 = !DILocation(line: 315, column: 3, scope: !977, inlinedAt: !973)
!979 = !DILocation(line: 317, column: 14, scope: !980, inlinedAt: !973)
!980 = distinct !DILexicalBlock(scope: !976, file: !3, line: 316, column: 9)
!981 = !DILocation(line: 317, column: 11, scope: !980, inlinedAt: !973)
!982 = !DILocation(line: 317, column: 7, scope: !980, inlinedAt: !973)
!983 = !DILocation(line: 0, scope: !946, inlinedAt: !984)
!984 = distinct !DILocation(line: 319, column: 7, scope: !980, inlinedAt: !973)
!985 = !DILocation(line: 110, column: 10, scope: !946, inlinedAt: !984)
!986 = !DILocation(line: 316, column: 9, scope: !980, inlinedAt: !973)
!987 = !DILocation(line: 315, column: 19, scope: !976, inlinedAt: !973)
!988 = !DILocation(line: 315, column: 3, scope: !976, inlinedAt: !973)
!989 = distinct !{!989, !978, !990, !774}
!990 = !DILocation(line: 319, column: 7, scope: !977, inlinedAt: !973)
!991 = !DILocation(line: 510, column: 19, scope: !968, inlinedAt: !932)
!992 = !DILocation(line: 511, column: 19, scope: !968, inlinedAt: !932)
!993 = !DILocation(line: 512, column: 17, scope: !968, inlinedAt: !932)
!994 = !DILocation(line: 518, column: 24, scope: !995, inlinedAt: !932)
!995 = distinct !DILexicalBlock(scope: !996, file: !3, line: 518, column: 19)
!996 = distinct !DILexicalBlock(scope: !997, file: !3, line: 517, column: 13)
!997 = distinct !DILexicalBlock(scope: !914, file: !3, line: 516, column: 15)
!998 = !DILocation(line: 518, column: 19, scope: !996, inlinedAt: !932)
!999 = !DILocation(line: 520, column: 19, scope: !1000, inlinedAt: !932)
!1000 = distinct !DILexicalBlock(scope: !995, file: !3, line: 519, column: 17)
!1001 = !DILocation(line: 522, column: 19, scope: !1000, inlinedAt: !932)
!1002 = !DILocation(line: 523, column: 19, scope: !1000, inlinedAt: !932)
!1003 = !DILocation(line: 524, column: 17, scope: !1000, inlinedAt: !932)
!1004 = !DILocalVariable(name: "__dest", arg: 1, scope: !1005, file: !1006, line: 57, type: !36)
!1005 = distinct !DISubprogram(name: "memset", scope: !1006, file: !1006, line: 57, type: !1007, scopeLine: 58, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1009)
!1006 = !DIFile(filename: "/usr/include/bits/string_fortified.h", directory: "")
!1007 = !DISubroutineType(types: !1008)
!1008 = !{!36, !36, !39, !88}
!1009 = !{!1004, !1010, !1011}
!1010 = !DILocalVariable(name: "__ch", arg: 2, scope: !1005, file: !1006, line: 57, type: !39)
!1011 = !DILocalVariable(name: "__len", arg: 3, scope: !1005, file: !1006, line: 57, type: !88)
!1012 = !DILocation(line: 0, scope: !1005, inlinedAt: !1013)
!1013 = distinct !DILocation(line: 528, column: 11, scope: !914, inlinedAt: !932)
!1014 = !DILocation(line: 59, column: 10, scope: !1005, inlinedAt: !1013)
!1015 = !DILocation(line: 531, column: 51, scope: !914, inlinedAt: !932)
!1016 = !DILocation(line: 531, column: 41, scope: !914, inlinedAt: !932)
!1017 = !DILocation(line: 531, column: 31, scope: !914, inlinedAt: !932)
!1018 = !DILocation(line: 531, column: 21, scope: !914, inlinedAt: !932)
!1019 = !DILocation(line: 530, column: 71, scope: !914, inlinedAt: !932)
!1020 = !DILocation(line: 530, column: 61, scope: !914, inlinedAt: !932)
!1021 = !DILocation(line: 530, column: 51, scope: !914, inlinedAt: !932)
!1022 = !DILocation(line: 530, column: 31, scope: !914, inlinedAt: !932)
!1023 = !DILocation(line: 529, column: 69, scope: !914, inlinedAt: !932)
!1024 = !DILocation(line: 529, column: 29, scope: !914, inlinedAt: !932)
!1025 = !DILocation(line: 529, column: 19, scope: !914, inlinedAt: !932)
!1026 = !DILocation(line: 530, column: 41, scope: !914, inlinedAt: !932)
!1027 = !DILocation(line: 533, column: 11, scope: !914, inlinedAt: !932)
!1028 = !DILocation(line: 0, scope: !914, inlinedAt: !932)
!1029 = !DILocation(line: 534, column: 21, scope: !1030, inlinedAt: !932)
!1030 = distinct !DILexicalBlock(scope: !1031, file: !3, line: 533, column: 11)
!1031 = distinct !DILexicalBlock(scope: !914, file: !3, line: 533, column: 11)
!1032 = !DILocation(line: 534, column: 13, scope: !1030, inlinedAt: !932)
!1033 = !DILocation(line: 541, column: 57, scope: !1034, inlinedAt: !932)
!1034 = distinct !DILexicalBlock(scope: !1030, file: !3, line: 535, column: 15)
!1035 = !DILocation(line: 541, column: 47, scope: !1034, inlinedAt: !932)
!1036 = !DILocation(line: 541, column: 37, scope: !1034, inlinedAt: !932)
!1037 = !DILocation(line: 541, column: 27, scope: !1034, inlinedAt: !932)
!1038 = !DILocation(line: 540, column: 65, scope: !1034, inlinedAt: !932)
!1039 = !DILocation(line: 540, column: 55, scope: !1034, inlinedAt: !932)
!1040 = !DILocation(line: 540, column: 45, scope: !1034, inlinedAt: !932)
!1041 = !DILocation(line: 540, column: 35, scope: !1034, inlinedAt: !932)
!1042 = !DILocation(line: 540, column: 25, scope: !1034, inlinedAt: !932)
!1043 = !DILocation(line: 542, column: 17, scope: !1034, inlinedAt: !932)
!1044 = !DILocation(line: 546, column: 65, scope: !1034, inlinedAt: !932)
!1045 = !DILocation(line: 546, column: 55, scope: !1034, inlinedAt: !932)
!1046 = !DILocation(line: 546, column: 45, scope: !1034, inlinedAt: !932)
!1047 = !DILocation(line: 546, column: 35, scope: !1034, inlinedAt: !932)
!1048 = !DILocation(line: 546, column: 25, scope: !1034, inlinedAt: !932)
!1049 = !DILocation(line: 547, column: 17, scope: !1034, inlinedAt: !932)
!1050 = !DILocation(line: 549, column: 35, scope: !1034, inlinedAt: !932)
!1051 = !DILocation(line: 549, column: 25, scope: !1034, inlinedAt: !932)
!1052 = !DILocation(line: 550, column: 17, scope: !1034, inlinedAt: !932)
!1053 = !DILocation(line: 533, column: 20, scope: !1030, inlinedAt: !932)
!1054 = !DILocation(line: 533, column: 36, scope: !1030, inlinedAt: !932)
!1055 = !DILocation(line: 533, column: 11, scope: !1030, inlinedAt: !932)
!1056 = distinct !{!1056, !1057, !1058}
!1057 = !DILocation(line: 533, column: 11, scope: !1031, inlinedAt: !932)
!1058 = !DILocation(line: 553, column: 15, scope: !1031, inlinedAt: !932)
!1059 = !DILocation(line: 554, column: 9, scope: !914, inlinedAt: !932)
!1060 = !DILocation(line: 556, column: 18, scope: !913, inlinedAt: !932)
!1061 = !DILocation(line: 556, column: 15, scope: !914, inlinedAt: !932)
!1062 = !DILocation(line: 576, column: 20, scope: !913, inlinedAt: !932)
!1063 = !DILocation(line: 576, column: 13, scope: !913, inlinedAt: !932)
!1064 = !DILocation(line: 558, column: 15, scope: !912, inlinedAt: !932)
!1065 = !DILocation(line: 559, column: 15, scope: !912, inlinedAt: !932)
!1066 = !DILocation(line: 560, column: 24, scope: !911, inlinedAt: !932)
!1067 = !DILocation(line: 560, column: 19, scope: !912, inlinedAt: !932)
!1068 = !DILocation(line: 562, column: 48, scope: !910, inlinedAt: !932)
!1069 = !DILocation(line: 562, column: 36, scope: !910, inlinedAt: !932)
!1070 = !DILocation(line: 0, scope: !910, inlinedAt: !932)
!1071 = !DILocation(line: 563, column: 40, scope: !1072, inlinedAt: !932)
!1072 = distinct !DILexicalBlock(scope: !910, file: !3, line: 563, column: 23)
!1073 = !DILocation(line: 564, column: 35, scope: !1072, inlinedAt: !932)
!1074 = !DILocation(line: 568, column: 19, scope: !910, inlinedAt: !932)
!1075 = !DILocation(line: 569, column: 19, scope: !910, inlinedAt: !932)
!1076 = !DILocation(line: 570, column: 17, scope: !910, inlinedAt: !932)
!1077 = !DILocation(line: 566, column: 21, scope: !1072, inlinedAt: !932)
!1078 = !DILocation(line: 578, column: 17, scope: !1079, inlinedAt: !932)
!1079 = distinct !DILexicalBlock(scope: !913, file: !3, line: 577, column: 15)
!1080 = !DILocation(line: 579, column: 17, scope: !1079, inlinedAt: !932)
!1081 = distinct !{!1081, !1063, !1082, !774}
!1082 = !DILocation(line: 580, column: 15, scope: !913, inlinedAt: !932)
!1083 = !DILocation(line: 581, column: 15, scope: !927, inlinedAt: !932)
!1084 = !DILocation(line: 581, column: 18, scope: !927, inlinedAt: !932)
!1085 = !DILocation(line: 581, column: 15, scope: !914, inlinedAt: !932)
!1086 = !DILocation(line: 583, column: 15, scope: !926, inlinedAt: !932)
!1087 = !DILocation(line: 585, column: 23, scope: !926, inlinedAt: !932)
!1088 = !DILocation(line: 586, column: 19, scope: !925, inlinedAt: !932)
!1089 = !DILocation(line: 586, column: 22, scope: !925, inlinedAt: !932)
!1090 = !DILocation(line: 586, column: 19, scope: !926, inlinedAt: !932)
!1091 = !DILocation(line: 0, scope: !926, inlinedAt: !932)
!1092 = !DILocation(line: 613, column: 24, scope: !925, inlinedAt: !932)
!1093 = !DILocation(line: 613, column: 17, scope: !925, inlinedAt: !932)
!1094 = distinct !{!1094, !1093, !1095, !774}
!1095 = !DILocation(line: 617, column: 19, scope: !925, inlinedAt: !932)
!1096 = !DILocation(line: 615, column: 21, scope: !1097, inlinedAt: !932)
!1097 = distinct !DILexicalBlock(scope: !925, file: !3, line: 614, column: 19)
!1098 = !DILocation(line: 588, column: 19, scope: !924, inlinedAt: !932)
!1099 = !DILocation(line: 589, column: 19, scope: !924, inlinedAt: !932)
!1100 = !DILocation(line: 590, column: 28, scope: !923, inlinedAt: !932)
!1101 = !DILocation(line: 590, column: 23, scope: !924, inlinedAt: !932)
!1102 = !DILocation(line: 592, column: 51, scope: !922, inlinedAt: !932)
!1103 = !DILocation(line: 592, column: 39, scope: !922, inlinedAt: !932)
!1104 = !DILocation(line: 0, scope: !922, inlinedAt: !932)
!1105 = !DILocation(line: 593, column: 32, scope: !1106, inlinedAt: !932)
!1106 = distinct !DILexicalBlock(scope: !922, file: !3, line: 593, column: 27)
!1107 = !DILocation(line: 593, column: 27, scope: !922, inlinedAt: !932)
!1108 = !DILocation(line: 600, column: 40, scope: !1109, inlinedAt: !932)
!1109 = distinct !DILexicalBlock(scope: !1106, file: !3, line: 600, column: 32)
!1110 = !DILocation(line: 600, column: 32, scope: !1106, inlinedAt: !932)
!1111 = !DILocation(line: 601, column: 25, scope: !1109, inlinedAt: !932)
!1112 = !DILocation(line: 604, column: 37, scope: !1109, inlinedAt: !932)
!1113 = !DILocation(line: 0, scope: !1106, inlinedAt: !932)
!1114 = !DILocation(line: 605, column: 23, scope: !922, inlinedAt: !932)
!1115 = !DILocation(line: 606, column: 23, scope: !922, inlinedAt: !932)
!1116 = !DILocation(line: 607, column: 21, scope: !922, inlinedAt: !932)
!1117 = !DILocation(line: 620, column: 11, scope: !914, inlinedAt: !932)
!1118 = !DILocation(line: 620, column: 18, scope: !914, inlinedAt: !932)
!1119 = !DILocation(line: 620, column: 28, scope: !914, inlinedAt: !932)
!1120 = !DILocation(line: 622, column: 13, scope: !914, inlinedAt: !932)
!1121 = distinct !{!1121, !1117, !1122, !774}
!1122 = !DILocation(line: 622, column: 15, scope: !914, inlinedAt: !932)
!1123 = !DILocation(line: 0, scope: !929, inlinedAt: !932)
!1124 = !DILocation(line: 626, column: 19, scope: !1125, inlinedAt: !932)
!1125 = distinct !DILexicalBlock(scope: !929, file: !3, line: 626, column: 17)
!1126 = !DILocation(line: 626, column: 17, scope: !929, inlinedAt: !932)
!1127 = !DILocation(line: 627, column: 15, scope: !1125, inlinedAt: !932)
!1128 = !DILocation(line: 635, column: 30, scope: !914, inlinedAt: !932)
!1129 = !DILocation(line: 635, column: 25, scope: !914, inlinedAt: !932)
!1130 = !DILocation(line: 635, column: 47, scope: !914, inlinedAt: !932)
!1131 = !DILocation(line: 635, column: 56, scope: !914, inlinedAt: !932)
!1132 = !DILocation(line: 635, column: 51, scope: !914, inlinedAt: !932)
!1133 = !DILocalVariable(name: "arg", scope: !1134, file: !3, line: 427, type: !1159)
!1134 = distinct !DILexicalBlock(scope: !1135, file: !3, line: 426, column: 7)
!1135 = distinct !DILexicalBlock(scope: !1136, file: !3, line: 373, column: 5)
!1136 = distinct !DISubprogram(name: "print_direc", scope: !3, file: !3, line: 331, type: !1137, scopeLine: 335, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1139)
!1137 = !DISubroutineType(types: !1138)
!1138 = !{null, !50, !88, !38, !46, !39, !46, !39, !50}
!1139 = !{!1140, !1141, !1142, !1143, !1144, !1145, !1146, !1147, !1148, !1149, !1151, !1152, !1153, !1155, !1133}
!1140 = !DILocalVariable(name: "start", arg: 1, scope: !1136, file: !3, line: 331, type: !50)
!1141 = !DILocalVariable(name: "length", arg: 2, scope: !1136, file: !3, line: 331, type: !88)
!1142 = !DILocalVariable(name: "conversion", arg: 3, scope: !1136, file: !3, line: 331, type: !38)
!1143 = !DILocalVariable(name: "have_field_width", arg: 4, scope: !1136, file: !3, line: 332, type: !46)
!1144 = !DILocalVariable(name: "field_width", arg: 5, scope: !1136, file: !3, line: 332, type: !39)
!1145 = !DILocalVariable(name: "have_precision", arg: 6, scope: !1136, file: !3, line: 333, type: !46)
!1146 = !DILocalVariable(name: "precision", arg: 7, scope: !1136, file: !3, line: 333, type: !39)
!1147 = !DILocalVariable(name: "argument", arg: 8, scope: !1136, file: !3, line: 334, type: !50)
!1148 = !DILocalVariable(name: "p", scope: !1136, file: !3, line: 336, type: !37)
!1149 = !DILocalVariable(name: "q", scope: !1150, file: !3, line: 342, type: !37)
!1150 = distinct !DILexicalBlock(scope: !1136, file: !3, line: 341, column: 3)
!1151 = !DILocalVariable(name: "length_modifier", scope: !1150, file: !3, line: 343, type: !50)
!1152 = !DILocalVariable(name: "length_modifier_len", scope: !1150, file: !3, line: 344, type: !88)
!1153 = !DILocalVariable(name: "arg", scope: !1154, file: !3, line: 377, type: !918)
!1154 = distinct !DILexicalBlock(scope: !1135, file: !3, line: 376, column: 7)
!1155 = !DILocalVariable(name: "arg", scope: !1156, file: !3, line: 400, type: !1157)
!1156 = distinct !DILexicalBlock(scope: !1135, file: !3, line: 399, column: 7)
!1157 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !919, line: 102, baseType: !1158)
!1158 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !177, line: 73, baseType: !90)
!1159 = !DIBasicType(name: "long double", size: 128, encoding: DW_ATE_float)
!1160 = !DILocation(line: 427, column: 21, scope: !1134, inlinedAt: !1161)
!1161 = distinct !DILocation(line: 632, column: 11, scope: !914, inlinedAt: !932)
!1162 = !DILocation(line: 0, scope: !1136, inlinedAt: !1161)
!1163 = !DILocation(line: 346, column: 13, scope: !1150, inlinedAt: !1161)
!1164 = !DILocation(line: 346, column: 5, scope: !1150, inlinedAt: !1161)
!1165 = !DILocation(line: 0, scope: !1150, inlinedAt: !1161)
!1166 = !DILocation(line: 357, column: 9, scope: !1167, inlinedAt: !1161)
!1167 = distinct !DILexicalBlock(scope: !1150, file: !3, line: 347, column: 7)
!1168 = !DILocation(line: 362, column: 9, scope: !1167, inlinedAt: !1161)
!1169 = !DILocation(line: 0, scope: !1167, inlinedAt: !1161)
!1170 = !DILocation(line: 365, column: 25, scope: !1150, inlinedAt: !1161)
!1171 = !DILocation(line: 365, column: 47, scope: !1150, inlinedAt: !1161)
!1172 = !DILocation(line: 365, column: 9, scope: !1150, inlinedAt: !1161)
!1173 = !DILocalVariable(name: "__dest", arg: 1, scope: !1174, file: !1006, line: 42, type: !1177)
!1174 = distinct !DISubprogram(name: "mempcpy", scope: !1006, file: !1006, line: 42, type: !1175, scopeLine: 44, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1181)
!1175 = !DISubroutineType(types: !1176)
!1176 = !{!36, !1177, !1178, !88}
!1177 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !36)
!1178 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1179)
!1179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1180, size: 64)
!1180 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1181 = !{!1173, !1182, !1183}
!1182 = !DILocalVariable(name: "__src", arg: 2, scope: !1174, file: !1006, line: 42, type: !1178)
!1183 = !DILocalVariable(name: "__len", arg: 3, scope: !1174, file: !1006, line: 42, type: !88)
!1184 = !DILocation(line: 0, scope: !1174, inlinedAt: !1185)
!1185 = distinct !DILocation(line: 366, column: 9, scope: !1150, inlinedAt: !1161)
!1186 = !DILocation(line: 45, column: 10, scope: !1174, inlinedAt: !1185)
!1187 = !DILocation(line: 0, scope: !1174, inlinedAt: !1188)
!1188 = distinct !DILocation(line: 367, column: 9, scope: !1150, inlinedAt: !1161)
!1189 = !DILocation(line: 45, column: 10, scope: !1174, inlinedAt: !1188)
!1190 = !DILocation(line: 368, column: 7, scope: !1150, inlinedAt: !1161)
!1191 = !DILocation(line: 368, column: 10, scope: !1150, inlinedAt: !1161)
!1192 = !DILocation(line: 369, column: 8, scope: !1150, inlinedAt: !1161)
!1193 = !DILocation(line: 372, column: 3, scope: !1136, inlinedAt: !1161)
!1194 = !DILocation(line: 377, column: 24, scope: !1154, inlinedAt: !1161)
!1195 = !DILocation(line: 0, scope: !1154, inlinedAt: !1161)
!1196 = !DILocation(line: 378, column: 13, scope: !1154, inlinedAt: !1161)
!1197 = !DILocation(line: 380, column: 17, scope: !1198, inlinedAt: !1161)
!1198 = distinct !DILexicalBlock(scope: !1199, file: !3, line: 379, column: 11)
!1199 = distinct !DILexicalBlock(scope: !1154, file: !3, line: 378, column: 13)
!1200 = !DILocation(line: 381, column: 15, scope: !1201, inlinedAt: !1161)
!1201 = distinct !DILexicalBlock(scope: !1198, file: !3, line: 380, column: 17)
!1202 = !DILocation(line: 383, column: 15, scope: !1201, inlinedAt: !1161)
!1203 = !DILocation(line: 387, column: 17, scope: !1204, inlinedAt: !1161)
!1204 = distinct !DILexicalBlock(scope: !1199, file: !3, line: 386, column: 11)
!1205 = !DILocation(line: 388, column: 15, scope: !1206, inlinedAt: !1161)
!1206 = distinct !DILexicalBlock(scope: !1204, file: !3, line: 387, column: 17)
!1207 = !DILocation(line: 390, column: 15, scope: !1206, inlinedAt: !1161)
!1208 = !DILocalVariable(name: "s", arg: 1, scope: !1209, file: !3, line: 190, type: !50)
!1209 = distinct !DISubprogram(name: "vstrtoumax", scope: !3, file: !3, line: 190, type: !1210, scopeLine: 190, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1212)
!1210 = !DISubroutineType(types: !1211)
!1211 = !{!1157, !50}
!1212 = !{!1208, !1213, !1214, !1215}
!1213 = !DILocalVariable(name: "end", scope: !1209, file: !3, line: 190, type: !37)
!1214 = !DILocalVariable(name: "val", scope: !1209, file: !3, line: 190, type: !1157)
!1215 = !DILocalVariable(name: "ch", scope: !1216, file: !3, line: 190, type: !40)
!1216 = distinct !DILexicalBlock(scope: !1217, file: !3, line: 190, column: 1)
!1217 = distinct !DILexicalBlock(scope: !1209, file: !3, line: 190, column: 1)
!1218 = !DILocation(line: 0, scope: !1209, inlinedAt: !1219)
!1219 = distinct !DILocation(line: 400, column: 25, scope: !1156, inlinedAt: !1161)
!1220 = !DILocation(line: 190, column: 1, scope: !1209, inlinedAt: !1219)
!1221 = !DILocation(line: 190, column: 1, scope: !1217, inlinedAt: !1219)
!1222 = !DILocation(line: 0, scope: !1216, inlinedAt: !1219)
!1223 = !DILocation(line: 190, column: 1, scope: !1216, inlinedAt: !1219)
!1224 = !DILocation(line: 190, column: 1, scope: !1225, inlinedAt: !1219)
!1225 = distinct !DILexicalBlock(scope: !1216, file: !3, line: 190, column: 1)
!1226 = !DILocation(line: 190, column: 1, scope: !1227, inlinedAt: !1219)
!1227 = distinct !DILexicalBlock(scope: !1217, file: !3, line: 190, column: 1)
!1228 = !{!957, !957, i64 0}
!1229 = !DILocation(line: 0, scope: !1217, inlinedAt: !1219)
!1230 = !DILocation(line: 0, scope: !1156, inlinedAt: !1161)
!1231 = !DILocation(line: 401, column: 13, scope: !1156, inlinedAt: !1161)
!1232 = !DILocation(line: 403, column: 17, scope: !1233, inlinedAt: !1161)
!1233 = distinct !DILexicalBlock(scope: !1234, file: !3, line: 402, column: 11)
!1234 = distinct !DILexicalBlock(scope: !1156, file: !3, line: 401, column: 13)
!1235 = !DILocation(line: 404, column: 15, scope: !1236, inlinedAt: !1161)
!1236 = distinct !DILexicalBlock(scope: !1233, file: !3, line: 403, column: 17)
!1237 = !DILocation(line: 406, column: 15, scope: !1236, inlinedAt: !1161)
!1238 = !DILocation(line: 410, column: 17, scope: !1239, inlinedAt: !1161)
!1239 = distinct !DILexicalBlock(scope: !1234, file: !3, line: 409, column: 11)
!1240 = !DILocation(line: 411, column: 15, scope: !1241, inlinedAt: !1161)
!1241 = distinct !DILexicalBlock(scope: !1239, file: !3, line: 410, column: 17)
!1242 = !DILocation(line: 413, column: 15, scope: !1241, inlinedAt: !1161)
!1243 = !DILocalVariable(name: "val", scope: !1244, file: !3, line: 191, type: !1159)
!1244 = distinct !DISubprogram(name: "vstrtold", scope: !3, file: !3, line: 191, type: !1245, scopeLine: 191, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1247)
!1245 = !DISubroutineType(types: !1246)
!1246 = !{!1159, !50}
!1247 = !{!1248, !1249, !1243, !1250}
!1248 = !DILocalVariable(name: "s", arg: 1, scope: !1244, file: !3, line: 191, type: !50)
!1249 = !DILocalVariable(name: "end", scope: !1244, file: !3, line: 191, type: !37)
!1250 = !DILocalVariable(name: "ch", scope: !1251, file: !3, line: 191, type: !40)
!1251 = distinct !DILexicalBlock(scope: !1252, file: !3, line: 191, column: 1)
!1252 = distinct !DILexicalBlock(scope: !1244, file: !3, line: 191, column: 1)
!1253 = !DILocation(line: 191, column: 1, scope: !1244, inlinedAt: !1254)
!1254 = distinct !DILocation(line: 427, column: 27, scope: !1134, inlinedAt: !1161)
!1255 = !DILocation(line: 0, scope: !1244, inlinedAt: !1254)
!1256 = !DILocation(line: 191, column: 1, scope: !1252, inlinedAt: !1254)
!1257 = !DILocation(line: 0, scope: !1251, inlinedAt: !1254)
!1258 = !DILocation(line: 191, column: 1, scope: !1251, inlinedAt: !1254)
!1259 = !DILocation(line: 191, column: 1, scope: !1260, inlinedAt: !1254)
!1260 = distinct !DILexicalBlock(scope: !1251, file: !3, line: 191, column: 1)
!1261 = !DILocation(line: 191, column: 1, scope: !1262, inlinedAt: !1254)
!1262 = distinct !DILexicalBlock(scope: !1252, file: !3, line: 191, column: 1)
!1263 = !DILocation(line: 0, scope: !1252, inlinedAt: !1254)
!1264 = !DILocation(line: 0, scope: !1134, inlinedAt: !1161)
!1265 = !DILocation(line: 428, column: 13, scope: !1134, inlinedAt: !1161)
!1266 = !DILocation(line: 430, column: 17, scope: !1267, inlinedAt: !1161)
!1267 = distinct !DILexicalBlock(scope: !1268, file: !3, line: 429, column: 11)
!1268 = distinct !DILexicalBlock(scope: !1134, file: !3, line: 428, column: 13)
!1269 = !DILocation(line: 431, column: 15, scope: !1270, inlinedAt: !1161)
!1270 = distinct !DILexicalBlock(scope: !1267, file: !3, line: 430, column: 17)
!1271 = !DILocation(line: 433, column: 15, scope: !1270, inlinedAt: !1161)
!1272 = !DILocation(line: 437, column: 17, scope: !1273, inlinedAt: !1161)
!1273 = distinct !DILexicalBlock(scope: !1268, file: !3, line: 436, column: 11)
!1274 = !DILocation(line: 438, column: 15, scope: !1275, inlinedAt: !1161)
!1275 = distinct !DILexicalBlock(scope: !1273, file: !3, line: 437, column: 17)
!1276 = !DILocation(line: 440, column: 15, scope: !1275, inlinedAt: !1161)
!1277 = !DILocation(line: 0, scope: !1278, inlinedAt: !1161)
!1278 = distinct !DILexicalBlock(scope: !1135, file: !3, line: 446, column: 11)
!1279 = !DILocation(line: 446, column: 11, scope: !1135, inlinedAt: !1161)
!1280 = !DILocation(line: 447, column: 9, scope: !1278, inlinedAt: !1161)
!1281 = !DILocation(line: 449, column: 9, scope: !1278, inlinedAt: !1161)
!1282 = !DILocation(line: 453, column: 11, scope: !1135, inlinedAt: !1161)
!1283 = !DILocation(line: 455, column: 15, scope: !1284, inlinedAt: !1161)
!1284 = distinct !DILexicalBlock(scope: !1285, file: !3, line: 454, column: 9)
!1285 = distinct !DILexicalBlock(scope: !1135, file: !3, line: 453, column: 11)
!1286 = !DILocation(line: 456, column: 13, scope: !1287, inlinedAt: !1161)
!1287 = distinct !DILexicalBlock(scope: !1284, file: !3, line: 455, column: 15)
!1288 = !DILocation(line: 458, column: 13, scope: !1287, inlinedAt: !1161)
!1289 = !DILocation(line: 462, column: 15, scope: !1290, inlinedAt: !1161)
!1290 = distinct !DILexicalBlock(scope: !1285, file: !3, line: 461, column: 9)
!1291 = !DILocation(line: 463, column: 13, scope: !1292, inlinedAt: !1161)
!1292 = distinct !DILexicalBlock(scope: !1290, file: !3, line: 462, column: 15)
!1293 = !DILocation(line: 465, column: 13, scope: !1292, inlinedAt: !1161)
!1294 = !DILocation(line: 470, column: 3, scope: !1136, inlinedAt: !1161)
!1295 = !DILocation(line: 636, column: 11, scope: !914, inlinedAt: !932)
!1296 = !DILocation(line: 639, column: 16, scope: !914, inlinedAt: !932)
!1297 = !DILocation(line: 639, column: 13, scope: !914, inlinedAt: !932)
!1298 = !DILocation(line: 640, column: 11, scope: !914, inlinedAt: !932)
!1299 = !DILocation(line: 0, scope: !946, inlinedAt: !1300)
!1300 = distinct !DILocation(line: 643, column: 11, scope: !914, inlinedAt: !932)
!1301 = !DILocation(line: 110, column: 10, scope: !946, inlinedAt: !1300)
!1302 = !DILocation(line: 0, scope: !917, inlinedAt: !932)
!1303 = !DILocation(line: 490, column: 24, scope: !916, inlinedAt: !932)
!1304 = distinct !{!1304, !938, !1305, !774}
!1305 = !DILocation(line: 645, column: 5, scope: !917, inlinedAt: !932)
!1306 = !DILocation(line: 647, column: 20, scope: !894, inlinedAt: !932)
!1307 = !DILocation(line: 648, column: 1, scope: !894, inlinedAt: !932)
!1308 = !DILocation(line: 705, column: 12, scope: !933)
!1309 = !DILocation(line: 707, column: 20, scope: !838)
!1310 = !DILocation(line: 707, column: 24, scope: !838)
!1311 = !DILocation(line: 706, column: 5, scope: !933)
!1312 = distinct !{!1312, !892, !1313, !774}
!1313 = !DILocation(line: 707, column: 35, scope: !838)
!1314 = !DILocation(line: 709, column: 7, scope: !838)
!1315 = !DILocation(line: 711, column: 12, scope: !1316)
!1316 = distinct !DILexicalBlock(scope: !838, file: !3, line: 709, column: 7)
!1317 = !DILocation(line: 712, column: 19, scope: !1316)
!1318 = !DILocation(line: 712, column: 12, scope: !1316)
!1319 = !DILocation(line: 710, column: 5, scope: !1316)
!1320 = !DILocation(line: 714, column: 10, scope: !838)
!1321 = !DILocation(line: 714, column: 3, scope: !838)
!1322 = !DILocation(line: 715, column: 1, scope: !838)
!1323 = !DISubprogram(name: "bindtextdomain", scope: !795, file: !795, line: 86, type: !1324, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !56)
!1324 = !DISubroutineType(types: !1325)
!1325 = !{!37, !50, !50}
!1326 = !DISubprogram(name: "textdomain", scope: !795, file: !795, line: 82, type: !1327, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !56)
!1327 = !DISubroutineType(types: !1328)
!1328 = !{!37, !50}
!1329 = !DISubprogram(name: "atexit", scope: !1330, file: !1330, line: 595, type: !1331, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !56)
!1330 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!1331 = !DISubroutineType(types: !1332)
!1332 = !{!39, !1333}
!1333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1334, size: 64)
!1334 = !DISubroutineType(types: !1335)
!1335 = !{null}
!1336 = !DISubprogram(name: "getenv", scope: !1330, file: !1330, line: 634, type: !1327, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !56)
!1337 = !DISubprogram(name: "error", scope: !1338, file: !1338, line: 52, type: !1339, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !56)
!1338 = !DIFile(filename: "./lib/error.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!1339 = !DISubroutineType(types: !1340)
!1340 = !{null, !39, !39, !50, null}
!1341 = distinct !DISubprogram(name: "print_esc", scope: !3, file: !3, line: 240, type: !1342, scopeLine: 241, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1344)
!1342 = !DISubroutineType(types: !1343)
!1343 = !{!39, !50, !46}
!1344 = !{!1345, !1346, !1347, !1348, !1349, !1350, !1356}
!1345 = !DILocalVariable(name: "escstart", arg: 1, scope: !1341, file: !3, line: 240, type: !50)
!1346 = !DILocalVariable(name: "octal_0", arg: 2, scope: !1341, file: !3, line: 240, type: !46)
!1347 = !DILocalVariable(name: "p", scope: !1341, file: !3, line: 242, type: !50)
!1348 = !DILocalVariable(name: "esc_value", scope: !1341, file: !3, line: 243, type: !39)
!1349 = !DILocalVariable(name: "esc_length", scope: !1341, file: !3, line: 244, type: !39)
!1350 = !DILocalVariable(name: "esc_char", scope: !1351, file: !3, line: 272, type: !38)
!1351 = distinct !DILexicalBlock(scope: !1352, file: !3, line: 271, column: 5)
!1352 = distinct !DILexicalBlock(scope: !1353, file: !3, line: 270, column: 12)
!1353 = distinct !DILexicalBlock(scope: !1354, file: !3, line: 268, column: 12)
!1354 = distinct !DILexicalBlock(scope: !1355, file: !3, line: 257, column: 12)
!1355 = distinct !DILexicalBlock(scope: !1341, file: !3, line: 246, column: 7)
!1356 = !DILocalVariable(name: "uni_value", scope: !1351, file: !3, line: 273, type: !7)
!1357 = !DILocation(line: 0, scope: !1341)
!1358 = !DILocation(line: 242, column: 28, scope: !1341)
!1359 = !DILocation(line: 246, column: 7, scope: !1355)
!1360 = !DILocation(line: 246, column: 10, scope: !1355)
!1361 = !DILocation(line: 246, column: 7, scope: !1341)
!1362 = !DILocation(line: 249, column: 28, scope: !1363)
!1363 = distinct !DILexicalBlock(scope: !1364, file: !3, line: 249, column: 7)
!1364 = distinct !DILexicalBlock(scope: !1355, file: !3, line: 247, column: 5)
!1365 = !DILocation(line: 250, column: 27, scope: !1366)
!1366 = distinct !DILexicalBlock(scope: !1363, file: !3, line: 249, column: 7)
!1367 = !DILocation(line: 250, column: 30, scope: !1366)
!1368 = !{!959, !959, i64 0}
!1369 = !DILocation(line: 249, column: 7, scope: !1363)
!1370 = !DILocation(line: 252, column: 38, scope: !1366)
!1371 = !DILocation(line: 251, column: 26, scope: !1366)
!1372 = !DILocation(line: 254, column: 9, scope: !1373)
!1373 = distinct !DILexicalBlock(scope: !1364, file: !3, line: 253, column: 11)
!1374 = !DILocation(line: 0, scope: !946, inlinedAt: !1375)
!1375 = distinct !DILocation(line: 255, column: 7, scope: !1364)
!1376 = !DILocation(line: 110, column: 10, scope: !946, inlinedAt: !1375)
!1377 = !DILocation(line: 257, column: 12, scope: !1354)
!1378 = !DILocation(line: 262, column: 41, scope: !1379)
!1379 = distinct !DILexicalBlock(scope: !1380, file: !3, line: 262, column: 7)
!1380 = distinct !DILexicalBlock(scope: !1354, file: !3, line: 258, column: 5)
!1381 = !DILocation(line: 262, column: 30, scope: !1379)
!1382 = !DILocation(line: 263, column: 27, scope: !1383)
!1383 = distinct !DILexicalBlock(scope: !1379, file: !3, line: 262, column: 7)
!1384 = !DILocation(line: 263, column: 30, scope: !1383)
!1385 = !DILocation(line: 265, column: 35, scope: !1383)
!1386 = !DILocation(line: 264, column: 26, scope: !1383)
!1387 = !DILocation(line: 0, scope: !1379)
!1388 = !DILocation(line: 0, scope: !946, inlinedAt: !1389)
!1389 = distinct !DILocation(line: 266, column: 7, scope: !1380)
!1390 = !DILocation(line: 110, column: 10, scope: !946, inlinedAt: !1389)
!1391 = !DILocation(line: 268, column: 12, scope: !1353)
!1392 = !DILocation(line: 268, column: 15, scope: !1353)
!1393 = !DILocation(line: 268, column: 18, scope: !1353)
!1394 = !DILocation(line: 268, column: 12, scope: !1354)
!1395 = !DILocation(line: 269, column: 23, scope: !1353)
!1396 = !DILocalVariable(name: "c", arg: 1, scope: !1397, file: !3, line: 196, type: !38)
!1397 = distinct !DISubprogram(name: "print_esc_char", scope: !3, file: !3, line: 196, type: !1398, scopeLine: 197, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1400)
!1398 = !DISubroutineType(types: !1399)
!1399 = !{null, !38}
!1400 = !{!1396}
!1401 = !DILocation(line: 0, scope: !1397, inlinedAt: !1402)
!1402 = distinct !DILocation(line: 269, column: 5, scope: !1353)
!1403 = !DILocation(line: 198, column: 3, scope: !1397, inlinedAt: !1402)
!1404 = !DILocation(line: 0, scope: !946, inlinedAt: !1405)
!1405 = distinct !DILocation(line: 201, column: 7, scope: !1406, inlinedAt: !1402)
!1406 = distinct !DILexicalBlock(scope: !1397, file: !3, line: 199, column: 5)
!1407 = !DILocation(line: 110, column: 10, scope: !946, inlinedAt: !1405)
!1408 = !DILocation(line: 0, scope: !946, inlinedAt: !1409)
!1409 = distinct !DILocation(line: 204, column: 7, scope: !1406, inlinedAt: !1402)
!1410 = !DILocation(line: 110, column: 10, scope: !946, inlinedAt: !1409)
!1411 = !DILocation(line: 207, column: 7, scope: !1406, inlinedAt: !1402)
!1412 = !DILocation(line: 0, scope: !946, inlinedAt: !1413)
!1413 = distinct !DILocation(line: 210, column: 7, scope: !1406, inlinedAt: !1402)
!1414 = !DILocation(line: 110, column: 10, scope: !946, inlinedAt: !1413)
!1415 = !DILocation(line: 0, scope: !946, inlinedAt: !1416)
!1416 = distinct !DILocation(line: 213, column: 7, scope: !1406, inlinedAt: !1402)
!1417 = !DILocation(line: 110, column: 10, scope: !946, inlinedAt: !1416)
!1418 = !DILocation(line: 0, scope: !946, inlinedAt: !1419)
!1419 = distinct !DILocation(line: 216, column: 7, scope: !1406, inlinedAt: !1402)
!1420 = !DILocation(line: 110, column: 10, scope: !946, inlinedAt: !1419)
!1421 = !DILocation(line: 0, scope: !946, inlinedAt: !1422)
!1422 = distinct !DILocation(line: 219, column: 7, scope: !1406, inlinedAt: !1402)
!1423 = !DILocation(line: 110, column: 10, scope: !946, inlinedAt: !1422)
!1424 = !DILocation(line: 0, scope: !946, inlinedAt: !1425)
!1425 = distinct !DILocation(line: 222, column: 7, scope: !1406, inlinedAt: !1402)
!1426 = !DILocation(line: 110, column: 10, scope: !946, inlinedAt: !1425)
!1427 = !DILocation(line: 0, scope: !946, inlinedAt: !1428)
!1428 = distinct !DILocation(line: 225, column: 7, scope: !1406, inlinedAt: !1402)
!1429 = !DILocation(line: 110, column: 10, scope: !946, inlinedAt: !1428)
!1430 = !DILocation(line: 0, scope: !946, inlinedAt: !1431)
!1431 = distinct !DILocation(line: 228, column: 7, scope: !1406, inlinedAt: !1402)
!1432 = !DILocation(line: 110, column: 10, scope: !946, inlinedAt: !1431)
!1433 = !DILocation(line: 270, column: 22, scope: !1352)
!1434 = !DILocation(line: 0, scope: !1351)
!1435 = !DILocation(line: 276, column: 35, scope: !1436)
!1436 = distinct !DILexicalBlock(scope: !1351, file: !3, line: 276, column: 7)
!1437 = !DILocation(line: 276, column: 26, scope: !1436)
!1438 = !DILocation(line: 276, column: 52, scope: !1436)
!1439 = !DILocation(line: 276, column: 7, scope: !1436)
!1440 = !DILocation(line: 280, column: 17, scope: !1441)
!1441 = distinct !DILexicalBlock(scope: !1442, file: !3, line: 280, column: 15)
!1442 = distinct !DILexicalBlock(scope: !1443, file: !3, line: 279, column: 9)
!1443 = distinct !DILexicalBlock(scope: !1436, file: !3, line: 276, column: 7)
!1444 = !DILocation(line: 280, column: 15, scope: !1442)
!1445 = !DILocation(line: 281, column: 13, scope: !1441)
!1446 = !DILocation(line: 282, column: 33, scope: !1442)
!1447 = !DILocation(line: 282, column: 40, scope: !1442)
!1448 = !DILocation(line: 282, column: 38, scope: !1442)
!1449 = !DILocation(line: 278, column: 12, scope: !1443)
!1450 = !DILocation(line: 278, column: 26, scope: !1443)
!1451 = !DILocation(line: 277, column: 23, scope: !1443)
!1452 = distinct !{!1452, !1439, !1453, !774}
!1453 = !DILocation(line: 283, column: 9, scope: !1436)
!1454 = !DILocation(line: 290, column: 22, scope: !1455)
!1455 = distinct !DILexicalBlock(scope: !1351, file: !3, line: 290, column: 11)
!1456 = !DILocation(line: 291, column: 12, scope: !1455)
!1457 = !DILocation(line: 292, column: 35, scope: !1455)
!1458 = !DILocation(line: 293, column: 9, scope: !1455)
!1459 = !DILocation(line: 296, column: 27, scope: !1351)
!1460 = !DILocation(line: 296, column: 7, scope: !1351)
!1461 = !DILocation(line: 297, column: 5, scope: !1351)
!1462 = !DILocation(line: 0, scope: !946, inlinedAt: !1463)
!1463 = distinct !DILocation(line: 300, column: 7, scope: !1464)
!1464 = distinct !DILexicalBlock(scope: !1352, file: !3, line: 299, column: 5)
!1465 = !DILocation(line: 110, column: 10, scope: !946, inlinedAt: !1463)
!1466 = !DILocation(line: 301, column: 11, scope: !1467)
!1467 = distinct !DILexicalBlock(scope: !1464, file: !3, line: 301, column: 11)
!1468 = !DILocation(line: 301, column: 11, scope: !1464)
!1469 = !DILocation(line: 0, scope: !946, inlinedAt: !1470)
!1470 = distinct !DILocation(line: 303, column: 11, scope: !1471)
!1471 = distinct !DILexicalBlock(scope: !1467, file: !3, line: 302, column: 9)
!1472 = !DILocation(line: 110, column: 10, scope: !946, inlinedAt: !1470)
!1473 = !DILocation(line: 303, column: 11, scope: !1471)
!1474 = !DILocation(line: 304, column: 12, scope: !1471)
!1475 = !DILocation(line: 305, column: 9, scope: !1471)
!1476 = !DILocation(line: 307, column: 12, scope: !1341)
!1477 = !DILocation(line: 307, column: 23, scope: !1341)
!1478 = !DILocation(line: 307, column: 10, scope: !1341)
!1479 = !DILocation(line: 307, column: 3, scope: !1341)
!1480 = !DILocation(line: 252, column: 31, scope: !1366)
!1481 = !DILocation(line: 252, column: 36, scope: !1366)
!1482 = !DILocation(line: 265, column: 31, scope: !1383)
!1483 = !DILocation(line: 265, column: 37, scope: !1383)
!1484 = distinct !DISubprogram(name: "vstrtoimax", scope: !3, file: !3, line: 189, type: !1485, scopeLine: 189, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1487)
!1485 = !DISubroutineType(types: !1486)
!1486 = !{!918, !50}
!1487 = !{!1488, !1489, !1490, !1491}
!1488 = !DILocalVariable(name: "s", arg: 1, scope: !1484, file: !3, line: 189, type: !50)
!1489 = !DILocalVariable(name: "end", scope: !1484, file: !3, line: 189, type: !37)
!1490 = !DILocalVariable(name: "val", scope: !1484, file: !3, line: 189, type: !918)
!1491 = !DILocalVariable(name: "ch", scope: !1492, file: !3, line: 189, type: !40)
!1492 = distinct !DILexicalBlock(scope: !1493, file: !3, line: 189, column: 1)
!1493 = distinct !DILexicalBlock(scope: !1484, file: !3, line: 189, column: 1)
!1494 = !DILocation(line: 0, scope: !1484)
!1495 = !DILocation(line: 189, column: 1, scope: !1484)
!1496 = !DILocation(line: 189, column: 1, scope: !1493)
!1497 = !DILocation(line: 0, scope: !1492)
!1498 = !DILocation(line: 189, column: 1, scope: !1492)
!1499 = !DILocation(line: 189, column: 1, scope: !1500)
!1500 = distinct !DILexicalBlock(scope: !1492, file: !3, line: 189, column: 1)
!1501 = !DILocation(line: 189, column: 1, scope: !1502)
!1502 = distinct !DILexicalBlock(scope: !1493, file: !3, line: 189, column: 1)
!1503 = !DILocation(line: 0, scope: !1493)
!1504 = !DISubprogram(name: "strtoumax", scope: !1505, file: !1505, line: 301, type: !1506, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !56)
!1505 = !DIFile(filename: "/usr/include/inttypes.h", directory: "")
!1506 = !DISubroutineType(types: !1507)
!1507 = !{!90, !50, !149, !39}
!1508 = distinct !DISubprogram(name: "verify_numeric", scope: !3, file: !3, line: 145, type: !1509, scopeLine: 146, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1511)
!1509 = !DISubroutineType(types: !1510)
!1510 = !{null, !50, !50}
!1511 = !{!1512, !1513}
!1512 = !DILocalVariable(name: "s", arg: 1, scope: !1508, file: !3, line: 145, type: !50)
!1513 = !DILocalVariable(name: "end", arg: 2, scope: !1508, file: !3, line: 145, type: !50)
!1514 = !DILocation(line: 0, scope: !1508)
!1515 = !DILocation(line: 147, column: 7, scope: !1516)
!1516 = distinct !DILexicalBlock(scope: !1508, file: !3, line: 147, column: 7)
!1517 = !DILocation(line: 147, column: 7, scope: !1508)
!1518 = !DILocation(line: 149, column: 30, scope: !1519)
!1519 = distinct !DILexicalBlock(scope: !1516, file: !3, line: 148, column: 5)
!1520 = !DILocation(line: 149, column: 7, scope: !1519)
!1521 = !DILocation(line: 151, column: 5, scope: !1519)
!1522 = !DILocation(line: 152, column: 12, scope: !1523)
!1523 = distinct !DILexicalBlock(scope: !1516, file: !3, line: 152, column: 12)
!1524 = !DILocation(line: 152, column: 12, scope: !1516)
!1525 = !DILocation(line: 154, column: 13, scope: !1526)
!1526 = distinct !DILexicalBlock(scope: !1527, file: !3, line: 154, column: 11)
!1527 = distinct !DILexicalBlock(scope: !1523, file: !3, line: 153, column: 5)
!1528 = !DILocation(line: 154, column: 11, scope: !1527)
!1529 = !DILocation(line: 0, scope: !1526)
!1530 = !DILocation(line: 159, column: 5, scope: !1527)
!1531 = !DILocation(line: 0, scope: !1516)
!1532 = !DILocation(line: 160, column: 1, scope: !1508)
!1533 = !DISubprogram(name: "strtoimax", scope: !1505, file: !1505, line: 297, type: !1534, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !56)
!1534 = !DISubroutineType(types: !1535)
!1535 = !{!137, !50, !149, !39}
!1536 = distinct !DISubprogram(name: "cl_strtold", scope: !1537, file: !1537, line: 59, type: !1538, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !272, retainedNodes: !1541)
!1537 = !DIFile(filename: "./lib/cl-strtod.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!1538 = !DISubroutineType(types: !1539)
!1539 = !{!1159, !50, !1540}
!1540 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !149)
!1541 = !{!1542, !1543, !1544, !1545, !1546, !1549, !1550}
!1542 = !DILocalVariable(name: "nptr", arg: 1, scope: !1536, file: !1537, line: 59, type: !50)
!1543 = !DILocalVariable(name: "endptr", arg: 2, scope: !1536, file: !1537, line: 59, type: !1540)
!1544 = !DILocalVariable(name: "end", scope: !1536, file: !1537, line: 61, type: !37)
!1545 = !DILocalVariable(name: "d", scope: !1536, file: !1537, line: 62, type: !1159)
!1546 = !DILocalVariable(name: "strtod_errno", scope: !1547, file: !1537, line: 65, type: !39)
!1547 = distinct !DILexicalBlock(scope: !1548, file: !1537, line: 64, column: 5)
!1548 = distinct !DILexicalBlock(scope: !1536, file: !1537, line: 63, column: 7)
!1549 = !DILocalVariable(name: "c_end", scope: !1547, file: !1537, line: 66, type: !37)
!1550 = !DILocalVariable(name: "c", scope: !1547, file: !1537, line: 67, type: !1159)
!1551 = !DILocation(line: 62, column: 10, scope: !1536)
!1552 = !DILocation(line: 67, column: 14, scope: !1547)
!1553 = !DILocation(line: 0, scope: !1536)
!1554 = !DILocation(line: 61, column: 3, scope: !1536)
!1555 = !DILocation(line: 62, column: 14, scope: !1536)
!1556 = !DILocation(line: 63, column: 8, scope: !1548)
!1557 = !DILocation(line: 63, column: 7, scope: !1548)
!1558 = !DILocation(line: 63, column: 7, scope: !1536)
!1559 = !DILocation(line: 65, column: 26, scope: !1547)
!1560 = !DILocation(line: 0, scope: !1547)
!1561 = !DILocation(line: 66, column: 7, scope: !1547)
!1562 = !DILocation(line: 67, column: 18, scope: !1547)
!1563 = !DILocation(line: 68, column: 17, scope: !1564)
!1564 = distinct !DILexicalBlock(scope: !1547, file: !1537, line: 68, column: 11)
!1565 = !DILocation(line: 68, column: 15, scope: !1564)
!1566 = !DILocation(line: 68, column: 11, scope: !1547)
!1567 = !DILocation(line: 71, column: 15, scope: !1564)
!1568 = !DILocation(line: 72, column: 5, scope: !1548)
!1569 = !DILocation(line: 72, column: 5, scope: !1547)
!1570 = !DILocation(line: 73, column: 7, scope: !1571)
!1571 = distinct !DILexicalBlock(scope: !1536, file: !1537, line: 73, column: 7)
!1572 = !DILocation(line: 73, column: 7, scope: !1536)
!1573 = !DILocation(line: 74, column: 13, scope: !1571)
!1574 = !DILocation(line: 74, column: 5, scope: !1571)
!1575 = !DILocation(line: 76, column: 1, scope: !1536)
!1576 = !DILocation(line: 75, column: 3, scope: !1536)
!1577 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !61, file: !61, line: 51, type: !744, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !60, retainedNodes: !1578)
!1578 = !{!1579}
!1579 = !DILocalVariable(name: "file", arg: 1, scope: !1577, file: !61, line: 51, type: !50)
!1580 = !DILocation(line: 0, scope: !1577)
!1581 = !DILocation(line: 53, column: 13, scope: !1577)
!1582 = !DILocation(line: 54, column: 1, scope: !1577)
!1583 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !61, file: !61, line: 88, type: !1584, scopeLine: 89, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !60, retainedNodes: !1586)
!1584 = !DISubroutineType(types: !1585)
!1585 = !{null, !46}
!1586 = !{!1587}
!1587 = !DILocalVariable(name: "ignore", arg: 1, scope: !1583, file: !61, line: 88, type: !46)
!1588 = !DILocation(line: 0, scope: !1583)
!1589 = !DILocation(line: 90, column: 16, scope: !1583)
!1590 = !DILocation(line: 91, column: 1, scope: !1583)
!1591 = distinct !DISubprogram(name: "close_stdout", scope: !61, file: !61, line: 117, type: !1334, scopeLine: 118, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !60, retainedNodes: !1592)
!1592 = !{!1593}
!1593 = !DILocalVariable(name: "write_error", scope: !1594, file: !61, line: 122, type: !50)
!1594 = distinct !DILexicalBlock(scope: !1595, file: !61, line: 121, column: 5)
!1595 = distinct !DILexicalBlock(scope: !1591, file: !61, line: 119, column: 7)
!1596 = !DILocation(line: 119, column: 21, scope: !1595)
!1597 = !DILocation(line: 119, column: 7, scope: !1595)
!1598 = !DILocation(line: 119, column: 29, scope: !1595)
!1599 = !DILocation(line: 120, column: 7, scope: !1595)
!1600 = !DILocation(line: 120, column: 12, scope: !1595)
!1601 = !{i8 0, i8 2}
!1602 = !DILocation(line: 120, column: 25, scope: !1595)
!1603 = !DILocation(line: 120, column: 28, scope: !1595)
!1604 = !DILocation(line: 120, column: 34, scope: !1595)
!1605 = !DILocation(line: 119, column: 7, scope: !1591)
!1606 = !DILocation(line: 122, column: 33, scope: !1594)
!1607 = !DILocation(line: 0, scope: !1594)
!1608 = !DILocation(line: 123, column: 11, scope: !1609)
!1609 = distinct !DILexicalBlock(scope: !1594, file: !61, line: 123, column: 11)
!1610 = !DILocation(line: 0, scope: !1609)
!1611 = !DILocation(line: 123, column: 11, scope: !1594)
!1612 = !DILocation(line: 124, column: 36, scope: !1609)
!1613 = !DILocation(line: 124, column: 9, scope: !1609)
!1614 = !DILocation(line: 127, column: 9, scope: !1609)
!1615 = !DILocation(line: 129, column: 14, scope: !1594)
!1616 = !DILocation(line: 129, column: 7, scope: !1594)
!1617 = !DILocation(line: 134, column: 42, scope: !1618)
!1618 = distinct !DILexicalBlock(scope: !1591, file: !61, line: 134, column: 7)
!1619 = !DILocation(line: 134, column: 28, scope: !1618)
!1620 = !DILocation(line: 134, column: 50, scope: !1618)
!1621 = !DILocation(line: 134, column: 7, scope: !1591)
!1622 = !DILocation(line: 135, column: 12, scope: !1618)
!1623 = !DILocation(line: 135, column: 5, scope: !1618)
!1624 = !DILocation(line: 136, column: 1, scope: !1591)
!1625 = distinct !DISubprogram(name: "set_program_name", scope: !74, file: !74, line: 39, type: !744, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !73, retainedNodes: !1626)
!1626 = !{!1627, !1628, !1629}
!1627 = !DILocalVariable(name: "argv0", arg: 1, scope: !1625, file: !74, line: 39, type: !50)
!1628 = !DILocalVariable(name: "slash", scope: !1625, file: !74, line: 46, type: !50)
!1629 = !DILocalVariable(name: "base", scope: !1625, file: !74, line: 47, type: !50)
!1630 = !DILocation(line: 0, scope: !1625)
!1631 = !DILocation(line: 51, column: 13, scope: !1632)
!1632 = distinct !DILexicalBlock(scope: !1625, file: !74, line: 51, column: 7)
!1633 = !DILocation(line: 51, column: 7, scope: !1625)
!1634 = !DILocation(line: 55, column: 14, scope: !1635)
!1635 = distinct !DILexicalBlock(scope: !1632, file: !74, line: 52, column: 5)
!1636 = !DILocation(line: 54, column: 7, scope: !1635)
!1637 = !DILocation(line: 56, column: 7, scope: !1635)
!1638 = !DILocation(line: 59, column: 11, scope: !1625)
!1639 = !DILocation(line: 60, column: 17, scope: !1625)
!1640 = !DILocation(line: 60, column: 11, scope: !1625)
!1641 = !DILocation(line: 61, column: 12, scope: !1642)
!1642 = distinct !DILexicalBlock(scope: !1625, file: !74, line: 61, column: 7)
!1643 = !DILocation(line: 61, column: 20, scope: !1642)
!1644 = !DILocation(line: 61, column: 25, scope: !1642)
!1645 = !DILocation(line: 61, column: 42, scope: !1642)
!1646 = !DILocation(line: 61, column: 28, scope: !1642)
!1647 = !DILocation(line: 61, column: 61, scope: !1642)
!1648 = !DILocation(line: 61, column: 7, scope: !1625)
!1649 = !DILocation(line: 64, column: 11, scope: !1650)
!1650 = distinct !DILexicalBlock(scope: !1651, file: !74, line: 64, column: 11)
!1651 = distinct !DILexicalBlock(scope: !1642, file: !74, line: 62, column: 5)
!1652 = !DILocation(line: 64, column: 36, scope: !1650)
!1653 = !DILocation(line: 64, column: 11, scope: !1651)
!1654 = !DILocation(line: 66, column: 24, scope: !1655)
!1655 = distinct !DILexicalBlock(scope: !1650, file: !74, line: 65, column: 9)
!1656 = !DILocation(line: 70, column: 41, scope: !1655)
!1657 = !DILocation(line: 72, column: 9, scope: !1655)
!1658 = !DILocation(line: 84, column: 16, scope: !1625)
!1659 = !DILocation(line: 90, column: 27, scope: !1625)
!1660 = !DILocation(line: 92, column: 1, scope: !1625)
!1661 = distinct !DISubprogram(name: "clone_quoting_options", scope: !80, file: !80, line: 122, type: !1662, scopeLine: 123, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !79, retainedNodes: !1665)
!1662 = !DISubroutineType(types: !1663)
!1663 = !{!1664, !1664}
!1664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100, size: 64)
!1665 = !{!1666, !1667, !1668}
!1666 = !DILocalVariable(name: "o", arg: 1, scope: !1661, file: !80, line: 122, type: !1664)
!1667 = !DILocalVariable(name: "e", scope: !1661, file: !80, line: 124, type: !39)
!1668 = !DILocalVariable(name: "p", scope: !1661, file: !80, line: 125, type: !1664)
!1669 = !DILocation(line: 0, scope: !1661)
!1670 = !DILocation(line: 124, column: 11, scope: !1661)
!1671 = !DILocation(line: 125, column: 40, scope: !1661)
!1672 = !DILocation(line: 125, column: 31, scope: !1661)
!1673 = !DILocation(line: 127, column: 9, scope: !1661)
!1674 = !DILocation(line: 128, column: 3, scope: !1661)
!1675 = distinct !DISubprogram(name: "get_quoting_style", scope: !80, file: !80, line: 133, type: !1676, scopeLine: 134, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !79, retainedNodes: !1680)
!1676 = !DISubroutineType(types: !1677)
!1677 = !{!5, !1678}
!1678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1679, size: 64)
!1679 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !100)
!1680 = !{!1681}
!1681 = !DILocalVariable(name: "o", arg: 1, scope: !1675, file: !80, line: 133, type: !1678)
!1682 = !DILocation(line: 0, scope: !1675)
!1683 = !DILocation(line: 135, column: 11, scope: !1675)
!1684 = !DILocation(line: 135, column: 46, scope: !1675)
!1685 = !{!1686, !729, i64 0}
!1686 = !{!"quoting_options", !729, i64 0, !957, i64 4, !729, i64 8, !728, i64 40, !728, i64 48}
!1687 = !DILocation(line: 135, column: 3, scope: !1675)
!1688 = distinct !DISubprogram(name: "set_quoting_style", scope: !80, file: !80, line: 141, type: !1689, scopeLine: 142, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !79, retainedNodes: !1691)
!1689 = !DISubroutineType(types: !1690)
!1690 = !{null, !1664, !5}
!1691 = !{!1692, !1693}
!1692 = !DILocalVariable(name: "o", arg: 1, scope: !1688, file: !80, line: 141, type: !1664)
!1693 = !DILocalVariable(name: "s", arg: 2, scope: !1688, file: !80, line: 141, type: !5)
!1694 = !DILocation(line: 0, scope: !1688)
!1695 = !DILocation(line: 143, column: 4, scope: !1688)
!1696 = !DILocation(line: 143, column: 39, scope: !1688)
!1697 = !DILocation(line: 143, column: 45, scope: !1688)
!1698 = !DILocation(line: 144, column: 1, scope: !1688)
!1699 = distinct !DISubprogram(name: "set_char_quoting", scope: !80, file: !80, line: 152, type: !1700, scopeLine: 153, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !79, retainedNodes: !1702)
!1700 = !DISubroutineType(types: !1701)
!1701 = !{!39, !1664, !38, !39}
!1702 = !{!1703, !1704, !1705, !1706, !1707, !1709, !1710}
!1703 = !DILocalVariable(name: "o", arg: 1, scope: !1699, file: !80, line: 152, type: !1664)
!1704 = !DILocalVariable(name: "c", arg: 2, scope: !1699, file: !80, line: 152, type: !38)
!1705 = !DILocalVariable(name: "i", arg: 3, scope: !1699, file: !80, line: 152, type: !39)
!1706 = !DILocalVariable(name: "uc", scope: !1699, file: !80, line: 154, type: !40)
!1707 = !DILocalVariable(name: "p", scope: !1699, file: !80, line: 155, type: !1708)
!1708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!1709 = !DILocalVariable(name: "shift", scope: !1699, file: !80, line: 157, type: !39)
!1710 = !DILocalVariable(name: "r", scope: !1699, file: !80, line: 158, type: !39)
!1711 = !DILocation(line: 0, scope: !1699)
!1712 = !DILocation(line: 156, column: 6, scope: !1699)
!1713 = !DILocation(line: 156, column: 62, scope: !1699)
!1714 = !DILocation(line: 156, column: 57, scope: !1699)
!1715 = !DILocation(line: 157, column: 15, scope: !1699)
!1716 = !DILocation(line: 158, column: 12, scope: !1699)
!1717 = !DILocation(line: 158, column: 15, scope: !1699)
!1718 = !DILocation(line: 158, column: 25, scope: !1699)
!1719 = !DILocation(line: 159, column: 13, scope: !1699)
!1720 = !DILocation(line: 159, column: 18, scope: !1699)
!1721 = !DILocation(line: 159, column: 23, scope: !1699)
!1722 = !DILocation(line: 159, column: 6, scope: !1699)
!1723 = !DILocation(line: 160, column: 3, scope: !1699)
!1724 = distinct !DISubprogram(name: "set_quoting_flags", scope: !80, file: !80, line: 168, type: !1725, scopeLine: 169, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !79, retainedNodes: !1727)
!1725 = !DISubroutineType(types: !1726)
!1726 = !{!39, !1664, !39}
!1727 = !{!1728, !1729, !1730}
!1728 = !DILocalVariable(name: "o", arg: 1, scope: !1724, file: !80, line: 168, type: !1664)
!1729 = !DILocalVariable(name: "i", arg: 2, scope: !1724, file: !80, line: 168, type: !39)
!1730 = !DILocalVariable(name: "r", scope: !1724, file: !80, line: 170, type: !39)
!1731 = !DILocation(line: 0, scope: !1724)
!1732 = !DILocation(line: 171, column: 8, scope: !1733)
!1733 = distinct !DILexicalBlock(scope: !1724, file: !80, line: 171, column: 7)
!1734 = !DILocation(line: 171, column: 7, scope: !1724)
!1735 = !DILocation(line: 173, column: 10, scope: !1724)
!1736 = !{!1686, !957, i64 4}
!1737 = !DILocation(line: 174, column: 12, scope: !1724)
!1738 = !DILocation(line: 175, column: 3, scope: !1724)
!1739 = distinct !DISubprogram(name: "set_custom_quoting", scope: !80, file: !80, line: 179, type: !1740, scopeLine: 181, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !79, retainedNodes: !1742)
!1740 = !DISubroutineType(types: !1741)
!1741 = !{null, !1664, !50, !50}
!1742 = !{!1743, !1744, !1745}
!1743 = !DILocalVariable(name: "o", arg: 1, scope: !1739, file: !80, line: 179, type: !1664)
!1744 = !DILocalVariable(name: "left_quote", arg: 2, scope: !1739, file: !80, line: 180, type: !50)
!1745 = !DILocalVariable(name: "right_quote", arg: 3, scope: !1739, file: !80, line: 180, type: !50)
!1746 = !DILocation(line: 0, scope: !1739)
!1747 = !DILocation(line: 182, column: 8, scope: !1748)
!1748 = distinct !DILexicalBlock(scope: !1739, file: !80, line: 182, column: 7)
!1749 = !DILocation(line: 182, column: 7, scope: !1739)
!1750 = !DILocation(line: 184, column: 6, scope: !1739)
!1751 = !DILocation(line: 184, column: 12, scope: !1739)
!1752 = !DILocation(line: 185, column: 8, scope: !1753)
!1753 = distinct !DILexicalBlock(scope: !1739, file: !80, line: 185, column: 7)
!1754 = !DILocation(line: 185, column: 19, scope: !1753)
!1755 = !DILocation(line: 186, column: 5, scope: !1753)
!1756 = !DILocation(line: 187, column: 6, scope: !1739)
!1757 = !DILocation(line: 187, column: 17, scope: !1739)
!1758 = !{!1686, !728, i64 40}
!1759 = !DILocation(line: 188, column: 6, scope: !1739)
!1760 = !DILocation(line: 188, column: 18, scope: !1739)
!1761 = !{!1686, !728, i64 48}
!1762 = !DILocation(line: 189, column: 1, scope: !1739)
!1763 = distinct !DISubprogram(name: "quotearg_buffer", scope: !80, file: !80, line: 784, type: !1764, scopeLine: 787, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !79, retainedNodes: !1766)
!1764 = !DISubroutineType(types: !1765)
!1765 = !{!88, !37, !88, !50, !88, !1678}
!1766 = !{!1767, !1768, !1769, !1770, !1771, !1772, !1773, !1774}
!1767 = !DILocalVariable(name: "buffer", arg: 1, scope: !1763, file: !80, line: 784, type: !37)
!1768 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1763, file: !80, line: 784, type: !88)
!1769 = !DILocalVariable(name: "arg", arg: 3, scope: !1763, file: !80, line: 785, type: !50)
!1770 = !DILocalVariable(name: "argsize", arg: 4, scope: !1763, file: !80, line: 785, type: !88)
!1771 = !DILocalVariable(name: "o", arg: 5, scope: !1763, file: !80, line: 786, type: !1678)
!1772 = !DILocalVariable(name: "p", scope: !1763, file: !80, line: 788, type: !1678)
!1773 = !DILocalVariable(name: "e", scope: !1763, file: !80, line: 789, type: !39)
!1774 = !DILocalVariable(name: "r", scope: !1763, file: !80, line: 790, type: !88)
!1775 = !DILocation(line: 0, scope: !1763)
!1776 = !DILocation(line: 788, column: 37, scope: !1763)
!1777 = !DILocation(line: 789, column: 11, scope: !1763)
!1778 = !DILocation(line: 791, column: 43, scope: !1763)
!1779 = !DILocation(line: 791, column: 53, scope: !1763)
!1780 = !DILocation(line: 791, column: 60, scope: !1763)
!1781 = !DILocation(line: 792, column: 43, scope: !1763)
!1782 = !DILocation(line: 792, column: 58, scope: !1763)
!1783 = !DILocation(line: 790, column: 14, scope: !1763)
!1784 = !DILocation(line: 793, column: 9, scope: !1763)
!1785 = !DILocation(line: 794, column: 3, scope: !1763)
!1786 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !80, file: !80, line: 256, type: !1787, scopeLine: 262, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !79, retainedNodes: !1791)
!1787 = !DISubroutineType(types: !1788)
!1788 = !{!88, !37, !88, !50, !88, !5, !39, !1789, !50, !50}
!1789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1790, size: 64)
!1790 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!1791 = !{!1792, !1793, !1794, !1795, !1796, !1797, !1798, !1799, !1800, !1801, !1802, !1803, !1804, !1805, !1806, !1807, !1808, !1809, !1810, !1811, !1812, !1816, !1817, !1818, !1819, !1820, !1823, !1824, !1842, !1845, !1846, !1853, !1856, !1857, !1858, !1859, !1860, !1861}
!1792 = !DILocalVariable(name: "buffer", arg: 1, scope: !1786, file: !80, line: 256, type: !37)
!1793 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1786, file: !80, line: 256, type: !88)
!1794 = !DILocalVariable(name: "arg", arg: 3, scope: !1786, file: !80, line: 257, type: !50)
!1795 = !DILocalVariable(name: "argsize", arg: 4, scope: !1786, file: !80, line: 257, type: !88)
!1796 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !1786, file: !80, line: 258, type: !5)
!1797 = !DILocalVariable(name: "flags", arg: 6, scope: !1786, file: !80, line: 258, type: !39)
!1798 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !1786, file: !80, line: 259, type: !1789)
!1799 = !DILocalVariable(name: "left_quote", arg: 8, scope: !1786, file: !80, line: 260, type: !50)
!1800 = !DILocalVariable(name: "right_quote", arg: 9, scope: !1786, file: !80, line: 261, type: !50)
!1801 = !DILocalVariable(name: "i", scope: !1786, file: !80, line: 263, type: !88)
!1802 = !DILocalVariable(name: "len", scope: !1786, file: !80, line: 264, type: !88)
!1803 = !DILocalVariable(name: "orig_buffersize", scope: !1786, file: !80, line: 265, type: !88)
!1804 = !DILocalVariable(name: "quote_string", scope: !1786, file: !80, line: 266, type: !50)
!1805 = !DILocalVariable(name: "quote_string_len", scope: !1786, file: !80, line: 267, type: !88)
!1806 = !DILocalVariable(name: "backslash_escapes", scope: !1786, file: !80, line: 268, type: !46)
!1807 = !DILocalVariable(name: "unibyte_locale", scope: !1786, file: !80, line: 269, type: !46)
!1808 = !DILocalVariable(name: "elide_outer_quotes", scope: !1786, file: !80, line: 270, type: !46)
!1809 = !DILocalVariable(name: "pending_shell_escape_end", scope: !1786, file: !80, line: 271, type: !46)
!1810 = !DILocalVariable(name: "encountered_single_quote", scope: !1786, file: !80, line: 272, type: !46)
!1811 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !1786, file: !80, line: 273, type: !46)
!1812 = !DILocalVariable(name: "c", scope: !1813, file: !80, line: 402, type: !40)
!1813 = distinct !DILexicalBlock(scope: !1814, file: !80, line: 401, column: 5)
!1814 = distinct !DILexicalBlock(scope: !1815, file: !80, line: 400, column: 3)
!1815 = distinct !DILexicalBlock(scope: !1786, file: !80, line: 400, column: 3)
!1816 = !DILocalVariable(name: "esc", scope: !1813, file: !80, line: 403, type: !40)
!1817 = !DILocalVariable(name: "is_right_quote", scope: !1813, file: !80, line: 404, type: !46)
!1818 = !DILocalVariable(name: "escaping", scope: !1813, file: !80, line: 405, type: !46)
!1819 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !1813, file: !80, line: 406, type: !46)
!1820 = !DILocalVariable(name: "m", scope: !1821, file: !80, line: 610, type: !88)
!1821 = distinct !DILexicalBlock(scope: !1822, file: !80, line: 608, column: 11)
!1822 = distinct !DILexicalBlock(scope: !1813, file: !80, line: 426, column: 9)
!1823 = !DILocalVariable(name: "printable", scope: !1821, file: !80, line: 612, type: !46)
!1824 = !DILocalVariable(name: "mbstate", scope: !1825, file: !80, line: 621, type: !1827)
!1825 = distinct !DILexicalBlock(scope: !1826, file: !80, line: 620, column: 15)
!1826 = distinct !DILexicalBlock(scope: !1821, file: !80, line: 614, column: 17)
!1827 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1828, line: 6, baseType: !1829)
!1828 = !DIFile(filename: "/usr/include/bits/types/mbstate_t.h", directory: "")
!1829 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1830, line: 21, baseType: !1831)
!1830 = !DIFile(filename: "/usr/include/bits/types/__mbstate_t.h", directory: "")
!1831 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1830, line: 13, size: 64, elements: !1832)
!1832 = !{!1833, !1834}
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1831, file: !1830, line: 15, baseType: !39, size: 32)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !1831, file: !1830, line: 20, baseType: !1835, size: 32, offset: 32)
!1835 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1831, file: !1830, line: 16, size: 32, elements: !1836)
!1836 = !{!1837, !1838}
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !1835, file: !1830, line: 18, baseType: !7, size: 32)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !1835, file: !1830, line: 19, baseType: !1839, size: 32)
!1839 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 32, elements: !1840)
!1840 = !{!1841}
!1841 = !DISubrange(count: 4)
!1842 = !DILocalVariable(name: "w", scope: !1843, file: !80, line: 631, type: !1844)
!1843 = distinct !DILexicalBlock(scope: !1825, file: !80, line: 630, column: 19)
!1844 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !89, line: 74, baseType: !39)
!1845 = !DILocalVariable(name: "bytes", scope: !1843, file: !80, line: 632, type: !88)
!1846 = !DILocalVariable(name: "j", scope: !1847, file: !80, line: 657, type: !88)
!1847 = distinct !DILexicalBlock(scope: !1848, file: !80, line: 656, column: 27)
!1848 = distinct !DILexicalBlock(scope: !1849, file: !80, line: 654, column: 29)
!1849 = distinct !DILexicalBlock(scope: !1850, file: !80, line: 649, column: 23)
!1850 = distinct !DILexicalBlock(scope: !1851, file: !80, line: 641, column: 30)
!1851 = distinct !DILexicalBlock(scope: !1852, file: !80, line: 636, column: 30)
!1852 = distinct !DILexicalBlock(scope: !1843, file: !80, line: 634, column: 25)
!1853 = !DILocalVariable(name: "ilim", scope: !1854, file: !80, line: 684, type: !88)
!1854 = distinct !DILexicalBlock(scope: !1855, file: !80, line: 681, column: 15)
!1855 = distinct !DILexicalBlock(scope: !1821, file: !80, line: 680, column: 17)
!1856 = !DILabel(scope: !1786, name: "process_input", file: !80, line: 314)
!1857 = !DILabel(scope: !1822, name: "c_and_shell_escape", file: !80, line: 512)
!1858 = !DILabel(scope: !1822, name: "c_escape", file: !80, line: 517)
!1859 = !DILabel(scope: !1813, name: "store_escape", file: !80, line: 719)
!1860 = !DILabel(scope: !1813, name: "store_c", file: !80, line: 722)
!1861 = !DILabel(scope: !1786, name: "force_outer_quoting_style", file: !80, line: 763)
!1862 = !DILocation(line: 0, scope: !1786)
!1863 = !DILocation(line: 269, column: 25, scope: !1786)
!1864 = !DILocation(line: 269, column: 36, scope: !1786)
!1865 = !DILocation(line: 270, column: 8, scope: !1786)
!1866 = !DILocation(line: 273, column: 3, scope: !1786)
!1867 = !DILocation(line: 265, column: 10, scope: !1786)
!1868 = !DILocation(line: 266, column: 15, scope: !1786)
!1869 = !DILocation(line: 267, column: 10, scope: !1786)
!1870 = !DILocation(line: 268, column: 8, scope: !1786)
!1871 = !DILocation(line: 271, column: 8, scope: !1786)
!1872 = !DILocation(line: 272, column: 8, scope: !1786)
!1873 = !DILocation(line: 273, column: 8, scope: !1786)
!1874 = !DILocation(line: 314, column: 2, scope: !1786)
!1875 = !DILocation(line: 316, column: 3, scope: !1786)
!1876 = !DILocation(line: 323, column: 11, scope: !1877)
!1877 = distinct !DILexicalBlock(scope: !1786, file: !80, line: 317, column: 5)
!1878 = !DILocation(line: 323, column: 12, scope: !1879)
!1879 = distinct !DILexicalBlock(scope: !1877, file: !80, line: 323, column: 11)
!1880 = !DILocation(line: 324, column: 9, scope: !1881)
!1881 = distinct !DILexicalBlock(scope: !1882, file: !80, line: 324, column: 9)
!1882 = distinct !DILexicalBlock(scope: !1879, file: !80, line: 324, column: 9)
!1883 = !DILocation(line: 324, column: 9, scope: !1882)
!1884 = !DILocation(line: 362, column: 26, scope: !1885)
!1885 = distinct !DILexicalBlock(scope: !1886, file: !80, line: 340, column: 11)
!1886 = distinct !DILexicalBlock(scope: !1887, file: !80, line: 339, column: 13)
!1887 = distinct !DILexicalBlock(scope: !1877, file: !80, line: 338, column: 7)
!1888 = !DILocation(line: 363, column: 27, scope: !1885)
!1889 = !DILocation(line: 364, column: 11, scope: !1885)
!1890 = !DILocation(line: 365, column: 14, scope: !1891)
!1891 = distinct !DILexicalBlock(scope: !1887, file: !80, line: 365, column: 13)
!1892 = !DILocation(line: 365, column: 13, scope: !1887)
!1893 = !DILocation(line: 366, column: 43, scope: !1894)
!1894 = distinct !DILexicalBlock(scope: !1895, file: !80, line: 366, column: 11)
!1895 = distinct !DILexicalBlock(scope: !1891, file: !80, line: 366, column: 11)
!1896 = !DILocation(line: 366, column: 11, scope: !1895)
!1897 = !DILocation(line: 367, column: 13, scope: !1898)
!1898 = distinct !DILexicalBlock(scope: !1899, file: !80, line: 367, column: 13)
!1899 = distinct !DILexicalBlock(scope: !1894, file: !80, line: 367, column: 13)
!1900 = !DILocation(line: 367, column: 13, scope: !1899)
!1901 = !DILocation(line: 366, column: 70, scope: !1894)
!1902 = distinct !{!1902, !1896, !1903, !774}
!1903 = !DILocation(line: 367, column: 13, scope: !1895)
!1904 = !DILocation(line: 264, column: 10, scope: !1786)
!1905 = !DILocation(line: 370, column: 28, scope: !1887)
!1906 = !DILocation(line: 372, column: 7, scope: !1877)
!1907 = !DILocation(line: 376, column: 7, scope: !1877)
!1908 = !DILocation(line: 379, column: 7, scope: !1877)
!1909 = !DILocation(line: 381, column: 12, scope: !1910)
!1910 = distinct !DILexicalBlock(scope: !1877, file: !80, line: 381, column: 11)
!1911 = !DILocation(line: 381, column: 11, scope: !1877)
!1912 = !DILocation(line: 386, column: 12, scope: !1913)
!1913 = distinct !DILexicalBlock(scope: !1877, file: !80, line: 386, column: 11)
!1914 = !DILocation(line: 386, column: 11, scope: !1877)
!1915 = !DILocation(line: 387, column: 9, scope: !1916)
!1916 = distinct !DILexicalBlock(scope: !1917, file: !80, line: 387, column: 9)
!1917 = distinct !DILexicalBlock(scope: !1913, file: !80, line: 387, column: 9)
!1918 = !DILocation(line: 387, column: 9, scope: !1917)
!1919 = !DILocation(line: 394, column: 7, scope: !1877)
!1920 = !DILocation(line: 397, column: 7, scope: !1877)
!1921 = !DILocation(line: 400, column: 8, scope: !1815)
!1922 = !DILocation(line: 0, scope: !1815)
!1923 = !DILocation(line: 400, column: 27, scope: !1814)
!1924 = !DILocation(line: 400, column: 19, scope: !1814)
!1925 = !DILocation(line: 400, column: 41, scope: !1814)
!1926 = !DILocation(line: 400, column: 48, scope: !1814)
!1927 = !DILocation(line: 400, column: 3, scope: !1815)
!1928 = !DILocation(line: 400, column: 60, scope: !1814)
!1929 = !DILocation(line: 0, scope: !1813)
!1930 = !DILocation(line: 409, column: 11, scope: !1931)
!1931 = distinct !DILexicalBlock(scope: !1813, file: !80, line: 408, column: 11)
!1932 = !DILocation(line: 411, column: 17, scope: !1931)
!1933 = !DILocation(line: 412, column: 39, scope: !1931)
!1934 = !DILocation(line: 416, column: 32, scope: !1931)
!1935 = !DILocation(line: 412, column: 19, scope: !1931)
!1936 = !DILocation(line: 412, column: 15, scope: !1931)
!1937 = !DILocation(line: 417, column: 11, scope: !1931)
!1938 = !DILocation(line: 417, column: 26, scope: !1931)
!1939 = !DILocation(line: 417, column: 14, scope: !1931)
!1940 = !DILocation(line: 417, column: 63, scope: !1931)
!1941 = !DILocation(line: 408, column: 11, scope: !1813)
!1942 = !DILocation(line: 424, column: 11, scope: !1813)
!1943 = !DILocation(line: 425, column: 7, scope: !1813)
!1944 = !DILocation(line: 428, column: 15, scope: !1822)
!1945 = !DILocation(line: 430, column: 15, scope: !1946)
!1946 = distinct !DILexicalBlock(scope: !1947, file: !80, line: 430, column: 15)
!1947 = distinct !DILexicalBlock(scope: !1948, file: !80, line: 429, column: 13)
!1948 = distinct !DILexicalBlock(scope: !1822, file: !80, line: 428, column: 15)
!1949 = !DILocation(line: 430, column: 15, scope: !1950)
!1950 = distinct !DILexicalBlock(scope: !1946, file: !80, line: 430, column: 15)
!1951 = !DILocation(line: 430, column: 15, scope: !1952)
!1952 = distinct !DILexicalBlock(scope: !1953, file: !80, line: 430, column: 15)
!1953 = distinct !DILexicalBlock(scope: !1954, file: !80, line: 430, column: 15)
!1954 = distinct !DILexicalBlock(scope: !1950, file: !80, line: 430, column: 15)
!1955 = !DILocation(line: 430, column: 15, scope: !1953)
!1956 = !DILocation(line: 430, column: 15, scope: !1957)
!1957 = distinct !DILexicalBlock(scope: !1958, file: !80, line: 430, column: 15)
!1958 = distinct !DILexicalBlock(scope: !1954, file: !80, line: 430, column: 15)
!1959 = !DILocation(line: 430, column: 15, scope: !1958)
!1960 = !DILocation(line: 430, column: 15, scope: !1961)
!1961 = distinct !DILexicalBlock(scope: !1962, file: !80, line: 430, column: 15)
!1962 = distinct !DILexicalBlock(scope: !1954, file: !80, line: 430, column: 15)
!1963 = !DILocation(line: 430, column: 15, scope: !1962)
!1964 = !DILocation(line: 430, column: 15, scope: !1954)
!1965 = !DILocation(line: 430, column: 15, scope: !1966)
!1966 = distinct !DILexicalBlock(scope: !1967, file: !80, line: 430, column: 15)
!1967 = distinct !DILexicalBlock(scope: !1946, file: !80, line: 430, column: 15)
!1968 = !DILocation(line: 430, column: 15, scope: !1967)
!1969 = !DILocation(line: 438, column: 19, scope: !1970)
!1970 = distinct !DILexicalBlock(scope: !1947, file: !80, line: 437, column: 19)
!1971 = !DILocation(line: 438, column: 48, scope: !1970)
!1972 = !DILocation(line: 438, column: 59, scope: !1970)
!1973 = !DILocation(line: 440, column: 19, scope: !1974)
!1974 = distinct !DILexicalBlock(scope: !1975, file: !80, line: 440, column: 19)
!1975 = distinct !DILexicalBlock(scope: !1976, file: !80, line: 440, column: 19)
!1976 = distinct !DILexicalBlock(scope: !1970, file: !80, line: 439, column: 17)
!1977 = !DILocation(line: 440, column: 19, scope: !1975)
!1978 = !DILocation(line: 441, column: 19, scope: !1979)
!1979 = distinct !DILexicalBlock(scope: !1980, file: !80, line: 441, column: 19)
!1980 = distinct !DILexicalBlock(scope: !1976, file: !80, line: 441, column: 19)
!1981 = !DILocation(line: 441, column: 19, scope: !1980)
!1982 = !DILocation(line: 442, column: 17, scope: !1976)
!1983 = !DILocation(line: 449, column: 20, scope: !1948)
!1984 = !DILocation(line: 454, column: 11, scope: !1822)
!1985 = !DILocation(line: 457, column: 19, scope: !1986)
!1986 = distinct !DILexicalBlock(scope: !1822, file: !80, line: 455, column: 13)
!1987 = !DILocation(line: 463, column: 19, scope: !1988)
!1988 = distinct !DILexicalBlock(scope: !1986, file: !80, line: 462, column: 19)
!1989 = !DILocation(line: 463, column: 47, scope: !1988)
!1990 = !DILocation(line: 463, column: 41, scope: !1988)
!1991 = !DILocation(line: 463, column: 52, scope: !1988)
!1992 = !DILocation(line: 462, column: 19, scope: !1986)
!1993 = !DILocation(line: 464, column: 25, scope: !1988)
!1994 = !DILocation(line: 464, column: 17, scope: !1988)
!1995 = !DILocation(line: 471, column: 25, scope: !1996)
!1996 = distinct !DILexicalBlock(scope: !1988, file: !80, line: 465, column: 19)
!1997 = !DILocation(line: 475, column: 21, scope: !1998)
!1998 = distinct !DILexicalBlock(scope: !1999, file: !80, line: 475, column: 21)
!1999 = distinct !DILexicalBlock(scope: !1996, file: !80, line: 475, column: 21)
!2000 = !DILocation(line: 475, column: 21, scope: !1999)
!2001 = !DILocation(line: 476, column: 21, scope: !2002)
!2002 = distinct !DILexicalBlock(scope: !2003, file: !80, line: 476, column: 21)
!2003 = distinct !DILexicalBlock(scope: !1996, file: !80, line: 476, column: 21)
!2004 = !DILocation(line: 476, column: 21, scope: !2003)
!2005 = !DILocation(line: 477, column: 21, scope: !2006)
!2006 = distinct !DILexicalBlock(scope: !2007, file: !80, line: 477, column: 21)
!2007 = distinct !DILexicalBlock(scope: !1996, file: !80, line: 477, column: 21)
!2008 = !DILocation(line: 477, column: 21, scope: !2007)
!2009 = !DILocation(line: 478, column: 21, scope: !2010)
!2010 = distinct !DILexicalBlock(scope: !2011, file: !80, line: 478, column: 21)
!2011 = distinct !DILexicalBlock(scope: !1996, file: !80, line: 478, column: 21)
!2012 = !DILocation(line: 478, column: 21, scope: !2011)
!2013 = !DILocation(line: 479, column: 21, scope: !1996)
!2014 = !DILocation(line: 492, column: 31, scope: !1822)
!2015 = !DILocation(line: 493, column: 31, scope: !1822)
!2016 = !DILocation(line: 495, column: 31, scope: !1822)
!2017 = !DILocation(line: 496, column: 31, scope: !1822)
!2018 = !DILocation(line: 497, column: 31, scope: !1822)
!2019 = !DILocation(line: 500, column: 15, scope: !1822)
!2020 = !DILocation(line: 502, column: 19, scope: !2021)
!2021 = distinct !DILexicalBlock(scope: !2022, file: !80, line: 501, column: 13)
!2022 = distinct !DILexicalBlock(scope: !1822, file: !80, line: 500, column: 15)
!2023 = !DILocation(line: 509, column: 33, scope: !2024)
!2024 = distinct !DILexicalBlock(scope: !1822, file: !80, line: 509, column: 15)
!2025 = !DILocation(line: 0, scope: !1822)
!2026 = !DILocation(line: 512, column: 9, scope: !1822)
!2027 = !DILocation(line: 514, column: 15, scope: !2028)
!2028 = distinct !DILexicalBlock(scope: !1822, file: !80, line: 513, column: 15)
!2029 = !DILocation(line: 517, column: 9, scope: !1822)
!2030 = !DILocation(line: 518, column: 15, scope: !1822)
!2031 = !DILocation(line: 526, column: 15, scope: !1822)
!2032 = !DILocation(line: 526, column: 40, scope: !2033)
!2033 = distinct !DILexicalBlock(scope: !1822, file: !80, line: 526, column: 15)
!2034 = !DILocation(line: 526, column: 47, scope: !2033)
!2035 = !DILocation(line: 526, column: 18, scope: !2033)
!2036 = !DILocation(line: 530, column: 17, scope: !2037)
!2037 = distinct !DILexicalBlock(scope: !1822, file: !80, line: 530, column: 15)
!2038 = !DILocation(line: 530, column: 15, scope: !1822)
!2039 = !DILocation(line: 535, column: 11, scope: !1822)
!2040 = !DILocation(line: 549, column: 15, scope: !2041)
!2041 = distinct !DILexicalBlock(scope: !1822, file: !80, line: 548, column: 15)
!2042 = !DILocation(line: 556, column: 15, scope: !1822)
!2043 = !DILocation(line: 558, column: 19, scope: !2044)
!2044 = distinct !DILexicalBlock(scope: !2045, file: !80, line: 557, column: 13)
!2045 = distinct !DILexicalBlock(scope: !1822, file: !80, line: 556, column: 15)
!2046 = !DILocation(line: 561, column: 19, scope: !2047)
!2047 = distinct !DILexicalBlock(scope: !2044, file: !80, line: 561, column: 19)
!2048 = !DILocation(line: 561, column: 30, scope: !2047)
!2049 = !DILocation(line: 570, column: 15, scope: !2050)
!2050 = distinct !DILexicalBlock(scope: !2051, file: !80, line: 570, column: 15)
!2051 = distinct !DILexicalBlock(scope: !2044, file: !80, line: 570, column: 15)
!2052 = !DILocation(line: 570, column: 15, scope: !2051)
!2053 = !DILocation(line: 571, column: 15, scope: !2054)
!2054 = distinct !DILexicalBlock(scope: !2055, file: !80, line: 571, column: 15)
!2055 = distinct !DILexicalBlock(scope: !2044, file: !80, line: 571, column: 15)
!2056 = !DILocation(line: 571, column: 15, scope: !2055)
!2057 = !DILocation(line: 572, column: 15, scope: !2058)
!2058 = distinct !DILexicalBlock(scope: !2059, file: !80, line: 572, column: 15)
!2059 = distinct !DILexicalBlock(scope: !2044, file: !80, line: 572, column: 15)
!2060 = !DILocation(line: 572, column: 15, scope: !2059)
!2061 = !DILocation(line: 574, column: 13, scope: !2044)
!2062 = !DILocation(line: 614, column: 17, scope: !1821)
!2063 = !DILocation(line: 0, scope: !1821)
!2064 = !DILocation(line: 617, column: 29, scope: !2065)
!2065 = distinct !DILexicalBlock(scope: !1826, file: !80, line: 615, column: 15)
!2066 = !DILocation(line: 617, column: 27, scope: !2065)
!2067 = !DILocation(line: 678, column: 40, scope: !1821)
!2068 = !DILocation(line: 680, column: 23, scope: !1855)
!2069 = !DILocation(line: 621, column: 17, scope: !1825)
!2070 = !DILocation(line: 621, column: 27, scope: !1825)
!2071 = !DILocalVariable(name: "__dest", arg: 1, scope: !2072, file: !1006, line: 57, type: !36)
!2072 = distinct !DISubprogram(name: "memset", scope: !1006, file: !1006, line: 57, type: !1007, scopeLine: 58, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !79, retainedNodes: !2073)
!2073 = !{!2071, !2074, !2075}
!2074 = !DILocalVariable(name: "__ch", arg: 2, scope: !2072, file: !1006, line: 57, type: !39)
!2075 = !DILocalVariable(name: "__len", arg: 3, scope: !2072, file: !1006, line: 57, type: !88)
!2076 = !DILocation(line: 0, scope: !2072, inlinedAt: !2077)
!2077 = distinct !DILocation(line: 622, column: 17, scope: !1825)
!2078 = !DILocation(line: 59, column: 10, scope: !2072, inlinedAt: !2077)
!2079 = !DILocation(line: 626, column: 29, scope: !2080)
!2080 = distinct !DILexicalBlock(scope: !1825, file: !80, line: 626, column: 21)
!2081 = !DILocation(line: 626, column: 21, scope: !1825)
!2082 = !DILocation(line: 627, column: 29, scope: !2080)
!2083 = !DILocation(line: 627, column: 19, scope: !2080)
!2084 = !DILocation(line: 629, column: 17, scope: !1825)
!2085 = !DILocation(line: 624, column: 19, scope: !1825)
!2086 = !DILocation(line: 625, column: 27, scope: !1825)
!2087 = !DILocation(line: 631, column: 21, scope: !1843)
!2088 = !DILocation(line: 632, column: 56, scope: !1843)
!2089 = !DILocation(line: 632, column: 50, scope: !1843)
!2090 = !DILocation(line: 633, column: 53, scope: !1843)
!2091 = !DILocation(line: 0, scope: !1843)
!2092 = !DILocation(line: 632, column: 36, scope: !1843)
!2093 = !DILocation(line: 634, column: 25, scope: !1843)
!2094 = !DILocation(line: 644, column: 38, scope: !2095)
!2095 = distinct !DILexicalBlock(scope: !1850, file: !80, line: 642, column: 23)
!2096 = !DILocation(line: 644, column: 48, scope: !2095)
!2097 = !DILocation(line: 644, column: 25, scope: !2095)
!2098 = !DILocation(line: 644, column: 51, scope: !2095)
!2099 = !DILocation(line: 645, column: 28, scope: !2095)
!2100 = !DILocation(line: 644, column: 34, scope: !2095)
!2101 = distinct !{!2101, !2097, !2099, !774}
!2102 = !DILocation(line: 655, column: 29, scope: !1848)
!2103 = !DILocation(line: 0, scope: !1847)
!2104 = !DILocation(line: 659, column: 49, scope: !2105)
!2105 = distinct !DILexicalBlock(scope: !2106, file: !80, line: 658, column: 29)
!2106 = distinct !DILexicalBlock(scope: !1847, file: !80, line: 658, column: 29)
!2107 = !DILocation(line: 659, column: 39, scope: !2105)
!2108 = !DILocation(line: 659, column: 31, scope: !2105)
!2109 = !DILocation(line: 658, column: 53, scope: !2105)
!2110 = !DILocation(line: 658, column: 43, scope: !2105)
!2111 = !DILocation(line: 658, column: 29, scope: !2106)
!2112 = distinct !{!2112, !2111, !2113, !774}
!2113 = !DILocation(line: 667, column: 33, scope: !2106)
!2114 = !DILocation(line: 674, column: 19, scope: !1825)
!2115 = !DILocation(line: 670, column: 41, scope: !2116)
!2116 = distinct !DILexicalBlock(scope: !1849, file: !80, line: 670, column: 29)
!2117 = !DILocation(line: 670, column: 31, scope: !2116)
!2118 = !DILocation(line: 670, column: 29, scope: !1849)
!2119 = !DILocation(line: 672, column: 27, scope: !1849)
!2120 = !DILocation(line: 675, column: 26, scope: !1825)
!2121 = !DILocation(line: 675, column: 24, scope: !1825)
!2122 = !DILocation(line: 674, column: 19, scope: !1843)
!2123 = distinct !{!2123, !2084, !2124, !774}
!2124 = !DILocation(line: 675, column: 44, scope: !1825)
!2125 = !DILocation(line: 676, column: 15, scope: !1826)
!2126 = !DILocation(line: 680, column: 19, scope: !1855)
!2127 = !DILocation(line: 680, column: 45, scope: !1855)
!2128 = !DILocation(line: 684, column: 33, scope: !1854)
!2129 = !DILocation(line: 0, scope: !1854)
!2130 = !DILocation(line: 686, column: 17, scope: !1854)
!2131 = !DILocation(line: 405, column: 12, scope: !1813)
!2132 = !DILocation(line: 688, column: 43, scope: !2133)
!2133 = distinct !DILexicalBlock(scope: !2134, file: !80, line: 688, column: 25)
!2134 = distinct !DILexicalBlock(scope: !2135, file: !80, line: 687, column: 19)
!2135 = distinct !DILexicalBlock(scope: !2136, file: !80, line: 686, column: 17)
!2136 = distinct !DILexicalBlock(scope: !1854, file: !80, line: 686, column: 17)
!2137 = !DILocation(line: 690, column: 25, scope: !2138)
!2138 = distinct !DILexicalBlock(scope: !2139, file: !80, line: 690, column: 25)
!2139 = distinct !DILexicalBlock(scope: !2133, file: !80, line: 689, column: 23)
!2140 = !DILocation(line: 690, column: 25, scope: !2141)
!2141 = distinct !DILexicalBlock(scope: !2138, file: !80, line: 690, column: 25)
!2142 = !DILocation(line: 690, column: 25, scope: !2143)
!2143 = distinct !DILexicalBlock(scope: !2144, file: !80, line: 690, column: 25)
!2144 = distinct !DILexicalBlock(scope: !2145, file: !80, line: 690, column: 25)
!2145 = distinct !DILexicalBlock(scope: !2141, file: !80, line: 690, column: 25)
!2146 = !DILocation(line: 690, column: 25, scope: !2144)
!2147 = !DILocation(line: 690, column: 25, scope: !2148)
!2148 = distinct !DILexicalBlock(scope: !2149, file: !80, line: 690, column: 25)
!2149 = distinct !DILexicalBlock(scope: !2145, file: !80, line: 690, column: 25)
!2150 = !DILocation(line: 690, column: 25, scope: !2149)
!2151 = !DILocation(line: 690, column: 25, scope: !2152)
!2152 = distinct !DILexicalBlock(scope: !2153, file: !80, line: 690, column: 25)
!2153 = distinct !DILexicalBlock(scope: !2145, file: !80, line: 690, column: 25)
!2154 = !DILocation(line: 690, column: 25, scope: !2153)
!2155 = !DILocation(line: 690, column: 25, scope: !2145)
!2156 = !DILocation(line: 690, column: 25, scope: !2157)
!2157 = distinct !DILexicalBlock(scope: !2158, file: !80, line: 690, column: 25)
!2158 = distinct !DILexicalBlock(scope: !2138, file: !80, line: 690, column: 25)
!2159 = !DILocation(line: 690, column: 25, scope: !2158)
!2160 = !DILocation(line: 691, column: 25, scope: !2161)
!2161 = distinct !DILexicalBlock(scope: !2162, file: !80, line: 691, column: 25)
!2162 = distinct !DILexicalBlock(scope: !2139, file: !80, line: 691, column: 25)
!2163 = !DILocation(line: 691, column: 25, scope: !2162)
!2164 = !DILocation(line: 692, column: 25, scope: !2165)
!2165 = distinct !DILexicalBlock(scope: !2166, file: !80, line: 692, column: 25)
!2166 = distinct !DILexicalBlock(scope: !2139, file: !80, line: 692, column: 25)
!2167 = !DILocation(line: 692, column: 25, scope: !2166)
!2168 = !DILocation(line: 693, column: 38, scope: !2139)
!2169 = !DILocation(line: 693, column: 33, scope: !2139)
!2170 = !DILocation(line: 694, column: 23, scope: !2139)
!2171 = !DILocation(line: 695, column: 30, scope: !2172)
!2172 = distinct !DILexicalBlock(scope: !2133, file: !80, line: 695, column: 30)
!2173 = !DILocation(line: 695, column: 30, scope: !2133)
!2174 = !DILocation(line: 697, column: 25, scope: !2175)
!2175 = distinct !DILexicalBlock(scope: !2176, file: !80, line: 697, column: 25)
!2176 = distinct !DILexicalBlock(scope: !2177, file: !80, line: 697, column: 25)
!2177 = distinct !DILexicalBlock(scope: !2172, file: !80, line: 696, column: 23)
!2178 = !DILocation(line: 697, column: 25, scope: !2176)
!2179 = !DILocation(line: 699, column: 23, scope: !2177)
!2180 = !DILocation(line: 700, column: 35, scope: !2181)
!2181 = distinct !DILexicalBlock(scope: !2134, file: !80, line: 700, column: 25)
!2182 = !DILocation(line: 700, column: 30, scope: !2181)
!2183 = !DILocation(line: 700, column: 25, scope: !2134)
!2184 = !DILocation(line: 702, column: 21, scope: !2185)
!2185 = distinct !DILexicalBlock(scope: !2186, file: !80, line: 702, column: 21)
!2186 = distinct !DILexicalBlock(scope: !2134, file: !80, line: 702, column: 21)
!2187 = !DILocation(line: 702, column: 21, scope: !2188)
!2188 = distinct !DILexicalBlock(scope: !2189, file: !80, line: 702, column: 21)
!2189 = distinct !DILexicalBlock(scope: !2190, file: !80, line: 702, column: 21)
!2190 = distinct !DILexicalBlock(scope: !2185, file: !80, line: 702, column: 21)
!2191 = !DILocation(line: 702, column: 21, scope: !2189)
!2192 = !DILocation(line: 702, column: 21, scope: !2193)
!2193 = distinct !DILexicalBlock(scope: !2194, file: !80, line: 702, column: 21)
!2194 = distinct !DILexicalBlock(scope: !2190, file: !80, line: 702, column: 21)
!2195 = !DILocation(line: 702, column: 21, scope: !2194)
!2196 = !DILocation(line: 702, column: 21, scope: !2190)
!2197 = !DILocation(line: 0, scope: !2134)
!2198 = !DILocation(line: 703, column: 21, scope: !2199)
!2199 = distinct !DILexicalBlock(scope: !2200, file: !80, line: 703, column: 21)
!2200 = distinct !DILexicalBlock(scope: !2134, file: !80, line: 703, column: 21)
!2201 = !DILocation(line: 703, column: 21, scope: !2200)
!2202 = !DILocation(line: 704, column: 25, scope: !2134)
!2203 = !DILocation(line: 686, column: 17, scope: !2135)
!2204 = distinct !{!2204, !2205, !2206}
!2205 = !DILocation(line: 686, column: 17, scope: !2136)
!2206 = !DILocation(line: 705, column: 19, scope: !2136)
!2207 = !DILocation(line: 416, column: 30, scope: !1931)
!2208 = !DILocation(line: 712, column: 34, scope: !2209)
!2209 = distinct !DILexicalBlock(scope: !1813, file: !80, line: 712, column: 11)
!2210 = !DILocation(line: 715, column: 35, scope: !2209)
!2211 = !DILocation(line: 715, column: 17, scope: !2209)
!2212 = !DILocation(line: 715, column: 47, scope: !2209)
!2213 = !DILocation(line: 715, column: 65, scope: !2209)
!2214 = !DILocation(line: 716, column: 11, scope: !2209)
!2215 = !DILocation(line: 712, column: 11, scope: !1813)
!2216 = !DILocation(line: 400, column: 10, scope: !1815)
!2217 = !DILocation(line: 719, column: 5, scope: !1813)
!2218 = !DILocation(line: 720, column: 7, scope: !2219)
!2219 = distinct !DILexicalBlock(scope: !1813, file: !80, line: 720, column: 7)
!2220 = !DILocation(line: 720, column: 7, scope: !2221)
!2221 = distinct !DILexicalBlock(scope: !2219, file: !80, line: 720, column: 7)
!2222 = !DILocation(line: 720, column: 7, scope: !2223)
!2223 = distinct !DILexicalBlock(scope: !2224, file: !80, line: 720, column: 7)
!2224 = distinct !DILexicalBlock(scope: !2225, file: !80, line: 720, column: 7)
!2225 = distinct !DILexicalBlock(scope: !2221, file: !80, line: 720, column: 7)
!2226 = !DILocation(line: 720, column: 7, scope: !2224)
!2227 = !DILocation(line: 720, column: 7, scope: !2228)
!2228 = distinct !DILexicalBlock(scope: !2229, file: !80, line: 720, column: 7)
!2229 = distinct !DILexicalBlock(scope: !2225, file: !80, line: 720, column: 7)
!2230 = !DILocation(line: 720, column: 7, scope: !2229)
!2231 = !DILocation(line: 720, column: 7, scope: !2232)
!2232 = distinct !DILexicalBlock(scope: !2233, file: !80, line: 720, column: 7)
!2233 = distinct !DILexicalBlock(scope: !2225, file: !80, line: 720, column: 7)
!2234 = !DILocation(line: 720, column: 7, scope: !2233)
!2235 = !DILocation(line: 720, column: 7, scope: !2225)
!2236 = !DILocation(line: 720, column: 7, scope: !2237)
!2237 = distinct !DILexicalBlock(scope: !2238, file: !80, line: 720, column: 7)
!2238 = distinct !DILexicalBlock(scope: !2219, file: !80, line: 720, column: 7)
!2239 = !DILocation(line: 720, column: 7, scope: !2238)
!2240 = !DILocation(line: 722, column: 5, scope: !1813)
!2241 = !DILocation(line: 723, column: 7, scope: !2242)
!2242 = distinct !DILexicalBlock(scope: !2243, file: !80, line: 723, column: 7)
!2243 = distinct !DILexicalBlock(scope: !1813, file: !80, line: 723, column: 7)
!2244 = !DILocation(line: 424, column: 9, scope: !1813)
!2245 = !DILocation(line: 723, column: 7, scope: !2246)
!2246 = distinct !DILexicalBlock(scope: !2247, file: !80, line: 723, column: 7)
!2247 = distinct !DILexicalBlock(scope: !2248, file: !80, line: 723, column: 7)
!2248 = distinct !DILexicalBlock(scope: !2242, file: !80, line: 723, column: 7)
!2249 = !DILocation(line: 723, column: 7, scope: !2247)
!2250 = !DILocation(line: 723, column: 7, scope: !2251)
!2251 = distinct !DILexicalBlock(scope: !2252, file: !80, line: 723, column: 7)
!2252 = distinct !DILexicalBlock(scope: !2248, file: !80, line: 723, column: 7)
!2253 = !DILocation(line: 723, column: 7, scope: !2252)
!2254 = !DILocation(line: 723, column: 7, scope: !2248)
!2255 = !DILocation(line: 724, column: 7, scope: !2256)
!2256 = distinct !DILexicalBlock(scope: !2257, file: !80, line: 724, column: 7)
!2257 = distinct !DILexicalBlock(scope: !1813, file: !80, line: 724, column: 7)
!2258 = !DILocation(line: 724, column: 7, scope: !2257)
!2259 = !DILocation(line: 726, column: 13, scope: !2260)
!2260 = distinct !DILexicalBlock(scope: !1813, file: !80, line: 726, column: 11)
!2261 = !DILocation(line: 726, column: 11, scope: !1813)
!2262 = !DILocation(line: 728, column: 5, scope: !1814)
!2263 = !DILocation(line: 400, column: 75, scope: !1814)
!2264 = !DILocation(line: 400, column: 3, scope: !1814)
!2265 = distinct !{!2265, !1927, !2266, !774}
!2266 = !DILocation(line: 728, column: 5, scope: !1815)
!2267 = !DILocation(line: 730, column: 11, scope: !2268)
!2268 = distinct !DILexicalBlock(scope: !1786, file: !80, line: 730, column: 7)
!2269 = !DILocation(line: 730, column: 16, scope: !2268)
!2270 = !DILocation(line: 738, column: 51, scope: !2271)
!2271 = distinct !DILexicalBlock(scope: !1786, file: !80, line: 738, column: 7)
!2272 = !DILocation(line: 741, column: 11, scope: !2273)
!2273 = distinct !DILexicalBlock(scope: !2274, file: !80, line: 741, column: 11)
!2274 = distinct !DILexicalBlock(scope: !2271, file: !80, line: 740, column: 5)
!2275 = !DILocation(line: 741, column: 11, scope: !2274)
!2276 = !DILocation(line: 742, column: 16, scope: !2273)
!2277 = !DILocation(line: 742, column: 9, scope: !2273)
!2278 = !DILocation(line: 746, column: 18, scope: !2279)
!2279 = distinct !DILexicalBlock(scope: !2273, file: !80, line: 746, column: 16)
!2280 = !DILocation(line: 746, column: 29, scope: !2279)
!2281 = !DILocation(line: 755, column: 7, scope: !2282)
!2282 = distinct !DILexicalBlock(scope: !1786, file: !80, line: 755, column: 7)
!2283 = !DILocation(line: 755, column: 20, scope: !2282)
!2284 = !DILocation(line: 756, column: 12, scope: !2285)
!2285 = distinct !DILexicalBlock(scope: !2286, file: !80, line: 756, column: 5)
!2286 = distinct !DILexicalBlock(scope: !2282, file: !80, line: 756, column: 5)
!2287 = !DILocation(line: 756, column: 5, scope: !2286)
!2288 = !DILocation(line: 757, column: 7, scope: !2289)
!2289 = distinct !DILexicalBlock(scope: !2290, file: !80, line: 757, column: 7)
!2290 = distinct !DILexicalBlock(scope: !2285, file: !80, line: 757, column: 7)
!2291 = !DILocation(line: 757, column: 7, scope: !2290)
!2292 = !DILocation(line: 756, column: 39, scope: !2285)
!2293 = distinct !{!2293, !2287, !2294, !774}
!2294 = !DILocation(line: 757, column: 7, scope: !2286)
!2295 = !DILocation(line: 759, column: 11, scope: !2296)
!2296 = distinct !DILexicalBlock(scope: !1786, file: !80, line: 759, column: 7)
!2297 = !DILocation(line: 759, column: 7, scope: !1786)
!2298 = !DILocation(line: 760, column: 5, scope: !2296)
!2299 = !DILocation(line: 760, column: 17, scope: !2296)
!2300 = !DILocation(line: 763, column: 2, scope: !1786)
!2301 = !DILocation(line: 766, column: 51, scope: !2302)
!2302 = distinct !DILexicalBlock(scope: !1786, file: !80, line: 766, column: 7)
!2303 = !DILocation(line: 766, column: 21, scope: !2302)
!2304 = !DILocation(line: 770, column: 42, scope: !1786)
!2305 = !DILocation(line: 768, column: 10, scope: !1786)
!2306 = !DILocation(line: 768, column: 3, scope: !1786)
!2307 = !DILocation(line: 772, column: 1, scope: !1786)
!2308 = distinct !DISubprogram(name: "gettext_quote", scope: !80, file: !80, line: 207, type: !2309, scopeLine: 208, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !79, retainedNodes: !2311)
!2309 = !DISubroutineType(types: !2310)
!2310 = !{!50, !50, !5}
!2311 = !{!2312, !2313, !2314, !2315}
!2312 = !DILocalVariable(name: "msgid", arg: 1, scope: !2308, file: !80, line: 207, type: !50)
!2313 = !DILocalVariable(name: "s", arg: 2, scope: !2308, file: !80, line: 207, type: !5)
!2314 = !DILocalVariable(name: "translation", scope: !2308, file: !80, line: 209, type: !50)
!2315 = !DILocalVariable(name: "locale_code", scope: !2308, file: !80, line: 210, type: !50)
!2316 = !DILocation(line: 0, scope: !2308)
!2317 = !DILocation(line: 209, column: 29, scope: !2308)
!2318 = !DILocation(line: 212, column: 19, scope: !2319)
!2319 = distinct !DILexicalBlock(scope: !2308, file: !80, line: 212, column: 7)
!2320 = !DILocation(line: 212, column: 7, scope: !2308)
!2321 = !DILocation(line: 233, column: 17, scope: !2308)
!2322 = !DILocalVariable(name: "s1", arg: 1, scope: !2323, file: !2324, line: 160, type: !50)
!2323 = distinct !DISubprogram(name: "strcaseeq0", scope: !2324, file: !2324, line: 160, type: !2325, scopeLine: 161, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !79, retainedNodes: !2327)
!2324 = !DIFile(filename: "./lib/c-strcaseeq.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!2325 = !DISubroutineType(types: !2326)
!2326 = !{!39, !50, !50, !38, !38, !38, !38, !38, !38, !38, !38, !38}
!2327 = !{!2322, !2328, !2329, !2330, !2331, !2332, !2333, !2334, !2335, !2336, !2337}
!2328 = !DILocalVariable(name: "s2", arg: 2, scope: !2323, file: !2324, line: 160, type: !50)
!2329 = !DILocalVariable(name: "s20", arg: 3, scope: !2323, file: !2324, line: 160, type: !38)
!2330 = !DILocalVariable(name: "s21", arg: 4, scope: !2323, file: !2324, line: 160, type: !38)
!2331 = !DILocalVariable(name: "s22", arg: 5, scope: !2323, file: !2324, line: 160, type: !38)
!2332 = !DILocalVariable(name: "s23", arg: 6, scope: !2323, file: !2324, line: 160, type: !38)
!2333 = !DILocalVariable(name: "s24", arg: 7, scope: !2323, file: !2324, line: 160, type: !38)
!2334 = !DILocalVariable(name: "s25", arg: 8, scope: !2323, file: !2324, line: 160, type: !38)
!2335 = !DILocalVariable(name: "s26", arg: 9, scope: !2323, file: !2324, line: 160, type: !38)
!2336 = !DILocalVariable(name: "s27", arg: 10, scope: !2323, file: !2324, line: 160, type: !38)
!2337 = !DILocalVariable(name: "s28", arg: 11, scope: !2323, file: !2324, line: 160, type: !38)
!2338 = !DILocation(line: 0, scope: !2323, inlinedAt: !2339)
!2339 = distinct !DILocation(line: 234, column: 7, scope: !2340)
!2340 = distinct !DILexicalBlock(scope: !2308, file: !80, line: 234, column: 7)
!2341 = !DILocation(line: 162, column: 7, scope: !2342, inlinedAt: !2339)
!2342 = distinct !DILexicalBlock(scope: !2323, file: !2324, line: 162, column: 7)
!2343 = !DILocalVariable(name: "s1", arg: 1, scope: !2344, file: !2324, line: 146, type: !50)
!2344 = distinct !DISubprogram(name: "strcaseeq1", scope: !2324, file: !2324, line: 146, type: !2345, scopeLine: 147, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !79, retainedNodes: !2347)
!2345 = !DISubroutineType(types: !2346)
!2346 = !{!39, !50, !50, !38, !38, !38, !38, !38, !38, !38, !38}
!2347 = !{!2343, !2348, !2349, !2350, !2351, !2352, !2353, !2354, !2355, !2356}
!2348 = !DILocalVariable(name: "s2", arg: 2, scope: !2344, file: !2324, line: 146, type: !50)
!2349 = !DILocalVariable(name: "s21", arg: 3, scope: !2344, file: !2324, line: 146, type: !38)
!2350 = !DILocalVariable(name: "s22", arg: 4, scope: !2344, file: !2324, line: 146, type: !38)
!2351 = !DILocalVariable(name: "s23", arg: 5, scope: !2344, file: !2324, line: 146, type: !38)
!2352 = !DILocalVariable(name: "s24", arg: 6, scope: !2344, file: !2324, line: 146, type: !38)
!2353 = !DILocalVariable(name: "s25", arg: 7, scope: !2344, file: !2324, line: 146, type: !38)
!2354 = !DILocalVariable(name: "s26", arg: 8, scope: !2344, file: !2324, line: 146, type: !38)
!2355 = !DILocalVariable(name: "s27", arg: 9, scope: !2344, file: !2324, line: 146, type: !38)
!2356 = !DILocalVariable(name: "s28", arg: 10, scope: !2344, file: !2324, line: 146, type: !38)
!2357 = !DILocation(line: 0, scope: !2344, inlinedAt: !2358)
!2358 = distinct !DILocation(line: 167, column: 16, scope: !2359, inlinedAt: !2339)
!2359 = distinct !DILexicalBlock(scope: !2360, file: !2324, line: 164, column: 11)
!2360 = distinct !DILexicalBlock(scope: !2342, file: !2324, line: 163, column: 5)
!2361 = !DILocation(line: 148, column: 7, scope: !2362, inlinedAt: !2358)
!2362 = distinct !DILexicalBlock(scope: !2344, file: !2324, line: 148, column: 7)
!2363 = !DILocalVariable(name: "s1", arg: 1, scope: !2364, file: !2324, line: 132, type: !50)
!2364 = distinct !DISubprogram(name: "strcaseeq2", scope: !2324, file: !2324, line: 132, type: !2365, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !79, retainedNodes: !2367)
!2365 = !DISubroutineType(types: !2366)
!2366 = !{!39, !50, !50, !38, !38, !38, !38, !38, !38, !38}
!2367 = !{!2363, !2368, !2369, !2370, !2371, !2372, !2373, !2374, !2375}
!2368 = !DILocalVariable(name: "s2", arg: 2, scope: !2364, file: !2324, line: 132, type: !50)
!2369 = !DILocalVariable(name: "s22", arg: 3, scope: !2364, file: !2324, line: 132, type: !38)
!2370 = !DILocalVariable(name: "s23", arg: 4, scope: !2364, file: !2324, line: 132, type: !38)
!2371 = !DILocalVariable(name: "s24", arg: 5, scope: !2364, file: !2324, line: 132, type: !38)
!2372 = !DILocalVariable(name: "s25", arg: 6, scope: !2364, file: !2324, line: 132, type: !38)
!2373 = !DILocalVariable(name: "s26", arg: 7, scope: !2364, file: !2324, line: 132, type: !38)
!2374 = !DILocalVariable(name: "s27", arg: 8, scope: !2364, file: !2324, line: 132, type: !38)
!2375 = !DILocalVariable(name: "s28", arg: 9, scope: !2364, file: !2324, line: 132, type: !38)
!2376 = !DILocation(line: 0, scope: !2364, inlinedAt: !2377)
!2377 = distinct !DILocation(line: 153, column: 16, scope: !2378, inlinedAt: !2358)
!2378 = distinct !DILexicalBlock(scope: !2379, file: !2324, line: 150, column: 11)
!2379 = distinct !DILexicalBlock(scope: !2362, file: !2324, line: 149, column: 5)
!2380 = !DILocation(line: 134, column: 7, scope: !2381, inlinedAt: !2377)
!2381 = distinct !DILexicalBlock(scope: !2364, file: !2324, line: 134, column: 7)
!2382 = !DILocalVariable(name: "s1", arg: 1, scope: !2383, file: !2324, line: 118, type: !50)
!2383 = distinct !DISubprogram(name: "strcaseeq3", scope: !2324, file: !2324, line: 118, type: !2384, scopeLine: 119, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !79, retainedNodes: !2386)
!2384 = !DISubroutineType(types: !2385)
!2385 = !{!39, !50, !50, !38, !38, !38, !38, !38, !38}
!2386 = !{!2382, !2387, !2388, !2389, !2390, !2391, !2392, !2393}
!2387 = !DILocalVariable(name: "s2", arg: 2, scope: !2383, file: !2324, line: 118, type: !50)
!2388 = !DILocalVariable(name: "s23", arg: 3, scope: !2383, file: !2324, line: 118, type: !38)
!2389 = !DILocalVariable(name: "s24", arg: 4, scope: !2383, file: !2324, line: 118, type: !38)
!2390 = !DILocalVariable(name: "s25", arg: 5, scope: !2383, file: !2324, line: 118, type: !38)
!2391 = !DILocalVariable(name: "s26", arg: 6, scope: !2383, file: !2324, line: 118, type: !38)
!2392 = !DILocalVariable(name: "s27", arg: 7, scope: !2383, file: !2324, line: 118, type: !38)
!2393 = !DILocalVariable(name: "s28", arg: 8, scope: !2383, file: !2324, line: 118, type: !38)
!2394 = !DILocation(line: 0, scope: !2383, inlinedAt: !2395)
!2395 = distinct !DILocation(line: 139, column: 16, scope: !2396, inlinedAt: !2377)
!2396 = distinct !DILexicalBlock(scope: !2397, file: !2324, line: 136, column: 11)
!2397 = distinct !DILexicalBlock(scope: !2381, file: !2324, line: 135, column: 5)
!2398 = !DILocation(line: 120, column: 7, scope: !2399, inlinedAt: !2395)
!2399 = distinct !DILexicalBlock(scope: !2383, file: !2324, line: 120, column: 7)
!2400 = !DILocation(line: 120, column: 7, scope: !2383, inlinedAt: !2395)
!2401 = !DILocalVariable(name: "s1", arg: 1, scope: !2402, file: !2324, line: 104, type: !50)
!2402 = distinct !DISubprogram(name: "strcaseeq4", scope: !2324, file: !2324, line: 104, type: !2403, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !79, retainedNodes: !2405)
!2403 = !DISubroutineType(types: !2404)
!2404 = !{!39, !50, !50, !38, !38, !38, !38, !38}
!2405 = !{!2401, !2406, !2407, !2408, !2409, !2410, !2411}
!2406 = !DILocalVariable(name: "s2", arg: 2, scope: !2402, file: !2324, line: 104, type: !50)
!2407 = !DILocalVariable(name: "s24", arg: 3, scope: !2402, file: !2324, line: 104, type: !38)
!2408 = !DILocalVariable(name: "s25", arg: 4, scope: !2402, file: !2324, line: 104, type: !38)
!2409 = !DILocalVariable(name: "s26", arg: 5, scope: !2402, file: !2324, line: 104, type: !38)
!2410 = !DILocalVariable(name: "s27", arg: 6, scope: !2402, file: !2324, line: 104, type: !38)
!2411 = !DILocalVariable(name: "s28", arg: 7, scope: !2402, file: !2324, line: 104, type: !38)
!2412 = !DILocation(line: 0, scope: !2402, inlinedAt: !2413)
!2413 = distinct !DILocation(line: 125, column: 16, scope: !2414, inlinedAt: !2395)
!2414 = distinct !DILexicalBlock(scope: !2415, file: !2324, line: 122, column: 11)
!2415 = distinct !DILexicalBlock(scope: !2399, file: !2324, line: 121, column: 5)
!2416 = !DILocation(line: 106, column: 7, scope: !2417, inlinedAt: !2413)
!2417 = distinct !DILexicalBlock(scope: !2402, file: !2324, line: 106, column: 7)
!2418 = !DILocation(line: 106, column: 7, scope: !2402, inlinedAt: !2413)
!2419 = !DILocalVariable(name: "s1", arg: 1, scope: !2420, file: !2324, line: 90, type: !50)
!2420 = distinct !DISubprogram(name: "strcaseeq5", scope: !2324, file: !2324, line: 90, type: !2421, scopeLine: 91, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !79, retainedNodes: !2423)
!2421 = !DISubroutineType(types: !2422)
!2422 = !{!39, !50, !50, !38, !38, !38, !38}
!2423 = !{!2419, !2424, !2425, !2426, !2427, !2428}
!2424 = !DILocalVariable(name: "s2", arg: 2, scope: !2420, file: !2324, line: 90, type: !50)
!2425 = !DILocalVariable(name: "s25", arg: 3, scope: !2420, file: !2324, line: 90, type: !38)
!2426 = !DILocalVariable(name: "s26", arg: 4, scope: !2420, file: !2324, line: 90, type: !38)
!2427 = !DILocalVariable(name: "s27", arg: 5, scope: !2420, file: !2324, line: 90, type: !38)
!2428 = !DILocalVariable(name: "s28", arg: 6, scope: !2420, file: !2324, line: 90, type: !38)
!2429 = !DILocation(line: 0, scope: !2420, inlinedAt: !2430)
!2430 = distinct !DILocation(line: 111, column: 16, scope: !2431, inlinedAt: !2413)
!2431 = distinct !DILexicalBlock(scope: !2432, file: !2324, line: 108, column: 11)
!2432 = distinct !DILexicalBlock(scope: !2417, file: !2324, line: 107, column: 5)
!2433 = !DILocation(line: 92, column: 7, scope: !2434, inlinedAt: !2430)
!2434 = distinct !DILexicalBlock(scope: !2420, file: !2324, line: 92, column: 7)
!2435 = !DILocation(line: 92, column: 7, scope: !2420, inlinedAt: !2430)
!2436 = !DILocation(line: 235, column: 12, scope: !2340)
!2437 = !DILocation(line: 235, column: 21, scope: !2340)
!2438 = !DILocation(line: 235, column: 5, scope: !2340)
!2439 = !DILocation(line: 0, scope: !2344, inlinedAt: !2440)
!2440 = distinct !DILocation(line: 167, column: 16, scope: !2359, inlinedAt: !2441)
!2441 = distinct !DILocation(line: 236, column: 7, scope: !2442)
!2442 = distinct !DILexicalBlock(scope: !2308, file: !80, line: 236, column: 7)
!2443 = !DILocation(line: 148, column: 7, scope: !2362, inlinedAt: !2440)
!2444 = !DILocation(line: 0, scope: !2364, inlinedAt: !2445)
!2445 = distinct !DILocation(line: 153, column: 16, scope: !2378, inlinedAt: !2440)
!2446 = !DILocation(line: 134, column: 7, scope: !2381, inlinedAt: !2445)
!2447 = !DILocation(line: 134, column: 7, scope: !2364, inlinedAt: !2445)
!2448 = !DILocation(line: 0, scope: !2383, inlinedAt: !2449)
!2449 = distinct !DILocation(line: 139, column: 16, scope: !2396, inlinedAt: !2445)
!2450 = !DILocation(line: 120, column: 7, scope: !2399, inlinedAt: !2449)
!2451 = !DILocation(line: 120, column: 7, scope: !2383, inlinedAt: !2449)
!2452 = !DILocation(line: 0, scope: !2402, inlinedAt: !2453)
!2453 = distinct !DILocation(line: 125, column: 16, scope: !2414, inlinedAt: !2449)
!2454 = !DILocation(line: 106, column: 7, scope: !2417, inlinedAt: !2453)
!2455 = !DILocation(line: 106, column: 7, scope: !2402, inlinedAt: !2453)
!2456 = !DILocation(line: 0, scope: !2420, inlinedAt: !2457)
!2457 = distinct !DILocation(line: 111, column: 16, scope: !2431, inlinedAt: !2453)
!2458 = !DILocation(line: 92, column: 7, scope: !2434, inlinedAt: !2457)
!2459 = !DILocation(line: 92, column: 7, scope: !2420, inlinedAt: !2457)
!2460 = !DILocalVariable(name: "s1", arg: 1, scope: !2461, file: !2324, line: 76, type: !50)
!2461 = distinct !DISubprogram(name: "strcaseeq6", scope: !2324, file: !2324, line: 76, type: !2462, scopeLine: 77, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !79, retainedNodes: !2464)
!2462 = !DISubroutineType(types: !2463)
!2463 = !{!39, !50, !50, !38, !38, !38}
!2464 = !{!2460, !2465, !2466, !2467, !2468}
!2465 = !DILocalVariable(name: "s2", arg: 2, scope: !2461, file: !2324, line: 76, type: !50)
!2466 = !DILocalVariable(name: "s26", arg: 3, scope: !2461, file: !2324, line: 76, type: !38)
!2467 = !DILocalVariable(name: "s27", arg: 4, scope: !2461, file: !2324, line: 76, type: !38)
!2468 = !DILocalVariable(name: "s28", arg: 5, scope: !2461, file: !2324, line: 76, type: !38)
!2469 = !DILocation(line: 0, scope: !2461, inlinedAt: !2470)
!2470 = distinct !DILocation(line: 97, column: 16, scope: !2471, inlinedAt: !2457)
!2471 = distinct !DILexicalBlock(scope: !2472, file: !2324, line: 94, column: 11)
!2472 = distinct !DILexicalBlock(scope: !2434, file: !2324, line: 93, column: 5)
!2473 = !DILocation(line: 78, column: 7, scope: !2474, inlinedAt: !2470)
!2474 = distinct !DILexicalBlock(scope: !2461, file: !2324, line: 78, column: 7)
!2475 = !DILocation(line: 78, column: 7, scope: !2461, inlinedAt: !2470)
!2476 = !DILocalVariable(name: "s1", arg: 1, scope: !2477, file: !2324, line: 62, type: !50)
!2477 = distinct !DISubprogram(name: "strcaseeq7", scope: !2324, file: !2324, line: 62, type: !2478, scopeLine: 63, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !79, retainedNodes: !2480)
!2478 = !DISubroutineType(types: !2479)
!2479 = !{!39, !50, !50, !38, !38}
!2480 = !{!2476, !2481, !2482, !2483}
!2481 = !DILocalVariable(name: "s2", arg: 2, scope: !2477, file: !2324, line: 62, type: !50)
!2482 = !DILocalVariable(name: "s27", arg: 3, scope: !2477, file: !2324, line: 62, type: !38)
!2483 = !DILocalVariable(name: "s28", arg: 4, scope: !2477, file: !2324, line: 62, type: !38)
!2484 = !DILocation(line: 0, scope: !2477, inlinedAt: !2485)
!2485 = distinct !DILocation(line: 83, column: 16, scope: !2486, inlinedAt: !2470)
!2486 = distinct !DILexicalBlock(scope: !2487, file: !2324, line: 80, column: 11)
!2487 = distinct !DILexicalBlock(scope: !2474, file: !2324, line: 79, column: 5)
!2488 = !DILocation(line: 64, column: 7, scope: !2489, inlinedAt: !2485)
!2489 = distinct !DILexicalBlock(scope: !2477, file: !2324, line: 64, column: 7)
!2490 = !DILocation(line: 236, column: 7, scope: !2308)
!2491 = !DILocation(line: 237, column: 12, scope: !2442)
!2492 = !DILocation(line: 237, column: 21, scope: !2442)
!2493 = !DILocation(line: 237, column: 5, scope: !2442)
!2494 = !DILocation(line: 239, column: 13, scope: !2308)
!2495 = !DILocation(line: 239, column: 11, scope: !2308)
!2496 = !DILocation(line: 239, column: 3, scope: !2308)
!2497 = !DILocation(line: 240, column: 1, scope: !2308)
!2498 = !DISubprogram(name: "iswprint", scope: !2499, file: !2499, line: 120, type: !2500, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !56)
!2499 = !DIFile(filename: "/usr/include/bits/wctype-wchar.h", directory: "")
!2500 = !DISubroutineType(types: !2501)
!2501 = !{!39, !7}
!2502 = !DISubprogram(name: "mbsinit", scope: !2503, file: !2503, line: 292, type: !2504, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !56)
!2503 = !DIFile(filename: "/usr/include/wchar.h", directory: "")
!2504 = !DISubroutineType(types: !2505)
!2505 = !{!39, !2506}
!2506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2507, size: 64)
!2507 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1831)
!2508 = distinct !DISubprogram(name: "quotearg_alloc", scope: !80, file: !80, line: 799, type: !2509, scopeLine: 801, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !79, retainedNodes: !2511)
!2509 = !DISubroutineType(types: !2510)
!2510 = !{!37, !50, !88, !1678}
!2511 = !{!2512, !2513, !2514}
!2512 = !DILocalVariable(name: "arg", arg: 1, scope: !2508, file: !80, line: 799, type: !50)
!2513 = !DILocalVariable(name: "argsize", arg: 2, scope: !2508, file: !80, line: 799, type: !88)
!2514 = !DILocalVariable(name: "o", arg: 3, scope: !2508, file: !80, line: 800, type: !1678)
!2515 = !DILocation(line: 0, scope: !2508)
!2516 = !DILocalVariable(name: "arg", arg: 1, scope: !2517, file: !80, line: 812, type: !50)
!2517 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !80, file: !80, line: 812, type: !2518, scopeLine: 814, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !79, retainedNodes: !2520)
!2518 = !DISubroutineType(types: !2519)
!2519 = !{!37, !50, !88, !291, !1678}
!2520 = !{!2516, !2521, !2522, !2523, !2524, !2525, !2526, !2527, !2528}
!2521 = !DILocalVariable(name: "argsize", arg: 2, scope: !2517, file: !80, line: 812, type: !88)
!2522 = !DILocalVariable(name: "size", arg: 3, scope: !2517, file: !80, line: 812, type: !291)
!2523 = !DILocalVariable(name: "o", arg: 4, scope: !2517, file: !80, line: 813, type: !1678)
!2524 = !DILocalVariable(name: "p", scope: !2517, file: !80, line: 815, type: !1678)
!2525 = !DILocalVariable(name: "e", scope: !2517, file: !80, line: 816, type: !39)
!2526 = !DILocalVariable(name: "flags", scope: !2517, file: !80, line: 818, type: !39)
!2527 = !DILocalVariable(name: "bufsize", scope: !2517, file: !80, line: 819, type: !88)
!2528 = !DILocalVariable(name: "buf", scope: !2517, file: !80, line: 823, type: !37)
!2529 = !DILocation(line: 0, scope: !2517, inlinedAt: !2530)
!2530 = distinct !DILocation(line: 802, column: 10, scope: !2508)
!2531 = !DILocation(line: 815, column: 37, scope: !2517, inlinedAt: !2530)
!2532 = !DILocation(line: 816, column: 11, scope: !2517, inlinedAt: !2530)
!2533 = !DILocation(line: 818, column: 18, scope: !2517, inlinedAt: !2530)
!2534 = !DILocation(line: 818, column: 24, scope: !2517, inlinedAt: !2530)
!2535 = !DILocation(line: 819, column: 69, scope: !2517, inlinedAt: !2530)
!2536 = !DILocation(line: 820, column: 53, scope: !2517, inlinedAt: !2530)
!2537 = !DILocation(line: 821, column: 49, scope: !2517, inlinedAt: !2530)
!2538 = !DILocation(line: 822, column: 49, scope: !2517, inlinedAt: !2530)
!2539 = !DILocation(line: 819, column: 20, scope: !2517, inlinedAt: !2530)
!2540 = !DILocation(line: 822, column: 62, scope: !2517, inlinedAt: !2530)
!2541 = !DILocalVariable(name: "n", arg: 1, scope: !2542, file: !287, line: 216, type: !88)
!2542 = distinct !DISubprogram(name: "xcharalloc", scope: !287, file: !287, line: 216, type: !2543, scopeLine: 217, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !79, retainedNodes: !2545)
!2543 = !DISubroutineType(types: !2544)
!2544 = !{!37, !88}
!2545 = !{!2541}
!2546 = !DILocation(line: 0, scope: !2542, inlinedAt: !2547)
!2547 = distinct !DILocation(line: 823, column: 15, scope: !2517, inlinedAt: !2530)
!2548 = !DILocation(line: 218, column: 10, scope: !2542, inlinedAt: !2547)
!2549 = !DILocation(line: 824, column: 60, scope: !2517, inlinedAt: !2530)
!2550 = !DILocation(line: 826, column: 32, scope: !2517, inlinedAt: !2530)
!2551 = !DILocation(line: 826, column: 47, scope: !2517, inlinedAt: !2530)
!2552 = !DILocation(line: 824, column: 3, scope: !2517, inlinedAt: !2530)
!2553 = !DILocation(line: 827, column: 9, scope: !2517, inlinedAt: !2530)
!2554 = !DILocation(line: 802, column: 3, scope: !2508)
!2555 = !DILocation(line: 0, scope: !2517)
!2556 = !DILocation(line: 815, column: 37, scope: !2517)
!2557 = !DILocation(line: 816, column: 11, scope: !2517)
!2558 = !DILocation(line: 818, column: 18, scope: !2517)
!2559 = !DILocation(line: 818, column: 27, scope: !2517)
!2560 = !DILocation(line: 818, column: 24, scope: !2517)
!2561 = !DILocation(line: 819, column: 69, scope: !2517)
!2562 = !DILocation(line: 820, column: 53, scope: !2517)
!2563 = !DILocation(line: 821, column: 49, scope: !2517)
!2564 = !DILocation(line: 822, column: 49, scope: !2517)
!2565 = !DILocation(line: 819, column: 20, scope: !2517)
!2566 = !DILocation(line: 822, column: 62, scope: !2517)
!2567 = !DILocation(line: 0, scope: !2542, inlinedAt: !2568)
!2568 = distinct !DILocation(line: 823, column: 15, scope: !2517)
!2569 = !DILocation(line: 218, column: 10, scope: !2542, inlinedAt: !2568)
!2570 = !DILocation(line: 824, column: 60, scope: !2517)
!2571 = !DILocation(line: 826, column: 32, scope: !2517)
!2572 = !DILocation(line: 826, column: 47, scope: !2517)
!2573 = !DILocation(line: 824, column: 3, scope: !2517)
!2574 = !DILocation(line: 827, column: 9, scope: !2517)
!2575 = !DILocation(line: 828, column: 7, scope: !2517)
!2576 = !DILocation(line: 829, column: 11, scope: !2577)
!2577 = distinct !DILexicalBlock(scope: !2517, file: !80, line: 828, column: 7)
!2578 = !{!958, !958, i64 0}
!2579 = !DILocation(line: 829, column: 5, scope: !2577)
!2580 = !DILocation(line: 830, column: 3, scope: !2517)
!2581 = distinct !DISubprogram(name: "quotearg_free", scope: !80, file: !80, line: 848, type: !1334, scopeLine: 849, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !79, retainedNodes: !2582)
!2582 = !{!2583, !2584}
!2583 = !DILocalVariable(name: "sv", scope: !2581, file: !80, line: 850, type: !119)
!2584 = !DILocalVariable(name: "i", scope: !2581, file: !80, line: 851, type: !39)
!2585 = !DILocation(line: 850, column: 24, scope: !2581)
!2586 = !DILocation(line: 0, scope: !2581)
!2587 = !DILocation(line: 852, column: 19, scope: !2588)
!2588 = distinct !DILexicalBlock(scope: !2589, file: !80, line: 852, column: 3)
!2589 = distinct !DILexicalBlock(scope: !2581, file: !80, line: 852, column: 3)
!2590 = !DILocation(line: 852, column: 17, scope: !2588)
!2591 = !DILocation(line: 852, column: 3, scope: !2589)
!2592 = !DILocation(line: 853, column: 17, scope: !2588)
!2593 = !{!2594, !728, i64 8}
!2594 = !{!"slotvec", !958, i64 0, !728, i64 8}
!2595 = !DILocation(line: 853, column: 5, scope: !2588)
!2596 = !DILocation(line: 852, column: 28, scope: !2588)
!2597 = distinct !{!2597, !2591, !2598, !774}
!2598 = !DILocation(line: 853, column: 20, scope: !2589)
!2599 = !DILocation(line: 854, column: 13, scope: !2600)
!2600 = distinct !DILexicalBlock(scope: !2581, file: !80, line: 854, column: 7)
!2601 = !DILocation(line: 854, column: 17, scope: !2600)
!2602 = !DILocation(line: 854, column: 7, scope: !2581)
!2603 = !DILocation(line: 856, column: 7, scope: !2604)
!2604 = distinct !DILexicalBlock(scope: !2600, file: !80, line: 855, column: 5)
!2605 = !DILocation(line: 857, column: 21, scope: !2604)
!2606 = !{!2594, !958, i64 0}
!2607 = !DILocation(line: 858, column: 20, scope: !2604)
!2608 = !DILocation(line: 859, column: 5, scope: !2604)
!2609 = !DILocation(line: 860, column: 10, scope: !2610)
!2610 = distinct !DILexicalBlock(scope: !2581, file: !80, line: 860, column: 7)
!2611 = !DILocation(line: 860, column: 7, scope: !2581)
!2612 = !DILocation(line: 862, column: 13, scope: !2613)
!2613 = distinct !DILexicalBlock(scope: !2610, file: !80, line: 861, column: 5)
!2614 = !DILocation(line: 862, column: 7, scope: !2613)
!2615 = !DILocation(line: 863, column: 15, scope: !2613)
!2616 = !DILocation(line: 864, column: 5, scope: !2613)
!2617 = !DILocation(line: 865, column: 10, scope: !2581)
!2618 = !DILocation(line: 866, column: 1, scope: !2581)
!2619 = distinct !DISubprogram(name: "quotearg_n", scope: !80, file: !80, line: 931, type: !836, scopeLine: 932, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !79, retainedNodes: !2620)
!2620 = !{!2621, !2622}
!2621 = !DILocalVariable(name: "n", arg: 1, scope: !2619, file: !80, line: 931, type: !39)
!2622 = !DILocalVariable(name: "arg", arg: 2, scope: !2619, file: !80, line: 931, type: !50)
!2623 = !DILocation(line: 0, scope: !2619)
!2624 = !DILocation(line: 933, column: 10, scope: !2619)
!2625 = !DILocation(line: 933, column: 3, scope: !2619)
!2626 = distinct !DISubprogram(name: "quotearg_n_options", scope: !80, file: !80, line: 877, type: !2627, scopeLine: 879, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !79, retainedNodes: !2629)
!2627 = !DISubroutineType(types: !2628)
!2628 = !{!37, !39, !50, !88, !1678}
!2629 = !{!2630, !2631, !2632, !2633, !2634, !2635, !2636, !2639, !2640, !2642, !2643, !2644}
!2630 = !DILocalVariable(name: "n", arg: 1, scope: !2626, file: !80, line: 877, type: !39)
!2631 = !DILocalVariable(name: "arg", arg: 2, scope: !2626, file: !80, line: 877, type: !50)
!2632 = !DILocalVariable(name: "argsize", arg: 3, scope: !2626, file: !80, line: 877, type: !88)
!2633 = !DILocalVariable(name: "options", arg: 4, scope: !2626, file: !80, line: 878, type: !1678)
!2634 = !DILocalVariable(name: "e", scope: !2626, file: !80, line: 880, type: !39)
!2635 = !DILocalVariable(name: "sv", scope: !2626, file: !80, line: 882, type: !119)
!2636 = !DILocalVariable(name: "preallocated", scope: !2637, file: !80, line: 889, type: !46)
!2637 = distinct !DILexicalBlock(scope: !2638, file: !80, line: 888, column: 5)
!2638 = distinct !DILexicalBlock(scope: !2626, file: !80, line: 887, column: 7)
!2639 = !DILocalVariable(name: "nmax", scope: !2637, file: !80, line: 890, type: !39)
!2640 = !DILocalVariable(name: "size", scope: !2641, file: !80, line: 903, type: !88)
!2641 = distinct !DILexicalBlock(scope: !2626, file: !80, line: 902, column: 3)
!2642 = !DILocalVariable(name: "val", scope: !2641, file: !80, line: 904, type: !37)
!2643 = !DILocalVariable(name: "flags", scope: !2641, file: !80, line: 906, type: !39)
!2644 = !DILocalVariable(name: "qsize", scope: !2641, file: !80, line: 907, type: !88)
!2645 = !DILocation(line: 0, scope: !2626)
!2646 = !DILocation(line: 880, column: 11, scope: !2626)
!2647 = !DILocation(line: 882, column: 24, scope: !2626)
!2648 = !DILocation(line: 884, column: 9, scope: !2649)
!2649 = distinct !DILexicalBlock(scope: !2626, file: !80, line: 884, column: 7)
!2650 = !DILocation(line: 884, column: 7, scope: !2626)
!2651 = !DILocation(line: 885, column: 5, scope: !2649)
!2652 = !DILocation(line: 887, column: 7, scope: !2638)
!2653 = !DILocation(line: 887, column: 14, scope: !2638)
!2654 = !DILocation(line: 887, column: 7, scope: !2626)
!2655 = !DILocation(line: 889, column: 31, scope: !2637)
!2656 = !DILocation(line: 0, scope: !2637)
!2657 = !DILocation(line: 892, column: 16, scope: !2658)
!2658 = distinct !DILexicalBlock(scope: !2637, file: !80, line: 892, column: 11)
!2659 = !DILocation(line: 892, column: 11, scope: !2637)
!2660 = !DILocation(line: 893, column: 9, scope: !2658)
!2661 = !DILocation(line: 895, column: 32, scope: !2637)
!2662 = !DILocation(line: 895, column: 61, scope: !2637)
!2663 = !DILocation(line: 895, column: 66, scope: !2637)
!2664 = !DILocation(line: 895, column: 22, scope: !2637)
!2665 = !DILocation(line: 895, column: 15, scope: !2637)
!2666 = !DILocation(line: 896, column: 11, scope: !2637)
!2667 = !DILocation(line: 897, column: 15, scope: !2668)
!2668 = distinct !DILexicalBlock(scope: !2637, file: !80, line: 896, column: 11)
!2669 = !{i64 0, i64 8, !2578, i64 8, i64 8, !727}
!2670 = !DILocation(line: 897, column: 9, scope: !2668)
!2671 = !DILocation(line: 898, column: 20, scope: !2637)
!2672 = !DILocation(line: 898, column: 18, scope: !2637)
!2673 = !DILocation(line: 898, column: 15, scope: !2637)
!2674 = !DILocation(line: 898, column: 38, scope: !2637)
!2675 = !DILocation(line: 898, column: 31, scope: !2637)
!2676 = !DILocation(line: 898, column: 48, scope: !2637)
!2677 = !DILocation(line: 0, scope: !2072, inlinedAt: !2678)
!2678 = distinct !DILocation(line: 898, column: 7, scope: !2637)
!2679 = !DILocation(line: 59, column: 10, scope: !2072, inlinedAt: !2678)
!2680 = !DILocation(line: 899, column: 14, scope: !2637)
!2681 = !DILocation(line: 900, column: 5, scope: !2637)
!2682 = !DILocation(line: 903, column: 19, scope: !2641)
!2683 = !DILocation(line: 903, column: 25, scope: !2641)
!2684 = !DILocation(line: 0, scope: !2641)
!2685 = !DILocation(line: 904, column: 23, scope: !2641)
!2686 = !DILocation(line: 906, column: 26, scope: !2641)
!2687 = !DILocation(line: 906, column: 32, scope: !2641)
!2688 = !DILocation(line: 908, column: 55, scope: !2641)
!2689 = !DILocation(line: 909, column: 46, scope: !2641)
!2690 = !DILocation(line: 910, column: 55, scope: !2641)
!2691 = !DILocation(line: 911, column: 55, scope: !2641)
!2692 = !DILocation(line: 907, column: 20, scope: !2641)
!2693 = !DILocation(line: 913, column: 14, scope: !2694)
!2694 = distinct !DILexicalBlock(scope: !2641, file: !80, line: 913, column: 9)
!2695 = !DILocation(line: 913, column: 9, scope: !2641)
!2696 = !DILocation(line: 915, column: 35, scope: !2697)
!2697 = distinct !DILexicalBlock(scope: !2694, file: !80, line: 914, column: 7)
!2698 = !DILocation(line: 915, column: 20, scope: !2697)
!2699 = !DILocation(line: 916, column: 17, scope: !2700)
!2700 = distinct !DILexicalBlock(scope: !2697, file: !80, line: 916, column: 13)
!2701 = !DILocation(line: 916, column: 13, scope: !2697)
!2702 = !DILocation(line: 917, column: 11, scope: !2700)
!2703 = !DILocation(line: 0, scope: !2542, inlinedAt: !2704)
!2704 = distinct !DILocation(line: 918, column: 27, scope: !2697)
!2705 = !DILocation(line: 218, column: 10, scope: !2542, inlinedAt: !2704)
!2706 = !DILocation(line: 918, column: 19, scope: !2697)
!2707 = !DILocation(line: 919, column: 69, scope: !2697)
!2708 = !DILocation(line: 921, column: 44, scope: !2697)
!2709 = !DILocation(line: 922, column: 44, scope: !2697)
!2710 = !DILocation(line: 919, column: 9, scope: !2697)
!2711 = !DILocation(line: 923, column: 7, scope: !2697)
!2712 = !DILocation(line: 925, column: 11, scope: !2641)
!2713 = !DILocation(line: 926, column: 5, scope: !2641)
!2714 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !80, file: !80, line: 937, type: !2715, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !79, retainedNodes: !2717)
!2715 = !DISubroutineType(types: !2716)
!2716 = !{!37, !39, !50, !88}
!2717 = !{!2718, !2719, !2720}
!2718 = !DILocalVariable(name: "n", arg: 1, scope: !2714, file: !80, line: 937, type: !39)
!2719 = !DILocalVariable(name: "arg", arg: 2, scope: !2714, file: !80, line: 937, type: !50)
!2720 = !DILocalVariable(name: "argsize", arg: 3, scope: !2714, file: !80, line: 937, type: !88)
!2721 = !DILocation(line: 0, scope: !2714)
!2722 = !DILocation(line: 939, column: 10, scope: !2714)
!2723 = !DILocation(line: 939, column: 3, scope: !2714)
!2724 = distinct !DISubprogram(name: "quotearg", scope: !80, file: !80, line: 943, type: !1327, scopeLine: 944, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !79, retainedNodes: !2725)
!2725 = !{!2726}
!2726 = !DILocalVariable(name: "arg", arg: 1, scope: !2724, file: !80, line: 943, type: !50)
!2727 = !DILocation(line: 0, scope: !2724)
!2728 = !DILocation(line: 0, scope: !2619, inlinedAt: !2729)
!2729 = distinct !DILocation(line: 945, column: 10, scope: !2724)
!2730 = !DILocation(line: 933, column: 10, scope: !2619, inlinedAt: !2729)
!2731 = !DILocation(line: 945, column: 3, scope: !2724)
!2732 = distinct !DISubprogram(name: "quotearg_mem", scope: !80, file: !80, line: 949, type: !2733, scopeLine: 950, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !79, retainedNodes: !2735)
!2733 = !DISubroutineType(types: !2734)
!2734 = !{!37, !50, !88}
!2735 = !{!2736, !2737}
!2736 = !DILocalVariable(name: "arg", arg: 1, scope: !2732, file: !80, line: 949, type: !50)
!2737 = !DILocalVariable(name: "argsize", arg: 2, scope: !2732, file: !80, line: 949, type: !88)
!2738 = !DILocation(line: 0, scope: !2732)
!2739 = !DILocation(line: 0, scope: !2714, inlinedAt: !2740)
!2740 = distinct !DILocation(line: 951, column: 10, scope: !2732)
!2741 = !DILocation(line: 939, column: 10, scope: !2714, inlinedAt: !2740)
!2742 = !DILocation(line: 951, column: 3, scope: !2732)
!2743 = distinct !DISubprogram(name: "quotearg_n_style", scope: !80, file: !80, line: 955, type: !2744, scopeLine: 956, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !79, retainedNodes: !2746)
!2744 = !DISubroutineType(types: !2745)
!2745 = !{!37, !39, !5, !50}
!2746 = !{!2747, !2748, !2749, !2750}
!2747 = !DILocalVariable(name: "n", arg: 1, scope: !2743, file: !80, line: 955, type: !39)
!2748 = !DILocalVariable(name: "s", arg: 2, scope: !2743, file: !80, line: 955, type: !5)
!2749 = !DILocalVariable(name: "arg", arg: 3, scope: !2743, file: !80, line: 955, type: !50)
!2750 = !DILocalVariable(name: "o", scope: !2743, file: !80, line: 957, type: !1679)
!2751 = !DILocation(line: 0, scope: !2743)
!2752 = !DILocation(line: 957, column: 3, scope: !2743)
!2753 = !DILocation(line: 957, column: 32, scope: !2743)
!2754 = !{!2755}
!2755 = distinct !{!2755, !2756, !"quoting_options_from_style: argument 0"}
!2756 = distinct !{!2756, !"quoting_options_from_style"}
!2757 = !DILocation(line: 957, column: 36, scope: !2743)
!2758 = !DILocalVariable(name: "style", arg: 1, scope: !2759, file: !80, line: 193, type: !5)
!2759 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !80, file: !80, line: 193, type: !2760, scopeLine: 194, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !79, retainedNodes: !2762)
!2760 = !DISubroutineType(types: !2761)
!2761 = !{!100, !5}
!2762 = !{!2758, !2763}
!2763 = !DILocalVariable(name: "o", scope: !2759, file: !80, line: 195, type: !100)
!2764 = !DILocation(line: 0, scope: !2759, inlinedAt: !2765)
!2765 = distinct !DILocation(line: 957, column: 36, scope: !2743)
!2766 = !DILocation(line: 195, column: 26, scope: !2759, inlinedAt: !2765)
!2767 = !DILocation(line: 196, column: 13, scope: !2768, inlinedAt: !2765)
!2768 = distinct !DILexicalBlock(scope: !2759, file: !80, line: 196, column: 7)
!2769 = !DILocation(line: 196, column: 7, scope: !2759, inlinedAt: !2765)
!2770 = !DILocation(line: 197, column: 5, scope: !2768, inlinedAt: !2765)
!2771 = !DILocation(line: 198, column: 5, scope: !2759, inlinedAt: !2765)
!2772 = !DILocation(line: 198, column: 11, scope: !2759, inlinedAt: !2765)
!2773 = !DILocation(line: 958, column: 10, scope: !2743)
!2774 = !DILocation(line: 959, column: 1, scope: !2743)
!2775 = !DILocation(line: 958, column: 3, scope: !2743)
!2776 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !80, file: !80, line: 962, type: !2777, scopeLine: 964, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !79, retainedNodes: !2779)
!2777 = !DISubroutineType(types: !2778)
!2778 = !{!37, !39, !5, !50, !88}
!2779 = !{!2780, !2781, !2782, !2783, !2784}
!2780 = !DILocalVariable(name: "n", arg: 1, scope: !2776, file: !80, line: 962, type: !39)
!2781 = !DILocalVariable(name: "s", arg: 2, scope: !2776, file: !80, line: 962, type: !5)
!2782 = !DILocalVariable(name: "arg", arg: 3, scope: !2776, file: !80, line: 963, type: !50)
!2783 = !DILocalVariable(name: "argsize", arg: 4, scope: !2776, file: !80, line: 963, type: !88)
!2784 = !DILocalVariable(name: "o", scope: !2776, file: !80, line: 965, type: !1679)
!2785 = !DILocation(line: 0, scope: !2776)
!2786 = !DILocation(line: 965, column: 3, scope: !2776)
!2787 = !DILocation(line: 965, column: 32, scope: !2776)
!2788 = !{!2789}
!2789 = distinct !{!2789, !2790, !"quoting_options_from_style: argument 0"}
!2790 = distinct !{!2790, !"quoting_options_from_style"}
!2791 = !DILocation(line: 965, column: 36, scope: !2776)
!2792 = !DILocation(line: 0, scope: !2759, inlinedAt: !2793)
!2793 = distinct !DILocation(line: 965, column: 36, scope: !2776)
!2794 = !DILocation(line: 195, column: 26, scope: !2759, inlinedAt: !2793)
!2795 = !DILocation(line: 196, column: 13, scope: !2768, inlinedAt: !2793)
!2796 = !DILocation(line: 196, column: 7, scope: !2759, inlinedAt: !2793)
!2797 = !DILocation(line: 197, column: 5, scope: !2768, inlinedAt: !2793)
!2798 = !DILocation(line: 198, column: 5, scope: !2759, inlinedAt: !2793)
!2799 = !DILocation(line: 198, column: 11, scope: !2759, inlinedAt: !2793)
!2800 = !DILocation(line: 966, column: 10, scope: !2776)
!2801 = !DILocation(line: 967, column: 1, scope: !2776)
!2802 = !DILocation(line: 966, column: 3, scope: !2776)
!2803 = distinct !DISubprogram(name: "quotearg_style", scope: !80, file: !80, line: 970, type: !2804, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !79, retainedNodes: !2806)
!2804 = !DISubroutineType(types: !2805)
!2805 = !{!37, !5, !50}
!2806 = !{!2807, !2808}
!2807 = !DILocalVariable(name: "s", arg: 1, scope: !2803, file: !80, line: 970, type: !5)
!2808 = !DILocalVariable(name: "arg", arg: 2, scope: !2803, file: !80, line: 970, type: !50)
!2809 = !DILocation(line: 0, scope: !2803)
!2810 = !DILocation(line: 0, scope: !2743, inlinedAt: !2811)
!2811 = distinct !DILocation(line: 972, column: 10, scope: !2803)
!2812 = !DILocation(line: 957, column: 3, scope: !2743, inlinedAt: !2811)
!2813 = !DILocation(line: 957, column: 32, scope: !2743, inlinedAt: !2811)
!2814 = !{!2815}
!2815 = distinct !{!2815, !2816, !"quoting_options_from_style: argument 0"}
!2816 = distinct !{!2816, !"quoting_options_from_style"}
!2817 = !DILocation(line: 957, column: 36, scope: !2743, inlinedAt: !2811)
!2818 = !DILocation(line: 0, scope: !2759, inlinedAt: !2819)
!2819 = distinct !DILocation(line: 957, column: 36, scope: !2743, inlinedAt: !2811)
!2820 = !DILocation(line: 195, column: 26, scope: !2759, inlinedAt: !2819)
!2821 = !DILocation(line: 196, column: 13, scope: !2768, inlinedAt: !2819)
!2822 = !DILocation(line: 196, column: 7, scope: !2759, inlinedAt: !2819)
!2823 = !DILocation(line: 197, column: 5, scope: !2768, inlinedAt: !2819)
!2824 = !DILocation(line: 198, column: 5, scope: !2759, inlinedAt: !2819)
!2825 = !DILocation(line: 198, column: 11, scope: !2759, inlinedAt: !2819)
!2826 = !DILocation(line: 958, column: 10, scope: !2743, inlinedAt: !2811)
!2827 = !DILocation(line: 959, column: 1, scope: !2743, inlinedAt: !2811)
!2828 = !DILocation(line: 972, column: 3, scope: !2803)
!2829 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !80, file: !80, line: 976, type: !2830, scopeLine: 977, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !79, retainedNodes: !2832)
!2830 = !DISubroutineType(types: !2831)
!2831 = !{!37, !5, !50, !88}
!2832 = !{!2833, !2834, !2835}
!2833 = !DILocalVariable(name: "s", arg: 1, scope: !2829, file: !80, line: 976, type: !5)
!2834 = !DILocalVariable(name: "arg", arg: 2, scope: !2829, file: !80, line: 976, type: !50)
!2835 = !DILocalVariable(name: "argsize", arg: 3, scope: !2829, file: !80, line: 976, type: !88)
!2836 = !DILocation(line: 0, scope: !2829)
!2837 = !DILocation(line: 0, scope: !2776, inlinedAt: !2838)
!2838 = distinct !DILocation(line: 978, column: 10, scope: !2829)
!2839 = !DILocation(line: 965, column: 3, scope: !2776, inlinedAt: !2838)
!2840 = !DILocation(line: 965, column: 32, scope: !2776, inlinedAt: !2838)
!2841 = !{!2842}
!2842 = distinct !{!2842, !2843, !"quoting_options_from_style: argument 0"}
!2843 = distinct !{!2843, !"quoting_options_from_style"}
!2844 = !DILocation(line: 965, column: 36, scope: !2776, inlinedAt: !2838)
!2845 = !DILocation(line: 0, scope: !2759, inlinedAt: !2846)
!2846 = distinct !DILocation(line: 965, column: 36, scope: !2776, inlinedAt: !2838)
!2847 = !DILocation(line: 195, column: 26, scope: !2759, inlinedAt: !2846)
!2848 = !DILocation(line: 196, column: 13, scope: !2768, inlinedAt: !2846)
!2849 = !DILocation(line: 196, column: 7, scope: !2759, inlinedAt: !2846)
!2850 = !DILocation(line: 197, column: 5, scope: !2768, inlinedAt: !2846)
!2851 = !DILocation(line: 198, column: 5, scope: !2759, inlinedAt: !2846)
!2852 = !DILocation(line: 198, column: 11, scope: !2759, inlinedAt: !2846)
!2853 = !DILocation(line: 966, column: 10, scope: !2776, inlinedAt: !2838)
!2854 = !DILocation(line: 967, column: 1, scope: !2776, inlinedAt: !2838)
!2855 = !DILocation(line: 978, column: 3, scope: !2829)
!2856 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !80, file: !80, line: 982, type: !2857, scopeLine: 983, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !79, retainedNodes: !2859)
!2857 = !DISubroutineType(types: !2858)
!2858 = !{!37, !50, !88, !38}
!2859 = !{!2860, !2861, !2862, !2863}
!2860 = !DILocalVariable(name: "arg", arg: 1, scope: !2856, file: !80, line: 982, type: !50)
!2861 = !DILocalVariable(name: "argsize", arg: 2, scope: !2856, file: !80, line: 982, type: !88)
!2862 = !DILocalVariable(name: "ch", arg: 3, scope: !2856, file: !80, line: 982, type: !38)
!2863 = !DILocalVariable(name: "options", scope: !2856, file: !80, line: 984, type: !100)
!2864 = !DILocation(line: 0, scope: !2856)
!2865 = !DILocation(line: 984, column: 3, scope: !2856)
!2866 = !DILocation(line: 984, column: 26, scope: !2856)
!2867 = !DILocation(line: 985, column: 13, scope: !2856)
!2868 = !{i64 0, i64 4, !937, i64 4, i64 4, !1228, i64 8, i64 32, !937, i64 40, i64 8, !727, i64 48, i64 8, !727}
!2869 = !DILocation(line: 0, scope: !1699, inlinedAt: !2870)
!2870 = distinct !DILocation(line: 986, column: 3, scope: !2856)
!2871 = !DILocation(line: 156, column: 62, scope: !1699, inlinedAt: !2870)
!2872 = !DILocation(line: 156, column: 57, scope: !1699, inlinedAt: !2870)
!2873 = !DILocation(line: 157, column: 15, scope: !1699, inlinedAt: !2870)
!2874 = !DILocation(line: 158, column: 12, scope: !1699, inlinedAt: !2870)
!2875 = !DILocation(line: 158, column: 15, scope: !1699, inlinedAt: !2870)
!2876 = !DILocation(line: 158, column: 25, scope: !1699, inlinedAt: !2870)
!2877 = !DILocation(line: 159, column: 18, scope: !1699, inlinedAt: !2870)
!2878 = !DILocation(line: 159, column: 23, scope: !1699, inlinedAt: !2870)
!2879 = !DILocation(line: 159, column: 6, scope: !1699, inlinedAt: !2870)
!2880 = !DILocation(line: 987, column: 10, scope: !2856)
!2881 = !DILocation(line: 988, column: 1, scope: !2856)
!2882 = !DILocation(line: 987, column: 3, scope: !2856)
!2883 = distinct !DISubprogram(name: "quotearg_char", scope: !80, file: !80, line: 991, type: !2884, scopeLine: 992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !79, retainedNodes: !2886)
!2884 = !DISubroutineType(types: !2885)
!2885 = !{!37, !50, !38}
!2886 = !{!2887, !2888}
!2887 = !DILocalVariable(name: "arg", arg: 1, scope: !2883, file: !80, line: 991, type: !50)
!2888 = !DILocalVariable(name: "ch", arg: 2, scope: !2883, file: !80, line: 991, type: !38)
!2889 = !DILocation(line: 0, scope: !2883)
!2890 = !DILocation(line: 0, scope: !2856, inlinedAt: !2891)
!2891 = distinct !DILocation(line: 993, column: 10, scope: !2883)
!2892 = !DILocation(line: 984, column: 3, scope: !2856, inlinedAt: !2891)
!2893 = !DILocation(line: 984, column: 26, scope: !2856, inlinedAt: !2891)
!2894 = !DILocation(line: 985, column: 13, scope: !2856, inlinedAt: !2891)
!2895 = !DILocation(line: 0, scope: !1699, inlinedAt: !2896)
!2896 = distinct !DILocation(line: 986, column: 3, scope: !2856, inlinedAt: !2891)
!2897 = !DILocation(line: 156, column: 62, scope: !1699, inlinedAt: !2896)
!2898 = !DILocation(line: 156, column: 57, scope: !1699, inlinedAt: !2896)
!2899 = !DILocation(line: 157, column: 15, scope: !1699, inlinedAt: !2896)
!2900 = !DILocation(line: 158, column: 12, scope: !1699, inlinedAt: !2896)
!2901 = !DILocation(line: 158, column: 15, scope: !1699, inlinedAt: !2896)
!2902 = !DILocation(line: 158, column: 25, scope: !1699, inlinedAt: !2896)
!2903 = !DILocation(line: 159, column: 18, scope: !1699, inlinedAt: !2896)
!2904 = !DILocation(line: 159, column: 23, scope: !1699, inlinedAt: !2896)
!2905 = !DILocation(line: 159, column: 6, scope: !1699, inlinedAt: !2896)
!2906 = !DILocation(line: 987, column: 10, scope: !2856, inlinedAt: !2891)
!2907 = !DILocation(line: 988, column: 1, scope: !2856, inlinedAt: !2891)
!2908 = !DILocation(line: 993, column: 3, scope: !2883)
!2909 = distinct !DISubprogram(name: "quotearg_colon", scope: !80, file: !80, line: 997, type: !1327, scopeLine: 998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !79, retainedNodes: !2910)
!2910 = !{!2911}
!2911 = !DILocalVariable(name: "arg", arg: 1, scope: !2909, file: !80, line: 997, type: !50)
!2912 = !DILocation(line: 0, scope: !2909)
!2913 = !DILocation(line: 0, scope: !2883, inlinedAt: !2914)
!2914 = distinct !DILocation(line: 999, column: 10, scope: !2909)
!2915 = !DILocation(line: 0, scope: !2856, inlinedAt: !2916)
!2916 = distinct !DILocation(line: 993, column: 10, scope: !2883, inlinedAt: !2914)
!2917 = !DILocation(line: 984, column: 3, scope: !2856, inlinedAt: !2916)
!2918 = !DILocation(line: 984, column: 26, scope: !2856, inlinedAt: !2916)
!2919 = !DILocation(line: 985, column: 13, scope: !2856, inlinedAt: !2916)
!2920 = !DILocation(line: 0, scope: !1699, inlinedAt: !2921)
!2921 = distinct !DILocation(line: 986, column: 3, scope: !2856, inlinedAt: !2916)
!2922 = !DILocation(line: 156, column: 57, scope: !1699, inlinedAt: !2921)
!2923 = !DILocation(line: 158, column: 12, scope: !1699, inlinedAt: !2921)
!2924 = !DILocation(line: 159, column: 6, scope: !1699, inlinedAt: !2921)
!2925 = !DILocation(line: 987, column: 10, scope: !2856, inlinedAt: !2916)
!2926 = !DILocation(line: 988, column: 1, scope: !2856, inlinedAt: !2916)
!2927 = !DILocation(line: 999, column: 3, scope: !2909)
!2928 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !80, file: !80, line: 1003, type: !2733, scopeLine: 1004, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !79, retainedNodes: !2929)
!2929 = !{!2930, !2931}
!2930 = !DILocalVariable(name: "arg", arg: 1, scope: !2928, file: !80, line: 1003, type: !50)
!2931 = !DILocalVariable(name: "argsize", arg: 2, scope: !2928, file: !80, line: 1003, type: !88)
!2932 = !DILocation(line: 0, scope: !2928)
!2933 = !DILocation(line: 0, scope: !2856, inlinedAt: !2934)
!2934 = distinct !DILocation(line: 1005, column: 10, scope: !2928)
!2935 = !DILocation(line: 984, column: 3, scope: !2856, inlinedAt: !2934)
!2936 = !DILocation(line: 984, column: 26, scope: !2856, inlinedAt: !2934)
!2937 = !DILocation(line: 985, column: 13, scope: !2856, inlinedAt: !2934)
!2938 = !DILocation(line: 0, scope: !1699, inlinedAt: !2939)
!2939 = distinct !DILocation(line: 986, column: 3, scope: !2856, inlinedAt: !2934)
!2940 = !DILocation(line: 156, column: 57, scope: !1699, inlinedAt: !2939)
!2941 = !DILocation(line: 158, column: 12, scope: !1699, inlinedAt: !2939)
!2942 = !DILocation(line: 159, column: 6, scope: !1699, inlinedAt: !2939)
!2943 = !DILocation(line: 987, column: 10, scope: !2856, inlinedAt: !2934)
!2944 = !DILocation(line: 988, column: 1, scope: !2856, inlinedAt: !2934)
!2945 = !DILocation(line: 1005, column: 3, scope: !2928)
!2946 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !80, file: !80, line: 1009, type: !2744, scopeLine: 1010, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !79, retainedNodes: !2947)
!2947 = !{!2948, !2949, !2950, !2951}
!2948 = !DILocalVariable(name: "n", arg: 1, scope: !2946, file: !80, line: 1009, type: !39)
!2949 = !DILocalVariable(name: "s", arg: 2, scope: !2946, file: !80, line: 1009, type: !5)
!2950 = !DILocalVariable(name: "arg", arg: 3, scope: !2946, file: !80, line: 1009, type: !50)
!2951 = !DILocalVariable(name: "options", scope: !2946, file: !80, line: 1011, type: !100)
!2952 = !DILocation(line: 195, column: 26, scope: !2759, inlinedAt: !2953)
!2953 = distinct !DILocation(line: 1012, column: 13, scope: !2946)
!2954 = !DILocation(line: 0, scope: !2946)
!2955 = !DILocation(line: 1011, column: 3, scope: !2946)
!2956 = !DILocation(line: 1011, column: 26, scope: !2946)
!2957 = !DILocation(line: 1012, column: 13, scope: !2946)
!2958 = !{!2959}
!2959 = distinct !{!2959, !2960, !"quoting_options_from_style: argument 0"}
!2960 = distinct !{!2960, !"quoting_options_from_style"}
!2961 = !DILocation(line: 0, scope: !2759, inlinedAt: !2953)
!2962 = !DILocation(line: 196, column: 13, scope: !2768, inlinedAt: !2953)
!2963 = !DILocation(line: 196, column: 7, scope: !2759, inlinedAt: !2953)
!2964 = !DILocation(line: 197, column: 5, scope: !2768, inlinedAt: !2953)
!2965 = !{i64 0, i64 4, !1228, i64 4, i64 32, !937, i64 36, i64 8, !727, i64 44, i64 8, !727}
!2966 = !DILocation(line: 0, scope: !1699, inlinedAt: !2967)
!2967 = distinct !DILocation(line: 1013, column: 3, scope: !2946)
!2968 = !DILocation(line: 156, column: 57, scope: !1699, inlinedAt: !2967)
!2969 = !DILocation(line: 158, column: 12, scope: !1699, inlinedAt: !2967)
!2970 = !DILocation(line: 159, column: 6, scope: !1699, inlinedAt: !2967)
!2971 = !DILocation(line: 1014, column: 10, scope: !2946)
!2972 = !DILocation(line: 1015, column: 1, scope: !2946)
!2973 = !DILocation(line: 1014, column: 3, scope: !2946)
!2974 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !80, file: !80, line: 1018, type: !2975, scopeLine: 1020, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !79, retainedNodes: !2977)
!2975 = !DISubroutineType(types: !2976)
!2976 = !{!37, !39, !50, !50, !50}
!2977 = !{!2978, !2979, !2980, !2981}
!2978 = !DILocalVariable(name: "n", arg: 1, scope: !2974, file: !80, line: 1018, type: !39)
!2979 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2974, file: !80, line: 1018, type: !50)
!2980 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2974, file: !80, line: 1019, type: !50)
!2981 = !DILocalVariable(name: "arg", arg: 4, scope: !2974, file: !80, line: 1019, type: !50)
!2982 = !DILocation(line: 0, scope: !2974)
!2983 = !DILocalVariable(name: "n", arg: 1, scope: !2984, file: !80, line: 1026, type: !39)
!2984 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !80, file: !80, line: 1026, type: !2985, scopeLine: 1029, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !79, retainedNodes: !2987)
!2985 = !DISubroutineType(types: !2986)
!2986 = !{!37, !39, !50, !50, !50, !88}
!2987 = !{!2983, !2988, !2989, !2990, !2991, !2992}
!2988 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2984, file: !80, line: 1026, type: !50)
!2989 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2984, file: !80, line: 1027, type: !50)
!2990 = !DILocalVariable(name: "arg", arg: 4, scope: !2984, file: !80, line: 1028, type: !50)
!2991 = !DILocalVariable(name: "argsize", arg: 5, scope: !2984, file: !80, line: 1028, type: !88)
!2992 = !DILocalVariable(name: "o", scope: !2984, file: !80, line: 1030, type: !100)
!2993 = !DILocation(line: 0, scope: !2984, inlinedAt: !2994)
!2994 = distinct !DILocation(line: 1021, column: 10, scope: !2974)
!2995 = !DILocation(line: 1030, column: 3, scope: !2984, inlinedAt: !2994)
!2996 = !DILocation(line: 1030, column: 26, scope: !2984, inlinedAt: !2994)
!2997 = !DILocation(line: 1030, column: 30, scope: !2984, inlinedAt: !2994)
!2998 = !DILocation(line: 0, scope: !1739, inlinedAt: !2999)
!2999 = distinct !DILocation(line: 1031, column: 3, scope: !2984, inlinedAt: !2994)
!3000 = !DILocation(line: 184, column: 6, scope: !1739, inlinedAt: !2999)
!3001 = !DILocation(line: 184, column: 12, scope: !1739, inlinedAt: !2999)
!3002 = !DILocation(line: 185, column: 8, scope: !1753, inlinedAt: !2999)
!3003 = !DILocation(line: 185, column: 19, scope: !1753, inlinedAt: !2999)
!3004 = !DILocation(line: 186, column: 5, scope: !1753, inlinedAt: !2999)
!3005 = !DILocation(line: 187, column: 6, scope: !1739, inlinedAt: !2999)
!3006 = !DILocation(line: 187, column: 17, scope: !1739, inlinedAt: !2999)
!3007 = !DILocation(line: 188, column: 6, scope: !1739, inlinedAt: !2999)
!3008 = !DILocation(line: 188, column: 18, scope: !1739, inlinedAt: !2999)
!3009 = !DILocation(line: 1032, column: 10, scope: !2984, inlinedAt: !2994)
!3010 = !DILocation(line: 1033, column: 1, scope: !2984, inlinedAt: !2994)
!3011 = !DILocation(line: 1021, column: 3, scope: !2974)
!3012 = !DILocation(line: 0, scope: !2984)
!3013 = !DILocation(line: 1030, column: 3, scope: !2984)
!3014 = !DILocation(line: 1030, column: 26, scope: !2984)
!3015 = !DILocation(line: 1030, column: 30, scope: !2984)
!3016 = !DILocation(line: 0, scope: !1739, inlinedAt: !3017)
!3017 = distinct !DILocation(line: 1031, column: 3, scope: !2984)
!3018 = !DILocation(line: 184, column: 6, scope: !1739, inlinedAt: !3017)
!3019 = !DILocation(line: 184, column: 12, scope: !1739, inlinedAt: !3017)
!3020 = !DILocation(line: 185, column: 8, scope: !1753, inlinedAt: !3017)
!3021 = !DILocation(line: 185, column: 19, scope: !1753, inlinedAt: !3017)
!3022 = !DILocation(line: 186, column: 5, scope: !1753, inlinedAt: !3017)
!3023 = !DILocation(line: 187, column: 6, scope: !1739, inlinedAt: !3017)
!3024 = !DILocation(line: 187, column: 17, scope: !1739, inlinedAt: !3017)
!3025 = !DILocation(line: 188, column: 6, scope: !1739, inlinedAt: !3017)
!3026 = !DILocation(line: 188, column: 18, scope: !1739, inlinedAt: !3017)
!3027 = !DILocation(line: 1032, column: 10, scope: !2984)
!3028 = !DILocation(line: 1033, column: 1, scope: !2984)
!3029 = !DILocation(line: 1032, column: 3, scope: !2984)
!3030 = distinct !DISubprogram(name: "quotearg_custom", scope: !80, file: !80, line: 1036, type: !3031, scopeLine: 1038, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !79, retainedNodes: !3033)
!3031 = !DISubroutineType(types: !3032)
!3032 = !{!37, !50, !50, !50}
!3033 = !{!3034, !3035, !3036}
!3034 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3030, file: !80, line: 1036, type: !50)
!3035 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3030, file: !80, line: 1036, type: !50)
!3036 = !DILocalVariable(name: "arg", arg: 3, scope: !3030, file: !80, line: 1037, type: !50)
!3037 = !DILocation(line: 0, scope: !3030)
!3038 = !DILocation(line: 0, scope: !2974, inlinedAt: !3039)
!3039 = distinct !DILocation(line: 1039, column: 10, scope: !3030)
!3040 = !DILocation(line: 0, scope: !2984, inlinedAt: !3041)
!3041 = distinct !DILocation(line: 1021, column: 10, scope: !2974, inlinedAt: !3039)
!3042 = !DILocation(line: 1030, column: 3, scope: !2984, inlinedAt: !3041)
!3043 = !DILocation(line: 1030, column: 26, scope: !2984, inlinedAt: !3041)
!3044 = !DILocation(line: 1030, column: 30, scope: !2984, inlinedAt: !3041)
!3045 = !DILocation(line: 0, scope: !1739, inlinedAt: !3046)
!3046 = distinct !DILocation(line: 1031, column: 3, scope: !2984, inlinedAt: !3041)
!3047 = !DILocation(line: 184, column: 6, scope: !1739, inlinedAt: !3046)
!3048 = !DILocation(line: 184, column: 12, scope: !1739, inlinedAt: !3046)
!3049 = !DILocation(line: 185, column: 8, scope: !1753, inlinedAt: !3046)
!3050 = !DILocation(line: 185, column: 19, scope: !1753, inlinedAt: !3046)
!3051 = !DILocation(line: 186, column: 5, scope: !1753, inlinedAt: !3046)
!3052 = !DILocation(line: 187, column: 6, scope: !1739, inlinedAt: !3046)
!3053 = !DILocation(line: 187, column: 17, scope: !1739, inlinedAt: !3046)
!3054 = !DILocation(line: 188, column: 6, scope: !1739, inlinedAt: !3046)
!3055 = !DILocation(line: 188, column: 18, scope: !1739, inlinedAt: !3046)
!3056 = !DILocation(line: 1032, column: 10, scope: !2984, inlinedAt: !3041)
!3057 = !DILocation(line: 1033, column: 1, scope: !2984, inlinedAt: !3041)
!3058 = !DILocation(line: 1039, column: 3, scope: !3030)
!3059 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !80, file: !80, line: 1043, type: !3060, scopeLine: 1045, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !79, retainedNodes: !3062)
!3060 = !DISubroutineType(types: !3061)
!3061 = !{!37, !50, !50, !50, !88}
!3062 = !{!3063, !3064, !3065, !3066}
!3063 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3059, file: !80, line: 1043, type: !50)
!3064 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3059, file: !80, line: 1043, type: !50)
!3065 = !DILocalVariable(name: "arg", arg: 3, scope: !3059, file: !80, line: 1044, type: !50)
!3066 = !DILocalVariable(name: "argsize", arg: 4, scope: !3059, file: !80, line: 1044, type: !88)
!3067 = !DILocation(line: 0, scope: !3059)
!3068 = !DILocation(line: 0, scope: !2984, inlinedAt: !3069)
!3069 = distinct !DILocation(line: 1046, column: 10, scope: !3059)
!3070 = !DILocation(line: 1030, column: 3, scope: !2984, inlinedAt: !3069)
!3071 = !DILocation(line: 1030, column: 26, scope: !2984, inlinedAt: !3069)
!3072 = !DILocation(line: 1030, column: 30, scope: !2984, inlinedAt: !3069)
!3073 = !DILocation(line: 0, scope: !1739, inlinedAt: !3074)
!3074 = distinct !DILocation(line: 1031, column: 3, scope: !2984, inlinedAt: !3069)
!3075 = !DILocation(line: 184, column: 6, scope: !1739, inlinedAt: !3074)
!3076 = !DILocation(line: 184, column: 12, scope: !1739, inlinedAt: !3074)
!3077 = !DILocation(line: 185, column: 8, scope: !1753, inlinedAt: !3074)
!3078 = !DILocation(line: 185, column: 19, scope: !1753, inlinedAt: !3074)
!3079 = !DILocation(line: 186, column: 5, scope: !1753, inlinedAt: !3074)
!3080 = !DILocation(line: 187, column: 6, scope: !1739, inlinedAt: !3074)
!3081 = !DILocation(line: 187, column: 17, scope: !1739, inlinedAt: !3074)
!3082 = !DILocation(line: 188, column: 6, scope: !1739, inlinedAt: !3074)
!3083 = !DILocation(line: 188, column: 18, scope: !1739, inlinedAt: !3074)
!3084 = !DILocation(line: 1032, column: 10, scope: !2984, inlinedAt: !3069)
!3085 = !DILocation(line: 1033, column: 1, scope: !2984, inlinedAt: !3069)
!3086 = !DILocation(line: 1046, column: 3, scope: !3059)
!3087 = distinct !DISubprogram(name: "quote_n_mem", scope: !80, file: !80, line: 1061, type: !3088, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !79, retainedNodes: !3090)
!3088 = !DISubroutineType(types: !3089)
!3089 = !{!50, !39, !50, !88}
!3090 = !{!3091, !3092, !3093}
!3091 = !DILocalVariable(name: "n", arg: 1, scope: !3087, file: !80, line: 1061, type: !39)
!3092 = !DILocalVariable(name: "arg", arg: 2, scope: !3087, file: !80, line: 1061, type: !50)
!3093 = !DILocalVariable(name: "argsize", arg: 3, scope: !3087, file: !80, line: 1061, type: !88)
!3094 = !DILocation(line: 0, scope: !3087)
!3095 = !DILocation(line: 1063, column: 10, scope: !3087)
!3096 = !DILocation(line: 1063, column: 3, scope: !3087)
!3097 = distinct !DISubprogram(name: "quote_mem", scope: !80, file: !80, line: 1067, type: !3098, scopeLine: 1068, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !79, retainedNodes: !3100)
!3098 = !DISubroutineType(types: !3099)
!3099 = !{!50, !50, !88}
!3100 = !{!3101, !3102}
!3101 = !DILocalVariable(name: "arg", arg: 1, scope: !3097, file: !80, line: 1067, type: !50)
!3102 = !DILocalVariable(name: "argsize", arg: 2, scope: !3097, file: !80, line: 1067, type: !88)
!3103 = !DILocation(line: 0, scope: !3097)
!3104 = !DILocation(line: 0, scope: !3087, inlinedAt: !3105)
!3105 = distinct !DILocation(line: 1069, column: 10, scope: !3097)
!3106 = !DILocation(line: 1063, column: 10, scope: !3087, inlinedAt: !3105)
!3107 = !DILocation(line: 1069, column: 3, scope: !3097)
!3108 = distinct !DISubprogram(name: "quote_n", scope: !80, file: !80, line: 1073, type: !3109, scopeLine: 1074, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !79, retainedNodes: !3111)
!3109 = !DISubroutineType(types: !3110)
!3110 = !{!50, !39, !50}
!3111 = !{!3112, !3113}
!3112 = !DILocalVariable(name: "n", arg: 1, scope: !3108, file: !80, line: 1073, type: !39)
!3113 = !DILocalVariable(name: "arg", arg: 2, scope: !3108, file: !80, line: 1073, type: !50)
!3114 = !DILocation(line: 0, scope: !3108)
!3115 = !DILocation(line: 0, scope: !3087, inlinedAt: !3116)
!3116 = distinct !DILocation(line: 1075, column: 10, scope: !3108)
!3117 = !DILocation(line: 1063, column: 10, scope: !3087, inlinedAt: !3116)
!3118 = !DILocation(line: 1075, column: 3, scope: !3108)
!3119 = distinct !DISubprogram(name: "quote", scope: !80, file: !80, line: 1079, type: !3120, scopeLine: 1080, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !79, retainedNodes: !3122)
!3120 = !DISubroutineType(types: !3121)
!3121 = !{!50, !50}
!3122 = !{!3123}
!3123 = !DILocalVariable(name: "arg", arg: 1, scope: !3119, file: !80, line: 1079, type: !50)
!3124 = !DILocation(line: 0, scope: !3119)
!3125 = !DILocation(line: 0, scope: !3108, inlinedAt: !3126)
!3126 = distinct !DILocation(line: 1081, column: 10, scope: !3119)
!3127 = !DILocation(line: 0, scope: !3087, inlinedAt: !3128)
!3128 = distinct !DILocation(line: 1075, column: 10, scope: !3108, inlinedAt: !3126)
!3129 = !DILocation(line: 1063, column: 10, scope: !3087, inlinedAt: !3128)
!3130 = !DILocation(line: 1081, column: 3, scope: !3119)
!3131 = !DILocation(line: 0, scope: !133)
!3132 = !DILocation(line: 77, column: 3, scope: !133)
!3133 = !DILocation(line: 77, column: 8, scope: !133)
!3134 = !DILocation(line: 80, column: 8, scope: !222)
!3135 = !DILocation(line: 80, column: 7, scope: !133)
!3136 = !DILocation(line: 82, column: 29, scope: !221)
!3137 = !DILocation(line: 0, scope: !221)
!3138 = !DILocation(line: 84, column: 18, scope: !221)
!3139 = !DILocation(line: 84, column: 17, scope: !221)
!3140 = !DILocation(line: 84, column: 15, scope: !221)
!3141 = !DILocation(line: 86, column: 11, scope: !221)
!3142 = !DILocation(line: 88, column: 27, scope: !3143)
!3143 = distinct !DILexicalBlock(scope: !3144, file: !134, line: 87, column: 9)
!3144 = distinct !DILexicalBlock(scope: !221, file: !134, line: 86, column: 11)
!3145 = !DILocation(line: 88, column: 25, scope: !3143)
!3146 = !DILocation(line: 89, column: 29, scope: !3147)
!3147 = distinct !DILexicalBlock(scope: !3143, file: !134, line: 89, column: 15)
!3148 = !DILocation(line: 89, column: 15, scope: !3143)
!3149 = !DILocation(line: 91, column: 29, scope: !3147)
!3150 = !DILocation(line: 91, column: 27, scope: !3147)
!3151 = !DILocation(line: 91, column: 13, scope: !3147)
!3152 = !DILocation(line: 94, column: 19, scope: !221)
!3153 = !DILocation(line: 95, column: 5, scope: !221)
!3154 = !DILocation(line: 98, column: 8, scope: !3155)
!3155 = distinct !DILexicalBlock(scope: !133, file: !134, line: 98, column: 7)
!3156 = !DILocation(line: 98, column: 7, scope: !133)
!3157 = !DILocation(line: 102, column: 16, scope: !3158)
!3158 = distinct !DILexicalBlock(scope: !3159, file: !134, line: 101, column: 11)
!3159 = distinct !DILexicalBlock(scope: !3155, file: !134, line: 99, column: 5)
!3160 = !DILocation(line: 102, column: 9, scope: !3158)
!3161 = !DILocalVariable(name: "s", arg: 1, scope: !3162, file: !3163, line: 315, type: !3166)
!3162 = distinct !DISubprogram(name: "u8_uctomb", scope: !3163, file: !3163, line: 315, type: !3164, scopeLine: 316, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !144, retainedNodes: !3174)
!3163 = !DIFile(filename: "./lib/unistr.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!3164 = !DISubroutineType(types: !3165)
!3165 = !{!39, !3166, !3170, !39}
!3166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3167, size: 64)
!3167 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !3168, line: 24, baseType: !3169)
!3168 = !DIFile(filename: "/usr/include/bits/stdint-uintn.h", directory: "")
!3169 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !177, line: 38, baseType: !40)
!3170 = !DIDerivedType(tag: DW_TAG_typedef, name: "ucs4_t", file: !3171, line: 25, baseType: !3172)
!3171 = !DIFile(filename: "./lib/unitypes.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!3172 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !3168, line: 26, baseType: !3173)
!3173 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !177, line: 42, baseType: !7)
!3174 = !{!3161, !3175, !3176}
!3175 = !DILocalVariable(name: "uc", arg: 2, scope: !3162, file: !3163, line: 315, type: !3170)
!3176 = !DILocalVariable(name: "n", arg: 3, scope: !3162, file: !3163, line: 315, type: !39)
!3177 = !DILocation(line: 0, scope: !3162, inlinedAt: !3178)
!3178 = distinct !DILocation(line: 109, column: 11, scope: !133)
!3179 = !DILocation(line: 317, column: 10, scope: !3180, inlinedAt: !3178)
!3180 = distinct !DILexicalBlock(scope: !3162, file: !3163, line: 317, column: 7)
!3181 = !DILocation(line: 317, column: 17, scope: !3180, inlinedAt: !3178)
!3182 = !DILocation(line: 319, column: 14, scope: !3183, inlinedAt: !3178)
!3183 = distinct !DILexicalBlock(scope: !3180, file: !3163, line: 318, column: 5)
!3184 = !DILocation(line: 319, column: 12, scope: !3183, inlinedAt: !3178)
!3185 = !DILocation(line: 110, column: 7, scope: !133)
!3186 = !DILocation(line: 323, column: 12, scope: !3180, inlinedAt: !3178)
!3187 = !DILocation(line: 110, column: 13, scope: !3188)
!3188 = distinct !DILexicalBlock(scope: !133, file: !134, line: 110, column: 7)
!3189 = !DILocation(line: 114, column: 8, scope: !225)
!3190 = !DILocation(line: 111, column: 12, scope: !3188)
!3191 = !DILocation(line: 111, column: 5, scope: !3188)
!3192 = !DILocation(line: 114, column: 7, scope: !133)
!3193 = !DILocation(line: 116, column: 7, scope: !224)
!3194 = !DILocation(line: 116, column: 12, scope: !224)
!3195 = !DILocation(line: 117, column: 7, scope: !224)
!3196 = !DILocation(line: 118, column: 7, scope: !224)
!3197 = !DILocation(line: 119, column: 7, scope: !224)
!3198 = !DILocation(line: 120, column: 7, scope: !224)
!3199 = !DILocation(line: 0, scope: !224)
!3200 = !DILocation(line: 123, column: 13, scope: !224)
!3201 = !DILocation(line: 124, column: 19, scope: !224)
!3202 = !DILocation(line: 125, column: 14, scope: !224)
!3203 = !DILocation(line: 126, column: 20, scope: !224)
!3204 = !DILocation(line: 129, column: 20, scope: !224)
!3205 = !DILocation(line: 129, column: 13, scope: !224)
!3206 = !DILocation(line: 132, column: 11, scope: !3207)
!3207 = distinct !DILexicalBlock(scope: !224, file: !134, line: 132, column: 11)
!3208 = !DILocation(line: 132, column: 23, scope: !3207)
!3209 = !DILocation(line: 132, column: 27, scope: !3207)
!3210 = !DILocation(line: 138, column: 16, scope: !3207)
!3211 = !DILocation(line: 138, column: 9, scope: !3207)
!3212 = !DILocation(line: 147, column: 20, scope: !224)
!3213 = !DILocation(line: 147, column: 13, scope: !224)
!3214 = !DILocation(line: 148, column: 15, scope: !3215)
!3215 = distinct !DILexicalBlock(scope: !224, file: !134, line: 148, column: 11)
!3216 = !DILocation(line: 148, column: 11, scope: !224)
!3217 = !DILocation(line: 149, column: 16, scope: !3215)
!3218 = !DILocation(line: 149, column: 9, scope: !3215)
!3219 = !DILocation(line: 152, column: 31, scope: !224)
!3220 = !DILocation(line: 152, column: 38, scope: !224)
!3221 = !DILocation(line: 152, column: 14, scope: !224)
!3222 = !DILocation(line: 152, column: 7, scope: !224)
!3223 = !DILocation(line: 153, column: 5, scope: !225)
!3224 = !DILocation(line: 157, column: 10, scope: !133)
!3225 = !DILocation(line: 157, column: 3, scope: !133)
!3226 = !DILocation(line: 158, column: 1, scope: !133)
!3227 = !DISubprogram(name: "iconv_open", scope: !147, file: !147, line: 37, type: !3228, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !56)
!3228 = !DISubroutineType(types: !3229)
!3229 = !{!36, !50, !50}
!3230 = !DISubprogram(name: "iconv", scope: !147, file: !147, line: 42, type: !3231, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !56)
!3231 = !DISubroutineType(types: !3232)
!3232 = !{!90, !36, !149, !3233, !149, !3233}
!3233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !90, size: 64)
!3234 = distinct !DISubprogram(name: "fwrite_success_callback", scope: !134, file: !134, line: 163, type: !139, scopeLine: 164, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !144, retainedNodes: !3235)
!3235 = !{!3236, !3237, !3238, !3239}
!3236 = !DILocalVariable(name: "buf", arg: 1, scope: !3234, file: !134, line: 163, type: !50)
!3237 = !DILocalVariable(name: "buflen", arg: 2, scope: !3234, file: !134, line: 163, type: !88)
!3238 = !DILocalVariable(name: "callback_arg", arg: 3, scope: !3234, file: !134, line: 163, type: !36)
!3239 = !DILocalVariable(name: "stream", scope: !3234, file: !134, line: 165, type: !150)
!3240 = !DILocation(line: 0, scope: !3234)
!3241 = !DILocation(line: 165, column: 18, scope: !3234)
!3242 = !DILocation(line: 171, column: 3, scope: !3234)
!3243 = !DILocation(line: 172, column: 3, scope: !3234)
!3244 = distinct !DISubprogram(name: "print_unicode_char", scope: !134, file: !134, line: 208, type: !3245, scopeLine: 209, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !144, retainedNodes: !3247)
!3245 = !DISubroutineType(types: !3246)
!3246 = !{null, !150, !7, !39}
!3247 = !{!3248, !3249, !3250}
!3248 = !DILocalVariable(name: "stream", arg: 1, scope: !3244, file: !134, line: 208, type: !150)
!3249 = !DILocalVariable(name: "code", arg: 2, scope: !3244, file: !134, line: 208, type: !7)
!3250 = !DILocalVariable(name: "exit_on_error", arg: 3, scope: !3244, file: !134, line: 208, type: !39)
!3251 = !DILocation(line: 0, scope: !3244)
!3252 = !DILocation(line: 211, column: 18, scope: !3244)
!3253 = !DILocation(line: 214, column: 18, scope: !3244)
!3254 = !DILocation(line: 210, column: 3, scope: !3244)
!3255 = !DILocation(line: 215, column: 1, scope: !3244)
!3256 = distinct !DISubprogram(name: "fallback_failure_callback", scope: !134, file: !134, line: 191, type: !142, scopeLine: 194, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !144, retainedNodes: !3257)
!3257 = !{!3258, !3259, !3260, !3261}
!3258 = !DILocalVariable(name: "code", arg: 1, scope: !3256, file: !134, line: 191, type: !7)
!3259 = !DILocalVariable(name: "msg", arg: 2, scope: !3256, file: !134, line: 192, type: !50)
!3260 = !DILocalVariable(name: "callback_arg", arg: 3, scope: !3256, file: !134, line: 193, type: !36)
!3261 = !DILocalVariable(name: "stream", scope: !3256, file: !134, line: 195, type: !150)
!3262 = !DILocation(line: 0, scope: !3256)
!3263 = !DILocation(line: 195, column: 18, scope: !3256)
!3264 = !DILocation(line: 197, column: 12, scope: !3265)
!3265 = distinct !DILexicalBlock(scope: !3256, file: !134, line: 197, column: 7)
!3266 = !DILocation(line: 197, column: 7, scope: !3256)
!3267 = !DILocation(line: 0, scope: !3265)
!3268 = !DILocation(line: 201, column: 3, scope: !3256)
!3269 = distinct !DISubprogram(name: "exit_failure_callback", scope: !134, file: !134, line: 177, type: !142, scopeLine: 179, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !144, retainedNodes: !3270)
!3270 = !{!3271, !3272, !3273}
!3271 = !DILocalVariable(name: "code", arg: 1, scope: !3269, file: !134, line: 177, type: !7)
!3272 = !DILocalVariable(name: "msg", arg: 2, scope: !3269, file: !134, line: 177, type: !50)
!3273 = !DILocalVariable(name: "callback_arg", arg: 3, scope: !3269, file: !134, line: 178, type: !36)
!3274 = !DILocation(line: 0, scope: !3269)
!3275 = !DILocation(line: 180, column: 11, scope: !3276)
!3276 = distinct !DILexicalBlock(scope: !3269, file: !134, line: 180, column: 7)
!3277 = !DILocation(line: 180, column: 7, scope: !3269)
!3278 = !DILocation(line: 181, column: 18, scope: !3276)
!3279 = !DILocation(line: 181, column: 5, scope: !3276)
!3280 = !DILocation(line: 183, column: 18, scope: !3276)
!3281 = !DILocation(line: 184, column: 12, scope: !3276)
!3282 = !DILocation(line: 183, column: 5, scope: !3276)
!3283 = !DILocation(line: 185, column: 3, scope: !3269)
!3284 = distinct !DISubprogram(name: "u8_uctomb_aux", scope: !275, file: !275, line: 32, type: !3164, scopeLine: 33, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !274, retainedNodes: !3285)
!3285 = !{!3286, !3287, !3288, !3289}
!3286 = !DILocalVariable(name: "s", arg: 1, scope: !3284, file: !275, line: 32, type: !3166)
!3287 = !DILocalVariable(name: "uc", arg: 2, scope: !3284, file: !275, line: 32, type: !3170)
!3288 = !DILocalVariable(name: "n", arg: 3, scope: !3284, file: !275, line: 32, type: !39)
!3289 = !DILocalVariable(name: "count", scope: !3284, file: !275, line: 34, type: !39)
!3290 = !DILocation(line: 0, scope: !3284)
!3291 = !DILocation(line: 36, column: 10, scope: !3292)
!3292 = distinct !DILexicalBlock(scope: !3284, file: !275, line: 36, column: 7)
!3293 = !DILocation(line: 36, column: 7, scope: !3284)
!3294 = !DILocation(line: 39, column: 15, scope: !3295)
!3295 = distinct !DILexicalBlock(scope: !3292, file: !275, line: 39, column: 12)
!3296 = !DILocation(line: 39, column: 12, scope: !3292)
!3297 = !DILocation(line: 41, column: 15, scope: !3298)
!3298 = distinct !DILexicalBlock(scope: !3295, file: !275, line: 41, column: 12)
!3299 = !DILocation(line: 41, column: 12, scope: !3295)
!3300 = !DILocation(line: 43, column: 23, scope: !3301)
!3301 = distinct !DILexicalBlock(scope: !3302, file: !275, line: 43, column: 11)
!3302 = distinct !DILexicalBlock(scope: !3298, file: !275, line: 42, column: 5)
!3303 = !DILocation(line: 48, column: 15, scope: !3304)
!3304 = distinct !DILexicalBlock(scope: !3298, file: !275, line: 48, column: 12)
!3305 = !DILocation(line: 48, column: 12, scope: !3298)
!3306 = !DILocation(line: 0, scope: !3295)
!3307 = !DILocation(line: 53, column: 9, scope: !3308)
!3308 = distinct !DILexicalBlock(scope: !3284, file: !275, line: 53, column: 7)
!3309 = !DILocation(line: 53, column: 7, scope: !3284)
!3310 = !DILocation(line: 56, column: 3, scope: !3284)
!3311 = !DILocation(line: 58, column: 20, scope: !3312)
!3312 = distinct !DILexicalBlock(scope: !3284, file: !275, line: 57, column: 5)
!3313 = !DILocation(line: 58, column: 13, scope: !3312)
!3314 = !DILocation(line: 58, column: 18, scope: !3312)
!3315 = !DILocation(line: 58, column: 48, scope: !3312)
!3316 = !DILocation(line: 58, column: 57, scope: !3312)
!3317 = !DILocation(line: 59, column: 7, scope: !3312)
!3318 = !DILocation(line: 60, column: 20, scope: !3312)
!3319 = !DILocation(line: 60, column: 13, scope: !3312)
!3320 = !DILocation(line: 60, column: 18, scope: !3312)
!3321 = !DILocation(line: 60, column: 48, scope: !3312)
!3322 = !DILocation(line: 60, column: 57, scope: !3312)
!3323 = !DILocation(line: 61, column: 7, scope: !3312)
!3324 = !DILocation(line: 62, column: 20, scope: !3312)
!3325 = !DILocation(line: 62, column: 13, scope: !3312)
!3326 = !DILocation(line: 62, column: 18, scope: !3312)
!3327 = !DILocation(line: 62, column: 48, scope: !3312)
!3328 = !DILocation(line: 63, column: 22, scope: !3312)
!3329 = !DILocation(line: 63, column: 20, scope: !3312)
!3330 = !DILocation(line: 64, column: 5, scope: !3312)
!3331 = !DILocation(line: 66, column: 1, scope: !3284)
!3332 = distinct !DISubprogram(name: "version_etc_arn", scope: !277, file: !277, line: 61, type: !3333, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !276, retainedNodes: !3370)
!3333 = !DISubroutineType(types: !3334)
!3334 = !{null, !3335, !50, !50, !50, !3369, !88}
!3335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3336, size: 64)
!3336 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !152, line: 7, baseType: !3337)
!3337 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !154, line: 49, size: 1728, elements: !3338)
!3338 = !{!3339, !3340, !3341, !3342, !3343, !3344, !3345, !3346, !3347, !3348, !3349, !3350, !3351, !3352, !3354, !3355, !3356, !3357, !3358, !3359, !3360, !3361, !3362, !3363, !3364, !3365, !3366, !3367, !3368}
!3339 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3337, file: !154, line: 51, baseType: !39, size: 32)
!3340 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3337, file: !154, line: 54, baseType: !37, size: 64, offset: 64)
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3337, file: !154, line: 55, baseType: !37, size: 64, offset: 128)
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3337, file: !154, line: 56, baseType: !37, size: 64, offset: 192)
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3337, file: !154, line: 57, baseType: !37, size: 64, offset: 256)
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3337, file: !154, line: 58, baseType: !37, size: 64, offset: 320)
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3337, file: !154, line: 59, baseType: !37, size: 64, offset: 384)
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3337, file: !154, line: 60, baseType: !37, size: 64, offset: 448)
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3337, file: !154, line: 61, baseType: !37, size: 64, offset: 512)
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3337, file: !154, line: 64, baseType: !37, size: 64, offset: 576)
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3337, file: !154, line: 65, baseType: !37, size: 64, offset: 640)
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3337, file: !154, line: 66, baseType: !37, size: 64, offset: 704)
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3337, file: !154, line: 68, baseType: !169, size: 64, offset: 768)
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3337, file: !154, line: 70, baseType: !3353, size: 64, offset: 832)
!3353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3337, size: 64)
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3337, file: !154, line: 72, baseType: !39, size: 32, offset: 896)
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3337, file: !154, line: 73, baseType: !39, size: 32, offset: 928)
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3337, file: !154, line: 74, baseType: !176, size: 64, offset: 960)
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3337, file: !154, line: 77, baseType: !41, size: 16, offset: 1024)
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3337, file: !154, line: 78, baseType: !180, size: 8, offset: 1040)
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3337, file: !154, line: 79, baseType: !182, size: 8, offset: 1048)
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3337, file: !154, line: 81, baseType: !186, size: 64, offset: 1088)
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3337, file: !154, line: 89, baseType: !189, size: 64, offset: 1152)
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3337, file: !154, line: 91, baseType: !191, size: 64, offset: 1216)
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3337, file: !154, line: 92, baseType: !194, size: 64, offset: 1280)
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3337, file: !154, line: 93, baseType: !3353, size: 64, offset: 1344)
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3337, file: !154, line: 94, baseType: !36, size: 64, offset: 1408)
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3337, file: !154, line: 95, baseType: !88, size: 64, offset: 1472)
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3337, file: !154, line: 96, baseType: !39, size: 32, offset: 1536)
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3337, file: !154, line: 98, baseType: !201, size: 160, offset: 1568)
!3369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !49, size: 64)
!3370 = !{!3371, !3372, !3373, !3374, !3375, !3376}
!3371 = !DILocalVariable(name: "stream", arg: 1, scope: !3332, file: !277, line: 61, type: !3335)
!3372 = !DILocalVariable(name: "command_name", arg: 2, scope: !3332, file: !277, line: 62, type: !50)
!3373 = !DILocalVariable(name: "package", arg: 3, scope: !3332, file: !277, line: 62, type: !50)
!3374 = !DILocalVariable(name: "version", arg: 4, scope: !3332, file: !277, line: 63, type: !50)
!3375 = !DILocalVariable(name: "authors", arg: 5, scope: !3332, file: !277, line: 64, type: !3369)
!3376 = !DILocalVariable(name: "n_authors", arg: 6, scope: !3332, file: !277, line: 64, type: !88)
!3377 = !DILocation(line: 0, scope: !3332)
!3378 = !DILocation(line: 66, column: 7, scope: !3379)
!3379 = distinct !DILexicalBlock(scope: !3332, file: !277, line: 66, column: 7)
!3380 = !DILocation(line: 66, column: 7, scope: !3332)
!3381 = !DILocation(line: 67, column: 5, scope: !3379)
!3382 = !DILocation(line: 69, column: 5, scope: !3379)
!3383 = !DILocation(line: 83, column: 3, scope: !3332)
!3384 = !DILocation(line: 85, column: 3, scope: !3332)
!3385 = !DILocation(line: 88, column: 3, scope: !3332)
!3386 = !DILocation(line: 95, column: 3, scope: !3332)
!3387 = !DILocation(line: 97, column: 3, scope: !3332)
!3388 = !DILocation(line: 105, column: 7, scope: !3389)
!3389 = distinct !DILexicalBlock(scope: !3332, file: !277, line: 98, column: 5)
!3390 = !DILocation(line: 106, column: 7, scope: !3389)
!3391 = !DILocation(line: 109, column: 7, scope: !3389)
!3392 = !DILocation(line: 110, column: 7, scope: !3389)
!3393 = !DILocation(line: 113, column: 7, scope: !3389)
!3394 = !DILocation(line: 115, column: 7, scope: !3389)
!3395 = !DILocation(line: 120, column: 7, scope: !3389)
!3396 = !DILocation(line: 122, column: 7, scope: !3389)
!3397 = !DILocation(line: 127, column: 7, scope: !3389)
!3398 = !DILocation(line: 129, column: 7, scope: !3389)
!3399 = !DILocation(line: 134, column: 7, scope: !3389)
!3400 = !DILocation(line: 137, column: 7, scope: !3389)
!3401 = !DILocation(line: 142, column: 7, scope: !3389)
!3402 = !DILocation(line: 145, column: 7, scope: !3389)
!3403 = !DILocation(line: 150, column: 7, scope: !3389)
!3404 = !DILocation(line: 154, column: 7, scope: !3389)
!3405 = !DILocation(line: 159, column: 7, scope: !3389)
!3406 = !DILocation(line: 163, column: 7, scope: !3389)
!3407 = !DILocation(line: 170, column: 7, scope: !3389)
!3408 = !DILocation(line: 174, column: 7, scope: !3389)
!3409 = !DILocation(line: 176, column: 1, scope: !3332)
!3410 = distinct !DISubprogram(name: "version_etc_ar", scope: !277, file: !277, line: 183, type: !3411, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !276, retainedNodes: !3413)
!3411 = !DISubroutineType(types: !3412)
!3412 = !{null, !3335, !50, !50, !50, !3369}
!3413 = !{!3414, !3415, !3416, !3417, !3418, !3419}
!3414 = !DILocalVariable(name: "stream", arg: 1, scope: !3410, file: !277, line: 183, type: !3335)
!3415 = !DILocalVariable(name: "command_name", arg: 2, scope: !3410, file: !277, line: 184, type: !50)
!3416 = !DILocalVariable(name: "package", arg: 3, scope: !3410, file: !277, line: 184, type: !50)
!3417 = !DILocalVariable(name: "version", arg: 4, scope: !3410, file: !277, line: 185, type: !50)
!3418 = !DILocalVariable(name: "authors", arg: 5, scope: !3410, file: !277, line: 185, type: !3369)
!3419 = !DILocalVariable(name: "n_authors", scope: !3410, file: !277, line: 187, type: !88)
!3420 = !DILocation(line: 0, scope: !3410)
!3421 = !DILocation(line: 189, column: 8, scope: !3422)
!3422 = distinct !DILexicalBlock(scope: !3410, file: !277, line: 189, column: 3)
!3423 = !DILocation(line: 0, scope: !3422)
!3424 = !DILocation(line: 189, column: 23, scope: !3425)
!3425 = distinct !DILexicalBlock(scope: !3422, file: !277, line: 189, column: 3)
!3426 = !DILocation(line: 189, column: 3, scope: !3422)
!3427 = !DILocation(line: 189, column: 52, scope: !3425)
!3428 = distinct !{!3428, !3426, !3429, !774}
!3429 = !DILocation(line: 190, column: 5, scope: !3422)
!3430 = !DILocation(line: 191, column: 3, scope: !3410)
!3431 = !DILocation(line: 192, column: 1, scope: !3410)
!3432 = distinct !DISubprogram(name: "version_etc_va", scope: !277, file: !277, line: 199, type: !3433, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !276, retainedNodes: !3442)
!3433 = !DISubroutineType(types: !3434)
!3434 = !{null, !3335, !50, !50, !50, !3435}
!3435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3436, size: 64)
!3436 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !3437)
!3437 = !{!3438, !3439, !3440, !3441}
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !3436, file: !277, line: 192, baseType: !7, size: 32)
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !3436, file: !277, line: 192, baseType: !7, size: 32, offset: 32)
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !3436, file: !277, line: 192, baseType: !36, size: 64, offset: 64)
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !3436, file: !277, line: 192, baseType: !36, size: 64, offset: 128)
!3442 = !{!3443, !3444, !3445, !3446, !3447, !3448, !3449}
!3443 = !DILocalVariable(name: "stream", arg: 1, scope: !3432, file: !277, line: 199, type: !3335)
!3444 = !DILocalVariable(name: "command_name", arg: 2, scope: !3432, file: !277, line: 200, type: !50)
!3445 = !DILocalVariable(name: "package", arg: 3, scope: !3432, file: !277, line: 200, type: !50)
!3446 = !DILocalVariable(name: "version", arg: 4, scope: !3432, file: !277, line: 201, type: !50)
!3447 = !DILocalVariable(name: "authors", arg: 5, scope: !3432, file: !277, line: 201, type: !3435)
!3448 = !DILocalVariable(name: "n_authors", scope: !3432, file: !277, line: 203, type: !88)
!3449 = !DILocalVariable(name: "authtab", scope: !3432, file: !277, line: 204, type: !3450)
!3450 = !DICompositeType(tag: DW_TAG_array_type, baseType: !50, size: 640, elements: !96)
!3451 = !DILocation(line: 0, scope: !3432)
!3452 = !DILocation(line: 204, column: 3, scope: !3432)
!3453 = !DILocation(line: 204, column: 15, scope: !3432)
!3454 = !DILocation(line: 208, column: 35, scope: !3455)
!3455 = distinct !DILexicalBlock(scope: !3456, file: !277, line: 206, column: 3)
!3456 = distinct !DILexicalBlock(scope: !3432, file: !277, line: 206, column: 3)
!3457 = !DILocation(line: 208, column: 14, scope: !3455)
!3458 = !DILocation(line: 208, column: 33, scope: !3455)
!3459 = !DILocation(line: 208, column: 67, scope: !3455)
!3460 = !DILocation(line: 206, column: 3, scope: !3456)
!3461 = !DILocation(line: 0, scope: !3456)
!3462 = !DILocation(line: 211, column: 3, scope: !3432)
!3463 = !DILocation(line: 213, column: 1, scope: !3432)
!3464 = distinct !DISubprogram(name: "version_etc", scope: !277, file: !277, line: 230, type: !3465, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !276, retainedNodes: !3467)
!3465 = !DISubroutineType(types: !3466)
!3466 = !{null, !3335, !50, !50, !50, null}
!3467 = !{!3468, !3469, !3470, !3471, !3472}
!3468 = !DILocalVariable(name: "stream", arg: 1, scope: !3464, file: !277, line: 230, type: !3335)
!3469 = !DILocalVariable(name: "command_name", arg: 2, scope: !3464, file: !277, line: 231, type: !50)
!3470 = !DILocalVariable(name: "package", arg: 3, scope: !3464, file: !277, line: 231, type: !50)
!3471 = !DILocalVariable(name: "version", arg: 4, scope: !3464, file: !277, line: 232, type: !50)
!3472 = !DILocalVariable(name: "authors", scope: !3464, file: !277, line: 234, type: !3473)
!3473 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !799, line: 52, baseType: !3474)
!3474 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !3475, line: 32, baseType: !3476)
!3475 = !DIFile(filename: "/usr/lib/clang/12.0.1/include/stdarg.h", directory: "")
!3476 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !277, baseType: !3477)
!3477 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3436, size: 192, elements: !183)
!3478 = !DILocation(line: 0, scope: !3464)
!3479 = !DILocation(line: 234, column: 3, scope: !3464)
!3480 = !DILocation(line: 234, column: 11, scope: !3464)
!3481 = !DILocation(line: 236, column: 3, scope: !3464)
!3482 = !DILocation(line: 237, column: 3, scope: !3464)
!3483 = !DILocation(line: 238, column: 3, scope: !3464)
!3484 = !DILocation(line: 239, column: 1, scope: !3464)
!3485 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !277, file: !277, line: 242, type: !1334, scopeLine: 243, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !276, retainedNodes: !56)
!3486 = !DILocation(line: 244, column: 3, scope: !3485)
!3487 = !DILocation(line: 249, column: 3, scope: !3485)
!3488 = !DILocation(line: 255, column: 3, scope: !3485)
!3489 = !DILocation(line: 260, column: 3, scope: !3485)
!3490 = !DILocation(line: 262, column: 1, scope: !3485)
!3491 = distinct !DISubprogram(name: "xnmalloc", scope: !287, file: !287, line: 99, type: !3492, scopeLine: 100, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !283, retainedNodes: !3494)
!3492 = !DISubroutineType(types: !3493)
!3493 = !{!36, !88, !88}
!3494 = !{!3495, !3496}
!3495 = !DILocalVariable(name: "n", arg: 1, scope: !3491, file: !287, line: 99, type: !88)
!3496 = !DILocalVariable(name: "s", arg: 2, scope: !3491, file: !287, line: 99, type: !88)
!3497 = !DILocation(line: 0, scope: !3491)
!3498 = !DILocation(line: 101, column: 7, scope: !3499)
!3499 = distinct !DILexicalBlock(scope: !3491, file: !287, line: 101, column: 7)
!3500 = !DILocation(line: 101, column: 7, scope: !3491)
!3501 = !DILocation(line: 102, column: 5, scope: !3499)
!3502 = !DILocation(line: 103, column: 21, scope: !3491)
!3503 = !DILocalVariable(name: "n", arg: 1, scope: !3504, file: !284, line: 39, type: !88)
!3504 = distinct !DISubprogram(name: "xmalloc", scope: !284, file: !284, line: 39, type: !3505, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !283, retainedNodes: !3507)
!3505 = !DISubroutineType(types: !3506)
!3506 = !{!36, !88}
!3507 = !{!3503, !3508}
!3508 = !DILocalVariable(name: "p", scope: !3504, file: !284, line: 41, type: !36)
!3509 = !DILocation(line: 0, scope: !3504, inlinedAt: !3510)
!3510 = distinct !DILocation(line: 103, column: 10, scope: !3491)
!3511 = !DILocation(line: 41, column: 13, scope: !3504, inlinedAt: !3510)
!3512 = !DILocation(line: 42, column: 8, scope: !3513, inlinedAt: !3510)
!3513 = distinct !DILexicalBlock(scope: !3504, file: !284, line: 42, column: 7)
!3514 = !DILocation(line: 42, column: 10, scope: !3513, inlinedAt: !3510)
!3515 = !DILocation(line: 43, column: 5, scope: !3513, inlinedAt: !3510)
!3516 = !DILocation(line: 103, column: 3, scope: !3491)
!3517 = !DILocation(line: 0, scope: !3504)
!3518 = !DILocation(line: 41, column: 13, scope: !3504)
!3519 = !DILocation(line: 42, column: 8, scope: !3513)
!3520 = !DILocation(line: 42, column: 10, scope: !3513)
!3521 = !DILocation(line: 43, column: 5, scope: !3513)
!3522 = !DILocation(line: 44, column: 3, scope: !3504)
!3523 = distinct !DISubprogram(name: "xnrealloc", scope: !287, file: !287, line: 112, type: !3524, scopeLine: 113, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !283, retainedNodes: !3526)
!3524 = !DISubroutineType(types: !3525)
!3525 = !{!36, !36, !88, !88}
!3526 = !{!3527, !3528, !3529}
!3527 = !DILocalVariable(name: "p", arg: 1, scope: !3523, file: !287, line: 112, type: !36)
!3528 = !DILocalVariable(name: "n", arg: 2, scope: !3523, file: !287, line: 112, type: !88)
!3529 = !DILocalVariable(name: "s", arg: 3, scope: !3523, file: !287, line: 112, type: !88)
!3530 = !DILocation(line: 0, scope: !3523)
!3531 = !DILocation(line: 114, column: 7, scope: !3532)
!3532 = distinct !DILexicalBlock(scope: !3523, file: !287, line: 114, column: 7)
!3533 = !DILocation(line: 114, column: 7, scope: !3523)
!3534 = !DILocation(line: 115, column: 5, scope: !3532)
!3535 = !DILocation(line: 116, column: 25, scope: !3523)
!3536 = !DILocalVariable(name: "p", arg: 1, scope: !3537, file: !284, line: 51, type: !36)
!3537 = distinct !DISubprogram(name: "xrealloc", scope: !284, file: !284, line: 51, type: !3538, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !283, retainedNodes: !3540)
!3538 = !DISubroutineType(types: !3539)
!3539 = !{!36, !36, !88}
!3540 = !{!3536, !3541}
!3541 = !DILocalVariable(name: "n", arg: 2, scope: !3537, file: !284, line: 51, type: !88)
!3542 = !DILocation(line: 0, scope: !3537, inlinedAt: !3543)
!3543 = distinct !DILocation(line: 116, column: 10, scope: !3523)
!3544 = !DILocation(line: 53, column: 8, scope: !3545, inlinedAt: !3543)
!3545 = distinct !DILexicalBlock(scope: !3537, file: !284, line: 53, column: 7)
!3546 = !DILocation(line: 53, column: 10, scope: !3545, inlinedAt: !3543)
!3547 = !DILocation(line: 57, column: 7, scope: !3548, inlinedAt: !3543)
!3548 = distinct !DILexicalBlock(scope: !3545, file: !284, line: 54, column: 5)
!3549 = !DILocation(line: 58, column: 7, scope: !3548, inlinedAt: !3543)
!3550 = !DILocation(line: 61, column: 7, scope: !3537, inlinedAt: !3543)
!3551 = !DILocation(line: 62, column: 8, scope: !3552, inlinedAt: !3543)
!3552 = distinct !DILexicalBlock(scope: !3537, file: !284, line: 62, column: 7)
!3553 = !DILocation(line: 62, column: 10, scope: !3552, inlinedAt: !3543)
!3554 = !DILocation(line: 63, column: 5, scope: !3552, inlinedAt: !3543)
!3555 = !DILocation(line: 116, column: 3, scope: !3523)
!3556 = !DILocation(line: 0, scope: !3537)
!3557 = !DILocation(line: 53, column: 8, scope: !3545)
!3558 = !DILocation(line: 53, column: 10, scope: !3545)
!3559 = !DILocation(line: 57, column: 7, scope: !3548)
!3560 = !DILocation(line: 58, column: 7, scope: !3548)
!3561 = !DILocation(line: 61, column: 7, scope: !3537)
!3562 = !DILocation(line: 62, column: 8, scope: !3552)
!3563 = !DILocation(line: 62, column: 10, scope: !3552)
!3564 = !DILocation(line: 63, column: 5, scope: !3552)
!3565 = !DILocation(line: 65, column: 1, scope: !3537)
!3566 = !DILocation(line: 0, scope: !288)
!3567 = !DILocation(line: 176, column: 14, scope: !288)
!3568 = !DILocation(line: 178, column: 9, scope: !3569)
!3569 = distinct !DILexicalBlock(scope: !288, file: !287, line: 178, column: 7)
!3570 = !DILocation(line: 178, column: 7, scope: !288)
!3571 = !DILocation(line: 180, column: 13, scope: !3572)
!3572 = distinct !DILexicalBlock(scope: !3573, file: !287, line: 180, column: 11)
!3573 = distinct !DILexicalBlock(scope: !3569, file: !287, line: 179, column: 5)
!3574 = !DILocation(line: 180, column: 11, scope: !3573)
!3575 = !DILocation(line: 188, column: 30, scope: !3576)
!3576 = distinct !DILexicalBlock(scope: !3572, file: !287, line: 181, column: 9)
!3577 = !DILocation(line: 189, column: 16, scope: !3576)
!3578 = !DILocation(line: 189, column: 13, scope: !3576)
!3579 = !DILocation(line: 190, column: 9, scope: !3576)
!3580 = !DILocation(line: 191, column: 11, scope: !3581)
!3581 = distinct !DILexicalBlock(scope: !3573, file: !287, line: 191, column: 11)
!3582 = !DILocation(line: 191, column: 11, scope: !3573)
!3583 = !DILocation(line: 206, column: 7, scope: !288)
!3584 = !DILocation(line: 207, column: 25, scope: !288)
!3585 = !DILocation(line: 0, scope: !3537, inlinedAt: !3586)
!3586 = distinct !DILocation(line: 207, column: 10, scope: !288)
!3587 = !DILocation(line: 53, column: 10, scope: !3545, inlinedAt: !3586)
!3588 = !DILocation(line: 192, column: 9, scope: !3581)
!3589 = !DILocation(line: 200, column: 69, scope: !3590)
!3590 = distinct !DILexicalBlock(scope: !3591, file: !287, line: 200, column: 11)
!3591 = distinct !DILexicalBlock(scope: !3569, file: !287, line: 195, column: 5)
!3592 = !DILocation(line: 201, column: 11, scope: !3590)
!3593 = !DILocation(line: 200, column: 11, scope: !3591)
!3594 = !DILocation(line: 202, column: 9, scope: !3590)
!3595 = !DILocation(line: 203, column: 14, scope: !3591)
!3596 = !DILocation(line: 203, column: 18, scope: !3591)
!3597 = !DILocation(line: 203, column: 9, scope: !3591)
!3598 = !DILocation(line: 53, column: 8, scope: !3545, inlinedAt: !3586)
!3599 = !DILocation(line: 57, column: 7, scope: !3548, inlinedAt: !3586)
!3600 = !DILocation(line: 58, column: 7, scope: !3548, inlinedAt: !3586)
!3601 = !DILocation(line: 61, column: 7, scope: !3537, inlinedAt: !3586)
!3602 = !DILocation(line: 62, column: 8, scope: !3552, inlinedAt: !3586)
!3603 = !DILocation(line: 62, column: 10, scope: !3552, inlinedAt: !3586)
!3604 = !DILocation(line: 63, column: 5, scope: !3552, inlinedAt: !3586)
!3605 = !DILocation(line: 207, column: 3, scope: !288)
!3606 = distinct !DISubprogram(name: "xcharalloc", scope: !287, file: !287, line: 216, type: !2543, scopeLine: 217, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !283, retainedNodes: !3607)
!3607 = !{!3608}
!3608 = !DILocalVariable(name: "n", arg: 1, scope: !3606, file: !287, line: 216, type: !88)
!3609 = !DILocation(line: 0, scope: !3606)
!3610 = !DILocation(line: 0, scope: !3504, inlinedAt: !3611)
!3611 = distinct !DILocation(line: 218, column: 10, scope: !3606)
!3612 = !DILocation(line: 41, column: 13, scope: !3504, inlinedAt: !3611)
!3613 = !DILocation(line: 42, column: 8, scope: !3513, inlinedAt: !3611)
!3614 = !DILocation(line: 42, column: 10, scope: !3513, inlinedAt: !3611)
!3615 = !DILocation(line: 43, column: 5, scope: !3513, inlinedAt: !3611)
!3616 = !DILocation(line: 218, column: 3, scope: !3606)
!3617 = distinct !DISubprogram(name: "x2realloc", scope: !284, file: !284, line: 74, type: !3618, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !283, retainedNodes: !3620)
!3618 = !DISubroutineType(types: !3619)
!3619 = !{!36, !36, !291}
!3620 = !{!3621, !3622}
!3621 = !DILocalVariable(name: "p", arg: 1, scope: !3617, file: !284, line: 74, type: !36)
!3622 = !DILocalVariable(name: "pn", arg: 2, scope: !3617, file: !284, line: 74, type: !291)
!3623 = !DILocation(line: 0, scope: !3617)
!3624 = !DILocation(line: 0, scope: !288, inlinedAt: !3625)
!3625 = distinct !DILocation(line: 76, column: 10, scope: !3617)
!3626 = !DILocation(line: 176, column: 14, scope: !288, inlinedAt: !3625)
!3627 = !DILocation(line: 178, column: 9, scope: !3569, inlinedAt: !3625)
!3628 = !DILocation(line: 178, column: 7, scope: !288, inlinedAt: !3625)
!3629 = !DILocation(line: 180, column: 13, scope: !3572, inlinedAt: !3625)
!3630 = !DILocation(line: 180, column: 11, scope: !3573, inlinedAt: !3625)
!3631 = !DILocation(line: 191, column: 11, scope: !3581, inlinedAt: !3625)
!3632 = !DILocation(line: 191, column: 11, scope: !3573, inlinedAt: !3625)
!3633 = !DILocation(line: 192, column: 9, scope: !3581, inlinedAt: !3625)
!3634 = !DILocation(line: 201, column: 11, scope: !3590, inlinedAt: !3625)
!3635 = !DILocation(line: 200, column: 11, scope: !3591, inlinedAt: !3625)
!3636 = !DILocation(line: 202, column: 9, scope: !3590, inlinedAt: !3625)
!3637 = !DILocation(line: 203, column: 14, scope: !3591, inlinedAt: !3625)
!3638 = !DILocation(line: 203, column: 18, scope: !3591, inlinedAt: !3625)
!3639 = !DILocation(line: 203, column: 9, scope: !3591, inlinedAt: !3625)
!3640 = !DILocation(line: 0, scope: !3537, inlinedAt: !3641)
!3641 = distinct !DILocation(line: 207, column: 10, scope: !288, inlinedAt: !3625)
!3642 = !DILocation(line: 53, column: 10, scope: !3545, inlinedAt: !3641)
!3643 = !DILocation(line: 206, column: 7, scope: !288, inlinedAt: !3625)
!3644 = !DILocation(line: 61, column: 7, scope: !3537, inlinedAt: !3641)
!3645 = !DILocation(line: 62, column: 8, scope: !3552, inlinedAt: !3641)
!3646 = !DILocation(line: 62, column: 10, scope: !3552, inlinedAt: !3641)
!3647 = !DILocation(line: 63, column: 5, scope: !3552, inlinedAt: !3641)
!3648 = !DILocation(line: 76, column: 3, scope: !3617)
!3649 = distinct !DISubprogram(name: "xzalloc", scope: !284, file: !284, line: 84, type: !3505, scopeLine: 85, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !283, retainedNodes: !3650)
!3650 = !{!3651}
!3651 = !DILocalVariable(name: "n", arg: 1, scope: !3649, file: !284, line: 84, type: !88)
!3652 = !DILocation(line: 0, scope: !3649)
!3653 = !DILocalVariable(name: "n", arg: 1, scope: !3654, file: !284, line: 93, type: !88)
!3654 = distinct !DISubprogram(name: "xcalloc", scope: !284, file: !284, line: 93, type: !3492, scopeLine: 94, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !283, retainedNodes: !3655)
!3655 = !{!3653, !3656, !3657}
!3656 = !DILocalVariable(name: "s", arg: 2, scope: !3654, file: !284, line: 93, type: !88)
!3657 = !DILocalVariable(name: "p", scope: !3654, file: !284, line: 95, type: !36)
!3658 = !DILocation(line: 0, scope: !3654, inlinedAt: !3659)
!3659 = distinct !DILocation(line: 86, column: 10, scope: !3649)
!3660 = !DILocation(line: 100, column: 7, scope: !3661, inlinedAt: !3659)
!3661 = distinct !DILexicalBlock(scope: !3654, file: !284, line: 100, column: 7)
!3662 = !DILocation(line: 101, column: 7, scope: !3661, inlinedAt: !3659)
!3663 = !DILocation(line: 101, column: 18, scope: !3661, inlinedAt: !3659)
!3664 = !DILocation(line: 101, column: 16, scope: !3661, inlinedAt: !3659)
!3665 = !DILocation(line: 100, column: 7, scope: !3654, inlinedAt: !3659)
!3666 = !DILocation(line: 102, column: 5, scope: !3661, inlinedAt: !3659)
!3667 = !DILocation(line: 86, column: 3, scope: !3649)
!3668 = !DILocation(line: 0, scope: !3654)
!3669 = !DILocation(line: 100, column: 7, scope: !3661)
!3670 = !DILocation(line: 101, column: 7, scope: !3661)
!3671 = !DILocation(line: 101, column: 18, scope: !3661)
!3672 = !DILocation(line: 101, column: 16, scope: !3661)
!3673 = !DILocation(line: 100, column: 7, scope: !3654)
!3674 = !DILocation(line: 102, column: 5, scope: !3661)
!3675 = !DILocation(line: 103, column: 3, scope: !3654)
!3676 = distinct !DISubprogram(name: "xmemdup", scope: !284, file: !284, line: 111, type: !3677, scopeLine: 112, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !283, retainedNodes: !3679)
!3677 = !DISubroutineType(types: !3678)
!3678 = !{!36, !1179, !88}
!3679 = !{!3680, !3681}
!3680 = !DILocalVariable(name: "p", arg: 1, scope: !3676, file: !284, line: 111, type: !1179)
!3681 = !DILocalVariable(name: "s", arg: 2, scope: !3676, file: !284, line: 111, type: !88)
!3682 = !DILocation(line: 0, scope: !3676)
!3683 = !DILocation(line: 0, scope: !3504, inlinedAt: !3684)
!3684 = distinct !DILocation(line: 113, column: 18, scope: !3676)
!3685 = !DILocation(line: 41, column: 13, scope: !3504, inlinedAt: !3684)
!3686 = !DILocation(line: 42, column: 8, scope: !3513, inlinedAt: !3684)
!3687 = !DILocation(line: 42, column: 10, scope: !3513, inlinedAt: !3684)
!3688 = !DILocation(line: 43, column: 5, scope: !3513, inlinedAt: !3684)
!3689 = !DILocalVariable(name: "__dest", arg: 1, scope: !3690, file: !1006, line: 26, type: !1177)
!3690 = distinct !DISubprogram(name: "memcpy", scope: !1006, file: !1006, line: 26, type: !1175, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !283, retainedNodes: !3691)
!3691 = !{!3689, !3692, !3693}
!3692 = !DILocalVariable(name: "__src", arg: 2, scope: !3690, file: !1006, line: 26, type: !1178)
!3693 = !DILocalVariable(name: "__len", arg: 3, scope: !3690, file: !1006, line: 26, type: !88)
!3694 = !DILocation(line: 0, scope: !3690, inlinedAt: !3695)
!3695 = distinct !DILocation(line: 113, column: 10, scope: !3676)
!3696 = !DILocation(line: 29, column: 10, scope: !3690, inlinedAt: !3695)
!3697 = !DILocation(line: 113, column: 3, scope: !3676)
!3698 = distinct !DISubprogram(name: "xstrdup", scope: !284, file: !284, line: 119, type: !1327, scopeLine: 120, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !283, retainedNodes: !3699)
!3699 = !{!3700}
!3700 = !DILocalVariable(name: "string", arg: 1, scope: !3698, file: !284, line: 119, type: !50)
!3701 = !DILocation(line: 0, scope: !3698)
!3702 = !DILocation(line: 121, column: 27, scope: !3698)
!3703 = !DILocation(line: 121, column: 43, scope: !3698)
!3704 = !DILocation(line: 0, scope: !3676, inlinedAt: !3705)
!3705 = distinct !DILocation(line: 121, column: 10, scope: !3698)
!3706 = !DILocation(line: 0, scope: !3504, inlinedAt: !3707)
!3707 = distinct !DILocation(line: 113, column: 18, scope: !3676, inlinedAt: !3705)
!3708 = !DILocation(line: 41, column: 13, scope: !3504, inlinedAt: !3707)
!3709 = !DILocation(line: 42, column: 8, scope: !3513, inlinedAt: !3707)
!3710 = !DILocation(line: 42, column: 10, scope: !3513, inlinedAt: !3707)
!3711 = !DILocation(line: 43, column: 5, scope: !3513, inlinedAt: !3707)
!3712 = !DILocation(line: 0, scope: !3690, inlinedAt: !3713)
!3713 = distinct !DILocation(line: 113, column: 10, scope: !3676, inlinedAt: !3705)
!3714 = !DILocation(line: 29, column: 10, scope: !3690, inlinedAt: !3713)
!3715 = !DILocation(line: 121, column: 3, scope: !3698)
!3716 = distinct !DISubprogram(name: "xalloc_die", scope: !301, file: !301, line: 32, type: !1334, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !300, retainedNodes: !56)
!3717 = !DILocation(line: 34, column: 10, scope: !3716)
!3718 = !DILocation(line: 34, column: 33, scope: !3716)
!3719 = !DILocation(line: 34, column: 3, scope: !3716)
!3720 = !DILocation(line: 40, column: 3, scope: !3716)
!3721 = distinct !DISubprogram(name: "xprintf", scope: !303, file: !303, line: 32, type: !3722, scopeLine: 33, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !302, retainedNodes: !3725)
!3722 = !DISubroutineType(types: !3723)
!3723 = !{!39, !3724, null}
!3724 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !50)
!3725 = !{!3726, !3727, !3738}
!3726 = !DILocalVariable(name: "format", arg: 1, scope: !3721, file: !303, line: 32, type: !3724)
!3727 = !DILocalVariable(name: "args", scope: !3721, file: !303, line: 34, type: !3728)
!3728 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !799, line: 52, baseType: !3729)
!3729 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !3475, line: 32, baseType: !3730)
!3730 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !303, baseType: !3731)
!3731 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3732, size: 192, elements: !183)
!3732 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !3733)
!3733 = !{!3734, !3735, !3736, !3737}
!3734 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !3732, file: !303, line: 34, baseType: !7, size: 32)
!3735 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !3732, file: !303, line: 34, baseType: !7, size: 32, offset: 32)
!3736 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !3732, file: !303, line: 34, baseType: !36, size: 64, offset: 64)
!3737 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !3732, file: !303, line: 34, baseType: !36, size: 64, offset: 128)
!3738 = !DILocalVariable(name: "retval", scope: !3721, file: !303, line: 35, type: !39)
!3739 = !DILocation(line: 0, scope: !3721)
!3740 = !DILocation(line: 34, column: 3, scope: !3721)
!3741 = !DILocation(line: 34, column: 11, scope: !3721)
!3742 = !DILocation(line: 36, column: 3, scope: !3721)
!3743 = !DILocalVariable(name: "format", arg: 1, scope: !3744, file: !303, line: 46, type: !3724)
!3744 = distinct !DISubprogram(name: "xvprintf", scope: !303, file: !303, line: 46, type: !3745, scopeLine: 47, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !302, retainedNodes: !3748)
!3745 = !DISubroutineType(types: !3746)
!3746 = !{!39, !3724, !3747}
!3747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3732, size: 64)
!3748 = !{!3743, !3749, !3750}
!3749 = !DILocalVariable(name: "args", arg: 2, scope: !3744, file: !303, line: 46, type: !3747)
!3750 = !DILocalVariable(name: "retval", scope: !3744, file: !303, line: 48, type: !39)
!3751 = !DILocation(line: 0, scope: !3744, inlinedAt: !3752)
!3752 = distinct !DILocation(line: 37, column: 12, scope: !3721)
!3753 = !DILocalVariable(name: "__fmt", arg: 1, scope: !3754, file: !3755, line: 122, type: !3724)
!3754 = distinct !DISubprogram(name: "vprintf", scope: !3755, file: !3755, line: 122, type: !3745, scopeLine: 123, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !302, retainedNodes: !3756)
!3755 = !DIFile(filename: "/usr/include/bits/stdio2.h", directory: "")
!3756 = !{!3753, !3757}
!3757 = !DILocalVariable(name: "__ap", arg: 2, scope: !3754, file: !3755, line: 122, type: !3747)
!3758 = !DILocation(line: 0, scope: !3754, inlinedAt: !3759)
!3759 = distinct !DILocation(line: 48, column: 16, scope: !3744, inlinedAt: !3752)
!3760 = !DILocation(line: 125, column: 26, scope: !3754, inlinedAt: !3759)
!3761 = !{!3762, !3764}
!3762 = distinct !{!3762, !3763, !"vprintf: argument 0"}
!3763 = distinct !{!3763, !"vprintf"}
!3764 = distinct !{!3764, !3765, !"xvprintf: argument 0"}
!3765 = distinct !{!3765, !"xvprintf"}
!3766 = !DILocation(line: 125, column: 10, scope: !3754, inlinedAt: !3759)
!3767 = !DILocation(line: 49, column: 14, scope: !3768, inlinedAt: !3752)
!3768 = distinct !DILexicalBlock(scope: !3744, file: !303, line: 49, column: 7)
!3769 = !DILocation(line: 49, column: 18, scope: !3768, inlinedAt: !3752)
!3770 = !DILocation(line: 49, column: 31, scope: !3768, inlinedAt: !3752)
!3771 = !DILocation(line: 49, column: 23, scope: !3768, inlinedAt: !3752)
!3772 = !DILocation(line: 49, column: 7, scope: !3744, inlinedAt: !3752)
!3773 = !DILocation(line: 50, column: 12, scope: !3768, inlinedAt: !3752)
!3774 = !DILocation(line: 50, column: 26, scope: !3768, inlinedAt: !3752)
!3775 = !DILocation(line: 50, column: 33, scope: !3768, inlinedAt: !3752)
!3776 = !DILocation(line: 50, column: 5, scope: !3768, inlinedAt: !3752)
!3777 = !DILocation(line: 38, column: 3, scope: !3721)
!3778 = !DILocation(line: 41, column: 1, scope: !3721)
!3779 = !DILocation(line: 40, column: 3, scope: !3721)
!3780 = !DISubprogram(name: "ferror", scope: !799, file: !799, line: 766, type: !3781, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !56)
!3781 = !DISubroutineType(types: !3782)
!3782 = !{!39, !3783}
!3783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3784, size: 64)
!3784 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !154, line: 49, size: 1728, elements: !3785)
!3785 = !{!3786, !3787, !3788, !3789, !3790, !3791, !3792, !3793, !3794, !3795, !3796, !3797, !3798, !3799, !3800, !3801, !3802, !3803, !3804, !3805, !3806, !3807, !3808, !3809, !3810, !3811, !3812, !3813, !3814}
!3786 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3784, file: !154, line: 51, baseType: !39, size: 32)
!3787 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3784, file: !154, line: 54, baseType: !37, size: 64, offset: 64)
!3788 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3784, file: !154, line: 55, baseType: !37, size: 64, offset: 128)
!3789 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3784, file: !154, line: 56, baseType: !37, size: 64, offset: 192)
!3790 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3784, file: !154, line: 57, baseType: !37, size: 64, offset: 256)
!3791 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3784, file: !154, line: 58, baseType: !37, size: 64, offset: 320)
!3792 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3784, file: !154, line: 59, baseType: !37, size: 64, offset: 384)
!3793 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3784, file: !154, line: 60, baseType: !37, size: 64, offset: 448)
!3794 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3784, file: !154, line: 61, baseType: !37, size: 64, offset: 512)
!3795 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3784, file: !154, line: 64, baseType: !37, size: 64, offset: 576)
!3796 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3784, file: !154, line: 65, baseType: !37, size: 64, offset: 640)
!3797 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3784, file: !154, line: 66, baseType: !37, size: 64, offset: 704)
!3798 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3784, file: !154, line: 68, baseType: !169, size: 64, offset: 768)
!3799 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3784, file: !154, line: 70, baseType: !3783, size: 64, offset: 832)
!3800 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3784, file: !154, line: 72, baseType: !39, size: 32, offset: 896)
!3801 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3784, file: !154, line: 73, baseType: !39, size: 32, offset: 928)
!3802 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3784, file: !154, line: 74, baseType: !176, size: 64, offset: 960)
!3803 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3784, file: !154, line: 77, baseType: !41, size: 16, offset: 1024)
!3804 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3784, file: !154, line: 78, baseType: !180, size: 8, offset: 1040)
!3805 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3784, file: !154, line: 79, baseType: !182, size: 8, offset: 1048)
!3806 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3784, file: !154, line: 81, baseType: !186, size: 64, offset: 1088)
!3807 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3784, file: !154, line: 89, baseType: !189, size: 64, offset: 1152)
!3808 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3784, file: !154, line: 91, baseType: !191, size: 64, offset: 1216)
!3809 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3784, file: !154, line: 92, baseType: !194, size: 64, offset: 1280)
!3810 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3784, file: !154, line: 93, baseType: !3783, size: 64, offset: 1344)
!3811 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3784, file: !154, line: 94, baseType: !36, size: 64, offset: 1408)
!3812 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3784, file: !154, line: 95, baseType: !88, size: 64, offset: 1472)
!3813 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3784, file: !154, line: 96, baseType: !39, size: 32, offset: 1536)
!3814 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3784, file: !154, line: 98, baseType: !201, size: 160, offset: 1568)
!3815 = !DILocation(line: 0, scope: !3744)
!3816 = !DILocation(line: 0, scope: !3754, inlinedAt: !3817)
!3817 = distinct !DILocation(line: 48, column: 16, scope: !3744)
!3818 = !DILocation(line: 125, column: 26, scope: !3754, inlinedAt: !3817)
!3819 = !{!3820}
!3820 = distinct !{!3820, !3821, !"vprintf: argument 0"}
!3821 = distinct !{!3821, !"vprintf"}
!3822 = !DILocation(line: 125, column: 10, scope: !3754, inlinedAt: !3817)
!3823 = !DILocation(line: 49, column: 14, scope: !3768)
!3824 = !DILocation(line: 49, column: 18, scope: !3768)
!3825 = !DILocation(line: 49, column: 31, scope: !3768)
!3826 = !DILocation(line: 49, column: 23, scope: !3768)
!3827 = !DILocation(line: 49, column: 7, scope: !3744)
!3828 = !DILocation(line: 50, column: 12, scope: !3768)
!3829 = !DILocation(line: 50, column: 26, scope: !3768)
!3830 = !DILocation(line: 50, column: 33, scope: !3768)
!3831 = !DILocation(line: 50, column: 5, scope: !3768)
!3832 = !DILocation(line: 52, column: 3, scope: !3744)
!3833 = distinct !DISubprogram(name: "xfprintf", scope: !303, file: !303, line: 58, type: !3834, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !302, retainedNodes: !3839)
!3834 = !DISubroutineType(types: !3835)
!3835 = !{!39, !3836, !3724, null}
!3836 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !3837)
!3837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3838, size: 64)
!3838 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !152, line: 7, baseType: !3784)
!3839 = !{!3840, !3841, !3842, !3843}
!3840 = !DILocalVariable(name: "stream", arg: 1, scope: !3833, file: !303, line: 58, type: !3836)
!3841 = !DILocalVariable(name: "format", arg: 2, scope: !3833, file: !303, line: 58, type: !3724)
!3842 = !DILocalVariable(name: "args", scope: !3833, file: !303, line: 60, type: !3728)
!3843 = !DILocalVariable(name: "retval", scope: !3833, file: !303, line: 61, type: !39)
!3844 = !DILocation(line: 0, scope: !3833)
!3845 = !DILocation(line: 60, column: 3, scope: !3833)
!3846 = !DILocation(line: 60, column: 11, scope: !3833)
!3847 = !DILocation(line: 62, column: 3, scope: !3833)
!3848 = !DILocalVariable(name: "stream", arg: 1, scope: !3849, file: !303, line: 72, type: !3836)
!3849 = distinct !DISubprogram(name: "xvfprintf", scope: !303, file: !303, line: 72, type: !3850, scopeLine: 73, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !302, retainedNodes: !3852)
!3850 = !DISubroutineType(types: !3851)
!3851 = !{!39, !3836, !3724, !3747}
!3852 = !{!3848, !3853, !3854, !3855}
!3853 = !DILocalVariable(name: "format", arg: 2, scope: !3849, file: !303, line: 72, type: !3724)
!3854 = !DILocalVariable(name: "args", arg: 3, scope: !3849, file: !303, line: 72, type: !3747)
!3855 = !DILocalVariable(name: "retval", scope: !3849, file: !303, line: 74, type: !39)
!3856 = !DILocation(line: 0, scope: !3849, inlinedAt: !3857)
!3857 = distinct !DILocation(line: 63, column: 12, scope: !3833)
!3858 = !DILocalVariable(name: "__stream", arg: 1, scope: !3859, file: !3755, line: 132, type: !3836)
!3859 = distinct !DISubprogram(name: "vfprintf", scope: !3755, file: !3755, line: 132, type: !3850, scopeLine: 134, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !302, retainedNodes: !3860)
!3860 = !{!3858, !3861, !3862}
!3861 = !DILocalVariable(name: "__fmt", arg: 2, scope: !3859, file: !3755, line: 133, type: !3724)
!3862 = !DILocalVariable(name: "__ap", arg: 3, scope: !3859, file: !3755, line: 133, type: !3747)
!3863 = !DILocation(line: 0, scope: !3859, inlinedAt: !3864)
!3864 = distinct !DILocation(line: 74, column: 16, scope: !3849, inlinedAt: !3857)
!3865 = !DILocation(line: 135, column: 10, scope: !3859, inlinedAt: !3864)
!3866 = !DILocation(line: 75, column: 14, scope: !3867, inlinedAt: !3857)
!3867 = distinct !DILexicalBlock(scope: !3849, file: !303, line: 75, column: 7)
!3868 = !DILocation(line: 75, column: 18, scope: !3867, inlinedAt: !3857)
!3869 = !DILocation(line: 75, column: 23, scope: !3867, inlinedAt: !3857)
!3870 = !DILocation(line: 75, column: 7, scope: !3849, inlinedAt: !3857)
!3871 = !DILocation(line: 76, column: 12, scope: !3867, inlinedAt: !3857)
!3872 = !DILocation(line: 76, column: 26, scope: !3867, inlinedAt: !3857)
!3873 = !DILocation(line: 76, column: 33, scope: !3867, inlinedAt: !3857)
!3874 = !DILocation(line: 76, column: 5, scope: !3867, inlinedAt: !3857)
!3875 = !DILocation(line: 64, column: 3, scope: !3833)
!3876 = !DILocation(line: 67, column: 1, scope: !3833)
!3877 = !DILocation(line: 66, column: 3, scope: !3833)
!3878 = !DILocation(line: 0, scope: !3849)
!3879 = !DILocation(line: 0, scope: !3859, inlinedAt: !3880)
!3880 = distinct !DILocation(line: 74, column: 16, scope: !3849)
!3881 = !DILocation(line: 135, column: 10, scope: !3859, inlinedAt: !3880)
!3882 = !DILocation(line: 75, column: 14, scope: !3867)
!3883 = !DILocation(line: 75, column: 18, scope: !3867)
!3884 = !DILocation(line: 75, column: 23, scope: !3867)
!3885 = !DILocation(line: 75, column: 7, scope: !3849)
!3886 = !DILocation(line: 76, column: 12, scope: !3867)
!3887 = !DILocation(line: 76, column: 26, scope: !3867)
!3888 = !DILocation(line: 76, column: 33, scope: !3867)
!3889 = !DILocation(line: 76, column: 5, scope: !3867)
!3890 = !DILocation(line: 78, column: 3, scope: !3849)
!3891 = distinct !DISubprogram(name: "rpl_calloc", scope: !305, file: !305, line: 42, type: !3492, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !304, retainedNodes: !3892)
!3892 = !{!3893, !3894, !3895, !3896}
!3893 = !DILocalVariable(name: "n", arg: 1, scope: !3891, file: !305, line: 42, type: !88)
!3894 = !DILocalVariable(name: "s", arg: 2, scope: !3891, file: !305, line: 42, type: !88)
!3895 = !DILocalVariable(name: "result", scope: !3891, file: !305, line: 44, type: !36)
!3896 = !DILocalVariable(name: "bytes", scope: !3897, file: !305, line: 56, type: !88)
!3897 = distinct !DILexicalBlock(scope: !3898, file: !305, line: 53, column: 5)
!3898 = distinct !DILexicalBlock(scope: !3891, file: !305, line: 47, column: 7)
!3899 = !DILocation(line: 0, scope: !3891)
!3900 = !DILocation(line: 47, column: 9, scope: !3898)
!3901 = !DILocation(line: 47, column: 14, scope: !3898)
!3902 = !DILocation(line: 0, scope: !3897)
!3903 = !DILocation(line: 57, column: 21, scope: !3904)
!3904 = distinct !DILexicalBlock(scope: !3897, file: !305, line: 57, column: 11)
!3905 = !DILocation(line: 57, column: 11, scope: !3897)
!3906 = !DILocation(line: 59, column: 11, scope: !3907)
!3907 = distinct !DILexicalBlock(scope: !3904, file: !305, line: 58, column: 9)
!3908 = !DILocation(line: 59, column: 17, scope: !3907)
!3909 = !DILocation(line: 65, column: 12, scope: !3891)
!3910 = !DILocation(line: 72, column: 3, scope: !3891)
!3911 = !DILocation(line: 73, column: 1, scope: !3891)
!3912 = distinct !DISubprogram(name: "rpl_mbrtowc", scope: !307, file: !307, line: 86, type: !3913, scopeLine: 87, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !306, retainedNodes: !3927)
!3913 = !DISubroutineType(types: !3914)
!3914 = !{!88, !3915, !50, !88, !3916}
!3915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1844, size: 64)
!3916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3917, size: 64)
!3917 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1828, line: 6, baseType: !3918)
!3918 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1830, line: 21, baseType: !3919)
!3919 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1830, line: 13, size: 64, elements: !3920)
!3920 = !{!3921, !3922}
!3921 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !3919, file: !1830, line: 15, baseType: !39, size: 32)
!3922 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !3919, file: !1830, line: 20, baseType: !3923, size: 32, offset: 32)
!3923 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3919, file: !1830, line: 16, size: 32, elements: !3924)
!3924 = !{!3925, !3926}
!3925 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !3923, file: !1830, line: 18, baseType: !7, size: 32)
!3926 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !3923, file: !1830, line: 19, baseType: !1839, size: 32)
!3927 = !{!3928, !3929, !3930, !3931, !3932, !3933, !3934}
!3928 = !DILocalVariable(name: "pwc", arg: 1, scope: !3912, file: !307, line: 86, type: !3915)
!3929 = !DILocalVariable(name: "s", arg: 2, scope: !3912, file: !307, line: 86, type: !50)
!3930 = !DILocalVariable(name: "n", arg: 3, scope: !3912, file: !307, line: 86, type: !88)
!3931 = !DILocalVariable(name: "ps", arg: 4, scope: !3912, file: !307, line: 86, type: !3916)
!3932 = !DILocalVariable(name: "ret", scope: !3912, file: !307, line: 88, type: !88)
!3933 = !DILocalVariable(name: "wc", scope: !3912, file: !307, line: 89, type: !1844)
!3934 = !DILocalVariable(name: "uc", scope: !3935, file: !307, line: 156, type: !40)
!3935 = distinct !DILexicalBlock(scope: !3936, file: !307, line: 155, column: 5)
!3936 = distinct !DILexicalBlock(scope: !3912, file: !307, line: 154, column: 7)
!3937 = !DILocation(line: 0, scope: !3912)
!3938 = !DILocation(line: 89, column: 3, scope: !3912)
!3939 = !DILocation(line: 105, column: 9, scope: !3940)
!3940 = distinct !DILexicalBlock(scope: !3912, file: !307, line: 105, column: 7)
!3941 = !DILocation(line: 105, column: 7, scope: !3912)
!3942 = !DILocation(line: 145, column: 9, scope: !3912)
!3943 = !DILocation(line: 154, column: 19, scope: !3936)
!3944 = !DILocation(line: 154, column: 26, scope: !3936)
!3945 = !DILocation(line: 154, column: 41, scope: !3936)
!3946 = !DILocation(line: 154, column: 7, scope: !3912)
!3947 = !DILocation(line: 156, column: 26, scope: !3935)
!3948 = !DILocation(line: 0, scope: !3935)
!3949 = !DILocation(line: 157, column: 14, scope: !3935)
!3950 = !DILocation(line: 157, column: 12, scope: !3935)
!3951 = !DILocation(line: 163, column: 1, scope: !3912)
!3952 = !DISubprogram(name: "mbrtowc", scope: !2503, file: !2503, line: 296, type: !3953, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !56)
!3953 = !DISubroutineType(types: !3954)
!3954 = !{!90, !3955, !50, !90, !3956}
!3955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64)
!3956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3919, size: 64)
!3957 = distinct !DISubprogram(name: "c_strtold", scope: !270, file: !270, line: 65, type: !3958, scopeLine: 66, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !244, retainedNodes: !3960)
!3958 = !DISubroutineType(types: !3959)
!3959 = !{!1159, !50, !149}
!3960 = !{!3961, !3962, !3963, !3964, !3965, !3966}
!3961 = !DILocalVariable(name: "nptr", arg: 1, scope: !3957, file: !270, line: 65, type: !50)
!3962 = !DILocalVariable(name: "endptr", arg: 2, scope: !3957, file: !270, line: 65, type: !149)
!3963 = !DILocalVariable(name: "r", scope: !3957, file: !270, line: 67, type: !1159)
!3964 = !DILocalVariable(name: "locale", scope: !3957, file: !270, line: 73, type: !247)
!3965 = !DILocalVariable(name: "old_locale", scope: !3957, file: !270, line: 87, type: !247)
!3966 = !DILocalVariable(name: "saved_errno", scope: !3957, file: !270, line: 97, type: !39)
!3967 = !DILocation(line: 67, column: 10, scope: !3957)
!3968 = !DILocation(line: 0, scope: !3957)
!3969 = !DILocation(line: 57, column: 8, scope: !3970, inlinedAt: !3974)
!3970 = distinct !DILexicalBlock(scope: !3971, file: !270, line: 57, column: 7)
!3971 = distinct !DISubprogram(name: "c_locale", scope: !270, file: !270, line: 55, type: !3972, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !244, retainedNodes: !56)
!3972 = !DISubroutineType(types: !3973)
!3973 = !{!247}
!3974 = distinct !DILocation(line: 73, column: 21, scope: !3957)
!3975 = !DILocation(line: 57, column: 7, scope: !3971, inlinedAt: !3974)
!3976 = !DILocation(line: 58, column: 22, scope: !3970, inlinedAt: !3974)
!3977 = !DILocation(line: 58, column: 20, scope: !3970, inlinedAt: !3974)
!3978 = !DILocation(line: 58, column: 5, scope: !3970, inlinedAt: !3974)
!3979 = !DILocation(line: 59, column: 10, scope: !3971, inlinedAt: !3974)
!3980 = !DILocation(line: 74, column: 8, scope: !3981)
!3981 = distinct !DILexicalBlock(scope: !3957, file: !270, line: 74, column: 7)
!3982 = !DILocation(line: 74, column: 7, scope: !3957)
!3983 = !DILocation(line: 76, column: 11, scope: !3984)
!3984 = distinct !DILexicalBlock(scope: !3985, file: !270, line: 76, column: 11)
!3985 = distinct !DILexicalBlock(scope: !3981, file: !270, line: 75, column: 5)
!3986 = !DILocation(line: 76, column: 11, scope: !3985)
!3987 = !DILocation(line: 77, column: 17, scope: !3984)
!3988 = !DILocation(line: 77, column: 9, scope: !3984)
!3989 = !DILocation(line: 87, column: 25, scope: !3957)
!3990 = !DILocation(line: 88, column: 18, scope: !3991)
!3991 = distinct !DILexicalBlock(scope: !3957, file: !270, line: 88, column: 7)
!3992 = !DILocation(line: 88, column: 7, scope: !3957)
!3993 = !DILocation(line: 90, column: 11, scope: !3994)
!3994 = distinct !DILexicalBlock(scope: !3995, file: !270, line: 90, column: 11)
!3995 = distinct !DILexicalBlock(scope: !3991, file: !270, line: 89, column: 5)
!3996 = !DILocation(line: 90, column: 11, scope: !3995)
!3997 = !DILocation(line: 91, column: 17, scope: !3994)
!3998 = !DILocation(line: 91, column: 9, scope: !3994)
!3999 = !DILocation(line: 95, column: 7, scope: !3957)
!4000 = !DILocation(line: 97, column: 21, scope: !3957)
!4001 = !DILocation(line: 98, column: 7, scope: !4002)
!4002 = distinct !DILexicalBlock(scope: !3957, file: !270, line: 98, column: 7)
!4003 = !DILocation(line: 98, column: 30, scope: !4002)
!4004 = !DILocation(line: 98, column: 7, scope: !3957)
!4005 = !DILocation(line: 100, column: 5, scope: !4002)
!4006 = !DILocation(line: 101, column: 9, scope: !3957)
!4007 = !DILocation(line: 135, column: 1, scope: !3957)
!4008 = !DISubprogram(name: "newlocale", scope: !835, file: !835, line: 141, type: !4009, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !56)
!4009 = !DISubroutineType(types: !4010)
!4010 = !{!251, !39, !50, !251}
!4011 = !DISubprogram(name: "uselocale", scope: !835, file: !835, line: 187, type: !4012, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !56)
!4012 = !DISubroutineType(types: !4013)
!4013 = !{!251, !251}
!4014 = distinct !DISubprogram(name: "close_stream", scope: !310, file: !310, line: 56, type: !4015, scopeLine: 57, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !309, retainedNodes: !4051)
!4015 = !DISubroutineType(types: !4016)
!4016 = !{!39, !4017}
!4017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4018, size: 64)
!4018 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !152, line: 7, baseType: !4019)
!4019 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !154, line: 49, size: 1728, elements: !4020)
!4020 = !{!4021, !4022, !4023, !4024, !4025, !4026, !4027, !4028, !4029, !4030, !4031, !4032, !4033, !4034, !4036, !4037, !4038, !4039, !4040, !4041, !4042, !4043, !4044, !4045, !4046, !4047, !4048, !4049, !4050}
!4021 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4019, file: !154, line: 51, baseType: !39, size: 32)
!4022 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4019, file: !154, line: 54, baseType: !37, size: 64, offset: 64)
!4023 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4019, file: !154, line: 55, baseType: !37, size: 64, offset: 128)
!4024 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4019, file: !154, line: 56, baseType: !37, size: 64, offset: 192)
!4025 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4019, file: !154, line: 57, baseType: !37, size: 64, offset: 256)
!4026 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4019, file: !154, line: 58, baseType: !37, size: 64, offset: 320)
!4027 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4019, file: !154, line: 59, baseType: !37, size: 64, offset: 384)
!4028 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4019, file: !154, line: 60, baseType: !37, size: 64, offset: 448)
!4029 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4019, file: !154, line: 61, baseType: !37, size: 64, offset: 512)
!4030 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4019, file: !154, line: 64, baseType: !37, size: 64, offset: 576)
!4031 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4019, file: !154, line: 65, baseType: !37, size: 64, offset: 640)
!4032 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4019, file: !154, line: 66, baseType: !37, size: 64, offset: 704)
!4033 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4019, file: !154, line: 68, baseType: !169, size: 64, offset: 768)
!4034 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4019, file: !154, line: 70, baseType: !4035, size: 64, offset: 832)
!4035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4019, size: 64)
!4036 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4019, file: !154, line: 72, baseType: !39, size: 32, offset: 896)
!4037 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4019, file: !154, line: 73, baseType: !39, size: 32, offset: 928)
!4038 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4019, file: !154, line: 74, baseType: !176, size: 64, offset: 960)
!4039 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4019, file: !154, line: 77, baseType: !41, size: 16, offset: 1024)
!4040 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4019, file: !154, line: 78, baseType: !180, size: 8, offset: 1040)
!4041 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4019, file: !154, line: 79, baseType: !182, size: 8, offset: 1048)
!4042 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4019, file: !154, line: 81, baseType: !186, size: 64, offset: 1088)
!4043 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4019, file: !154, line: 89, baseType: !189, size: 64, offset: 1152)
!4044 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4019, file: !154, line: 91, baseType: !191, size: 64, offset: 1216)
!4045 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4019, file: !154, line: 92, baseType: !194, size: 64, offset: 1280)
!4046 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4019, file: !154, line: 93, baseType: !4035, size: 64, offset: 1344)
!4047 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4019, file: !154, line: 94, baseType: !36, size: 64, offset: 1408)
!4048 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4019, file: !154, line: 95, baseType: !88, size: 64, offset: 1472)
!4049 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4019, file: !154, line: 96, baseType: !39, size: 32, offset: 1536)
!4050 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4019, file: !154, line: 98, baseType: !201, size: 160, offset: 1568)
!4051 = !{!4052, !4053, !4055, !4056}
!4052 = !DILocalVariable(name: "stream", arg: 1, scope: !4014, file: !310, line: 56, type: !4017)
!4053 = !DILocalVariable(name: "some_pending", scope: !4014, file: !310, line: 58, type: !4054)
!4054 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !46)
!4055 = !DILocalVariable(name: "prev_fail", scope: !4014, file: !310, line: 59, type: !4054)
!4056 = !DILocalVariable(name: "fclose_fail", scope: !4014, file: !310, line: 60, type: !4054)
!4057 = !DILocation(line: 0, scope: !4014)
!4058 = !DILocation(line: 58, column: 30, scope: !4014)
!4059 = !DILocalVariable(name: "__stream", arg: 1, scope: !4060, file: !947, line: 135, type: !4017)
!4060 = distinct !DISubprogram(name: "ferror_unlocked", scope: !947, file: !947, line: 135, type: !4015, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !309, retainedNodes: !4061)
!4061 = !{!4059}
!4062 = !DILocation(line: 0, scope: !4060, inlinedAt: !4063)
!4063 = distinct !DILocation(line: 59, column: 27, scope: !4014)
!4064 = !DILocation(line: 137, column: 10, scope: !4060, inlinedAt: !4063)
!4065 = !{!956, !957, i64 0}
!4066 = !DILocation(line: 59, column: 43, scope: !4014)
!4067 = !DILocation(line: 60, column: 29, scope: !4014)
!4068 = !DILocation(line: 60, column: 45, scope: !4014)
!4069 = !DILocation(line: 70, column: 17, scope: !4070)
!4070 = distinct !DILexicalBlock(scope: !4014, file: !310, line: 70, column: 7)
!4071 = !DILocation(line: 58, column: 50, scope: !4014)
!4072 = !DILocation(line: 70, column: 33, scope: !4070)
!4073 = !DILocation(line: 70, column: 53, scope: !4070)
!4074 = !DILocation(line: 70, column: 59, scope: !4070)
!4075 = !DILocation(line: 70, column: 7, scope: !4014)
!4076 = !DILocation(line: 72, column: 11, scope: !4077)
!4077 = distinct !DILexicalBlock(scope: !4070, file: !310, line: 71, column: 5)
!4078 = !DILocation(line: 73, column: 9, scope: !4079)
!4079 = distinct !DILexicalBlock(scope: !4077, file: !310, line: 72, column: 11)
!4080 = !DILocation(line: 73, column: 15, scope: !4079)
!4081 = !DILocation(line: 78, column: 1, scope: !4014)
!4082 = distinct !DISubprogram(name: "hard_locale", scope: !312, file: !312, line: 27, type: !4083, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !311, retainedNodes: !4085)
!4083 = !DISubroutineType(types: !4084)
!4084 = !{!46, !39}
!4085 = !{!4086, !4087}
!4086 = !DILocalVariable(name: "category", arg: 1, scope: !4082, file: !312, line: 27, type: !39)
!4087 = !DILocalVariable(name: "locale", scope: !4082, file: !312, line: 29, type: !4088)
!4088 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 2056, elements: !4089)
!4089 = !{!4090}
!4090 = !DISubrange(count: 257)
!4091 = !DILocation(line: 0, scope: !4082)
!4092 = !DILocation(line: 29, column: 3, scope: !4082)
!4093 = !DILocation(line: 29, column: 8, scope: !4082)
!4094 = !DILocation(line: 31, column: 7, scope: !4095)
!4095 = distinct !DILexicalBlock(scope: !4082, file: !312, line: 31, column: 7)
!4096 = !DILocation(line: 31, column: 7, scope: !4082)
!4097 = !DILocation(line: 34, column: 12, scope: !4082)
!4098 = !DILocation(line: 34, column: 38, scope: !4082)
!4099 = !DILocation(line: 34, column: 41, scope: !4082)
!4100 = !DILocation(line: 34, column: 66, scope: !4082)
!4101 = !DILocation(line: 35, column: 1, scope: !4082)
!4102 = distinct !DISubprogram(name: "locale_charset", scope: !314, file: !314, line: 831, type: !4103, scopeLine: 832, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !313, retainedNodes: !4105)
!4103 = !DISubroutineType(types: !4104)
!4104 = !{!50}
!4105 = !{!4106}
!4106 = !DILocalVariable(name: "codeset", scope: !4102, file: !314, line: 833, type: !50)
!4107 = !DILocation(line: 847, column: 13, scope: !4102)
!4108 = !DILocation(line: 0, scope: !4102)
!4109 = !DILocation(line: 911, column: 15, scope: !4110)
!4110 = distinct !DILexicalBlock(scope: !4102, file: !314, line: 911, column: 7)
!4111 = !DILocation(line: 911, column: 7, scope: !4102)
!4112 = !DILocation(line: 1070, column: 13, scope: !4113)
!4113 = distinct !DILexicalBlock(scope: !4114, file: !314, line: 1070, column: 13)
!4114 = distinct !DILexicalBlock(scope: !4115, file: !314, line: 1060, column: 7)
!4115 = distinct !DILexicalBlock(scope: !4102, file: !314, line: 1019, column: 3)
!4116 = !DILocation(line: 1070, column: 24, scope: !4113)
!4117 = !DILocation(line: 1070, column: 13, scope: !4114)
!4118 = !DILocation(line: 1158, column: 3, scope: !4102)
!4119 = !DISubprogram(name: "nl_langinfo", scope: !317, file: !317, line: 661, type: !4120, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !56)
!4120 = !DISubroutineType(types: !4121)
!4121 = !{!37, !39}
!4122 = distinct !DISubprogram(name: "setlocale_null_r", scope: !703, file: !703, line: 269, type: !4123, scopeLine: 270, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !702, retainedNodes: !4125)
!4123 = !DISubroutineType(types: !4124)
!4124 = !{!39, !39, !37, !88}
!4125 = !{!4126, !4127, !4128}
!4126 = !DILocalVariable(name: "category", arg: 1, scope: !4122, file: !703, line: 269, type: !39)
!4127 = !DILocalVariable(name: "buf", arg: 2, scope: !4122, file: !703, line: 269, type: !37)
!4128 = !DILocalVariable(name: "bufsize", arg: 3, scope: !4122, file: !703, line: 269, type: !88)
!4129 = !DILocation(line: 0, scope: !4122)
!4130 = !DILocalVariable(name: "category", arg: 1, scope: !4131, file: !703, line: 91, type: !39)
!4131 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !703, file: !703, line: 91, type: !4123, scopeLine: 92, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !702, retainedNodes: !4132)
!4132 = !{!4130, !4133, !4134, !4135, !4136}
!4133 = !DILocalVariable(name: "buf", arg: 2, scope: !4131, file: !703, line: 91, type: !37)
!4134 = !DILocalVariable(name: "bufsize", arg: 3, scope: !4131, file: !703, line: 91, type: !88)
!4135 = !DILocalVariable(name: "result", scope: !4131, file: !703, line: 140, type: !50)
!4136 = !DILocalVariable(name: "length", scope: !4137, file: !703, line: 154, type: !88)
!4137 = distinct !DILexicalBlock(scope: !4138, file: !703, line: 153, column: 5)
!4138 = distinct !DILexicalBlock(scope: !4131, file: !703, line: 142, column: 7)
!4139 = !DILocation(line: 0, scope: !4131, inlinedAt: !4140)
!4140 = distinct !DILocation(line: 274, column: 10, scope: !4122)
!4141 = !DILocalVariable(name: "category", arg: 1, scope: !4142, file: !703, line: 60, type: !39)
!4142 = distinct !DISubprogram(name: "setlocale_null_androidfix", scope: !703, file: !703, line: 60, type: !4143, scopeLine: 61, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !702, retainedNodes: !4145)
!4143 = !DISubroutineType(types: !4144)
!4144 = !{!50, !39}
!4145 = !{!4141, !4146}
!4146 = !DILocalVariable(name: "result", scope: !4142, file: !703, line: 62, type: !50)
!4147 = !DILocation(line: 0, scope: !4142, inlinedAt: !4148)
!4148 = distinct !DILocation(line: 140, column: 24, scope: !4131, inlinedAt: !4140)
!4149 = !DILocation(line: 62, column: 24, scope: !4142, inlinedAt: !4148)
!4150 = !DILocation(line: 142, column: 14, scope: !4138, inlinedAt: !4140)
!4151 = !DILocation(line: 142, column: 7, scope: !4131, inlinedAt: !4140)
!4152 = !DILocation(line: 145, column: 19, scope: !4153, inlinedAt: !4140)
!4153 = distinct !DILexicalBlock(scope: !4154, file: !703, line: 145, column: 11)
!4154 = distinct !DILexicalBlock(scope: !4138, file: !703, line: 143, column: 5)
!4155 = !DILocation(line: 145, column: 11, scope: !4154, inlinedAt: !4140)
!4156 = !DILocation(line: 149, column: 16, scope: !4153, inlinedAt: !4140)
!4157 = !DILocation(line: 149, column: 9, scope: !4153, inlinedAt: !4140)
!4158 = !DILocation(line: 154, column: 23, scope: !4137, inlinedAt: !4140)
!4159 = !DILocation(line: 0, scope: !4137, inlinedAt: !4140)
!4160 = !DILocation(line: 155, column: 18, scope: !4161, inlinedAt: !4140)
!4161 = distinct !DILexicalBlock(scope: !4137, file: !703, line: 155, column: 11)
!4162 = !DILocation(line: 155, column: 11, scope: !4137, inlinedAt: !4140)
!4163 = !DILocation(line: 157, column: 39, scope: !4164, inlinedAt: !4140)
!4164 = distinct !DILexicalBlock(scope: !4161, file: !703, line: 156, column: 9)
!4165 = !DILocalVariable(name: "__dest", arg: 1, scope: !4166, file: !1006, line: 26, type: !1177)
!4166 = distinct !DISubprogram(name: "memcpy", scope: !1006, file: !1006, line: 26, type: !1175, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !702, retainedNodes: !4167)
!4167 = !{!4165, !4168, !4169}
!4168 = !DILocalVariable(name: "__src", arg: 2, scope: !4166, file: !1006, line: 26, type: !1178)
!4169 = !DILocalVariable(name: "__len", arg: 3, scope: !4166, file: !1006, line: 26, type: !88)
!4170 = !DILocation(line: 0, scope: !4166, inlinedAt: !4171)
!4171 = distinct !DILocation(line: 157, column: 11, scope: !4164, inlinedAt: !4140)
!4172 = !DILocation(line: 29, column: 10, scope: !4166, inlinedAt: !4171)
!4173 = !DILocation(line: 158, column: 11, scope: !4164, inlinedAt: !4140)
!4174 = !DILocation(line: 162, column: 23, scope: !4175, inlinedAt: !4140)
!4175 = distinct !DILexicalBlock(scope: !4176, file: !703, line: 162, column: 15)
!4176 = distinct !DILexicalBlock(scope: !4161, file: !703, line: 161, column: 9)
!4177 = !DILocation(line: 162, column: 15, scope: !4176, inlinedAt: !4140)
!4178 = !DILocation(line: 167, column: 44, scope: !4179, inlinedAt: !4140)
!4179 = distinct !DILexicalBlock(scope: !4175, file: !703, line: 163, column: 13)
!4180 = !DILocation(line: 0, scope: !4166, inlinedAt: !4181)
!4181 = distinct !DILocation(line: 167, column: 15, scope: !4179, inlinedAt: !4140)
!4182 = !DILocation(line: 29, column: 10, scope: !4166, inlinedAt: !4181)
!4183 = !DILocation(line: 168, column: 15, scope: !4179, inlinedAt: !4140)
!4184 = !DILocation(line: 168, column: 32, scope: !4179, inlinedAt: !4140)
!4185 = !DILocation(line: 169, column: 13, scope: !4179, inlinedAt: !4140)
!4186 = !DILocation(line: 0, scope: !4138, inlinedAt: !4140)
!4187 = !DILocation(line: 274, column: 3, scope: !4122)
!4188 = distinct !DISubprogram(name: "setlocale_null", scope: !703, file: !703, line: 301, type: !4143, scopeLine: 302, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !702, retainedNodes: !4189)
!4189 = !{!4190}
!4190 = !DILocalVariable(name: "category", arg: 1, scope: !4188, file: !703, line: 301, type: !39)
!4191 = !DILocation(line: 0, scope: !4188)
!4192 = !DILocation(line: 0, scope: !4142, inlinedAt: !4193)
!4193 = distinct !DILocation(line: 304, column: 10, scope: !4188)
!4194 = !DILocation(line: 62, column: 24, scope: !4142, inlinedAt: !4193)
!4195 = !DILocation(line: 304, column: 3, scope: !4188)
!4196 = distinct !DISubprogram(name: "rpl_fclose", scope: !705, file: !705, line: 58, type: !4197, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !704, retainedNodes: !4233)
!4197 = !DISubroutineType(types: !4198)
!4198 = !{!39, !4199}
!4199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4200, size: 64)
!4200 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !152, line: 7, baseType: !4201)
!4201 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !154, line: 49, size: 1728, elements: !4202)
!4202 = !{!4203, !4204, !4205, !4206, !4207, !4208, !4209, !4210, !4211, !4212, !4213, !4214, !4215, !4216, !4218, !4219, !4220, !4221, !4222, !4223, !4224, !4225, !4226, !4227, !4228, !4229, !4230, !4231, !4232}
!4203 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4201, file: !154, line: 51, baseType: !39, size: 32)
!4204 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4201, file: !154, line: 54, baseType: !37, size: 64, offset: 64)
!4205 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4201, file: !154, line: 55, baseType: !37, size: 64, offset: 128)
!4206 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4201, file: !154, line: 56, baseType: !37, size: 64, offset: 192)
!4207 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4201, file: !154, line: 57, baseType: !37, size: 64, offset: 256)
!4208 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4201, file: !154, line: 58, baseType: !37, size: 64, offset: 320)
!4209 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4201, file: !154, line: 59, baseType: !37, size: 64, offset: 384)
!4210 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4201, file: !154, line: 60, baseType: !37, size: 64, offset: 448)
!4211 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4201, file: !154, line: 61, baseType: !37, size: 64, offset: 512)
!4212 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4201, file: !154, line: 64, baseType: !37, size: 64, offset: 576)
!4213 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4201, file: !154, line: 65, baseType: !37, size: 64, offset: 640)
!4214 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4201, file: !154, line: 66, baseType: !37, size: 64, offset: 704)
!4215 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4201, file: !154, line: 68, baseType: !169, size: 64, offset: 768)
!4216 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4201, file: !154, line: 70, baseType: !4217, size: 64, offset: 832)
!4217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4201, size: 64)
!4218 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4201, file: !154, line: 72, baseType: !39, size: 32, offset: 896)
!4219 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4201, file: !154, line: 73, baseType: !39, size: 32, offset: 928)
!4220 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4201, file: !154, line: 74, baseType: !176, size: 64, offset: 960)
!4221 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4201, file: !154, line: 77, baseType: !41, size: 16, offset: 1024)
!4222 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4201, file: !154, line: 78, baseType: !180, size: 8, offset: 1040)
!4223 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4201, file: !154, line: 79, baseType: !182, size: 8, offset: 1048)
!4224 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4201, file: !154, line: 81, baseType: !186, size: 64, offset: 1088)
!4225 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4201, file: !154, line: 89, baseType: !189, size: 64, offset: 1152)
!4226 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4201, file: !154, line: 91, baseType: !191, size: 64, offset: 1216)
!4227 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4201, file: !154, line: 92, baseType: !194, size: 64, offset: 1280)
!4228 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4201, file: !154, line: 93, baseType: !4217, size: 64, offset: 1344)
!4229 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4201, file: !154, line: 94, baseType: !36, size: 64, offset: 1408)
!4230 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4201, file: !154, line: 95, baseType: !88, size: 64, offset: 1472)
!4231 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4201, file: !154, line: 96, baseType: !39, size: 32, offset: 1536)
!4232 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4201, file: !154, line: 98, baseType: !201, size: 160, offset: 1568)
!4233 = !{!4234, !4235, !4236, !4237}
!4234 = !DILocalVariable(name: "fp", arg: 1, scope: !4196, file: !705, line: 58, type: !4199)
!4235 = !DILocalVariable(name: "saved_errno", scope: !4196, file: !705, line: 60, type: !39)
!4236 = !DILocalVariable(name: "fd", scope: !4196, file: !705, line: 61, type: !39)
!4237 = !DILocalVariable(name: "result", scope: !4196, file: !705, line: 62, type: !39)
!4238 = !DILocation(line: 0, scope: !4196)
!4239 = !DILocation(line: 65, column: 8, scope: !4196)
!4240 = !DILocation(line: 66, column: 10, scope: !4241)
!4241 = distinct !DILexicalBlock(scope: !4196, file: !705, line: 66, column: 7)
!4242 = !DILocation(line: 66, column: 7, scope: !4196)
!4243 = !DILocation(line: 67, column: 12, scope: !4241)
!4244 = !DILocation(line: 67, column: 5, scope: !4241)
!4245 = !DILocation(line: 72, column: 9, scope: !4246)
!4246 = distinct !DILexicalBlock(scope: !4196, file: !705, line: 72, column: 7)
!4247 = !DILocation(line: 72, column: 23, scope: !4246)
!4248 = !DILocation(line: 72, column: 33, scope: !4246)
!4249 = !DILocation(line: 72, column: 26, scope: !4246)
!4250 = !DILocation(line: 72, column: 59, scope: !4246)
!4251 = !DILocation(line: 73, column: 7, scope: !4246)
!4252 = !DILocation(line: 73, column: 10, scope: !4246)
!4253 = !DILocation(line: 72, column: 7, scope: !4196)
!4254 = !DILocation(line: 100, column: 12, scope: !4196)
!4255 = !DILocation(line: 105, column: 7, scope: !4196)
!4256 = !DILocation(line: 74, column: 19, scope: !4246)
!4257 = !DILocation(line: 105, column: 19, scope: !4258)
!4258 = distinct !DILexicalBlock(scope: !4196, file: !705, line: 105, column: 7)
!4259 = !DILocation(line: 107, column: 13, scope: !4260)
!4260 = distinct !DILexicalBlock(scope: !4258, file: !705, line: 106, column: 5)
!4261 = !DILocation(line: 109, column: 5, scope: !4260)
!4262 = !DILocation(line: 112, column: 1, scope: !4196)
!4263 = !DISubprogram(name: "fileno", scope: !799, file: !799, line: 785, type: !4264, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !56)
!4264 = !DISubroutineType(types: !4265)
!4265 = !{!39, !4217}
!4266 = !DISubprogram(name: "fclose", scope: !799, file: !799, line: 213, type: !4264, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !56)
!4267 = !DISubprogram(name: "lseek", scope: !4268, file: !4268, line: 334, type: !4269, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !56)
!4268 = !DIFile(filename: "/usr/include/unistd.h", directory: "")
!4269 = !DISubroutineType(types: !4270)
!4270 = !{!137, !39, !137, !39}
!4271 = distinct !DISubprogram(name: "rpl_fflush", scope: !707, file: !707, line: 129, type: !4272, scopeLine: 130, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !706, retainedNodes: !4308)
!4272 = !DISubroutineType(types: !4273)
!4273 = !{!39, !4274}
!4274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4275, size: 64)
!4275 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !152, line: 7, baseType: !4276)
!4276 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !154, line: 49, size: 1728, elements: !4277)
!4277 = !{!4278, !4279, !4280, !4281, !4282, !4283, !4284, !4285, !4286, !4287, !4288, !4289, !4290, !4291, !4293, !4294, !4295, !4296, !4297, !4298, !4299, !4300, !4301, !4302, !4303, !4304, !4305, !4306, !4307}
!4278 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4276, file: !154, line: 51, baseType: !39, size: 32)
!4279 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4276, file: !154, line: 54, baseType: !37, size: 64, offset: 64)
!4280 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4276, file: !154, line: 55, baseType: !37, size: 64, offset: 128)
!4281 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4276, file: !154, line: 56, baseType: !37, size: 64, offset: 192)
!4282 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4276, file: !154, line: 57, baseType: !37, size: 64, offset: 256)
!4283 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4276, file: !154, line: 58, baseType: !37, size: 64, offset: 320)
!4284 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4276, file: !154, line: 59, baseType: !37, size: 64, offset: 384)
!4285 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4276, file: !154, line: 60, baseType: !37, size: 64, offset: 448)
!4286 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4276, file: !154, line: 61, baseType: !37, size: 64, offset: 512)
!4287 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4276, file: !154, line: 64, baseType: !37, size: 64, offset: 576)
!4288 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4276, file: !154, line: 65, baseType: !37, size: 64, offset: 640)
!4289 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4276, file: !154, line: 66, baseType: !37, size: 64, offset: 704)
!4290 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4276, file: !154, line: 68, baseType: !169, size: 64, offset: 768)
!4291 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4276, file: !154, line: 70, baseType: !4292, size: 64, offset: 832)
!4292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4276, size: 64)
!4293 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4276, file: !154, line: 72, baseType: !39, size: 32, offset: 896)
!4294 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4276, file: !154, line: 73, baseType: !39, size: 32, offset: 928)
!4295 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4276, file: !154, line: 74, baseType: !176, size: 64, offset: 960)
!4296 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4276, file: !154, line: 77, baseType: !41, size: 16, offset: 1024)
!4297 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4276, file: !154, line: 78, baseType: !180, size: 8, offset: 1040)
!4298 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4276, file: !154, line: 79, baseType: !182, size: 8, offset: 1048)
!4299 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4276, file: !154, line: 81, baseType: !186, size: 64, offset: 1088)
!4300 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4276, file: !154, line: 89, baseType: !189, size: 64, offset: 1152)
!4301 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4276, file: !154, line: 91, baseType: !191, size: 64, offset: 1216)
!4302 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4276, file: !154, line: 92, baseType: !194, size: 64, offset: 1280)
!4303 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4276, file: !154, line: 93, baseType: !4292, size: 64, offset: 1344)
!4304 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4276, file: !154, line: 94, baseType: !36, size: 64, offset: 1408)
!4305 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4276, file: !154, line: 95, baseType: !88, size: 64, offset: 1472)
!4306 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4276, file: !154, line: 96, baseType: !39, size: 32, offset: 1536)
!4307 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4276, file: !154, line: 98, baseType: !201, size: 160, offset: 1568)
!4308 = !{!4309}
!4309 = !DILocalVariable(name: "stream", arg: 1, scope: !4271, file: !707, line: 129, type: !4274)
!4310 = !DILocation(line: 0, scope: !4271)
!4311 = !DILocation(line: 150, column: 14, scope: !4312)
!4312 = distinct !DILexicalBlock(scope: !4271, file: !707, line: 150, column: 7)
!4313 = !DILocation(line: 150, column: 22, scope: !4312)
!4314 = !DILocation(line: 150, column: 27, scope: !4312)
!4315 = !DILocation(line: 150, column: 7, scope: !4271)
!4316 = !DILocation(line: 151, column: 12, scope: !4312)
!4317 = !DILocation(line: 151, column: 5, scope: !4312)
!4318 = !DILocalVariable(name: "fp", arg: 1, scope: !4319, file: !707, line: 41, type: !4274)
!4319 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !707, file: !707, line: 41, type: !4320, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !706, retainedNodes: !4322)
!4320 = !DISubroutineType(types: !4321)
!4321 = !{null, !4274}
!4322 = !{!4318}
!4323 = !DILocation(line: 0, scope: !4319, inlinedAt: !4324)
!4324 = distinct !DILocation(line: 156, column: 3, scope: !4271)
!4325 = !DILocation(line: 43, column: 11, scope: !4326, inlinedAt: !4324)
!4326 = distinct !DILexicalBlock(scope: !4319, file: !707, line: 43, column: 7)
!4327 = !DILocation(line: 43, column: 18, scope: !4326, inlinedAt: !4324)
!4328 = !DILocation(line: 43, column: 7, scope: !4319, inlinedAt: !4324)
!4329 = !DILocation(line: 45, column: 5, scope: !4326, inlinedAt: !4324)
!4330 = !DILocation(line: 158, column: 10, scope: !4271)
!4331 = !DILocation(line: 158, column: 3, scope: !4271)
!4332 = !DILocation(line: 235, column: 1, scope: !4271)
!4333 = !DISubprogram(name: "fflush", scope: !799, file: !799, line: 218, type: !4334, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !56)
!4334 = !DISubroutineType(types: !4335)
!4335 = !{!39, !4292}
!4336 = distinct !DISubprogram(name: "rpl_fseeko", scope: !709, file: !709, line: 28, type: !4337, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !708, retainedNodes: !4374)
!4337 = !DISubroutineType(types: !4338)
!4338 = !{!39, !4339, !4373, !39}
!4339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4340, size: 64)
!4340 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !152, line: 7, baseType: !4341)
!4341 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !154, line: 49, size: 1728, elements: !4342)
!4342 = !{!4343, !4344, !4345, !4346, !4347, !4348, !4349, !4350, !4351, !4352, !4353, !4354, !4355, !4356, !4358, !4359, !4360, !4361, !4362, !4363, !4364, !4365, !4366, !4367, !4368, !4369, !4370, !4371, !4372}
!4343 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4341, file: !154, line: 51, baseType: !39, size: 32)
!4344 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4341, file: !154, line: 54, baseType: !37, size: 64, offset: 64)
!4345 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4341, file: !154, line: 55, baseType: !37, size: 64, offset: 128)
!4346 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4341, file: !154, line: 56, baseType: !37, size: 64, offset: 192)
!4347 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4341, file: !154, line: 57, baseType: !37, size: 64, offset: 256)
!4348 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4341, file: !154, line: 58, baseType: !37, size: 64, offset: 320)
!4349 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4341, file: !154, line: 59, baseType: !37, size: 64, offset: 384)
!4350 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4341, file: !154, line: 60, baseType: !37, size: 64, offset: 448)
!4351 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4341, file: !154, line: 61, baseType: !37, size: 64, offset: 512)
!4352 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4341, file: !154, line: 64, baseType: !37, size: 64, offset: 576)
!4353 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4341, file: !154, line: 65, baseType: !37, size: 64, offset: 640)
!4354 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4341, file: !154, line: 66, baseType: !37, size: 64, offset: 704)
!4355 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4341, file: !154, line: 68, baseType: !169, size: 64, offset: 768)
!4356 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4341, file: !154, line: 70, baseType: !4357, size: 64, offset: 832)
!4357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4341, size: 64)
!4358 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4341, file: !154, line: 72, baseType: !39, size: 32, offset: 896)
!4359 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4341, file: !154, line: 73, baseType: !39, size: 32, offset: 928)
!4360 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4341, file: !154, line: 74, baseType: !176, size: 64, offset: 960)
!4361 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4341, file: !154, line: 77, baseType: !41, size: 16, offset: 1024)
!4362 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4341, file: !154, line: 78, baseType: !180, size: 8, offset: 1040)
!4363 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4341, file: !154, line: 79, baseType: !182, size: 8, offset: 1048)
!4364 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4341, file: !154, line: 81, baseType: !186, size: 64, offset: 1088)
!4365 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4341, file: !154, line: 89, baseType: !189, size: 64, offset: 1152)
!4366 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4341, file: !154, line: 91, baseType: !191, size: 64, offset: 1216)
!4367 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4341, file: !154, line: 92, baseType: !194, size: 64, offset: 1280)
!4368 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4341, file: !154, line: 93, baseType: !4357, size: 64, offset: 1344)
!4369 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4341, file: !154, line: 94, baseType: !36, size: 64, offset: 1408)
!4370 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4341, file: !154, line: 95, baseType: !88, size: 64, offset: 1472)
!4371 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4341, file: !154, line: 96, baseType: !39, size: 32, offset: 1536)
!4372 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4341, file: !154, line: 98, baseType: !201, size: 160, offset: 1568)
!4373 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !799, line: 63, baseType: !176)
!4374 = !{!4375, !4376, !4377, !4378}
!4375 = !DILocalVariable(name: "fp", arg: 1, scope: !4336, file: !709, line: 28, type: !4339)
!4376 = !DILocalVariable(name: "offset", arg: 2, scope: !4336, file: !709, line: 28, type: !4373)
!4377 = !DILocalVariable(name: "whence", arg: 3, scope: !4336, file: !709, line: 28, type: !39)
!4378 = !DILocalVariable(name: "pos", scope: !4379, file: !709, line: 117, type: !4373)
!4379 = distinct !DILexicalBlock(scope: !4380, file: !709, line: 113, column: 5)
!4380 = distinct !DILexicalBlock(scope: !4336, file: !709, line: 52, column: 7)
!4381 = !DILocation(line: 0, scope: !4336)
!4382 = !DILocation(line: 52, column: 11, scope: !4380)
!4383 = !{!956, !728, i64 16}
!4384 = !DILocation(line: 52, column: 31, scope: !4380)
!4385 = !{!956, !728, i64 8}
!4386 = !DILocation(line: 52, column: 24, scope: !4380)
!4387 = !DILocation(line: 53, column: 7, scope: !4380)
!4388 = !DILocation(line: 53, column: 14, scope: !4380)
!4389 = !DILocation(line: 53, column: 35, scope: !4380)
!4390 = !{!956, !728, i64 32}
!4391 = !DILocation(line: 53, column: 28, scope: !4380)
!4392 = !DILocation(line: 54, column: 7, scope: !4380)
!4393 = !DILocation(line: 54, column: 14, scope: !4380)
!4394 = !{!956, !728, i64 72}
!4395 = !DILocation(line: 54, column: 28, scope: !4380)
!4396 = !DILocation(line: 52, column: 7, scope: !4336)
!4397 = !DILocation(line: 117, column: 26, scope: !4379)
!4398 = !DILocation(line: 117, column: 19, scope: !4379)
!4399 = !DILocation(line: 0, scope: !4379)
!4400 = !DILocation(line: 118, column: 15, scope: !4401)
!4401 = distinct !DILexicalBlock(scope: !4379, file: !709, line: 118, column: 11)
!4402 = !DILocation(line: 118, column: 11, scope: !4379)
!4403 = !DILocation(line: 129, column: 11, scope: !4379)
!4404 = !DILocation(line: 129, column: 18, scope: !4379)
!4405 = !DILocation(line: 130, column: 11, scope: !4379)
!4406 = !DILocation(line: 130, column: 19, scope: !4379)
!4407 = !{!956, !958, i64 144}
!4408 = !DILocation(line: 161, column: 7, scope: !4379)
!4409 = !DILocation(line: 163, column: 10, scope: !4336)
!4410 = !DILocation(line: 163, column: 3, scope: !4336)
!4411 = !DILocation(line: 164, column: 1, scope: !4336)
!4412 = !DISubprogram(name: "fseeko", scope: !799, file: !799, line: 712, type: !4413, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !56)
!4413 = !DISubroutineType(types: !4414)
!4414 = !{!39, !4357, !137, !39}
